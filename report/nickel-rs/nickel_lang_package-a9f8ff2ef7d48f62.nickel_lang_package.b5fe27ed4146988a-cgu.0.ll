Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN4bstr5impls4bstr63_$LT$impl$u20$core..fmt..Debug$u20$for$u20$bstr..bstr..BStr$GT$3fmt17hc03a9bfd3845c0b1E":.split
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit91

bb.ab:                                            ; preds = %bb.u
  store i8 92, ptr %i.g, align 4, !alias.scope !48070
  store i8 39, ptr %.sroa.466.0..sroa_idx.i, align 1, !alias.scope !48070
  store i64 0, ptr %.sroa.567.0..sroa_idx.i, align 2, !alias.scope !48070
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit91

bb.ac:                                            ; preds = %bb.u
  %i.ca = icmp samesign ugt i32 %i.bg, 767
  br i1 %i.ca, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cb = call noundef zeroext i1 @_ZN4core7unicode12unicode_data15grapheme_extend11lookup_slow17hc5a2b5f97729ee7fE(i32 noundef range(i32 0, 1114112) %i.bg), !noalias !48070
  br i1 %i.cb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cc = call noundef zeroext i1 @_ZN4core7unicode9printable12is_printable17hcc91c4d96430c044E(i32 noundef range(i32 0, 1114112) %i.bg), !noalias !48070
  br i1 %i.cc, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cd = or i32 %i.bg, 1
  %i.ce = call range(i32 11, 32) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.cf = lshr i32 %i.ce, 2
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = add nsw i64 %i.cg, -2                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.d, i8 0, i64 3, i1 false), !noalias !48070
  %i.ci = lshr i32 %i.bg, 20
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @1186, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !range !48071, !noalias !48072, !noundef !41
  store i8 %i.cl, ptr %i.y, align 1, !noalias !48070
  %i.cm = lshr i32 %i.bg, 16
  %i.cn = and i32 %i.cm, 15
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @1186, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !range !48071, !noalias !48072, !noundef !41
  store i8 %i.cq, ptr %i.z, align 1, !noalias !48070
  %i.cr = lshr i32 %i.bg, 12
  %i.cs = and i32 %i.cr, 15
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @1186, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !range !48071, !noalias !48072, !noundef !41
  store i8 %i.cv, ptr %i.aa, align 1, !noalias !48070
  %i.cw = lshr i32 %i.bg, 8
  %i.cx = and i32 %i.cw, 15
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @1186, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !range !48071, !noalias !48072, !noundef !41
  store i8 %i.da, ptr %i.ab, align 1, !noalias !48070
  %i.db = lshr i32 %i.bg, 4
  %i.dc = and i32 %i.db, 15
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @1186, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !range !48071, !noalias !48072, !noundef !41
  store i8 %i.df, ptr %i.ac, align 1, !noalias !48070
  %i.dg = and i32 %i.bg, 15
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @1186, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !range !48071, !noalias !48072, !noundef !41
  store i8 %i.dj, ptr %i.ad, align 1, !noalias !48070
  store i8 125, ptr %i.ae, align 1, !noalias !48070
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ch
  store i8 92, ptr %i.dk, align 1, !noalias !48070
  %i.dl = getelementptr i8, ptr %i.d, i64 %i.cg   ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 -1
  store i8 117, ptr %i.dm, align 1, !noalias !48070
  store i8 123, ptr %i.dl, align 1, !noalias !48070
  %i.dn = trunc nuw nsw i64 %i.ch to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(10) %i.d, i64 10, i1 false)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit91

bb.ag:                                            ; preds = %bb.ae
  %i.do = or i32 %i.bg, 1
  %i.dp = call range(i32 11, 32) i32 @llvm.ctlz.i32(i32 %i.do, i1 true)
  %i.dq = lshr i32 %i.dp, 2
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.c, i8 0, i64 3, i1 false), !noalias !48070
  %i.dt = lshr i32 %i.bg, 20
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @1186, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !range !48071, !noalias !48073, !noundef !41
  store i8 %i.dw, ptr %i.r, align 1, !noalias !48070
  %i.dx = lshr i32 %i.bg, 16
  %i.dy = and i32 %i.dx, 15
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @1186, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !range !48071, !noalias !48073, !noundef !41
  store i8 %i.eb, ptr %i.s, align 1, !noalias !48070
  %i.ec = lshr i32 %i.bg, 12
  %i.ed = and i32 %i.ec, 15
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @1186, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !range !48071, !noalias !48073, !noundef !41
  store i8 %i.eg, ptr %i.t, align 1, !noalias !48070
  %i.eh = lshr i32 %i.bg, 8
  %i.ei = and i32 %i.eh, 15
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @1186, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !range !48071, !noalias !48073, !noundef !41
  store i8 %i.el, ptr %i.u, align 1, !noalias !48070
  %i.em = lshr i32 %i.bg, 4
  %i.en = and i32 %i.em, 15
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @1186, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !range !48071, !noalias !48073, !noundef !41
  store i8 %i.eq, ptr %i.v, align 1, !noalias !48070
  %i.er = and i32 %i.bg, 15
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @1186, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !range !48071, !noalias !48073, !noundef !41
  store i8 %i.eu, ptr %i.w, align 1, !noalias !48070
  store i8 125, ptr %i.x, align 1, !noalias !48070
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ds
  store i8 92, ptr %i.ev, align 1, !noalias !48070
  %i.ew = getelementptr i8, ptr %i.c, i64 %i.dr   ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -1
  store i8 117, ptr %i.ex, align 1, !noalias !48070
  store i8 123, ptr %i.ew, align 1, !noalias !48070
  %i.ey = trunc nuw nsw i64 %i.ds to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(10) %i.c, i64 10, i1 false)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit91

bb.ah:                                            ; preds = %bb.ae
  store i32 %i.bg, ptr %i.g, align 4, !alias.scope !48070
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit91

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit91: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.sink197 = phi i8 [ -128, %bb.ah ], [ %i.ey, %bb.ag ], [ %i.dn, %bb.af ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ]
  %.sink196 = phi i8 [ -127, %bb.ah ], [ 10, %bb.ag ], [ 10, %bb.af ], [ 2, %bb.ab ], [ 2, %bb.aa ], [ 2, %bb.z ], [ 2, %bb.y ], [ 2, %bb.x ], [ 2, %bb.w ], [ 2, %bb.v ]
  store i8 %.sink197, ptr %.sroa.669.0..sroa_idx.i, align 4, !alias.scope !48070
  store i8 %.sink196, ptr %.sroa.770.0..sroa_idx.i, align 1, !alias.scope !48070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.h, align 8
  store ptr @"_ZN62_$LT$core..char..EscapeDebug$u20$as$u20$core..fmt..Display$GT$3fmt17h0657e5f18eb8b8ecE", ptr %.sroa.429.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48074
  store ptr @0, ptr %i.b, align 8
  store i64 1, ptr %.sroa.531.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.732.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.833.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1034.0..sroa_idx, align 8
  %i.ez = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !48074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.ez, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit62, label %.loopexit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit96: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fa = trunc nuw nsw i32 %i.bg to i8
  %i.fb = call i64 @_ZN4core5ascii14escape_default17h5af667f5683e3474E(i8 noundef %i.fa)
  store i64 %i.fb, ptr %i.m, align 8
  store ptr %i.m, ptr %i.n, align 8
  store ptr @"_ZN65_$LT$core..ascii..EscapeDefault$u20$as$u20$core..fmt..Display$GT$3fmt17h64f37ffc70c1935fE", ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48075
  store ptr @0, ptr %i.a, align 8
  store i64 1, ptr %.sroa.513.0..sroa_idx, align 8
  store ptr %i.n, ptr %.sroa.714.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.815.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1016.0..sroa_idx, align 8
  %i.fc = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !48075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.fc, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit62, label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4bstr5impls4bstr65_$LT$impl$u20$core..fmt..Display$u20$for$u20$bstr..bstr..BStr$GT$3fmt17h9b2cfa3b68a0e34bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !41 ; 2 uses
  %i.c = lshr i32 %i.b, 29
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable34 [
    i32 0, label %bb.e
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.b
  ]

default.unreachable34:                            ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN4bstr5impls4bstr65_$LT$impl$u20$core..fmt..Display$u20$for$u20$bstr..bstr..BStr$GT$3fmt10write_bstr17h7eedd10414b4107aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  br i1 %i.e, label %bb.r, label %bb.s

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ 2, %bb.d ], [ 1, %bb.c ], [ 0, %bb.a ]
  %i.f = and i32 %i.b, 134217728
  %3 = icmp eq i32 %i.f, 0
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i64                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48085)
  %i.g = icmp eq i64 %1, 0
  br i1 %i.g, label %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread
  %.sroa.0.027.i = phi i64 [ %i.ai, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread ], [ 0, %bb.e ] ; 2 uses
  %.sroa.0.0626.i = phi ptr [ %i.ah, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread ], [ %0, %bb.e ] ; 3 uses
  %.sroa.3.025.i = phi i64 [ %i.ag, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread ], [ %1, %bb.e ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48086)
  %i.h = load i8, ptr %.sroa.0.0626.i, align 1, !alias.scope !48087, !noalias !48088, !noundef !41
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread, label %.preheader.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %_ZN4bstr4utf811decode_step17h4223f74dc6dff3e7E.exit.i.i.i
  %i.j = zext i8 %i.ac to i64
  %exitcond.not.i.i.i = icmp eq i64 %i.ad, %.sroa.3.025.i
  br i1 %exitcond.not.i.i.i, label %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i, %.preheader.i.i.i
  %.sroa.03.0.i.i.i57 = phi i64 [ %i.ad, %.preheader.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.017.0.i.i.i56 = phi i32 [ %storemerge.i.i.i.i, %.preheader.i.i.i ], [ 0, %.lr.ph.i ]
  %.sroa.015.0.i.i.i55 = phi i64 [ %i.j, %.preheader.i.i.i ], [ 12, %.lr.ph.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0626.i, i64 %.sroa.03.0.i.i.i57
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !48087, !noalias !48088, !noundef !41 ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @1118, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !48089, !noundef !41 ; 2 uses
  %i.p = zext i8 %i.l to i32                      ; 2 uses
  %i.q = icmp eq i64 %.sroa.015.0.i.i.i55, 12
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i.preheader
  %i.r = and i32 %i.p, 63
  %i.s = shl i32 %.sroa.017.0.i.i.i56, 6
  %i.t = or disjoint i32 %i.r, %i.s
  br label %bb.h

bb.g:                                             ; preds = %.preheader.i.i.i.preheader
  %i.u = and i8 %i.o, 31
  %i.v = zext nneg i8 %i.u to i32
  %i.w = lshr i32 255, %i.v
  %i.x = and i32 %i.w, %i.p
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge.i.i.i.i = phi i32 [ %i.t, %bb.f ], [ %i.x, %bb.g ]
  %i.y = zext i8 %i.o to i64
  %i.z = add nuw nsw i64 %.sroa.015.0.i.i.i55, %i.y ; 3 uses
  %i.aa = icmp samesign ult i64 %i.z, 108
  br i1 %i.aa, label %_ZN4bstr4utf811decode_step17h4223f74dc6dff3e7E.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.z, i64 noundef 108, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1121) #73, !noalias !48089
  unreachable

_ZN4bstr4utf811decode_step17h4223f74dc6dff3e7E.exit.i.i.i: ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr @1120, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !48089, !noundef !41 ; 2 uses
  %i.ad = add i64 %.sroa.03.0.i.i.i57, 1          ; 4 uses
  switch i8 %i.ac, label %.preheader.i.i.i [
    i8 12, label %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.i.i
    i8 0, label %.thread15.i.i
  ]

.thread15.i.i:                                    ; preds = %_ZN4bstr4utf811decode_step17h4223f74dc6dff3e7E.exit.i.i.i
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.03.0.i.i.i57, i64 1)
  br label %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i

_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.i.i: ; preds = %_ZN4bstr4utf811decode_step17h4223f74dc6dff3e7E.exit.i.i.i
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit.loopexit, label %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i

_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i: ; preds = %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.i.i, %.thread15.i.i
  %.sroa.6.1.i1217.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %.thread15.i.i ], [ %i.ad, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.i.i ] ; 3 uses
  %i.af = icmp ugt i64 %.sroa.6.1.i1217.i.i, %.sroa.3.025.i
  br i1 %i.af, label %bb.j, label %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread, !prof !48090

bb.j:                                             ; preds = %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.6.1.i1217.i.i, i64 noundef %.sroa.3.025.i, i64 noundef %.sroa.3.025.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2063) #73, !noalias !48091
  unreachable

_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread: ; preds = %.preheader.i.i.i, %.lr.ph.i, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i
  %.sroa.6.1.i1217.i.i8 = phi i64 [ %.sroa.6.1.i1217.i.i, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i ], [ 1, %.lr.ph.i ], [ %.sroa.3.025.i, %.preheader.i.i.i ] ; 2 uses
  %i.ag = sub nuw i64 %.sroa.3.025.i, %.sroa.6.1.i1217.i.i8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0626.i, i64 %.sroa.6.1.i1217.i.i8
  %i.ai = add i64 %.sroa.0.027.i, 1               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit.loopexit, label %.lr.ph.i

_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit.loopexit: ; preds = %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.i.i
  %.sroa.0.0.lcssa.i.ph = phi i64 [ %.sroa.0.027.i, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.i.i ], [ %i.ai, %_ZN4bstr4utf86decode17h7f99ffbbb78708c3E.exit.thread.i.i.thread ]
  %i.aj = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %.sroa.0.0.lcssa.i.ph)
  br label %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit

_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit.loopexit, %bb.e
  %.sroa.0.0.lcssa.i = phi i64 [ %6, %bb.e ], [ %i.aj, %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit.loopexit ]
  %7 = select i1 %3, i64 0, i64 %.sroa.0.0.lcssa.i ; 4 uses
  switch i64 %.sroa.01.0, label %default.unreachable34 [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

bb.k:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit
  %i.ak = tail call noundef zeroext i1 @"_ZN4bstr5impls4bstr65_$LT$impl$u20$core..fmt..Display$u20$for$u20$bstr..bstr..BStr$GT$3fmt10write_bstr17h7eedd10414b4107aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  br i1 %i.ak, label %bb.r, label %bb.n

bb.l:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit
  %i.al = tail call noundef zeroext i1 @"_ZN4bstr5impls4bstr65_$LT$impl$u20$core..fmt..Display$u20$for$u20$bstr..bstr..BStr$GT$3fmt10write_pads17h9709873164af30d1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %7)
  br i1 %i.al, label %bb.r, label %bb.o

bb.m:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17hc3fb92405efa4999E.exit
  %i.am = lshr i64 %7, 1                          ; 2 uses
  %i.an = and i64 %7, 1
  %.sroa.04.0 = add nuw nsw i64 %i.am, %i.an
  %i.ao = tail call noundef zeroext i1 @"_ZN4bstr5impls4bstr65_$LT$impl$u20$core..fmt..Display$u20$for$u20$bstr..bstr..BStr$GT$3fmt10write_pads17h9709873164af30d1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.am)
  br i1 %i.ao, label %bb.r, label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ap = tail call noundef zeroext i1 @"_ZN4bstr5impls4bstr65_$LT$impl$u20$core..fmt..Display$u20$for$u20$bstr..bstr..BStr$GT$3fmt10write_pads17h9709873164af30d1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %7)
  br i1 %i.ap, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.l
  %i.aq = tail call noundef zeroext i1 @"_ZN4bstr5impls4bstr65_$LT$impl$u20$core..fmt..Display$u20$for$u20$bstr..bstr..BStr$GT$3fmt10write_bstr17h7eedd10414b4107aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  br i1 %i.aq, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ar = tail call noundef zeroext i1 @"_ZN4bstr5impls4bstr65_$LT$impl$u20$core..fmt..Display$u20$for$u20$bstr..bstr..BStr$GT$3fmt10write_bstr17h7eedd10414b4107aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = tail call noundef zeroext i1 @"_ZN4bstr5impls4bstr65_$LT$impl$u20$core..fmt..Display$u20$for$u20$bstr..bstr..BStr$GT$3fmt10write_pads17h9709873164af30d1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.04.0)
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.b, %bb.m, %bb.p, %bb.q, %bb.o, %bb.l, %bb.k, %bb.n
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.o, %bb.n, %bb.q, %bb.r
  %.sroa.0.4 = phi i1 [ true, %bb.r ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.b ]
  ret i1 %.sroa.0.4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4bstr5impls7bstring69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$bstr..bstring..BString$GT$3fmt17h2ef166273067ca08E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !41
  %.val = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.e, align 8
  %i.f = tail call fastcc noundef zeroext i1 @"_ZN4bstr5impls4bstr63_$LT$impl$u20$core..fmt..Debug$u20$for$u20$bstr..bstr..BStr$GT$3fmt17hc03a9bfd3845c0b1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr %.val, ptr %.val1)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h6c6a42330d76a63bE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !41 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hb83082f1ca683b9aE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !41 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h14a8daad5d2c4a1aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !41 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17h46cb53dc08ca4d34E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !41 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h023c39d63d6c8d1aE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !48097
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !48097
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !48097
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17h51fde5910e22882dE":bb.a
  br i1 %i.ea, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.i.i.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit127.i.i"

.split118.i.i:                                    ; preds = %bb.ac
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn6.i.ph180.i.i, i64 16
  %i.ec = load i8, ptr %i.eb, align 8, !range !107, !noalias !86667, !noundef !41
  %i.ed = icmp eq i8 %i.ec, 35
  br i1 %i.ed, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.i.i.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit127.i.i"

.split117.i.i:                                    ; preds = %bb.ac
  %i.ee = getelementptr i8, ptr %.pn6.i.ph180.i.i, i64 -1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %i.ef = getelementptr i8, ptr %.pn6.i.ph180.i.i, i64 15
  %i.eg = load i8, ptr %i.ef, align 8, !range !107, !noalias !86667, !noundef !41
  %i.eh = icmp eq i8 %i.eg, 35
  br i1 %i.eh, label %bb.ae, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit127.i.i"

bb.ad:                                            ; preds = %bb.ac
  %i.ei = icmp ult ptr %.pn6.i.ph180.i.i, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.ei)
  %.mask.i.i = and i64 %i.dy, -4294967296
  %i.ej = icmp eq i64 %.mask.i.i, 150323855360
  br i1 %i.ej, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.i.i.backedge", label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit127.i.i"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.i.i.backedge": ; preds = %bb.ad, %.split118.i.i, %.split.i.i
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.i.i", !llvm.loop !86654

bb.ae:                                            ; preds = %.split117.i.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !noalias !86688 ; 5 uses
  %i.ek = getelementptr i8, ptr %.pn6.i.ph180.i.i, i64 7
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ek, align 8, !noalias !86688, !nonnull !41, !align !42, !noundef !41 ; 4 uses
  %i.el = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !invariant.load !41, !noalias !86688 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  invoke void %i.el(ptr noundef nonnull %.val.i.i.i.i.i.i.i)
          to label %bb.ag unwind label %.loopexit145.i.i, !noalias !86688

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !43, !invariant.load !41, !noalias !86688 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !range !72, !invariant.load !41, !noalias !86688 ; 2 uses
  %i.eq = icmp ult i64 %i.ep, -9223372036854775807
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = icmp eq i64 %i.en, 0
  br i1 %i.er, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.i.i.sink.split", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i", !llvm.loop !86654

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) %i.ep) #67, !noalias !86688
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit.peel.i.i.sink.split", !llvm.loop !86654

.loopexit145.i.i:                                 ; preds = %bb.af
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp.i.i:                           ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit145.i.i
  %.lcssa133.i.i = phi ptr [ %i.ee, %.loopexit145.i.i ], [ %i.cq, %.loopexit.split-lp.i.i ]
  %.val.i.i.i.i.i.lcssa.i.i = phi ptr [ %.val.i.i.i.i.i.i.i, %.loopexit145.i.i ], [ %.val.i.i.i.i.i.peel.i.i, %.loopexit.split-lp.i.i ]
  %.val1.i.i.i.i.i.lcssa.i.i = phi ptr [ %.val1.i.i.i.i.i.i.i, %.loopexit145.i.i ], [ %.val1.i.i.i.i.i.peel.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit145.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.lcssa.i.i, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !43, !invariant.load !41, !noalias !86688 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.lcssa.i.i, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !range !72, !invariant.load !41, !noalias !86688 ; 2 uses
  %i.ew = icmp ult i64 %i.ev, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp eq i64 %i.et, 0
  br i1 %i.ex, label %.body.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i": ; preds = %bb.ah
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.lcssa.i.i, i64 noundef %i.et, i64 noundef range(i64 1, -9223372036854775807) %i.ev) #67, !noalias !86688
  br label %.body.i.i

.body.i.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i", %bb.ah
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa133.i.i, i64 noundef 24, i64 noundef 8) #67, !noalias !86688
  br label %common.resume.i.i

.thread.i.i:                                      ; preds = %_ZN3std2io4Read8read_buf17h8f8b4158e2ae6512E.exit.peel.i.i, %_ZN3std2io4Read8read_buf17h8f8b4158e2ae6512E.exit.i.i
  store i64 %i.bc, ptr %i.l, align 8, !alias.scope !86667, !noalias !86668
  br label %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit

bb.ai:                                            ; preds = %"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE.exit.peel.i.i"
  %i.ey = add i64 %i.bc, %i.dx                    ; 3 uses
  store i64 %i.ey, ptr %i.l, align 8, !alias.scope !86667, !noalias !86668
  %i.ez = icmp eq ptr %.sink230.i.i, null
  br i1 %i.ez, label %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = sub nuw i64 %.sroa.0.0.i81.i.i, %i.dx
  %i.fb = icmp uge i64 %i.bw, %.sroa.010.4.i.i
  %i.fc = icmp eq i64 %.sroa.0.0.i81.i.i, %i.dx
  %or.cond2.i.i = and i1 %i.fb, %i.fc
  %i.fd = shl i64 %.sroa.010.4.i.i, 1
  %.inv.i.i = icmp sgt i64 %.sroa.010.4.i.i, -1
  %.sroa.055.0.i.i = select i1 %.inv.i.i, i64 %i.fd, i64 -1, !prof !48
  %.sroa.010.5.i.i = select i1 %or.cond2.i.i, i64 %.sroa.055.0.i.i, i64 %.sroa.010.4.i.i
  br label %bb.j

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit.i.i": ; preds = %bb.l
  %i.fe = ptrtoint ptr %i.bh to i64
  br label %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread121

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit127.i.i": ; preds = %.split.peel.i.i, %bb.x, %.split118.peel.i.i, %.split117.peel.i.i, %.split117.i.i, %bb.ad, %.split118.i.i, %.split.i.i
  %.pre-phi.i12 = phi i64 [ %i.dy, %bb.ad ], [ %i.dy, %.split.i.i ], [ %i.dy, %.split118.i.i ], [ %i.co, %.split117.peel.i.i ], [ %i.dy, %.split117.i.i ], [ %i.co, %.split.peel.i.i ], [ %i.co, %bb.x ], [ %i.co, %.split118.peel.i.i ]
  store i64 %i.bc, ptr %i.l, align 8, !alias.scope !86667, !noalias !86668
  br label %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread121

_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit: ; preds = %bb.ai, %.thread.i.i, %bb.n
  %.sink = phi i64 [ %i.bk, %bb.n ], [ %i.bc, %.thread.i.i ], [ %i.ey, %bb.ai ]
  %i.ff = sub nsw i64 %.sink, %i.ah
  br label %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread121

_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread121: ; preds = %bb.o, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit127.i.i", %bb.q, %bb.i, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit
  %i.fg = phi i64 [ 0, %bb.i ], [ %i.ff, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit ], [ %i.av, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread ], [ 163208757251, %bb.q ], [ %i.fe, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit.i.i" ], [ %.pre-phi.i12, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit127.i.i" ], [ 163208757251, %bb.o ]
  %.sroa.0.2.i.i119 = phi i64 [ 0, %bb.i ], [ 0, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit ], [ 1, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread ], [ 1, %bb.q ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit.i.i" ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit127.i.i" ], [ 1, %bb.o ]
  %i.fh = phi i64 [ %i.j, %bb.i ], [ %i.j, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit ], [ 0, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread ], [ 0, %bb.q ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit127.i.i" ], [ 0, %bb.o ]
  %spec.select = add i64 %i.fh, %i.fg
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread": ; preds = %bb.e, %bb.b, %bb.c, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread121
  %.sroa.4.0 = phi i64 [ %spec.select, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread121 ], [ 163208757251, %bb.c ], [ 163208757251, %bb.b ], [ 163208757251, %bb.e ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.2.i.i119, %_ZN3std2io4Read11read_to_end17h2652fcf24178f496E.exit.thread121 ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.e ]
  %i.fi = inttoptr i64 %.sroa.4.0 to ptr
  %i.fj = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.fk = insertvalue { i64, ptr } %i.fj, ptr %i.fi, 1
  ret { i64, ptr } %i.fk
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$13read_vectored17hb2be5338babf5406E"(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58904be8ffd2fc57E.exit", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.c = and i64 %2, 3                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 4, i64 %i.c
  %n.vec = sub i64 %2, %i.e                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi33 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %wide.vec = load <4 x i64>, ptr %i.h, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec34 = load <4 x i64>, ptr %i.i, align 8
  %strided.vec35 = shufflevector <4 x i64> %wide.vec34, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.j = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.k = add <2 x i64> %strided.vec35, %vec.phi33 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !86702

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader42

.preheader.preheader42:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader42, %.preheader
  %.sroa.09.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.09.0.i.ph, %.preheader.preheader42 ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %.preheader ], [ %.sroa.07.0.i.ph, %.preheader.preheader42 ]
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.09.0.i
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val.i = load i64, ptr %i.o, align 8, !noundef !41
  %i.p = add i64 %.val.i, %.sroa.07.0.i           ; 2 uses
  %i.q = add nuw i64 %.sroa.09.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %2
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58904be8ffd2fc57E.exit", label %.preheader, !llvm.loop !86703

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58904be8ffd2fc57E.exit": ; preds = %.preheader, %bb.a
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.p, %.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !41 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %3 = load i64, ptr %i.u, align 8, !noundef !41  ; 3 uses
  %4 = icmp ne i64 %i.t, %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %5, align 8                ; 6 uses
  %.not = icmp ult i64 %.sroa.04.0.i, %i.v
  %or.cond = select i1 %4, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58904be8ffd2fc57E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86738)
  %.not.i = icmp ult i64 %i.t, %3
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !86738, !noalias !86739 ; 4 uses
  br i1 %.not.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !86738, !noalias !86739, !noundef !41 ; 2 uses
  %i.z = sub nuw i64 %i.v, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.z, i1 false), !noalias !86740
  %i.ab = tail call fastcc { i64, ptr } @"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.w, ptr noalias noundef nonnull align 1 %.pre.i, i64 noundef %i.v), !noalias !86741 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 4 uses
  %i.af = trunc nuw i64 %i.ac to i1
  br i1 %i.af, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp ult i64 %i.v, %i.ae
  br i1 %.not.i.i.i.i, label %bb.e, label %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i", !prof !44

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i": ; preds = %bb.d
  store i64 0, ptr %i.s, align 8, !alias.scope !86738, !noalias !86739
  store i64 %i.ae, ptr %i.u, align 8, !alias.scope !86738, !noalias !86739
  store i64 %i.v, ptr %i.x, align 8, !alias.scope !86738, !noalias !86739
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread24

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1048, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1050) #73, !noalias !86741
  unreachable

"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i": ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !86738, !noalias !86739
  store i64 %i.v, ptr %i.x, align 8, !alias.scope !86738, !noalias !86739
  %.not4.i = icmp eq ptr %i.ad, null
  br i1 %.not4.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread24, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit: ; preds = %bb.b
  %i.ag = sub nuw i64 %3, %i.t                    ; 2 uses
  %i.ah = icmp eq ptr %.pre.i, null
  br i1 %i.ah, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread24

bb.f:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58904be8ffd2fc57E.exit"
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86743)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.aj = icmp eq i64 %2, 0
  br i1 %i.aj, label %_ZN3std2io4Read13read_vectored17h87c7cab4b8da4793E.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZN3std2io4Read13read_vectored17h87c7cab4b8da4793E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.am = phi ptr [ %i.ak, %bb.g ], [ %1, %bb.f ] ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !86744, !noalias !86745, !noundef !41 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.val.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !86746, !noalias !86747, !noundef !41
  br label %_ZN3std2io4Read13read_vectored17h87c7cab4b8da4793E.exit

_ZN3std2io4Read13read_vectored17h87c7cab4b8da4793E.exit: ; preds = %bb.g, %bb.f, %bb.h
  %.sroa.3.0.i.i.i = phi i64 [ %i.ao, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.sroa.02.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i) ]
  %i.ap = tail call fastcc { i64, ptr } @"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.ai, ptr noalias noundef nonnull align 1 %.sroa.02.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i), !noalias !86744
  br label %bb.k

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit
  %.sroa.610.013 = phi i64 [ %i.ag, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit ], [ %i.ae, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i" ]
  %i.aq = inttoptr i64 %.sroa.610.013 to ptr
  %i.ar = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aq, 1
  br label %bb.k

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread24: ; preds = %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i", %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit
  %i.as = phi i64 [ %i.ag, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit ], [ %i.ae, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i" ]
  %i.at = phi i64 [ %i.t, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.thread.i" ], [ 0, %"_ZN3std2io5impls57_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$mut$u20$R$GT$8read_buf17he4575041c42866ffE.exit.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86748)
  %i.au = icmp eq i64 %2, 0
  br i1 %i.au, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %.lr.ph31

.lr.ph31:                                         ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread24
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.at
  br label %bb.i

bb.i:                                             ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %.lr.ph31
  %.sroa.01.0.i30 = phi i64 [ 0, %.lr.ph31 ], [ %i.be, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ]
  %.sroa.0.0.i29 = phi ptr [ %1, %.lr.ph31 ], [ %i.ay, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.aw = phi ptr [ %i.av, %.lr.ph31 ], [ %i.bf, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.ax = phi i64 [ %i.as, %.lr.ph31 ], [ %i.bg, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 16 ; 2 uses
  %i.az = load ptr, ptr %.sroa.0.0.i29, align 8, !alias.scope !86748, !noalias !86749, !noundef !41 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !86748, !noalias !86749, !noundef !41 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86750)
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ax, i64 %i.bb) ; 5 uses
  %i.bc = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %i.bc, label %bb.j, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i"

bb.j:                                             ; preds = %bb.i
  %i.bd = load i8, ptr %i.aw, align 1, !noalias !86751, !noundef !41
  store i8 %i.bd, ptr %i.az, align 1, !alias.scope !86750, !noalias !86752
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i": ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %i.aw, i64 %.sroa.0.0.i.i.i, i1 false), !alias.scope !86753, !noalias !86754
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i.i", %bb.j
  %i.be = add i64 %.sroa.0.0.i.i.i, %.sroa.01.0.i30 ; 2 uses
  %.not.i7 = icmp ule i64 %i.ax, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.0.0.i.i.i
  %i.bg = sub nuw i64 %i.ax, %.sroa.0.0.i.i.i
  %i.bh = icmp eq ptr %i.ay, %i.a
  %or.cond.a = select i1 %.not.i7, i1 true, i1 %i.bh
  br i1 %or.cond.a, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %bb.i

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit": ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread24
  %.sroa.01.1.i = phi i64 [ 0, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread24 ], [ %i.be, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 2 uses
  %i.bi = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bj = load i64, ptr %i.s, align 8, !noundef !41
  %i.bk = add i64 %i.bj, %.sroa.01.1.i
  %i.bl = load i64, ptr %i.u, align 8, !noundef !41
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bk)
  store i64 %.sroa.0.0.i8, ptr %i.s, align 8
  %i.bm = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bi, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", %_ZN3std2io4Read13read_vectored17h87c7cab4b8da4793E.exit
  %.merged = phi { i64, ptr } [ %i.ap, %_ZN3std2io4Read13read_vectored17h87c7cab4b8da4793E.exit ], [ %i.ar, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17hb46d9114953ff4cfE.exit.thread ], [ %i.bm, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit" ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_buf_exact17hf1385c3388e64b85E"(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !41 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !41 ; 4 uses
  %i.f = sub i64 %i.c, %i.e                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86769)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !86769, !noalias !86770, !noundef !41 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !86769, !noalias !86770, !noundef !41
  %i.k = sub nuw i64 %i.j, %i.h
  %.not.i.not = icmp ugt i64 %i.f, %i.k
  br i1 %.not.i.not, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit.thread: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !alias.scope !86769, !noalias !86770, !nonnull !41, !noundef !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load ptr, ptr %1, align 8, !noalias !86771, !nonnull !41, !align !46, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.m, i64 %i.f, i1 false), !alias.scope !86772, !noalias !86773
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !86771, !noundef !41
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.q)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.p, align 8, !noalias !86771
  store i64 %i.c, ptr %i.d, align 8, !noalias !86771
  %i.r = add i64 %i.h, %i.f
  store i64 %i.r, ptr %i.g, align 8, !alias.scope !86769, !noalias !86770
  br label %_ZN3std2io22default_read_buf_exact17h5e7e8b0e667c2563E.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86774)
  %.not33.i = icmp eq i64 %i.c, %i.e
  br i1 %.not33.i, label %_ZN3std2io22default_read_buf_exact17h5e7e8b0e667c2563E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit, %.backedge.i
  %i.s = phi i64 [ %i.ah, %.backedge.i ], [ %i.e, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit ]
  %i.t = tail call noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$8read_buf17he0e16b7e1926b0e5E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 10 uses
  %.not10.i = icmp eq ptr %i.t, null
  br i1 %.not10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.d
    i64 0, label %.split31.i
    i64 1, label %.split30.i
  ], !prof !106

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = load i64, ptr %i.d, align 8, !alias.scope !86774, !noalias !86775, !noundef !41 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.s
  br i1 %i.x, label %_ZN3std2io22default_read_buf_exact17h5e7e8b0e667c2563E.exit, label %.backedge.i

.split.i:                                         ; preds = %bb.b
  %.mask32.i = and i64 %i.u, -4294967296
  %i.y = icmp eq i64 %.mask32.i, 17179869184
  br i1 %i.y, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h5e7e8b0e667c2563E.exit

.split31.i:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !107, !noalias !86774, !noundef !41
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h5e7e8b0e667c2563E.exit

.split30.i:                                       ; preds = %bb.b
  %i.ac = getelementptr i8, ptr %i.t, i64 15
  %i.ad = load i8, ptr %i.ac, align 8, !range !107, !noalias !86774, !noundef !41
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h5e7e8b0e667c2563E.exit

bb.d:                                             ; preds = %bb.b
  %i.af = icmp ult ptr %i.t, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.af)
  %.mask.i = and i64 %i.u, -4294967296
  %i.ag = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.ag, label %bb.e, label %_ZN3std2io22default_read_buf_exact17h5e7e8b0e667c2563E.exit

bb.e:                                             ; preds = %bb.d, %.split30.i, %.split31.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86776
  store ptr %i.t, ptr %i.a, align 8, !noalias !86776
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !86774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !86776
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !86774, !noalias !86775
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.e, %bb.c
  %i.ah = phi i64 [ %.pre.i, %bb.e ], [ %i.w, %bb.c ] ; 2 uses
  %i.ai = load i64, ptr %i.b, align 8, !alias.scope !86774, !noalias !86775, !noundef !41
  %.not.i1 = icmp eq i64 %i.ai, %i.ah
  br i1 %.not.i1, label %_ZN3std2io22default_read_buf_exact17h5e7e8b0e667c2563E.exit, label %.lr.ph.i

_ZN3std2io22default_read_buf_exact17h5e7e8b0e667c2563E.exit: ; preds = %.backedge.i, %bb.d, %.split30.i, %.split31.i, %.split.i, %bb.c, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit.thread ], [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17hebd7293d479357c5E.exit ], [ null, %.backedge.i ], [ %i.t, %bb.d ], [ %i.t, %.split.i ], [ %i.t, %.split30.i ], [ @1060, %bb.c ], [ %i.t, %.split31.i ]
  ret ptr %.sroa.0.0
}

end_hunk_1
