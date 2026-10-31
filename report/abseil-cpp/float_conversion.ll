Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/float_conversion?download=true
inline.NumInlined: 822
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEbE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !60
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !136 ; 2 uses
  %.pre74.i.i.i.i = load i8, ptr %.pre.i.i.i.i, align 8, !tbaa !36
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bf = phi i8 [ %.pre74.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.10.065.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.y, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.7.064.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ 0, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.not1.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not1.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !59
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1056
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !60 ; 2 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i10.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !61
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !62
  tail call void %i.bs(ptr noundef %i.bt, i64 1024, ptr nonnull %i.bq), !inline_history !131
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i: ; preds = %.lr.ph.i10.i.i.i.i, %bb.h
  %.lcssa.i9.i.i.i.i = phi ptr [ %i.bo, %bb.h ], [ %i.bq, %.lr.ph.i10.i.i.i.i ]
  store i8 %i.bf, ptr %.lcssa.i9.i.i.i.i, align 1
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !60
  %.pre75.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !136
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bw = phi ptr [ %.pre75.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i ], [ %i.bg, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !39 ; 7 uses
  %i.bz = icmp eq i64 %.sroa.7.064.i.i.i.i, 0
  br i1 %i.bz, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !59
  %i.cc = add i64 %i.cb, %.sroa.7.064.i.i.i.i
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !59
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1056 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 8 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !60 ; 4 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.cf, %i.ch                    ; 4 uses
  %i.cj = icmp ugt i64 %.sroa.7.064.i.i.i.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i20.i.i.i.i, label %._crit_edge.i17.i.i.i.i

.lr.ph.i20.i.i.i.i:                               ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 8 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cn = sub nuw nsw i64 %.sroa.7.064.i.i.i.i, %i.ci ; 3 uses
  %.not.peel.i21.i.i.i.i = icmp eq ptr %i.cd, %i.cg
  br i1 %.not.peel.i21.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i20.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cg, i8 48, i64 %i.ci, i1 false)
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci ; 2 uses
  store ptr %i.cp, ptr %i.ce, align 8, !tbaa !60
  %.pre.i22.i.i.i.i = ptrtoint ptr %i.cp to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i20.i.i.i.i
  %.pre-phi.i23.i.i.i.i = phi i64 [ %.pre.i22.i.i.i.i, %bb.k ], [ %i.cf, %.lr.ph.i20.i.i.i.i ]
  %i.cq = sub i64 %.pre-phi.i23.i.i.i.i, %i.cl
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !61
  %i.cs = load ptr, ptr %i.by, align 8, !tbaa !62
  tail call void %i.cr(ptr noundef %i.cs, i64 %i.cq, ptr nonnull %i.ck), !inline_history !131
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !60
  %i.ct = icmp samesign ugt i64 %i.cn, 1024
  br i1 %i.ct, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i

.peel.next.i24.i.i.i.i:                           ; preds = %bb.l, %.peel.next.i24.i.i.i.i
  %.010.i25.i.i.i.i = phi i64 [ %i.cu, %.peel.next.i24.i.i.i.i ], [ %i.cn, %bb.l ]
  %i.cu = add i64 %.010.i25.i.i.i.i, -1024        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ck, i8 48, i64 1024, i1 false)
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !60
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !61
  %i.cw = load ptr, ptr %i.by, align 8, !tbaa !62
  tail call void %i.cv(ptr noundef %i.cw, i64 1024, ptr nonnull %i.ck), !inline_history !131
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !60
  %i.cx = icmp ugt i64 %i.cu, 1024
  br i1 %i.cx, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i, !llvm.loop !7

._crit_edge.i17.i.i.i.i:                          ; preds = %.peel.next.i24.i.i.i.i, %bb.l, %bb.j
  %.0.lcssa.i18.i.i.i.i = phi i64 [ %.sroa.7.064.i.i.i.i, %bb.j ], [ %i.cn, %bb.l ], [ %i.cu, %.peel.next.i24.i.i.i.i ] ; 2 uses
  %.lcssa.i19.i.i.i.i = phi ptr [ %i.cg, %bb.j ], [ %i.ck, %bb.l ], [ %i.ck, %.peel.next.i24.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i19.i.i.i.i, i8 48, i64 %.0.lcssa.i18.i.i.i.i, i1 false)
  %i.cy = load ptr, ptr %i.ce, align 8, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.0.lcssa.i18.i.i.i.i
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i: ; preds = %._crit_edge.i17.i.i.i.i, %bb.i
  %.pr.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !71 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !136, !nonnull !74, !align !75
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !39 ; 7 uses
  %i.dg = sub i64 9, %.pr.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dg ; 2 uses
  %i.di = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.di, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !59
  %i.dl = add i64 %i.dk, %.pr.i.i.i.i
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !59
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 1056
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !60 ; 2 uses
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq
  %.not.i27.i.i.i.i.peel = icmp ult i64 %.pr.i.i.i.i, %i.dr
  br i1 %.not.i27.i.i.i.i.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 3 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !61
  %i.dx = load ptr, ptr %i.df, align 8, !tbaa !62
  tail call void %i.dw(ptr noundef %i.dx, i64 %i.du, ptr nonnull %i.ds), !inline_history !132
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !60
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !61
  %i.dz = load ptr, ptr %i.df, align 8, !tbaa !62
  call void %i.dy(ptr noundef %i.dz, i64 %.pr.i.i.i.i, ptr nonnull %i.dh), !inline_history !133
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.dh, i64 %.pr.i.i.i.i, i1 false)
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !60
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.pr.i.i.i.i
  store ptr %i.eb, ptr %i.dn, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel: ; preds = %bb.o, %bb.n, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.ec = load i64, ptr %2, align 8, !tbaa !73    ; 3 uses
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !72
  %.not.i28.i.i.i.i.peel = icmp ult i64 %i.ec, %i.ed
  br i1 %.not.i28.i.i.i.i.peel, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel, label %.loopexit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel: ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.ee = add nuw i64 %i.ec, 1
  store i64 %i.ee, ptr %2, align 8, !tbaa !73
  %i.ef = load ptr, ptr %i.db, align 8, !tbaa !76
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ec
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !50 ; 6 uses
  %i.ei = urem i32 %i.eh, 10
  %i.ej = trunc nuw nsw i32 %i.ei to i8
  %i.ek = or disjoint i8 %i.ej, 48
  store i8 %i.ek, ptr %i.dc, align 8, !tbaa !25
  %i.el = udiv i32 %i.eh, 10000000
  %.lhs.trunc9.i.i.i.i.i.peel = trunc nuw nsw i32 %i.el to i16
  %i.em = urem i16 %.lhs.trunc9.i.i.i.i.i.peel, 10
  %i.en = trunc nuw nsw i16 %i.em to i8
  %i.eo = udiv i32 %i.eh, 100000000
  %.lhs.trunc11.i.i.i.i.i.peel = trunc nuw nsw i32 %i.eo to i8
  %i.ep = urem i8 %.lhs.trunc11.i.i.i.i.i.peel, 10
  %i.eq = insertelement <4 x i32> poison, i32 %i.eh, i64 0
  %i.er = shufflevector <4 x i32> %i.eq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.es = udiv <4 x i32> %i.er, <i32 10000, i32 1000, i32 100, i32 10>
  %i.et = urem <4 x i32> %i.es, splat (i32 10)
  %i.eu = trunc nuw nsw <4 x i32> %i.et to <4 x i8>
  %i.ev = udiv i32 %i.eh, 100000
  %.lhs.trunc.i.i.i.i.i.peel = trunc nuw i32 %i.ev to i16
  %i.ew = udiv i32 %i.eh, 1000000
  %.lhs.trunc7.i.i.i.i.i.peel = trunc nuw nsw i32 %i.ew to i16
  %i.ex = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i.i.i.i.peel, i64 0
  %i.ey = insertelement <2 x i16> %i.ex, i16 %.lhs.trunc.i.i.i.i.i.peel, i64 1
  %i.ez = urem <2 x i16> %i.ey, splat (i16 10)
  %i.fa = insertelement <8 x i8> poison, i8 %i.ep, i64 0
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.en, i64 1
  %i.fc = shufflevector <4 x i8> %i.eu, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i8> %i.fb, <8 x i8> %i.fc, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.fe = shufflevector <2 x i16> %i.ez, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ff = trunc nuw nsw <8 x i16> %i.fe to <8 x i8>
  %i.fg = shufflevector <8 x i8> %i.fd, <8 x i8> %i.ff, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.fh = or disjoint <8 x i8> %i.fg, splat (i8 48)
  store <8 x i8> %i.fh, ptr %i.da, align 8, !tbaa !25
  store i64 9, ptr %i.f, align 8, !tbaa !71
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel
  %i.fi = load ptr, ptr %0, align 8, !tbaa !136, !nonnull !74, !align !75
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !39 ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !59
  %i.fn = add i64 %i.fm, 9
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !59
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 1056
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !60 ; 2 uses
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs
  %.not.i27.i.i.i.i = icmp ugt i64 %i.ft, 9
  br i1 %.not.i27.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 3 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.fs, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !61
  %i.fz = load ptr, ptr %i.fk, align 8, !tbaa !62
  call void %i.fy(ptr noundef %i.fz, i64 %i.fw, ptr nonnull %i.fu), !inline_history !132
  store ptr %i.fu, ptr %i.fp, align 8, !tbaa !60
  %i.ga = load ptr, ptr %i.fx, align 8, !tbaa !61
  %i.gb = load ptr, ptr %i.fk, align 8, !tbaa !62
  call void %i.ga(ptr noundef %i.gb, i64 9, ptr nonnull %i.da), !inline_history !133
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fq, ptr noundef nonnull align 8 dereferenceable(9) %i.da, i64 9, i1 false)
  %i.gc = load ptr, ptr %i.fp, align 8, !tbaa !60
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  store ptr %i.gd, ptr %i.fp, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.ge = load i64, ptr %2, align 8, !tbaa !73    ; 3 uses
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !72
  %.not.i28.i.i.i.i = icmp ult i64 %i.ge, %i.gf
  br i1 %.not.i28.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i, label %.loopexit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.gg = add nuw i64 %i.ge, 1
  store i64 %i.gg, ptr %2, align 8, !tbaa !73
  %i.gh = load ptr, ptr %i.db, align 8, !tbaa !76
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ge
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !50 ; 6 uses
  %i.gk = urem i32 %i.gj, 10
  %i.gl = trunc nuw nsw i32 %i.gk to i8
  %i.gm = or disjoint i8 %i.gl, 48
  store i8 %i.gm, ptr %i.dc, align 8, !tbaa !25
  %i.gn = udiv i32 %i.gj, 10000000
  %.lhs.trunc9.i.i.i.i.i = trunc nuw nsw i32 %i.gn to i16
  %i.go = urem i16 %.lhs.trunc9.i.i.i.i.i, 10
  %i.gp = trunc nuw nsw i16 %i.go to i8
  %i.gq = udiv i32 %i.gj, 100000000
  %.lhs.trunc11.i.i.i.i.i = trunc nuw nsw i32 %i.gq to i8
  %i.gr = urem i8 %.lhs.trunc11.i.i.i.i.i, 10
  %i.gs = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %i.gt = shufflevector <4 x i32> %i.gs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gu = udiv <4 x i32> %i.gt, <i32 10000, i32 1000, i32 100, i32 10>
  %i.gv = urem <4 x i32> %i.gu, splat (i32 10)
  %i.gw = trunc nuw nsw <4 x i32> %i.gv to <4 x i8>
  %i.gx = udiv i32 %i.gj, 100000
  %.lhs.trunc.i.i.i.i.i = trunc nuw i32 %i.gx to i16
  %i.gy = udiv i32 %i.gj, 1000000
  %.lhs.trunc7.i.i.i.i.i = trunc nuw nsw i32 %i.gy to i16
  %i.gz = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i.i.i.i, i64 0
  %i.ha = insertelement <2 x i16> %i.gz, i16 %.lhs.trunc.i.i.i.i.i, i64 1
  %i.hb = urem <2 x i16> %i.ha, splat (i16 10)
  %i.hc = insertelement <8 x i8> poison, i8 %i.gr, i64 0
  %i.hd = insertelement <8 x i8> %i.hc, i8 %i.gp, i64 1
  %i.he = shufflevector <4 x i8> %i.gw, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x i8> %i.hd, <8 x i8> %i.he, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.hg = shufflevector <2 x i16> %i.hb, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hh = trunc nuw nsw <8 x i16> %i.hg to <8 x i8>
  %i.hi = shufflevector <8 x i8> %i.hf, <8 x i8> %i.hh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.hj = or disjoint <8 x i8> %i.hi, splat (i8 48)
  store <8 x i8> %i.hj, ptr %i.da, align 8, !tbaa !25
  store i64 9, ptr %i.f, align 8, !tbaa !71
  br label %bb.p, !llvm.loop !134

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.hk = load ptr, ptr %0, align 8, !tbaa !136   ; 5 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  %.val.i.i.i.i = load i64, ptr %i.hl, align 8, !tbaa !37
  %.not.i29.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i: ; preds = %.loopexit
  %i.hm = getelementptr i8, ptr %i.hk, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !24
  %i.hp = and i8 %i.ho, 8
  %.not67.i.i.i.i = icmp eq i8 %i.hp, 0
  br i1 %.not67.i.i.i.i, label %bb.t, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, %.loopexit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !138, !nonnull !74
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !42, !range !77, !noundef !74
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !39 ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !59
  %i.hy = add i64 %i.hx, 1
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !59
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 1056
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 4 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !60 ; 2 uses
  %i.ic = icmp eq ptr %i.hz, %i.ib
  br i1 %i.ic, label %.lr.ph.i34.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i

.lr.ph.i34.i.i.i.i:                               ; preds = %bb.s
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.ig = load ptr, ptr %i.hv, align 8, !tbaa !62
  call void %i.if(ptr noundef %i.ig, i64 1024, ptr nonnull %i.id), !inline_history !131
  store ptr %i.id, ptr %i.ia, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i: ; preds = %.lr.ph.i34.i.i.i.i, %bb.s
  %.lcssa.i33.i.i.i.i = phi ptr [ %i.ib, %bb.s ], [ %i.id, %.lr.ph.i34.i.i.i.i ]
  store i8 46, ptr %.lcssa.i33.i.i.i.i, align 1
  %i.ih = load ptr, ptr %i.ia, align 8, !tbaa !60
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store ptr %i.ii, ptr %i.ia, align 8, !tbaa !60
  %.pre77.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !136
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i
  %.pre77.i.i.i.i = phi ptr [ %.pre77.pre.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i ], [ %i.hk, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i ], [ %i.hk, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !138, !nonnull !74
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !42, !range !77, !noundef !74
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.in = getelementptr inbounds nuw i8, ptr %.pre77.i.i.i.i, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !39 ; 7 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.pre77.i.i.i.i, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !37 ; 5 uses
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !59
  %i.iu = add i64 %i.it, %i.iq
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !59
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 1056 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 24 ; 8 uses
  %i.ix = ptrtoint ptr %i.iv to i64               ; 2 uses
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !60 ; 4 uses
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = sub i64 %i.ix, %i.iz                    ; 4 uses
  %i.jb = icmp ugt i64 %i.iq, %i.ja
  br i1 %i.jb, label %.lr.ph.i44.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.lr.ph.i44.i.i.i.i:                               ; preds = %bb.v
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 8 uses
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.jf = sub nuw i64 %i.iq, %i.ja                ; 3 uses
  %.not.peel.i45.i.i.i.i = icmp eq ptr %i.iv, %i.iy
  br i1 %.not.peel.i45.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i44.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.iy, i8 48, i64 %i.ja, i1 false)
  %i.jg = load ptr, ptr %i.iw, align 8, !tbaa !60
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ja ; 2 uses
  store ptr %i.jh, ptr %i.iw, align 8, !tbaa !60
  %.pre.i46.i.i.i.i = ptrtoint ptr %i.jh to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i44.i.i.i.i
  %.pre-phi.i47.i.i.i.i = phi i64 [ %.pre.i46.i.i.i.i, %bb.w ], [ %i.ix, %.lr.ph.i44.i.i.i.i ]
  %i.ji = sub i64 %.pre-phi.i47.i.i.i.i, %i.jd
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !61
  %i.jk = load ptr, ptr %i.io, align 8, !tbaa !62
  call void %i.jj(ptr noundef %i.jk, i64 %i.ji, ptr nonnull %i.jc), !inline_history !131
  store ptr %i.jc, ptr %i.iw, align 8, !tbaa !60
  %i.jl = icmp ugt i64 %i.jf, 1024
  br i1 %i.jl, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.peel.next.i48.i.i.i.i:                           ; preds = %bb.x, %.peel.next.i48.i.i.i.i
  %.010.i49.i.i.i.i = phi i64 [ %i.jm, %.peel.next.i48.i.i.i.i ], [ %i.jf, %bb.x ]
  %i.jm = add i64 %.010.i49.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.jc, i8 48, i64 1024, i1 false)
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !60
  %i.jn = load ptr, ptr %i.je, align 8, !tbaa !61
  %i.jo = load ptr, ptr %i.io, align 8, !tbaa !62
  call void %i.jn(ptr noundef %i.jo, i64 1024, ptr nonnull %i.jc), !inline_history !131
  store ptr %i.jc, ptr %i.iw, align 8, !tbaa !60
  %i.jp = icmp ugt i64 %i.jm, 1024
  br i1 %i.jp, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i, !llvm.loop !7

._crit_edge.i41.i.i.i.i:                          ; preds = %.peel.next.i48.i.i.i.i, %bb.x, %bb.v
  %.0.lcssa.i42.i.i.i.i = phi i64 [ %i.iq, %bb.v ], [ %i.jf, %bb.x ], [ %i.jm, %.peel.next.i48.i.i.i.i ] ; 2 uses
  %.lcssa.i43.i.i.i.i = phi ptr [ %i.iy, %bb.v ], [ %i.jc, %bb.x ], [ %i.jc, %.peel.next.i48.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i43.i.i.i.i, i8 48, i64 %.0.lcssa.i42.i.i.i.i, i1 false)
  %i.jq = load ptr, ptr %i.iw, align 8, !tbaa !60
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0.lcssa.i42.i.i.i.i
  store ptr %i.jr, ptr %i.iw, align 8, !tbaa !60
  %.pre76.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !136
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i: ; preds = %._crit_edge.i41.i.i.i.i, %bb.u, %bb.t
  %i.js = phi ptr [ %.pre76.i.i.i.i, %._crit_edge.i41.i.i.i.i ], [ %.pre77.i.i.i.i, %bb.u ], [ %.pre77.i.i.i.i, %bb.t ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !39 ; 7 uses
  %i.jv = icmp eq i64 %.sroa.10.065.i.i.i.i, 0
  br i1 %i.jv, label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEbE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit", label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !59
  %i.jy = add i64 %i.jx, %.sroa.10.065.i.i.i.i
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !59
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 1056 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 8 uses
  %i.kb = ptrtoint ptr %i.jz to i64               ; 2 uses
  %i.kc = load ptr, ptr %i.ka, align 8, !tbaa !60 ; 4 uses
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = sub i64 %i.kb, %i.kd                    ; 4 uses
  %i.kf = icmp ugt i64 %.sroa.10.065.i.i.i.i, %i.ke
  br i1 %i.kf, label %.lr.ph.i54.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.lr.ph.i54.i.i.i.i:                               ; preds = %bb.y
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ju, i64 32 ; 8 uses
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  %i.kj = sub nuw nsw i64 %.sroa.10.065.i.i.i.i, %i.ke ; 3 uses
  %.not.peel.i55.i.i.i.i = icmp eq ptr %i.jz, %i.kc
  br i1 %.not.peel.i55.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i54.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.kc, i8 32, i64 %i.ke, i1 false)
  %i.kk = load ptr, ptr %i.ka, align 8, !tbaa !60
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ke ; 2 uses
  store ptr %i.kl, ptr %i.ka, align 8, !tbaa !60
  %.pre.i56.i.i.i.i = ptrtoint ptr %i.kl to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i54.i.i.i.i
  %.pre-phi.i57.i.i.i.i = phi i64 [ %.pre.i56.i.i.i.i, %bb.z ], [ %i.kb, %.lr.ph.i54.i.i.i.i ]
  %i.km = sub i64 %.pre-phi.i57.i.i.i.i, %i.kh
  %i.kn = load ptr, ptr %i.ki, align 8, !tbaa !61
  %i.ko = load ptr, ptr %i.ju, align 8, !tbaa !62
  call void %i.kn(ptr noundef %i.ko, i64 %i.km, ptr nonnull %i.kg), !inline_history !131
  store ptr %i.kg, ptr %i.ka, align 8, !tbaa !60
  %i.kp = icmp ugt i64 %i.kj, 1024
  br i1 %i.kp, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.peel.next.i58.i.i.i.i:                           ; preds = %bb.aa, %.peel.next.i58.i.i.i.i
  %.010.i59.i.i.i.i = phi i64 [ %i.kq, %.peel.next.i58.i.i.i.i ], [ %i.kj, %bb.aa ]
  %i.kq = add i64 %.010.i59.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.kg, i8 32, i64 1024, i1 false)
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !60
  %i.kr = load ptr, ptr %i.ki, align 8, !tbaa !61
  %i.ks = load ptr, ptr %i.ju, align 8, !tbaa !62
  call void %i.kr(ptr noundef %i.ks, i64 1024, ptr nonnull %i.kg), !inline_history !131
  store ptr %i.kg, ptr %i.ka, align 8, !tbaa !60
  %i.kt = icmp ugt i64 %i.kq, 1024
  br i1 %i.kt, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i, !llvm.loop !7

._crit_edge.i51.i.i.i.i:                          ; preds = %.peel.next.i58.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i52.i.i.i.i = phi i64 [ %.sroa.10.065.i.i.i.i, %bb.y ], [ %i.kj, %bb.aa ], [ %i.kq, %.peel.next.i58.i.i.i.i ] ; 2 uses
  %.lcssa.i53.i.i.i.i = phi ptr [ %i.kc, %bb.y ], [ %i.kg, %bb.aa ], [ %i.kg, %.peel.next.i58.i.i.i.i ]
end_hunk_0
begin_hunk_1_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !39 ; 6 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !59
  %i.nz = add i64 %i.ny, 1
  store i64 %i.nz, ptr %i.nx, align 8, !tbaa !59
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 1056
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 24 ; 4 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !60 ; 2 uses
  %i.od = icmp eq ptr %i.oa, %i.oc
  br i1 %i.od, label %.lr.ph.i176.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i

.lr.ph.i176.i.i.i.i:                              ; preds = %bb.am
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nw, i64 32 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !61
  %i.oh = load ptr, ptr %i.nw, align 8, !tbaa !62
  call void %i.og(ptr noundef %i.oh, i64 1024, ptr nonnull %i.oe), !inline_history !155
  store ptr %i.oe, ptr %i.ob, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i: ; preds = %.lr.ph.i176.i.i.i.i, %bb.am
  %.lcssa.i175.i.i.i.i = phi ptr [ %i.oc, %bb.am ], [ %i.oe, %.lr.ph.i176.i.i.i.i ]
  store i8 48, ptr %.lcssa.i175.i.i.i.i, align 1
  %i.oi = load ptr, ptr %i.ob, align 8, !tbaa !60
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  store ptr %i.oj, ptr %i.ob, align 8, !tbaa !60
  br label %bb.an

bb.an:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i
  %i.ok = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !74, !align !75
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !39 ; 7 uses
  %i.on = icmp eq i64 %i.bl, 0
  br i1 %i.on, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !59
  %i.oq = add i64 %i.op, %i.bl
  store i64 %i.oq, ptr %i.oo, align 8, !tbaa !59
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 1056
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 24 ; 4 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !60 ; 2 uses
  %i.ou = ptrtoint ptr %i.or to i64
  %i.ov = ptrtoint ptr %i.ot to i64               ; 2 uses
  %i.ow = sub i64 %i.ou, %i.ov
  %.not.i183.i.i.i.i = icmp ult i64 %i.bl, %i.ow
  br i1 %.not.i183.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 32 ; 3 uses
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = sub i64 %i.ov, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !61
  %i.pc = load ptr, ptr %i.om, align 8, !tbaa !62
  call void %i.pb(ptr noundef %i.pc, i64 %i.oz, ptr nonnull %i.ox), !inline_history !157
  store ptr %i.ox, ptr %i.os, align 8, !tbaa !60
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !61
  %i.pe = load ptr, ptr %i.om, align 8, !tbaa !62
  call void %i.pd(ptr noundef %i.pe, i64 %i.bl, ptr nonnull %i.a), !inline_history !158
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ot, ptr nonnull align 16 %i.a, i64 %i.bl, i1 false)
  %i.pf = load ptr, ptr %i.os, align 8, !tbaa !60
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.bl
  store ptr %i.pg, ptr %i.os, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.an
  %i.ph = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !74, !align !75
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !39 ; 7 uses
  %i.pk = icmp eq i64 %.sroa.9205.0258.i.i.i.i, 0
  br i1 %i.pk, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 16 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !59
  %i.pn = add i64 %i.pm, %.sroa.9205.0258.i.i.i.i
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !59
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 1056 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 24 ; 8 uses
  %i.pq = ptrtoint ptr %i.po to i64               ; 2 uses
  %i.pr = load ptr, ptr %i.pp, align 8, !tbaa !60 ; 4 uses
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.pq, %i.ps                    ; 4 uses
  %i.pu = icmp ugt i64 %.sroa.9205.0258.i.i.i.i, %i.pt
  br i1 %i.pu, label %.lr.ph.i187.i.i.i.i, label %._crit_edge.i184.i.i.i.i

.lr.ph.i187.i.i.i.i:                              ; preds = %bb.ar
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pj, i64 32 ; 8 uses
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %i.py = sub nuw nsw i64 %.sroa.9205.0258.i.i.i.i, %i.pt ; 3 uses
  %.not.peel.i188.i.i.i.i = icmp eq ptr %i.po, %i.pr
  br i1 %.not.peel.i188.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i187.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.pr, i8 32, i64 %i.pt, i1 false)
  %i.pz = load ptr, ptr %i.pp, align 8, !tbaa !60
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pt ; 2 uses
  store ptr %i.qa, ptr %i.pp, align 8, !tbaa !60
  %.pre.i189.i.i.i.i = ptrtoint ptr %i.qa to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i187.i.i.i.i
  %.pre-phi.i190.i.i.i.i = phi i64 [ %.pre.i189.i.i.i.i, %bb.as ], [ %i.pq, %.lr.ph.i187.i.i.i.i ]
  %i.qb = sub i64 %.pre-phi.i190.i.i.i.i, %i.pw
  %i.qc = load ptr, ptr %i.px, align 8, !tbaa !61
  %i.qd = load ptr, ptr %i.pj, align 8, !tbaa !62
  call void %i.qc(ptr noundef %i.qd, i64 %i.qb, ptr nonnull %i.pv), !inline_history !155
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !60
  %i.qe = icmp ugt i64 %i.py, 1024
  br i1 %i.qe, label %.peel.next.i191.i.i.i.i, label %._crit_edge.i184.i.i.i.i

.peel.next.i191.i.i.i.i:                          ; preds = %bb.at, %.peel.next.i191.i.i.i.i
  %.010.i192.i.i.i.i = phi i64 [ %i.qf, %.peel.next.i191.i.i.i.i ], [ %i.py, %bb.at ]
  %i.qf = add i64 %.010.i192.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.pv, i8 32, i64 1024, i1 false)
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !60
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !61
  %i.qh = load ptr, ptr %i.pj, align 8, !tbaa !62
  call void %i.qg(ptr noundef %i.qh, i64 1024, ptr nonnull %i.pv), !inline_history !155
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !60
  %i.qi = icmp ugt i64 %i.qf, 1024
  br i1 %i.qi, label %.peel.next.i191.i.i.i.i, label %._crit_edge.i184.i.i.i.i, !llvm.loop !7

._crit_edge.i184.i.i.i.i:                         ; preds = %.peel.next.i191.i.i.i.i, %bb.at, %bb.ar
  %.0.lcssa.i185.i.i.i.i = phi i64 [ %.sroa.9205.0258.i.i.i.i, %bb.ar ], [ %i.py, %bb.at ], [ %i.qf, %.peel.next.i191.i.i.i.i ] ; 2 uses
  %.lcssa.i186.i.i.i.i = phi ptr [ %i.pr, %bb.ar ], [ %i.pv, %bb.at ], [ %i.pv, %.peel.next.i191.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i186.i.i.i.i, i8 32, i64 %.0.lcssa.i185.i.i.i.i, i1 false)
  %i.qj = load ptr, ptr %i.pp, align 8, !tbaa !60
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.0.lcssa.i185.i.i.i.i
  store ptr %i.qk, ptr %i.pp, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i: ; preds = %._crit_edge.i184.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit": ; preds = %bb.a, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !166    ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !73     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72
  %.not.i.i = icmp ult i64 %i.c, %i.e
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = add nuw i64 %i.c, 1
  store i64 %i.g, ptr %0, align 8, !tbaa !73
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.c
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = urem i32 %i.j, 10
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = udiv i32 %i.j, 10000000
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.q to i16
  %i.r = urem i16 %.lhs.trunc9.i.i, 10
  %i.s = trunc nuw nsw i16 %i.r to i8
  %i.t = udiv i32 %i.j, 100000000
  %.lhs.trunc11.i.i = trunc nuw nsw i32 %i.t to i8
  %i.u = urem i8 %.lhs.trunc11.i.i, 10
  %i.v = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = udiv <4 x i32> %i.w, <i32 10000, i32 1000, i32 100, i32 10>
  %i.y = urem <4 x i32> %i.x, splat (i32 10)
  %i.z = trunc nuw nsw <4 x i32> %i.y to <4 x i8>
  %i.aa = udiv i32 %i.j, 100000
  %.lhs.trunc.i.i = trunc nuw i32 %i.aa to i16
  %i.ab = udiv i32 %i.j, 1000000
  %.lhs.trunc7.i.i = trunc nuw nsw i32 %i.ab to i16
  %i.ac = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i, i64 0
  %i.ad = insertelement <2 x i16> %i.ac, i16 %.lhs.trunc.i.i, i64 1
  %i.ae = urem <2 x i16> %i.ad, splat (i16 10)
  %i.af = insertelement <8 x i8> poison, i8 %i.u, i64 0
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.s, i64 1
  %i.ah = shufflevector <4 x i8> %i.z, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ai = shufflevector <8 x i8> %i.ag, <8 x i8> %i.ah, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.aj = shufflevector <2 x i16> %i.ae, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = trunc nuw nsw <8 x i16> %i.aj to <8 x i8>
  %i.al = shufflevector <8 x i8> %i.ai, <8 x i8> %i.ak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.am = or disjoint <8 x i8> %i.al, splat (i8 48)
  store <8 x i8> %i.am, ptr %i.l, align 8, !tbaa !25
  store i64 9, ptr %i.k, align 8, !tbaa !71
  %.pre.i = load i64, ptr %1, align 8, !tbaa !166
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i
  %i.an = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i ], [ %i.a, %bb.a ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !167 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !167
  %i.as = add i64 %i.an, -1                       ; 3 uses
  store i64 %i.as, ptr %1, align 8, !tbaa !166
  %i.at = sext i8 %i.aq to i32
  %.sroa.040.0.extract.trunc = add nsw i32 %i.at, -48 ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  br i1 %i.au, label %bb.c, label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"

bb.c:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.av = load i64, ptr %0, align 8, !tbaa !73    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !72
  %.not.i.i14 = icmp ult i64 %i.av, %i.ax
  br i1 %.not.i.i14, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = add nuw i64 %i.av, 1
  store i64 %i.az, ptr %0, align 8, !tbaa !73
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.av
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !50 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = urem i32 %i.bc, 10
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !25
  %i.bj = udiv i32 %i.bc, 10000000
  %.lhs.trunc9.i.i17 = trunc nuw nsw i32 %i.bj to i16
  %i.bk = urem i16 %.lhs.trunc9.i.i17, 10
  %i.bl = trunc nuw nsw i16 %i.bk to i8
  %i.bm = udiv i32 %i.bc, 100000000
  %.lhs.trunc11.i.i18 = trunc nuw nsw i32 %i.bm to i8
  %i.bn = urem i8 %.lhs.trunc11.i.i18, 10
  %i.bo = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.bp = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bq = udiv <4 x i32> %i.bp, <i32 10000, i32 1000, i32 100, i32 10>
  %i.br = urem <4 x i32> %i.bq, splat (i32 10)
  %i.bs = trunc nuw nsw <4 x i32> %i.br to <4 x i8>
  %i.bt = udiv i32 %i.bc, 100000
  %.lhs.trunc.i.i15 = trunc nuw i32 %i.bt to i16
  %i.bu = udiv i32 %i.bc, 1000000
  %.lhs.trunc7.i.i16 = trunc nuw nsw i32 %i.bu to i16
  %i.bv = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i16, i64 0
  %i.bw = insertelement <2 x i16> %i.bv, i16 %.lhs.trunc.i.i15, i64 1
  %i.bx = urem <2 x i16> %i.bw, splat (i16 10)
  %i.by = insertelement <8 x i8> poison, i8 %i.bn, i64 0
  %i.bz = insertelement <8 x i8> %i.by, i8 %i.bl, i64 1
  %i.ca = shufflevector <4 x i8> %i.bs, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <8 x i8> %i.bz, <8 x i8> %i.ca, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.cc = shufflevector <2 x i16> %i.bx, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cd = trunc nuw nsw <8 x i16> %i.cc to <8 x i8>
  %i.ce = shufflevector <8 x i8> %i.cb, <8 x i8> %i.cd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.cf = or disjoint <8 x i8> %i.ce, splat (i8 48)
  store <8 x i8> %i.cf, ptr %i.be, align 8, !tbaa !25
  store i64 9, ptr %i.bd, align 8, !tbaa !71
  store i64 9, ptr %1, align 8, !tbaa !31
  store ptr %i.be, ptr %i.ao, align 8, !tbaa !168
  br label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"

"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit": ; preds = %bb.d, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cg = phi i64 [ 9, %bb.d ], [ %i.as, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.ch = phi ptr [ %i.be, %bb.d ], [ %i.ar, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !25
  %i.cj = icmp eq i8 %i.ci, 57
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.cl, align 8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27: ; preds = %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38", %.lr.ph
  %i.cq = phi ptr [ %i.ch, %.lr.ph ], [ %.pre.i3064, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ]
  %.pr = phi i64 [ %i.cg, %.lr.ph ], [ %.pr60, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ]
  %.057 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cr, ptr %i.ao, align 8, !tbaa !167
  %i.cs = add i64 %.pr, -1                        ; 3 uses
  store i64 %i.cs, ptr %1, align 8, !tbaa !166
  %i.ct = add i64 %.057, 1                        ; 3 uses
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %bb.e, label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38"

bb.e:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27
  %i.cv = load i64, ptr %0, align 8, !tbaa !73    ; 3 uses
  %i.cw = load i64, ptr %i.ck, align 8, !tbaa !72
  %.not.i.i32 = icmp ult i64 %i.cv, %i.cw
  br i1 %.not.i.i32, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.cx = add nuw i64 %i.cv, 1
  store i64 %i.cx, ptr %0, align 8, !tbaa !73
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !50 ; 6 uses
  %i.da = urem i32 %i.cz, 10
  %i.db = trunc nuw nsw i32 %i.da to i8
  %i.dc = or disjoint i8 %i.db, 48
  store i8 %i.dc, ptr %i.co, align 8, !tbaa !25
  %i.dd = udiv i32 %i.cz, 10000000
  %.lhs.trunc9.i.i35 = trunc nuw nsw i32 %i.dd to i16
  %i.de = urem i16 %.lhs.trunc9.i.i35, 10
  %i.df = trunc nuw nsw i16 %i.de to i8
  %i.dg = udiv i32 %i.cz, 100000000
  %.lhs.trunc11.i.i36 = trunc nuw nsw i32 %i.dg to i8
  %i.dh = urem i8 %.lhs.trunc11.i.i36, 10
  %i.di = insertelement <4 x i32> poison, i32 %i.cz, i64 0
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dk = udiv <4 x i32> %i.dj, <i32 10000, i32 1000, i32 100, i32 10>
  %i.dl = urem <4 x i32> %i.dk, splat (i32 10)
  %i.dm = trunc nuw nsw <4 x i32> %i.dl to <4 x i8>
  %i.dn = udiv i32 %i.cz, 100000
  %.lhs.trunc.i.i33 = trunc nuw i32 %i.dn to i16
  %i.do = udiv i32 %i.cz, 1000000
  %.lhs.trunc7.i.i34 = trunc nuw nsw i32 %i.do to i16
  %i.dp = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i34, i64 0
  %i.dq = insertelement <2 x i16> %i.dp, i16 %.lhs.trunc.i.i33, i64 1
  %i.dr = urem <2 x i16> %i.dq, splat (i16 10)
  %i.ds = insertelement <8 x i8> poison, i8 %i.dh, i64 0
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.df, i64 1
  %i.du = shufflevector <4 x i8> %i.dm, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <8 x i8> %i.dt, <8 x i8> %i.du, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.dw = shufflevector <2 x i16> %i.dr, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dx = trunc nuw nsw <8 x i16> %i.dw to <8 x i8>
  %i.dy = shufflevector <8 x i8> %i.dv, <8 x i8> %i.dx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.dz = or disjoint <8 x i8> %i.dy, splat (i8 48)
  store <8 x i8> %i.dz, ptr %i.cn, align 8, !tbaa !25
  store i64 9, ptr %i.cm, align 8, !tbaa !71
  store i64 9, ptr %1, align 8, !tbaa !31
  store ptr %i.cn, ptr %i.ao, align 8, !tbaa !168
  br label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38"

"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38": ; preds = %bb.f, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27
  %.pre.i3064 = phi ptr [ %i.cn, %bb.f ], [ %i.cr, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27 ] ; 2 uses
  %.pr60 = phi i64 [ 9, %bb.f ], [ %i.cs, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27 ]
  %i.ea = load i8, ptr %.pre.i3064, align 1, !tbaa !25
  %i.eb = icmp eq i8 %i.ea, 57
  br i1 %i.eb, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27, label %._crit_edge, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.e, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38", %bb.c, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"
  %.0.lcssa = phi i64 [ 0, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit" ], [ 0, %bb.c ], [ %i.ct, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ], [ %i.ct, %bb.e ] ; 2 uses
  %i.ec = icmp eq i32 %.sroa.040.0.extract.trunc, 9
  br i1 %i.ec, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ed = add i64 %.0.lcssa, 1
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.h:                                             ; preds = %._crit_edge
  %i.ee = zext i32 %.sroa.040.0.extract.trunc to i64
  %i.ef = or disjoint i64 %i.ee, 4294967296
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.b, %bb.g, %bb.h
  %.sroa.2.1 = phi i64 [ 0, %bb.b ], [ %i.ef, %bb.h ], [ 0, %bb.g ]
  %.sroa.448.sroa.2.1 = phi i64 [ 0, %bb.b ], [ %.0.lcssa, %bb.h ], [ %i.ed, %bb.g ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.2.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.448.sroa.2.1, 1
  ret { i64, i64 } %.fca.1.insert
}

declare noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %.sroa.04.0.copyload.i.i.i = load i8, ptr %1, align 8, !tbaa !25 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !53 ; 16 uses
  %.not.i350.i.i.i.i = icmp ne i8 %.sroa.04.0.copyload.i.i.i, 0
  %i.b = icmp ne i64 %.sroa.3.0.copyload.i.i.i, 0
  %i.c = select i1 %.not.i350.i.i.i.i, i1 true, i1 %i.b
  br i1 %i.c, label %.lr.ph.i.i.i.i, label %.thread279.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.c
  %.053353.i.i.i.i = phi i32 [ %i.bu, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %storemerge.lcssa.i341352.i.i.i.i = phi i8 [ %storemerge.lcssa.i.i.i.i.i, %bb.c ], [ %.sroa.04.0.copyload.i.i.i, %bb.a ] ; 3 uses
  %.lcssa339345351.i.i.i.i = phi i64 [ %.lcssa339346.i.i.i.i, %bb.c ], [ %.sroa.3.0.copyload.i.i.i, %bb.a ] ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.lcssa339345351.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i
  %xtraiter = and i64 %.lcssa339345351.i.i.i.i, 1
  %i.d = icmp eq i64 %.lcssa339345351.i.i.i.i, 1
  br i1 %i.d, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.lcssa339345351.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.epil.init = phi i64 [ %.lcssa339345351.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader ], [ %i.aa, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %.0610.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ah, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod260 = trunc i64 %.lcssa339345351.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  %i.e = getelementptr [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i.epil.init
  %i.f = getelementptr i8, ptr %i.e, i64 -4       ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50
  %i.h = zext i32 %i.g to i64
  %i.i = mul nuw nsw i64 %i.h, 10
  %i.j = add nuw nsw i64 %i.i, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %i.f, align 4, !tbaa !50
  %i.l = lshr i64 %i.j, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa237 = phi i64 [ %i.ah, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ], [ %i.l, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.m = trunc nuw nsw i64 %.lcssa237 to i8
  %i.n = add i64 %.lcssa339345351.i.i.i.i, -1     ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = icmp eq i32 %i.p, 0
  %spec.select.i.i.i.i = select i1 %i.q, i64 %i.n, i64 %.lcssa339345351.i.i.i.i ; 4 uses
  %i.r = icmp eq i64 %.lcssa237, 9
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i = phi i64 [ %.lcssa339345351.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.aa, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ah, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.s = getelementptr [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i
  %i.t = getelementptr i8, ptr %i.s, i64 -4       ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !50
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 10
  %i.x = add nuw nsw i64 %i.w, %.0610.i.i.i.i.i.i ; 2 uses
  %i.y = trunc i64 %i.x to i32
  store i32 %i.y, ptr %i.t, align 4, !tbaa !50
  %i.z = lshr i64 %i.x, 32
  %i.aa = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !50
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 10
  %i.af = add nuw nsw i64 %i.ae, %i.z             ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !50
  %i.ah = lshr i64 %i.af, 32                      ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i
  %i.ai = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %i.ai, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.aj = phi i64 [ %spec.select369.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ak = phi i64 [ %spec.select370.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 9 uses
  %.sroa.2.010.i.i.i.i.i = phi i64 [ %i.al, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.al = add i64 %.sroa.2.010.i.i.i.i.i, 1       ; 3 uses
  %.not.i2.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i2.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i3.i.i.i.i.i.preheader

.preheader.i3.i.i.i.i.i.preheader:                ; preds = %.lr.ph.split.i.i.i.i.i
  %xtraiter261 = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %.preheader.i3.i.i.i.i.i.epil.preheader, label %.preheader.i3.i.i.i.i.i.preheader.new

.preheader.i3.i.i.i.i.i.preheader.new:            ; preds = %.preheader.i3.i.i.i.i.i.preheader
  %unroll_iter265 = and i64 %i.ak, -2
  br label %.preheader.i3.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i.i.i.i.i
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i, label %.preheader.i3.i.i.i.i.i.epil.preheader

.preheader.i3.i.i.i.i.i.epil.preheader:           ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.preheader
  %.011.i4.i.i.i.i.i.epil.init = phi i64 [ %i.ak, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bi, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %.0610.i5.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bp, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod264 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod264)
  %i.an = getelementptr [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i.epil.init
  %i.ao = getelementptr i8, ptr %i.an, i64 -4     ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !50
  %i.aq = zext i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 10
  %i.as = add nuw nsw i64 %i.ar, %.0610.i5.i.i.i.i.i.epil.init ; 2 uses
  %i.at = trunc i64 %i.as to i32
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !50
  %i.au = lshr i64 %i.as, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.epil.preheader
  %.lcssa238 = phi i64 [ %i.bp, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ], [ %i.au, %.preheader.i3.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.av = add i64 %i.ak, -1                       ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !50
  %i.ay = icmp eq i32 %i.ax, 0                    ; 2 uses
  %spec.select369.i.i.i.i = select i1 %i.ay, i64 %i.av, i64 %i.aj ; 2 uses
  %spec.select370.i.i.i.i = select i1 %i.ay, i64 %i.av, i64 %i.ak
  %i.az = icmp eq i64 %.lcssa238, 9
  br i1 %i.az, label %.lr.ph.split.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !10

.preheader.i3.i.i.i.i.i:                          ; preds = %.preheader.i3.i.i.i.i.i, %.preheader.i3.i.i.i.i.i.preheader.new
  %.011.i4.i.i.i.i.i = phi i64 [ %i.ak, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bi, %.preheader.i3.i.i.i.i.i ] ; 2 uses
  %.0610.i5.i.i.i.i.i = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bp, %.preheader.i3.i.i.i.i.i ]
  %niter266 = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %niter266.next.1, %.preheader.i3.i.i.i.i.i ]
  %i.ba = getelementptr [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4     ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !50
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul nuw nsw i64 %i.bd, 10
  %i.bf = add nuw nsw i64 %i.be, %.0610.i5.i.i.i.i.i ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !50
  %i.bh = lshr i64 %i.bf, 32
  %i.bi = add i64 %.011.i4.i.i.i.i.i, -2          ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !50
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw nsw i64 %i.bl, 10
  %i.bn = add nuw nsw i64 %i.bm, %i.bh            ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !50
  %i.bp = lshr i64 %i.bn, 32                      ; 3 uses
end_hunk_1
