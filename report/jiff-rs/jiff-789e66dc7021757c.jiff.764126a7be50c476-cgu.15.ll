Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.15?download=true
inline.NumInlined: 264
inline.NumDeleted: 141
begin_hunk_0_@_RNvXs5_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTimeINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtB9_5zoned5ZonedE4from:bb.a
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx14, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 29
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 30
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 2 ; 2 uses
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.715.0.copyload = load i16, ptr %.sroa.715.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 35
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1 ; 2 uses
  %i.bt = icmp sgt i8 %.sroa.4.0.copyload, 11
  %..i = zext i1 %i.bt to i8                      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i16 1, ptr %i.bu, align 8, !alias.scope !402, !noalias !403
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 82
  store i16 %.sroa.715.0.copyload, ptr %i.bv, align 2, !alias.scope !402, !noalias !403
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i8 1, ptr %i.bw, align 4, !alias.scope !402, !noalias !403
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 93
  store i8 %.sroa.8.0.copyload, ptr %i.bx, align 1, !alias.scope !402, !noalias !403
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 94
  store i8 1, ptr %i.by, align 2, !alias.scope !402, !noalias !403
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 95
  store i8 %.sroa.9.0.copyload, ptr %i.bz, align 1, !alias.scope !402, !noalias !403
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i16 0, ptr %i.ca, align 4, !alias.scope !402, !noalias !403
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i16 0, ptr %i.cb, align 8, !alias.scope !402, !noalias !403
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i8 0, ptr %i.cc, align 8, !alias.scope !402, !noalias !403
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  store i8 0, ptr %i.cd, align 2, !alias.scope !402, !noalias !403
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i8 0, ptr %i.ce, align 4, !alias.scope !402, !noalias !403
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 102
  store i8 1, ptr %i.cf, align 2, !alias.scope !402, !noalias !403
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 103
  store i8 %.sroa.4.0.copyload, ptr %i.cg, align 1, !alias.scope !402, !noalias !403
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 1, ptr %i.ch, align 8, !alias.scope !402, !noalias !403
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  store i8 %.sroa.5.0.copyload, ptr %i.ci, align 1, !alias.scope !402, !noalias !403
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 106
  store i8 1, ptr %i.cj, align 2, !alias.scope !402, !noalias !403
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 107
  store i8 %.sroa.6.0.copyload, ptr %i.ck, align 1, !alias.scope !402, !noalias !403
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 1, ptr %i.cl, align 8, !alias.scope !402, !noalias !403
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %.sroa.0.0.copyload, ptr %i.cm, align 4, !alias.scope !402, !noalias !403
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.cn, align 8, !alias.scope !402, !noalias !403
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 109
  store i8 0, ptr %i.co, align 1, !alias.scope !402, !noalias !403
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i8 %..i, ptr %i.cp, align 4, !alias.scope !402, !noalias !403
  store i64 0, ptr %i.b, align 8, !alias.scope !402, !noalias !403
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cq, align 8, !alias.scope !402, !noalias !403
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 -1, ptr %i.cr, align 8, !alias.scope !402, !noalias !403
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 1, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %.sroa.8.0.copyload, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i8 1, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 %.sroa.9.0.copyload, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 86
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = insertelement <4 x i16> <i16 1, i16 poison, i16 0, i16 poison>, i16 %.sroa.715.0.copyload, i64 1
  %i.da = insertelement <4 x i16> %i.cz, i16 %i.cy, i64 3
  store <4 x i16> %i.da, ptr %i.cs, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 90
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 %i.dc, ptr %i.de, align 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %i.dg, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 99
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.dl, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %i.dk, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 101
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 0, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %i.do, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 1, ptr %i.dr, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %.sroa.4.0.copyload, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %.sroa.5.0.copyload, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 1, ptr %i.dv, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %.sroa.6.0.copyload, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.0.0.copyload, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.bb, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %..i, ptr %i.ec, align 4
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %.sroa.54.0..sroa_idx, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val, ptr %i.ee, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime14BrokenDownTimeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.z:                                             ; preds = %bb.ab
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit13: ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %i.eg

bb.aa:                                            ; preds = %bb.w, %bb.u
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br i1 %i.az, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit13, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECsa9sSWSfjDbm_4jiff.exit13 unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTimeINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB9_9timestamp9TimestampE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %1, 378683424000                 ; 2 uses
  %i.b = udiv i64 %i.a, 86400
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = urem i64 %i.a, 86400                     ; 2 uses
  %i.e = trunc nuw nsw i64 %i.d to i32            ; 2 uses
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.d, 0
  %i.g = add nsw i32 %2, 1000000000               ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.09.0.i = phi i32 [ %i.k, %bb.d ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.g, %bb.d ], [ %2, %bb.a ] ; 3 uses
  %i.h = add i32 %i.c, -11323
  %or.cond.i = icmp ult i32 %i.h, 7304484
  br i1 %or.cond.i, label %bb.f, label %bb.e, !prof !24

.thread.i:                                        ; preds = %bb.b
  %i.i = add nsw i32 %i.c, -1
  %i.j = add i32 %i.c, -11324
  %or.cond54.i = icmp ult i32 %i.j, 7304484
  br i1 %or.cond54.i, label %.thread67.i, label %bb.e, !prof !24

bb.d:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.e, -1
  br label %bb.c

bb.e:                                             ; preds = %.thread.i, %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24, !noalias !406
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %.sroa.09.0.i, 0
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = udiv i32 %.sroa.09.0.i, 3600
  %3 = trunc nuw nsw i32 %i.m to i8               ; 2 uses
  %i.n = urem i32 %.sroa.09.0.i, 3600             ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %.thread67.i

bb.h:                                             ; preds = %.thread67.i, %bb.g, %bb.f
  %.sroa.06.05665.i = phi i32 [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %.sroa.06.0566471.i, %.thread67.i ]
  %.sroa.0.05763.i = phi i32 [ %.sroa.0.0.i, %bb.f ], [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.0576272.i, %.thread67.i ] ; 2 uses
  %.sroa.041.0.i = phi i8 [ 0, %bb.f ], [ %3, %bb.g ], [ %4, %.thread67.i ]
  %.sroa.043.0.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.w, %.thread67.i ] ; 3 uses
  %or.cond2.i = icmp ult i32 %.sroa.0.05763.i, 1000000000
  br i1 %or.cond2.i, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit, label %bb.i, !prof !24

.thread67.i:                                      ; preds = %bb.g, %.thread.i
  %i.p = phi i32 [ %i.n, %bb.g ], [ 3599, %.thread.i ]
  %4 = phi i8 [ %3, %bb.g ], [ 23, %.thread.i ]
  %.sroa.0.0576272.i = phi i32 [ %.sroa.0.0.i, %bb.g ], [ %i.g, %.thread.i ]
  %.sroa.06.0566471.i = phi i32 [ %i.c, %bb.g ], [ %i.i, %.thread.i ]
  %.lhs.trunc.i = trunc nuw nsw i32 %i.p to i16   ; 2 uses
  %i.q = udiv i16 %.lhs.trunc.i, 60
  %i.r = zext nneg i16 %i.q to i64
  %i.s = urem i16 %.lhs.trunc.i, 60
  %i.t = zext nneg i16 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 48
  %i.v = shl nuw nsw i64 %i.r, 40
  %i.w = or disjoint i64 %i.u, %i.v
  br label %bb.h

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #24, !noalias !406
  unreachable

_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime.exit: ; preds = %bb.h
  %i.x = shl nuw nsw i32 %.sroa.06.05665.i, 2
  %i.y = add nuw nsw i32 %i.x, 33266051           ; 2 uses
  %i.z = urem i32 %i.y, 146097
  %i.aa = or i32 %i.z, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = mul nuw nsw i64 %i.ab, 2939745          ; 2 uses
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = udiv i32 %i.ad, 11758980
  %i.af = mul nuw nsw i32 %i.ae, 2141
  %i.ag = add nuw nsw i32 %i.af, 197913           ; 3 uses
  %.lhs.trunc.i.i = trunc i32 %i.ag to i16
  %i.ah = udiv i16 %.lhs.trunc.i.i, 2141
  %i.ai = icmp ugt i32 %i.ad, -696719417          ; 2 uses
  %i.aj = and i32 %i.ag, 4128768
  %i.ak = add nuw nsw i32 %i.aj, 15990784
  %.sroa.2.0.insert.ext.i.i = select i1 %i.ai, i32 %i.ak, i32 %i.ag
  %i.al = udiv i32 %i.y, 146097
  %i.am = mul nuw nsw i32 %i.al, 100
  %i.an = add nuw nsw i32 %i.am, 32736
  %i.ao = lshr i64 %i.ac, 32
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.an, %i.ap
  %i.ar = zext i1 %i.ai to i32
  %i.as = add nuw nsw i32 %i.aq, %i.ar
  %.sroa.440.0.insert.ext.i = zext nneg i8 %.sroa.041.0.i to i64
  %.sroa.440.0.insert.shift.i = shl nuw nsw i64 %.sroa.440.0.insert.ext.i, 32
  %.sroa.039.0.insert.ext.i = zext nneg i32 %.sroa.0.05763.i to i64
  %i.at = or disjoint i64 %.sroa.440.0.insert.shift.i, %.sroa.039.0.insert.ext.i
  %.sroa.039.0.insert.insert.i = or i64 %i.at, %.sroa.043.0.i ; 2 uses
  %.sroa.7.8.extract.trunc = trunc i32 %i.as to i16
  %.sroa.7.10.extract.shift = lshr i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.7.10.extract.trunc = trunc i32 %.sroa.7.10.extract.shift to i8
  %i.au = trunc nuw nsw i16 %i.ah to i8
  %.sroa.7.11.extract.trunc = add nuw nsw i8 %i.au, 1
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.039.0.insert.insert.i, 32
  %.sroa.0.4.extract.trunc = trunc i64 %.sroa.0.4.extract.shift to i8 ; 2 uses
  %.sroa.0.5.extract.shift = lshr i64 %.sroa.043.0.i, 40
  %.sroa.0.5.extract.trunc = trunc i64 %.sroa.0.5.extract.shift to i8
  %.sroa.0.6.extract.shift = lshr i64 %.sroa.043.0.i, 48
  %.sroa.0.6.extract.trunc = trunc nuw nsw i64 %.sroa.0.6.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.039.0.insert.insert.i to i32
  %i.av = icmp sgt i8 %.sroa.0.4.extract.trunc, 11
  %..i = zext i1 %i.av to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i16 %.sroa.7.8.extract.trunc, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 1, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %.sroa.7.10.extract.trunc, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i8 1, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 %.sroa.7.11.extract.trunc, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 0, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 0, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 1, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %.sroa.0.4.extract.trunc, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %.sroa.0.5.extract.trunc, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 1, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %.sroa.0.6.extract.trunc, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.0.0.extract.trunc, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %..i, ptr %i.bs, align 4
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %i.bu, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @_RNvXs7_NtCsa9sSWSfjDbm_4jiff3fmtINtB5_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtB5_5Write9write_strB7_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = tail call noundef zeroext i1 @_RNvXNtCs3oUPovFnLWP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 3, ptr %i.a, align 8
  %i.c = call noundef ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E13with_capacityBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !12, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #25
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsa9sSWSfjDbm_4jiff9timestamp9TimestampENtNtB7_3fmt5Debug3fmtBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !25, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneENtNtB7_3fmt5Debug3fmtBQ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
end_hunk_0
