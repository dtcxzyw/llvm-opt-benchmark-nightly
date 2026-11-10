Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN9Stockfish6Search6Worker5clearEv:vector.ph
  store atomic i16 0, ptr %i.dp monotonic, align 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 14
  store atomic i16 0, ptr %i.dq monotonic, align 2
  %i.dr = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %.012.i ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store atomic i16 0, ptr %i.dt monotonic, align 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 18
  store atomic i16 0, ptr %i.du monotonic, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store atomic i16 0, ptr %i.dv monotonic, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 22
  store atomic i16 0, ptr %i.dw monotonic, align 2
  %.0.ptr.1.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store atomic i16 0, ptr %.0.ptr.1.i.i.1 monotonic, align 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 26
  store atomic i16 0, ptr %i.dx monotonic, align 2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  store atomic i16 0, ptr %i.dy monotonic, align 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store atomic i16 0, ptr %i.dz monotonic, align 2
  %i.ea = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.012.i ; 8 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store atomic i16 0, ptr %i.ec monotonic, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 34
  store atomic i16 0, ptr %i.ed monotonic, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 36
  store atomic i16 0, ptr %i.ee monotonic, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 38
  store atomic i16 0, ptr %i.ef monotonic, align 2
  %.0.ptr.1.i.i.2 = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store atomic i16 0, ptr %.0.ptr.1.i.i.2 monotonic, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 42
  store atomic i16 0, ptr %i.eg monotonic, align 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store atomic i16 0, ptr %i.eh monotonic, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 46
  store atomic i16 0, ptr %i.ei monotonic, align 2
  %i.ej = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %.012.i ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store atomic i16 0, ptr %i.el monotonic, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 50
  store atomic i16 0, ptr %i.em monotonic, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 52
  store atomic i16 0, ptr %i.en monotonic, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 54
  store atomic i16 0, ptr %i.eo monotonic, align 2
  %.0.ptr.1.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  store atomic i16 0, ptr %.0.ptr.1.i.i.3 monotonic, align 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 58
  store atomic i16 0, ptr %i.ep monotonic, align 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 60
  store atomic i16 0, ptr %i.eq monotonic, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 62
  store atomic i16 0, ptr %i.er monotonic, align 2
  %i.es = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %.012.i ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  store atomic i16 0, ptr %i.eu monotonic, align 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 66
  store atomic i16 0, ptr %i.ev monotonic, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 68
  store atomic i16 0, ptr %i.ew monotonic, align 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 70
  store atomic i16 0, ptr %i.ex monotonic, align 2
  %.0.ptr.1.i.i.4 = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  store atomic i16 0, ptr %.0.ptr.1.i.i.4 monotonic, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 74
  store atomic i16 0, ptr %i.ey monotonic, align 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 76
  store atomic i16 0, ptr %i.ez monotonic, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 78
  store atomic i16 0, ptr %i.fa monotonic, align 2
  %i.fb = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.012.i ; 8 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  store atomic i16 0, ptr %i.fd monotonic, align 2
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 82
  store atomic i16 0, ptr %i.fe monotonic, align 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 84
  store atomic i16 0, ptr %i.ff monotonic, align 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 86
  store atomic i16 0, ptr %i.fg monotonic, align 2
  %.0.ptr.1.i.i.5 = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  store atomic i16 0, ptr %.0.ptr.1.i.i.5 monotonic, align 2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 90
  store atomic i16 0, ptr %i.fh monotonic, align 2
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 92
  store atomic i16 0, ptr %i.fi monotonic, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 94
  store atomic i16 0, ptr %i.fj monotonic, align 2
  %i.fk = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %.012.i ; 8 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  store atomic i16 0, ptr %i.fm monotonic, align 2
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 98
  store atomic i16 0, ptr %i.fn monotonic, align 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 100
  store atomic i16 0, ptr %i.fo monotonic, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 102
  store atomic i16 0, ptr %i.fp monotonic, align 2
  %.0.ptr.1.i.i.6 = getelementptr inbounds nuw i8, ptr %i.fl, i64 104
  store atomic i16 0, ptr %.0.ptr.1.i.i.6 monotonic, align 2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 106
  store atomic i16 0, ptr %i.fq monotonic, align 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 108
  store atomic i16 0, ptr %i.fr monotonic, align 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 110
  store atomic i16 0, ptr %i.fs monotonic, align 2
  %i.ft = add nuw i64 %.012.i, 8                  ; 2 uses
  %i.fu = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %.012.i ; 8 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 112
  store atomic i16 0, ptr %i.fw monotonic, align 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 114
  store atomic i16 0, ptr %i.fx monotonic, align 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 116
  store atomic i16 0, ptr %i.fy monotonic, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 118
  store atomic i16 0, ptr %i.fz monotonic, align 2
  %.0.ptr.1.i.i.7 = getelementptr inbounds nuw i8, ptr %i.fv, i64 120
  store atomic i16 0, ptr %.0.ptr.1.i.i.7 monotonic, align 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 122
  store atomic i16 0, ptr %i.ga monotonic, align 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 124
  store atomic i16 0, ptr %i.gb monotonic, align 2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 126
  store atomic i16 0, ptr %i.gc monotonic, align 2
  %i.gd = icmp ult i64 %i.ft, %i.cu
  br i1 %i.gd, label %.lr.ph.i.new, label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit.loopexit, !llvm.loop !509

_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit.loopexit: ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.pre = load ptr, ptr %i.ch, align 8, !tbaa !220
  %.pre148 = load i64, ptr %i.cj, align 8, !tbaa !201 ; 2 uses
  %.pre149 = load i64, ptr %i.cl, align 16, !tbaa !202
  %.pre150 = add i64 %.pre148, 1
  br label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit

_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit: ; preds = %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre150, %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit.loopexit ], [ %i.cq, %bb.b ] ; 2 uses
  %i.ge = phi i64 [ %.pre149, %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit.loopexit ], [ %i.cm, %bb.b ] ; 3 uses
  %i.gf = phi i64 [ %.pre148, %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit.loopexit ], [ %i.ck, %bb.b ]
  %i.gg = phi ptr [ %.pre, %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit.loopexit ], [ %i.ci, %bb.b ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 -1238, ptr %i.a, align 4, !tbaa !219
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !514 ; 3 uses
  %i.gj = mul i64 %i.gi, %i.gf
  %i.gk = udiv i64 %i.gj, %i.ge                   ; 2 uses
  %i.gl = icmp eq i64 %.pre-phi, %i.ge
  br i1 %i.gl, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit
  %i.gm = mul i64 %i.gi, %.pre-phi
  %i.gn = udiv i64 %i.gm, %i.ge
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit
  %i.go = phi i64 [ %i.gn, %bb.c ], [ %i.gi, %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit ] ; 2 uses
  %i.gp = icmp ult i64 %i.gk, %i.go
  br i1 %i.gp, label %.lr.ph.i57, label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EE11clear_rangeEimm.exit

.lr.ph.i57:                                       ; preds = %bb.d
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i57
  %.011.i = phi i64 [ %i.gk, %.lr.ph.i57 ], [ %i.gr, %bb.e ] ; 2 uses
  %i.gr = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.gs = load ptr, ptr %i.gq, align 8, !tbaa !239
  %i.gt = getelementptr inbounds nuw [2048 x i8], ptr %i.gs, i64 %.011.i
  call void @_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEE4fillIiEEvRKT_(ptr noundef nonnull align 2 dereferenceable(2048) %i.gt, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.gu = icmp ult i64 %i.gr, %i.go
  br i1 %i.gu, label %bb.e, label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EE11clear_rangeEimm.exit, !llvm.loop !510

_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EE11clear_rangeEimm.exit: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 11419648
  store i16 0, ptr %i.gv, align 64, !tbaa !240
  br label %.preheader137.preheader

.loopexit138:                                     ; preds = %.preheader137
  %.not = icmp eq i64 %.046.add, 11419648
  br i1 %.not, label %bb.f, label %.preheader137.preheader

bb.f:                                             ; preds = %.loopexit138
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 933888 ; 2 uses
  br label %.preheader.preheader

.preheader137.preheader:                          ; preds = %.loopexit138, %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EE11clear_rangeEimm.exit
  %.046.idx141 = phi i64 [ 9322496, %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EE11clear_rangeEimm.exit ], [ %.046.add, %.loopexit138 ] ; 2 uses
  %.046.add = add nuw nsw i64 %.046.idx141, 131072 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.046.add
  %.046.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.046.idx141
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137, %.preheader137.preheader
  %.051140 = phi ptr [ %.046.ptr, %.preheader137.preheader ], [ %i.gy, %.preheader137 ] ; 65 uses
  store <32 x i16> splat (i16 8), ptr %.051140, align 2, !tbaa !242
  %.0.ptr.32.i.i = getelementptr inbounds nuw i8, ptr %.051140, i64 64
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i, align 2, !tbaa !242
  %.0.ptr10.i.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 128
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 192
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.1, align 2, !tbaa !242
  %.0.ptr10.i.2 = getelementptr inbounds nuw i8, ptr %.051140, i64 256
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.2, align 2, !tbaa !242
  %.0.ptr.32.i.i.2 = getelementptr inbounds nuw i8, ptr %.051140, i64 320
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.2, align 2, !tbaa !242
  %.0.ptr10.i.3 = getelementptr inbounds nuw i8, ptr %.051140, i64 384
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.3, align 2, !tbaa !242
  %.0.ptr.32.i.i.3 = getelementptr inbounds nuw i8, ptr %.051140, i64 448
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.3, align 2, !tbaa !242
  %.0.ptr10.i.4 = getelementptr inbounds nuw i8, ptr %.051140, i64 512
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.4, align 2, !tbaa !242
  %.0.ptr.32.i.i.4 = getelementptr inbounds nuw i8, ptr %.051140, i64 576
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.4, align 2, !tbaa !242
  %.0.ptr10.i.5 = getelementptr inbounds nuw i8, ptr %.051140, i64 640
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.5, align 2, !tbaa !242
  %.0.ptr.32.i.i.5 = getelementptr inbounds nuw i8, ptr %.051140, i64 704
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.5, align 2, !tbaa !242
  %.0.ptr10.i.6 = getelementptr inbounds nuw i8, ptr %.051140, i64 768
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.6, align 2, !tbaa !242
  %.0.ptr.32.i.i.6 = getelementptr inbounds nuw i8, ptr %.051140, i64 832
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.6, align 2, !tbaa !242
  %.0.ptr10.i.7 = getelementptr inbounds nuw i8, ptr %.051140, i64 896
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.7, align 2, !tbaa !242
  %.0.ptr.32.i.i.7 = getelementptr inbounds nuw i8, ptr %.051140, i64 960
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.7, align 2, !tbaa !242
  %.0.ptr10.i.8 = getelementptr inbounds nuw i8, ptr %.051140, i64 1024
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.8, align 2, !tbaa !242
  %.0.ptr.32.i.i.8 = getelementptr inbounds nuw i8, ptr %.051140, i64 1088
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.8, align 2, !tbaa !242
  %.0.ptr10.i.9 = getelementptr inbounds nuw i8, ptr %.051140, i64 1152
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.9, align 2, !tbaa !242
  %.0.ptr.32.i.i.9 = getelementptr inbounds nuw i8, ptr %.051140, i64 1216
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.9, align 2, !tbaa !242
  %.0.ptr10.i.10 = getelementptr inbounds nuw i8, ptr %.051140, i64 1280
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.10, align 2, !tbaa !242
  %.0.ptr.32.i.i.10 = getelementptr inbounds nuw i8, ptr %.051140, i64 1344
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.10, align 2, !tbaa !242
  %.0.ptr10.i.11 = getelementptr inbounds nuw i8, ptr %.051140, i64 1408
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.11, align 2, !tbaa !242
  %.0.ptr.32.i.i.11 = getelementptr inbounds nuw i8, ptr %.051140, i64 1472
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.11, align 2, !tbaa !242
  %.0.ptr10.i.12 = getelementptr inbounds nuw i8, ptr %.051140, i64 1536
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.12, align 2, !tbaa !242
  %.0.ptr.32.i.i.12 = getelementptr inbounds nuw i8, ptr %.051140, i64 1600
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.12, align 2, !tbaa !242
  %.0.ptr10.i.13 = getelementptr inbounds nuw i8, ptr %.051140, i64 1664
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.13, align 2, !tbaa !242
  %.0.ptr.32.i.i.13 = getelementptr inbounds nuw i8, ptr %.051140, i64 1728
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.13, align 2, !tbaa !242
  %.0.ptr10.i.14 = getelementptr inbounds nuw i8, ptr %.051140, i64 1792
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.14, align 2, !tbaa !242
  %.0.ptr.32.i.i.14 = getelementptr inbounds nuw i8, ptr %.051140, i64 1856
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.14, align 2, !tbaa !242
  %.0.ptr10.i.15 = getelementptr inbounds nuw i8, ptr %.051140, i64 1920
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.15, align 2, !tbaa !242
  %.0.ptr.32.i.i.15 = getelementptr inbounds nuw i8, ptr %.051140, i64 1984
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.15, align 2, !tbaa !242
  %i.gx = getelementptr inbounds nuw i8, ptr %.051140, i64 2048
  store <32 x i16> splat (i16 8), ptr %i.gx, align 2, !tbaa !242
  %.0.ptr.32.i.i.1165 = getelementptr inbounds nuw i8, ptr %.051140, i64 2112
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.1165, align 2, !tbaa !242
  %.0.ptr10.i.1.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2176
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.1.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.1.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2240
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.1.1, align 2, !tbaa !242
  %.0.ptr10.i.2.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2304
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.2.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.2.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2368
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.2.1, align 2, !tbaa !242
  %.0.ptr10.i.3.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2432
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.3.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.3.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2496
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.3.1, align 2, !tbaa !242
  %.0.ptr10.i.4.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2560
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.4.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.4.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2624
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.4.1, align 2, !tbaa !242
  %.0.ptr10.i.5.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2688
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.5.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.5.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2752
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.5.1, align 2, !tbaa !242
  %.0.ptr10.i.6.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2816
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.6.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.6.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2880
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.6.1, align 2, !tbaa !242
  %.0.ptr10.i.7.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 2944
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.7.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.7.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3008
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.7.1, align 2, !tbaa !242
  %.0.ptr10.i.8.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3072
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.8.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.8.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3136
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.8.1, align 2, !tbaa !242
  %.0.ptr10.i.9.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3200
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.9.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.9.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3264
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.9.1, align 2, !tbaa !242
  %.0.ptr10.i.10.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3328
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.10.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.10.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3392
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.10.1, align 2, !tbaa !242
  %.0.ptr10.i.11.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3456
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.11.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.11.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3520
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.11.1, align 2, !tbaa !242
  %.0.ptr10.i.12.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3584
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.12.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.12.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3648
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.12.1, align 2, !tbaa !242
  %.0.ptr10.i.13.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3712
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.13.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.13.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3776
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.13.1, align 2, !tbaa !242
  %.0.ptr10.i.14.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3840
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.14.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.14.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3904
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.14.1, align 2, !tbaa !242
  %.0.ptr10.i.15.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 3968
  store <32 x i16> splat (i16 8), ptr %.0.ptr10.i.15.1, align 2, !tbaa !242
  %.0.ptr.32.i.i.15.1 = getelementptr inbounds nuw i8, ptr %.051140, i64 4032
  store <32 x i16> splat (i16 8), ptr %.0.ptr.32.i.i.15.1, align 2, !tbaa !242
  %i.gy = getelementptr inbounds nuw i8, ptr %.051140, i64 4096 ; 2 uses
  %.not56.1 = icmp eq ptr %i.gy, %.ptr
  br i1 %.not56.1, label %.loopexit138, label %.preheader137

.loopexit:                                        ; preds = %.preheader
  %.not54 = icmp eq i64 %.048.add, 2097152
  br i1 %.not54, label %bb.g, label %.preheader.preheader

bb.g:                                             ; preds = %.loopexit
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 3031040 ; 2 uses
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %bb.g, %.loopexit.1
  %.048.idx144.1 = phi i64 [ 0, %bb.g ], [ %.048.add.1, %.loopexit.1 ] ; 2 uses
  %.048.add.1 = add nuw nsw i64 %.048.idx144.1, 131072 ; 3 uses
  %.ptr136.1 = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.048.add.1
  %.048.ptr.1 = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.048.idx144.1
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %.preheader.preheader.1
  %.047143.1 = phi ptr [ %.048.ptr.1, %.preheader.preheader.1 ], [ %i.hb, %.preheader.1 ] ; 65 uses
  store <32 x i16> splat (i16 -529), ptr %.047143.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 64
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 128
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 192
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.2 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 256
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.2, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.2 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 320
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.2, align 2, !tbaa !244
  %.0.ptr10.i60.1.3 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 384
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.3, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.3 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 448
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.3, align 2, !tbaa !244
  %.0.ptr10.i60.1.4 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 512
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.4, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.4 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 576
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.4, align 2, !tbaa !244
  %.0.ptr10.i60.1.5 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 640
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.5, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.5 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 704
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.5, align 2, !tbaa !244
  %.0.ptr10.i60.1.6 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 768
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.6, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.6 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 832
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.6, align 2, !tbaa !244
  %.0.ptr10.i60.1.7 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 896
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.7, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.7 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 960
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.7, align 2, !tbaa !244
  %.0.ptr10.i60.1.8 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1024
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.8, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.8 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1088
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.8, align 2, !tbaa !244
  %.0.ptr10.i60.1.9 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1152
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.9, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.9 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1216
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.9, align 2, !tbaa !244
  %.0.ptr10.i60.1.10 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1280
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.10, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.10 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1344
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.10, align 2, !tbaa !244
  %.0.ptr10.i60.1.11 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1408
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.11, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.11 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1472
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.11, align 2, !tbaa !244
  %.0.ptr10.i60.1.12 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1536
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.12, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.12 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1600
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.12, align 2, !tbaa !244
  %.0.ptr10.i60.1.13 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1664
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.13, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.13 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1728
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.13, align 2, !tbaa !244
  %.0.ptr10.i60.1.14 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1792
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.14, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.14 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1856
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.14, align 2, !tbaa !244
  %.0.ptr10.i60.1.15 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1920
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.15, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.15 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 1984
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.15, align 2, !tbaa !244
  %i.ha = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2048
  store <32 x i16> splat (i16 -529), ptr %i.ha, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.1176 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2112
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.1176, align 2, !tbaa !244
  %.0.ptr10.i60.1.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2176
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2240
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.2.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2304
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.2.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.2.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2368
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.2.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.3.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2432
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.3.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.3.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2496
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.3.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.4.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2560
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.4.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.4.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2624
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.4.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.5.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2688
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.5.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.5.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2752
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.5.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.6.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2816
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.6.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.6.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2880
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.6.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.7.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 2944
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.7.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.7.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3008
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.7.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.8.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3072
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.8.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.8.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3136
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.8.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.9.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3200
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.9.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.9.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3264
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.9.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.10.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3328
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.10.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.10.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3392
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.10.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.11.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3456
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.11.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.11.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3520
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.11.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.12.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3584
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.12.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.12.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3648
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.12.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.13.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3712
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.13.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.13.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3776
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.13.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.14.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3840
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.14.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.14.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3904
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.14.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.15.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 3968
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.15.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.15.1 = getelementptr inbounds nuw i8, ptr %.047143.1, i64 4032
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.15.1, align 2, !tbaa !244
  %i.hb = getelementptr inbounds nuw i8, ptr %.047143.1, i64 4096 ; 2 uses
  %.not55.1.1 = icmp eq ptr %i.hb, %.ptr136.1
  br i1 %.not55.1.1, label %.loopexit.1, label %.preheader.1

.loopexit.1:                                      ; preds = %.preheader.1
  %.not54.1 = icmp eq i64 %.048.add.1, 2097152
  br i1 %.not54.1, label %bb.h, label %.preheader.preheader.1

bb.h:                                             ; preds = %.loopexit.1
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 5128192 ; 2 uses
  br label %.preheader.preheader.1181

.preheader.preheader.1181:                        ; preds = %.loopexit.1217, %bb.h
  %.048.idx144.1177 = phi i64 [ 0, %bb.h ], [ %.048.add.1178, %.loopexit.1217 ] ; 2 uses
  %.048.add.1178 = add nuw nsw i64 %.048.idx144.1177, 131072 ; 3 uses
  %.ptr136.1179 = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.048.add.1178
  %.048.ptr.1180 = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.048.idx144.1177
  br label %.preheader.1183

.preheader.1183:                                  ; preds = %.preheader.1183, %.preheader.preheader.1181
  %.047143.1182 = phi ptr [ %.048.ptr.1180, %.preheader.preheader.1181 ], [ %i.he, %.preheader.1183 ] ; 65 uses
  store <32 x i16> splat (i16 -529), ptr %.047143.1182, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1184 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 64
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1184, align 2, !tbaa !244
  %.0.ptr10.i60.1167.1185 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 128
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1167.1185, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1168.1186 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 192
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1168.1186, align 2, !tbaa !244
  %.0.ptr10.i60.2.1187 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 256
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.2.1187, align 2, !tbaa !244
  %.0.ptr.32.i.i92.2.1188 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 320
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.2.1188, align 2, !tbaa !244
  %.0.ptr10.i60.3.1189 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 384
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.3.1189, align 2, !tbaa !244
  %.0.ptr.32.i.i92.3.1190 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 448
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.3.1190, align 2, !tbaa !244
  %.0.ptr10.i60.4.1191 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 512
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.4.1191, align 2, !tbaa !244
  %.0.ptr.32.i.i92.4.1192 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 576
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.4.1192, align 2, !tbaa !244
  %.0.ptr10.i60.5.1193 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 640
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.5.1193, align 2, !tbaa !244
  %.0.ptr.32.i.i92.5.1194 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 704
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.5.1194, align 2, !tbaa !244
  %.0.ptr10.i60.6.1195 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 768
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.6.1195, align 2, !tbaa !244
  %.0.ptr.32.i.i92.6.1196 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 832
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.6.1196, align 2, !tbaa !244
  %.0.ptr10.i60.7.1197 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 896
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.7.1197, align 2, !tbaa !244
  %.0.ptr.32.i.i92.7.1198 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 960
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.7.1198, align 2, !tbaa !244
  %.0.ptr10.i60.8.1199 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1024
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.8.1199, align 2, !tbaa !244
  %.0.ptr.32.i.i92.8.1200 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1088
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.8.1200, align 2, !tbaa !244
  %.0.ptr10.i60.9.1201 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1152
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.9.1201, align 2, !tbaa !244
  %.0.ptr.32.i.i92.9.1202 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1216
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.9.1202, align 2, !tbaa !244
  %.0.ptr10.i60.10.1203 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1280
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.10.1203, align 2, !tbaa !244
  %.0.ptr.32.i.i92.10.1204 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1344
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.10.1204, align 2, !tbaa !244
  %.0.ptr10.i60.11.1205 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1408
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.11.1205, align 2, !tbaa !244
  %.0.ptr.32.i.i92.11.1206 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1472
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.11.1206, align 2, !tbaa !244
  %.0.ptr10.i60.12.1207 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1536
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.12.1207, align 2, !tbaa !244
  %.0.ptr.32.i.i92.12.1208 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1600
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.12.1208, align 2, !tbaa !244
  %.0.ptr10.i60.13.1209 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1664
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.13.1209, align 2, !tbaa !244
  %.0.ptr.32.i.i92.13.1210 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1728
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.13.1210, align 2, !tbaa !244
  %.0.ptr10.i60.14.1211 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1792
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.14.1211, align 2, !tbaa !244
  %.0.ptr.32.i.i92.14.1212 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1856
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.14.1212, align 2, !tbaa !244
  %.0.ptr10.i60.15.1213 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1920
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.15.1213, align 2, !tbaa !244
  %.0.ptr.32.i.i92.15.1214 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 1984
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.15.1214, align 2, !tbaa !244
  %i.hd = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2048
  store <32 x i16> splat (i16 -529), ptr %i.hd, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1173.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2112
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1173.1, align 2, !tbaa !244
  %.0.ptr10.i60.1167.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2176
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1167.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1168.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2240
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1168.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.2.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2304
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.2.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.2.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2368
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.2.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.3.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2432
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.3.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.3.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2496
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.3.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.4.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2560
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.4.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.4.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2624
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.4.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.5.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2688
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.5.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.5.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2752
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.5.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.6.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2816
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.6.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.6.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2880
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.6.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.7.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 2944
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.7.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.7.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3008
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.7.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.8.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3072
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.8.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.8.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3136
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.8.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.9.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3200
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.9.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.9.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3264
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.9.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.10.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3328
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.10.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.10.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3392
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.10.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.11.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3456
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.11.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.11.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3520
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.11.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.12.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3584
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.12.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.12.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3648
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.12.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.13.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3712
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.13.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.13.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3776
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.13.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.14.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3840
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.14.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.14.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3904
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.14.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.15.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 3968
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.15.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.15.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 4032
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.15.1.1, align 2, !tbaa !244
  %i.he = getelementptr inbounds nuw i8, ptr %.047143.1182, i64 4096 ; 2 uses
  %.not55.1174.1 = icmp eq ptr %i.he, %.ptr136.1179
  br i1 %.not55.1174.1, label %.loopexit.1217, label %.preheader.1183

.loopexit.1217:                                   ; preds = %.preheader.1183
  %.not54.1216 = icmp eq i64 %.048.add.1178, 2097152
  br i1 %.not54.1216, label %bb.i, label %.preheader.preheader.1181

bb.i:                                             ; preds = %.loopexit.1217
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 7225344 ; 2 uses
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.loopexit.1.1, %bb.i
  %.048.idx144.1.1 = phi i64 [ 0, %bb.i ], [ %.048.add.1.1, %.loopexit.1.1 ] ; 2 uses
  %.048.add.1.1 = add nuw nsw i64 %.048.idx144.1.1, 131072 ; 3 uses
  %.ptr136.1.1 = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.048.add.1.1
  %.048.ptr.1.1 = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.048.idx144.1.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1.1, %.preheader.preheader.1.1
  %.047143.1.1 = phi ptr [ %.048.ptr.1.1, %.preheader.preheader.1.1 ], [ %i.hh, %.preheader.1.1 ] ; 65 uses
  store <32 x i16> splat (i16 -529), ptr %.047143.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.1218 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 64
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.1218, align 2, !tbaa !244
  %.0.ptr10.i60.1.1.1219 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 128
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.1.1219, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.1.1220 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 192
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.1.1220, align 2, !tbaa !244
  %.0.ptr10.i60.1.2.1221 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 256
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.2.1221, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.2.1222 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 320
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.2.1222, align 2, !tbaa !244
  %.0.ptr10.i60.1.3.1223 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 384
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.3.1223, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.3.1224 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 448
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.3.1224, align 2, !tbaa !244
  %.0.ptr10.i60.1.4.1225 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 512
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.4.1225, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.4.1226 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 576
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.4.1226, align 2, !tbaa !244
  %.0.ptr10.i60.1.5.1227 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 640
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.5.1227, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.5.1228 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 704
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.5.1228, align 2, !tbaa !244
  %.0.ptr10.i60.1.6.1229 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 768
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.6.1229, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.6.1230 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 832
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.6.1230, align 2, !tbaa !244
  %.0.ptr10.i60.1.7.1231 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 896
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.7.1231, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.7.1232 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 960
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.7.1232, align 2, !tbaa !244
  %.0.ptr10.i60.1.8.1233 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1024
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.8.1233, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.8.1234 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1088
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.8.1234, align 2, !tbaa !244
  %.0.ptr10.i60.1.9.1235 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1152
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.9.1235, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.9.1236 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1216
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.9.1236, align 2, !tbaa !244
  %.0.ptr10.i60.1.10.1237 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1280
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.10.1237, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.10.1238 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1344
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.10.1238, align 2, !tbaa !244
  %.0.ptr10.i60.1.11.1239 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1408
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.11.1239, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.11.1240 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1472
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.11.1240, align 2, !tbaa !244
  %.0.ptr10.i60.1.12.1241 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1536
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.12.1241, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.12.1242 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1600
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.12.1242, align 2, !tbaa !244
  %.0.ptr10.i60.1.13.1243 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1664
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.13.1243, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.13.1244 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1728
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.13.1244, align 2, !tbaa !244
  %.0.ptr10.i60.1.14.1245 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1792
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.14.1245, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.14.1246 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1856
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.14.1246, align 2, !tbaa !244
  %.0.ptr10.i60.1.15.1247 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1920
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.15.1247, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.15.1248 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 1984
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.15.1248, align 2, !tbaa !244
  %i.hg = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2048
  store <32 x i16> splat (i16 -529), ptr %i.hg, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.1176.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2112
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.1176.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.1.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2176
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.1.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.1.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2240
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.1.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.2.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2304
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.2.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.2.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2368
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.2.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.3.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2432
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.3.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.3.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2496
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.3.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.4.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2560
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.4.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.4.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2624
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.4.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.5.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2688
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.5.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.5.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2752
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.5.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.6.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2816
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.6.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.6.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2880
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.6.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.7.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 2944
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.7.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.7.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3008
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.7.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.8.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3072
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.8.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.8.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3136
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.8.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.9.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3200
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.9.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.9.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3264
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.9.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.10.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3328
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.10.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.10.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3392
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.10.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.11.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3456
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.11.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.11.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3520
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.11.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.12.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3584
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.12.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.12.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3648
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.12.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.13.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3712
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.13.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.13.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3776
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.13.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.14.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3840
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.14.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.14.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3904
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.14.1.1, align 2, !tbaa !244
  %.0.ptr10.i60.1.15.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 3968
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1.15.1.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1.15.1.1 = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 4032
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1.15.1.1, align 2, !tbaa !244
  %i.hh = getelementptr inbounds nuw i8, ptr %.047143.1.1, i64 4096 ; 2 uses
  %.not55.1.1.1 = icmp eq ptr %i.hh, %.ptr136.1.1
  br i1 %.not55.1.1.1, label %.loopexit.1.1, label %.preheader.1.1

.loopexit.1.1:                                    ; preds = %.preheader.1.1
  %.not54.1.1 = icmp eq i64 %.048.add.1.1, 2097152
  br i1 %.not54.1.1, label %bb.j, label %.preheader.preheader.1.1

bb.j:                                             ; preds = %.loopexit.1.1
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 11421152
  br label %bb.o

.preheader.preheader:                             ; preds = %.loopexit, %bb.f
  %.048.idx144 = phi i64 [ 0, %bb.f ], [ %.048.add, %.loopexit ] ; 2 uses
  %.048.add = add nuw nsw i64 %.048.idx144, 131072 ; 3 uses
  %.ptr136 = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.048.add
  %.048.ptr = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.048.idx144
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.047143 = phi ptr [ %.048.ptr, %.preheader.preheader ], [ %i.hk, %.preheader ] ; 65 uses
  store <32 x i16> splat (i16 -529), ptr %.047143, align 2, !tbaa !244
  %.0.ptr.32.i.i92 = getelementptr inbounds nuw i8, ptr %.047143, i64 64
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92, align 2, !tbaa !244
  %.0.ptr10.i60.1167 = getelementptr inbounds nuw i8, ptr %.047143, i64 128
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1167, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1168 = getelementptr inbounds nuw i8, ptr %.047143, i64 192
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1168, align 2, !tbaa !244
  %.0.ptr10.i60.2 = getelementptr inbounds nuw i8, ptr %.047143, i64 256
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.2, align 2, !tbaa !244
  %.0.ptr.32.i.i92.2 = getelementptr inbounds nuw i8, ptr %.047143, i64 320
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.2, align 2, !tbaa !244
  %.0.ptr10.i60.3 = getelementptr inbounds nuw i8, ptr %.047143, i64 384
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.3, align 2, !tbaa !244
  %.0.ptr.32.i.i92.3 = getelementptr inbounds nuw i8, ptr %.047143, i64 448
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.3, align 2, !tbaa !244
  %.0.ptr10.i60.4 = getelementptr inbounds nuw i8, ptr %.047143, i64 512
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.4, align 2, !tbaa !244
  %.0.ptr.32.i.i92.4 = getelementptr inbounds nuw i8, ptr %.047143, i64 576
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.4, align 2, !tbaa !244
  %.0.ptr10.i60.5 = getelementptr inbounds nuw i8, ptr %.047143, i64 640
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.5, align 2, !tbaa !244
  %.0.ptr.32.i.i92.5 = getelementptr inbounds nuw i8, ptr %.047143, i64 704
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.5, align 2, !tbaa !244
  %.0.ptr10.i60.6 = getelementptr inbounds nuw i8, ptr %.047143, i64 768
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.6, align 2, !tbaa !244
  %.0.ptr.32.i.i92.6 = getelementptr inbounds nuw i8, ptr %.047143, i64 832
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.6, align 2, !tbaa !244
  %.0.ptr10.i60.7 = getelementptr inbounds nuw i8, ptr %.047143, i64 896
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.7, align 2, !tbaa !244
  %.0.ptr.32.i.i92.7 = getelementptr inbounds nuw i8, ptr %.047143, i64 960
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.7, align 2, !tbaa !244
  %.0.ptr10.i60.8 = getelementptr inbounds nuw i8, ptr %.047143, i64 1024
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.8, align 2, !tbaa !244
  %.0.ptr.32.i.i92.8 = getelementptr inbounds nuw i8, ptr %.047143, i64 1088
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.8, align 2, !tbaa !244
  %.0.ptr10.i60.9 = getelementptr inbounds nuw i8, ptr %.047143, i64 1152
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.9, align 2, !tbaa !244
  %.0.ptr.32.i.i92.9 = getelementptr inbounds nuw i8, ptr %.047143, i64 1216
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.9, align 2, !tbaa !244
  %.0.ptr10.i60.10 = getelementptr inbounds nuw i8, ptr %.047143, i64 1280
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.10, align 2, !tbaa !244
  %.0.ptr.32.i.i92.10 = getelementptr inbounds nuw i8, ptr %.047143, i64 1344
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.10, align 2, !tbaa !244
  %.0.ptr10.i60.11 = getelementptr inbounds nuw i8, ptr %.047143, i64 1408
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.11, align 2, !tbaa !244
  %.0.ptr.32.i.i92.11 = getelementptr inbounds nuw i8, ptr %.047143, i64 1472
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.11, align 2, !tbaa !244
  %.0.ptr10.i60.12 = getelementptr inbounds nuw i8, ptr %.047143, i64 1536
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.12, align 2, !tbaa !244
  %.0.ptr.32.i.i92.12 = getelementptr inbounds nuw i8, ptr %.047143, i64 1600
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.12, align 2, !tbaa !244
  %.0.ptr10.i60.13 = getelementptr inbounds nuw i8, ptr %.047143, i64 1664
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.13, align 2, !tbaa !244
  %.0.ptr.32.i.i92.13 = getelementptr inbounds nuw i8, ptr %.047143, i64 1728
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.13, align 2, !tbaa !244
  %.0.ptr10.i60.14 = getelementptr inbounds nuw i8, ptr %.047143, i64 1792
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.14, align 2, !tbaa !244
  %.0.ptr.32.i.i92.14 = getelementptr inbounds nuw i8, ptr %.047143, i64 1856
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.14, align 2, !tbaa !244
  %.0.ptr10.i60.15 = getelementptr inbounds nuw i8, ptr %.047143, i64 1920
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.15, align 2, !tbaa !244
  %.0.ptr.32.i.i92.15 = getelementptr inbounds nuw i8, ptr %.047143, i64 1984
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.15, align 2, !tbaa !244
  %i.hj = getelementptr inbounds nuw i8, ptr %.047143, i64 2048
  store <32 x i16> splat (i16 -529), ptr %i.hj, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1173 = getelementptr inbounds nuw i8, ptr %.047143, i64 2112
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1173, align 2, !tbaa !244
  %.0.ptr10.i60.1167.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2176
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.1167.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.1168.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2240
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.1168.1, align 2, !tbaa !244
  %.0.ptr10.i60.2.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2304
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.2.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.2.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2368
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.2.1, align 2, !tbaa !244
  %.0.ptr10.i60.3.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2432
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.3.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.3.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2496
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.3.1, align 2, !tbaa !244
  %.0.ptr10.i60.4.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2560
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.4.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.4.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2624
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.4.1, align 2, !tbaa !244
  %.0.ptr10.i60.5.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2688
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.5.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.5.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2752
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.5.1, align 2, !tbaa !244
  %.0.ptr10.i60.6.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2816
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.6.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.6.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2880
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.6.1, align 2, !tbaa !244
  %.0.ptr10.i60.7.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 2944
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.7.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.7.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3008
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.7.1, align 2, !tbaa !244
  %.0.ptr10.i60.8.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3072
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.8.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.8.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3136
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.8.1, align 2, !tbaa !244
  %.0.ptr10.i60.9.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3200
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.9.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.9.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3264
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.9.1, align 2, !tbaa !244
  %.0.ptr10.i60.10.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3328
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.10.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.10.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3392
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.10.1, align 2, !tbaa !244
  %.0.ptr10.i60.11.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3456
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.11.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.11.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3520
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.11.1, align 2, !tbaa !244
  %.0.ptr10.i60.12.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3584
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.12.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.12.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3648
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.12.1, align 2, !tbaa !244
  %.0.ptr10.i60.13.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3712
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.13.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.13.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3776
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.13.1, align 2, !tbaa !244
  %.0.ptr10.i60.14.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3840
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.14.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.14.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3904
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.14.1, align 2, !tbaa !244
  %.0.ptr10.i60.15.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 3968
  store <32 x i16> splat (i16 -529), ptr %.0.ptr10.i60.15.1, align 2, !tbaa !244
  %.0.ptr.32.i.i92.15.1 = getelementptr inbounds nuw i8, ptr %.047143, i64 4032
  store <32 x i16> splat (i16 -529), ptr %.0.ptr.32.i.i92.15.1, align 2, !tbaa !244
  %i.hk = getelementptr inbounds nuw i8, ptr %.047143, i64 4096 ; 2 uses
  %.not55.1174 = icmp eq ptr %i.hk, %.ptr136
  br i1 %.not55.1174, label %.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.o
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 13951616 ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.hn = load ptr, ptr %i.hm, align 16, !tbaa !245, !nonnull !141, !align !142 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload = load i64, ptr %i.ho, align 8, !tbaa !124 ; 2 uses
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.hn, i64 noundef %.sroa.0.0.copyload)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !207
  %i.hr = getelementptr inbounds nuw [160 x i8], ptr %i.hq, i64 %.sroa.0.0.copyload ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 152
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !209
  switch i8 %i.ht, label %bb.n [
    i8 -1, label %bb.l
    i8 2, label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit
    i8 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  call void @abort() #36
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  br label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit

bb.n:                                             ; preds = %bb.k
  unreachable

_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit: ; preds = %bb.k, %bb.m
  %.0.i.i.i.in.i.i = phi ptr [ %i.hu, %bb.m ], [ %i.hr, %bb.k ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i, align 8, !tbaa !211 ; 17 uses
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i, %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit
  %.016.idx20.i.i = phi i64 [ 0, %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit ], [ %.016.add.i.i.7, %.loopexit.i.i ] ; 9 uses
  %.016.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.016.idx20.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.016.ptr.i.i, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.hv = getelementptr inbounds nuw i8, ptr %.016.ptr.i.i, i64 2048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hv, i8 0, i64 128, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %.016.ptr.i.i, i64 2176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.hw, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.hx = getelementptr inbounds nuw i8, ptr %.016.ptr.i.i, i64 4224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hx, i8 0, i64 128, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.016.idx20.i.i ; 4 uses
  %.016.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.hy, i64 4352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.016.ptr.i.i.1, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 6400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hz, i8 0, i64 128, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 6528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.ia, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 8576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ib, i8 0, i64 128, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.016.idx20.i.i ; 4 uses
  %.016.ptr.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ic, i64 8704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.016.ptr.i.i.2, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 10752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.id, i8 0, i64 128, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 10880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.ie, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 12928
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.if, i8 0, i64 128, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.016.idx20.i.i ; 4 uses
  %.016.ptr.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ig, i64 13056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.016.ptr.i.i.3, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 15104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ih, i8 0, i64 128, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 15232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.ii, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 17280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ij, i8 0, i64 128, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.016.idx20.i.i ; 4 uses
  %.016.ptr.i.i.4 = getelementptr inbounds nuw i8, ptr %i.ik, i64 17408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.016.ptr.i.i.4, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 19456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.il, i8 0, i64 128, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 19584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.im, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 21632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.in, i8 0, i64 128, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.016.idx20.i.i ; 4 uses
  %.016.ptr.i.i.5 = getelementptr inbounds nuw i8, ptr %i.io, i64 21760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.016.ptr.i.i.5, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 23808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ip, i8 0, i64 128, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 23936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.iq, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 25984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ir, i8 0, i64 128, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.016.idx20.i.i ; 4 uses
  %.016.ptr.i.i.6 = getelementptr inbounds nuw i8, ptr %i.is, i64 26112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.016.ptr.i.i.6, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 28160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.it, i8 0, i64 128, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 28288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.iu, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 30336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.iv, i8 0, i64 128, i1 false)
  %.016.add.i.i.7 = add nuw nsw i64 %.016.idx20.i.i, 34816 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.016.idx20.i.i ; 4 uses
  %.016.ptr.i.i.7 = getelementptr inbounds nuw i8, ptr %i.iw, i64 30464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.016.ptr.i.i.7, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ix, i8 0, i64 128, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 32640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.iy, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !213
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 34688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.iz, i8 0, i64 128, i1 false)
  %.not.i.i126.7 = icmp eq i64 %.016.add.i.i.7, 278528
  br i1 %.not.i.i126.7, label %_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EE5clearINS1_7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEEEEEvRKT_.exit.i, label %.loopexit.i.i

_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EE5clearINS1_7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEEEEEvRKT_.exit.i: ; preds = %.loopexit.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 14230144 ; 8 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 131331904 ; 16 uses
  br label %.loopexit.i3.i

.loopexit.i3.i:                                   ; preds = %.loopexit.i3.i, %_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EE5clearINS1_7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEEEEEvRKT_.exit.i
  %.016.idx20.i4.i = phi i64 [ 0, %_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EE5clearINS1_7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEEEEEvRKT_.exit.i ], [ %.016.add.i5.i.7, %.loopexit.i3.i ] ; 9 uses
  %.016.ptr.i6.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.016.idx20.i4.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.016.ptr.i6.i, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.jc = getelementptr inbounds nuw i8, ptr %.016.ptr.i6.i, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.jc, i8 0, i64 128, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %.016.ptr.i6.i, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.jd, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.je = getelementptr inbounds nuw i8, ptr %.016.ptr.i6.i, i64 640
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.je, i8 0, i64 128, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.016.idx20.i4.i ; 4 uses
  %.016.ptr.i6.i.1 = getelementptr inbounds nuw i8, ptr %i.jf, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.016.ptr.i6.i.1, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.jg, i8 0, i64 128, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.jh, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 1408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ji, i8 0, i64 128, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.016.idx20.i4.i ; 4 uses
  %.016.ptr.i6.i.2 = getelementptr inbounds nuw i8, ptr %i.jj, i64 1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.016.ptr.i6.i.2, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.jk, i8 0, i64 128, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 1920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.jl, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 2176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.jm, i8 0, i64 128, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.016.idx20.i4.i ; 4 uses
  %.016.ptr.i6.i.3 = getelementptr inbounds nuw i8, ptr %i.jn, i64 2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.016.ptr.i6.i.3, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 2560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.jo, i8 0, i64 128, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 2688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.jp, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 2944
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.jq, i8 0, i64 128, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.016.idx20.i4.i ; 4 uses
  %.016.ptr.i6.i.4 = getelementptr inbounds nuw i8, ptr %i.jr, i64 3072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.016.ptr.i6.i.4, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 3328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.js, i8 0, i64 128, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 3456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.jt, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 3712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ju, i8 0, i64 128, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.016.idx20.i4.i ; 4 uses
  %.016.ptr.i6.i.5 = getelementptr inbounds nuw i8, ptr %i.jv, i64 3840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.016.ptr.i6.i.5, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.jw, i8 0, i64 128, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 4224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.jx, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 4480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.jy, i8 0, i64 128, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.016.idx20.i4.i ; 4 uses
  %.016.ptr.i6.i.6 = getelementptr inbounds nuw i8, ptr %i.jz, i64 4608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.016.ptr.i6.i.6, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ka, i8 0, i64 128, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 4992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.kb, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 5248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.kc, i8 0, i64 128, i1 false)
  %.016.add.i5.i.7 = add nuw nsw i64 %.016.idx20.i4.i, 6144 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.016.idx20.i4.i ; 4 uses
  %.016.ptr.i6.i.7 = getelementptr inbounds nuw i8, ptr %i.kd, i64 5376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.016.ptr.i6.i.7, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 5632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ke, i8 0, i64 128, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 5760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.kf, ptr noundef nonnull align 64 dereferenceable(6517429) %i.jb, i64 256, i1 false), !tbaa.struct !214
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 6016
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.kg, i8 0, i64 128, i1 false)
  %.not.i7.i.7 = icmp eq i64 %.016.add.i5.i.7, 49152
  br i1 %.not.i7.i.7, label %_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5clearINS1_8NetworksEEEvRKT_.exit, label %.loopexit.i3.i

_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5clearINS1_8NetworksEEEvRKT_.exit: ; preds = %.loopexit.i3.i
  ret void

end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search13SearchManager2pvERNS0_6WorkerERKNS_10ThreadPoolERKNS_18TranspositionTableEi:._crit_edge.i.i
  store ptr %i.ax, ptr %9, align 8, !tbaa !295
  store i64 0, ptr %i.ay, align 8, !tbaa !297
  store i8 0, ptr %i.ax, align 8, !tbaa !212
  br label %.critedge

bb.n:                                             ; preds = %._crit_edge.i.i96
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !219
  call void @_ZN9Stockfish9UCIEngine3wdlB5cxx11EiRKNS_8PositionE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i32 noundef %i.eg, ptr noundef nonnull align 8 dereferenceable(1048) %i.d) #32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %._crit_edge.i.i98
  %i.eh = load ptr, ptr %10, align 8, !tbaa !298  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.av
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %.critedge
  %i.ej = load i64, ptr %i.av, align 8, !tbaa !212
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.el = load ptr, ptr %i.c, align 8, !tbaa !301
  %i.em = getelementptr inbounds nuw [72 x i8], ptr %i.el, i64 %.082138 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.eo = load i8, ptr %i.en, align 4, !tbaa !259, !range !292, !noundef !141
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 29
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !260, !range !292, !noundef !141
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = select i1 %i.es, ptr @.str.12, ptr @.str.10
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.o
  %i.eu = phi ptr [ %i.et, %bb.o ], [ @.str.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store i32 0, ptr %i.az, align 4
  store i8 0, ptr %i.ba, align 4, !tbaa !559
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  store i32 %.sroa.speculated122., ptr %11, align 8, !tbaa !286
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !261
  store i32 %i.ew, ptr %i.bd, align 8, !tbaa !561
  %i.ex = add nuw i64 %.082138, 1                 ; 2 uses
  store i64 %i.ex, ptr %i.be, align 8, !tbaa !562
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.ey = load i32, ptr %i.a, align 4, !tbaa !219
  call void @_ZN9Stockfish5ScoreC1EiRKNS_8PositionE(ptr noundef nonnull align 4 dereferenceable(12) %12, i32 noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(1048) %i.d) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %12, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.ez = load ptr, ptr %9, align 8, !tbaa !298
  %i.fa = load i64, ptr %i.ay, align 8, !tbaa !297
  store i64 %i.fa, ptr %i.bb, align 8, !tbaa !124
  store ptr %i.ez, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !333
  br i1 %i.cg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eu) #32
  store i64 %i.fb, ptr %i.bf, align 8, !tbaa !124
  store ptr %i.eu, ptr %.sroa.4.0..sroa_idx115, align 8, !tbaa !333
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fc = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #32
  %i.fd = sdiv i64 %i.fc, 1000000
  %i.fe = load i64, ptr %i.bg, align 8, !tbaa !330
  %i.ff = sub nsw i64 %i.fd, %i.fe
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ff, i64 1) ; 2 uses
  store i64 %.sroa.speculated, ptr %i.bh, align 8, !tbaa !563
  store i64 %i.b, ptr %i.bi, align 8, !tbaa !564
  %i.fg = udiv i64 %i.bj, %.sroa.speculated
  store i64 %i.fg, ptr %i.bk, align 8, !tbaa !565
  store i64 %i.ak, ptr %i.bl, align 8, !tbaa !566
  %i.fh = load ptr, ptr %6, align 8, !tbaa !298
  %i.fi = load i64, ptr %i.ap, align 8, !tbaa !297
  store i64 %i.fi, ptr %i.bc, align 8, !tbaa !124
  store ptr %i.fh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !333
  %i.fj = call noundef i32 @_ZNK9Stockfish18TranspositionTable8hashfullEi(ptr noundef nonnull align 8 dereferenceable(17) %3, i32 noundef 0) #32
  store i32 %i.fj, ptr %i.bm, align 8, !tbaa !567
  %i.fk = load ptr, ptr %i.bn, align 8, !tbaa !276, !nonnull !141, !align !142 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !290
  %.not.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i, label %bb.s, label %_ZNKSt8functionIFvRKN9Stockfish6Search8InfoFullEEEclES4_.exit

bb.s:                                             ; preds = %bb.r
  call void @_ZSt25__throw_bad_function_callv() #36
  unreachable

_ZNKSt8functionIFvRKN9Stockfish6Search8InfoFullEEEclES4_.exit: ; preds = %bb.r
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !569
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(116) %11) #32, !inline_history !554
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.fq = load ptr, ptr %9, align 8, !tbaa !298   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.ax
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNKSt8functionIFvRKN9Stockfish6Search8InfoFullEEEclES4_.exit
  %i.fs = load i64, ptr %i.ax, align 8, !tbaa !212
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNKSt8functionIFvRKN9Stockfish6Search8InfoFullEEEclES4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.fu = load ptr, ptr %6, align 8, !tbaa !298   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.ao
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.fw = load i64, ptr %i.ao, align 8, !tbaa !212
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.pre-phi = phi i64 [ %.pre145, %._crit_edge144 ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ] ; 2 uses
  %exitcond.not = icmp eq i64 %.pre-phi, %.sroa.speculated127
  br i1 %exitcond.not, label %._crit_edge141, label %bb.c, !llvm.loop !555
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN9Stockfish6Search8RootMove22extract_ponder_from_ttERKNS_18TranspositionTableERNS_8PositionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(1048) %2) local_unnamed_addr #4 align 2 !guid !571 {
bb.a:
  %3 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %4 = alloca %"class.std::tuple.201", align 8    ; 5 uses
  %5 = alloca %"struct.Stockfish::MoveList", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.c = load i16, ptr %i.b, align 2, !tbaa !303  ; 3 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 632
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1016
  store i64 0, ptr %i.f, align 8, !tbaa !152
  %i.g = tail call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %i.c) #32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 622
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %i.c, ptr noundef nonnull align 8 dereferenceable(192) %3, i1 noundef zeroext %i.g, ptr noundef nonnull align 1 dereferenceable(7) %i.h, ptr noundef nonnull align 8 dereferenceable(416) %i.e, ptr noundef nonnull %1, ptr noundef null) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !334  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !335  ; 2 uses
  %i.o = icmp slt i32 %i.n, 14
  br i1 %i.o, label %_ZNK9Stockfish8Position3keyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.n, -14
  %i.q = lshr i32 %i.p, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul i64 %i.r, 6364136223846793005
  %i.t = add i64 %i.s, 1442695040888963407
  %i.u = xor i64 %i.t, %i.l
  br label %_ZNK9Stockfish8Position3keyEv.exit

_ZNK9Stockfish8Position3keyEv.exit:               ; preds = %bb.b, %bb.c
  %i.v = phi i64 [ %i.u, %bb.c ], [ %i.l, %bb.b ]
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %4, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %i.v) #32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.w, align 4, !tbaa !336, !range !292, !noundef !141
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.aa = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %5) #32 ; 2 uses
  %.sroa.01.0.copyload = load i16, ptr %i.x, align 8, !tbaa !265 ; 8 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = ptrtoint ptr %5 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = ashr i64 %i.ad, 3                       ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.ag = and i64 %i.ad, -8
  %scevgep.i.i.i.i = getelementptr i8, ptr %5, i64 %i.ag ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.at, %bb.i ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %5, %.lr.ph.i.i.i.i ], [ %i.as, %bb.i ] ; 9 uses
  %i.ah = load i16, ptr %.02946.i.i.i.i, align 2, !tbaa !303
  %i.ai = icmp eq i16 %i.ah, %.sroa.01.0.copyload
  br i1 %i.ai, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !303
  %i.al = icmp eq i16 %i.ak, %.sroa.01.0.copyload
  br i1 %i.al, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !303
  %i.ao = icmp eq i16 %i.an, %.sroa.01.0.copyload
  br i1 %i.ao, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 6
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !303
  %i.ar = icmp eq i16 %i.aq, %.sroa.01.0.copyload
  br i1 %i.ar, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.at = add nsw i64 %.047.i.i.i.i, -1
  %i.au = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.au, label %bb.e, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !570

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %.pre54.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre55.i.i.i.i = sub i64 %i.ab, %.pre54.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.d
  %.pre-phi56.i.i.i.i = phi i64 [ %.pre55.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ad, %bb.d ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %5, %bb.d ] ; 5 uses
  %i.av = ashr exact i64 %.pre-phi56.i.i.i.i, 1
  switch i64 %i.av, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.thread [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = load i16, ptr %.029.lcssa.i.i.i.i, align 2, !tbaa !303
  %i.ax = icmp eq i16 %i.aw, %.sroa.01.0.copyload
  br i1 %i.ax, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ay, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.az = load i16, ptr %.1.i.i.i.i, align 2, !tbaa !303
  %i.ba = icmp eq i16 %i.az, %.sroa.01.0.copyload
  br i1 %i.ba, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.bb, %bb.l ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = load i16, ptr %.2.i.i.i.i, align 2, !tbaa !303
  %i.bd = icmp eq i16 %i.bc, %.sroa.01.0.copyload
  br i1 %i.bd, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.thread

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.thread: ; preds = %._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit: ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit32: ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit34: ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 6
  br label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit: ; preds = %bb.e, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit32, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit34, %bb.j, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.j ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.bg, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit34 ], [ %i.bf, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit32 ], [ %i.be, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.e ]
  %.not = icmp eq ptr %.028.i.i.i.i, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %.not, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !266 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !264
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 %.sroa.01.0.copyload, ptr %i.bi, align 2, !tbaa !265
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !266
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !263 ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775806
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #36
  unreachable

_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add i64 %.sroa.speculated.i.i.i, %i.br  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 4611686018427387903)
  %i.bv = select i1 %i.bt, i64 4611686018427387903, i64 %i.bu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 1
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #35 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  %i.bz = load i16, ptr %i.x, align 8, !tbaa !265
  store i16 %i.bz, ptr %i.by, align 2, !tbaa !265
  %i.ca = icmp sgt i64 %i.bp, 0
  br i1 %i.ca, label %bb.q, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bx, ptr align 2 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.q, %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %.not.i17.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !264
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.ce) #37
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !263
  store ptr %i.cb, ptr %i.bh, align 8, !tbaa !266
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cf, ptr %i.bj, align 8, !tbaa !264
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.n, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.thread, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, %_ZNK9Stockfish8Position3keyEv.exit
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !263
  %.sroa.0.0.copyload = load i16, ptr %i.cg, align 2, !tbaa !265
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.0.0.copyload) #32
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !266
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ugt i64 %i.cm, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit
  %.0 = phi i1 [ %i.cn, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i1 %.0
}

declare void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i16, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 !guid !579 {
bb.a:
  %7 = alloca [247 x %"class.Stockfish::Move"], align 16 ; 4 uses
  %8 = alloca %"struct.Stockfish::StateInfo", align 8 ; 5 uses
  %9 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %10 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %11 = alloca %"class.std::tuple.201", align 8   ; 15 uses
  %12 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %i.a = alloca [6 x ptr], align 16               ; 8 uses
  %13 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %14 = alloca %"struct.Stockfish::Search::InfoIteration", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = icmp slt i32 %5, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.fi

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated672 = tail call i32 @llvm.umin.i32(i32 %5, i32 245)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !338
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
end_hunk_1
