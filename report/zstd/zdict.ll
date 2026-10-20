Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_trainFromBuffer_legacy:bb.a
  br i1 %.not.22.i.i.i, label %.preheader312.23.i.i.i, label %bb.ah

.preheader312.23.i.i.i:                           ; preds = %.preheader312.22.i.i.i
  %i.og = load i32, ptr %i.el, align 16, !tbaa !8
  %.not.23.i.i.i = icmp ult i32 %i.og, %spec.store.select.i.i
  br i1 %.not.23.i.i.i, label %.preheader312.24.i.i.i, label %bb.ah

.preheader312.24.i.i.i:                           ; preds = %.preheader312.23.i.i.i
  %i.oh = load i32, ptr %i.em, align 4, !tbaa !8
  %.not.24.i.i.i = icmp ult i32 %i.oh, %spec.store.select.i.i
  br i1 %.not.24.i.i.i, label %.preheader312.25.i.i.i, label %bb.ah

.preheader312.25.i.i.i:                           ; preds = %.preheader312.24.i.i.i
  %i.oi = load i32, ptr %i.en, align 8, !tbaa !8
  %.not.25.i.i.i = icmp ult i32 %i.oi, %spec.store.select.i.i
  br i1 %.not.25.i.i.i, label %.preheader312.26.i.i.i, label %bb.ah

.preheader312.26.i.i.i:                           ; preds = %.preheader312.25.i.i.i
  %i.oj = load i32, ptr %i.eo, align 4, !tbaa !8
  %.not.26.i.i.i = icmp ult i32 %i.oj, %spec.store.select.i.i
  br i1 %.not.26.i.i.i, label %.preheader312.27.i.i.i, label %bb.ah

.preheader312.27.i.i.i:                           ; preds = %.preheader312.26.i.i.i
  %i.ok = load i32, ptr %i.ep, align 16, !tbaa !8
  %.not.27.i.i.i = icmp ult i32 %i.ok, %spec.store.select.i.i
  br i1 %.not.27.i.i.i, label %.preheader312.28.i.i.i, label %bb.ah

.preheader312.28.i.i.i:                           ; preds = %.preheader312.27.i.i.i
  %i.ol = load i32, ptr %i.eq, align 4, !tbaa !8
  %.not.28.i.i.i = icmp ult i32 %i.ol, %spec.store.select.i.i
  br i1 %.not.28.i.i.i, label %.preheader312.29.i.i.i, label %bb.ah

.preheader312.29.i.i.i:                           ; preds = %.preheader312.28.i.i.i
  %i.om = load i32, ptr %i.er, align 8, !tbaa !8
  %.not.29.i.i.i = icmp ult i32 %i.om, %spec.store.select.i.i
  br i1 %.not.29.i.i.i, label %.preheader312.30.i.i.i, label %bb.ah

.preheader312.30.i.i.i:                           ; preds = %.preheader312.29.i.i.i
  %i.on = load i32, ptr %i.es, align 4, !tbaa !8
  %.not.30.i.i.i = icmp ult i32 %i.on, %spec.store.select.i.i
  br i1 %.not.30.i.i.i, label %.preheader312.31.i.i.i, label %bb.ah

.preheader312.31.i.i.i:                           ; preds = %.preheader312.30.i.i.i
  %i.oo = load i32, ptr %i.et, align 16, !tbaa !8
  %.not.31.i.i.i = icmp ult i32 %i.oo, %spec.store.select.i.i
  br i1 %.not.31.i.i.i, label %.preheader312.32.i.i.i, label %bb.ah

.preheader312.32.i.i.i:                           ; preds = %.preheader312.31.i.i.i
  %i.op = load i32, ptr %i.eu, align 4, !tbaa !8
  %.not.32.i.i.i = icmp ult i32 %i.op, %spec.store.select.i.i
  br i1 %.not.32.i.i.i, label %.preheader312.33.i.i.i, label %bb.ah

.preheader312.33.i.i.i:                           ; preds = %.preheader312.32.i.i.i
  %i.oq = load i32, ptr %i.ev, align 8, !tbaa !8
  %.not.33.i.i.i = icmp ult i32 %i.oq, %spec.store.select.i.i
  br i1 %.not.33.i.i.i, label %.preheader312.34.i.i.i, label %bb.ah

.preheader312.34.i.i.i:                           ; preds = %.preheader312.33.i.i.i
  %i.or = load i32, ptr %i.ew, align 4, !tbaa !8
  %.not.34.i.i.i = icmp ult i32 %i.or, %spec.store.select.i.i
  br i1 %.not.34.i.i.i, label %.preheader312.35.i.i.i, label %bb.ah

.preheader312.35.i.i.i:                           ; preds = %.preheader312.34.i.i.i
  %i.os = load i32, ptr %i.ex, align 16, !tbaa !8
  %.not.35.i.i.i = icmp ult i32 %i.os, %spec.store.select.i.i
  br i1 %.not.35.i.i.i, label %.preheader312.36.i.i.i, label %bb.ah

.preheader312.36.i.i.i:                           ; preds = %.preheader312.35.i.i.i
  %i.ot = load i32, ptr %i.ey, align 4, !tbaa !8
  %.not.36.i.i.i = icmp ult i32 %i.ot, %spec.store.select.i.i
  br i1 %.not.36.i.i.i, label %.preheader312.37.i.i.i, label %bb.ah

.preheader312.37.i.i.i:                           ; preds = %.preheader312.36.i.i.i
  %i.ou = load i32, ptr %i.ez, align 8, !tbaa !8
  %.not.37.i.i.i = icmp ult i32 %i.ou, %spec.store.select.i.i
  br i1 %.not.37.i.i.i, label %.preheader312.38.i.i.i, label %bb.ah

.preheader312.38.i.i.i:                           ; preds = %.preheader312.37.i.i.i
  %i.ov = load i32, ptr %i.fa, align 4, !tbaa !8
  %.not.38.i.i.i = icmp ult i32 %i.ov, %spec.store.select.i.i
  br i1 %.not.38.i.i.i, label %.preheader312.39.i.i.i, label %bb.ah

.preheader312.39.i.i.i:                           ; preds = %.preheader312.38.i.i.i
  %i.ow = load i32, ptr %i.fb, align 16, !tbaa !8
  %.not.39.i.i.i = icmp ult i32 %i.ow, %spec.store.select.i.i
  br i1 %.not.39.i.i.i, label %.preheader312.40.i.i.i, label %bb.ah

.preheader312.40.i.i.i:                           ; preds = %.preheader312.39.i.i.i
  %i.ox = load i32, ptr %i.fc, align 4, !tbaa !8
  %.not.40.i.i.i = icmp ult i32 %i.ox, %spec.store.select.i.i
  br i1 %.not.40.i.i.i, label %.preheader312.41.i.i.i, label %bb.ah

.preheader312.41.i.i.i:                           ; preds = %.preheader312.40.i.i.i
  %i.oy = load i32, ptr %i.fd, align 8, !tbaa !8
  %.not.41.i.i.i = icmp ult i32 %i.oy, %spec.store.select.i.i
  br i1 %.not.41.i.i.i, label %.preheader312.42.i.i.i, label %bb.ah

.preheader312.42.i.i.i:                           ; preds = %.preheader312.41.i.i.i
  %i.oz = load i32, ptr %i.fe, align 4, !tbaa !8
  %.not.42.i.i.i = icmp ult i32 %i.oz, %spec.store.select.i.i
  br i1 %.not.42.i.i.i, label %.preheader312.43.i.i.i, label %bb.ah

.preheader312.43.i.i.i:                           ; preds = %.preheader312.42.i.i.i
  %i.pa = load i32, ptr %i.ff, align 16, !tbaa !8
  %.not.43.i.i.i = icmp ult i32 %i.pa, %spec.store.select.i.i
  br i1 %.not.43.i.i.i, label %.preheader312.44.i.i.i, label %bb.ah

.preheader312.44.i.i.i:                           ; preds = %.preheader312.43.i.i.i
  %i.pb = load i32, ptr %i.fg, align 4, !tbaa !8
  %.not.44.i.i.i = icmp ult i32 %i.pb, %spec.store.select.i.i
  br i1 %.not.44.i.i.i, label %.preheader312.45.i.i.i, label %bb.ah

.preheader312.45.i.i.i:                           ; preds = %.preheader312.44.i.i.i
  %i.pc = load i32, ptr %i.fh, align 8, !tbaa !8
  %.not.45.i.i.i = icmp ult i32 %i.pc, %spec.store.select.i.i
  br i1 %.not.45.i.i.i, label %.preheader312.46.i.i.i, label %bb.ah

.preheader312.46.i.i.i:                           ; preds = %.preheader312.45.i.i.i
  %i.pd = load i32, ptr %i.fi, align 4, !tbaa !8
  %.not.46.i.i.i = icmp ult i32 %i.pd, %spec.store.select.i.i
  br i1 %.not.46.i.i.i, label %.preheader312.47.i.i.i, label %bb.ah

.preheader312.47.i.i.i:                           ; preds = %.preheader312.46.i.i.i
  %i.pe = load i32, ptr %i.fj, align 16, !tbaa !8
  %.not.47.i.i.i = icmp ult i32 %i.pe, %spec.store.select.i.i
  br i1 %.not.47.i.i.i, label %.preheader312.48.i.i.i, label %bb.ah

.preheader312.48.i.i.i:                           ; preds = %.preheader312.47.i.i.i
  %i.pf = load i32, ptr %i.fk, align 4, !tbaa !8
  %.not.48.i.i.i = icmp ult i32 %i.pf, %spec.store.select.i.i
  br i1 %.not.48.i.i.i, label %.preheader312.49.i.i.i, label %bb.ah

.preheader312.49.i.i.i:                           ; preds = %.preheader312.48.i.i.i
  %i.pg = load i32, ptr %i.fl, align 8, !tbaa !8
  %.not.49.i.i.i = icmp ult i32 %i.pg, %spec.store.select.i.i
  br i1 %.not.49.i.i.i, label %.preheader312.50.i.i.i, label %bb.ah

.preheader312.50.i.i.i:                           ; preds = %.preheader312.49.i.i.i
  %i.ph = load i32, ptr %i.fm, align 4, !tbaa !8
  %.not.50.i.i.i = icmp ult i32 %i.ph, %spec.store.select.i.i
  br i1 %.not.50.i.i.i, label %.preheader312.51.i.i.i, label %bb.ah

.preheader312.51.i.i.i:                           ; preds = %.preheader312.50.i.i.i
  %i.pi = load i32, ptr %i.fn, align 16, !tbaa !8
  %.not.51.i.i.i = icmp ult i32 %i.pi, %spec.store.select.i.i
  br i1 %.not.51.i.i.i, label %.preheader312.52.i.i.i, label %bb.ah

.preheader312.52.i.i.i:                           ; preds = %.preheader312.51.i.i.i
  %i.pj = load i32, ptr %i.fo, align 4, !tbaa !8
  %.not.52.i.i.i = icmp ult i32 %i.pj, %spec.store.select.i.i
  br i1 %.not.52.i.i.i, label %.preheader312.53.i.i.i, label %bb.ah

.preheader312.53.i.i.i:                           ; preds = %.preheader312.52.i.i.i
  %i.pk = load i32, ptr %i.fp, align 8, !tbaa !8
  %.not.53.i.i.i = icmp ult i32 %i.pk, %spec.store.select.i.i
  br i1 %.not.53.i.i.i, label %.preheader312.54.i.i.i, label %bb.ah

.preheader312.54.i.i.i:                           ; preds = %.preheader312.53.i.i.i
  %i.pl = load i32, ptr %i.fq, align 4, !tbaa !8
  %.not.54.i.i.i = icmp ult i32 %i.pl, %spec.store.select.i.i
  br i1 %.not.54.i.i.i, label %.preheader312.55.i.i.i, label %bb.ah

.preheader312.55.i.i.i:                           ; preds = %.preheader312.54.i.i.i
  %i.pm = load i32, ptr %i.fr, align 16, !tbaa !8
  %.not.55.i.i.i = icmp ult i32 %i.pm, %spec.store.select.i.i
  br i1 %.not.55.i.i.i, label %.preheader312.56.i.i.i, label %bb.ah

.preheader312.56.i.i.i:                           ; preds = %.preheader312.55.i.i.i
  %i.pn = load i32, ptr %i.fs, align 4, !tbaa !8
  %.not.56.i.i.i = icmp ult i32 %i.pn, %spec.store.select.i.i
  %spec.select.i.i.i = select i1 %.not.56.i.i.i, i32 6, i32 7
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader312.56.i.i.i, %.preheader312.55.i.i.i, %.preheader312.54.i.i.i, %.preheader312.53.i.i.i, %.preheader312.52.i.i.i, %.preheader312.51.i.i.i, %.preheader312.50.i.i.i, %.preheader312.49.i.i.i, %.preheader312.48.i.i.i, %.preheader312.47.i.i.i, %.preheader312.46.i.i.i, %.preheader312.45.i.i.i, %.preheader312.44.i.i.i, %.preheader312.43.i.i.i, %.preheader312.42.i.i.i, %.preheader312.41.i.i.i, %.preheader312.40.i.i.i, %.preheader312.39.i.i.i, %.preheader312.38.i.i.i, %.preheader312.37.i.i.i, %.preheader312.36.i.i.i, %.preheader312.35.i.i.i, %.preheader312.34.i.i.i, %.preheader312.33.i.i.i, %.preheader312.32.i.i.i, %.preheader312.31.i.i.i, %.preheader312.30.i.i.i, %.preheader312.29.i.i.i, %.preheader312.28.i.i.i, %.preheader312.27.i.i.i, %.preheader312.26.i.i.i, %.preheader312.25.i.i.i, %.preheader312.24.i.i.i, %.preheader312.23.i.i.i, %.preheader312.22.i.i.i, %.preheader312.21.i.i.i, %.preheader312.20.i.i.i, %.preheader312.19.i.i.i, %.preheader312.18.i.i.i, %.preheader312.17.i.i.i, %.preheader312.16.i.i.i, %.preheader312.15.i.i.i, %.preheader312.14.i.i.i, %.preheader312.13.i.i.i, %.preheader312.12.i.i.i, %.preheader312.11.i.i.i, %.preheader312.10.i.i.i, %.preheader312.9.i.i.i, %.preheader312.8.i.i.i, %.preheader312.7.i.i.i, %.preheader312.6.i.i.i, %.preheader312.5.i.i.i, %.preheader312.4.i.i.i, %.preheader312.3.i.i.i, %.preheader312.2.i.i.i, %.preheader312.1.i.i.i, %.preheader312.preheader.i.i.i
  %.0203.lcssa.i.i.i = phi i32 [ 63, %.preheader312.preheader.i.i.i ], [ 24, %.preheader312.39.i.i.i ], [ 62, %.preheader312.1.i.i.i ], [ %spec.select.i.i.i, %.preheader312.56.i.i.i ], [ 61, %.preheader312.2.i.i.i ], [ 34, %.preheader312.29.i.i.i ], [ 60, %.preheader312.3.i.i.i ], [ 8, %.preheader312.55.i.i.i ], [ 59, %.preheader312.4.i.i.i ], [ 21, %.preheader312.42.i.i.i ], [ 58, %.preheader312.5.i.i.i ], [ 9, %.preheader312.54.i.i.i ], [ 57, %.preheader312.6.i.i.i ], [ 33, %.preheader312.30.i.i.i ], [ 56, %.preheader312.7.i.i.i ], [ 10, %.preheader312.53.i.i.i ], [ 55, %.preheader312.8.i.i.i ], [ 27, %.preheader312.36.i.i.i ], [ 54, %.preheader312.9.i.i.i ], [ 11, %.preheader312.52.i.i.i ], [ 53, %.preheader312.10.i.i.i ], [ 32, %.preheader312.31.i.i.i ], [ 52, %.preheader312.11.i.i.i ], [ 12, %.preheader312.51.i.i.i ], [ 51, %.preheader312.12.i.i.i ], [ 22, %.preheader312.41.i.i.i ], [ 50, %.preheader312.13.i.i.i ], [ 13, %.preheader312.50.i.i.i ], [ 49, %.preheader312.14.i.i.i ], [ 31, %.preheader312.32.i.i.i ], [ 48, %.preheader312.15.i.i.i ], [ 14, %.preheader312.49.i.i.i ], [ 47, %.preheader312.16.i.i.i ], [ 25, %.preheader312.38.i.i.i ], [ 46, %.preheader312.17.i.i.i ], [ 15, %.preheader312.48.i.i.i ], [ 45, %.preheader312.18.i.i.i ], [ 30, %.preheader312.33.i.i.i ], [ 44, %.preheader312.19.i.i.i ], [ 16, %.preheader312.47.i.i.i ], [ 43, %.preheader312.20.i.i.i ], [ 23, %.preheader312.40.i.i.i ], [ 42, %.preheader312.21.i.i.i ], [ 17, %.preheader312.46.i.i.i ], [ 41, %.preheader312.22.i.i.i ], [ 29, %.preheader312.34.i.i.i ], [ 40, %.preheader312.23.i.i.i ], [ 18, %.preheader312.45.i.i.i ], [ 39, %.preheader312.24.i.i.i ], [ 26, %.preheader312.37.i.i.i ], [ 38, %.preheader312.25.i.i.i ], [ 19, %.preheader312.44.i.i.i ], [ 37, %.preheader312.26.i.i.i ], [ 28, %.preheader312.35.i.i.i ], [ 36, %.preheader312.27.i.i.i ], [ 20, %.preheader312.43.i.i.i ], [ 35, %.preheader312.28.i.i.i ] ; 3 uses
  %i.po = zext nneg i32 %.0203.lcssa.i.i.i to i64
  %i.pp = getelementptr i8, ptr %i.lj, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 -1
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !21
  %i.ps = add nuw nsw i32 %.0203.lcssa.i.i.i, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv376.i.i.i = phi i32 [ %indvars.iv.next377.i.i.i, %bb.ai ], [ %i.ps, %bb.ah ] ; 3 uses
  %.0202.i.i.i = phi i32 [ %i.py, %bb.ai ], [ %.0203.lcssa.i.i.i, %bb.ah ] ; 8 uses
  %i.pt = zext i32 %.0202.i.i.i to i64            ; 4 uses
  %i.pu = getelementptr i8, ptr %i.lj, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 -2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !21
  %i.px = icmp eq i8 %i.pw, %i.pr
  %i.py = add i32 %.0202.i.i.i, -1
  %indvars.iv.next377.i.i.i = add i32 %indvars.iv376.i.i.i, -1
  br i1 %i.px, label %bb.ai, label %bb.aj, !llvm.loop !73

bb.aj:                                            ; preds = %bb.ai
  %i.pz = icmp ult i32 %.0202.i.i.i, 7
  br i1 %i.pz, label %ZDICT_analyzePos.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ft, align 4, !tbaa !8
  %7 = add i32 %indvars.iv376.i.i.i, -7           ; 3 uses
  %xtraiter180 = and i32 %7, 1
  %i.qa = icmp eq i32 %indvars.iv376.i.i.i, 8
  br i1 %i.qa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ak
  %unroll_iter184 = and i32 %7, -2
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.new
  %i.qb = phi i32 [ 0, %.new ], [ %i.qo, %bb.al ]
  %indvars.iv373.i.i.i = phi i64 [ 7, %.new ], [ %indvars.iv.next374.i.i.i.1, %bb.al ] ; 5 uses
  %niter185 = phi i32 [ 0, %.new ], [ %niter185.next.1, %bb.al ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !8
  %i.qe = trunc i64 %indvars.iv373.i.i.i to i32
  %i.qf = add i32 %i.qe, -3
  %i.qg = mul i32 %i.qf, %i.qd
  %i.qh = add i32 %i.qg, %i.qb                    ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i
  store i32 %i.qh, ptr %i.qi, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i = add nuw nsw i64 %indvars.iv373.i.i.i, 1 ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next374.i.i.i
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !8
  %i.ql = trunc i64 %indvars.iv.next374.i.i.i to i32
  %i.qm = add i32 %i.ql, -3
  %i.qn = mul i32 %i.qm, %i.qk
  %i.qo = add i32 %i.qn, %i.qh                    ; 3 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next374.i.i.i
  store i32 %i.qo, ptr %i.qp, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i.1 = add nuw nsw i64 %indvars.iv373.i.i.i, 2 ; 2 uses
  %niter185.next.1 = add i32 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i32 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %.unr-lcssa, label %bb.al, !llvm.loop !74

.unr-lcssa:                                       ; preds = %bb.al
  %lcmp.mod182.not = icmp eq i32 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %bb.am, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ak
  %.epil.init = phi i32 [ 0, %bb.ak ], [ %i.qo, %.unr-lcssa ]
  %indvars.iv373.i.i.i.epil.init = phi i64 [ 7, %bb.ak ], [ %indvars.iv.next374.i.i.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod183 = trunc i32 %7 to i1
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i.epil.init
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !8
  %i.qs = trunc i64 %indvars.iv373.i.i.i.epil.init to i32
  %i.qt = add i32 %i.qs, -3
  %i.qu = mul i32 %i.qt, %i.qr
  %i.qv = add i32 %i.qu, %.epil.init
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i.epil.init
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %.unr-lcssa, %.epil.preheader
  br i1 %i.dm, label %bb.an, label %._crit_edge402.i.i.i

._crit_edge402.i.i.i:                             ; preds = %bb.am
  %.phi.trans.insert403.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %.pre404.i.i.i = load i32, ptr %.phi.trans.insert403.i.i.i, align 4, !tbaa !8
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qx = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !8  ; 3 uses
  %i.ra = uitofp i32 %i.qz to double
  %i.rb = uitofp i32 %.0202.i.i.i to double
  %i.rc = fdiv double %i.ra, %i.rb
  %i.rd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qx, ptr noundef nonnull @.str.36, i32 noundef %i.lh, i32 noundef %.0202.i.i.i, i32 noundef %i.qz, double noundef %i.rc) #19 ; 0 uses
  %i.re = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.rf = tail call i32 @fflush(ptr noundef %i.re) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge402.i.i.i
  %i.rg = phi i32 [ %.pre404.i.i.i, %._crit_edge402.i.i.i ], [ %i.qz, %bb.an ] ; 4 uses
  %i.rh = icmp ult i32 %.2233.lcssa.i.i.i, %indvars.iv386.i.i.i
  br i1 %i.rh, label %.lr.ph351.preheader.i.i.i, label %ZDICT_analyzePos.exit.i.i

.lr.ph351.preheader.i.i.i:                        ; preds = %bb.ao
  %i.ri = zext i32 %.2233.lcssa.i.i.i to i64
  br label %.lr.ph351.i.i.i

.lr.ph351.i.i.i:                                  ; preds = %._crit_edge348.i.i.i, %.lr.ph351.preheader.i.i.i
  %indvars.iv382.i.i.i = phi i64 [ %i.ri, %.lr.ph351.preheader.i.i.i ], [ %indvars.iv.next383.i.i.i, %._crit_edge348.i.i.i ] ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv382.i.i.i
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !8  ; 5 uses
  %i.rl = icmp eq i32 %i.rk, %i.lh
  br i1 %i.rl, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph351.i.i.i
  %i.rm = zext i32 %i.rk to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.rm ; 2 uses
  %.011.val21.i298.i.i.i = load i64, ptr %i.rn, align 1, !tbaa !17 ; 2 uses
  %.012.val22.i299.i.i.i = load i64, ptr %i.lj, align 1, !tbaa !17 ; 2 uses
  %.not23.i300.i.i.i = icmp eq i64 %.011.val21.i298.i.i.i, %.012.val22.i299.i.i.i
  br i1 %.not23.i300.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

.lr.ph.i304.i.i.i:                                ; preds = %bb.ap, %.lr.ph.i304.i.i.i
  %.01125.i305.i.i.i = phi ptr [ %i.rp, %.lr.ph.i304.i.i.i ], [ %i.rn, %bb.ap ]
  %.01224.i306.i.i.i = phi ptr [ %i.ro, %.lr.ph.i304.i.i.i ], [ %i.lj, %bb.ap ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.01224.i306.i.i.i, i64 8 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.01125.i305.i.i.i, i64 8 ; 2 uses
  %.011.val.i307.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !17 ; 2 uses
  %.012.val.i308.i.i.i = load i64, ptr %i.ro, align 1, !tbaa !17 ; 2 uses
  %.not.i309.i.i.i = icmp eq i64 %.011.val.i307.i.i.i, %.012.val.i308.i.i.i
  br i1 %.not.i309.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

ZDICT_count.exit310.i.i.i:                        ; preds = %.lr.ph.i304.i.i.i, %bb.ap
  %.012.lcssa.i301.i.i.i = phi ptr [ %i.lj, %bb.ap ], [ %i.ro, %.lr.ph.i304.i.i.i ]
  %.011.val.lcssa.i302.i.i.i = phi i64 [ %.011.val21.i298.i.i.i, %bb.ap ], [ %.011.val.i307.i.i.i, %.lr.ph.i304.i.i.i ]
  %.012.val.lcssa.i303.i.i.i = phi i64 [ %.012.val22.i299.i.i.i, %bb.ap ], [ %.012.val.i308.i.i.i, %.lr.ph.i304.i.i.i ]
  %i.rq = xor i64 %.012.val.lcssa.i303.i.i.i, %.011.val.lcssa.i302.i.i.i
  %i.rr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rq, i1 true)
  %i.rs = lshr i64 %i.rr, 3
  %i.rt = getelementptr inbounds nuw i8, ptr %.012.lcssa.i301.i.i.i, i64 %i.rs
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = sub i64 %i.ru, %i.lk
  %i.rw = trunc i64 %i.rv to i32
  %spec.select251.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0202.i.i.i, i32 %i.rw)
  br label %bb.aq

bb.aq:                                            ; preds = %ZDICT_count.exit310.i.i.i, %.lr.ph351.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select251.i.i.i, %ZDICT_count.exit310.i.i.i ], [ %.0202.i.i.i, %.lr.ph351.i.i.i ] ; 2 uses
  %i.rx = add i32 %.0.i.i.i, %i.rk
  %i.ry = icmp ult i32 %i.rk, %i.rx
  br i1 %i.ry, label %.lr.ph347.preheader.i.i.i, label %._crit_edge348.i.i.i

.lr.ph347.preheader.i.i.i:                        ; preds = %bb.aq
  %i.rz = zext i32 %i.rk to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.rz
  %i.sa = add i32 %.0.i.i.i, -1
  %i.sb = zext i32 %i.sa to i64
  %i.sc = add nuw nsw i64 %i.sb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.sc, i1 false), !tbaa !21
  br label %._crit_edge348.i.i.i

._crit_edge348.i.i.i:                             ; preds = %.lr.ph347.preheader.i.i.i, %bb.aq
  %indvars.iv.next383.i.i.i = add nuw nsw i64 %indvars.iv382.i.i.i, 1 ; 2 uses
  %exitcond389.not.i.i.i = icmp eq i64 %indvars.iv.next383.i.i.i, %i.ll
  br i1 %exitcond389.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph351.i.i.i, !llvm.loop !75

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph357.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sd = add nuw i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !63

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge348.i.i.i, %bb.ao
  %i.se = shl nuw nsw i64 %i.pt, 32
  %i.sf = or disjoint i64 %i.se, %i.li            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sg = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %i.sf, i32 %i.rg, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not.i111.i.i, label %bb.ar, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sh = zext i32 %i.sg to i64                   ; 2 uses
  %i.si = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sh ; 2 uses
  %.sroa.0.0.copyload.i142.i.i = load i64, ptr %i.si, align 4
  %.sroa.2.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %.sroa.2.0.copyload.i144.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i143.i.i, align 4
  %i.sj = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i142.i.i, i32 %.sroa.2.0.copyload.i144.i.i, i32 noundef %i.sg, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i145.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not43.i145.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sk = phi i32 [ %i.sw, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sj, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sl = phi i64 [ %i.su, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sh, %.preheader.i112.preheader.i.i ]
  %.03544.i146.i.i = phi i32 [ %i.sk, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sg, %.preheader.i112.preheader.i.i ] ; 2 uses
  %i.sm = load i32, ptr %i.x, align 4, !tbaa !10  ; 2 uses
  %i.sn = add i32 %i.sm, -1                       ; 2 uses
  %i.so = icmp ult i32 %.03544.i146.i.i, %i.sn
  br i1 %i.so, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sp = mul nuw nsw i64 %i.sl, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.sp ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.sm, %.03544.i146.i.i
  %i.sq = add i32 %reass.sub, -2
  %i.sr = zext i32 %i.sq to i64
  %i.ss = mul nuw nsw i64 %i.sr, 12
  %i.st = add nuw nsw i64 %i.ss, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.st, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !10
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.sn, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !10
  %i.su = zext i32 %i.sk to i64                   ; 2 uses
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.su ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.sv, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.sw = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sk, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.sw, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !76

bb.ar:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sx = load i32, ptr %i.x, align 4, !tbaa !10
  %spec.select.i113.i.i = tail call i32 @llvm.umin.i32(i32 %i.sx, i32 %i.fu) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i113.i.i, -1 ; 2 uses
  %i.sy = zext i32 %.03445.i.i.i to i64
  %i.sz = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sy ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !12
  %i.tc = icmp ult i32 %i.tb, %i.rg
  br i1 %i.tc, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ar, %.lr.ph.i115.i.i
  %i.td = phi ptr [ %i.th, %.lr.ph.i115.i.i ], [ %i.sz, %bb.ar ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i115.i.i ], [ %.03445.i.i.i, %bb.ar ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i115.i.i ], [ %spec.select.i113.i.i, %bb.ar ]
  %i.te = zext i32 %.034.in46.i.i.i to i64
  %i.tf = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.te
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tf, ptr noundef nonnull align 4 dereferenceable(12) %i.td, i64 12, i1 false), !tbaa.struct !24
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.tg = zext i32 %.034.i.i.i to i64
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !12
  %i.tk = icmp ult i32 %i.tj, %i.rg
  br i1 %i.tk, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i, !llvm.loop !77

._crit_edge.i114.i.i:                             ; preds = %.lr.ph.i115.i.i, %bb.ar
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i113.i.i, %bb.ar ], [ %.03447.i.i.i, %.lr.ph.i115.i.i ]
  %i.tl = zext i32 %.034.in.lcssa.i.i.i to i64
  %i.tm = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tl ; 2 uses
  store i64 %i.sf, ptr %i.tm, align 4, !tbaa !8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store i32 %i.rg, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !8
  %i.tn = add nuw i32 %spec.select.i113.i.i, 1
  store i32 %i.tn, ptr %i.x, align 4, !tbaa !10
  br label %ZDICT_insertDictItem.exit.i.i

ZDICT_insertDictItem.exit.i.i:                    ; preds = %ZDICT_removeDictItem.exit.i.i.i, %._crit_edge.i114.i.i, %.preheader.i112.preheader.i.i
  %i.to = add i32 %.0202.i.i.i, %.095150.i.i      ; 4 uses
end_hunk_0
