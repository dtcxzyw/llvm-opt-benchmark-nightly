Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.00?download=true
inline.NumInlined: 734
inline.NumDeleted: 227
begin_hunk_0_@_RNvMs1h_NtCsa9sSWSfjDbm_4jiff4spanNtB6_5Nudge18relative_invariant:bb.a

bb.ax:                                            ; preds = %bb.av
  %i.ep = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.eh, i64 -1) ; 2 uses
  %i.eq = extractvalue { i64, i1 } %i.ep, 1
  br i1 %i.eq, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit, label %bb.ay, !prof !6

bb.ay:                                            ; preds = %bb.ax
  %i.er = extractvalue { i64, i1 } %i.ep, 0
  %i.es = add nsw i32 %i.ej, 1000000000
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay, %bb.av
  %.sroa.016.1.i = phi i64 [ %i.ev, %bb.ba ], [ %i.er, %bb.ay ], [ %i.eh, %bb.av ] ; 7 uses
  %.sroa.02.1.i = phi i32 [ %i.ew, %bb.ba ], [ %i.es, %bb.ay ], [ %i.ej, %bb.av ] ; 6 uses
  %i.et = icmp eq i64 %.sroa.016.1.i, 0
  %i.eu = icmp eq i32 %.sroa.02.1.i, 0
  %or.cond.i60 = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond.i60, label %bb.bf, label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.ev = extractvalue { i64, i1 } %i.en, 0
  %i.ew = add nsw i32 %i.ej, -1000000000
  br label %bb.az

bb.bb:                                            ; preds = %bb.az
  %i.ex = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i, i64 0)
  %i.ey = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i, i32 0)
  %.not.i = icmp eq i64 %i.ex, %i.ey
  br i1 %.not.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ez = icmp slt i64 %.sroa.016.1.i, 0
  br i1 %i.ez, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fa = add nsw i64 %.sroa.016.1.i, -1
  %i.fb = add nsw i32 %.sroa.02.1.i, 1000000000
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.fc = add nsw i64 %.sroa.016.1.i, 1
  %i.fd = add nsw i32 %.sroa.02.1.i, -1000000000
  br label %bb.bf

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit: ; preds = %bb.ax, %bb.aw, %bb.as, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit59
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #24
  unreachable

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bb, %bb.az, %bb.at
  %.sroa.4134.0.ph = phi i64 [ %.sroa.016.1.i, %bb.bb ], [ %i.fa, %bb.bd ], [ %i.fc, %bb.be ], [ %.sroa.016.1.i, %bb.az ], [ %i.eh, %bb.at ]
  %.sroa.6135.0.ph = phi i32 [ %.sroa.02.1.i, %bb.bb ], [ %i.fb, %bb.bd ], [ %i.fd, %bb.be ], [ %.sroa.02.1.i, %bb.az ], [ 0, %bb.at ]
  %i.fe = sdiv i64 %i.s, 86400
  %.neg = sdiv i64 %i.m, -86400
  %i.ff = add nsw i64 %i.fe, %.neg
  %.sroa.08.0 = call i8 @llvm.scmp.i8.i64(i64 %i.ff, i64 0)
  %i.fg = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %.sroa.4134.0.ph) ; 2 uses
  %i.fh = extractvalue { i64, i1 } %i.fg, 0       ; 4 uses
  %i.fi = extractvalue { i64, i1 } %i.fg, 1
  br i1 %i.fi, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit69, label %bb.bg, !prof !6

bb.bg:                                            ; preds = %bb.bf
  %i.fj = add i32 %.sroa.6135.0.ph, %3            ; 6 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.bs, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fl = icmp sgt i32 %i.fj, 999999999
  br i1 %i.fl, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fm = icmp slt i32 %i.fj, -999999999
  br i1 %i.fm, label %bb.bk, label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.fn = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fh, i64 1) ; 2 uses
  %i.fo = extractvalue { i64, i1 } %i.fn, 1
  br i1 %i.fo, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit69, label %bb.bn, !prof !6

bb.bk:                                            ; preds = %bb.bi
  %i.fp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fh, i64 -1) ; 2 uses
  %i.fq = extractvalue { i64, i1 } %i.fp, 1
  br i1 %i.fq, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit69, label %bb.bl, !prof !6

bb.bl:                                            ; preds = %bb.bk
  %i.fr = extractvalue { i64, i1 } %i.fp, 0
  %i.fs = add nsw i32 %i.fj, 1000000000
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %bb.bl, %bb.bi
  %.sroa.016.1.i62 = phi i64 [ %i.fv, %bb.bn ], [ %i.fr, %bb.bl ], [ %i.fh, %bb.bi ] ; 7 uses
  %.sroa.02.1.i63 = phi i32 [ %i.fw, %bb.bn ], [ %i.fs, %bb.bl ], [ %i.fj, %bb.bi ] ; 6 uses
  %i.ft = icmp eq i64 %.sroa.016.1.i62, 0
  %i.fu = icmp eq i32 %.sroa.02.1.i63, 0
  %or.cond.i64 = select i1 %i.ft, i1 true, i1 %i.fu
  br i1 %or.cond.i64, label %bb.bs, label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.fv = extractvalue { i64, i1 } %i.fn, 0
  %i.fw = add nsw i32 %i.fj, -1000000000
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bm
  %i.fx = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i62, i64 0)
  %i.fy = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i63, i32 0)
  %.not.i65 = icmp eq i64 %i.fx, %i.fy
  br i1 %.not.i65, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fz = icmp slt i64 %.sroa.016.1.i62, 0
  br i1 %i.fz, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ga = add nsw i64 %.sroa.016.1.i62, -1
  %i.gb = add nsw i32 %.sroa.02.1.i63, 1000000000
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.gc = add nsw i64 %.sroa.016.1.i62, 1
  %i.gd = add nsw i32 %.sroa.02.1.i63, -1000000000
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bm, %bb.bg
  %.sroa.4138.0.ph = phi i64 [ %.sroa.016.1.i62, %bb.bo ], [ %i.ga, %bb.bq ], [ %i.gc, %bb.br ], [ %.sroa.016.1.i62, %bb.bm ], [ %i.fh, %bb.bg ]
  %.sroa.6139.0.ph = phi i32 [ %.sroa.02.1.i63, %bb.bo ], [ %i.gb, %bb.bq ], [ %i.gd, %bb.br ], [ %.sroa.02.1.i63, %bb.bm ], [ 0, %bb.bg ]
  %i.ge = icmp eq i8 %.sroa.08.0, %i.k
  %i.gf = zext i1 %i.ge to i8
  store i64 %.sroa.096.0159, ptr %0, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.697.0157, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0156, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.09.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.1098.0155, ptr %.sroa.09.sroa.6.0..sroa_idx, align 8
  %.sroa.09.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.1299.0154, ptr %.sroa.09.sroa.7.0..sroa_idx, align 8
  %.sroa.09.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.015.0.i, ptr %.sroa.09.sroa.8.0..sroa_idx, align 8
  %.sroa.09.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.016.0.i, ptr %.sroa.09.sroa.9.0..sroa_idx, align 4
  %.sroa.09.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.414.sroa.9.0.copyload, ptr %.sroa.09.sroa.10.0..sroa_idx, align 8
  %.sroa.09.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.018.0.i, ptr %.sroa.09.sroa.11.0..sroa_idx, align 8
  %.sroa.09.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.012.0.i, ptr %.sroa.09.sroa.12.0..sroa_idx, align 2
  %.sroa.09.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.15.0.ph, ptr %.sroa.09.sroa.13.0..sroa_idx, align 4
  %.sroa.09.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i24 %.sroa.616.sroa.0.0.copyload, ptr %.sroa.09.sroa.14.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.4138.0.ph, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.6139.0.ph, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.bt

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit69: ; preds = %bb.bk, %bb.bj, %bb.bf
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
  unreachable

bb.bt:                                            ; preds = %bb.d, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtB8_4span5ErrorE0Ba_.exit, %bb.bs
  %.sink = phi i8 [ 2, %bb.d ], [ 2, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtB8_4span5ErrorE0Ba_.exit ], [ %i.gf, %bb.bs ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink, ptr %i.gg, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1h_NtCsa9sSWSfjDbm_4jiff4spanNtB6_5Nudge19relative_zoned_time(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %3, i8 noundef range(i8 0, 9) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [64 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [64 x i8], align 8                ; 12 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [64 x i8], align 8                ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %.val66 = load i8, ptr %i.o, align 4, !range !18, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.0321.0.copyload = load i64, ptr %1, align 8 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.20.0.copyload = load i64, ptr %.sroa.20.0..sroa_idx, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 8 ; 3 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.31.0.copyload = load i32, ptr %.sroa.31.0..sroa_idx, align 4 ; 3 uses
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.34.sroa.11.0.extract.trunc = load i32, ptr %5, align 4 ; 2 uses
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.40.0.copyload = load i16, ptr %.sroa.40.0..sroa_idx, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.44.0.copyload = load i16, ptr %.sroa.44.0..sroa_idx, align 2 ; 3 uses
  %.sroa.47.0.copyload = load i32, ptr %i.o, align 4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.p = icmp eq i16 %.sroa.44.0.copyload, 0
  %i.q = icmp eq i32 %.sroa.28.0.copyload, 0
  %or.cond.i.i = select i1 %i.p, i1 %i.q, i1 false
  %i.r = icmp eq i32 %.sroa.31.0.copyload, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.r, i1 false ; 2 uses
  %6 = icmp eq i32 %.sroa.34.sroa.11.0.extract.trunc, 0 ; 3 uses
  %or.cond11.i.i = select i1 %or.cond5.i.i, i1 %6, i1 false
  %i.s = icmp eq i64 %.sroa.0321.0.copyload, 0    ; 3 uses
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 %i.s, i1 false
  %i.t = icmp eq i64 %.sroa.12.0.copyload, 0      ; 3 uses
  %or.cond16.i.i = select i1 %or.cond13.i.i, i1 %i.t, i1 false
  %i.u = icmp eq i64 %.sroa.16.0.copyload, 0      ; 3 uses
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.u, i1 false
  %i.v = icmp eq i64 %.sroa.20.0.copyload, 0      ; 3 uses
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.v, i1 false
  %i.w = icmp eq i64 %.sroa.24.0.copyload, 0      ; 2 uses
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.w, i1 false
  %i.x = and i32 %.sroa.47.0.copyload, 255
  %.sroa.24636.60.insert.ext = select i1 %or.cond4.i.i, i32 0, i32 %i.x ; 2 uses
  %i.y = icmp eq i32 %.sroa.24636.60.insert.ext, 254
  %i.z = trunc i32 %.sroa.47.0.copyload to i8     ; 3 uses
  br i1 %i.y, label %bb.a, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit137, !prof !6

bb.a:                                             ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !999
  %i.aa = inttoptr i64 %.sroa.0321.0.copyload to ptr
  store ptr %i.aa, ptr %i.c, align 8, !noalias !999
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 31, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %bb.e unwind label %bb.b, !noalias !1000

bb.b:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1001), !noalias !998
  call void @llvm.experimental.noalias.scope.decl(metadata !1002), !noalias !998
  %i.ac = load ptr, ptr %i.c, align 8, !alias.scope !1003, !noalias !999, !noundef !5 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !1004
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.d, label %common.resume

bb.d:                                             ; preds = %bb.c
  fence acquire, !noalias !998
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %common.resume unwind label %bb.f, !noalias !1000

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !1000
  unreachable

common.resume:                                    ; preds = %.body, %bb.bc, %bb.bd, %bb.be, %bb.b, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.fd, %bb.bc ], [ %i.ab, %bb.b ], [ %eh.lpad-body, %.body ], [ %i.fd, %bb.bd ], [ %i.fd, %bb.be ], [ %i.ab, %bb.d ], [ %i.ab, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit137: ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit
  %i.ah = select i1 %6, i1 %i.s, i1 false
  %i.ai = select i1 %i.ah, i1 %i.t, i1 false
  %i.aj = select i1 %i.ai, i1 %i.u, i1 false
  %i.ak = select i1 %i.aj, i1 %i.v, i1 false
  %i.al = select i1 %i.ak, i1 %i.w, i1 false
  %.sroa.16.60.insert.ext.i = select i1 %i.al, i32 0, i32 %.sroa.24636.60.insert.ext
  %.sroa.47.61.extract.shift438 = and i32 %.sroa.47.0.copyload, -256
  %.sroa.16.60.insert.insert.i = or disjoint i32 %.sroa.16.60.insert.ext.i, %.sroa.47.61.extract.shift438
  %i.am = and i16 %.sroa.40.0.copyload, -961
  store i64 %.sroa.0321.0.copyload, ptr %i.n, align 8, !alias.scope !1005
  %.sroa.12.0..sroa_idx327 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx327, align 8, !alias.scope !1005
  %.sroa.16.0..sroa_idx337 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx337, align 8, !alias.scope !1005
  %.sroa.20.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.20.0.copyload, ptr %.sroa.20.0..sroa_idx347, align 8, !alias.scope !1005
  %.sroa.24.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.24.0.copyload, ptr %.sroa.24.0..sroa_idx357, align 8, !alias.scope !1005
  %.sroa.28.0..sroa_idx367 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 0, ptr %.sroa.28.0..sroa_idx367, align 8, !alias.scope !1005
  %.sroa.31.0..sroa_idx377 = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  store i32 0, ptr %.sroa.31.0..sroa_idx377, align 4, !alias.scope !1005
  %.sroa.34.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.34.sroa.11.0.insert.ext = zext i32 %.sroa.34.sroa.11.0.extract.trunc to i64
  %.sroa.34.sroa.11.0.insert.shift = shl nuw i64 %.sroa.34.sroa.11.0.insert.ext, 32
  store i64 %.sroa.34.sroa.11.0.insert.shift, ptr %.sroa.34.0..sroa_idx387, align 8, !alias.scope !1005
  %.sroa.40.0..sroa_idx399 = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i16 %i.am, ptr %.sroa.40.0..sroa_idx399, align 8, !alias.scope !1005
  %.sroa.44.0..sroa_idx409 = getelementptr inbounds nuw i8, ptr %i.n, i64 58
  store i16 0, ptr %.sroa.44.0..sroa_idx409, align 2, !alias.scope !1005
  %.sroa.47.0..sroa_idx419 = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  store i32 %.sroa.16.60.insert.insert.i, ptr %.sroa.47.0..sroa_idx419, align 4, !alias.scope !1005
  %i.an = call fastcc { i64, i32 } @_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n) #25 ; 2 uses
  %i.ao = extractvalue { i64, i32 } %i.an, 0
  %i.ap = extractvalue { i64, i32 } %i.an, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %3, i8 noundef %4, i64 noundef %i.ao, i32 noundef %i.ap)
  %i.aq = load i64, ptr %i.m, align 8, !range !9, !noundef !5
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.ar, label %bb.g, label %.noexc

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit137
  %i.at = load ptr, ptr %i.as, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.at, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 2, ptr %i.au, align 8
  br label %bb.bx

.noexc:                                           ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit137
  %i.av = load i64, ptr %i.as, align 8, !noundef !5 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !5 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ay = load i64, ptr %2, align 8, !range !9, !alias.scope !1006, !noundef !5
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1006, !nonnull !5, !align !19
  %.sroa.5.0.i = select i1 %i.az, ptr %i.bb, ptr %i.ba
  store i64 1, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx309, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.47552.0.copyload = load i32, ptr %.sroa.34.0..sroa_idx, align 8 ; 3 uses
  %7 = icmp eq i32 %.sroa.47552.0.copyload, 0
  %or.cond8.i.i142 = select i1 %or.cond5.i.i, i1 %7, i1 false ; 2 uses
  %or.cond11.i.i143 = select i1 %or.cond8.i.i142, i1 %6, i1 false
  %or.cond13.i.i144 = select i1 %or.cond11.i.i143, i1 %i.s, i1 false
  %or.cond16.i.i145 = select i1 %or.cond13.i.i144, i1 %i.t, i1 false
  %or.cond19.i.i146 = select i1 %or.cond16.i.i145, i1 %i.u, i1 false
  %or.cond22.i.i147 = select i1 %or.cond19.i.i146, i1 %i.v, i1 false
  %i.bc = icmp ne i8 %i.z, -2
  %.not771 = select i1 %or.cond22.i.i147, i1 true, i1 %i.bc
  br i1 %.not771, label %.noexc49, label %bb.h, !prof !20

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1007
  %i.bd = inttoptr i64 %.sroa.0321.0.copyload to ptr
  store ptr %i.bd, ptr %i.b, align 8, !noalias !1007
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 38, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #22
          to label %bb.l unwind label %bb.i, !noalias !1008

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.bf = load ptr, ptr %i.b, align 8, !alias.scope !1011, !noalias !1007, !noundef !5 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !1012
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %.body unwind label %bb.m, !noalias !1008

bb.l:                                             ; preds = %bb.h
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !1008
  unreachable

.noexc49:                                         ; preds = %.noexc
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.bk = and i16 %.sroa.40.0.copyload, -64
  %.sroa.0.0.i.i273 = select i1 %or.cond8.i.i142, i8 0, i8 %i.z
  %.sroa.35.0..sroa_idx524 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  store i32 %.sroa.28.0.copyload, ptr %.sroa.35.0..sroa_idx524, align 8, !alias.scope !1013
  %.sroa.41.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  store i32 %.sroa.31.0.copyload, ptr %.sroa.41.0..sroa_idx538, align 4, !alias.scope !1013
  %.sroa.47552.0..sroa_idx553 = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i32 %.sroa.47552.0.copyload, ptr %.sroa.47552.0..sroa_idx553, align 8, !alias.scope !1013
  %.sroa.53.0..sroa_idx567 = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i32 0, ptr %.sroa.53.0..sroa_idx567, align 4, !alias.scope !1013
  %.sroa.58.0..sroa_idx581 = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i16 %i.bk, ptr %.sroa.58.0..sroa_idx581, align 8, !alias.scope !1013
  %.sroa.64.0..sroa_idx595 = getelementptr inbounds nuw i8, ptr %i.j, i64 58
  store i16 %.sroa.44.0.copyload, ptr %.sroa.64.0..sroa_idx595, align 2, !alias.scope !1013
  %.sroa.70.0..sroa_idx609 = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  store i8 %.sroa.0.0.i.i273, ptr %.sroa.70.0..sroa_idx609, align 4, !alias.scope !1013
  %.sroa.76.0..sroa_idx623 = getelementptr inbounds nuw i8, ptr %i.j, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.76.0..sroa_idx623, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.76.0..sroa_idx, i64 3, i1 false)
  %i.bl = sext i8 %.val66 to i64
  invoke fastcc void @_RNvNtCsa9sSWSfjDbm_4jiff4span18unit_start_and_end(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.j, i8 noundef 6, i64 noundef %i.bl)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %.noexc49
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.i, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.i ], [ %i.be, %bb.k ], [ %i.be, %bb.j ], [ %i.bm, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_(i64 1, ptr undef) #26
          to label %common.resume unwind label %bb.by

bb.o:                                             ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bn = load i64, ptr %i.l, align 8, !range !9, !noundef !5
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.bo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit283

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit: ; preds = %bb.o
  %i.bq = load ptr, ptr %i.bp, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store ptr %i.bq, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 2, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit283: ; preds = %bb.o
  %.sroa.034.0.copyload = load i64, ptr %i.bp, align 8 ; 3 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.435.0.copyload = load i32, ptr %.sroa.435.0..sroa_idx, align 8 ; 2 uses
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.637.0.copyload = load i64, ptr %.sroa.637.0..sroa_idx, align 8 ; 2 uses
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.738.0.copyload = load i32, ptr %.sroa.738.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bs = icmp eq i64 %.sroa.034.0.copyload, -9223372036854775808
  br i1 %i.bs, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i, label %bb.p, !prof !6

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit283
  %i.bt = sub nsw i64 0, %.sroa.034.0.copyload
  %i.bu = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.sroa.637.0.copyload, i64 %i.bt) ; 2 uses
  %i.bv = extractvalue { i64, i1 } %i.bu, 0       ; 4 uses
  %i.bw = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bw, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i, label %bb.q, !prof !6

bb.q:                                             ; preds = %bb.p
  %i.bx = sub i32 %.sroa.738.0.copyload, %.sroa.435.0.copyload ; 6 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = icmp sgt i32 %i.bx, 999999999
  br i1 %i.bz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp slt i32 %i.bx, -999999999
  br i1 %i.ca, label %bb.u, label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.cb = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bv, i64 1) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i, label %bb.x, !prof !6

bb.u:                                             ; preds = %bb.s
  %i.cd = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bv, i64 -1) ; 2 uses
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  br i1 %i.ce, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i, label %bb.v, !prof !6

bb.v:                                             ; preds = %bb.u
  %i.cf = extractvalue { i64, i1 } %i.cd, 0
  %i.cg = add nsw i32 %i.bx, 1000000000
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v, %bb.s
  %.sroa.016.1.i.i = phi i64 [ %i.cj, %bb.x ], [ %i.cf, %bb.v ], [ %i.bv, %bb.s ] ; 7 uses
  %.sroa.02.1.i.i = phi i32 [ %i.ck, %bb.x ], [ %i.cg, %bb.v ], [ %i.bx, %bb.s ] ; 6 uses
  %i.ch = icmp eq i64 %.sroa.016.1.i.i, 0
  %i.ci = icmp eq i32 %.sroa.02.1.i.i, 0
  %or.cond.i.i284 = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond.i.i284, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit, label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.cj = extractvalue { i64, i1 } %i.cb, 0
  %i.ck = add nsw i32 %i.bx, -1000000000
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.cl = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i.i, i64 0)
  %i.cm = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i.i, i32 0)
  %.not.i.i = icmp eq i64 %i.cl, %i.cm
  br i1 %.not.i.i, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = icmp slt i64 %.sroa.016.1.i.i, 0
  br i1 %i.cn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = add nsw i64 %.sroa.016.1.i.i, -1
  %i.cp = add nsw i32 %.sroa.02.1.i.i, 1000000000
  br label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.cq = add nsw i64 %.sroa.016.1.i.i, 1
  %i.cr = add nsw i32 %.sroa.02.1.i.i, -1000000000
  br label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i: ; preds = %bb.u, %bb.t, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit283
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #24
  unreachable

_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit: ; preds = %bb.q, %bb.w, %bb.y
  %.sroa.6.0.ph.i = phi i32 [ %.sroa.02.1.i.i, %bb.y ], [ %.sroa.02.1.i.i, %bb.w ], [ 0, %bb.q ]
  %.sroa.4.0.ph.i = phi i64 [ %.sroa.016.1.i.i, %bb.y ], [ %.sroa.016.1.i.i, %bb.w ], [ %i.bv, %bb.q ] ; 2 uses
  %i.cs = icmp eq i64 %.sroa.4.0.ph.i, -9223372036854775808
  br i1 %i.cs, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i291, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread, !prof !1014

_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread: ; preds = %bb.ab, %bb.aa, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit
  %.sroa.4.0.ph.i758 = phi i64 [ %.sroa.4.0.ph.i, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit ], [ %i.cq, %bb.ab ], [ %i.co, %bb.aa ]
  %.sroa.6.0.ph.i757 = phi i32 [ %.sroa.6.0.ph.i, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit ], [ %i.cr, %bb.ab ], [ %i.cp, %bb.aa ]
  %i.ct = sub nsw i64 0, %.sroa.4.0.ph.i758
  %i.cu = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.av, i64 %i.ct) ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.cu, 0       ; 4 uses
  %i.cw = extractvalue { i64, i1 } %i.cu, 1
  br i1 %i.cw, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i291, label %bb.ac, !prof !6

bb.ac:                                            ; preds = %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit.thread
  %i.cx = sub i32 %i.ax, %.sroa.6.0.ph.i757       ; 6 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = icmp sgt i32 %i.cx, 999999999
  br i1 %i.cz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = icmp slt i32 %i.cx, -999999999
  br i1 %i.da, label %bb.ag, label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.db = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cv, i64 1) ; 2 uses
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  br i1 %i.dc, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i291, label %bb.aj, !prof !6

bb.ag:                                            ; preds = %bb.ae
  %i.dd = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cv, i64 -1) ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 1
  br i1 %i.de, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i291, label %bb.ah, !prof !6

bb.ah:                                            ; preds = %bb.ag
  %i.df = extractvalue { i64, i1 } %i.dd, 0
  %i.dg = add nsw i32 %i.cx, 1000000000
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah, %bb.ae
  %.sroa.016.1.i.i285 = phi i64 [ %i.dj, %bb.aj ], [ %i.df, %bb.ah ], [ %i.cv, %bb.ae ] ; 7 uses
  %.sroa.02.1.i.i286 = phi i32 [ %i.dk, %bb.aj ], [ %i.dg, %bb.ah ], [ %i.cx, %bb.ae ] ; 6 uses
  %i.dh = icmp eq i64 %.sroa.016.1.i.i285, 0
  %i.di = icmp eq i32 %.sroa.02.1.i.i286, 0
  %or.cond.i.i287 = select i1 %i.dh, i1 true, i1 %i.di
  br i1 %or.cond.i.i287, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292, label %bb.ak

bb.aj:                                            ; preds = %bb.af
  %i.dj = extractvalue { i64, i1 } %i.db, 0
  %i.dk = add nsw i32 %i.cx, -1000000000
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ai
  %i.dl = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i.i285, i64 0)
  %i.dm = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i.i286, i32 0)
  %.not.i.i288 = icmp eq i64 %i.dl, %i.dm
  br i1 %.not.i.i288, label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dn = icmp slt i64 %.sroa.016.1.i.i285, 0
  br i1 %i.dn, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = add nsw i64 %.sroa.016.1.i.i285, -1
  %i.dp = add nsw i32 %.sroa.02.1.i.i286, 1000000000
  br label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292

bb.an:                                            ; preds = %bb.al
  %i.dq = add nsw i64 %.sroa.016.1.i.i285, 1
  %i.dr = add nsw i32 %.sroa.02.1.i.i286, -1000000000
  br label %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292
end_hunk_0
begin_hunk_1_@_RNvMs1h_NtCsa9sSWSfjDbm_4jiff4spanNtB6_5Nudge19relative_zoned_time:_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_dayslEB7_.exit

bb.ax:                                            ; preds = %bb.av
  %i.eq = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i.i294, i64 0)
  %i.er = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i.i295, i32 0)
  %.not.i.i297 = icmp eq i64 %i.eq, %i.er
  br i1 %.not.i.i297, label %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.es = icmp slt i64 %.sroa.016.1.i.i294, 0
  br i1 %i.es, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.et = add nsw i64 %.sroa.016.1.i.i294, -1
  %i.eu = add nsw i32 %.sroa.02.1.i.i295, 1000000000
  br label %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ev = add nsw i64 %.sroa.016.1.i.i294, 1
  %i.ew = add nsw i32 %.sroa.02.1.i.i295, -1000000000
  br label %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i300: ; preds = %bb.at, %bb.as, %bb.ao
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
  unreachable

_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit: ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bp, %bb.bj, %bb.ba, %bb.az, %bb.ax, %bb.av, %bb.ap
  %.sroa.6.0 = phi i32 [ %i.ax, %bb.ba ], [ %i.ax, %bb.ap ], [ %i.ax, %bb.av ], [ %i.ax, %bb.ax ], [ %i.ax, %bb.az ], [ %i.fp, %bb.bj ], [ %i.fp, %bb.bp ], [ %i.fp, %bb.br ], [ %i.fp, %bb.bt ], [ %i.fp, %bb.bu ]
  %.sroa.015.0 = phi i64 [ %i.av, %bb.ba ], [ %i.av, %bb.ap ], [ %i.av, %bb.av ], [ %i.av, %bb.ax ], [ %i.av, %bb.az ], [ %i.fn, %bb.bj ], [ %i.fn, %bb.bp ], [ %i.fn, %bb.br ], [ %i.fn, %bb.bt ], [ %i.fn, %bb.bu ]
  %.sroa.4.0.ph.i306.pn = phi i64 [ %i.ev, %bb.ba ], [ %i.ea, %bb.ap ], [ %.sroa.016.1.i.i294, %bb.av ], [ %.sroa.016.1.i.i294, %bb.ax ], [ %i.et, %bb.az ], [ %i.fr, %bb.bj ], [ %.sroa.016.1.i.i301, %bb.bp ], [ %.sroa.016.1.i.i301, %bb.br ], [ %i.gk, %bb.bt ], [ %i.gm, %bb.bu ]
  %.sroa.6.0.ph.i305.pn = phi i32 [ %i.ew, %bb.ba ], [ 0, %bb.ap ], [ %.sroa.02.1.i.i295, %bb.av ], [ %.sroa.02.1.i.i295, %bb.ax ], [ %i.eu, %bb.az ], [ 0, %bb.bj ], [ %.sroa.02.1.i.i302, %bb.bp ], [ %.sroa.02.1.i.i302, %bb.br ], [ %i.gl, %bb.bt ], [ %i.gn, %bb.bu ]
  %i.ex = phi i8 [ 0, %bb.ba ], [ 0, %bb.ap ], [ 0, %bb.av ], [ 0, %bb.ax ], [ 0, %bb.az ], [ 1, %bb.bj ], [ 1, %bb.bp ], [ 1, %bb.br ], [ 1, %bb.bt ], [ 1, %bb.bu ]
  %.sroa.07.0 = phi i32 [ 0, %bb.ba ], [ 0, %bb.ap ], [ 0, %bb.av ], [ 0, %bb.ax ], [ 0, %bb.az ], [ 1, %bb.bj ], [ 1, %bb.bp ], [ 1, %bb.br ], [ 1, %bb.bt ], [ 1, %bb.bu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span23from_invariant_duration(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, i8 noundef 5, i64 noundef %.sroa.015.0, i32 noundef %.sroa.6.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.ez = load i8, ptr %i.ey, align 4, !range !7, !alias.scope !1016, !noundef !5 ; 2 uses
  %i.fa = icmp eq i8 %i.ez, -2
  %i.fb = load ptr, ptr %i.e, align 8, !alias.scope !1017 ; 5 uses
  br i1 %i.fa, label %bb.bb, label %bb.bw

bb.bb:                                            ; preds = %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1018
  store ptr %i.fb, ptr %i.a, align 8, !noalias !1018
  %i.fc = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4spanNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 1, 6) 1, i8 range(i8 0, 10) 5)
          to label %bb.bv unwind label %bb.bc, !noalias !1018

bb.bc:                                            ; preds = %bb.bb
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fe = icmp eq ptr %i.fb, null
  br i1 %i.fe, label %common.resume, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ff = atomicrmw add ptr %i.fb, i64 -1 release, align 8, !noalias !1019
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.be, label %common.resume

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %common.resume unwind label %bb.bf, !noalias !1018

bb.bf:                                            ; preds = %bb.be
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !1018
  unreachable

bb.bg:                                            ; preds = %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292.thread, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292
  %.sroa.4.0.ph.i290765 = phi i64 [ %.sroa.4.0.ph.i290764, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292.thread ], [ 0, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292 ]
  %.sroa.6.0.ph.i289763 = phi i32 [ %.sroa.6.0.ph.i289762, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292.thread ], [ 0, %_RNvXsc_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub.exit292 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %3, i8 noundef %4, i64 noundef %.sroa.4.0.ph.i290765, i32 noundef %.sroa.6.0.ph.i289763)
  %i.fi = load i64, ptr %i.i, align 8, !range !9, !noundef !5
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.fj, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fl = load ptr, ptr %i.fk, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.fl, ptr %0, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 2, ptr %i.fm, align 8
  br label %bb.bx

bb.bi:                                            ; preds = %bb.bg
  %i.fn = load i64, ptr %i.fk, align 8, !noundef !5 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fp = load i32, ptr %i.fo, align 8, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.sroa.637.0.copyload, i64 %i.fn) ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fq, 0       ; 4 uses
  %i.fs = extractvalue { i64, i1 } %i.fq, 1
  br i1 %i.fs, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i307, label %bb.bj, !prof !6

bb.bj:                                            ; preds = %bb.bi
  %i.ft = add i32 %i.fp, %.sroa.738.0.copyload    ; 6 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fv = icmp sgt i32 %i.ft, 999999999
  br i1 %i.fv, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fw = icmp slt i32 %i.ft, -999999999
  br i1 %i.fw, label %bb.bn, label %bb.bp

bb.bm:                                            ; preds = %bb.bk
  %i.fx = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fr, i64 1) ; 2 uses
  %i.fy = extractvalue { i64, i1 } %i.fx, 1
  br i1 %i.fy, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i307, label %bb.bq, !prof !6

bb.bn:                                            ; preds = %bb.bl
  %i.fz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.fr, i64 -1) ; 2 uses
  %i.ga = extractvalue { i64, i1 } %i.fz, 1
  br i1 %i.ga, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i307, label %bb.bo, !prof !6

bb.bo:                                            ; preds = %bb.bn
  %i.gb = extractvalue { i64, i1 } %i.fz, 0
  %i.gc = add nsw i32 %i.ft, 1000000000
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %bb.bo, %bb.bl
  %.sroa.016.1.i.i301 = phi i64 [ %i.gf, %bb.bq ], [ %i.gb, %bb.bo ], [ %i.fr, %bb.bl ] ; 7 uses
  %.sroa.02.1.i.i302 = phi i32 [ %i.gg, %bb.bq ], [ %i.gc, %bb.bo ], [ %i.ft, %bb.bl ] ; 6 uses
  %i.gd = icmp eq i64 %.sroa.016.1.i.i301, 0
  %i.ge = icmp eq i32 %.sroa.02.1.i.i302, 0
  %or.cond.i.i303 = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond.i.i303, label %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit, label %bb.br

bb.bq:                                            ; preds = %bb.bm
  %i.gf = extractvalue { i64, i1 } %i.fx, 0
  %i.gg = add nsw i32 %i.ft, -1000000000
  br label %bb.bp

bb.br:                                            ; preds = %bb.bp
  %i.gh = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i.i301, i64 0)
  %i.gi = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i.i302, i32 0)
  %.not.i.i304 = icmp eq i64 %i.gh, %i.gi
  br i1 %.not.i.i304, label %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gj = icmp slt i64 %.sroa.016.1.i.i301, 0
  br i1 %i.gj, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gk = add nsw i64 %.sroa.016.1.i.i301, -1
  %i.gl = add nsw i32 %.sroa.02.1.i.i302, 1000000000
  br label %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit

bb.bu:                                            ; preds = %bb.bs
  %i.gm = add nsw i64 %.sroa.016.1.i.i301, 1
  %i.gn = add nsw i32 %.sroa.02.1.i.i302, -1000000000
  br label %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit.i307: ; preds = %bb.bn, %bb.bm, %bb.bi
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
  unreachable

bb.bv:                                            ; preds = %bb.bb
  %i.go = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.fb, ptr noundef %i.fc), !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.go, ptr %0, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 2, ptr %i.gp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bx

bb.bw:                                            ; preds = %_RNvXsa_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add.exit
  %.sroa.7319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7319.0..sroa_idx, i64 52, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 61
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.d, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx28, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.11.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.fb, ptr %i.d, align 8
  %.sroa.725.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i8 %i.ez, ptr %.sroa.725.0..sroa_idx26, align 4
  %i.gq = sext i8 %i.z to i16
  %i.gr = mul i16 %.sroa.44.0.copyload, %i.gq
  call fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span5yearssEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.d, i16 noundef %i.gr) #25
  %sext = shl i32 %.sroa.47.0.copyload, 24
  %i.gs = ashr exact i32 %sext, 24                ; 3 uses
  %i.gt = mul i32 %.sroa.28.0.copyload, %i.gs
  call fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span6monthslEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.f, i32 noundef %i.gt) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gu = mul i32 %.sroa.31.0.copyload, %i.gs
  call fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span5weekslEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.g, i32 noundef %i.gu) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gv = mul i32 %.sroa.47552.0.copyload, %i.gs
  %i.gw = add i32 %.sroa.07.0, %i.gv
  call fastcc void @_RINvMNtCsa9sSWSfjDbm_4jiff4spanNtB3_4Span4dayslEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.h, i32 noundef %i.gw) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.4.0.ph.i306.pn, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.6.0.ph.i305.pn, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.ex, ptr %.sroa.632.0..sroa_idx, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bh, %bb.bv, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff4span8RelativeEBF_.exit, %bb.bw
  ret void

bb.by:                                            ; preds = %.body
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1h_NtCsa9sSWSfjDbm_4jiff4spanNtB6_5Nudge6bubble(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %2, i8 noundef range(i8 0, 10) %3, i8 noundef range(i8 0, 10) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.10 = alloca [3 x i8], align 1            ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 16 uses
  %i.g = alloca [64 x i8], align 8                ; 15 uses
  %i.h = alloca [64 x i8], align 8                ; 12 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [3 x i8], align 1             ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 16 uses
  %.sroa.17 = alloca [3 x i8], align 1            ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i8, ptr %i.k, align 8, !range !1051, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = icmp ne i8 %3, 7
  %or.cond.not = and i1 %i.n, %i.m
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %..i = tail call noundef range(i8 0, 10) i8 @llvm.umax.i8(i8 range(i8 0, 10) %3, i8 6)
  %.sroa.0279.0.copyload = load ptr, ptr %1, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.sroa.8.0.copyload = load i64, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.sroa.9.0.copyload = load i64, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.7.sroa.10.0.copyload = load i32, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.7.sroa.11.0.copyload = load i32, ptr %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7.sroa.12.0.copyload = load i64, ptr %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.7.sroa.13.0.copyload = load i16, ptr %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.14.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.7.sroa.14.0.copyload = load i16, ptr %.sroa.7.sroa.14.0..sroa.7.0..sroa_idx.sroa_idx, align 2
  %.sroa.8284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.8284.0.copyload = load i8, ptr %.sroa.8284.0..sroa_idx, align 4 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa_idx, i64 3, i1 false)
  %i.o = icmp samesign ult i8 %4, 7
  %i.p = icmp eq i8 %4, 7
  %i.q = sext i8 %.sroa.8284.0.copyload to i64
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.15318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 61
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.448.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.448.sroa.5.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.448.sroa.6.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.448.sroa.7.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.448.sroa.8.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %.sroa.448.sroa.9.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.448.sroa.10.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.448.sroa.11.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 58
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 61
  %i.s = load i64, ptr %2, align 8, !range !12    ; 2 uses
  %.not71 = icmp eq i64 %i.s, 2
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.420.sroa.7.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.420.sroa.8.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %.sroa.420.sroa.9.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.420.sroa.10.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.420.sroa.11.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 61
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !align !19
  %.sroa.0.0.i.i270 = select i1 %i.t, ptr %i.v, ptr %i.u ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i270, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i270, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i270, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i270, i64 24
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.9585.sroa.6.0..sroa.410.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.420.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.420.sroa.6.0..sroa.420.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.420.sroa.7.0..sroa.420.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.420.sroa.8.0..sroa.420.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %.sroa.420.sroa.9.0..sroa.420.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.420.sroa.10.0..sroa.420.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.420.sroa.11.0..sroa.420.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 58
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.g, i64 61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = load i64, ptr %i.ae, align 8
  br label %.outer

.outer:                                           ; preds = %bb.at, %bb.c
  %.sroa.7.sroa.14.0.ph = phi i16 [ %.sroa.448.sroa.11.0.copyload, %bb.at ], [ %.sroa.7.sroa.14.0.copyload, %bb.c ] ; 4 uses
  %.sroa.7.sroa.13.0.ph = phi i16 [ %.sroa.448.sroa.10.0.copyload, %bb.at ], [ %.sroa.7.sroa.13.0.copyload, %bb.c ] ; 4 uses
  %.sroa.7.sroa.12.0.ph = phi i64 [ %.sroa.448.sroa.9.0.copyload, %bb.at ], [ %.sroa.7.sroa.12.0.copyload, %bb.c ] ; 3 uses
  %.sroa.7.sroa.11.0.ph = phi i32 [ %.sroa.448.sroa.8.0.copyload, %bb.at ], [ %.sroa.7.sroa.11.0.copyload, %bb.c ] ; 4 uses
  %.sroa.7.sroa.10.0.ph = phi i32 [ %.sroa.448.sroa.7.0.copyload, %bb.at ], [ %.sroa.7.sroa.10.0.copyload, %bb.c ] ; 5 uses
  %.sroa.7.sroa.9.0.ph = phi i64 [ %.sroa.448.sroa.6.0.copyload, %bb.at ], [ %.sroa.7.sroa.9.0.copyload, %bb.c ]
  %.sroa.7.sroa.8.0.ph = phi i64 [ %.sroa.448.sroa.5.0.copyload, %bb.at ], [ %.sroa.7.sroa.8.0.copyload, %bb.c ] ; 2 uses
  %.sroa.7.sroa.7.0.ph = phi i64 [ %.sroa.448.sroa.4.0.copyload, %bb.at ], [ %.sroa.7.sroa.7.0.copyload, %bb.c ] ; 2 uses
  %.sroa.7.sroa.0.0.ph = phi i64 [ %.sroa.448.sroa.0.0.copyload, %bb.at ], [ %.sroa.7.sroa.0.0.copyload, %bb.c ] ; 2 uses
  %.sroa.0291.0.ph = phi i8 [ %.sroa.0.0.i.ph713717, %bb.at ], [ %..i, %bb.c ] ; 3 uses
  %.sroa.8284.0.ph = phi i8 [ %i.bn, %bb.at ], [ %.sroa.8284.0.copyload, %bb.c ] ; 5 uses
  %.sroa.0279.0.ph = phi ptr [ %i.bp, %bb.at ], [ %.sroa.0279.0.copyload, %bb.c ] ; 3 uses
  br i1 %i.o, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer
  switch i8 %.sroa.0291.0.ph, label %default.unreachable [
    i8 9, label %_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit4next.exit
    i8 8, label %.loopexit
    i8 7, label %.split.us
    i8 6, label %_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit4next.exit
  ]

.outer.split:                                     ; preds = %.outer
  br i1 %i.p, label %.outer.split.split.us, label %.outer.split.split.preheader

.outer.split.split.preheader:                     ; preds = %.outer.split
  switch i8 %.sroa.0291.0.ph, label %default.unreachable [
    i8 9, label %_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit4next.exit
    i8 8, label %.loopexit
    i8 7, label %.split.us
    i8 6, label %.split.us
  ]

.outer.split.split.us:                            ; preds = %.outer.split
  switch i8 %.sroa.0291.0.ph, label %default.unreachable [
    i8 9, label %_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit4next.exit
    i8 8, label %.loopexit
    i8 7, label %.split.us
    i8 6, label %.thread.us1344
  ]

default.unreachable:                              ; preds = %.outer.split.split.us, %.outer.split.split.preheader, %.outer.split.us
  unreachable

.loopexit:                                        ; preds = %.outer.split.split.preheader, %.outer.split.split.us, %.outer.split.us
  br label %.split.us

.split.us:                                        ; preds = %.outer.split.split.preheader, %.outer.split.split.preheader, %.outer.split.us, %.outer.split.split.us, %.loopexit
  %.sroa.0.0.i.ph = phi i8 [ 8, %.outer.split.us ], [ 9, %.loopexit ], [ 8, %.outer.split.split.us ], [ 8, %.outer.split.split.preheader ], [ 8, %.outer.split.split.preheader ] ; 2 uses
  %i.ag = icmp samesign ugt i8 %.sroa.0.0.i.ph, %4
  br i1 %i.ag, label %_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit4next.exit, label %.thread.us1344

_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit4next.exit: ; preds = %.outer.split.split.us, %.outer.split.us, %.outer.split.us, %.split.us, %.outer.split.split.preheader, %bb.as
  %.sroa.14598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.14598.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10, i64 3, i1 false)
  store ptr %.sroa.0279.0.ph, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
