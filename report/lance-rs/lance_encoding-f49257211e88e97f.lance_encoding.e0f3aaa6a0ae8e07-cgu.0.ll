Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RNvMse_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_19ControlWordIterator11append_next:bb.a
  %i.fm = icmp eq i16 %i.ev, 0
  br i1 %i.fm, label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i54
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !46573, !noalias !46574, !noundef !75
  %i.fp = icmp eq i8 %i.fo, 0
  %i.fq = select i1 %i.fp, i16 257, i16 1
  br label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit

bb.p:                                             ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46581)
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !46582, !noalias !46580, !nonnull !75, !noundef !75 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !46582, !noalias !46580, !nonnull !75, !noundef !75
  %i.fv = icmp eq ptr %i.fs, %i.fu
  br i1 %i.fv, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store ptr %i.fw, ptr %i.fr, align 8, !alias.scope !46582, !noalias !46580
  %i.fx = load i16, ptr %i.fs, align 2, !noalias !46583, !noundef !75
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fz = load i16, ptr %i.fy, align 8, !alias.scope !46579, !noalias !46580, !noundef !75
  %i.ga = and i16 %i.fz, %i.fx                    ; 4 uses
  %.sroa.03.0.extract.trunc.i = trunc i16 %i.ga to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !46584, !noalias !46579, !noundef !75 ; 4 uses
  %i.gd = load i64, ptr %1, align 8, !range !76, !alias.scope !46584, !noalias !46579, !noundef !75
  %i.ge = icmp eq i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.r, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46579
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61: ; preds = %bb.r, %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !46584, !noalias !46579, !nonnull !75, !noundef !75
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gc
  store i8 %.sroa.03.0.extract.trunc.i, ptr %i.gh, align 1, !noalias !46579
  %i.gi = add i64 %i.gc, 1                        ; 3 uses
  store i64 %i.gi, ptr %i.gb, align 8, !alias.scope !46584, !noalias !46579
  %i.gj = load i64, ptr %1, align 8, !range !76, !alias.scope !46585, !noalias !46579, !noundef !75
  %i.gk = icmp eq i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.s, label %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit

bb.s:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46579
  br label %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit

bb.t:                                             ; preds = %bb.p
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2122) #66, !noalias !46586
  unreachable

_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit: ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61, %bb.s
  %.sroa.44.0.extract.shift.i = lshr i16 %i.ga, 8
  %.sroa.44.0.extract.trunc.i = trunc nuw i16 %.sroa.44.0.extract.shift.i to i8
  %i.gl = load ptr, ptr %i.gf, align 8, !alias.scope !46585, !noalias !46579, !nonnull !75, !noundef !75
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gi
  store i8 %.sroa.44.0.extract.trunc.i, ptr %i.gm, align 1, !noalias !46579
  %i.gn = add i64 %i.gc, 2
  store i64 %i.gn, ptr %i.gb, align 8, !alias.scope !46585, !noalias !46579
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.gp = load i16, ptr %i.go, align 2, !alias.scope !46579, !noalias !46580, !noundef !75 ; 2 uses
  %i.gq = icmp eq i16 %i.gp, 0
  %i.gr = icmp eq i16 %i.ga, %i.gp
  %narrow.i62 = or i1 %i.gq, %i.gr
  %i.gs = icmp eq i16 %i.ga, 0
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !46579, !noalias !46580
  %i.gv = icmp eq i8 %i.gu, 0
  %narrow13.i = select i1 %i.gs, i1 true, i1 %i.gv
  %.sroa.027.0.extract.trunc = zext i1 %narrow.i62 to i8
  %.sroa.027.1.extract.trunc = select i1 %narrow13.i, i16 257, i16 1
  br label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit

bb.u:                                             ; preds = %bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46589)
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !46590, !noalias !46588, !nonnull !75, !noundef !75 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !46590, !noalias !46588, !nonnull !75, !noundef !75
  %i.ha = icmp eq ptr %i.gx, %i.gz
  br i1 %i.ha, label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  store ptr %i.hb, ptr %i.gw, align 8, !alias.scope !46590, !noalias !46588
  %i.hc = load i16, ptr %i.gx, align 2, !noalias !46591, !noundef !75
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.he = load i16, ptr %i.hd, align 8, !alias.scope !46587, !noalias !46588, !noundef !75
  %i.hf = and i16 %i.he, %i.hc                    ; 4 uses
  %.sroa.04.0.extract.trunc.i63 = trunc i16 %i.hf to i8
  %.sroa.45.0.extract.shift.i64 = lshr i16 %i.hf, 8
  %.sroa.45.0.extract.trunc.i65 = trunc nuw i16 %.sroa.45.0.extract.shift.i64 to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !46592, !noalias !46587, !noundef !75 ; 6 uses
  %i.hi = load i64, ptr %1, align 8, !range !76, !alias.scope !46592, !noalias !46587, !noundef !75
  %i.hj = icmp eq i64 %i.hh, %i.hi
  br i1 %i.hj, label %bb.w, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46587
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66: ; preds = %bb.w, %bb.v
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !46592, !noalias !46587, !nonnull !75, !noundef !75
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hh
  store i8 %.sroa.04.0.extract.trunc.i63, ptr %i.hm, align 1, !noalias !46587
  %i.hn = add i64 %i.hh, 1                        ; 3 uses
  store i64 %i.hn, ptr %i.hg, align 8, !alias.scope !46592, !noalias !46587
  %i.ho = load i64, ptr %1, align 8, !range !76, !alias.scope !46593, !noalias !46587, !noundef !75
  %i.hp = icmp eq i64 %i.hn, %i.ho
  br i1 %i.hp, label %bb.x, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i

bb.x:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46587
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i: ; preds = %bb.x, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66
  %i.hq = load ptr, ptr %i.hk, align 8, !alias.scope !46593, !noalias !46587, !nonnull !75, !noundef !75
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hn
  store i8 %.sroa.45.0.extract.trunc.i65, ptr %i.hr, align 1, !noalias !46587
  %i.hs = add i64 %i.hh, 2                        ; 3 uses
  store i64 %i.hs, ptr %i.hg, align 8, !alias.scope !46593, !noalias !46587
  %i.ht = load i64, ptr %1, align 8, !range !76, !alias.scope !46594, !noalias !46587, !noundef !75
  %i.hu = icmp eq i64 %i.hs, %i.ht
  br i1 %i.hu, label %bb.y, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67

bb.y:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46587
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67: ; preds = %bb.y, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i
  %i.hv = load ptr, ptr %i.hk, align 8, !alias.scope !46594, !noalias !46587, !nonnull !75, !noundef !75
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hs
  store i8 0, ptr %i.hw, align 1, !noalias !46587
  %i.hx = add i64 %i.hh, 3                        ; 3 uses
  store i64 %i.hx, ptr %i.hg, align 8, !alias.scope !46594, !noalias !46587
  %i.hy = load i64, ptr %1, align 8, !range !76, !alias.scope !46595, !noalias !46587, !noundef !75
  %i.hz = icmp eq i64 %i.hx, %i.hy
  br i1 %i.hz, label %bb.z, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68

bb.z:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46587
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68: ; preds = %bb.z, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67
  %i.ia = load ptr, ptr %i.hk, align 8, !alias.scope !46595, !noalias !46587, !nonnull !75, !noundef !75
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hx
  store i8 0, ptr %i.ib, align 1, !noalias !46587
  %i.ic = add i64 %i.hh, 4
  store i64 %i.ic, ptr %i.hg, align 8, !alias.scope !46595, !noalias !46587
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ie = load i16, ptr %i.id, align 2, !alias.scope !46587, !noalias !46588, !noundef !75 ; 2 uses
  %i.if = icmp eq i16 %i.ie, 0
  %i.ig = icmp eq i16 %i.hf, %i.ie
  %narrow.i69 = or i1 %i.if, %i.ig
  %.sroa.07.0.i = zext i1 %narrow.i69 to i8       ; 2 uses
  %i.ih = icmp eq i16 %i.hf, 0
  br i1 %i.ih, label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ij = load i8, ptr %i.ii, align 1, !alias.scope !46587, !noalias !46588, !noundef !75
  %i.ik = icmp eq i8 %i.ij, 0
  %i.il = select i1 %i.ik, i16 257, i16 1
  br label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit

bb.ab:                                            ; preds = %bb.a
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !noundef !75 ; 2 uses
  %i.ip = load i64, ptr %i.im, align 8, !noundef !75
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit, label %bb.ac

_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit: ; preds = %bb.aa, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68, %bb.u, %bb.o, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i54, %bb.l, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit14.i, %bb.g, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit10.i, %bb.d, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.b, %bb.ab, %bb.ac, %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit
  %.sroa.9.0 = phi i16 [ undef, %bb.ab ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.g ], [ %.sroa.027.1.extract.trunc, %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit ], [ undef, %bb.l ], [ 257, %bb.ac ], [ %.sroa.45.2.insert.insert.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.sroa.47.2.insert.insert.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit10.i ], [ %.sroa.49.2.insert.insert.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit14.i ], [ 257, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i54 ], [ %i.fq, %bb.o ], [ 257, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68 ], [ %i.il, %bb.aa ], [ undef, %bb.u ]
  %.sroa.0.0 = phi i8 [ 2, %bb.ab ], [ 2, %bb.b ], [ 2, %bb.d ], [ 2, %bb.g ], [ %.sroa.027.0.extract.trunc, %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit ], [ 2, %bb.l ], [ 1, %bb.ac ], [ %i.aq, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.cj, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit10.i ], [ %i.eo, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit14.i ], [ %.sroa.04.0.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i54 ], [ %.sroa.04.0.i, %bb.o ], [ %.sroa.07.0.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68 ], [ %.sroa.07.0.i, %bb.aa ], [ 2, %bb.u ]
  %.sroa.9.0.insert.ext = zext i16 %.sroa.9.0 to i24
  %.sroa.9.0.insert.shift = shl nuw i24 %.sroa.9.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.9.0.insert.shift, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert

bb.ac:                                            ; preds = %bb.ab
  %i.ir = add i64 %i.io, 1
  store i64 %i.ir, ptr %i.in, align 8
  br label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef range(i24 0, 130818) i24 @_RNvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17ControlWordParser10parse_desc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i16 noundef %3, i16 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !range !198, !noundef !75
  switch i8 %i.a, label %default.unreachable91 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.o
    i8 4, label %bb.q
    i8 5, label %bb.t
    i8 6, label %bb.ab
    i8 7, label %bb.ad
    i8 8, label %bb.ag
    i8 9, label %bb.ao
  ]

default.unreachable91:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !noundef !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46614)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #66, !noalias !46614
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit: ; preds = %bb.b
  %i.f = load i8, ptr %1, align 1, !alias.scope !46614, !noundef !75 ; 2 uses
  %i.g = and i8 %i.c, 7
  %i.h = lshr i8 %i.f, %i.g
  %i.i = trunc i32 %i.e to i8
  %i.j = and i8 %i.f, %i.i                        ; 2 uses
  %i.k = zext i8 %i.j to i16
  %.not1.i = icmp uge i16 %4, %i.k
  %i.l = zext i8 %i.h to i16
  %i.m = icmp eq i16 %3, %i.l
  %i.n = icmp eq i8 %i.j, 0
  %.sroa.041.1.extract.trunc = zext i1 %.not1.i to i8
  %.sroa.041.2.extract.trunc = zext i1 %i.n to i8
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noundef !75
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46615)
  switch i64 %2, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit [
    i64 0, label %bb.e
    i64 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #66, !noalias !46615
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #66, !noalias !46615
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit: ; preds = %bb.d
  %5 = load i16, ptr %1, align 1, !alias.scope !46615 ; 2 uses
  %6 = and i8 %i.p, 15
  %7 = zext nneg i8 %6 to i16
  %8 = lshr i16 %5, %7
  %9 = trunc i32 %i.r to i16
  %10 = and i16 %5, %9                            ; 2 uses
  %.not3.i = icmp ugt i16 %10, %4
  %11 = icmp eq i16 %8, %3
  %12 = icmp eq i16 %10, 0
  %.sroa.2.0.insert.shift.i58 = select i1 %.not3.i, i24 0, i24 256
  %.sroa.2.0.insert.insert.i59 = select i1 %12, i24 65792, i24 %.sroa.2.0.insert.shift.i58 ; 2 uses
  %.sroa.042.1.extract.shift = lshr exact i24 %.sroa.2.0.insert.insert.i59, 8
  %.sroa.042.1.extract.trunc = trunc i24 %.sroa.042.1.extract.shift to i8
  %.sroa.042.2.extract.shift = lshr i24 %.sroa.2.0.insert.insert.i59, 16
  %.sroa.042.2.extract.trunc = trunc nuw nsw i24 %.sroa.042.2.extract.shift to i8
  br label %bb.ao

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !noundef !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46616)
  %.not.i63 = icmp eq i64 %2, 0
  br i1 %.not.i63, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %1, align 1, !alias.scope !46616, !noundef !75
  %.not2.i = icmp eq i64 %2, 1
  br i1 %.not2.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #66, !noalias !46616
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !46616, !noundef !75
  %i.z = icmp samesign ugt i64 %2, 2
  br i1 %i.z, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #66, !noalias !46616
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not3.i64 = icmp eq i64 %2, 3
  br i1 %.not3.i64, label %bb.n, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #66, !noalias !46616
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #66, !noalias !46616
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ab = load i16, ptr %i.aa, align 1, !alias.scope !46616
  %i.ac = zext i16 %i.ab to i32
  %i.ad = shl nuw i32 %i.ac, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.y to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.01.0.insert.ext.i = zext i8 %i.w to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  %.sroa.01.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %i.ad ; 2 uses
  %i.ae = and i8 %i.t, 31
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = lshr i32 %.sroa.01.0.insert.insert.i, %i.af
  %i.ah = and i32 %.sroa.01.0.insert.insert.i, %i.v ; 2 uses
  %i.ai = trunc i32 %i.ah to i16
  %.not4.i = icmp uge i16 %4, %i.ai
  %i.aj = trunc i32 %i.ag to i16
  %i.ak = icmp eq i16 %3, %i.aj
  %i.al = icmp eq i32 %i.ah, 0
  %.sroa.044.1.extract.trunc = zext i1 %.not4.i to i8
  %.sroa.044.2.extract.trunc = zext i1 %i.al to i8
  br label %bb.ao

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46617)
  %.not.i70 = icmp eq i64 %2, 0
  br i1 %.not.i70, label %bb.p, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #66, !noalias !46617
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit: ; preds = %bb.o
  %i.am = load i8, ptr %1, align 1, !alias.scope !46617, !noundef !75
  %i.an = zext i8 %i.am to i16
  %i.ao = icmp eq i16 %3, %i.an
  br label %bb.ao

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46618)
  switch i64 %2, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit [
    i64 0, label %bb.r
    i64 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66, !noalias !46618
  unreachable

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @272) #66, !noalias !46618
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit: ; preds = %bb.q
  %i.ap = load i16, ptr %1, align 1, !alias.scope !46618
  %i.aq = icmp eq i16 %i.ap, %3
  br label %bb.ao

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46619)
  %.not.i75 = icmp eq i64 %2, 0
  br i1 %.not.i75, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = load i8, ptr %1, align 1, !alias.scope !46619, !noundef !75
  %.not2.i76 = icmp eq i64 %2, 1
  br i1 %.not2.i76, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #66, !noalias !46619
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !46619, !noundef !75
  %i.au = icmp samesign ugt i64 %2, 2
  br i1 %i.au, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #66, !noalias !46619
  unreachable

bb.y:                                             ; preds = %bb.w
  %.not3.i77 = icmp eq i64 %2, 3
  br i1 %.not3.i77, label %bb.aa, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #66, !noalias !46619
  unreachable

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #66, !noalias !46619
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit: ; preds = %bb.y
  %.sroa.4.0.insert.ext.i78 = zext i8 %i.at to i16
  %.sroa.4.0.insert.shift.i79 = shl nuw i16 %.sroa.4.0.insert.ext.i78, 8
  %.sroa.01.0.insert.ext.i80 = zext i8 %i.ar to i16
  %.sroa.01.0.insert.insert.i81 = or disjoint i16 %.sroa.4.0.insert.shift.i79, %.sroa.01.0.insert.ext.i80
  %i.av = icmp eq i16 %.sroa.01.0.insert.insert.i81, %3
  br label %bb.ao

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46620)
  %.not.i84 = icmp eq i64 %2, 0
  br i1 %.not.i84, label %bb.ac, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #66, !noalias !46620
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit: ; preds = %bb.ab
  %i.aw = load i8, ptr %1, align 1, !alias.scope !46620, !noundef !75
  %i.ax = icmp eq i8 %i.aw, 0
  %.sroa.052.2.extract.trunc = zext i1 %i.ax to i8
  br label %bb.ao

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46621)
  switch i64 %2, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit [
    i64 0, label %bb.ae
    i64 1, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #66, !noalias !46621
  unreachable

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #66, !noalias !46621
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit: ; preds = %bb.ad
  %i.ay = load i16, ptr %1, align 1, !alias.scope !46621
  %13 = icmp eq i16 %i.ay, 0
  %.sroa.054.2.extract.trunc = zext i1 %13 to i8
  br label %bb.ao

bb.ag:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46622)
  %.not.i87 = icmp eq i64 %2, 0
  br i1 %.not.i87, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.az = load i8, ptr %1, align 1, !alias.scope !46622, !noundef !75
  %.not2.i88 = icmp eq i64 %2, 1
  br i1 %.not2.i88, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #66, !noalias !46622
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !46622, !noundef !75
  %i.bc = icmp samesign ugt i64 %2, 2
  br i1 %i.bc, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ah
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #66, !noalias !46622
  unreachable

bb.al:                                            ; preds = %bb.aj
  %.not3.i89 = icmp eq i64 %2, 3
  br i1 %.not3.i89, label %bb.an, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit

bb.am:                                            ; preds = %bb.aj
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #66, !noalias !46622
  unreachable

bb.an:                                            ; preds = %bb.al
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #66, !noalias !46622
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit: ; preds = %bb.al
  %i.bd = or i8 %i.bb, %i.az
  %i.be = icmp eq i8 %i.bd, 0
  %.sroa.056.2.extract.trunc = zext i1 %i.be to i8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit
  %.sroa.12.0 = phi i8 [ %.sroa.041.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit ], [ %.sroa.042.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit ], [ %.sroa.044.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit ], [ %.sroa.052.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit ], [ %.sroa.054.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit ], [ %.sroa.056.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit ], [ 1, %bb.a ]
  %.sroa.11.0 = phi i8 [ %.sroa.041.1.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit ], [ %.sroa.042.1.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit ], [ %.sroa.044.1.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit ], [ 1, %bb.a ]
  %.sroa.0.0.shrunk = phi i1 [ %i.m, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit ], [ %11, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit ], [ %i.ak, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit ], [ %i.ao, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit ], [ %i.aq, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit ], [ %i.av, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit ], [ true, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit ], [ true, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit ], [ true, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit ], [ true, %bb.a ]
  %.sroa.12.0.insert.ext = zext nneg i8 %.sroa.12.0 to i24
  %.sroa.12.0.insert.shift = shl nuw nsw i24 %.sroa.12.0.insert.ext, 16
  %.sroa.11.0.insert.ext = zext i8 %.sroa.11.0 to i24
  %.sroa.11.0.insert.shift = shl nuw nsw i24 %.sroa.11.0.insert.ext, 8
  %.sroa.11.0.insert.insert = or disjoint i24 %.sroa.11.0.insert.shift, %.sroa.12.0.insert.shift
  %.sroa.0.0.insert.ext = zext i1 %.sroa.0.0.shrunk to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.11.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17ControlWordParser5parse(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef align 8 dereferenceable(24) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 4, !range !198, !noundef !75
  switch i8 %i.a, label %default.unreachable12 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.m
    i8 3, label %bb.x
    i8 4, label %bb.ab
    i8 5, label %bb.ag
    i8 6, label %bb.ah
    i8 7, label %bb.al
    i8 8, label %bb.aq
    i8 9, label %bb.ar
  ]

default.unreachable12:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !noundef !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46669)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %1, align 1, !alias.scope !46667, !noalias !46670, !noundef !75 ; 2 uses
  %i.g = and i8 %i.c, 7
  %i.h = lshr i8 %i.f, %i.g
  %i.i = zext i8 %i.h to i16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !46671, !noalias !46672, !noundef !75 ; 3 uses
  %i.l = load i64, ptr %3, align 8, !range !76, !alias.scope !46671, !noalias !46672, !noundef !75
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %3), !noalias !46672
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !46671, !noalias !46672, !nonnull !75, !noundef !75
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.k
  store i16 %i.i, ptr %i.p, align 2, !noalias !46672
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !46671, !noalias !46672
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !46673, !noalias !46674, !noundef !75 ; 3 uses
  %i.t = load i64, ptr %4, align 8, !range !76, !alias.scope !46673, !noalias !46674, !noundef !75
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh1_EB8_.exit

bb.e:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %4), !noalias !46667
  br label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh1_EB8_.exit

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #66, !noalias !46675
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh1_EB8_.exit: ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.e
  %i.v = trunc i32 %i.e to i8
  %i.w = and i8 %i.f, %i.v
  %i.x = zext i8 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !46673, !noalias !46674, !nonnull !75, !noundef !75
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.s
  store i16 %i.x, ptr %i.aa, align 2, !noalias !46667
  %i.ab = add i64 %i.s, 1
  store i64 %i.ab, ptr %i.r, align 8, !alias.scope !46673, !noalias !46674
  br label %bb.ar

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !75
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46678)
  switch i64 %2, label %bb.i [
    i64 0, label %bb.h
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #66, !noalias !46679
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = load i16, ptr %1, align 1, !alias.scope !46676, !noalias !46680 ; 2 uses
  %i.ah = and i8 %i.ad, 15
  %i.ai = zext nneg i8 %i.ah to i16
  %i.aj = lshr i16 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !46681, !noalias !46682, !noundef !75 ; 3 uses
  %i.am = load i64, ptr %3, align 8, !range !76, !alias.scope !46681, !noalias !46682, !noundef !75
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %3), !noalias !46682
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1: ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !46681, !noalias !46682, !nonnull !75, !noundef !75
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.al
  store i16 %i.aj, ptr %i.aq, align 2, !noalias !46682
  %i.ar = add i64 %i.al, 1
  store i64 %i.ar, ptr %i.ak, align 8, !alias.scope !46681, !noalias !46682
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !46683, !noalias !46684, !noundef !75 ; 3 uses
  %i.au = load i64, ptr %4, align 8, !range !76, !alias.scope !46683, !noalias !46684, !noundef !75
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.k, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh2_EB8_.exit

bb.k:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %4), !noalias !46676
  br label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh2_EB8_.exit

bb.l:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #66, !noalias !46679
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh2_EB8_.exit: ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1, %bb.k
  %i.aw = trunc i32 %i.af to i16
  %i.ax = and i16 %i.ag, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !46683, !noalias !46684, !nonnull !75, !noundef !75
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.at
  store i16 %i.ax, ptr %i.ba, align 2, !noalias !46676
  %i.bb = add i64 %i.at, 1
  store i64 %i.bb, ptr %i.as, align 8, !alias.scope !46683, !noalias !46684
  br label %bb.ar

bb.m:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !75
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46687)
  %.not.i2 = icmp eq i64 %2, 0
  br i1 %.not.i2, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load i8, ptr %1, align 1, !alias.scope !46685, !noalias !46688, !noundef !75
  %.not1.i = icmp eq i64 %2, 1
  br i1 %.not1.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #66, !noalias !46689
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !46685, !noalias !46688, !noundef !75
  %i.bj = icmp samesign ugt i64 %2, 2
  br i1 %i.bj, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #66, !noalias !46689
  unreachable

bb.r:                                             ; preds = %bb.p
  %.not2.i = icmp eq i64 %2, 3
  br i1 %.not2.i, label %bb.w, label %bb.t

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #66, !noalias !46689
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bl = load i16, ptr %i.bk, align 1, !alias.scope !46685, !noalias !46688
  %i.bm = zext i16 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.bi to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.bg to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %.sroa.0.0.insert.insert.i = or disjoint i32 %i.bn, %.sroa.4.0.insert.insert.i
  %i.bo = and i8 %i.bd, 31
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = lshr i32 %.sroa.0.0.insert.insert.i, %i.bp
  %i.br = trunc i32 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_0
