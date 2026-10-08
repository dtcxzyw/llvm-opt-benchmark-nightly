Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/aho_corasick-d181e0e49ff2e094.aho_corasick.726347116bb87694-cgu.15?download=true
inline.NumInlined: 78
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMNtNtB1e_6packed7patternNtB2W_8Patterns14set_match_kind0E0EB1e_:bb.a
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !3 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp samesign ult i64 %i.ak, %i.ac
  br i1 %i.am, label %.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader
  store i32 %.val11, ptr %.sroa.0.0, align 4, !noalias !16
  br label %bb.e

bb.j:                                             ; preds = %.invoke
  %i.an = landingpad { ptr, i32 }
          cleanup
  store i32 %.val11, ptr %.sroa.0.0, align 4, !noalias !17
  resume { ptr, i32 } %i.an
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDNCINvMNtCscdodAO9FK5_5alloc5sliceSB19_7sort_byNCNvMNtNtB1f_6packed7patternNtB2X_8Patterns14set_match_kind0E0EB1f_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val13 = load i32, ptr %i.a, align 4, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.b = zext i32 %.val13 to i64                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 20 uses
  %i.g = icmp ugt i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val14 = load i32, ptr %0, align 4
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = zext i32 %.val14 to i64                  ; 3 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #12
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp samesign ult i64 %i.p, %i.j         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.s, align 4, !noundef !3
  %i.t = zext i32 %.val10 to i64                  ; 3 uses
  %i.u = icmp ugt i64 %i.f, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load i32, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = zext i32 %.val11 to i64                 ; 3 uses
  %i.ab = icmp ugt i64 %i.f, %i.aa
  br i1 %i.ab, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit16, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #12
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit16: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp samesign ult i64 %i.ae, %i.y       ; 2 uses
  %i.ah = zext i1 %i.r to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = xor i1 %i.r, true
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak ; 4 uses
  %i.am = select i1 %i.ag, i64 3, i64 2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am ; 3 uses
  %i.ao = select i1 %i.ag, i64 2, i64 3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao ; 3 uses
  %.val7 = load i32, ptr %i.an, align 4, !noundef !3 ; 2 uses
  %i.aq = zext i32 %.val7 to i64                  ; 3 uses
  %i.ar = icmp ugt i64 %i.f, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit16
  %.val8 = load i32, ptr %i.ai, align 4           ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !3 ; 2 uses
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = zext i32 %.val8 to i64                  ; 3 uses
  %i.ax = icmp ugt i64 %i.f, %i.aw
  br i1 %i.ax, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit18, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit16
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #12
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit18: ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !3 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ult i64 %i.ba, %i.au      ; 3 uses
  %.val4 = load i32, ptr %i.ap, align 4, !noundef !3
  %i.bd = zext i32 %.val4 to i64                  ; 3 uses
  %i.be = icmp ugt i64 %i.f, %i.bd
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit18
  %.val5 = load i32, ptr %i.al, align 4
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !3 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = zext i32 %.val5 to i64                  ; 3 uses
  %i.bk = icmp ugt i64 %i.f, %i.bj
  br i1 %i.bk, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit20, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit18
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #12
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit20: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !3 ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp samesign ult i64 %i.bn, %i.bh      ; 3 uses
  %i.bq = select i1 %i.bp, ptr %i.an, ptr %i.al, !unpredictable !3
  %i.br = select i1 %i.bc, ptr %i.ai, ptr %i.bq, !unpredictable !3 ; 3 uses
  %i.bs = select i1 %i.bc, ptr %i.al, ptr %i.an, !unpredictable !3
  %i.bt = select i1 %i.bp, ptr %i.ap, ptr %i.bs, !unpredictable !3 ; 3 uses
  %.val1 = load i32, ptr %i.bt, align 4, !noundef !3
  %i.bu = zext i32 %.val1 to i64                  ; 3 uses
  %i.bv = icmp ugt i64 %i.f, %i.bu
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit20
  %.val2 = load i32, ptr %i.br, align 4
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noundef !3 ; 2 uses
  %i.bz = icmp sgt i64 %i.by, -1
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = zext i32 %.val2 to i64                  ; 3 uses
  %i.cb = icmp ugt i64 %i.f, %i.ca
  br i1 %i.cb, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit22, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit20
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #12
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #12
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternID7sort_byNCNvMNtNtBD_6packed7patternNtB1J_8Patterns14set_match_kind0E0BD_.exit22: ; preds = %bb.n
  %i.cc = select i1 %i.bp, ptr %i.al, ptr %i.ap, !unpredictable !3
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !3 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp samesign ult i64 %i.cf, %i.by      ; 2 uses
  %i.ci = select i1 %i.ch, ptr %i.bt, ptr %i.br, !unpredictable !3
  %i.cj = select i1 %i.ch, ptr %i.br, ptr %i.bt, !unpredictable !3
  %i.ck = select i1 %i.bc, i32 %.val7, i32 %.val8, !unpredictable !3
  store i32 %i.ck, ptr %1, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cm = load i32, ptr %i.ci, align 4
  store i32 %i.cm, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load i32, ptr %i.cj, align 4
  store i32 %i.co, ptr %i.cn, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cq = load i32, ptr %i.cc, align 4
  store i32 %i.cq, ptr %i.cp, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 32)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val8.i = load i32, ptr %i.a, align 4, !noundef !3
  %.val9.i = load i32, ptr %0, align 4, !noundef !3
  %i.b = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load i32, ptr %i.c, align 4, !noundef !3
  %.val7.i = load i32, ptr %i.d, align 4, !noundef !3
  %i.e = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4.i = load i32, ptr %i.l, align 4, !noundef !3 ; 2 uses
  %.val5.i = load i32, ptr %i.g, align 4, !noundef !3 ; 2 uses
  %i.o = icmp ult i32 %.val4.i, %.val5.i          ; 2 uses
  %.val2.i = load i32, ptr %i.n, align 4, !noundef !3
  %.val3.i = load i32, ptr %i.j, align 4, !noundef !3
  %i.p = icmp ult i32 %.val2.i, %.val3.i          ; 3 uses
  %i.q = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !3
  %i.r = select i1 %i.o, ptr %i.g, ptr %i.q, !unpredictable !3 ; 3 uses
  %i.s = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !3
  %i.t = select i1 %i.p, ptr %i.n, ptr %i.s, !unpredictable !3 ; 3 uses
  %.val.i = load i32, ptr %i.t, align 4, !noundef !3
  %.val1.i = load i32, ptr %i.r, align 4, !noundef !3
  %i.u = icmp ult i32 %.val.i, %.val1.i           ; 2 uses
  %i.v = tail call i32 @llvm.umin.i32(i32 %.val4.i, i32 %.val5.i) ; 3 uses
  store i32 %i.v, ptr %2, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val12.i = load i32, ptr %i.t, align 4
  %.val13.i = load i32, ptr %i.r, align 4
  %i.x = select i1 %i.u, i32 %.val12.i, i32 %.val13.i, !unpredictable !3
  store i32 %i.x, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val14.i = load i32, ptr %i.r, align 4
  %.val15.i = load i32, ptr %i.t, align 4
  %i.z = select i1 %i.u, i32 %.val14.i, i32 %.val15.i, !unpredictable !3
  store i32 %i.z, ptr %i.y, align 4
  %i.aa = getelementptr i8, ptr %2, i64 12        ; 2 uses
  %.val16.i = load i32, ptr %i.j, align 4
  %.val17.i = load i32, ptr %i.n, align 4
  %i.ab = select i1 %i.p, i32 %.val16.i, i32 %.val17.i, !unpredictable !3 ; 3 uses
  store i32 %i.ab, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ad = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val8.i1 = load i32, ptr %i.ae, align 4, !noundef !3
  %.val9.i2 = load i32, ptr %i.ac, align 4, !noundef !3
  %i.af = icmp ult i32 %.val8.i1, %.val9.i2       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6.i3 = load i32, ptr %i.ag, align 4, !noundef !3
  %.val7.i4 = load i32, ptr %i.ah, align 4, !noundef !3
  %i.ai = icmp ult i32 %.val6.i3, %.val7.i4       ; 2 uses
  %i.aj = zext i1 %i.af to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aj ; 2 uses
  %i.al = xor i1 %i.af, true
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.am ; 4 uses
  %i.ao = select i1 %i.ai, i64 3, i64 2
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ao ; 3 uses
  %i.aq = select i1 %i.ai, i64 2, i64 3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aq ; 3 uses
  %.val4.i5 = load i32, ptr %i.ap, align 4, !noundef !3 ; 2 uses
  %.val5.i6 = load i32, ptr %i.ak, align 4, !noundef !3 ; 2 uses
  %i.as = icmp ult i32 %.val4.i5, %.val5.i6       ; 2 uses
  %.val2.i7 = load i32, ptr %i.ar, align 4, !noundef !3
  %.val3.i8 = load i32, ptr %i.an, align 4, !noundef !3
  %i.at = icmp ult i32 %.val2.i7, %.val3.i8       ; 3 uses
  %i.au = select i1 %i.at, ptr %i.ap, ptr %i.an, !unpredictable !3
  %i.av = select i1 %i.as, ptr %i.ak, ptr %i.au, !unpredictable !3 ; 3 uses
  %i.aw = select i1 %i.as, ptr %i.an, ptr %i.ap, !unpredictable !3
  %i.ax = select i1 %i.at, ptr %i.ar, ptr %i.aw, !unpredictable !3 ; 3 uses
  %.val.i9 = load i32, ptr %i.ax, align 4, !noundef !3
  %.val1.i10 = load i32, ptr %i.av, align 4, !noundef !3
  %i.ay = icmp ult i32 %.val.i9, %.val1.i10       ; 2 uses
  %i.az = tail call i32 @llvm.umin.i32(i32 %.val4.i5, i32 %.val5.i6) ; 3 uses
  store i32 %i.az, ptr %i.ad, align 4
  %i.ba = getelementptr i8, ptr %2, i64 20
  %.val12.i11 = load i32, ptr %i.ax, align 4
  %.val13.i12 = load i32, ptr %i.av, align 4
  %i.bb = select i1 %i.ay, i32 %.val12.i11, i32 %.val13.i12, !unpredictable !3
  store i32 %i.bb, ptr %i.ba, align 4
  %i.bc = getelementptr i8, ptr %2, i64 24
  %.val14.i13 = load i32, ptr %i.av, align 4
  %.val15.i14 = load i32, ptr %i.ax, align 4
  %i.bd = select i1 %i.ay, i32 %.val14.i13, i32 %.val15.i14, !unpredictable !3
  store i32 %i.bd, ptr %i.bc, align 4
  %i.be = getelementptr i8, ptr %2, i64 28        ; 2 uses
  %.val16.i15 = load i32, ptr %i.an, align 4
  %.val17.i16 = load i32, ptr %i.ar, align 4
  %i.bf = select i1 %i.at, i32 %.val16.i15, i32 %.val17.i16, !unpredictable !3 ; 3 uses
  store i32 %i.bf, ptr %i.be, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bh = icmp ult i32 %i.az, %i.v                ; 2 uses
  %i.bi = xor i1 %i.bh, true
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.v)
  store i32 %i.bj, ptr %1, align 4, !noalias !27
  %i.bk = zext i1 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bk ; 2 uses
  %i.bm = zext i1 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bp = icmp ult i32 %i.bf, %i.ab               ; 2 uses
  %i.bq = xor i1 %i.bp, true
  %i.br = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 %i.ab)
  store i32 %i.br, ptr %i.bg, align 4, !noalias !28
  %.neg.i.i = sext i1 %i.bq to i64
  %i.bs = getelementptr [4 x i8], ptr %i.be, i64 %.neg.i.i ; 2 uses
  %.neg15.i.i = sext i1 %i.bp to i64
  %i.bt = getelementptr [4 x i8], ptr %i.aa, i64 %.neg15.i.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.011.0.val.i.1 = load i32, ptr %i.bl, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %.sroa.06.0.val.i.1 = load i32, ptr %i.bn, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %i.bv = icmp ult i32 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 2 uses
  %i.bw = xor i1 %i.bv, true
  %i.bx = tail call i32 @llvm.umin.i32(i32 %.sroa.011.0.val.i.1, i32 %.sroa.06.0.val.i.1)
  store i32 %i.bx, ptr %i.bo, align 4, !noalias !27
  %i.by = zext i1 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.by ; 2 uses
  %i.ca = zext i1 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.017.0.val.i.1 = load i32, ptr %i.bs, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %.sroa.015.0.val.i.1 = load i32, ptr %i.bt, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %i.cd = icmp ult i32 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 2 uses
  %i.ce = xor i1 %i.cd, true
  %i.cf = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i.1, i32 %.sroa.015.0.val.i.1)
  store i32 %i.cf, ptr %i.bu, align 4, !noalias !28
  %.neg.i.i.1 = sext i1 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr %i.bs, i64 %.neg.i.i.1 ; 2 uses
  %.neg15.i.i.1 = sext i1 %i.cd to i64
  %i.ch = getelementptr [4 x i8], ptr %i.bt, i64 %.neg15.i.i.1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.011.0.val.i.2 = load i32, ptr %i.bz, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %.sroa.06.0.val.i.2 = load i32, ptr %i.cb, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %i.cj = icmp ult i32 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2 ; 2 uses
  %i.ck = xor i1 %i.cj, true
  %i.cl = tail call i32 @llvm.umin.i32(i32 %.sroa.011.0.val.i.2, i32 %.sroa.06.0.val.i.2)
  store i32 %i.cl, ptr %i.cc, align 4, !noalias !27
  %i.cm = zext i1 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cm ; 2 uses
  %i.co = zext i1 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.017.0.val.i.2 = load i32, ptr %i.cg, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %.sroa.015.0.val.i.2 = load i32, ptr %i.ch, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %i.cr = icmp ult i32 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2 ; 2 uses
  %i.cs = xor i1 %i.cr, true
  %i.ct = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i.2, i32 %.sroa.015.0.val.i.2)
  store i32 %i.ct, ptr %i.ci, align 4, !noalias !28
  %.neg.i.i.2 = sext i1 %i.cs to i64
  %i.cu = getelementptr [4 x i8], ptr %i.cg, i64 %.neg.i.i.2 ; 2 uses
  %.neg15.i.i.2 = sext i1 %i.cr to i64
  %i.cv = getelementptr [4 x i8], ptr %i.ch, i64 %.neg15.i.i.2 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.011.0.val.i.3 = load i32, ptr %i.cn, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %.sroa.06.0.val.i.3 = load i32, ptr %i.cp, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %i.cx = icmp ult i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 2 uses
  %i.cy = xor i1 %i.cx, true
  %i.cz = tail call i32 @llvm.umin.i32(i32 %.sroa.011.0.val.i.3, i32 %.sroa.06.0.val.i.3)
  store i32 %i.cz, ptr %i.cq, align 4, !noalias !27
  %i.da = zext i1 %i.cx to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.da
  %i.dc = zext i1 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dc
  %.sroa.017.0.val.i.3 = load i32, ptr %i.cu, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %.sroa.015.0.val.i.3 = load i32, ptr %i.cv, align 4, !alias.scope !26, !noundef !3 ; 2 uses
  %i.de = icmp ult i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 2 uses
  %i.df = xor i1 %i.de, true
  %i.dg = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i.3, i32 %.sroa.015.0.val.i.3)
  store i32 %i.dg, ptr %i.cw, align 4, !noalias !28
  %.neg.i.i.3 = sext i1 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.cu, i64 %.neg.i.i.3
  %.neg15.i.i.3 = sext i1 %i.de to i64
  %i.di = getelementptr [4 x i8], ptr %i.cv, i64 %.neg15.i.i.3
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %i.dk = getelementptr i8, ptr %i.dh, i64 4
end_hunk_0
