Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_generic?download=true
inline.NumInlined: 3289
inline.NumDeleted: 1424
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_120EquiWidthBinFunctionINS_11timestamp_tENS0_22EquiWidthBinsTimestampEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ju = add nsw i32 %i.gw, 1                    ; 2 uses
  %i.jv = icmp eq i32 %i.ju, 13                   ; 2 uses
  %i.jw = zext i1 %i.jv to i32
  %spec.select.i.i.i.i.i = add nsw i32 %i.gs, %i.jw
  %spec.select118.i.i.i.i.i = select i1 %i.jv, i32 1, i32 %i.ju
  br label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

.thread.i.i.i:                                    ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx, %bb.bv
  %.sroa.7.0.i.ph.i.ph.i.i.i = phi i64 [ %i.jb, %bb.bv ], [ %i.jf, %bb.bx ], [ %i.jj, %bb.bz ], [ %i.jn, %bb.cb ], [ %i.is, %bb.ca ]
  %.sroa.0.sroa.4.0.i165.i86.i.i.i = zext i32 %i.ir to i64
  br label %bb.ch

bb.ce:                                            ; preds = %bb.bt
  %i.jx = add nsw i64 %i.is, 1800000000           ; 2 uses
  %i.jy = srem i64 %i.jx, 3600000000
  %i.jz = sub nsw i64 %i.jx, %i.jy                ; 2 uses
  %.sroa.0.sroa.4.0.i165.i.i.i.i = zext i32 %i.ir to i64 ; 2 uses
  br i1 %i.iw, label %.thread.i.i.i.i, label %bb.ch

.thread179.i.i.i.i:                               ; preds = %bb.bs
  %.sroa.0.sroa.4.0.i165181.i.i.i.i = zext i32 %i.ir to i64 ; 2 uses
  %i.ka = icmp sgt i32 %i.ir, 0
  %or.cond10.i182.i.i.i.i = select i1 %i.iu, i1 true, i1 %i.ka
  br i1 %or.cond10.i182.i.i.i.i, label %.thread.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread179.i.i.i.i, %bb.ce, %_ZN6duckdb12_GLOBAL__N_116MakeIntervalNiceENS_10interval_tE.exit.i.i.i.i
  %.sroa.0.sroa.4.0.i.shrunk166178.i.i.i.i = phi i32 [ %i.ir, %.thread179.i.i.i.i ], [ %i.ir, %bb.ce ], [ 0, %_ZN6duckdb12_GLOBAL__N_116MakeIntervalNiceENS_10interval_tE.exit.i.i.i.i ] ; 3 uses
  %.sroa.7.0.i168177.i.i.i.i = phi i64 [ 0, %.thread179.i.i.i.i ], [ %i.jz, %bb.ce ], [ 0, %_ZN6duckdb12_GLOBAL__N_116MakeIntervalNiceENS_10interval_tE.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.sroa.4.0.i171176.i.i.i.i = phi i64 [ %.sroa.0.sroa.4.0.i165181.i.i.i.i, %.thread179.i.i.i.i ], [ %.sroa.0.sroa.4.0.i165.i.i.i.i, %bb.ce ], [ 0, %_ZN6duckdb12_GLOBAL__N_116MakeIntervalNiceENS_10interval_tE.exit.i.i.i.i ] ; 3 uses
  %i.kb = icmp sgt i32 %i.hd, 0
  %i.kc = icmp sgt i32 %i.hi, 0
  %or.cond12.i.i.i.i.i = or i1 %i.kb, %i.kc
  %i.kd = icmp sgt i32 %i.ho, 0
  %or.cond14.i.i.i.i.i = or i1 %or.cond12.i.i.i.i.i, %i.kd
  %i.ke = icmp sgt i32 %i.hu, 0
  %or.cond16.i.i.i.i.i = or i1 %or.cond14.i.i.i.i.i, %i.ke
  br i1 %or.cond16.i.i.i.i.i, label %bb.cf, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.cf:                                            ; preds = %.thread.i.i.i.i
  %i.kf = add nsw i32 %i.ha, 1                    ; 2 uses
  %i.kg = invoke noundef zeroext i1 @_ZN6duckdb4Date7IsValidEiii(i32 noundef %i.gs, i32 noundef %i.gw, i32 noundef %i.kf)
          to label %.noexc50.i.i.i unwind label %bb.dm, !noalias !312

.noexc50.i.i.i:                                   ; preds = %bb.cf
  br i1 %i.kg, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.noexc50.i.i.i
  %i.kh = add nsw i32 %i.gw, 1                    ; 2 uses
  %i.ki = icmp eq i32 %i.kh, 13                   ; 2 uses
  %i.kj = zext i1 %i.ki to i32
  %spec.select119.i.i.i.i.i = add nsw i32 %i.gs, %i.kj
  %spec.select120.i.i.i.i.i = select i1 %i.ki, i32 1, i32 %i.kh
  br label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.ce, %.thread.i.i.i
  %.sroa.0.sroa.4.0.i165.i88.i.i.i = phi i64 [ %.sroa.0.sroa.4.0.i165.i86.i.i.i, %.thread.i.i.i ], [ %.sroa.0.sroa.4.0.i165.i.i.i.i, %bb.ce ] ; 15 uses
  %.sroa.7.0.i.ph.i87.i.i.i = phi i64 [ %.sroa.7.0.i.ph.i.ph.i.i.i, %.thread.i.i.i ], [ %i.jz, %bb.ce ] ; 18 uses
  %i.kk = icmp sgt i64 %.sroa.7.0.i.ph.i87.i.i.i, 3599999999
  br i1 %i.kk, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.kl = icmp sgt i32 %i.hi, 0
  %i.km = icmp sgt i32 %i.ho, 0
  %or.cond21.i.i.i.i.i = or i1 %i.kl, %i.km
  %i.kn = icmp sgt i32 %i.hu, 0
  %or.cond23.i.i.i.i.i = or i1 %or.cond21.i.i.i.i.i, %i.kn
  br i1 %or.cond23.i.i.i.i.i, label %bb.cj, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.ko = add nsw i32 %i.hd, 1
  %i.kp = icmp sgt i32 %i.hd, 22
  br i1 %i.kp, label %bb.ck, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.kq = add nsw i32 %i.ha, 1                    ; 2 uses
  %i.kr = invoke noundef zeroext i1 @_ZN6duckdb4Date7IsValidEiii(i32 noundef %i.gs, i32 noundef %i.gw, i32 noundef %i.kq)
          to label %.noexc51.i.i.i unwind label %bb.dm, !noalias !312

.noexc51.i.i.i:                                   ; preds = %bb.ck
  br i1 %i.kr, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.noexc51.i.i.i
  %i.ks = add nsw i32 %i.gw, 1                    ; 2 uses
  %i.kt = icmp eq i32 %i.ks, 13                   ; 2 uses
  %i.ku = zext i1 %i.kt to i32
  %spec.select121.i.i.i.i.i = add nsw i32 %i.gs, %i.ku
  %spec.select122.i.i.i.i.i = select i1 %i.kt, i32 1, i32 %i.ks
  br label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.cm:                                            ; preds = %bb.ch
  %i.kv = icmp sgt i64 %.sroa.7.0.i.ph.i87.i.i.i, 59999999
  %i.kw = icmp sgt i32 %i.hu, 0                   ; 2 uses
  br i1 %i.kv, label %bb.cn, label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.kx = icmp sgt i32 %i.ho, 0
  %or.cond25.i.i.i.i.i = or i1 %i.kx, %i.kw
  br i1 %or.cond25.i.i.i.i.i, label %bb.co, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.ky = add nsw i32 %i.hi, 1
  %i.kz = icmp sgt i32 %i.hi, 58
  br i1 %i.kz, label %bb.cp, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.la = add nsw i32 %i.hd, 1
  %i.lb = icmp sgt i32 %i.hd, 22
  br i1 %i.lb, label %bb.cq, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.lc = add nsw i32 %i.ha, 1                    ; 2 uses
  %i.ld = invoke noundef zeroext i1 @_ZN6duckdb4Date7IsValidEiii(i32 noundef %i.gs, i32 noundef %i.gw, i32 noundef %i.lc)
          to label %.noexc52.i.i.i unwind label %bb.dm, !noalias !312

.noexc52.i.i.i:                                   ; preds = %bb.cq
  br i1 %i.ld, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.noexc52.i.i.i
  %i.le = add nsw i32 %i.gw, 1                    ; 2 uses
  %i.lf = icmp eq i32 %i.le, 13                   ; 2 uses
  %i.lg = zext i1 %i.lf to i32
  %spec.select123.i.i.i.i.i = add nsw i32 %i.gs, %i.lg
  %spec.select124.i.i.i.i.i = select i1 %i.lf, i32 1, i32 %i.le
  br label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.cs:                                            ; preds = %bb.cm
  %i.lh = icmp sgt i64 %.sroa.7.0.i.ph.i87.i.i.i, 999999
  %or.cond27.i.i.i.i.i = and i1 %i.kw, %i.lh
  br i1 %or.cond27.i.i.i.i.i, label %bb.ct, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.li = add nsw i32 %i.ho, 1
  %i.lj = icmp sgt i32 %i.ho, 58
  br i1 %i.lj, label %bb.cu, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.lk = add nsw i32 %i.hi, 1
  %i.ll = icmp sgt i32 %i.hi, 58
  br i1 %i.ll, label %bb.cv, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.lm = add nsw i32 %i.hd, 1
  %i.ln = icmp sgt i32 %i.hd, 22
  br i1 %i.ln, label %bb.cw, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.lo = add nsw i32 %i.ha, 1                    ; 2 uses
  %i.lp = invoke noundef zeroext i1 @_ZN6duckdb4Date7IsValidEiii(i32 noundef %i.gs, i32 noundef %i.gw, i32 noundef %i.lo)
          to label %.noexc53.i.i.i unwind label %bb.dm, !noalias !312

.noexc53.i.i.i:                                   ; preds = %bb.cw
  br i1 %i.lp, label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %.noexc53.i.i.i
  %i.lq = add nsw i32 %i.gw, 1                    ; 2 uses
  %i.lr = icmp eq i32 %i.lq, 13                   ; 2 uses
  %i.ls = zext i1 %i.lr to i32
  %spec.select125.i.i.i.i.i = add nsw i32 %i.gs, %i.ls
  %spec.select126.i.i.i.i.i = select i1 %i.lr, i32 1, i32 %i.lq
  br label %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i

_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i: ; preds = %bb.cx, %.noexc53.i.i.i, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %.noexc52.i.i.i, %bb.cp, %bb.co, %bb.cn, %bb.cl, %.noexc51.i.i.i, %bb.cj, %bb.ci, %bb.cg, %.noexc50.i.i.i, %.thread.i.i.i.i, %.thread179.i.i.i.i, %bb.cd, %bb.cc
  %.sroa.0.sroa.4.0.i170.i.i.i.i = phi i64 [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.cs ], [ 0, %bb.cc ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.cu ], [ %.sroa.0.sroa.4.0.i171176.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.cv ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.ci ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %.noexc53.i.i.i ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.cn ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.cr ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.cx ], [ %.sroa.0.sroa.4.0.i171176.i.i.i.i, %.noexc50.i.i.i ], [ 0, %bb.cd ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.cj ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %.noexc51.i.i.i ], [ %.sroa.0.sroa.4.0.i171176.i.i.i.i, %bb.cg ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.co ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.cp ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %.noexc52.i.i.i ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.cl ], [ %.sroa.0.sroa.4.0.i165.i88.i.i.i, %bb.ct ], [ %.sroa.0.sroa.4.0.i165181.i.i.i.i, %.thread179.i.i.i.i ]
  %.sroa.7.0.i169.i.i.i.i = phi i64 [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.cs ], [ 0, %bb.cc ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.cu ], [ %.sroa.7.0.i168177.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.cv ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.ci ], [ %.sroa.7.0.i.ph.i87.i.i.i, %.noexc53.i.i.i ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.cn ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.cr ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.cx ], [ %.sroa.7.0.i168177.i.i.i.i, %.noexc50.i.i.i ], [ 0, %bb.cd ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.cj ], [ %.sroa.7.0.i.ph.i87.i.i.i, %.noexc51.i.i.i ], [ %.sroa.7.0.i168177.i.i.i.i, %bb.cg ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.co ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.cp ], [ %.sroa.7.0.i.ph.i87.i.i.i, %.noexc52.i.i.i ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.cl ], [ %.sroa.7.0.i.ph.i87.i.i.i, %bb.ct ], [ 0, %.thread179.i.i.i.i ] ; 2 uses
  %.sroa.0.sroa.4.0.i.shrunk167.i.i.i.i = phi i32 [ %i.ir, %bb.cs ], [ 0, %bb.cc ], [ %i.ir, %bb.cu ], [ %.sroa.0.sroa.4.0.i.shrunk166178.i.i.i.i, %.thread.i.i.i.i ], [ %i.ir, %bb.cv ], [ %i.ir, %bb.ci ], [ %i.ir, %.noexc53.i.i.i ], [ %i.ir, %bb.cn ], [ %i.ir, %bb.cr ], [ %i.ir, %bb.cx ], [ %.sroa.0.sroa.4.0.i.shrunk166178.i.i.i.i, %.noexc50.i.i.i ], [ 0, %bb.cd ], [ %i.ir, %bb.cj ], [ %i.ir, %.noexc51.i.i.i ], [ %.sroa.0.sroa.4.0.i.shrunk166178.i.i.i.i, %bb.cg ], [ %i.ir, %bb.co ], [ %i.ir, %bb.cp ], [ %i.ir, %.noexc52.i.i.i ], [ %i.ir, %bb.cl ], [ %i.ir, %bb.ct ], [ %i.ir, %.thread179.i.i.i.i ]
  %.0102.i.i.i.i.i = phi i32 [ %i.gs, %bb.cs ], [ %i.gs, %bb.cc ], [ %i.gs, %bb.cu ], [ %i.gs, %.thread.i.i.i.i ], [ %i.gs, %bb.cv ], [ %i.gs, %bb.ci ], [ %i.gs, %.noexc53.i.i.i ], [ %i.gs, %bb.cn ], [ %spec.select123.i.i.i.i.i, %bb.cr ], [ %spec.select125.i.i.i.i.i, %bb.cx ], [ %i.gs, %.noexc50.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.cd ], [ %i.gs, %bb.cj ], [ %i.gs, %.noexc51.i.i.i ], [ %spec.select119.i.i.i.i.i, %bb.cg ], [ %i.gs, %bb.co ], [ %i.gs, %bb.cp ], [ %i.gs, %.noexc52.i.i.i ], [ %spec.select121.i.i.i.i.i, %bb.cl ], [ %i.gs, %bb.ct ], [ %i.gs, %.thread179.i.i.i.i ]
  %.091.i.i.i.i.i = phi i32 [ %i.gw, %bb.cs ], [ %i.gw, %bb.cc ], [ %i.gw, %bb.cu ], [ %i.gw, %.thread.i.i.i.i ], [ %i.gw, %bb.cv ], [ %i.gw, %bb.ci ], [ %i.gw, %.noexc53.i.i.i ], [ %i.gw, %bb.cn ], [ %spec.select124.i.i.i.i.i, %bb.cr ], [ %spec.select126.i.i.i.i.i, %bb.cx ], [ %i.gw, %.noexc50.i.i.i ], [ %spec.select118.i.i.i.i.i, %bb.cd ], [ %i.gw, %bb.cj ], [ %i.gw, %.noexc51.i.i.i ], [ %spec.select120.i.i.i.i.i, %bb.cg ], [ %i.gw, %bb.co ], [ %i.gw, %bb.cp ], [ %i.gw, %.noexc52.i.i.i ], [ %spec.select122.i.i.i.i.i, %bb.cl ], [ %i.gw, %bb.ct ], [ %i.gw, %.thread179.i.i.i.i ]
  %.084.i.i.i.i.i = phi i32 [ %i.ha, %bb.cs ], [ %i.ha, %bb.cc ], [ %i.ha, %bb.cu ], [ %i.ha, %.thread.i.i.i.i ], [ %i.ha, %bb.cv ], [ %i.ha, %bb.ci ], [ %i.lo, %.noexc53.i.i.i ], [ %i.ha, %bb.cn ], [ 1, %bb.cr ], [ 1, %bb.cx ], [ %i.kf, %.noexc50.i.i.i ], [ 1, %bb.cd ], [ %i.ha, %bb.cj ], [ %i.kq, %.noexc51.i.i.i ], [ 1, %bb.cg ], [ %i.ha, %bb.co ], [ %i.ha, %bb.cp ], [ %i.lc, %.noexc52.i.i.i ], [ 1, %bb.cl ], [ %i.ha, %bb.ct ], [ %i.ha, %.thread179.i.i.i.i ]
  %.080.i.i.i.i.i = phi i32 [ %i.hd, %bb.cs ], [ %i.hd, %bb.cc ], [ %i.hd, %bb.cu ], [ %i.hd, %.thread.i.i.i.i ], [ %i.lm, %bb.cv ], [ %i.hd, %bb.ci ], [ 0, %.noexc53.i.i.i ], [ %i.hd, %bb.cn ], [ 0, %bb.cr ], [ 0, %bb.cx ], [ 0, %.noexc50.i.i.i ], [ 0, %bb.cd ], [ %i.ko, %bb.cj ], [ 0, %.noexc51.i.i.i ], [ 0, %bb.cg ], [ %i.hd, %bb.co ], [ %i.la, %bb.cp ], [ 0, %.noexc52.i.i.i ], [ 0, %bb.cl ], [ %i.hd, %bb.ct ], [ %i.hd, %.thread179.i.i.i.i ]
  %.078.i.i.i.i.i = phi i32 [ %i.hi, %bb.cs ], [ %i.hi, %bb.cc ], [ %i.lk, %bb.cu ], [ %i.hi, %.thread.i.i.i.i ], [ 0, %bb.cv ], [ %i.hi, %bb.ci ], [ 0, %.noexc53.i.i.i ], [ %i.hi, %bb.cn ], [ 0, %bb.cr ], [ 0, %bb.cx ], [ 0, %.noexc50.i.i.i ], [ 0, %bb.cd ], [ 0, %bb.cj ], [ 0, %.noexc51.i.i.i ], [ 0, %bb.cg ], [ %i.ky, %bb.co ], [ 0, %bb.cp ], [ 0, %.noexc52.i.i.i ], [ 0, %bb.cl ], [ %i.hi, %bb.ct ], [ %i.hi, %.thread179.i.i.i.i ]
  %.077.i.i.i.i.i = phi i32 [ %i.ho, %bb.cs ], [ %i.ho, %bb.cc ], [ 0, %bb.cu ], [ %i.ho, %.thread.i.i.i.i ], [ 0, %bb.cv ], [ %i.ho, %bb.ci ], [ 0, %.noexc53.i.i.i ], [ %i.ho, %bb.cn ], [ 0, %bb.cr ], [ 0, %bb.cx ], [ 0, %.noexc50.i.i.i ], [ 0, %bb.cd ], [ 0, %bb.cj ], [ 0, %.noexc51.i.i.i ], [ 0, %bb.cg ], [ 0, %bb.co ], [ 0, %bb.cp ], [ 0, %.noexc52.i.i.i ], [ 0, %bb.cl ], [ %i.li, %bb.ct ], [ %i.ho, %.thread179.i.i.i.i ]
  %.0.i.i.i.i.i = phi i32 [ %i.hu, %bb.cs ], [ %i.hu, %bb.cc ], [ 0, %bb.cu ], [ %i.hu, %.thread.i.i.i.i ], [ 0, %bb.cv ], [ %i.hu, %bb.ci ], [ 0, %.noexc53.i.i.i ], [ %i.hu, %bb.cn ], [ 0, %bb.cr ], [ 0, %bb.cx ], [ 0, %.noexc50.i.i.i ], [ 0, %bb.cd ], [ 0, %bb.cj ], [ 0, %.noexc51.i.i.i ], [ 0, %bb.cg ], [ 0, %bb.co ], [ 0, %bb.cp ], [ 0, %.noexc52.i.i.i ], [ 0, %bb.cl ], [ 0, %bb.ct ], [ %i.hu, %.thread179.i.i.i.i ]
  %i.lt = invoke i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %.0102.i.i.i.i.i, i32 noundef %.091.i.i.i.i.i, i32 noundef %.084.i.i.i.i.i)
          to label %.noexc54.i.i.i unwind label %bb.dm, !noalias !312

.noexc54.i.i.i:                                   ; preds = %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i
  %i.lu = invoke i64 @_ZN6duckdb4Time8FromTimeEiiii(i32 noundef %.080.i.i.i.i.i, i32 noundef %.078.i.i.i.i.i, i32 noundef %.077.i.i.i.i.i, i32 noundef %.0.i.i.i.i.i)
          to label %.noexc55.i.i.i unwind label %bb.dm, !noalias !312

.noexc55.i.i.i:                                   ; preds = %.noexc54.i.i.i
  %i.lv = invoke i64 @_ZN6duckdb9Timestamp12FromDatetimeENS_6date_tENS_7dtime_tE(i32 %i.lt, i64 %i.lu)
          to label %.noexc56.i.i.i unwind label %bb.dm, !noalias !312

.noexc56.i.i.i:                                   ; preds = %.noexc55.i.i.i
  %i.lw = icmp slt i32 %i.iq, 1
  %i.lx = icmp slt i32 %.sroa.0.sroa.4.0.i.shrunk167.i.i.i.i, 1
  %or.cond.i.i.i.i = select i1 %i.lw, i1 %i.lx, i1 false
  %i.ly = icmp slt i64 %.sroa.7.0.i169.i.i.i.i, 1
  %or.cond5.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.ly, i1 false ; 2 uses
  %.sroa.13.0.i.i.i.i = select i1 %or.cond5.i.i.i.i, i64 1, i64 %.sroa.7.0.i169.i.i.i.i
  %i.lz = shl nuw i64 %.sroa.0.sroa.4.0.i170.i.i.i.i, 32
  %i.ma = or disjoint i64 %i.lz, %.sroa.015.sroa.0.0.insert.ext20.i.i.i.i
  %.sroa.015.sroa.0.0.insert.insert.i.i.i.i = select i1 %or.cond5.i.i.i.i, i64 0, i64 %i.ma
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i, %.noexc56.i.i.i
  %.sroa.0.3.i.i.i = phi ptr [ null, %.noexc56.i.i.i ], [ %.sroa.0.4.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i ] ; 2 uses
  %.sroa.10.2.i.i.i = phi ptr [ null, %.noexc56.i.i.i ], [ %.sroa.10.3.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i ] ; 5 uses
  %.sroa.15.3.i.i.i = phi ptr [ null, %.noexc56.i.i.i ], [ %.sroa.15.4.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i ] ; 2 uses
  %i.mb = phi ptr [ null, %.noexc56.i.i.i ], [ %i.mp, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i ] ; 2 uses
  %i.mc = phi ptr [ null, %.noexc56.i.i.i ], [ %i.mq, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i ] ; 6 uses
  %.sroa.09.0.i.i.i.i = phi i64 [ %i.lv, %.noexc56.i.i.i ], [ %i.mr, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i ] ; 4 uses
  %.not.i.i88.i.i = icmp slt i64 %.sroa.09.0.i.i.i.i, %i.dd
  br i1 %.not.i.i88.i.i, label %.critedge.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.md = ptrtoint ptr %.sroa.10.2.i.i.i to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me                    ; 4 uses
  %i.mg = ashr exact i64 %i.mf, 3                 ; 3 uses
  %i.mh = icmp ult i64 %i.mg, %i.dv
  br i1 %i.mh, label %bb.da, label %.critedge.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %.not.i.i93.i.i.i.i = icmp eq ptr %.sroa.10.2.i.i.i, %i.mb
  br i1 %.not.i.i93.i.i.i.i, label %_ZNKSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i94.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i64 %.sroa.09.0.i.i.i.i, ptr %.sroa.10.2.i.i.i, align 8, !tbaa !101, !noalias !314
  br label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i

_ZNKSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i94.i.i.i.i: ; preds = %bb.da
  %.sroa.speculated.i.i.i.i95.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mg, i64 1)
  %i.mi = add nuw nsw i64 %.sroa.speculated.i.i.i.i95.i.i.i.i, %i.mg
  %i.mj = call i64 @llvm.umin.i64(i64 %i.mi, i64 1152921504606846975) ; 2 uses
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #24
          to label %.noexc101.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !314 ; 5 uses

.noexc101.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i94.i.i.i.i
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 %i.mf ; 2 uses
  store i64 %.sroa.09.0.i.i.i.i, ptr %i.mm, align 8, !tbaa !101, !noalias !314
  %i.mn = icmp sgt i64 %i.mf, 0
  br i1 %i.mn, label %bb.dc, label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i97.i.i.i.i

bb.dc:                                            ; preds = %.noexc101.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ml, ptr align 8 %i.mc, i64 %i.mf, i1 false), !noalias !314
  br label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i97.i.i.i.i

_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i97.i.i.i.i: ; preds = %bb.dc, %.noexc101.i.i.i.i
  %.not.i17.i.i.i98.i.i.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i17.i.i.i98.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i99.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i97.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.mc) #27, !noalias !314
  br label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i99.i.i.i.i

_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i99.i.i.i.i: ; preds = %bb.dd, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i97.i.i.i.i
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mj ; 2 uses
  br label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i

_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i99.i.i.i.i, %bb.db
  %.sroa.0.4.i.i.i = phi ptr [ %i.ml, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i99.i.i.i.i ], [ %.sroa.0.3.i.i.i, %bb.db ]
  %.pn90.i.i.i = phi ptr [ %i.mm, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i99.i.i.i.i ], [ %.sroa.10.2.i.i.i, %bb.db ]
  %.sroa.15.4.i.i.i = phi ptr [ %i.mo, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i99.i.i.i.i ], [ %.sroa.15.3.i.i.i, %bb.db ]
  %i.mp = phi ptr [ %i.mo, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i99.i.i.i.i ], [ %i.mb, %bb.db ]
  %i.mq = phi ptr [ %i.ml, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i99.i.i.i.i ], [ %i.mc, %bb.db ] ; 2 uses
  %.sroa.10.3.i.i.i = getelementptr inbounds nuw i8, ptr %.pn90.i.i.i, i64 8
  %i.mr = invoke i64 @_ZN6duckdb16SubtractOperator9OperationINS_11timestamp_tENS_10interval_tES2_EET1_T_T0_(i64 %.sroa.09.0.i.i.i.i, i64 %.sroa.015.sroa.0.0.insert.insert.i.i.i.i, i64 %.sroa.13.0.i.i.i.i)
          to label %bb.cy unwind label %bb.de, !noalias !314, !llvm.loop !307

.loopexit.split-lp.i.i.i.i:                       ; preds = %_ZNKSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i94.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EE9push_backEOS3_.exit102.i.i.i.i
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

.critedge.i.i.i.i:                                ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !314
  br label %_ZN6duckdb12_GLOBAL__N_122EquiWidthBinsTimestamp9OperationERKNS_10ExpressionENS_11timestamp_tES5_mb.exit.i.i.i

bb.df:                                            ; preds = %bb.de, %.loopexit.split-lp.i.i.i.i
  %25 = phi ptr [ %i.mq, %bb.de ], [ %i.mc, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.pn82.i.i.i.i = phi { ptr, i32 } [ %i.ms, %bb.de ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  %.not.i.i.i103.i.i.i.i = icmp eq ptr %25, null
  br i1 %.not.i.i.i103.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EED2Ev.exit104.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZdlPv(ptr noundef nonnull %25) #27, !noalias !314
  br label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EED2Ev.exit104.i.i.i.i

_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EED2Ev.exit104.i.i.i.i: ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !314
  br label %.body.i.i.i

bb.dh:                                            ; preds = %bb.az
  unreachable

_ZN6duckdb12_GLOBAL__N_122EquiWidthBinsTimestamp9OperationERKNS_10ExpressionENS_11timestamp_tES5_mb.exit.i.i.i: ; preds = %.critedge.i.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeIlEESaIS2_EED2Ev.exit.i.i.i.i
  %.sroa.0.5.i.i.i = phi ptr [ %.sroa.0.3.i.i.i, %.critedge.i.i.i.i ], [ %.sroa.0.2.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeIlEESaIS2_EED2Ev.exit.i.i.i.i ]
  %.sroa.10.4.i.i.i = phi ptr [ %.sroa.10.2.i.i.i, %.critedge.i.i.i.i ], [ %.sroa.10.1.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeIlEESaIS2_EED2Ev.exit.i.i.i.i ]
  %.sroa.15.5.i.i.i = phi ptr [ %.sroa.15.3.i.i.i, %.critedge.i.i.i.i ], [ %.sroa.15.2.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeIlEESaIS2_EED2Ev.exit.i.i.i.i ]
  %i.mt = load ptr, ptr %16, align 8, !tbaa !170, !noalias !312 ; 2 uses
  store ptr %.sroa.0.5.i.i.i, ptr %16, align 8, !tbaa !170, !noalias !312
  store ptr %.sroa.10.4.i.i.i, ptr %i.ao, align 8, !tbaa !171, !noalias !312
  store ptr %.sroa.15.5.i.i.i, ptr %i.ap, align 8, !tbaa !313, !noalias !312
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EED2Ev.exit.i.i.i, label %bb.di

bb.di:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_122EquiWidthBinsTimestamp9OperationERKNS_10ExpressionENS_11timestamp_tES5_mb.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.mt) #27, !noalias !312
  br label %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.di, %_ZN6duckdb12_GLOBAL__N_122EquiWidthBinsTimestamp9OperationERKNS_10ExpressionENS_11timestamp_tES5_mb.exit.i.i.i
  %i.mu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_13PrimitiveTypeINS_11timestamp_tEEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef 0)
          to label %bb.dj unwind label %bb.at, !noalias !312

bb.dj:                                            ; preds = %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EED2Ev.exit.i.i.i
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !316, !noalias !312
  %i.mw = icmp slt i64 %i.mv, %i.dm
  br i1 %i.mw, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.mx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_13PrimitiveTypeINS_11timestamp_tEEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef 0)
          to label %bb.dl unwind label %bb.at, !noalias !312

bb.dl:                                            ; preds = %bb.dk
  store i64 %i.dm, ptr %i.mx, align 8, !tbaa !101, !noalias !312
  br label %bb.dn

bb.dm:                                            ; preds = %.noexc55.i.i.i, %.noexc54.i.i.i, %_ZN6duckdb12_GLOBAL__N_117MakeTimestampNiceEiiiiiiiNS_10interval_tE.exit.i.i.i.i, %bb.cw, %bb.cq, %bb.ck, %bb.cf, %.noexc48.i.i.i, %.noexc47.i.i.i, %.noexc46.i.i.i, %.noexc45.i.i.i, %.noexc44.i.i.i, %bb.bn, %bb.bd, %bb.aw, %bb.av
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.dn:                                            ; preds = %bb.dl, %bb.dj
  %i.mz = load ptr, ptr %16, align 8, !tbaa !317, !noalias !312 ; 5 uses
  %i.na = load ptr, ptr %i.ao, align 8, !tbaa !317, !noalias !312 ; 4 uses
  %i.nb = icmp ne ptr %i.mz, %i.na
  %.sroa.0.08.i.i.i.i.i = getelementptr inbounds i8, ptr %i.na, i64 -8 ; 2 uses
  %i.nc = icmp ult ptr %i.mz, %.sroa.0.08.i.i.i.i.i
  %or.cond.i.i58.i.i.i = select i1 %i.nb, i1 %i.nc, i1 false
  br i1 %or.cond.i.i58.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dn, %.lr.ph.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i, %bb.dn ] ; 3 uses
  %.sroa.05.09.i.i.i.i.i = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i ], [ %i.mz, %bb.dn ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.05.09.i.i.i.i.i, align 8, !tbaa !101, !noalias !312
  %i.nd = load i64, ptr %.sroa.0.010.i.i.i.i.i, align 8, !tbaa !101, !noalias !312
  store i64 %i.nd, ptr %.sroa.05.09.i.i.i.i.i, align 8, !tbaa !101, !noalias !312
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.0.010.i.i.i.i.i, align 8, !tbaa !101, !noalias !312
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i, i64 -8 ; 2 uses
  %i.nf = icmp ult ptr %i.ne, %.sroa.0.0.i.i.i.i.i
  br i1 %i.nf, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i, !llvm.loop !308

.body.i.i.i:                                      ; preds = %bb.dm, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EED2Ev.exit104.i.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeIlEESaIS2_EED2Ev.exit88.i.i.i.i, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.au, %bb.at
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fi, %bb.au ], [ %i.fh, %bb.at ], [ %i.my, %bb.dm ], [ %.pn82.i.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeINS0_11timestamp_tEEESaIS3_EED2Ev.exit104.i.i.i.i ], [ %lpad.phi124.i.i.i.i, %_ZNSt6vectorIN6duckdb13PrimitiveTypeIlEESaIS2_EED2Ev.exit88.i.i.i.i ], [ %.pn117.i.i.i.i, %bb.bb ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ng = load ptr, ptr %16, align 8, !tbaa !170, !noalias !312 ; 2 uses
  %.not.i.i.i.i61.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i61.i.i.i, label %_ZN6duckdb15GenericListTypeINS_13PrimitiveTypeINS_11timestamp_tEEEED2Ev.exit63.i.i.i, label %bb.do

bb.do:                                            ; preds = %.body.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ng) #27, !noalias !312
  br label %_ZN6duckdb15GenericListTypeINS_13PrimitiveTypeINS_11timestamp_tEEEED2Ev.exit63.i.i.i

_ZN6duckdb15GenericListTypeINS_13PrimitiveTypeINS_11timestamp_tEEEED2Ev.exit63.i.i.i: ; preds = %bb.do, %.body.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !312
  br label %.body.i.i

bb.dp:                                            ; preds = %bb.ap, %bb.aj, %bb.ad
  unreachable

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %bb.dn, %.noexc39.i.i.i
  %i.nh = phi ptr [ %i.na, %bb.dn ], [ %i.fg, %.noexc39.i.i.i ], [ %i.na, %.lr.ph.i.i.i.i.i ]
  %i.ni = phi ptr [ %i.mz, %bb.dn ], [ %i.ff, %.noexc39.i.i.i ], [ %i.mz, %.lr.ph.i.i.i.i.i ]
  store ptr %i.ni, ptr %21, align 8, !tbaa !170, !alias.scope !312
  store ptr %i.nh, ptr %i.aq, align 8, !tbaa !171, !alias.scope !312
  %i.nj = load ptr, ptr %i.ap, align 8, !tbaa !313, !noalias !312
  store ptr %i.nj, ptr %i.ar, align 8, !tbaa !313, !alias.scope !312
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !312
  invoke void @_ZN6duckdb15GenericListTypeINS_13PrimitiveTypeINS_11timestamp_tEEEE12AssignResultERNS_6VectorEmS4_(ptr noundef nonnull align 8 dereferenceable(104) %22, i64 noundef %.05035.i.i, ptr noundef nonnull %21)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %.loopexit.i.i
  %i.nk = load ptr, ptr %21, align 8, !tbaa !170  ; 2 uses
  %.not.i.i.i.i89.i.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i89.i.i, label %_ZN6duckdb15GenericListTypeINS_13PrimitiveTypeINS_11timestamp_tEEEED2Ev.exit.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_ZdlPv(ptr noundef nonnull %i.nk) #27
  br label %_ZN6duckdb15GenericListTypeINS_13PrimitiveTypeINS_11timestamp_tEEEED2Ev.exit.i.i

_ZN6duckdb15GenericListTypeINS_13PrimitiveTypeINS_11timestamp_tEEEED2Ev.exit.i.i: ; preds = %bb.dr, %bb.dq, %bb.q
  %i.nl = add nuw i64 %.05035.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.nl, %i.ad
  br i1 %exitcond.not.i.i, label %_ZN6duckdb18PrimitiveTypeState13PrepareVectorERNS_6VectorEm.exit64._crit_edge.i.i, label %bb.l, !llvm.loop !309

bb.ds:                                            ; preds = %.loopexit.i.i
  %i.nm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nn = load ptr, ptr %21, align 8, !tbaa !170  ; 2 uses
  %.not.i.i.i.i91.i.i = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i.i91.i.i, label %.body.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @_ZdlPv(ptr noundef nonnull %i.nn) #27
  br label %.body.i.i

bb.du:                                            ; preds = %_ZN6duckdb18PrimitiveTypeState13PrepareVectorERNS_6VectorEm.exit64._crit_edge.i.i
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %22, i8 noundef zeroext 2)
          to label %bb.dv unwind label %bb.k

bb.dv:                                            ; preds = %bb.du, %_ZN6duckdb18PrimitiveTypeState13PrepareVectorERNS_6VectorEm.exit64._crit_edge.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !103 ; 8 uses
  %.not.i.i.i.i.i.i94.i.i = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i.i.i.i94.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 4 uses
  %i.nr = load atomic i64, ptr %i.nq acquire, align 8 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 4294967297
  %i.nt = trunc i64 %i.nr to i32                  ; 2 uses
  br i1 %i.ns, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 0, ptr %i.nq, align 8, !tbaa !105
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  store i32 0, ptr %i.nu, align 4, !tbaa !106
  %i.nv = load ptr, ptr %i.np, align 8, !tbaa !98
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #23, !inline_history !310
  %i.ny = load ptr, ptr %i.np, align 8, !tbaa !98
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #23, !inline_history !310
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i.i.i.i.i95.i.i = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i.i.i.i.i.i95.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.oc = add nsw i32 %i.nt, -1
  store i32 %i.oc, ptr %i.nq, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.od = atomicrmw volatile add ptr %i.nq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nt, %bb.dz ], [ %i.od, %bb.ea ]
  %i.oe = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.oe, label %bb.eb, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i, !prof !107

bb.eb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i:     ; preds = %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.dx, %bb.dv
  %i.of = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !103 ; 8 uses
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %_ZN6duckdb18PrimitiveTypeStateD2Ev.exit.i.i, label %bb.ec

bb.ec:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 4 uses
  %i.oi = load atomic i64, ptr %i.oh acquire, align 8 ; 2 uses
  %i.oj = icmp eq i64 %i.oi, 4294967297
  %i.ok = trunc i64 %i.oi to i32                  ; 2 uses
  br i1 %i.oj, label %bb.ed, label %bb.ee

end_hunk_0
