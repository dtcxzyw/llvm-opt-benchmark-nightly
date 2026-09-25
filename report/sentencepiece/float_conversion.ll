Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/float_conversion?download=true
inline.NumInlined: 822
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 19
begin_hunk_0_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEbE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  tail call void %i.ba(ptr noundef %i.bb, i64 1024, ptr nonnull %i.ap), !inline_history !132
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !61
  %i.bc = icmp ugt i64 %i.az, 1024
  br i1 %i.bc, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !7

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.y, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.as, %bb.g ], [ %i.az, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.ap, %bb.g ], [ %i.ap, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i, i8 32, i64 %.0.lcssa.i.i.i.i.i, i1 false)
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !61
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !137 ; 2 uses
  %.pre74.i.i.i.i = load i8, ptr %.pre.i.i.i.i, align 8, !tbaa !37
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
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !40 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !60
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1056
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !61 ; 2 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i10.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !62
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !63
  tail call void %i.bs(ptr noundef %i.bt, i64 1024, ptr nonnull %i.bq), !inline_history !132
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !61
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i: ; preds = %.lr.ph.i10.i.i.i.i, %bb.h
  %.lcssa.i9.i.i.i.i = phi ptr [ %i.bo, %bb.h ], [ %i.bq, %.lr.ph.i10.i.i.i.i ]
  store i8 %i.bf, ptr %.lcssa.i9.i.i.i.i, align 1
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !61
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !61
  %.pre75.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !137
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bw = phi ptr [ %.pre75.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i ], [ %i.bg, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !40 ; 7 uses
  %i.bz = icmp eq i64 %.sroa.7.064.i.i.i.i, 0
  br i1 %i.bz, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !60
  %i.cc = add i64 %i.cb, %.sroa.7.064.i.i.i.i
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !60
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1056 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 8 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !61 ; 4 uses
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
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !61
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci ; 2 uses
  store ptr %i.cp, ptr %i.ce, align 8, !tbaa !61
  %.pre.i22.i.i.i.i = ptrtoint ptr %i.cp to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i20.i.i.i.i
  %.pre-phi.i23.i.i.i.i = phi i64 [ %.pre.i22.i.i.i.i, %bb.k ], [ %i.cf, %.lr.ph.i20.i.i.i.i ]
  %i.cq = sub i64 %.pre-phi.i23.i.i.i.i, %i.cl
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !62
  %i.cs = load ptr, ptr %i.by, align 8, !tbaa !63
  tail call void %i.cr(ptr noundef %i.cs, i64 %i.cq, ptr nonnull %i.ck), !inline_history !132
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !61
  %i.ct = icmp samesign ugt i64 %i.cn, 1024
  br i1 %i.ct, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i

.peel.next.i24.i.i.i.i:                           ; preds = %bb.l, %.peel.next.i24.i.i.i.i
  %.010.i25.i.i.i.i = phi i64 [ %i.cu, %.peel.next.i24.i.i.i.i ], [ %i.cn, %bb.l ]
  %i.cu = add i64 %.010.i25.i.i.i.i, -1024        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ck, i8 48, i64 1024, i1 false)
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !61
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !62
  %i.cw = load ptr, ptr %i.by, align 8, !tbaa !63
  tail call void %i.cv(ptr noundef %i.cw, i64 1024, ptr nonnull %i.ck), !inline_history !132
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !61
  %i.cx = icmp ugt i64 %i.cu, 1024
  br i1 %i.cx, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i, !llvm.loop !7

._crit_edge.i17.i.i.i.i:                          ; preds = %.peel.next.i24.i.i.i.i, %bb.l, %bb.j
  %.0.lcssa.i18.i.i.i.i = phi i64 [ %.sroa.7.064.i.i.i.i, %bb.j ], [ %i.cn, %bb.l ], [ %i.cu, %.peel.next.i24.i.i.i.i ] ; 2 uses
  %.lcssa.i19.i.i.i.i = phi ptr [ %i.cg, %bb.j ], [ %i.ck, %bb.l ], [ %i.ck, %.peel.next.i24.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i19.i.i.i.i, i8 48, i64 %.0.lcssa.i18.i.i.i.i, i1 false)
  %i.cy = load ptr, ptr %i.ce, align 8, !tbaa !61
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.0.lcssa.i18.i.i.i.i
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !61
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i: ; preds = %._crit_edge.i17.i.i.i.i, %bb.i
  %.pr.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !72 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !75, !align !76
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40 ; 7 uses
  %i.dg = sub i64 9, %.pr.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dg ; 2 uses
  %i.di = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.di, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !60
  %i.dl = add i64 %i.dk, %.pr.i.i.i.i
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !60
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 1056
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !61 ; 2 uses
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
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !62
  %i.dx = load ptr, ptr %i.df, align 8, !tbaa !63
  tail call void %i.dw(ptr noundef %i.dx, i64 %i.du, ptr nonnull %i.ds), !inline_history !133
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !61
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !62
  %i.dz = load ptr, ptr %i.df, align 8, !tbaa !63
  call void %i.dy(ptr noundef %i.dz, i64 %.pr.i.i.i.i, ptr nonnull %i.dh), !inline_history !134
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.dh, i64 %.pr.i.i.i.i, i1 false)
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !61
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.pr.i.i.i.i
  store ptr %i.eb, ptr %i.dn, align 8, !tbaa !61
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel: ; preds = %bb.o, %bb.n, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.ec = load i64, ptr %2, align 8, !tbaa !74    ; 3 uses
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !73
  %.not.i28.i.i.i.i.peel = icmp ult i64 %i.ec, %i.ed
  br i1 %.not.i28.i.i.i.i.peel, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel, label %.loopexit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel: ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.ee = add nuw i64 %i.ec, 1
  store i64 %i.ee, ptr %2, align 8, !tbaa !74
  %i.ef = load ptr, ptr %i.db, align 8, !tbaa !77
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ec
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !51 ; 6 uses
  %i.ei = urem i32 %i.eh, 10
  %i.ej = trunc nuw nsw i32 %i.ei to i8
  %i.ek = or disjoint i8 %i.ej, 48
  store i8 %i.ek, ptr %i.dc, align 8, !tbaa !26
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
  %3 = udiv i32 %i.eh, 1000000
  %.lhs.trunc7.i.i.i.i.i.peel = trunc nuw nsw i32 %3 to i16
  %i.ew = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i.i.i.i.peel, i64 0
  %i.ex = insertelement <2 x i16> %i.ew, i16 %.lhs.trunc.i.i.i.i.i.peel, i64 1
  %i.ey = urem <2 x i16> %i.ex, splat (i16 10)
  %i.ez = insertelement <8 x i8> poison, i8 %i.ep, i64 0
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.en, i64 1
  %i.fb = shufflevector <4 x i8> %i.eu, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i8> %i.fa, <8 x i8> %i.fb, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.fd = shufflevector <2 x i16> %i.ey, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fe = trunc <8 x i16> %i.fd to <8 x i8>
  %i.ff = shufflevector <8 x i8> %i.fc, <8 x i8> %i.fe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.fg = or disjoint <8 x i8> %i.ff, splat (i8 48)
  store <8 x i8> %i.fg, ptr %i.da, align 8, !tbaa !26
  store i64 9, ptr %i.f, align 8, !tbaa !72
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel
  %i.fh = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !75, !align !76
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !40 ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !60
  %i.fm = add i64 %i.fl, 9
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !60
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 1056
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !61 ; 2 uses
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr
  %.not.i27.i.i.i.i = icmp ugt i64 %i.fs, 9
  br i1 %.not.i27.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 3 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fr, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !62
  %i.fy = load ptr, ptr %i.fj, align 8, !tbaa !63
  call void %i.fx(ptr noundef %i.fy, i64 %i.fv, ptr nonnull %i.ft), !inline_history !133
  store ptr %i.ft, ptr %i.fo, align 8, !tbaa !61
  %i.fz = load ptr, ptr %i.fw, align 8, !tbaa !62
  %i.ga = load ptr, ptr %i.fj, align 8, !tbaa !63
  call void %i.fz(ptr noundef %i.ga, i64 9, ptr nonnull %i.da), !inline_history !134
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fp, ptr noundef nonnull align 8 dereferenceable(9) %i.da, i64 9, i1 false)
  %i.gb = load ptr, ptr %i.fo, align 8, !tbaa !61
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 9
  store ptr %i.gc, ptr %i.fo, align 8, !tbaa !61
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.gd = load i64, ptr %2, align 8, !tbaa !74    ; 3 uses
  %i.ge = load i64, ptr %i.a, align 8, !tbaa !73
  %.not.i28.i.i.i.i = icmp ult i64 %i.gd, %i.ge
  br i1 %.not.i28.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i, label %.loopexit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.gf = add nuw i64 %i.gd, 1
  store i64 %i.gf, ptr %2, align 8, !tbaa !74
  %i.gg = load ptr, ptr %i.db, align 8, !tbaa !77
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gd
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !51 ; 6 uses
  %i.gj = urem i32 %i.gi, 10
  %i.gk = trunc nuw nsw i32 %i.gj to i8
  %i.gl = or disjoint i8 %i.gk, 48
  store i8 %i.gl, ptr %i.dc, align 8, !tbaa !26
  %i.gm = udiv i32 %i.gi, 10000000
  %.lhs.trunc9.i.i.i.i.i = trunc nuw nsw i32 %i.gm to i16
  %i.gn = urem i16 %.lhs.trunc9.i.i.i.i.i, 10
  %i.go = trunc nuw nsw i16 %i.gn to i8
  %i.gp = udiv i32 %i.gi, 100000000
  %.lhs.trunc11.i.i.i.i.i = trunc nuw nsw i32 %i.gp to i8
  %i.gq = urem i8 %.lhs.trunc11.i.i.i.i.i, 10
  %i.gr = insertelement <4 x i32> poison, i32 %i.gi, i64 0
  %i.gs = shufflevector <4 x i32> %i.gr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gt = udiv <4 x i32> %i.gs, <i32 10000, i32 1000, i32 100, i32 10>
  %i.gu = urem <4 x i32> %i.gt, splat (i32 10)
  %i.gv = trunc nuw nsw <4 x i32> %i.gu to <4 x i8>
  %i.gw = udiv i32 %i.gi, 100000
  %.lhs.trunc.i.i.i.i.i = trunc nuw i32 %i.gw to i16
  %4 = udiv i32 %i.gi, 1000000
  %.lhs.trunc7.i.i.i.i.i = trunc nuw nsw i32 %4 to i16
  %i.gx = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i.i.i.i, i64 0
  %i.gy = insertelement <2 x i16> %i.gx, i16 %.lhs.trunc.i.i.i.i.i, i64 1
  %i.gz = urem <2 x i16> %i.gy, splat (i16 10)
  %i.ha = insertelement <8 x i8> poison, i8 %i.gq, i64 0
  %i.hb = insertelement <8 x i8> %i.ha, i8 %i.go, i64 1
  %i.hc = shufflevector <4 x i8> %i.gv, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hd = shufflevector <8 x i8> %i.hb, <8 x i8> %i.hc, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.he = shufflevector <2 x i16> %i.gz, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = trunc <8 x i16> %i.he to <8 x i8>
  %i.hg = shufflevector <8 x i8> %i.hd, <8 x i8> %i.hf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.hh = or disjoint <8 x i8> %i.hg, splat (i8 48)
  store <8 x i8> %i.hh, ptr %i.da, align 8, !tbaa !26
  store i64 9, ptr %i.f, align 8, !tbaa !72
  br label %bb.p, !llvm.loop !135

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.hi = load ptr, ptr %0, align 8, !tbaa !137   ; 5 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  %.val.i.i.i.i = load i64, ptr %i.hj, align 8, !tbaa !38
  %.not.i29.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i: ; preds = %.loopexit
  %i.hk = getelementptr i8, ptr %i.hi, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !25
  %i.hn = and i8 %i.hm, 8
  %.not67.i.i.i.i = icmp eq i8 %i.hn, 0
  br i1 %.not67.i.i.i.i, label %bb.t, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, %.loopexit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !139, !nonnull !75
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !43, !range !78, !noundef !75
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !40 ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !60
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !60
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 1056
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24 ; 4 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !61 ; 2 uses
  %i.ia = icmp eq ptr %i.hx, %i.hz
  br i1 %i.ia, label %.lr.ph.i34.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i

.lr.ph.i34.i.i.i.i:                               ; preds = %bb.s
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 32 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !62
  %i.ie = load ptr, ptr %i.ht, align 8, !tbaa !63
  call void %i.id(ptr noundef %i.ie, i64 1024, ptr nonnull %i.ib), !inline_history !132
  store ptr %i.ib, ptr %i.hy, align 8, !tbaa !61
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i: ; preds = %.lr.ph.i34.i.i.i.i, %bb.s
  %.lcssa.i33.i.i.i.i = phi ptr [ %i.hz, %bb.s ], [ %i.ib, %.lr.ph.i34.i.i.i.i ]
  store i8 46, ptr %.lcssa.i33.i.i.i.i, align 1
  %i.if = load ptr, ptr %i.hy, align 8, !tbaa !61
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store ptr %i.ig, ptr %i.hy, align 8, !tbaa !61
  %.pre77.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !137
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i
  %.pre77.i.i.i.i = phi ptr [ %.pre77.pre.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i ], [ %i.hi, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i ], [ %i.hi, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i ] ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !139, !nonnull !75
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !43, !range !78, !noundef !75
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.il = getelementptr inbounds nuw i8, ptr %.pre77.i.i.i.i, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !40 ; 7 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.pre77.i.i.i.i, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !38 ; 5 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !60
  %i.is = add i64 %i.ir, %i.io
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !60
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 1056 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 8 uses
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !61 ; 4 uses
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = sub i64 %i.iv, %i.ix                    ; 4 uses
  %i.iz = icmp ugt i64 %i.io, %i.iy
  br i1 %i.iz, label %.lr.ph.i44.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.lr.ph.i44.i.i.i.i:                               ; preds = %bb.v
  %i.ja = getelementptr inbounds nuw i8, ptr %i.im, i64 32 ; 8 uses
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.jd = sub nuw i64 %i.io, %i.iy                ; 3 uses
  %.not.peel.i45.i.i.i.i = icmp eq ptr %i.it, %i.iw
  br i1 %.not.peel.i45.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i44.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.iw, i8 48, i64 %i.iy, i1 false)
  %i.je = load ptr, ptr %i.iu, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.iy ; 2 uses
  store ptr %i.jf, ptr %i.iu, align 8, !tbaa !61
  %.pre.i46.i.i.i.i = ptrtoint ptr %i.jf to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i44.i.i.i.i
  %.pre-phi.i47.i.i.i.i = phi i64 [ %.pre.i46.i.i.i.i, %bb.w ], [ %i.iv, %.lr.ph.i44.i.i.i.i ]
  %i.jg = sub i64 %.pre-phi.i47.i.i.i.i, %i.jb
  %i.jh = load ptr, ptr %i.jc, align 8, !tbaa !62
  %i.ji = load ptr, ptr %i.im, align 8, !tbaa !63
  call void %i.jh(ptr noundef %i.ji, i64 %i.jg, ptr nonnull %i.ja), !inline_history !132
  store ptr %i.ja, ptr %i.iu, align 8, !tbaa !61
  %i.jj = icmp ugt i64 %i.jd, 1024
  br i1 %i.jj, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.peel.next.i48.i.i.i.i:                           ; preds = %bb.x, %.peel.next.i48.i.i.i.i
  %.010.i49.i.i.i.i = phi i64 [ %i.jk, %.peel.next.i48.i.i.i.i ], [ %i.jd, %bb.x ]
  %i.jk = add i64 %.010.i49.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ja, i8 48, i64 1024, i1 false)
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !61
  %i.jl = load ptr, ptr %i.jc, align 8, !tbaa !62
  %i.jm = load ptr, ptr %i.im, align 8, !tbaa !63
  call void %i.jl(ptr noundef %i.jm, i64 1024, ptr nonnull %i.ja), !inline_history !132
  store ptr %i.ja, ptr %i.iu, align 8, !tbaa !61
  %i.jn = icmp ugt i64 %i.jk, 1024
  br i1 %i.jn, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i, !llvm.loop !7

._crit_edge.i41.i.i.i.i:                          ; preds = %.peel.next.i48.i.i.i.i, %bb.x, %bb.v
  %.0.lcssa.i42.i.i.i.i = phi i64 [ %i.io, %bb.v ], [ %i.jd, %bb.x ], [ %i.jk, %.peel.next.i48.i.i.i.i ] ; 2 uses
  %.lcssa.i43.i.i.i.i = phi ptr [ %i.iw, %bb.v ], [ %i.ja, %bb.x ], [ %i.ja, %.peel.next.i48.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i43.i.i.i.i, i8 48, i64 %.0.lcssa.i42.i.i.i.i, i1 false)
  %i.jo = load ptr, ptr %i.iu, align 8, !tbaa !61
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.0.lcssa.i42.i.i.i.i
  store ptr %i.jp, ptr %i.iu, align 8, !tbaa !61
  %.pre76.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !137
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i: ; preds = %._crit_edge.i41.i.i.i.i, %bb.u, %bb.t
  %i.jq = phi ptr [ %.pre76.i.i.i.i, %._crit_edge.i41.i.i.i.i ], [ %.pre77.i.i.i.i, %bb.u ], [ %.pre77.i.i.i.i, %bb.t ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !40 ; 7 uses
  %i.jt = icmp eq i64 %.sroa.10.065.i.i.i.i, 0
  br i1 %i.jt, label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEbE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit", label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !60
  %i.jw = add i64 %i.jv, %.sroa.10.065.i.i.i.i
  store i64 %i.jw, ptr %i.ju, align 8, !tbaa !60
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 1056 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 24 ; 8 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !61 ; 4 uses
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.jz, %i.kb                    ; 4 uses
  %i.kd = icmp ugt i64 %.sroa.10.065.i.i.i.i, %i.kc
  br i1 %i.kd, label %.lr.ph.i54.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.lr.ph.i54.i.i.i.i:                               ; preds = %bb.y
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 32 ; 8 uses
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.kh = sub nuw nsw i64 %.sroa.10.065.i.i.i.i, %i.kc ; 3 uses
  %.not.peel.i55.i.i.i.i = icmp eq ptr %i.jx, %i.ka
  br i1 %.not.peel.i55.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i54.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ka, i8 32, i64 %i.kc, i1 false)
  %i.ki = load ptr, ptr %i.jy, align 8, !tbaa !61
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kc ; 2 uses
  store ptr %i.kj, ptr %i.jy, align 8, !tbaa !61
  %.pre.i56.i.i.i.i = ptrtoint ptr %i.kj to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i54.i.i.i.i
  %.pre-phi.i57.i.i.i.i = phi i64 [ %.pre.i56.i.i.i.i, %bb.z ], [ %i.jz, %.lr.ph.i54.i.i.i.i ]
  %i.kk = sub i64 %.pre-phi.i57.i.i.i.i, %i.kf
  %i.kl = load ptr, ptr %i.kg, align 8, !tbaa !62
  %i.km = load ptr, ptr %i.js, align 8, !tbaa !63
  call void %i.kl(ptr noundef %i.km, i64 %i.kk, ptr nonnull %i.ke), !inline_history !132
  store ptr %i.ke, ptr %i.jy, align 8, !tbaa !61
  %i.kn = icmp ugt i64 %i.kh, 1024
  br i1 %i.kn, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.peel.next.i58.i.i.i.i:                           ; preds = %bb.aa, %.peel.next.i58.i.i.i.i
  %.010.i59.i.i.i.i = phi i64 [ %i.ko, %.peel.next.i58.i.i.i.i ], [ %i.kh, %bb.aa ]
  %i.ko = add i64 %.010.i59.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ke, i8 32, i64 1024, i1 false)
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !61
end_hunk_0
begin_hunk_1_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i: ; preds = %.lr.ph.i166.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i
  %.lcssa.i165.i.i.i.i = phi ptr [ %i.nm, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i ], [ %i.no, %.lr.ph.i166.i.i.i.i ]
  store i8 %i.ng, ptr %.lcssa.i165.i.i.i.i, align 1
  %i.ns = load ptr, ptr %i.nl, align 8, !tbaa !61
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store ptr %i.nt, ptr %i.nl, align 8, !tbaa !61
  br i1 %i.bk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i
  %i.nu = load ptr, ptr %0, align 8, !tbaa !161, !nonnull !75, !align !76
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !40 ; 6 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !60
  %i.nz = add i64 %i.ny, 1
  store i64 %i.nz, ptr %i.nx, align 8, !tbaa !60
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 1056
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 24 ; 4 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !61 ; 2 uses
  %i.od = icmp eq ptr %i.oa, %i.oc
  br i1 %i.od, label %.lr.ph.i176.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i

.lr.ph.i176.i.i.i.i:                              ; preds = %bb.am
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nw, i64 32 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !62
  %i.oh = load ptr, ptr %i.nw, align 8, !tbaa !63
  call void %i.og(ptr noundef %i.oh, i64 1024, ptr nonnull %i.oe), !inline_history !156
  store ptr %i.oe, ptr %i.ob, align 8, !tbaa !61
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i: ; preds = %.lr.ph.i176.i.i.i.i, %bb.am
  %.lcssa.i175.i.i.i.i = phi ptr [ %i.oc, %bb.am ], [ %i.oe, %.lr.ph.i176.i.i.i.i ]
  store i8 48, ptr %.lcssa.i175.i.i.i.i, align 1
  %i.oi = load ptr, ptr %i.ob, align 8, !tbaa !61
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  store ptr %i.oj, ptr %i.ob, align 8, !tbaa !61
  br label %bb.an

bb.an:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i
  %i.ok = load ptr, ptr %0, align 8, !tbaa !161, !nonnull !75, !align !76
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !40 ; 7 uses
  %i.on = icmp eq i64 %i.bl, 0
  br i1 %i.on, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !60
  %i.oq = add i64 %i.op, %i.bl
  store i64 %i.oq, ptr %i.oo, align 8, !tbaa !60
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 1056
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 24 ; 4 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !61 ; 2 uses
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
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !62
  %i.pc = load ptr, ptr %i.om, align 8, !tbaa !63
  call void %i.pb(ptr noundef %i.pc, i64 %i.oz, ptr nonnull %i.ox), !inline_history !158
  store ptr %i.ox, ptr %i.os, align 8, !tbaa !61
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !62
  %i.pe = load ptr, ptr %i.om, align 8, !tbaa !63
  call void %i.pd(ptr noundef %i.pe, i64 %i.bl, ptr nonnull %i.a), !inline_history !159
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ot, ptr nonnull align 16 %i.a, i64 %i.bl, i1 false)
  %i.pf = load ptr, ptr %i.os, align 8, !tbaa !61
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.bl
  store ptr %i.pg, ptr %i.os, align 8, !tbaa !61
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.an
  %i.ph = load ptr, ptr %0, align 8, !tbaa !161, !nonnull !75, !align !76
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !40 ; 7 uses
  %i.pk = icmp eq i64 %.sroa.9205.0258.i.i.i.i, 0
  br i1 %i.pk, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 16 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !60
  %i.pn = add i64 %i.pm, %.sroa.9205.0258.i.i.i.i
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !60
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 1056 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 24 ; 8 uses
  %i.pq = ptrtoint ptr %i.po to i64               ; 2 uses
  %i.pr = load ptr, ptr %i.pp, align 8, !tbaa !61 ; 4 uses
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
  %i.pz = load ptr, ptr %i.pp, align 8, !tbaa !61
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pt ; 2 uses
  store ptr %i.qa, ptr %i.pp, align 8, !tbaa !61
  %.pre.i189.i.i.i.i = ptrtoint ptr %i.qa to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i187.i.i.i.i
  %.pre-phi.i190.i.i.i.i = phi i64 [ %.pre.i189.i.i.i.i, %bb.as ], [ %i.pq, %.lr.ph.i187.i.i.i.i ]
  %i.qb = sub i64 %.pre-phi.i190.i.i.i.i, %i.pw
  %i.qc = load ptr, ptr %i.px, align 8, !tbaa !62
  %i.qd = load ptr, ptr %i.pj, align 8, !tbaa !63
  call void %i.qc(ptr noundef %i.qd, i64 %i.qb, ptr nonnull %i.pv), !inline_history !156
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !61
  %i.qe = icmp ugt i64 %i.py, 1024
  br i1 %i.qe, label %.peel.next.i191.i.i.i.i, label %._crit_edge.i184.i.i.i.i

.peel.next.i191.i.i.i.i:                          ; preds = %bb.at, %.peel.next.i191.i.i.i.i
  %.010.i192.i.i.i.i = phi i64 [ %i.qf, %.peel.next.i191.i.i.i.i ], [ %i.py, %bb.at ]
  %i.qf = add i64 %.010.i192.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.pv, i8 32, i64 1024, i1 false)
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !61
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !62
  %i.qh = load ptr, ptr %i.pj, align 8, !tbaa !63
  call void %i.qg(ptr noundef %i.qh, i64 1024, ptr nonnull %i.pv), !inline_history !156
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !61
  %i.qi = icmp ugt i64 %i.qf, 1024
  br i1 %i.qi, label %.peel.next.i191.i.i.i.i, label %._crit_edge.i184.i.i.i.i, !llvm.loop !7

._crit_edge.i184.i.i.i.i:                         ; preds = %.peel.next.i191.i.i.i.i, %bb.at, %bb.ar
  %.0.lcssa.i185.i.i.i.i = phi i64 [ %.sroa.9205.0258.i.i.i.i, %bb.ar ], [ %i.py, %bb.at ], [ %i.qf, %.peel.next.i191.i.i.i.i ] ; 2 uses
  %.lcssa.i186.i.i.i.i = phi ptr [ %i.pr, %bb.ar ], [ %i.pv, %bb.at ], [ %i.pv, %.peel.next.i191.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i186.i.i.i.i, i8 32, i64 %.0.lcssa.i185.i.i.i.i, i1 false)
  %i.qj = load ptr, ptr %i.pp, align 8, !tbaa !61
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.0.lcssa.i185.i.i.i.i
  store ptr %i.qk, ptr %i.pp, align 8, !tbaa !61
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
  %i.a = load i64, ptr %1, align 8, !tbaa !167    ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !73
  %.not.i.i = icmp ult i64 %i.c, %i.e
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = add nuw i64 %i.c, 1
  store i64 %i.g, ptr %0, align 8, !tbaa !74
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.c
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = urem i32 %i.j, 10
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.o, ptr %i.p, align 8, !tbaa !26
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
  %2 = udiv i32 %i.j, 1000000
  %.lhs.trunc7.i.i = trunc nuw nsw i32 %2 to i16
  %i.ab = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i, i64 0
  %i.ac = insertelement <2 x i16> %i.ab, i16 %.lhs.trunc.i.i, i64 1
  %i.ad = urem <2 x i16> %i.ac, splat (i16 10)
  %i.ae = insertelement <8 x i8> poison, i8 %i.u, i64 0
  %i.af = insertelement <8 x i8> %i.ae, i8 %i.s, i64 1
  %i.ag = shufflevector <4 x i8> %i.z, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ah = shufflevector <8 x i8> %i.af, <8 x i8> %i.ag, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.ai = shufflevector <2 x i16> %i.ad, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = trunc <8 x i16> %i.ai to <8 x i8>
  %i.ak = shufflevector <8 x i8> %i.ah, <8 x i8> %i.aj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.al = or disjoint <8 x i8> %i.ak, splat (i8 48)
  store <8 x i8> %i.al, ptr %i.l, align 8, !tbaa !26
  store i64 9, ptr %i.k, align 8, !tbaa !72
  %.pre.i = load i64, ptr %1, align 8, !tbaa !167
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i
  %i.am = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i ], [ %i.a, %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !168 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !168
  %i.ar = add i64 %i.am, -1                       ; 3 uses
  store i64 %i.ar, ptr %1, align 8, !tbaa !167
  %i.as = sext i8 %i.ap to i32
  %.sroa.040.0.extract.trunc = add nsw i32 %i.as, -48 ; 2 uses
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %bb.c, label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"

bb.c:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.au = load i64, ptr %0, align 8, !tbaa !74    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !73
  %.not.i.i14 = icmp ult i64 %i.au, %i.aw
  br i1 %.not.i.i14, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = add nuw i64 %i.au, 1
  store i64 %i.ay, ptr %0, align 8, !tbaa !74
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !77
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.au
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !51 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.be = urem i32 %i.bb, 10
  %i.bf = trunc nuw nsw i32 %i.be to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !26
  %i.bi = udiv i32 %i.bb, 10000000
  %.lhs.trunc9.i.i17 = trunc nuw nsw i32 %i.bi to i16
  %i.bj = urem i16 %.lhs.trunc9.i.i17, 10
  %i.bk = trunc nuw nsw i16 %i.bj to i8
  %i.bl = udiv i32 %i.bb, 100000000
  %.lhs.trunc11.i.i18 = trunc nuw nsw i32 %i.bl to i8
  %i.bm = urem i8 %.lhs.trunc11.i.i18, 10
  %i.bn = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %i.bo = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bp = udiv <4 x i32> %i.bo, <i32 10000, i32 1000, i32 100, i32 10>
  %i.bq = urem <4 x i32> %i.bp, splat (i32 10)
  %i.br = trunc nuw nsw <4 x i32> %i.bq to <4 x i8>
  %i.bs = udiv i32 %i.bb, 100000
  %.lhs.trunc.i.i15 = trunc nuw i32 %i.bs to i16
  %3 = udiv i32 %i.bb, 1000000
  %.lhs.trunc7.i.i16 = trunc nuw nsw i32 %3 to i16
  %i.bt = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i16, i64 0
  %i.bu = insertelement <2 x i16> %i.bt, i16 %.lhs.trunc.i.i15, i64 1
  %i.bv = urem <2 x i16> %i.bu, splat (i16 10)
  %i.bw = insertelement <8 x i8> poison, i8 %i.bm, i64 0
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bk, i64 1
  %i.by = shufflevector <4 x i8> %i.br, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = shufflevector <8 x i8> %i.bx, <8 x i8> %i.by, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.ca = shufflevector <2 x i16> %i.bv, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = trunc <8 x i16> %i.ca to <8 x i8>
  %i.cc = shufflevector <8 x i8> %i.bz, <8 x i8> %i.cb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.cd = or disjoint <8 x i8> %i.cc, splat (i8 48)
  store <8 x i8> %i.cd, ptr %i.bd, align 8, !tbaa !26
  store i64 9, ptr %i.bc, align 8, !tbaa !72
  store i64 9, ptr %1, align 8, !tbaa !32
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !169
  br label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"

"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit": ; preds = %bb.d, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ce = phi i64 [ 9, %bb.d ], [ %i.ar, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.cf = phi ptr [ %i.bd, %bb.d ], [ %i.aq, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !26
  %i.ch = icmp eq i8 %i.cg, 57
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cj, align 8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27: ; preds = %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38", %.lr.ph
  %i.co = phi ptr [ %i.cf, %.lr.ph ], [ %.pre.i3064, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ]
  %.pr = phi i64 [ %i.ce, %.lr.ph ], [ %.pr60, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ]
  %.057 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 2 uses
  store ptr %i.cp, ptr %i.an, align 8, !tbaa !168
  %i.cq = add i64 %.pr, -1                        ; 3 uses
  store i64 %i.cq, ptr %1, align 8, !tbaa !167
  %i.cr = add i64 %.057, 1                        ; 3 uses
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %bb.e, label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38"

bb.e:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27
  %i.ct = load i64, ptr %0, align 8, !tbaa !74    ; 3 uses
  %i.cu = load i64, ptr %i.ci, align 8, !tbaa !73
  %.not.i.i32 = icmp ult i64 %i.ct, %i.cu
  br i1 %.not.i.i32, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.cv = add nuw i64 %i.ct, 1
  store i64 %i.cv, ptr %0, align 8, !tbaa !74
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ct
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !51 ; 6 uses
  %i.cy = urem i32 %i.cx, 10
  %i.cz = trunc nuw nsw i32 %i.cy to i8
  %i.da = or disjoint i8 %i.cz, 48
  store i8 %i.da, ptr %i.cm, align 8, !tbaa !26
  %i.db = udiv i32 %i.cx, 10000000
  %.lhs.trunc9.i.i35 = trunc nuw nsw i32 %i.db to i16
  %i.dc = urem i16 %.lhs.trunc9.i.i35, 10
  %i.dd = trunc nuw nsw i16 %i.dc to i8
  %i.de = udiv i32 %i.cx, 100000000
  %.lhs.trunc11.i.i36 = trunc nuw nsw i32 %i.de to i8
  %i.df = urem i8 %.lhs.trunc11.i.i36, 10
  %i.dg = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.dh = shufflevector <4 x i32> %i.dg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.di = udiv <4 x i32> %i.dh, <i32 10000, i32 1000, i32 100, i32 10>
  %i.dj = urem <4 x i32> %i.di, splat (i32 10)
  %i.dk = trunc nuw nsw <4 x i32> %i.dj to <4 x i8>
  %i.dl = udiv i32 %i.cx, 100000
  %.lhs.trunc.i.i33 = trunc nuw i32 %i.dl to i16
  %4 = udiv i32 %i.cx, 1000000
  %.lhs.trunc7.i.i34 = trunc nuw nsw i32 %4 to i16
  %i.dm = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i34, i64 0
  %i.dn = insertelement <2 x i16> %i.dm, i16 %.lhs.trunc.i.i33, i64 1
  %i.do = urem <2 x i16> %i.dn, splat (i16 10)
  %i.dp = insertelement <8 x i8> poison, i8 %i.df, i64 0
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.dd, i64 1
  %i.dr = shufflevector <4 x i8> %i.dk, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <8 x i8> %i.dq, <8 x i8> %i.dr, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.dt = shufflevector <2 x i16> %i.do, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = trunc <8 x i16> %i.dt to <8 x i8>
  %i.dv = shufflevector <8 x i8> %i.ds, <8 x i8> %i.du, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.dw = or disjoint <8 x i8> %i.dv, splat (i8 48)
  store <8 x i8> %i.dw, ptr %i.cl, align 8, !tbaa !26
  store i64 9, ptr %i.ck, align 8, !tbaa !72
  store i64 9, ptr %1, align 8, !tbaa !32
  store ptr %i.cl, ptr %i.an, align 8, !tbaa !169
  br label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38"

"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38": ; preds = %bb.f, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27
  %.pre.i3064 = phi ptr [ %i.cl, %bb.f ], [ %i.cp, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27 ] ; 2 uses
  %.pr60 = phi i64 [ 9, %bb.f ], [ %i.cq, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27 ]
  %i.dx = load i8, ptr %.pre.i3064, align 1, !tbaa !26
  %i.dy = icmp eq i8 %i.dx, 57
  br i1 %i.dy, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27, label %._crit_edge, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.e, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38", %bb.c, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"
  %.0.lcssa = phi i64 [ 0, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit" ], [ 0, %bb.c ], [ %i.cr, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ], [ %i.cr, %bb.e ] ; 2 uses
  %i.dz = icmp eq i32 %.sroa.040.0.extract.trunc, 9
  br i1 %i.dz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ea = add i64 %.0.lcssa, 1
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.h:                                             ; preds = %._crit_edge
  %i.eb = zext i32 %.sroa.040.0.extract.trunc to i64
  %i.ec = or disjoint i64 %i.eb, 4294967296
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.b, %bb.g, %bb.h
  %.sroa.2.1 = phi i64 [ 0, %bb.b ], [ %i.ec, %bb.h ], [ 0, %bb.g ]
  %.sroa.448.sroa.2.1 = phi i64 [ 0, %bb.b ], [ %.0.lcssa, %bb.h ], [ %i.ea, %bb.g ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.2.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.448.sroa.2.1, 1
  ret { i64, i64 } %.fca.1.insert
}

declare noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %.sroa.04.0.copyload.i.i.i = load i8, ptr %1, align 8, !tbaa !26 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !32 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !54 ; 16 uses
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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51
  %i.h = zext i32 %i.g to i64
  %i.i = mul nuw nsw i64 %i.h, 10
  %i.j = add nuw nsw i64 %i.i, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %i.f, align 4, !tbaa !51
  %i.l = lshr i64 %i.j, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa237 = phi i64 [ %i.ah, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ], [ %i.l, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.m = trunc nuw nsw i64 %.lcssa237 to i8
  %i.n = add i64 %.lcssa339345351.i.i.i.i, -1     ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 10
  %i.x = add nuw nsw i64 %i.w, %.0610.i.i.i.i.i.i ; 2 uses
  %i.y = trunc i64 %i.x to i32
  store i32 %i.y, ptr %i.t, align 4, !tbaa !51
  %i.z = lshr i64 %i.x, 32
  %i.aa = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 10
  %i.af = add nuw nsw i64 %i.ae, %i.z             ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !51
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
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aq = zext i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 10
  %i.as = add nuw nsw i64 %i.ar, %.0610.i5.i.i.i.i.i.epil.init ; 2 uses
  %i.at = trunc i64 %i.as to i32
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !51
  %i.au = lshr i64 %i.as, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.epil.preheader
  %.lcssa238 = phi i64 [ %i.bp, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ], [ %i.au, %.preheader.i3.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.av = add i64 %i.ak, -1                       ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
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
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !51
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul nuw nsw i64 %i.bd, 10
  %i.bf = add nuw nsw i64 %i.be, %.0610.i5.i.i.i.i.i ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !51
end_hunk_1
