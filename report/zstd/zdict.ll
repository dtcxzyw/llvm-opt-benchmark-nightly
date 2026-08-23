Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_trainFromBuffer_legacy:bb.a
  br i1 %.not.16.i.i.i, label %.preheader312.17.i.i.i, label %bb.ah

.preheader312.17.i.i.i:                           ; preds = %.preheader312.16.i.i.i
  %i.ob = load i32, ptr %i.eg, align 8, !tbaa !8
  %.not.17.i.i.i = icmp ult i32 %i.ob, %spec.store.select.i.i
  br i1 %.not.17.i.i.i, label %.preheader312.18.i.i.i, label %bb.ah

.preheader312.18.i.i.i:                           ; preds = %.preheader312.17.i.i.i
  %i.oc = load i32, ptr %i.eh, align 4, !tbaa !8
  %.not.18.i.i.i = icmp ult i32 %i.oc, %spec.store.select.i.i
  br i1 %.not.18.i.i.i, label %.preheader312.19.i.i.i, label %bb.ah

.preheader312.19.i.i.i:                           ; preds = %.preheader312.18.i.i.i
  %i.od = load i32, ptr %i.ei, align 16, !tbaa !8
  %.not.19.i.i.i = icmp ult i32 %i.od, %spec.store.select.i.i
  br i1 %.not.19.i.i.i, label %.preheader312.20.i.i.i, label %bb.ah

.preheader312.20.i.i.i:                           ; preds = %.preheader312.19.i.i.i
  %i.oe = load i32, ptr %i.ej, align 4, !tbaa !8
  %.not.20.i.i.i = icmp ult i32 %i.oe, %spec.store.select.i.i
  br i1 %.not.20.i.i.i, label %.preheader312.21.i.i.i, label %bb.ah

.preheader312.21.i.i.i:                           ; preds = %.preheader312.20.i.i.i
  %i.of = load i32, ptr %i.ek, align 8, !tbaa !8
  %.not.21.i.i.i = icmp ult i32 %i.of, %spec.store.select.i.i
  br i1 %.not.21.i.i.i, label %.preheader312.22.i.i.i, label %bb.ah

.preheader312.22.i.i.i:                           ; preds = %.preheader312.21.i.i.i
  %i.og = load i32, ptr %i.el, align 4, !tbaa !8
  %.not.22.i.i.i = icmp ult i32 %i.og, %spec.store.select.i.i
  br i1 %.not.22.i.i.i, label %.preheader312.23.i.i.i, label %bb.ah

.preheader312.23.i.i.i:                           ; preds = %.preheader312.22.i.i.i
  %i.oh = load i32, ptr %i.em, align 16, !tbaa !8
  %.not.23.i.i.i = icmp ult i32 %i.oh, %spec.store.select.i.i
  br i1 %.not.23.i.i.i, label %.preheader312.24.i.i.i, label %bb.ah

.preheader312.24.i.i.i:                           ; preds = %.preheader312.23.i.i.i
  %i.oi = load i32, ptr %i.en, align 4, !tbaa !8
  %.not.24.i.i.i = icmp ult i32 %i.oi, %spec.store.select.i.i
  br i1 %.not.24.i.i.i, label %.preheader312.25.i.i.i, label %bb.ah

.preheader312.25.i.i.i:                           ; preds = %.preheader312.24.i.i.i
  %i.oj = load i32, ptr %i.eo, align 8, !tbaa !8
  %.not.25.i.i.i = icmp ult i32 %i.oj, %spec.store.select.i.i
  br i1 %.not.25.i.i.i, label %.preheader312.26.i.i.i, label %bb.ah

.preheader312.26.i.i.i:                           ; preds = %.preheader312.25.i.i.i
  %i.ok = load i32, ptr %i.ep, align 4, !tbaa !8
  %.not.26.i.i.i = icmp ult i32 %i.ok, %spec.store.select.i.i
  br i1 %.not.26.i.i.i, label %.preheader312.27.i.i.i, label %bb.ah

.preheader312.27.i.i.i:                           ; preds = %.preheader312.26.i.i.i
  %i.ol = load i32, ptr %i.eq, align 16, !tbaa !8
  %.not.27.i.i.i = icmp ult i32 %i.ol, %spec.store.select.i.i
  br i1 %.not.27.i.i.i, label %.preheader312.28.i.i.i, label %bb.ah

.preheader312.28.i.i.i:                           ; preds = %.preheader312.27.i.i.i
  %i.om = load i32, ptr %i.er, align 4, !tbaa !8
  %.not.28.i.i.i = icmp ult i32 %i.om, %spec.store.select.i.i
  br i1 %.not.28.i.i.i, label %.preheader312.29.i.i.i, label %bb.ah

.preheader312.29.i.i.i:                           ; preds = %.preheader312.28.i.i.i
  %i.on = load i32, ptr %i.es, align 8, !tbaa !8
  %.not.29.i.i.i = icmp ult i32 %i.on, %spec.store.select.i.i
  br i1 %.not.29.i.i.i, label %.preheader312.30.i.i.i, label %bb.ah

.preheader312.30.i.i.i:                           ; preds = %.preheader312.29.i.i.i
  %i.oo = load i32, ptr %i.et, align 4, !tbaa !8
  %.not.30.i.i.i = icmp ult i32 %i.oo, %spec.store.select.i.i
  br i1 %.not.30.i.i.i, label %.preheader312.31.i.i.i, label %bb.ah

.preheader312.31.i.i.i:                           ; preds = %.preheader312.30.i.i.i
  %i.op = load i32, ptr %i.eu, align 16, !tbaa !8
  %.not.31.i.i.i = icmp ult i32 %i.op, %spec.store.select.i.i
  br i1 %.not.31.i.i.i, label %.preheader312.32.i.i.i, label %bb.ah

.preheader312.32.i.i.i:                           ; preds = %.preheader312.31.i.i.i
  %i.oq = load i32, ptr %i.ev, align 4, !tbaa !8
  %.not.32.i.i.i = icmp ult i32 %i.oq, %spec.store.select.i.i
  br i1 %.not.32.i.i.i, label %.preheader312.33.i.i.i, label %bb.ah

.preheader312.33.i.i.i:                           ; preds = %.preheader312.32.i.i.i
  %i.or = load i32, ptr %i.ew, align 8, !tbaa !8
  %.not.33.i.i.i = icmp ult i32 %i.or, %spec.store.select.i.i
  br i1 %.not.33.i.i.i, label %.preheader312.34.i.i.i, label %bb.ah

.preheader312.34.i.i.i:                           ; preds = %.preheader312.33.i.i.i
  %i.os = load i32, ptr %i.ex, align 4, !tbaa !8
  %.not.34.i.i.i = icmp ult i32 %i.os, %spec.store.select.i.i
  br i1 %.not.34.i.i.i, label %.preheader312.35.i.i.i, label %bb.ah

.preheader312.35.i.i.i:                           ; preds = %.preheader312.34.i.i.i
  %i.ot = load i32, ptr %i.ey, align 16, !tbaa !8
  %.not.35.i.i.i = icmp ult i32 %i.ot, %spec.store.select.i.i
  br i1 %.not.35.i.i.i, label %.preheader312.36.i.i.i, label %bb.ah

.preheader312.36.i.i.i:                           ; preds = %.preheader312.35.i.i.i
  %i.ou = load i32, ptr %i.ez, align 4, !tbaa !8
  %.not.36.i.i.i = icmp ult i32 %i.ou, %spec.store.select.i.i
  br i1 %.not.36.i.i.i, label %.preheader312.37.i.i.i, label %bb.ah

.preheader312.37.i.i.i:                           ; preds = %.preheader312.36.i.i.i
  %i.ov = load i32, ptr %i.fa, align 8, !tbaa !8
  %.not.37.i.i.i = icmp ult i32 %i.ov, %spec.store.select.i.i
  br i1 %.not.37.i.i.i, label %.preheader312.38.i.i.i, label %bb.ah

.preheader312.38.i.i.i:                           ; preds = %.preheader312.37.i.i.i
  %i.ow = load i32, ptr %i.fb, align 4, !tbaa !8
  %.not.38.i.i.i = icmp ult i32 %i.ow, %spec.store.select.i.i
  br i1 %.not.38.i.i.i, label %.preheader312.39.i.i.i, label %bb.ah

.preheader312.39.i.i.i:                           ; preds = %.preheader312.38.i.i.i
  %i.ox = load i32, ptr %i.fc, align 16, !tbaa !8
  %.not.39.i.i.i = icmp ult i32 %i.ox, %spec.store.select.i.i
  br i1 %.not.39.i.i.i, label %.preheader312.40.i.i.i, label %bb.ah

.preheader312.40.i.i.i:                           ; preds = %.preheader312.39.i.i.i
  %i.oy = load i32, ptr %i.fd, align 4, !tbaa !8
  %.not.40.i.i.i = icmp ult i32 %i.oy, %spec.store.select.i.i
  br i1 %.not.40.i.i.i, label %.preheader312.41.i.i.i, label %bb.ah

.preheader312.41.i.i.i:                           ; preds = %.preheader312.40.i.i.i
  %i.oz = load i32, ptr %i.fe, align 8, !tbaa !8
  %.not.41.i.i.i = icmp ult i32 %i.oz, %spec.store.select.i.i
  br i1 %.not.41.i.i.i, label %.preheader312.42.i.i.i, label %bb.ah

.preheader312.42.i.i.i:                           ; preds = %.preheader312.41.i.i.i
  %i.pa = load i32, ptr %i.ff, align 4, !tbaa !8
  %.not.42.i.i.i = icmp ult i32 %i.pa, %spec.store.select.i.i
  br i1 %.not.42.i.i.i, label %.preheader312.43.i.i.i, label %bb.ah

.preheader312.43.i.i.i:                           ; preds = %.preheader312.42.i.i.i
  %i.pb = load i32, ptr %i.fg, align 16, !tbaa !8
  %.not.43.i.i.i = icmp ult i32 %i.pb, %spec.store.select.i.i
  br i1 %.not.43.i.i.i, label %.preheader312.44.i.i.i, label %bb.ah

.preheader312.44.i.i.i:                           ; preds = %.preheader312.43.i.i.i
  %i.pc = load i32, ptr %i.fh, align 4, !tbaa !8
  %.not.44.i.i.i = icmp ult i32 %i.pc, %spec.store.select.i.i
  br i1 %.not.44.i.i.i, label %.preheader312.45.i.i.i, label %bb.ah

.preheader312.45.i.i.i:                           ; preds = %.preheader312.44.i.i.i
  %i.pd = load i32, ptr %i.fi, align 8, !tbaa !8
  %.not.45.i.i.i = icmp ult i32 %i.pd, %spec.store.select.i.i
  br i1 %.not.45.i.i.i, label %.preheader312.46.i.i.i, label %bb.ah

.preheader312.46.i.i.i:                           ; preds = %.preheader312.45.i.i.i
  %i.pe = load i32, ptr %i.fj, align 4, !tbaa !8
  %.not.46.i.i.i = icmp ult i32 %i.pe, %spec.store.select.i.i
  br i1 %.not.46.i.i.i, label %.preheader312.47.i.i.i, label %bb.ah

.preheader312.47.i.i.i:                           ; preds = %.preheader312.46.i.i.i
  %i.pf = load i32, ptr %i.fk, align 16, !tbaa !8
  %.not.47.i.i.i = icmp ult i32 %i.pf, %spec.store.select.i.i
  br i1 %.not.47.i.i.i, label %.preheader312.48.i.i.i, label %bb.ah

.preheader312.48.i.i.i:                           ; preds = %.preheader312.47.i.i.i
  %i.pg = load i32, ptr %i.fl, align 4, !tbaa !8
  %.not.48.i.i.i = icmp ult i32 %i.pg, %spec.store.select.i.i
  br i1 %.not.48.i.i.i, label %.preheader312.49.i.i.i, label %bb.ah

.preheader312.49.i.i.i:                           ; preds = %.preheader312.48.i.i.i
  %i.ph = load i32, ptr %i.fm, align 8, !tbaa !8
  %.not.49.i.i.i = icmp ult i32 %i.ph, %spec.store.select.i.i
  br i1 %.not.49.i.i.i, label %.preheader312.50.i.i.i, label %bb.ah

.preheader312.50.i.i.i:                           ; preds = %.preheader312.49.i.i.i
  %i.pi = load i32, ptr %i.fn, align 4, !tbaa !8
  %.not.50.i.i.i = icmp ult i32 %i.pi, %spec.store.select.i.i
  br i1 %.not.50.i.i.i, label %.preheader312.51.i.i.i, label %bb.ah

.preheader312.51.i.i.i:                           ; preds = %.preheader312.50.i.i.i
  %i.pj = load i32, ptr %i.fo, align 16, !tbaa !8
  %.not.51.i.i.i = icmp ult i32 %i.pj, %spec.store.select.i.i
  br i1 %.not.51.i.i.i, label %.preheader312.52.i.i.i, label %bb.ah

.preheader312.52.i.i.i:                           ; preds = %.preheader312.51.i.i.i
  %i.pk = load i32, ptr %i.fp, align 4, !tbaa !8
  %.not.52.i.i.i = icmp ult i32 %i.pk, %spec.store.select.i.i
  br i1 %.not.52.i.i.i, label %.preheader312.53.i.i.i, label %bb.ah

.preheader312.53.i.i.i:                           ; preds = %.preheader312.52.i.i.i
  %i.pl = load i32, ptr %i.fq, align 8, !tbaa !8
  %.not.53.i.i.i = icmp ult i32 %i.pl, %spec.store.select.i.i
  br i1 %.not.53.i.i.i, label %.preheader312.54.i.i.i, label %bb.ah

.preheader312.54.i.i.i:                           ; preds = %.preheader312.53.i.i.i
  %i.pm = load i32, ptr %i.fr, align 4, !tbaa !8
  %.not.54.i.i.i = icmp ult i32 %i.pm, %spec.store.select.i.i
  br i1 %.not.54.i.i.i, label %.preheader312.55.i.i.i, label %bb.ah

.preheader312.55.i.i.i:                           ; preds = %.preheader312.54.i.i.i
  %i.pn = load i32, ptr %i.fs, align 16, !tbaa !8
  %.not.55.i.i.i = icmp ult i32 %i.pn, %spec.store.select.i.i
  br i1 %.not.55.i.i.i, label %.preheader312.56.i.i.i, label %bb.ah

.preheader312.56.i.i.i:                           ; preds = %.preheader312.55.i.i.i
  %i.po = load i32, ptr %i.ft, align 4, !tbaa !8
  %.not.56.i.i.i = icmp ult i32 %i.po, %spec.store.select.i.i
  %spec.select.i.i.i = select i1 %.not.56.i.i.i, i32 6, i32 7
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader312.56.i.i.i, %.preheader312.55.i.i.i, %.preheader312.54.i.i.i, %.preheader312.53.i.i.i, %.preheader312.52.i.i.i, %.preheader312.51.i.i.i, %.preheader312.50.i.i.i, %.preheader312.49.i.i.i, %.preheader312.48.i.i.i, %.preheader312.47.i.i.i, %.preheader312.46.i.i.i, %.preheader312.45.i.i.i, %.preheader312.44.i.i.i, %.preheader312.43.i.i.i, %.preheader312.42.i.i.i, %.preheader312.41.i.i.i, %.preheader312.40.i.i.i, %.preheader312.39.i.i.i, %.preheader312.38.i.i.i, %.preheader312.37.i.i.i, %.preheader312.36.i.i.i, %.preheader312.35.i.i.i, %.preheader312.34.i.i.i, %.preheader312.33.i.i.i, %.preheader312.32.i.i.i, %.preheader312.31.i.i.i, %.preheader312.30.i.i.i, %.preheader312.29.i.i.i, %.preheader312.28.i.i.i, %.preheader312.27.i.i.i, %.preheader312.26.i.i.i, %.preheader312.25.i.i.i, %.preheader312.24.i.i.i, %.preheader312.23.i.i.i, %.preheader312.22.i.i.i, %.preheader312.21.i.i.i, %.preheader312.20.i.i.i, %.preheader312.19.i.i.i, %.preheader312.18.i.i.i, %.preheader312.17.i.i.i, %.preheader312.16.i.i.i, %.preheader312.15.i.i.i, %.preheader312.14.i.i.i, %.preheader312.13.i.i.i, %.preheader312.12.i.i.i, %.preheader312.11.i.i.i, %.preheader312.10.i.i.i, %.preheader312.9.i.i.i, %.preheader312.8.i.i.i, %.preheader312.7.i.i.i, %.preheader312.6.i.i.i, %.preheader312.5.i.i.i, %.preheader312.4.i.i.i, %.preheader312.3.i.i.i, %.preheader312.2.i.i.i, %.preheader312.1.i.i.i, %.preheader312.preheader.i.i.i
  %.0203.lcssa.i.i.i = phi i32 [ 63, %.preheader312.preheader.i.i.i ], [ 24, %.preheader312.39.i.i.i ], [ 62, %.preheader312.1.i.i.i ], [ %spec.select.i.i.i, %.preheader312.56.i.i.i ], [ 61, %.preheader312.2.i.i.i ], [ 34, %.preheader312.29.i.i.i ], [ 60, %.preheader312.3.i.i.i ], [ 8, %.preheader312.55.i.i.i ], [ 59, %.preheader312.4.i.i.i ], [ 21, %.preheader312.42.i.i.i ], [ 58, %.preheader312.5.i.i.i ], [ 9, %.preheader312.54.i.i.i ], [ 57, %.preheader312.6.i.i.i ], [ 33, %.preheader312.30.i.i.i ], [ 56, %.preheader312.7.i.i.i ], [ 10, %.preheader312.53.i.i.i ], [ 55, %.preheader312.8.i.i.i ], [ 27, %.preheader312.36.i.i.i ], [ 54, %.preheader312.9.i.i.i ], [ 11, %.preheader312.52.i.i.i ], [ 53, %.preheader312.10.i.i.i ], [ 32, %.preheader312.31.i.i.i ], [ 52, %.preheader312.11.i.i.i ], [ 12, %.preheader312.51.i.i.i ], [ 51, %.preheader312.12.i.i.i ], [ 22, %.preheader312.41.i.i.i ], [ 50, %.preheader312.13.i.i.i ], [ 13, %.preheader312.50.i.i.i ], [ 49, %.preheader312.14.i.i.i ], [ 31, %.preheader312.32.i.i.i ], [ 48, %.preheader312.15.i.i.i ], [ 14, %.preheader312.49.i.i.i ], [ 47, %.preheader312.16.i.i.i ], [ 25, %.preheader312.38.i.i.i ], [ 46, %.preheader312.17.i.i.i ], [ 15, %.preheader312.48.i.i.i ], [ 45, %.preheader312.18.i.i.i ], [ 30, %.preheader312.33.i.i.i ], [ 44, %.preheader312.19.i.i.i ], [ 16, %.preheader312.47.i.i.i ], [ 43, %.preheader312.20.i.i.i ], [ 23, %.preheader312.40.i.i.i ], [ 42, %.preheader312.21.i.i.i ], [ 17, %.preheader312.46.i.i.i ], [ 41, %.preheader312.22.i.i.i ], [ 29, %.preheader312.34.i.i.i ], [ 40, %.preheader312.23.i.i.i ], [ 18, %.preheader312.45.i.i.i ], [ 39, %.preheader312.24.i.i.i ], [ 26, %.preheader312.37.i.i.i ], [ 38, %.preheader312.25.i.i.i ], [ 19, %.preheader312.44.i.i.i ], [ 37, %.preheader312.26.i.i.i ], [ 28, %.preheader312.35.i.i.i ], [ 36, %.preheader312.27.i.i.i ], [ 20, %.preheader312.43.i.i.i ], [ 35, %.preheader312.28.i.i.i ] ; 2 uses
  %i.pp = zext nneg i32 %.0203.lcssa.i.i.i to i64
  %i.pq = getelementptr i8, ptr %i.lk, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 -1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.0202.i.i.i = phi i32 [ %.0203.lcssa.i.i.i, %bb.ah ], [ %i.py, %bb.ai ] ; 10 uses
  %i.pt = zext i32 %.0202.i.i.i to i64            ; 6 uses
  %i.pu = getelementptr i8, ptr %i.lk, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 -2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !33
  %i.px = icmp eq i8 %i.pw, %i.ps
  %i.py = add i32 %.0202.i.i.i, -1
  br i1 %i.px, label %bb.ai, label %bb.aj, !llvm.loop !73

bb.aj:                                            ; preds = %bb.ai
  %i.pz = icmp ult i32 %.0202.i.i.i, 7
  br i1 %i.pz, label %ZDICT_analyzePos.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.fu, align 4, !tbaa !8
  %xtraiter181 = and i64 %i.pt, 1
  %i.qa = icmp eq i32 %.0202.i.i.i, 7
  br i1 %i.qa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ak
  %i.qb = and i64 %i.pt, 4294967294
  %i.qc = add nsw i64 %i.qb, -8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.new
  %i.qd = phi i32 [ 0, %.new ], [ %i.qq, %bb.al ]
  %indvars.iv373.i.i.i = phi i64 [ 7, %.new ], [ %indvars.iv.next374.i.i.i.1, %bb.al ] ; 5 uses
  %niter186 = phi i64 [ 0, %.new ], [ %niter186.next.1, %bb.al ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !8
  %i.qg = trunc nuw i64 %indvars.iv373.i.i.i to i32
  %i.qh = add i32 %i.qg, -3
  %i.qi = mul i32 %i.qh, %i.qf
  %i.qj = add i32 %i.qi, %i.qd                    ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i = add nuw nsw i64 %indvars.iv373.i.i.i, 1 ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next374.i.i.i
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !8
  %i.qn = trunc nuw i64 %indvars.iv.next374.i.i.i to i32
  %i.qo = add i32 %i.qn, -3
  %i.qp = mul i32 %i.qo, %i.qm
  %i.qq = add i32 %i.qp, %i.qj                    ; 3 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next374.i.i.i
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i.1 = add nuw nsw i64 %indvars.iv373.i.i.i, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2
  %niter186.ncmp.1 = icmp eq i64 %niter186, %i.qc
  br i1 %niter186.ncmp.1, label %.unr-lcssa, label %bb.al, !llvm.loop !74

.unr-lcssa:                                       ; preds = %bb.al
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %bb.am, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ak
  %.epil.init = phi i32 [ 0, %bb.ak ], [ %i.qq, %.unr-lcssa ]
  %indvars.iv373.i.i.i.epil.init = phi i64 [ 7, %bb.ak ], [ %indvars.iv.next374.i.i.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod184 = trunc i32 %.0202.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i.epil.init
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !8
  %i.qu = trunc nuw i64 %indvars.iv373.i.i.i.epil.init to i32
  %i.qv = add i32 %i.qu, -3
  %i.qw = mul i32 %i.qv, %i.qt
  %i.qx = add i32 %i.qw, %.epil.init
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i.epil.init
  store i32 %i.qx, ptr %i.qy, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %.unr-lcssa, %.epil.preheader
  br i1 %i.dn, label %bb.an, label %._crit_edge398.i.i.i

._crit_edge398.i.i.i:                             ; preds = %bb.am
  %.phi.trans.insert399.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %.pre400.i.i.i = load i32, ptr %.phi.trans.insert399.i.i.i, align 4, !tbaa !8
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !8  ; 3 uses
  %i.rc = uitofp i32 %i.rb to double
  %i.rd = uitofp i32 %.0202.i.i.i to double
  %i.re = fdiv double %i.rc, %i.rd
  %i.rf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.36, i32 noundef %i.li, i32 noundef %.0202.i.i.i, i32 noundef %i.rb, double noundef %i.re) #19 ; 0 uses
  %i.rg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rh = tail call i32 @fflush(ptr noundef %i.rg) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge398.i.i.i
  %i.ri = phi i32 [ %.pre400.i.i.i, %._crit_edge398.i.i.i ], [ %i.rb, %bb.an ] ; 4 uses
  %i.rj = icmp ult i32 %.2233.lcssa.i.i.i, %indvars.iv383.i.i.i
  br i1 %i.rj, label %.lr.ph351.preheader.i.i.i, label %ZDICT_analyzePos.exit.i.i

.lr.ph351.preheader.i.i.i:                        ; preds = %bb.ao
  %i.rk = zext i32 %.2233.lcssa.i.i.i to i64
  br label %.lr.ph351.i.i.i

.lr.ph351.i.i.i:                                  ; preds = %._crit_edge348.i.i.i, %.lr.ph351.preheader.i.i.i
  %indvars.iv379.i.i.i = phi i64 [ %i.rk, %.lr.ph351.preheader.i.i.i ], [ %indvars.iv.next380.i.i.i, %._crit_edge348.i.i.i ] ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv379.i.i.i
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !8  ; 5 uses
  %i.rn = icmp eq i32 %i.rm, %i.li
  br i1 %i.rn, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph351.i.i.i
  %i.ro = zext i32 %i.rm to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ro ; 2 uses
  %.011.val21.i298.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !16 ; 2 uses
  %.012.val22.i299.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !16 ; 2 uses
  %.not23.i300.i.i.i = icmp eq i64 %.011.val21.i298.i.i.i, %.012.val22.i299.i.i.i
  br i1 %.not23.i300.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

.lr.ph.i304.i.i.i:                                ; preds = %bb.ap, %.lr.ph.i304.i.i.i
  %.01125.i305.i.i.i = phi ptr [ %i.rr, %.lr.ph.i304.i.i.i ], [ %i.rp, %bb.ap ]
  %.01224.i306.i.i.i = phi ptr [ %i.rq, %.lr.ph.i304.i.i.i ], [ %i.lk, %bb.ap ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.01224.i306.i.i.i, i64 8 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.01125.i305.i.i.i, i64 8 ; 2 uses
  %.011.val.i307.i.i.i = load i64, ptr %i.rr, align 1, !tbaa !16 ; 2 uses
  %.012.val.i308.i.i.i = load i64, ptr %i.rq, align 1, !tbaa !16 ; 2 uses
  %.not.i309.i.i.i = icmp eq i64 %.011.val.i307.i.i.i, %.012.val.i308.i.i.i
  br i1 %.not.i309.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

ZDICT_count.exit310.i.i.i:                        ; preds = %.lr.ph.i304.i.i.i, %bb.ap
  %.012.lcssa.i301.i.i.i = phi ptr [ %i.lk, %bb.ap ], [ %i.rq, %.lr.ph.i304.i.i.i ]
  %.011.val.lcssa.i302.i.i.i = phi i64 [ %.011.val21.i298.i.i.i, %bb.ap ], [ %.011.val.i307.i.i.i, %.lr.ph.i304.i.i.i ]
  %.012.val.lcssa.i303.i.i.i = phi i64 [ %.012.val22.i299.i.i.i, %bb.ap ], [ %.012.val.i308.i.i.i, %.lr.ph.i304.i.i.i ]
  %i.rs = xor i64 %.012.val.lcssa.i303.i.i.i, %.011.val.lcssa.i302.i.i.i
  %i.rt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rs, i1 true)
  %i.ru = lshr i64 %i.rt, 3
  %i.rv = getelementptr inbounds nuw i8, ptr %.012.lcssa.i301.i.i.i, i64 %i.ru
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = sub i64 %i.rw, %i.ll
  %i.ry = trunc i64 %i.rx to i32
  %spec.select251.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0202.i.i.i, i32 %i.ry)
  br label %bb.aq

bb.aq:                                            ; preds = %ZDICT_count.exit310.i.i.i, %.lr.ph351.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select251.i.i.i, %ZDICT_count.exit310.i.i.i ], [ %.0202.i.i.i, %.lr.ph351.i.i.i ] ; 2 uses
  %i.rz = add i32 %.0.i.i.i, %i.rm
  %i.sa = icmp ult i32 %i.rm, %i.rz
  br i1 %i.sa, label %.lr.ph347.preheader.i.i.i, label %._crit_edge348.i.i.i

.lr.ph347.preheader.i.i.i:                        ; preds = %bb.aq
  %i.sb = zext i32 %i.rm to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.sb
  %i.sc = add i32 %.0.i.i.i, -1
  %i.sd = zext i32 %i.sc to i64
  %i.se = add nuw nsw i64 %i.sd, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.se, i1 false), !tbaa !33
  br label %._crit_edge348.i.i.i

._crit_edge348.i.i.i:                             ; preds = %.lr.ph347.preheader.i.i.i, %bb.aq
  %indvars.iv.next380.i.i.i = add nuw nsw i64 %indvars.iv379.i.i.i, 1 ; 2 uses
  %exitcond386.not.i.i.i = icmp eq i64 %indvars.iv.next380.i.i.i, %i.lm
  br i1 %exitcond386.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph351.i.i.i, !llvm.loop !75

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph357.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sf = add i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !62

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge348.i.i.i, %bb.ao
  %i.sg = shl nuw i64 %i.pt, 32
  %i.sh = or disjoint i64 %i.sg, %i.lj            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.si = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %i.sh, i32 %i.ri, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.si, 0
  br i1 %.not.i111.i.i, label %bb.ar, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sj = zext i32 %i.si to i64                   ; 2 uses
  %i.sk = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sj ; 2 uses
  %.sroa.0.0.copyload.i142.i.i = load i64, ptr %i.sk, align 4
  %.sroa.2.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %.sroa.2.0.copyload.i144.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i143.i.i, align 4
  %i.sl = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i142.i.i, i32 %.sroa.2.0.copyload.i144.i.i, i32 noundef %i.si, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i145.i.i = icmp eq i32 %i.sl, 0
  br i1 %.not43.i145.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sm = phi i32 [ %i.sy, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sl, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sn = phi i64 [ %i.sw, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sj, %.preheader.i112.preheader.i.i ]
  %.03544.i146.i.i = phi i32 [ %i.sm, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.si, %.preheader.i112.preheader.i.i ] ; 2 uses
  %i.so = load i32, ptr %i.x, align 4, !tbaa !9   ; 2 uses
  %i.sp = add i32 %i.so, -1                       ; 2 uses
  %i.sq = icmp ult i32 %.03544.i146.i.i, %i.sp
  br i1 %i.sq, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sr = mul nuw nsw i64 %i.sn, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.sr ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.so, %.03544.i146.i.i
  %i.ss = add i32 %reass.sub, -2
  %i.st = zext i32 %i.ss to i64
  %i.su = mul nuw nsw i64 %i.st, 12
  %i.sv = add nuw nsw i64 %i.su, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.sv, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !9
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.sp, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !9
  %i.sw = zext i32 %i.sm to i64                   ; 2 uses
  %i.sx = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sw ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.sx, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.sy = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sm, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.sy, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !76

bb.ar:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sz = load i32, ptr %i.x, align 4, !tbaa !9
  %spec.select.i113.i.i = tail call i32 @llvm.umin.i32(i32 %i.sz, i32 %i.fv) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i113.i.i, -1 ; 2 uses
  %i.ta = zext i32 %.03445.i.i.i to i64
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !12
  %i.te = icmp ult i32 %i.td, %i.ri
  br i1 %i.te, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ar, %.lr.ph.i115.i.i
  %i.tf = phi ptr [ %i.tj, %.lr.ph.i115.i.i ], [ %i.tb, %bb.ar ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i115.i.i ], [ %.03445.i.i.i, %bb.ar ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i115.i.i ], [ %spec.select.i113.i.i, %bb.ar ]
  %i.tg = zext i32 %.034.in46.i.i.i to i64
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.th, ptr noundef nonnull align 4 dereferenceable(12) %i.tf, i64 12, i1 false), !tbaa.struct !77
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.ti = zext i32 %.034.i.i.i to i64
  %i.tj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !12
  %i.tm = icmp ult i32 %i.tl, %i.ri
  br i1 %i.tm, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i, !llvm.loop !78

._crit_edge.i114.i.i:                             ; preds = %.lr.ph.i115.i.i, %bb.ar
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i113.i.i, %bb.ar ], [ %.03447.i.i.i, %.lr.ph.i115.i.i ]
  %i.tn = zext i32 %.034.in.lcssa.i.i.i to i64
  %i.to = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tn ; 2 uses
  store i64 %i.sh, ptr %i.to, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store i32 %i.ri, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !8
  %i.tp = add nuw i32 %spec.select.i113.i.i, 1
  store i32 %i.tp, ptr %i.x, align 4, !tbaa !9
  br label %ZDICT_insertDictItem.exit.i.i

ZDICT_insertDictItem.exit.i.i:                    ; preds = %ZDICT_removeDictItem.exit.i.i.i, %._crit_edge.i114.i.i, %.preheader.i112.preheader.i.i
  %i.tq = add i32 %.0202.i.i.i, %.095150.i.i      ; 4 uses
  br i1 %i.ax, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %ZDICT_insertDictItem.exit.i.i
  %i.tr = tail call i64 @clock() #16
  %i.ts = sub nsw i64 %i.tr, %.099148.i.i
  %i.tt = icmp sgt i64 %i.ts, 300000
  br i1 %i.tt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.tu = tail call i64 @clock() #16
  %i.tv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.tw = uitofp i32 %i.tq to double
  %i.tx = fdiv double %i.tw, %i.fw
  %i.ty = fmul double %i.tx, 1.000000e+02
  %i.tz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tv, ptr noundef nonnull @.str.33, double noundef %i.ty) #19 ; 0 uses
  %i.ua = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ub = tail call i32 @fflush(ptr noundef %i.ua) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1100.i.i = phi i64 [ %i.tu, %bb.at ], [ %.099148.i.i, %bb.as ] ; 2 uses
  br i1 %i.dn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.uc = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ud = tail call i32 @fflush(ptr noundef %i.uc) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %ZDICT_insertDictItem.exit.i.i, %ZDICT_analyzePos.exit.thread.i.i, %bb.p
  %.3.i.i = phi i64 [ %.099148.i.i, %bb.p ], [ %.099148.i.i, %ZDICT_analyzePos.exit.thread.i.i ], [ %.1100.i.i, %bb.av ], [ %.1100.i.i, %bb.au ], [ %.099148.i.i, %ZDICT_insertDictItem.exit.i.i ]
  %.1.i.i = phi i32 [ %i.ga, %bb.p ], [ %i.sf, %ZDICT_analyzePos.exit.thread.i.i ], [ %i.tq, %bb.av ], [ %i.tq, %bb.au ], [ %i.tq, %ZDICT_insertDictItem.exit.i.i ] ; 2 uses
  %i.ue = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.uf = icmp samesign ugt i64 %.093.lcssa.i.i, %i.ue
  br i1 %i.uf, label %bb.o, label %ZDICT_trainBuffer_legacy.exit.loopexit.i

ZDICT_trainBuffer_legacy.exit.loopexit.i:         ; preds = %bb.aw
  %.pre.pre.i = load i32, ptr %i.x, align 4, !tbaa !9
  br label %ZDICT_trainBuffer_legacy.exit.i

ZDICT_trainBuffer_legacy.exit.i:                  ; preds = %ZDICT_trainBuffer_legacy.exit.loopexit.i, %.thread.i.i, %bb.k, %bb.g
  %.pre.i = phi i32 [ %.pre.pre.i, %ZDICT_trainBuffer_legacy.exit.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %.thread.i.i ] ; 9 uses
  tail call void @free(ptr noundef %i.as) #16
  tail call void @free(ptr noundef %i.au) #16
  tail call void @free(ptr noundef %i.aw) #16
  %i.ug = icmp ugt i32 %.sroa.5.0.copyload, 2
  br i1 %i.ug, label %bb.ax, label %.critedge179.i

bb.ax:                                            ; preds = %ZDICT_trainBuffer_legacy.exit.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 25) ; 3 uses
  %i.uh = icmp ugt i32 %.pre.i, 1
  br i1 %i.uh, label %.lr.ph.preheader.i194.i, label %ZDICT_dictSize.exit224.thread.critedge.i

.lr.ph.preheader.i194.i:                          ; preds = %bb.ax
  %wide.trip.count.i195.i = zext i32 %.pre.i to i64
  %i.ui = add nsw i64 %wide.trip.count.i195.i, -1 ; 2 uses
  %xtraiter189 = and i64 %i.ui, 3                 ; 3 uses
  %i.uj = add i32 %.pre.i, -2
  %i.uk = icmp ult i32 %i.uj, 3
  br i1 %i.uk, label %.lr.ph.i196.i.epil.preheader, label %.lr.ph.preheader.i194.i.new

.lr.ph.preheader.i194.i.new:                      ; preds = %.lr.ph.preheader.i194.i
  %unroll_iter194 = and i64 %i.ui, -4
  br label %.lr.ph.i196.i

.lr.ph.i196.i:                                    ; preds = %.lr.ph.i196.i, %.lr.ph.preheader.i194.i.new
  %indvars.iv.i197.i = phi i64 [ 1, %.lr.ph.preheader.i194.i.new ], [ %indvars.iv.next.i198.i.3, %.lr.ph.i196.i ] ; 5 uses
  %.08.i.i = phi i32 [ 0, %.lr.ph.preheader.i194.i.new ], [ %i.va, %.lr.ph.i196.i ]
  %niter195 = phi i64 [ 0, %.lr.ph.preheader.i194.i.new ], [ %niter195.next.3, %.lr.ph.i196.i ]
  %i.ul = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.un = load i32, ptr %i.um, align 4, !tbaa !11
  %i.uo = add i32 %i.un, %.08.i.i
  %i.up = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !11
  %i.us = add i32 %i.ur, %i.uo
  %i.ut = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 28
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !11
  %i.uw = add i32 %i.uv, %i.us
  %i.ux = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
end_hunk_0
