Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/float_conversion?download=true
inline.NumInlined: 622
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !62
  tail call void %i.ba(ptr noundef %i.bb, i64 1024, ptr nonnull %i.ap), !inline_history !124
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !60
  %i.bc = icmp ugt i64 %i.az, 1024
  br i1 %i.bc, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !8

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.g, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.y, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.as, %bb.g ], [ %i.az, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.ap, %bb.g ], [ %i.ap, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i, i8 32, i64 %.0.lcssa.i.i.i.i.i, i1 false)
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !60
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !129 ; 2 uses
  %.pre74.i.i.i.i = load i8, ptr %.pre.i.i.i.i, align 8, !tbaa !40
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bf = phi i8 [ %.pre74.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.10.065.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.y, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.7.064.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ 0, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.not1.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not1.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !59
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1056
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !60 ; 2 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i10.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !61
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !62
  tail call void %i.bs(ptr noundef %i.bt, i64 1024, ptr nonnull %i.bq), !inline_history !124
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !60
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i: ; preds = %.lr.ph.i10.i.i.i.i, %bb.h
  %.lcssa.i9.i.i.i.i = phi ptr [ %i.bo, %bb.h ], [ %i.bq, %.lr.ph.i10.i.i.i.i ]
  store i8 %i.bf, ptr %.lcssa.i9.i.i.i.i, align 1
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !60
  %.pre75.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !129
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bw = phi ptr [ %.pre75.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i ], [ %i.bg, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43 ; 7 uses
  %i.bz = icmp eq i64 %.sroa.7.064.i.i.i.i, 0
  br i1 %i.bz, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i, label %bb.j

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
  tail call void %i.cr(ptr noundef %i.cs, i64 %i.cq, ptr nonnull %i.ck), !inline_history !124
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
  tail call void %i.cv(ptr noundef %i.cw, i64 1024, ptr nonnull %i.ck), !inline_history !124
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !60
  %i.cx = icmp ugt i64 %i.cu, 1024
  br i1 %i.cx, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i, !llvm.loop !8

._crit_edge.i17.i.i.i.i:                          ; preds = %.peel.next.i24.i.i.i.i, %bb.l, %bb.j
  %.0.lcssa.i18.i.i.i.i = phi i64 [ %.sroa.7.064.i.i.i.i, %bb.j ], [ %i.cn, %bb.l ], [ %i.cu, %.peel.next.i24.i.i.i.i ] ; 2 uses
  %.lcssa.i19.i.i.i.i = phi ptr [ %i.cg, %bb.j ], [ %i.ck, %bb.l ], [ %i.ck, %.peel.next.i24.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i19.i.i.i.i, i8 48, i64 %.0.lcssa.i18.i.i.i.i, i1 false)
  %i.cy = load ptr, ptr %i.ce, align 8, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.0.lcssa.i18.i.i.i.i
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !60
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i: ; preds = %._crit_edge.i17.i.i.i.i, %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !129, !nonnull !82, !align !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !43 ; 7 uses
  %i.dg = sub i64 9, %i.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dg ; 2 uses
  %i.di = icmp eq i64 %i.g, 0
  br i1 %i.di, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !59
  %i.dl = add i64 %i.dk, %i.g
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !59
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 1056
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !60 ; 2 uses
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq
  %.not.i27.i.i.i.i.peel = icmp ult i64 %i.g, %i.dr
  br i1 %.not.i27.i.i.i.i.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 3 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !61
  %i.dx = load ptr, ptr %i.df, align 8, !tbaa !62
  tail call void %i.dw(ptr noundef %i.dx, i64 %i.du, ptr nonnull %i.ds), !inline_history !125
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !60
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !61
  %i.dz = load ptr, ptr %i.df, align 8, !tbaa !62
  call void %i.dy(ptr noundef %i.dz, i64 %i.g, ptr nonnull %i.dh), !inline_history !126
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.dh, i64 %i.g, i1 false)
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !60
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.g
  store ptr %i.eb, ptr %i.dn, align 8, !tbaa !60
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel: ; preds = %bb.o, %bb.n, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.ec = load i64, ptr %2, align 8, !tbaa !81    ; 3 uses
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !80
  %.not.i28.i.i.i.i.peel = icmp ult i64 %i.ec, %i.ed
  br i1 %.not.i28.i.i.i.i.peel, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel, label %.loopexit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.ee = add nuw i64 %i.ec, 1
  store i64 %i.ee, ptr %2, align 8, !tbaa !81
  %i.ef = load ptr, ptr %i.db, align 8, !tbaa !79
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ec
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !30 ; 6 uses
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
  %3 = udiv i32 %i.eh, 1000000
  %.lhs.trunc.i.i.i.i.i.peel = trunc nuw i32 %i.ev to i16
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
  store i64 9, ptr %i.f, align 8, !tbaa !78
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel
  %i.fh = load ptr, ptr %0, align 8, !tbaa !129, !nonnull !82, !align !83
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43 ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !59
  %i.fm = add i64 %i.fl, 9
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !59
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 1056
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !60 ; 2 uses
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
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !61
  %i.fy = load ptr, ptr %i.fj, align 8, !tbaa !62
  call void %i.fx(ptr noundef %i.fy, i64 %i.fv, ptr nonnull %i.ft), !inline_history !125
  store ptr %i.ft, ptr %i.fo, align 8, !tbaa !60
  %i.fz = load ptr, ptr %i.fw, align 8, !tbaa !61
  %i.ga = load ptr, ptr %i.fj, align 8, !tbaa !62
  call void %i.fz(ptr noundef %i.ga, i64 9, ptr nonnull %i.da), !inline_history !126
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fp, ptr noundef nonnull align 8 dereferenceable(9) %i.da, i64 9, i1 false)
  %i.gb = load ptr, ptr %i.fo, align 8, !tbaa !60
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 9
  store ptr %i.gc, ptr %i.fo, align 8, !tbaa !60
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.gd = load i64, ptr %2, align 8, !tbaa !81    ; 3 uses
  %i.ge = load i64, ptr %i.a, align 8, !tbaa !80
  %.not.i28.i.i.i.i = icmp ult i64 %i.gd, %i.ge
  br i1 %.not.i28.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i, label %.loopexit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.gf = add nuw i64 %i.gd, 1
  store i64 %i.gf, ptr %2, align 8, !tbaa !81
  %i.gg = load ptr, ptr %i.db, align 8, !tbaa !79
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gd
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !30 ; 6 uses
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
  %4 = udiv i32 %i.gi, 1000000
  %.lhs.trunc.i.i.i.i.i = trunc nuw i32 %i.gw to i16
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
  store i64 9, ptr %i.f, align 8, !tbaa !78
  br label %bb.p, !llvm.loop !127

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.hi = load ptr, ptr %0, align 8, !tbaa !129, !nonnull !82, !align !83 ; 4 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  %.val.i.i.i.i = load i64, ptr %i.hj, align 8, !tbaa !41
  %.not.i29.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i: ; preds = %.loopexit
  %i.hk = getelementptr i8, ptr %i.hi, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !25
  %i.hn = and i8 %i.hm, 8
  %.not67.i.i.i.i = icmp eq i8 %i.hn, 0
  br i1 %.not67.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, %.loopexit
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !43 ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !59
  %i.hs = add i64 %i.hr, 1
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !59
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 1056
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 24 ; 4 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !60 ; 2 uses
  %i.hw = icmp eq ptr %i.ht, %i.hv
  br i1 %i.hw, label %.lr.ph.i34.i.i.i.i, label %bb.s

.lr.ph.i34.i.i.i.i:                               ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !61
  %i.ia = load ptr, ptr %i.hp, align 8, !tbaa !62
  call void %i.hz(ptr noundef %i.ia, i64 1024, ptr nonnull %i.hx), !inline_history !124
  store ptr %i.hx, ptr %i.hu, align 8, !tbaa !60
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph.i34.i.i.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i
  %.lcssa.i33.i.i.i.i = phi ptr [ %i.hv, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i ], [ %i.hx, %.lr.ph.i34.i.i.i.i ]
  store i8 46, ptr %.lcssa.i33.i.i.i.i, align 1
  %i.ib = load ptr, ptr %i.hu, align 8, !tbaa !60
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store ptr %i.ic, ptr %i.hu, align 8, !tbaa !60
  %.pre76.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !129 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre76.i.i.i.i, i64 8
  %.pre77.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !41 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.pre76.i.i.i.i, i64 24
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !43 ; 8 uses
  %i.if = icmp eq i64 %.pre77.i.i.i.i, 0
  br i1 %i.if, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !59
  %i.ii = add i64 %i.ih, %.pre77.i.i.i.i
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !59
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 1056 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 8 uses
  %i.il = ptrtoint ptr %i.ij to i64               ; 2 uses
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !60 ; 4 uses
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = sub i64 %i.il, %i.in                    ; 4 uses
  %i.ip = icmp ugt i64 %.pre77.i.i.i.i, %i.io
  br i1 %i.ip, label %.lr.ph.i44.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.lr.ph.i44.i.i.i.i:                               ; preds = %bb.t
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 32 ; 8 uses
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.it = sub nuw i64 %.pre77.i.i.i.i, %i.io      ; 3 uses
  %.not.peel.i45.i.i.i.i = icmp eq ptr %i.ij, %i.im
  br i1 %.not.peel.i45.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i44.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.im, i8 48, i64 %i.io, i1 false)
  %i.iu = load ptr, ptr %i.ik, align 8, !tbaa !60
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.io ; 2 uses
  store ptr %i.iv, ptr %i.ik, align 8, !tbaa !60
  %.pre.i46.i.i.i.i = ptrtoint ptr %i.iv to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i44.i.i.i.i
  %.pre-phi.i47.i.i.i.i = phi i64 [ %.pre.i46.i.i.i.i, %bb.u ], [ %i.il, %.lr.ph.i44.i.i.i.i ]
  %i.iw = sub i64 %.pre-phi.i47.i.i.i.i, %i.ir
  %i.ix = load ptr, ptr %i.is, align 8, !tbaa !61
  %i.iy = load ptr, ptr %i.ie, align 8, !tbaa !62
  call void %i.ix(ptr noundef %i.iy, i64 %i.iw, ptr nonnull %i.iq), !inline_history !124
  store ptr %i.iq, ptr %i.ik, align 8, !tbaa !60
  %i.iz = icmp ugt i64 %i.it, 1024
  br i1 %i.iz, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.peel.next.i48.i.i.i.i:                           ; preds = %bb.v, %.peel.next.i48.i.i.i.i
  %.010.i49.i.i.i.i = phi i64 [ %i.ja, %.peel.next.i48.i.i.i.i ], [ %i.it, %bb.v ]
  %i.ja = add i64 %.010.i49.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.iq, i8 48, i64 1024, i1 false)
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !60
  %i.jb = load ptr, ptr %i.is, align 8, !tbaa !61
  %i.jc = load ptr, ptr %i.ie, align 8, !tbaa !62
  call void %i.jb(ptr noundef %i.jc, i64 1024, ptr nonnull %i.iq), !inline_history !124
  store ptr %i.iq, ptr %i.ik, align 8, !tbaa !60
  %i.jd = icmp ugt i64 %i.ja, 1024
  br i1 %i.jd, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i, !llvm.loop !8

._crit_edge.i41.i.i.i.i:                          ; preds = %.peel.next.i48.i.i.i.i, %bb.v, %bb.t
  %.0.lcssa.i42.i.i.i.i = phi i64 [ %.pre77.i.i.i.i, %bb.t ], [ %i.it, %bb.v ], [ %i.ja, %.peel.next.i48.i.i.i.i ] ; 2 uses
  %.lcssa.i43.i.i.i.i = phi ptr [ %i.im, %bb.t ], [ %i.iq, %bb.v ], [ %i.iq, %.peel.next.i48.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i43.i.i.i.i, i8 48, i64 %.0.lcssa.i42.i.i.i.i, i1 false)
  %i.je = load ptr, ptr %i.ik, align 8, !tbaa !60
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %.0.lcssa.i42.i.i.i.i
  store ptr %i.jf, ptr %i.ik, align 8, !tbaa !60
  %.pre78.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !129
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i: ; preds = %._crit_edge.i41.i.i.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i
  %.sink113.i.i.i.i = phi ptr [ %.pre78.i.i.i.i, %._crit_edge.i41.i.i.i.i ], [ %i.hi, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.sink113.i.i.i.i, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !43
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i, %bb.s
  %i.ji = phi ptr [ %i.ie, %bb.s ], [ %i.jh, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i ] ; 7 uses
  %i.jj = icmp eq i64 %.sroa.10.065.i.i.i.i, 0
  br i1 %i.jj, label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %bb.w

bb.w:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !59
  %i.jm = add i64 %i.jl, %.sroa.10.065.i.i.i.i
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !59
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 1056 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 24 ; 8 uses
  %i.jp = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !60 ; 4 uses
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = sub i64 %i.jp, %i.jr                    ; 4 uses
  %i.jt = icmp ugt i64 %.sroa.10.065.i.i.i.i, %i.js
  br i1 %i.jt, label %.lr.ph.i54.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.lr.ph.i54.i.i.i.i:                               ; preds = %bb.w
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 8 uses
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.jx = sub nuw nsw i64 %.sroa.10.065.i.i.i.i, %i.js ; 3 uses
  %.not.peel.i55.i.i.i.i = icmp eq ptr %i.jn, %i.jq
  br i1 %.not.peel.i55.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i54.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.jq, i8 32, i64 %i.js, i1 false)
  %i.jy = load ptr, ptr %i.jo, align 8, !tbaa !60
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.js ; 2 uses
  store ptr %i.jz, ptr %i.jo, align 8, !tbaa !60
  %.pre.i56.i.i.i.i = ptrtoint ptr %i.jz to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i54.i.i.i.i
  %.pre-phi.i57.i.i.i.i = phi i64 [ %.pre.i56.i.i.i.i, %bb.x ], [ %i.jp, %.lr.ph.i54.i.i.i.i ]
  %i.ka = sub i64 %.pre-phi.i57.i.i.i.i, %i.jv
  %i.kb = load ptr, ptr %i.jw, align 8, !tbaa !61
  %i.kc = load ptr, ptr %i.ji, align 8, !tbaa !62
  call void %i.kb(ptr noundef %i.kc, i64 %i.ka, ptr nonnull %i.ju), !inline_history !124
  store ptr %i.ju, ptr %i.jo, align 8, !tbaa !60
  %i.kd = icmp ugt i64 %i.jx, 1024
  br i1 %i.kd, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.peel.next.i58.i.i.i.i:                           ; preds = %bb.y, %.peel.next.i58.i.i.i.i
  %.010.i59.i.i.i.i = phi i64 [ %i.ke, %.peel.next.i58.i.i.i.i ], [ %i.jx, %bb.y ]
  %i.ke = add i64 %.010.i59.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ju, i8 32, i64 1024, i1 false)
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !60
  %i.kf = load ptr, ptr %i.jw, align 8, !tbaa !61
  %i.kg = load ptr, ptr %i.ji, align 8, !tbaa !62
  call void %i.kf(ptr noundef %i.kg, i64 1024, ptr nonnull %i.ju), !inline_history !124
  store ptr %i.ju, ptr %i.jo, align 8, !tbaa !60
  %i.kh = icmp ugt i64 %i.ke, 1024
  br i1 %i.kh, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i, !llvm.loop !8

._crit_edge.i51.i.i.i.i:                          ; preds = %.peel.next.i58.i.i.i.i, %bb.y, %bb.w
  %.0.lcssa.i52.i.i.i.i = phi i64 [ %.sroa.10.065.i.i.i.i, %bb.w ], [ %i.jx, %bb.y ], [ %i.ke, %.peel.next.i58.i.i.i.i ] ; 2 uses
  %.lcssa.i53.i.i.i.i = phi ptr [ %i.jq, %bb.w ], [ %i.ju, %bb.y ], [ %i.ju, %.peel.next.i58.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i53.i.i.i.i, i8 32, i64 %.0.lcssa.i52.i.i.i.i, i1 false)
  %i.ki = load ptr, ptr %i.jo, align 8, !tbaa !60
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.0.lcssa.i52.i.i.i.i
  store ptr %i.kj, ptr %i.jo, align 8, !tbaa !60
end_hunk_0
