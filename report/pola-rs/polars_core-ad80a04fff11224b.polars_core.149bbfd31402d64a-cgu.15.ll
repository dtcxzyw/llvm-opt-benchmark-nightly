Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.15?download=true
inline.NumInlined: 14462
inline.NumDeleted: 3805
loop-unroll.NumCompletelyUnrolled: 212
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB17_E0E0EB2P_:bb.a
  %i.iz = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.146.i.us, !dbg !272517 ; 2 uses
  %i.ja = load <2 x i64>, ptr %.sroa.9.147.i.us, align 4, !dbg !272518, !alias.scope !272252, !noalias !272253
  store <2 x i64> %i.ja, ptr %i.iz, align 4, !dbg !272518, !alias.scope !272253, !noalias !272252
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i.us, i64 16, !dbg !272519
  %i.jc = getelementptr i8, ptr %i.iz, i64 16, !dbg !272520
  %i.jd = getelementptr inbounds i8, ptr %.sroa.43.145.i.us, i64 -32, !dbg !272521 ; 2 uses
  %i.je = load <2 x i64>, ptr %i.jb, align 4, !dbg !272522, !alias.scope !272252, !noalias !272253
  store <2 x i64> %i.je, ptr %i.jc, align 4, !dbg !272522, !alias.scope !272253, !noalias !272252
  %i.jf = add i64 %.sroa.27.146.i.us, 4, !dbg !272523 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i.us, i64 32, !dbg !272524 ; 3 uses
  %i.jh = icmp ult ptr %i.jg, %i.iu, !dbg !272516
  br i1 %i.jh, label %.lr.ph.i68.us, label %._crit_edge.i58, !dbg !272516

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader, %bb.df
  %.sroa.9.147.i = phi ptr [ %i.lb, %bb.df ], [ %.sroa.9.0.i56, %.lr.ph.i68.preheader ] ; 10 uses
  %.sroa.27.146.i = phi i64 [ %i.la, %bb.df ], [ %.sroa.27.0.i55, %.lr.ph.i68.preheader ] ; 4 uses
  %.sroa.43.145.i = phi ptr [ %i.kv, %bb.df ], [ %.sroa.43.0.i54, %.lr.ph.i68.preheader ] ; 5 uses
  %i.ji = getelementptr i8, ptr %.sroa.9.147.i, i64 4, !dbg !272525
  %.val22.i69 = load i16, ptr %i.ji, align 2, !dbg !272525, !alias.scope !272252, !noalias !272253 ; 5 uses
  %i.jj = and i16 %.val22.i69, 32767, !dbg !272526
  %i.jk = icmp samesign ugt i16 %i.jj, 31744, !dbg !272526
  br i1 %i.jk, label %.thread.i, label %bb.cl, !dbg !272527

bb.cl:                                            ; preds = %.lr.ph.i68
  %.not.i4.i.i.i.i71 = icmp sgt i16 %.val22.i69, -1, !dbg !272528 ; 2 uses
  br i1 %i.iy, label %bb.cm, label %bb.cn, !dbg !272529

bb.cm:                                            ; preds = %bb.cl
  %.not22.i.i.i.i75 = icmp samesign ult i16 %.val23.i70, %.val22.i69
  %or.cond.i.i.i76 = select i1 %.not.i4.i.i.i.i71, i1 %.not22.i.i.i.i75, i1 false, !dbg !272529
  br i1 %or.cond.i.i.i76, label %.thread.i, label %.thread31.i, !dbg !272529

bb.cn:                                            ; preds = %bb.cl
  br i1 %.not.i4.i.i.i.i71, label %.split.i.i.i.i73, label %bb.co, !dbg !272529

.split.i.i.i.i73:                                 ; preds = %bb.cn
  %i.jl = or i16 %i.iw, %.val22.i69, !dbg !272530
  %.not.i.i.i.i74 = icmp eq i16 %i.jl, 0, !dbg !272530
  br i1 %.not.i.i.i.i74, label %.thread31.i, label %.thread.i, !dbg !272531

bb.co:                                            ; preds = %bb.cn
  %.not21.i.i.i.i72 = icmp samesign ult i16 %.val22.i69, %.val23.i70, !dbg !272532
  br i1 %.not21.i.i.i.i72, label %.thread.i, label %.thread31.i, !dbg !272531

.thread.i:                                        ; preds = %bb.co, %.split.i.i.i.i73, %bb.cm, %.lr.ph.i68
  %i.jm = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -8, !dbg !272533
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.sroa.27.146.i, !dbg !272517
  %i.jo = load i64, ptr %.sroa.9.147.i, align 4, !dbg !272518, !alias.scope !272252, !noalias !272256
  store i64 %i.jo, ptr %i.jn, align 4, !dbg !272518, !alias.scope !272253, !noalias !272257
  br label %bb.cp, !dbg !272534

.thread31.i:                                      ; preds = %bb.co, %.split.i.i.i.i73, %bb.cm
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.146.i, !dbg !272517
  %i.jq = load i64, ptr %.sroa.9.147.i, align 4, !dbg !272518, !alias.scope !272252, !noalias !272258
  store i64 %i.jq, ptr %i.jp, align 4, !dbg !272518, !alias.scope !272253, !noalias !272259
  %i.jr = add i64 %.sroa.27.146.i, 1, !dbg !272535
  br label %bb.cp, !dbg !272534

bb.cp:                                            ; preds = %.thread31.i, %.thread.i
  %i.js = phi i64 [ %.sroa.27.146.i, %.thread.i ], [ %i.jr, %.thread31.i ] ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 8, !dbg !272536 ; 2 uses
  %.val2030.in.i = getelementptr i8, ptr %.sroa.9.147.i, i64 12, !dbg !272537
  %.val2030.i = load i16, ptr %.val2030.in.i, align 2, !dbg !272537, !alias.scope !272252, !noalias !272253 ; 5 uses
  %i.ju = and i16 %.val2030.i, 32767, !dbg !272538
  %i.jv = icmp samesign ugt i16 %i.ju, 31744, !dbg !272538
  br i1 %i.jv, label %.thread33.i, label %bb.cq, !dbg !272539

bb.cq:                                            ; preds = %bb.cp
  %.not.i4.i.i.i24.i = icmp sgt i16 %.val2030.i, -1, !dbg !272540 ; 2 uses
  br i1 %i.iy, label %bb.cr, label %bb.cs, !dbg !272541

bb.cr:                                            ; preds = %bb.cq
  %.not22.i.i.i29.i = icmp samesign ult i16 %.val23.i70, %.val2030.i
  %or.cond.i.i30.i = select i1 %.not.i4.i.i.i24.i, i1 %.not22.i.i.i29.i, i1 false, !dbg !272541
  br i1 %or.cond.i.i30.i, label %.thread33.i, label %.thread37.i, !dbg !272541

bb.cs:                                            ; preds = %bb.cq
  br i1 %.not.i4.i.i.i24.i, label %.split.i.i.i27.i, label %bb.ct, !dbg !272541

.split.i.i.i27.i:                                 ; preds = %bb.cs
  %i.jw = or i16 %.val2030.i, %i.iw, !dbg !272542
  %.not.i.i.i28.i = icmp eq i16 %i.jw, 0, !dbg !272542
  br i1 %.not.i.i.i28.i, label %.thread37.i, label %.thread33.i, !dbg !272543

bb.ct:                                            ; preds = %bb.cs
  %.not21.i.i.i25.i = icmp samesign ult i16 %.val2030.i, %.val23.i70, !dbg !272544
  br i1 %.not21.i.i.i25.i, label %.thread33.i, label %.thread37.i, !dbg !272543

.thread33.i:                                      ; preds = %bb.ct, %.split.i.i.i27.i, %bb.cr, %bb.cp
  %i.jx = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -16, !dbg !272545
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.js, !dbg !272546
  %i.jz = load i64, ptr %i.jt, align 4, !dbg !272547, !alias.scope !272252, !noalias !272260
  store i64 %i.jz, ptr %i.jy, align 4, !dbg !272547, !alias.scope !272253, !noalias !272261
  br label %bb.cu, !dbg !272548

.thread37.i:                                      ; preds = %bb.ct, %.split.i.i.i27.i, %bb.cr
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.js, !dbg !272546
  %i.kb = load i64, ptr %i.jt, align 4, !dbg !272547, !alias.scope !272252, !noalias !272262
  store i64 %i.kb, ptr %i.ka, align 4, !dbg !272547, !alias.scope !272253, !noalias !272263
  %i.kc = add i64 %i.js, 1, !dbg !272549
  br label %bb.cu, !dbg !272548

bb.cu:                                            ; preds = %.thread37.i, %.thread33.i
  %i.kd = phi i64 [ %i.js, %.thread33.i ], [ %i.kc, %.thread37.i ] ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 16, !dbg !272519 ; 2 uses
  %.val1835.in.i = getelementptr i8, ptr %.sroa.9.147.i, i64 20, !dbg !272550
  %.val1835.i = load i16, ptr %.val1835.in.i, align 2, !dbg !272550, !alias.scope !272252, !noalias !272253 ; 5 uses
  %i.kf = and i16 %.val1835.i, 32767, !dbg !272551
  %i.kg = icmp samesign ugt i16 %i.kf, 31744, !dbg !272551
  br i1 %i.kg, label %.thread39.i, label %bb.cv, !dbg !272552

bb.cv:                                            ; preds = %bb.cu
  %.not.i4.i.i.i33.i = icmp sgt i16 %.val1835.i, -1, !dbg !272553 ; 2 uses
  br i1 %i.iy, label %bb.cw, label %bb.cx, !dbg !272554

bb.cw:                                            ; preds = %bb.cv
  %.not22.i.i.i38.i = icmp samesign ult i16 %.val23.i70, %.val1835.i
  %or.cond.i.i39.i = select i1 %.not.i4.i.i.i33.i, i1 %.not22.i.i.i38.i, i1 false, !dbg !272554
  br i1 %or.cond.i.i39.i, label %.thread39.i, label %.thread43.i, !dbg !272554

bb.cx:                                            ; preds = %bb.cv
  br i1 %.not.i4.i.i.i33.i, label %.split.i.i.i36.i, label %bb.cy, !dbg !272554

.split.i.i.i36.i:                                 ; preds = %bb.cx
  %i.kh = or i16 %.val1835.i, %i.iw, !dbg !272555
  %.not.i.i.i37.i = icmp eq i16 %i.kh, 0, !dbg !272555
  br i1 %.not.i.i.i37.i, label %.thread43.i, label %.thread39.i, !dbg !272556

bb.cy:                                            ; preds = %bb.cx
  %.not21.i.i.i34.i = icmp samesign ult i16 %.val1835.i, %.val23.i70, !dbg !272557
  br i1 %.not21.i.i.i34.i, label %.thread39.i, label %.thread43.i, !dbg !272556

.thread39.i:                                      ; preds = %bb.cy, %.split.i.i.i36.i, %bb.cw, %bb.cu
  %i.ki = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -24, !dbg !272558
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kd, !dbg !272520
  %i.kk = load i64, ptr %i.ke, align 4, !dbg !272522, !alias.scope !272252, !noalias !272264
  store i64 %i.kk, ptr %i.kj, align 4, !dbg !272522, !alias.scope !272253, !noalias !272265
  br label %bb.cz, !dbg !272559

.thread43.i:                                      ; preds = %bb.cy, %.split.i.i.i36.i, %bb.cw
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.kd, !dbg !272520
  %i.km = load i64, ptr %i.ke, align 4, !dbg !272522, !alias.scope !272252, !noalias !272266
  store i64 %i.km, ptr %i.kl, align 4, !dbg !272522, !alias.scope !272253, !noalias !272267
  %i.kn = add i64 %i.kd, 1, !dbg !272560
  br label %bb.cz, !dbg !272559

bb.cz:                                            ; preds = %.thread43.i, %.thread39.i
  %i.ko = phi i64 [ %i.kd, %.thread39.i ], [ %i.kn, %.thread43.i ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 24, !dbg !272561
  %.val1641.in.i = getelementptr i8, ptr %.sroa.9.147.i, i64 28, !dbg !272562
  %.val1641.i = load i16, ptr %.val1641.in.i, align 2, !dbg !272562, !alias.scope !272252, !noalias !272253 ; 5 uses
  %i.kq = and i16 %.val1641.i, 32767, !dbg !272563
  %i.kr = icmp samesign ugt i16 %i.kq, 31744, !dbg !272563
  br i1 %i.kr, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i, label %bb.da, !dbg !272564

bb.da:                                            ; preds = %bb.cz
  %.not.i4.i.i.i42.i = icmp sgt i16 %.val1641.i, -1, !dbg !272565 ; 2 uses
  br i1 %i.iy, label %bb.db, label %bb.dc, !dbg !272566

bb.db:                                            ; preds = %bb.da
  %.not22.i.i.i47.i = icmp samesign ult i16 %.val23.i70, %.val1641.i
  %or.cond.i.i48.i = select i1 %.not.i4.i.i.i42.i, i1 %.not22.i.i.i47.i, i1 false, !dbg !272566
  br i1 %or.cond.i.i48.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i, label %bb.de, !dbg !272566

bb.dc:                                            ; preds = %bb.da
  br i1 %.not.i4.i.i.i42.i, label %.split.i.i.i45.i, label %bb.dd, !dbg !272566

.split.i.i.i45.i:                                 ; preds = %bb.dc
  %i.ks = or i16 %.val1641.i, %i.iw, !dbg !272567
  %.not.i.i.i46.i = icmp eq i16 %i.ks, 0, !dbg !272567
  br i1 %.not.i.i.i46.i, label %bb.de, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i, !dbg !272568

bb.dd:                                            ; preds = %bb.dc
  %.not21.i.i.i43.i = icmp samesign ult i16 %.val1641.i, %.val23.i70, !dbg !272569
  br i1 %.not21.i.i.i43.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i, label %bb.de, !dbg !272568

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i: ; preds = %bb.dd, %.split.i.i.i45.i, %bb.db, %bb.cz
  %i.kt = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -32, !dbg !272521 ; 2 uses
  br label %bb.df, !dbg !272570

bb.de:                                            ; preds = %bb.dd, %.split.i.i.i45.i, %bb.db
  %i.ku = getelementptr inbounds i8, ptr %.sroa.43.145.i, i64 -32, !dbg !272521
  br label %bb.df, !dbg !272570

bb.df:                                            ; preds = %bb.de, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i
  %i.kv = phi ptr [ %i.ku, %bb.de ], [ %i.kt, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i ] ; 2 uses
  %i.kw = phi i64 [ 1, %bb.de ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i ]
  %i.kx = phi ptr [ %2, %bb.de ], [ %i.kt, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit49.thread.i ], !dbg !272570
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.ko, !dbg !272571
  %i.kz = load i64, ptr %i.kp, align 4, !dbg !272572, !alias.scope !272252, !noalias !272268
  store i64 %i.kz, ptr %i.ky, align 4, !dbg !272572, !alias.scope !272253, !noalias !272269
  %i.la = add i64 %i.ko, %i.kw, !dbg !272523      ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.9.147.i, i64 32, !dbg !272524 ; 3 uses
  %i.lc = icmp ult ptr %i.lb, %i.iu, !dbg !272516
  br i1 %i.lc, label %.lr.ph.i68, label %._crit_edge.i58, !dbg !272516

._crit_edge.i58:                                  ; preds = %bb.df, %.lr.ph.i68.us, %bb.ck
  %.sroa.43.1.lcssa.i59 = phi ptr [ %.sroa.43.0.i54, %bb.ck ], [ %i.jd, %.lr.ph.i68.us ], [ %i.kv, %bb.df ], !dbg !272513 ; 4 uses
  %.sroa.27.1.lcssa.i60 = phi i64 [ %.sroa.27.0.i55, %bb.ck ], [ %i.jf, %.lr.ph.i68.us ], [ %i.la, %bb.df ], !dbg !272513 ; 5 uses
  %.sroa.9.1.lcssa.i61 = phi ptr [ %.sroa.9.0.i56, %bb.ck ], [ %i.jg, %.lr.ph.i68.us ], [ %i.lb, %bb.df ], !dbg !272513 ; 7 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.0.0.i57, !dbg !272573 ; 3 uses
  %i.le = icmp ult ptr %.sroa.9.1.lcssa.i61, %i.ld, !dbg !272574
  br i1 %i.le, label %.lr.ph54.i.preheader, label %._crit_edge55.i, !dbg !272574

.lr.ph54.i.preheader:                             ; preds = %._crit_edge.i58
  %.val15.i67 = load i16, ptr %i.ir, align 2, !alias.scope !272254, !noalias !272255, !noundef !8787 ; 4 uses
  %i.lf = and i16 %.val15.i67, 32767              ; 2 uses
  %i.lg = icmp samesign ugt i16 %i.lf, 31744
  %i.lh = icmp sgt i16 %.val15.i67, -1
  br i1 %i.lg, label %.lr.ph54.i.us.preheader, label %.lr.ph54.i

.lr.ph54.i.us.preheader:                          ; preds = %.lr.ph54.i.preheader
  %i.li = shl i64 %.sroa.0.0.i57, 3, !dbg !272574
  %7 = ptrtoaddr ptr %.sroa.9.1.lcssa.i61 to i64, !dbg !272574
  %i.lj = add i64 %i.li, %i.e, !dbg !272574
  %i.lk = xor i64 %7, -1, !dbg !272574
  %i.ll = add i64 %i.lj, %i.lk, !dbg !272574      ; 2 uses
  %i.lm = lshr i64 %i.ll, 3, !dbg !272574
  %i.ln = add nuw nsw i64 %i.lm, 1, !dbg !272574  ; 2 uses
  %min.iters.check389 = icmp ult i64 %i.ll, 24, !dbg !272574
  br i1 %min.iters.check389, label %.lr.ph54.i.us.preheader422, label %vector.ph390, !dbg !272574

vector.ph390:                                     ; preds = %.lr.ph54.i.us.preheader
  %n.vec391 = and i64 %i.ln, 4611686018427387900  ; 5 uses
  %i.lo = shl i64 %n.vec391, 3
  %i.lp = getelementptr i8, ptr %.sroa.9.1.lcssa.i61, i64 %i.lo ; 2 uses
  %i.lq = add i64 %.sroa.27.1.lcssa.i60, %n.vec391 ; 2 uses
  %i.lr = mul i64 %n.vec391, -8
  %i.ls = getelementptr i8, ptr %.sroa.43.1.lcssa.i59, i64 %i.lr ; 2 uses
  %i.lt = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i60
  br label %vector.body392, !dbg !272574

vector.body392:                                   ; preds = %vector.body392, %vector.ph390
  %index393 = phi i64 [ 0, %vector.ph390 ], [ %index.next396, %vector.body392 ] ; 3 uses
  %i.lu = shl i64 %index393, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i61, i64 %i.lu ; 2 uses
  %i.lv = getelementptr [8 x i8], ptr %i.lt, i64 %index393, !dbg !272575 ; 2 uses
  %i.lw = getelementptr i8, ptr %next.gep, i64 16, !dbg !272576
  %wide.load394 = load <2 x i64>, ptr %next.gep, align 4, !dbg !272576, !alias.scope !272252, !noalias !272270
  %wide.load395 = load <2 x i64>, ptr %i.lw, align 4, !dbg !272576, !alias.scope !272252, !noalias !272270
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 16, !dbg !272576
  store <2 x i64> %wide.load394, ptr %i.lv, align 4, !dbg !272576, !alias.scope !272253, !noalias !272271
  store <2 x i64> %wide.load395, ptr %i.lx, align 4, !dbg !272576, !alias.scope !272253, !noalias !272271
  %index.next396 = add nuw i64 %index393, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next396, %n.vec391, !dbg !272574
  br i1 %i.ly, label %middle.block397, label %vector.body392, !dbg !272574, !llvm.loop !272172

middle.block397:                                  ; preds = %vector.body392
  %cmp.n398 = icmp eq i64 %i.ln, %n.vec391, !dbg !272574
  br i1 %cmp.n398, label %._crit_edge55.i, label %.lr.ph54.i.us.preheader422, !dbg !272574

.lr.ph54.i.us.preheader422:                       ; preds = %.lr.ph54.i.us.preheader, %middle.block397
  %.sroa.9.252.i.us.ph = phi ptr [ %.sroa.9.1.lcssa.i61, %.lr.ph54.i.us.preheader ], [ %i.lp, %middle.block397 ]
  %.sroa.27.251.i.us.ph = phi i64 [ %.sroa.27.1.lcssa.i60, %.lr.ph54.i.us.preheader ], [ %i.lq, %middle.block397 ]
  %.sroa.43.250.i.us.ph = phi ptr [ %.sroa.43.1.lcssa.i59, %.lr.ph54.i.us.preheader ], [ %i.ls, %middle.block397 ]
  br label %.lr.ph54.i.us, !dbg !272574

.lr.ph54.i.us:                                    ; preds = %.lr.ph54.i.us.preheader422, %.lr.ph54.i.us
  %.sroa.9.252.i.us = phi ptr [ %i.md, %.lr.ph54.i.us ], [ %.sroa.9.252.i.us.ph, %.lr.ph54.i.us.preheader422 ] ; 2 uses
  %.sroa.27.251.i.us = phi i64 [ %i.mc, %.lr.ph54.i.us ], [ %.sroa.27.251.i.us.ph, %.lr.ph54.i.us.preheader422 ] ; 2 uses
  %.sroa.43.250.i.us = phi ptr [ %i.lz, %.lr.ph54.i.us ], [ %.sroa.43.250.i.us.ph, %.lr.ph54.i.us.preheader422 ]
  %i.lz = getelementptr inbounds i8, ptr %.sroa.43.250.i.us, i64 -8, !dbg !272577 ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.251.i.us, !dbg !272575
  %i.mb = load i64, ptr %.sroa.9.252.i.us, align 4, !dbg !272576, !alias.scope !272252, !noalias !272270
  store i64 %i.mb, ptr %i.ma, align 4, !dbg !272576, !alias.scope !272253, !noalias !272271
  %i.mc = add i64 %.sroa.27.251.i.us, 1, !dbg !272578 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.9.252.i.us, i64 8, !dbg !272579 ; 3 uses
  %i.me = icmp ult ptr %i.md, %i.ld, !dbg !272574
  br i1 %i.me, label %.lr.ph54.i.us, label %._crit_edge55.i, !dbg !272574, !llvm.loop !272175

._crit_edge55.i:                                  ; preds = %bb.dl, %.lr.ph54.i.us, %middle.block397, %._crit_edge.i58
  %.sroa.43.2.lcssa.i62 = phi ptr [ %.sroa.43.1.lcssa.i59, %._crit_edge.i58 ], [ %i.lz, %.lr.ph54.i.us ], [ %i.ls, %middle.block397 ], [ %i.mm, %bb.dl ], !dbg !272513
  %.sroa.27.2.lcssa.i63 = phi i64 [ %.sroa.27.1.lcssa.i60, %._crit_edge.i58 ], [ %i.mc, %.lr.ph54.i.us ], [ %i.lq, %middle.block397 ], [ %i.mr, %bb.dl ], !dbg !272513 ; 9 uses
  %.sroa.9.2.lcssa.i64 = phi ptr [ %.sroa.9.1.lcssa.i61, %._crit_edge.i58 ], [ %i.md, %.lr.ph54.i.us ], [ %i.lp, %middle.block397 ], [ %i.ms, %bb.dl ], !dbg !272513 ; 2 uses
  %i.mf = icmp eq i64 %.sroa.0.0.i57, %.sroa.16.0120380, !dbg !272580
  br i1 %i.mf, label %bb.dn, label %bb.dm, !dbg !272580

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %bb.dl
  %.sroa.9.252.i = phi ptr [ %i.ms, %bb.dl ], [ %.sroa.9.1.lcssa.i61, %.lr.ph54.i.preheader ] ; 3 uses
  %.sroa.27.251.i = phi i64 [ %i.mr, %bb.dl ], [ %.sroa.27.1.lcssa.i60, %.lr.ph54.i.preheader ] ; 2 uses
  %.sroa.43.250.i = phi ptr [ %i.mm, %bb.dl ], [ %.sroa.43.1.lcssa.i59, %.lr.ph54.i.preheader ] ; 2 uses
  %i.mg = getelementptr i8, ptr %.sroa.9.252.i, i64 4, !dbg !272581
  %.val.i66 = load i16, ptr %i.mg, align 2, !dbg !272581, !alias.scope !272252, !noalias !272253 ; 5 uses
  %i.mh = and i16 %.val.i66, 32767, !dbg !272582
  %i.mi = icmp samesign ugt i16 %i.mh, 31744, !dbg !272582
  br i1 %i.mi, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i, label %bb.dg, !dbg !272583

bb.dg:                                            ; preds = %.lr.ph54.i
  %.not.i4.i.i.i51.i = icmp sgt i16 %.val.i66, -1, !dbg !272584 ; 2 uses
  br i1 %i.lh, label %bb.dh, label %bb.di, !dbg !272585

bb.dh:                                            ; preds = %bb.dg
  %.not22.i.i.i56.i = icmp samesign ult i16 %.val15.i67, %.val.i66
  %or.cond.i.i57.i = select i1 %.not.i4.i.i.i51.i, i1 %.not22.i.i.i56.i, i1 false, !dbg !272585
  br i1 %or.cond.i.i57.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i, label %bb.dk, !dbg !272585

bb.di:                                            ; preds = %bb.dg
  br i1 %.not.i4.i.i.i51.i, label %.split.i.i.i54.i, label %bb.dj, !dbg !272585

.split.i.i.i54.i:                                 ; preds = %bb.di
  %i.mj = or i16 %i.lf, %.val.i66, !dbg !272586
  %.not.i.i.i55.i = icmp eq i16 %i.mj, 0, !dbg !272586
  br i1 %.not.i.i.i55.i, label %bb.dk, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i, !dbg !272587

bb.dj:                                            ; preds = %bb.di
  %.not21.i.i.i52.i = icmp samesign ult i16 %.val.i66, %.val15.i67, !dbg !272588
  br i1 %.not21.i.i.i52.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i, label %bb.dk, !dbg !272587

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i: ; preds = %bb.dj, %.split.i.i.i54.i, %bb.dh, %.lr.ph54.i
  %i.mk = getelementptr inbounds i8, ptr %.sroa.43.250.i, i64 -8, !dbg !272577 ; 2 uses
  br label %bb.dl, !dbg !272589

bb.dk:                                            ; preds = %bb.dj, %.split.i.i.i54.i, %bb.dh
  %i.ml = getelementptr inbounds i8, ptr %.sroa.43.250.i, i64 -8, !dbg !272577
  br label %bb.dl, !dbg !272589

bb.dl:                                            ; preds = %bb.dk, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i
  %i.mm = phi ptr [ %i.ml, %bb.dk ], [ %i.mk, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i ] ; 2 uses
  %i.mn = phi i64 [ 1, %bb.dk ], [ 0, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i ]
  %i.mo = phi ptr [ %2, %bb.dk ], [ %i.mk, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB17_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB19_E0E0E0B2R_.exit58.thread.i ], !dbg !272589
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.sroa.27.251.i, !dbg !272575
  %i.mq = load i64, ptr %.sroa.9.252.i, align 4, !dbg !272576, !alias.scope !272252, !noalias !272270
  store i64 %i.mq, ptr %i.mp, align 4, !dbg !272576, !alias.scope !272253, !noalias !272271
  %i.mr = add i64 %i.mn, %.sroa.27.251.i, !dbg !272578 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.9.252.i, i64 8, !dbg !272579 ; 3 uses
  %i.mt = icmp ult ptr %i.ms, %i.ld, !dbg !272574
  br i1 %i.mt, label %.lr.ph54.i, label %._crit_edge55.i, !dbg !272574

bb.dm:                                            ; preds = %._crit_edge55.i
  %i.mu = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i62, i64 -8, !dbg !272590
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i63, !dbg !272591
  %i.mw = load i64, ptr %.sroa.9.2.lcssa.i64, align 4, !dbg !272592, !alias.scope !272252, !noalias !272272
  store i64 %i.mw, ptr %i.mv, align 4, !dbg !272592, !alias.scope !272253, !noalias !272273
  %i.mx = add i64 %.sroa.27.2.lcssa.i63, 1, !dbg !272593
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i64, i64 8, !dbg !272594
  br label %bb.ck, !dbg !272511

bb.dn:                                            ; preds = %._crit_edge55.i
  %i.mz = shl i64 %.sroa.27.2.lcssa.i63, 3, !dbg !272595
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph133, ptr nonnull align 4 %2, i64 %i.mz, i1 false), !dbg !272595, !alias.scope !272274
  %i.na = sub i64 %.sroa.16.0120380, %.sroa.27.2.lcssa.i63, !dbg !272596 ; 7 uses
  %.not63.i = icmp eq i64 %.sroa.16.0120380, %.sroa.27.2.lcssa.i63, !dbg !272597
  br i1 %.not63.i, label %.outer._crit_edge.thread, label %.lr.ph61.i, !dbg !272598

.lr.ph61.i:                                       ; preds = %bb.dn
  %i.nb = getelementptr [8 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.27.2.lcssa.i63 ; 2 uses
  %min.iters.check = icmp ult i64 %i.na, 4, !dbg !272598
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !272598

vector.ph:                                        ; preds = %.lr.ph61.i
  %n.vec = and i64 %i.na, -4                      ; 3 uses
  br label %vector.body, !dbg !272598

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !272599 ; 3 uses
  %i.nc = xor i64 %index, -1, !dbg !272600
  %i.nd = getelementptr [8 x i8], ptr %i.is, i64 %i.nc, !dbg !272601 ; 2 uses
  %i.ne = getelementptr [8 x i8], ptr %i.nb, i64 %index, !dbg !272602 ; 2 uses
  %i.nf = getelementptr i8, ptr %i.nd, i64 -8, !dbg !272603
  %i.ng = getelementptr i8, ptr %i.nd, i64 -24, !dbg !272603
  %wide.load = load <2 x i64>, ptr %i.nf, align 4, !dbg !272603, !alias.scope !272253, !noalias !272252
  %wide.load386 = load <2 x i64>, ptr %i.ng, align 4, !dbg !272603, !alias.scope !272253, !noalias !272252
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !272603
  %reverse387 = shufflevector <2 x i64> %wide.load386, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !272603
  %i.nh = getelementptr i8, ptr %i.ne, i64 16, !dbg !272603
  store <2 x i64> %reverse, ptr %i.ne, align 4, !dbg !272603, !alias.scope !272252, !noalias !272253
  store <2 x i64> %reverse387, ptr %i.nh, align 4, !dbg !272603, !alias.scope !272252, !noalias !272253
  %index.next = add nuw i64 %index, 4, !dbg !272599 ; 2 uses
  %i.ni = icmp eq i64 %index.next, %n.vec, !dbg !272598
  br i1 %i.ni, label %middle.block, label %vector.body, !dbg !272598, !llvm.loop !272213

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.na, %n.vec, !dbg !272598
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit, label %scalar.ph.preheader, !dbg !272598

scalar.ph.preheader:                              ; preds = %.lr.ph61.i, %middle.block
  %.sroa.07.059.i.ph = phi i64 [ 0, %.lr.ph61.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !272598

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.059.i = phi i64 [ %i.nj, %scalar.ph ], [ %.sroa.07.059.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.nj = add nuw i64 %.sroa.07.059.i, 1, !dbg !272599 ; 2 uses
  %i.nk = xor i64 %.sroa.07.059.i, -1, !dbg !272600
  %i.nl = getelementptr [8 x i8], ptr %i.is, i64 %i.nk, !dbg !272601
  %i.nm = getelementptr [8 x i8], ptr %i.nb, i64 %.sroa.07.059.i, !dbg !272602
  %i.nn = load i64, ptr %i.nl, align 4, !dbg !272603, !alias.scope !272253, !noalias !272252
  store i64 %i.nn, ptr %i.nm, align 4, !dbg !272603, !alias.scope !272252, !noalias !272253
  %exitcond.not.i65 = icmp eq i64 %i.nj, %i.na, !dbg !272597
  br i1 %exitcond.not.i65, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit, label %scalar.ph, !dbg !272598, !llvm.loop !272214

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit: ; preds = %scalar.ph, %middle.block
  %i.no = icmp ugt i64 %.sroa.27.2.lcssa.i63, %.sroa.16.0120380, !dbg !272604
  br i1 %i.no, label %bb.do, label %.outer, !dbg !272604, !prof !8988

.outer._crit_edge.thread:                         ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !272507
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1u_E0E0EB3c_.exit, !dbg !272282

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.27.2.lcssa.i63, !dbg !272605 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !272507
  %i.nq = icmp ult i64 %i.na, 33, !dbg !272279
  br i1 %i.nq, label %.outer._crit_edge, label %.lr.ph, !dbg !272279

bb.do:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implB1f_E0E0E0EB3j_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i63, i64 noundef %.sroa.16.0120380, i64 noundef %.sroa.16.0120380, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #57, !dbg !272606
  unreachable, !dbg !272606
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmRShENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_11sort_by_keyB17_NCNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple24argsort_multiple_row_fmts_0E0EB2h_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !272607 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !273060
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !273060

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmfENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0EB27_:bb.a
  %i.ix = icmp ult ptr %.sroa.9.1.lcssa.i, %i.iw, !dbg !284486
  br i1 %i.ix, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !284486

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.jc, %.lr.ph38.i ], !dbg !284437
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.jg, %.lr.ph38.i ], !dbg !284437 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.jh, %.lr.ph38.i ], !dbg !284437 ; 2 uses
  %i.iy = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0122315, !dbg !284487
  br i1 %i.iy, label %bb.y, label %bb.x, !dbg !284487

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.jh, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.jg, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.jc, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %i.iz = getelementptr i8, ptr %.sroa.9.236.i, i64 4, !dbg !284488
  %.val.i = load float, ptr %i.iz, align 4, !dbg !284488, !alias.scope !284177, !noalias !284178, !noundef !8787 ; 2 uses
  %i.ja = fcmp ord float %.val.i, 0.000000e+00, !dbg !284489
  %i.jb = fcmp ult float %.val.i, %i.he, !dbg !284490
  %.not2.i.i.i30.i = and i1 %i.ja, %i.jb, !dbg !284491 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8, !dbg !284492 ; 3 uses
  %.sroa.01.0.i31.i = select i1 %.not2.i.i.i30.i, ptr %2, ptr %i.jc, !dbg !284493
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i31.i, i64 %.sroa.27.235.i, !dbg !284494
  %i.je = load i64, ptr %.sroa.9.236.i, align 4, !dbg !284495, !alias.scope !284175, !noalias !284187
  store i64 %i.je, ptr %i.jd, align 4, !dbg !284495, !alias.scope !284176, !noalias !284188
  %i.jf = zext i1 %.not2.i.i.i30.i to i64, !dbg !284496
  %i.jg = add i64 %.sroa.27.235.i, %i.jf, !dbg !284497 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8, !dbg !284498 ; 3 uses
  %i.ji = icmp ult ptr %i.jh, %i.iw, !dbg !284486
  br i1 %i.ji, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !284486

bb.x:                                             ; preds = %._crit_edge39.i
  %i.jj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8, !dbg !284499 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %.sroa.27.2.lcssa.i, !dbg !284500
  %i.jl = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !dbg !284501, !alias.scope !284175, !noalias !284189
  store i64 %i.jl, ptr %i.jk, align 4, !dbg !284501, !alias.scope !284176, !noalias !284190
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8, !dbg !284502
  br label %bb.w, !dbg !284435

bb.y:                                             ; preds = %._crit_edge39.i
  %i.jn = shl i64 %.sroa.27.2.lcssa.i, 3, !dbg !284503
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph131, ptr nonnull align 4 %2, i64 %i.jn, i1 false), !dbg !284503, !alias.scope !284191
  %i.jo = sub i64 %.sroa.16.0122315, %.sroa.27.2.lcssa.i, !dbg !284504 ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0122315, %.sroa.27.2.lcssa.i, !dbg !284505
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !284506

.lr.ph45.i:                                       ; preds = %bb.y
  %i.jp = getelementptr [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check354 = icmp ult i64 %i.jo, 4, !dbg !284506
  br i1 %min.iters.check354, label %scalar.ph353.preheader, label %vector.ph355, !dbg !284506

vector.ph355:                                     ; preds = %.lr.ph45.i
  %n.vec356 = and i64 %i.jo, -4                   ; 3 uses
  br label %vector.body357, !dbg !284506

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next363, %vector.body357 ], !dbg !284507 ; 3 uses
  %i.jq = xor i64 %index358, -1, !dbg !284508
  %i.jr = getelementptr [8 x i8], ptr %i.hh, i64 %i.jq, !dbg !284509 ; 2 uses
  %i.js = getelementptr [8 x i8], ptr %i.jp, i64 %index358, !dbg !284510 ; 2 uses
  %i.jt = getelementptr i8, ptr %i.jr, i64 -8, !dbg !284511
  %i.ju = getelementptr i8, ptr %i.jr, i64 -24, !dbg !284511
  %wide.load359 = load <2 x i64>, ptr %i.jt, align 4, !dbg !284511, !alias.scope !284176, !noalias !284175
  %wide.load360 = load <2 x i64>, ptr %i.ju, align 4, !dbg !284511, !alias.scope !284176, !noalias !284175
  %reverse361 = shufflevector <2 x i64> %wide.load359, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !284511
  %reverse362 = shufflevector <2 x i64> %wide.load360, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !284511
  %i.jv = getelementptr i8, ptr %i.js, i64 16, !dbg !284511
  store <2 x i64> %reverse361, ptr %i.js, align 4, !dbg !284511, !alias.scope !284175, !noalias !284176
  store <2 x i64> %reverse362, ptr %i.jv, align 4, !dbg !284511, !alias.scope !284175, !noalias !284176
  %index.next363 = add nuw i64 %index358, 4, !dbg !284507 ; 2 uses
  %i.jw = icmp eq i64 %index.next363, %n.vec356, !dbg !284506
  br i1 %i.jw, label %middle.block364, label %vector.body357, !dbg !284506, !llvm.loop !283994

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %i.jo, %n.vec356, !dbg !284506
  br i1 %cmp.n365, label %.loopexit, label %scalar.ph353.preheader, !dbg !284506

scalar.ph353.preheader:                           ; preds = %.lr.ph45.i, %middle.block364
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec356, %middle.block364 ]
  br label %scalar.ph353, !dbg !284506

scalar.ph353:                                     ; preds = %scalar.ph353.preheader, %scalar.ph353
  %.sroa.07.043.i = phi i64 [ %i.jx, %scalar.ph353 ], [ %.sroa.07.043.i.ph, %scalar.ph353.preheader ] ; 3 uses
  %i.jx = add nuw i64 %.sroa.07.043.i, 1, !dbg !284507 ; 2 uses
  %i.jy = xor i64 %.sroa.07.043.i, -1, !dbg !284508
  %i.jz = getelementptr [8 x i8], ptr %i.hh, i64 %i.jy, !dbg !284509
  %i.ka = getelementptr [8 x i8], ptr %i.jp, i64 %.sroa.07.043.i, !dbg !284510
  %i.kb = load i64, ptr %i.jz, align 4, !dbg !284511, !alias.scope !284176, !noalias !284175
  store i64 %i.kb, ptr %i.ka, align 4, !dbg !284511, !alias.scope !284175, !noalias !284176
  %exitcond.not.i39 = icmp eq i64 %i.jx, %i.jo, !dbg !284505
  br i1 %exitcond.not.i39, label %.loopexit, label %scalar.ph353, !dbg !284506, !llvm.loop !283995

.loopexit:                                        ; preds = %scalar.ph353, %middle.block364, %bb.y
  %i.kc = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !284512
  br i1 %i.kc, label %.thread, label %bb.z, !dbg !284513

bb.z:                                             ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0122315, !dbg !284514
  br i1 %.not.i42, label %bb.aa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmfE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !284514, !prof !8988

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @128, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #57, !dbg !284515, !noalias !284193
  unreachable, !dbg !284515

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmfE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.z
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i, !dbg !284516
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph131) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmfENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0EB27_(ptr noalias noundef nonnull align 4 %i.kd, i64 noundef %i.jo, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.gj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #54, !dbg !284517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !284518
  %i.ke = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !284217
  br i1 %i.ke, label %.outer._crit_edge, label %bb.b, !dbg !284217

.thread:                                          ; preds = %bb.s, %.loopexit
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284194), !dbg !284519
  call void @llvm.experimental.noalias.scope.decl(metadata !284195), !dbg !284519
  %.not85 = icmp samesign ult i64 %3, %.sroa.16.0122315, !dbg !284520
  br i1 %.not85, label %bb.ac, label %bb.ab, !dbg !284520, !prof !9308

bb.ab:                                            ; preds = %.thread
  %i.kg = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0122315, !dbg !284521 ; 3 uses
  br label %bb.ad, !dbg !284522

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap(), !dbg !284523
  unreachable, !dbg !284523

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.43.0.i45 = phi ptr [ %i.kg, %bb.ab ], [ %i.nc, %bb.ae ], !dbg !284524 ; 2 uses
  %.sroa.27.0.i46 = phi i64 [ 0, %bb.ab ], [ %i.nf, %bb.ae ], !dbg !284524 ; 2 uses
  %.sroa.9.0.i47 = phi ptr [ %.sroa.0.0.ph131, %bb.ab ], [ %i.ng, %bb.ae ], !dbg !284524 ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i37, %bb.ab ], [ %.sroa.16.0122315, %bb.ae ] ; 4 uses
  %i.kh = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i48, i64 3), !dbg !284525
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %i.kh, !dbg !284526 ; 2 uses
  %i.kj = icmp ult ptr %.sroa.9.0.i47, %i.ki, !dbg !284527
  br i1 %i.kj, label %.lr.ph.i68.preheader, label %._crit_edge.i49, !dbg !284527

.lr.ph.i68.preheader:                             ; preds = %bb.ad
  %.val23.i73 = load float, ptr %i.kf, align 4, !alias.scope !284196, !noalias !284197, !noundef !8787 ; 5 uses
  %i.kk = fcmp uno float %.val23.i73, 0.000000e+00 ; 4 uses
  br label %.lr.ph.i68, !dbg !284527

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader, %.lr.ph.i68
  %.sroa.9.131.i69 = phi ptr [ %i.lq, %.lr.ph.i68 ], [ %.sroa.9.0.i47, %.lr.ph.i68.preheader ] ; 9 uses
  %.sroa.27.130.i70 = phi i64 [ %i.lp, %.lr.ph.i68 ], [ %.sroa.27.0.i46, %.lr.ph.i68.preheader ] ; 2 uses
  %.sroa.43.129.i71 = phi ptr [ %i.ll, %.lr.ph.i68 ], [ %.sroa.43.0.i45, %.lr.ph.i68.preheader ] ; 4 uses
  %i.kl = getelementptr i8, ptr %.sroa.9.131.i69, i64 4, !dbg !284528
  %.val22.i72 = load float, ptr %i.kl, align 4, !dbg !284528, !alias.scope !284198, !noalias !284199, !noundef !8787
  %i.km = fcmp oge float %.val23.i73, %.val22.i72, !dbg !284529
  %.not2.i.i.i.not.i.i = or i1 %i.kk, %i.km, !dbg !284530 ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -8, !dbg !284531
  %.sroa.01.0.i.i74 = select i1 %.not2.i.i.i.not.i.i, ptr %2, ptr %i.kn, !dbg !284532
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i74, i64 %.sroa.27.130.i70, !dbg !284533
  %i.kp = load i64, ptr %.sroa.9.131.i69, align 4, !dbg !284534, !alias.scope !284194, !noalias !284200
  store i64 %i.kp, ptr %i.ko, align 4, !dbg !284534, !alias.scope !284195, !noalias !284201
  %i.kq = zext i1 %.not2.i.i.i.not.i.i to i64, !dbg !284535
  %i.kr = add i64 %.sroa.27.130.i70, %i.kq, !dbg !284536 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 8, !dbg !284537
  %i.kt = getelementptr i8, ptr %.sroa.9.131.i69, i64 12, !dbg !284538
  %.val20.i75 = load float, ptr %i.kt, align 4, !dbg !284538, !alias.scope !284198, !noalias !284199, !noundef !8787
  %i.ku = fcmp oge float %.val23.i73, %.val20.i75, !dbg !284539
  %.not2.i.i.i.not.i24.i = or i1 %i.kk, %i.ku, !dbg !284540 ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -16, !dbg !284541
  %.sroa.01.0.i25.i76 = select i1 %.not2.i.i.i.not.i24.i, ptr %2, ptr %i.kv, !dbg !284542
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.kr, !dbg !284543
  %i.kx = load i64, ptr %i.ks, align 4, !dbg !284544, !alias.scope !284194, !noalias !284202
  store i64 %i.kx, ptr %i.kw, align 4, !dbg !284544, !alias.scope !284195, !noalias !284203
  %i.ky = zext i1 %.not2.i.i.i.not.i24.i to i64, !dbg !284545
  %i.kz = add i64 %i.kr, %i.ky, !dbg !284546      ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 16, !dbg !284547
  %i.lb = getelementptr i8, ptr %.sroa.9.131.i69, i64 20, !dbg !284548
  %.val18.i77 = load float, ptr %i.lb, align 4, !dbg !284548, !alias.scope !284198, !noalias !284199, !noundef !8787
  %i.lc = fcmp oge float %.val23.i73, %.val18.i77, !dbg !284549
  %.not2.i.i.i.not.i26.i = or i1 %i.kk, %i.lc, !dbg !284550 ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -24, !dbg !284551
  %.sroa.01.0.i27.i78 = select i1 %.not2.i.i.i.not.i26.i, ptr %2, ptr %i.ld, !dbg !284552
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i78, i64 %i.kz, !dbg !284553
  %i.lf = load i64, ptr %i.la, align 4, !dbg !284554, !alias.scope !284194, !noalias !284204
  store i64 %i.lf, ptr %i.le, align 4, !dbg !284554, !alias.scope !284195, !noalias !284205
  %i.lg = zext i1 %.not2.i.i.i.not.i26.i to i64, !dbg !284555
  %i.lh = add i64 %i.kz, %i.lg, !dbg !284556      ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 24, !dbg !284557
  %i.lj = getelementptr i8, ptr %.sroa.9.131.i69, i64 28, !dbg !284558
  %.val16.i79 = load float, ptr %i.lj, align 4, !dbg !284558, !alias.scope !284198, !noalias !284199, !noundef !8787
  %i.lk = fcmp oge float %.val23.i73, %.val16.i79, !dbg !284559
  %.not2.i.i.i.not.i28.i = or i1 %i.kk, %i.lk, !dbg !284560 ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -32, !dbg !284561 ; 3 uses
  %.sroa.01.0.i29.i80 = select i1 %.not2.i.i.i.not.i28.i, ptr %2, ptr %i.ll, !dbg !284562
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i29.i80, i64 %i.lh, !dbg !284563
  %i.ln = load i64, ptr %i.li, align 4, !dbg !284564, !alias.scope !284194, !noalias !284206
  store i64 %i.ln, ptr %i.lm, align 4, !dbg !284564, !alias.scope !284195, !noalias !284207
  %i.lo = zext i1 %.not2.i.i.i.not.i28.i to i64, !dbg !284565
  %i.lp = add i64 %i.lh, %i.lo, !dbg !284566      ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 32, !dbg !284567 ; 3 uses
  %i.lr = icmp ult ptr %i.lq, %i.ki, !dbg !284527
  br i1 %i.lr, label %.lr.ph.i68, label %._crit_edge.i49, !dbg !284527

._crit_edge.i49:                                  ; preds = %.lr.ph.i68, %bb.ad
  %.sroa.43.1.lcssa.i50 = phi ptr [ %.sroa.43.0.i45, %bb.ad ], [ %i.ll, %.lr.ph.i68 ], !dbg !284524 ; 4 uses
  %.sroa.27.1.lcssa.i51 = phi i64 [ %.sroa.27.0.i46, %bb.ad ], [ %i.lp, %.lr.ph.i68 ], !dbg !284524 ; 5 uses
  %.sroa.9.1.lcssa.i52 = phi ptr [ %.sroa.9.0.i47, %bb.ad ], [ %i.lq, %.lr.ph.i68 ], !dbg !284524 ; 7 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i48, !dbg !284568 ; 3 uses
  %i.lt = icmp ult ptr %.sroa.9.1.lcssa.i52, %i.ls, !dbg !284569
  br i1 %i.lt, label %.lr.ph38.i61.preheader, label %._crit_edge39.i53, !dbg !284569

.lr.ph38.i61.preheader:                           ; preds = %._crit_edge.i49
  %.val15.i66 = load float, ptr %i.kf, align 4, !alias.scope !284196, !noalias !284197, !noundef !8787 ; 2 uses
  %i.lu = fcmp uno float %.val15.i66, 0.000000e+00
  br i1 %i.lu, label %.lr.ph38.i61.us.preheader, label %.lr.ph38.i61

.lr.ph38.i61.us.preheader:                        ; preds = %.lr.ph38.i61.preheader
  %i.lv = shl i64 %.sroa.0.0.i48, 3, !dbg !284569
  %7 = ptrtoaddr ptr %.sroa.9.1.lcssa.i52 to i64, !dbg !284569
  %i.lw = add i64 %i.lv, %i.e, !dbg !284569
  %i.lx = xor i64 %7, -1, !dbg !284569
  %i.ly = add i64 %i.lw, %i.lx, !dbg !284569      ; 2 uses
  %i.lz = lshr i64 %i.ly, 3, !dbg !284569
  %i.ma = add nuw nsw i64 %i.lz, 1, !dbg !284569  ; 2 uses
  %min.iters.check340 = icmp ult i64 %i.ly, 24, !dbg !284569
  br i1 %min.iters.check340, label %.lr.ph38.i61.us.preheader372, label %vector.ph341, !dbg !284569

vector.ph341:                                     ; preds = %.lr.ph38.i61.us.preheader
  %n.vec342 = and i64 %i.ma, 4611686018427387900  ; 5 uses
  %i.mb = shl i64 %n.vec342, 3
  %i.mc = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.mb ; 2 uses
  %i.md = add i64 %.sroa.27.1.lcssa.i51, %n.vec342 ; 2 uses
  %i.me = mul i64 %n.vec342, -8
  %i.mf = getelementptr i8, ptr %.sroa.43.1.lcssa.i50, i64 %i.me ; 2 uses
  %i.mg = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i51
  br label %vector.body343, !dbg !284569

vector.body343:                                   ; preds = %vector.body343, %vector.ph341
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next347, %vector.body343 ] ; 3 uses
  %i.mh = shl i64 %index344, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.mh ; 2 uses
  %i.mi = getelementptr [8 x i8], ptr %i.mg, i64 %index344, !dbg !284570 ; 2 uses
  %i.mj = getelementptr i8, ptr %next.gep, i64 16, !dbg !284571
  %wide.load345 = load <2 x i64>, ptr %next.gep, align 4, !dbg !284571, !alias.scope !284194, !noalias !284208
  %wide.load346 = load <2 x i64>, ptr %i.mj, align 4, !dbg !284571, !alias.scope !284194, !noalias !284208
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 16, !dbg !284571
  store <2 x i64> %wide.load345, ptr %i.mi, align 4, !dbg !284571, !alias.scope !284195, !noalias !284209
  store <2 x i64> %wide.load346, ptr %i.mk, align 4, !dbg !284571, !alias.scope !284195, !noalias !284209
  %index.next347 = add nuw i64 %index344, 4       ; 2 uses
  %i.ml = icmp eq i64 %index.next347, %n.vec342, !dbg !284569
  br i1 %i.ml, label %middle.block348, label %vector.body343, !dbg !284569, !llvm.loop !284096

middle.block348:                                  ; preds = %vector.body343
  %cmp.n349 = icmp eq i64 %i.ma, %n.vec342, !dbg !284569
  br i1 %cmp.n349, label %._crit_edge39.i53, label %.lr.ph38.i61.us.preheader372, !dbg !284569

.lr.ph38.i61.us.preheader372:                     ; preds = %.lr.ph38.i61.us.preheader, %middle.block348
  %.sroa.9.236.i62.us.ph = phi ptr [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.us.preheader ], [ %i.mc, %middle.block348 ]
  %.sroa.27.235.i63.us.ph = phi i64 [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.us.preheader ], [ %i.md, %middle.block348 ]
  %.sroa.43.234.i64.us.ph = phi ptr [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.us.preheader ], [ %i.mf, %middle.block348 ]
  br label %.lr.ph38.i61.us, !dbg !284569

.lr.ph38.i61.us:                                  ; preds = %.lr.ph38.i61.us.preheader372, %.lr.ph38.i61.us
  %.sroa.9.236.i62.us = phi ptr [ %i.mq, %.lr.ph38.i61.us ], [ %.sroa.9.236.i62.us.ph, %.lr.ph38.i61.us.preheader372 ] ; 2 uses
  %.sroa.27.235.i63.us = phi i64 [ %i.mp, %.lr.ph38.i61.us ], [ %.sroa.27.235.i63.us.ph, %.lr.ph38.i61.us.preheader372 ] ; 2 uses
  %.sroa.43.234.i64.us = phi ptr [ %i.mm, %.lr.ph38.i61.us ], [ %.sroa.43.234.i64.us.ph, %.lr.ph38.i61.us.preheader372 ]
  %i.mm = getelementptr inbounds i8, ptr %.sroa.43.234.i64.us, i64 -8, !dbg !284572 ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.235.i63.us, !dbg !284570
  %i.mo = load i64, ptr %.sroa.9.236.i62.us, align 4, !dbg !284571, !alias.scope !284194, !noalias !284208
  store i64 %i.mo, ptr %i.mn, align 4, !dbg !284571, !alias.scope !284195, !noalias !284209
  %i.mp = add i64 %.sroa.27.235.i63.us, 1, !dbg !284573 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62.us, i64 8, !dbg !284574 ; 3 uses
  %i.mr = icmp ult ptr %i.mq, %i.ls, !dbg !284569
  br i1 %i.mr, label %.lr.ph38.i61.us, label %._crit_edge39.i53, !dbg !284569, !llvm.loop !284099

._crit_edge39.i53:                                ; preds = %.lr.ph38.i61, %.lr.ph38.i61.us, %middle.block348, %._crit_edge.i49
  %.sroa.43.2.lcssa.i54 = phi ptr [ %.sroa.43.1.lcssa.i50, %._crit_edge.i49 ], [ %i.mm, %.lr.ph38.i61.us ], [ %i.mf, %middle.block348 ], [ %i.mv, %.lr.ph38.i61 ], !dbg !284524
  %.sroa.27.2.lcssa.i55 = phi i64 [ %.sroa.27.1.lcssa.i51, %._crit_edge.i49 ], [ %i.mp, %.lr.ph38.i61.us ], [ %i.md, %middle.block348 ], [ %i.mz, %.lr.ph38.i61 ], !dbg !284524 ; 9 uses
  %.sroa.9.2.lcssa.i56 = phi ptr [ %.sroa.9.1.lcssa.i52, %._crit_edge.i49 ], [ %i.mq, %.lr.ph38.i61.us ], [ %i.mc, %middle.block348 ], [ %i.na, %.lr.ph38.i61 ], !dbg !284524 ; 2 uses
  %i.ms = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.0122315, !dbg !284575
  br i1 %i.ms, label %bb.af, label %bb.ae, !dbg !284575

.lr.ph38.i61:                                     ; preds = %.lr.ph38.i61.preheader, %.lr.ph38.i61
  %.sroa.9.236.i62 = phi ptr [ %i.na, %.lr.ph38.i61 ], [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.preheader ] ; 3 uses
  %.sroa.27.235.i63 = phi i64 [ %i.mz, %.lr.ph38.i61 ], [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.43.234.i64 = phi ptr [ %i.mv, %.lr.ph38.i61 ], [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.preheader ]
  %i.mt = getelementptr i8, ptr %.sroa.9.236.i62, i64 4, !dbg !284576
  %.val.i65 = load float, ptr %i.mt, align 4, !dbg !284576, !alias.scope !284198, !noalias !284199, !noundef !8787
  %i.mu = fcmp oge float %.val15.i66, %.val.i65, !dbg !284577 ; 2 uses
  %i.mv = getelementptr inbounds i8, ptr %.sroa.43.234.i64, i64 -8, !dbg !284572 ; 3 uses
  %spec.select = select i1 %i.mu, ptr %2, ptr %i.mv, !dbg !284578
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.sroa.27.235.i63, !dbg !284570
  %i.mx = load i64, ptr %.sroa.9.236.i62, align 4, !dbg !284571, !alias.scope !284194, !noalias !284208
  store i64 %i.mx, ptr %i.mw, align 4, !dbg !284571, !alias.scope !284195, !noalias !284209
  %i.my = zext i1 %i.mu to i64, !dbg !284579
  %i.mz = add i64 %.sroa.27.235.i63, %i.my, !dbg !284573 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62, i64 8, !dbg !284574 ; 3 uses
  %i.nb = icmp ult ptr %i.na, %i.ls, !dbg !284569
  br i1 %i.nb, label %.lr.ph38.i61, label %._crit_edge39.i53, !dbg !284569

bb.ae:                                            ; preds = %._crit_edge39.i53
  %i.nc = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i54, i64 -8, !dbg !284580
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i55, !dbg !284581
  %i.ne = load i64, ptr %.sroa.9.2.lcssa.i56, align 4, !dbg !284582, !alias.scope !284194, !noalias !284210
  store i64 %i.ne, ptr %i.nd, align 4, !dbg !284582, !alias.scope !284195, !noalias !284211
  %i.nf = add i64 %.sroa.27.2.lcssa.i55, 1, !dbg !284583
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i56, i64 8, !dbg !284584
  br label %bb.ad, !dbg !284522

bb.af:                                            ; preds = %._crit_edge39.i53
  %i.nh = shl i64 %.sroa.27.2.lcssa.i55, 3, !dbg !284585
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph131, ptr nonnull align 4 %2, i64 %i.nh, i1 false), !dbg !284585, !alias.scope !284212
  %i.ni = sub i64 %.sroa.16.0122315, %.sroa.27.2.lcssa.i55, !dbg !284586 ; 7 uses
  %.not47.i57 = icmp eq i64 %.sroa.16.0122315, %.sroa.27.2.lcssa.i55, !dbg !284587
  br i1 %.not47.i57, label %.outer._crit_edge.thread, label %.lr.ph45.i58, !dbg !284588

.lr.ph45.i58:                                     ; preds = %bb.af
  %i.nj = getelementptr [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55 ; 2 uses
  %min.iters.check = icmp ult i64 %i.ni, 4, !dbg !284588
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !284588

vector.ph:                                        ; preds = %.lr.ph45.i58
  %n.vec = and i64 %i.ni, -4                      ; 3 uses
  br label %vector.body, !dbg !284588

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !284589 ; 3 uses
  %i.nk = xor i64 %index, -1, !dbg !284590
  %i.nl = getelementptr [8 x i8], ptr %i.kg, i64 %i.nk, !dbg !284591 ; 2 uses
  %i.nm = getelementptr [8 x i8], ptr %i.nj, i64 %index, !dbg !284592 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nl, i64 -8, !dbg !284593
  %i.no = getelementptr i8, ptr %i.nl, i64 -24, !dbg !284593
  %wide.load = load <2 x i64>, ptr %i.nn, align 4, !dbg !284593, !alias.scope !284195, !noalias !284194
  %wide.load337 = load <2 x i64>, ptr %i.no, align 4, !dbg !284593, !alias.scope !284195, !noalias !284194
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !284593
  %reverse338 = shufflevector <2 x i64> %wide.load337, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !284593
  %i.np = getelementptr i8, ptr %i.nm, i64 16, !dbg !284593
  store <2 x i64> %reverse, ptr %i.nm, align 4, !dbg !284593, !alias.scope !284194, !noalias !284195
  store <2 x i64> %reverse338, ptr %i.np, align 4, !dbg !284593, !alias.scope !284194, !noalias !284195
  %index.next = add nuw i64 %index, 4, !dbg !284589 ; 2 uses
  %i.nq = icmp eq i64 %index.next, %n.vec, !dbg !284588
  br i1 %i.nq, label %middle.block, label %vector.body, !dbg !284588, !llvm.loop !284134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ni, %n.vec, !dbg !284588
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit, label %scalar.ph.preheader, !dbg !284588

scalar.ph.preheader:                              ; preds = %.lr.ph45.i58, %middle.block
  %.sroa.07.043.i59.ph = phi i64 [ 0, %.lr.ph45.i58 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !284588

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i59 = phi i64 [ %i.nr, %scalar.ph ], [ %.sroa.07.043.i59.ph, %scalar.ph.preheader ] ; 3 uses
  %i.nr = add nuw i64 %.sroa.07.043.i59, 1, !dbg !284589 ; 2 uses
  %i.ns = xor i64 %.sroa.07.043.i59, -1, !dbg !284590
  %i.nt = getelementptr [8 x i8], ptr %i.kg, i64 %i.ns, !dbg !284591
  %i.nu = getelementptr [8 x i8], ptr %i.nj, i64 %.sroa.07.043.i59, !dbg !284592
  %i.nv = load i64, ptr %i.nt, align 4, !dbg !284593, !alias.scope !284195, !noalias !284194
  store i64 %i.nv, ptr %i.nu, align 4, !dbg !284593, !alias.scope !284194, !noalias !284195
  %exitcond.not.i60 = icmp eq i64 %i.nr, %i.ni, !dbg !284587
  br i1 %exitcond.not.i60, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit, label %scalar.ph, !dbg !284588, !llvm.loop !284135

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit: ; preds = %scalar.ph, %middle.block
  %i.nw = icmp ugt i64 %.sroa.27.2.lcssa.i55, %.sroa.16.0122315, !dbg !284594
  br i1 %i.nw, label %bb.ag, label %.outer, !dbg !284594, !prof !8988

.outer._crit_edge.thread:                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !284518
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmfENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0EB2u_.exit, !dbg !284220

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55, !dbg !284595 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !284518
  %i.ny = icmp ult i64 %i.ni, 33, !dbg !284217
  br i1 %i.ny, label %.outer._crit_edge, label %.lr.ph, !dbg !284217

bb.ag:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionTmfENCINvB2_9quicksortB1d_NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1d_7sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implfE0E0E0EB2B_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i55, i64 noundef %.sroa.16.0122315, i64 noundef %.sroa.16.0122315, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #57, !dbg !284596
  unreachable, !dbg !284596
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTmhENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchB15_NCINvNtB1Z_8arg_sort9sort_implhE0Es_0E0EB25_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !284597 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !285124
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !285124

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph, !dbg !285124

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph129 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.ly, %.outer ] ; 22 uses
  %.sroa.16.0.ph128 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.lj, %.outer ] ; 2 uses
  %.sroa.025.0.ph127 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.fr, %.outer ] ; 2 uses
  %.sroa.028.0.ph126 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph129, i64 4
  %i.e = ptrtoint ptr %.sroa.0.0.ph129 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph126, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph126, i64 4
  %i.g = icmp eq i32 %.sroa.025.0.ph127, 0, !dbg !285125
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph300, !dbg !285125

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmhE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.h = icmp eq i32 %i.fr, 0, !dbg !285125
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph300, !dbg !285125

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmhE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.a
  %.sroa.0.0.ph.lcssa119 = phi ptr [ %.sroa.0.0.ph129, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmhE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %0, %bb.a ], [ %i.ly, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmhE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %1, %bb.a ], [ %i.lj, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285049), !dbg !285126
  call void @llvm.experimental.noalias.scope.decl(metadata !285050), !dbg !285126
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2, !dbg !285127
  br i1 %i.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmhENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchB1s_NCINvNtB2m_8arg_sort9sort_implhE0Es_0E0EB2s_.exit, label %bb.c, !dbg !285127

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16, !dbg !285128
  %i.k = icmp samesign ult i64 %3, %i.j, !dbg !285129
  br i1 %i.k, label %bb.e, label %bb.d, !dbg !285129

end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  %i.gq = add i64 %i.gj, %i.gp, !dbg !301220      ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !301221 ; 3 uses
  %i.gs = icmp ult ptr %i.gr, %i.fo, !dbg !301177
  br i1 %i.gs, label %.lr.ph.i40, label %._crit_edge.i, !dbg !301177

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.w
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.w ], [ %i.gn, %.lr.ph.i40 ], !dbg !301174 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.w ], [ %i.gq, %.lr.ph.i40 ], !dbg !301174 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.w ], [ %i.gr, %.lr.ph.i40 ], !dbg !301174 ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i38, !dbg !301222 ; 2 uses
  %i.gu = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gt, !dbg !301223
  br i1 %i.gu, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !301223

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gy, %.lr.ph38.i ], !dbg !301174
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hb, %.lr.ph38.i ], !dbg !301174 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.hc, %.lr.ph38.i ], !dbg !301174 ; 2 uses
  %i.gv = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0122313, !dbg !301224
  br i1 %i.gv, label %bb.y, label %bb.x, !dbg !301224

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.hc, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.hb, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gy, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load double, ptr %.sroa.9.236.i, align 8, !dbg !301225, !alias.scope !300917, !noalias !300918, !noundef !8787 ; 3 uses
  %i.gw = fcmp ord double %.val.i, 0.000000e+00, !dbg !301226
  %i.gx = fcmp ult double %.val.i, %i.fj, !dbg !301227
  %.not2.i.i.i30.i = and i1 %i.gw, %i.gx, !dbg !301228 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8, !dbg !301229 ; 3 uses
  %.sroa.01.0.i31.i = select i1 %.not2.i.i.i30.i, ptr %2, ptr %i.gy, !dbg !301230
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i31.i, i64 %.sroa.27.235.i, !dbg !301231
  store double %.val.i, ptr %i.gz, align 8, !dbg !301232, !alias.scope !300916, !noalias !300923
  %i.ha = zext i1 %.not2.i.i.i30.i to i64, !dbg !301233
  %i.hb = add i64 %.sroa.27.235.i, %i.ha, !dbg !301234 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8, !dbg !301235 ; 3 uses
  %i.hd = icmp ult ptr %i.hc, %i.gt, !dbg !301223
  br i1 %i.hd, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !301223

bb.x:                                             ; preds = %._crit_edge39.i
  %i.he = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8, !dbg !301236 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.27.2.lcssa.i, !dbg !301237
  %i.hg = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !dbg !301238, !alias.scope !300915, !noalias !300924
  store i64 %i.hg, ptr %i.hf, align 8, !dbg !301238, !alias.scope !300916, !noalias !300925
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8, !dbg !301239
  br label %bb.w, !dbg !301172

bb.y:                                             ; preds = %._crit_edge39.i
  %i.hi = shl i64 %.sroa.27.2.lcssa.i, 3, !dbg !301240
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph131, ptr nonnull align 8 %2, i64 %i.hi, i1 false), !dbg !301240, !alias.scope !300926
  %i.hj = sub i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i, !dbg !301241 ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i, !dbg !301242
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !301243

.lr.ph45.i:                                       ; preds = %bb.y
  %i.hk = getelementptr [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.hj, 4, !dbg !301243
  br i1 %min.iters.check346, label %scalar.ph345.preheader, label %vector.ph347, !dbg !301243

vector.ph347:                                     ; preds = %.lr.ph45.i
  %n.vec348 = and i64 %i.hj, -4                   ; 3 uses
  br label %vector.body349, !dbg !301243

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next355, %vector.body349 ], !dbg !301244 ; 3 uses
  %i.hl = xor i64 %index350, -1, !dbg !301245
  %i.hm = getelementptr [8 x i8], ptr %i.fm, i64 %i.hl, !dbg !301246 ; 2 uses
  %i.hn = getelementptr [8 x i8], ptr %i.hk, i64 %index350, !dbg !301247 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hm, i64 -8, !dbg !301248
  %i.hp = getelementptr i8, ptr %i.hm, i64 -24, !dbg !301248
  %wide.load351 = load <2 x i64>, ptr %i.ho, align 8, !dbg !301248, !alias.scope !300916, !noalias !300915
  %wide.load352 = load <2 x i64>, ptr %i.hp, align 8, !dbg !301248, !alias.scope !300916, !noalias !300915
  %reverse353 = shufflevector <2 x i64> %wide.load351, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !301248
  %reverse354 = shufflevector <2 x i64> %wide.load352, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !301248
  %i.hq = getelementptr i8, ptr %i.hn, i64 16, !dbg !301248
  store <2 x i64> %reverse353, ptr %i.hn, align 8, !dbg !301248, !alias.scope !300915, !noalias !300916
  store <2 x i64> %reverse354, ptr %i.hq, align 8, !dbg !301248, !alias.scope !300915, !noalias !300916
  %index.next355 = add nuw i64 %index350, 4, !dbg !301244 ; 2 uses
  %i.hr = icmp eq i64 %index.next355, %n.vec348, !dbg !301243
  br i1 %i.hr, label %middle.block356, label %vector.body349, !dbg !301243, !llvm.loop !300730

middle.block356:                                  ; preds = %vector.body349
  %cmp.n357 = icmp eq i64 %i.hj, %n.vec348, !dbg !301243
  br i1 %cmp.n357, label %.loopexit, label %scalar.ph345.preheader, !dbg !301243

scalar.ph345.preheader:                           ; preds = %.lr.ph45.i, %middle.block356
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec348, %middle.block356 ]
  br label %scalar.ph345, !dbg !301243

scalar.ph345:                                     ; preds = %scalar.ph345.preheader, %scalar.ph345
  %.sroa.07.043.i = phi i64 [ %i.hs, %scalar.ph345 ], [ %.sroa.07.043.i.ph, %scalar.ph345.preheader ] ; 3 uses
  %i.hs = add nuw i64 %.sroa.07.043.i, 1, !dbg !301244 ; 2 uses
  %i.ht = xor i64 %.sroa.07.043.i, -1, !dbg !301245
  %i.hu = getelementptr [8 x i8], ptr %i.fm, i64 %i.ht, !dbg !301246
  %i.hv = getelementptr [8 x i8], ptr %i.hk, i64 %.sroa.07.043.i, !dbg !301247
  %i.hw = load i64, ptr %i.hu, align 8, !dbg !301248, !alias.scope !300916, !noalias !300915
  store i64 %i.hw, ptr %i.hv, align 8, !dbg !301248, !alias.scope !300915, !noalias !300916
  %exitcond.not.i39 = icmp eq i64 %i.hs, %i.hj, !dbg !301242
  br i1 %exitcond.not.i39, label %.loopexit, label %scalar.ph345, !dbg !301243, !llvm.loop !300731

.loopexit:                                        ; preds = %scalar.ph345, %middle.block356, %bb.y
  %i.hx = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !301249
  br i1 %i.hx, label %.thread, label %bb.z, !dbg !301250

bb.z:                                             ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0122313, !dbg !301251
  br i1 %.not.i42, label %bb.aa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !301251, !prof !8988

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @128, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #57, !dbg !301252, !noalias !300928
  unreachable, !dbg !301252

_RNvMNtCscgRAwXFJnXP_4core5sliceSd12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.z
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i, !dbg !301253
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph131) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %i.hy, i64 noundef %i.hj, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #54, !dbg !301254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !301255
  %i.hz = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !300947
  br i1 %i.hz, label %.outer._crit_edge, label %bb.b, !dbg !300947

.thread:                                          ; preds = %bb.s, %.loopexit
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %i.fg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300929), !dbg !301256
  call void @llvm.experimental.noalias.scope.decl(metadata !300930), !dbg !301256
  %.not85 = icmp samesign ult i64 %3, %.sroa.16.0122313, !dbg !301257
  br i1 %.not85, label %bb.ac, label %bb.ab, !dbg !301257, !prof !9308

bb.ab:                                            ; preds = %.thread
  %i.ib = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0122313, !dbg !301258 ; 3 uses
  br label %bb.ad, !dbg !301259

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap(), !dbg !301260
  unreachable, !dbg !301260

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.43.0.i45 = phi ptr [ %i.ib, %bb.ab ], [ %i.km, %bb.af ], !dbg !301261 ; 2 uses
  %.sroa.27.0.i46 = phi i64 [ 0, %bb.ab ], [ %i.kp, %bb.af ], !dbg !301261 ; 2 uses
  %.sroa.9.0.i47 = phi ptr [ %.sroa.0.0.ph131, %bb.ab ], [ %i.kq, %bb.af ], !dbg !301261 ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i37, %bb.ab ], [ %.sroa.16.0122313, %bb.af ] ; 4 uses
  %i.ic = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i48, i64 3), !dbg !301262
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %i.ic, !dbg !301263 ; 2 uses
  %i.ie = icmp ult ptr %.sroa.9.0.i47, %i.id, !dbg !301264
  br i1 %i.ie, label %.lr.ph.i68, label %._crit_edge.i49, !dbg !301264

.lr.ph.i68:                                       ; preds = %bb.ad
  %.val23.i69 = load double, ptr %i.ia, align 8, !alias.scope !300931, !noalias !300932, !noundef !8787 ; 5 uses
  %i.if = fcmp uno double %.val23.i69, 0.000000e+00 ; 4 uses
  br label %bb.ae, !dbg !301264

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i68
  %.sroa.9.131.i70 = phi ptr [ %.sroa.9.0.i47, %.lr.ph.i68 ], [ %i.jd, %bb.ae ] ; 5 uses
  %.sroa.27.130.i71 = phi i64 [ %.sroa.27.0.i46, %.lr.ph.i68 ], [ %i.jc, %bb.ae ] ; 2 uses
  %.sroa.43.129.i72 = phi ptr [ %.sroa.43.0.i45, %.lr.ph.i68 ], [ %i.iz, %bb.ae ] ; 4 uses
  %.val22.i73 = load double, ptr %.sroa.9.131.i70, align 8, !dbg !301265, !alias.scope !300933, !noalias !300934, !noundef !8787 ; 2 uses
  %i.ig = fcmp oge double %.val23.i69, %.val22.i73, !dbg !301266
  %.not2.i.i.i.not.i.i = or i1 %i.if, %i.ig, !dbg !301267 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -8, !dbg !301268
  %.sroa.01.0.i.i74 = select i1 %.not2.i.i.i.not.i.i, ptr %2, ptr %i.ih, !dbg !301269
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i74, i64 %.sroa.27.130.i71, !dbg !301270
  store double %.val22.i73, ptr %i.ii, align 8, !dbg !301271, !alias.scope !300930, !noalias !300935
  %i.ij = zext i1 %.not2.i.i.i.not.i.i to i64, !dbg !301272
  %i.ik = add i64 %.sroa.27.130.i71, %i.ij, !dbg !301273 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 8, !dbg !301274
  %.val20.i75 = load double, ptr %i.il, align 8, !dbg !301275, !alias.scope !300933, !noalias !300934, !noundef !8787 ; 2 uses
  %i.im = fcmp oge double %.val23.i69, %.val20.i75, !dbg !301276
  %.not2.i.i.i.not.i24.i = or i1 %i.if, %i.im, !dbg !301277 ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -16, !dbg !301278
  %.sroa.01.0.i25.i76 = select i1 %.not2.i.i.i.not.i24.i, ptr %2, ptr %i.in, !dbg !301279
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.ik, !dbg !301280
  store double %.val20.i75, ptr %i.io, align 8, !dbg !301281, !alias.scope !300930, !noalias !300936
  %i.ip = zext i1 %.not2.i.i.i.not.i24.i to i64, !dbg !301282
  %i.iq = add i64 %i.ik, %i.ip, !dbg !301283      ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 16, !dbg !301284
  %.val18.i77 = load double, ptr %i.ir, align 8, !dbg !301285, !alias.scope !300933, !noalias !300934, !noundef !8787 ; 2 uses
  %i.is = fcmp oge double %.val23.i69, %.val18.i77, !dbg !301286
  %.not2.i.i.i.not.i26.i = or i1 %i.if, %i.is, !dbg !301287 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -24, !dbg !301288
  %.sroa.01.0.i27.i78 = select i1 %.not2.i.i.i.not.i26.i, ptr %2, ptr %i.it, !dbg !301289
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i78, i64 %i.iq, !dbg !301290
  store double %.val18.i77, ptr %i.iu, align 8, !dbg !301291, !alias.scope !300930, !noalias !300937
  %i.iv = zext i1 %.not2.i.i.i.not.i26.i to i64, !dbg !301292
  %i.iw = add i64 %i.iq, %i.iv, !dbg !301293      ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 24, !dbg !301294
  %.val16.i79 = load double, ptr %i.ix, align 8, !dbg !301295, !alias.scope !300933, !noalias !300934, !noundef !8787 ; 2 uses
  %i.iy = fcmp oge double %.val23.i69, %.val16.i79, !dbg !301296
  %.not2.i.i.i.not.i28.i = or i1 %i.if, %i.iy, !dbg !301297 ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -32, !dbg !301298 ; 3 uses
  %.sroa.01.0.i29.i80 = select i1 %.not2.i.i.i.not.i28.i, ptr %2, ptr %i.iz, !dbg !301299
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i29.i80, i64 %i.iw, !dbg !301300
  store double %.val16.i79, ptr %i.ja, align 8, !dbg !301301, !alias.scope !300930, !noalias !300938
  %i.jb = zext i1 %.not2.i.i.i.not.i28.i to i64, !dbg !301302
  %i.jc = add i64 %i.iw, %i.jb, !dbg !301303      ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 32, !dbg !301304 ; 3 uses
  %i.je = icmp ult ptr %i.jd, %i.id, !dbg !301264
  br i1 %i.je, label %bb.ae, label %._crit_edge.i49, !dbg !301264

._crit_edge.i49:                                  ; preds = %bb.ae, %bb.ad
  %.sroa.43.1.lcssa.i50 = phi ptr [ %.sroa.43.0.i45, %bb.ad ], [ %i.iz, %bb.ae ], !dbg !301261 ; 4 uses
  %.sroa.27.1.lcssa.i51 = phi i64 [ %.sroa.27.0.i46, %bb.ad ], [ %i.jc, %bb.ae ], !dbg !301261 ; 5 uses
  %.sroa.9.1.lcssa.i52 = phi ptr [ %.sroa.9.0.i47, %bb.ad ], [ %i.jd, %bb.ae ], !dbg !301261 ; 7 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i48, !dbg !301305 ; 3 uses
  %i.jg = icmp ult ptr %.sroa.9.1.lcssa.i52, %i.jf, !dbg !301306
  br i1 %i.jg, label %.lr.ph38.i61.preheader, label %._crit_edge39.i53, !dbg !301306

.lr.ph38.i61.preheader:                           ; preds = %._crit_edge.i49
  %.val15.i66 = load double, ptr %i.ia, align 8, !alias.scope !300931, !noalias !300932, !noundef !8787 ; 2 uses
  %i.jh = fcmp uno double %.val15.i66, 0.000000e+00
  br i1 %i.jh, label %.lr.ph38.i61.us.preheader, label %.lr.ph38.i61

.lr.ph38.i61.us.preheader:                        ; preds = %.lr.ph38.i61.preheader
  %i.ji = shl i64 %.sroa.0.0.i48, 3, !dbg !301306
  %7 = ptrtoaddr ptr %.sroa.9.1.lcssa.i52 to i64, !dbg !301306
  %i.jj = add i64 %i.ji, %i.c, !dbg !301306
  %i.jk = xor i64 %7, -1, !dbg !301306
  %i.jl = add i64 %i.jj, %i.jk, !dbg !301306      ; 2 uses
  %i.jm = lshr i64 %i.jl, 3, !dbg !301306
  %i.jn = add nuw nsw i64 %i.jm, 1, !dbg !301306  ; 2 uses
  %min.iters.check332 = icmp ult i64 %i.jl, 24, !dbg !301306
  br i1 %min.iters.check332, label %.lr.ph38.i61.us.preheader364, label %vector.ph333, !dbg !301306

vector.ph333:                                     ; preds = %.lr.ph38.i61.us.preheader
  %n.vec334 = and i64 %i.jn, 4611686018427387900  ; 5 uses
  %i.jo = shl i64 %n.vec334, 3
  %i.jp = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.jo ; 2 uses
  %i.jq = add i64 %.sroa.27.1.lcssa.i51, %n.vec334 ; 2 uses
  %i.jr = mul i64 %n.vec334, -8
  %i.js = getelementptr i8, ptr %.sroa.43.1.lcssa.i50, i64 %i.jr ; 2 uses
  %i.jt = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i51
  br label %vector.body335, !dbg !301306

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.ju = shl i64 %index336, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.ju ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep, i64 16, !dbg !301307
  %wide.load337 = load <2 x double>, ptr %next.gep, align 8, !dbg !301307, !alias.scope !300933, !noalias !300934
  %wide.load338 = load <2 x double>, ptr %i.jv, align 8, !dbg !301307, !alias.scope !300933, !noalias !300934
  %i.jw = getelementptr [8 x i8], ptr %i.jt, i64 %index336, !dbg !301308 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16, !dbg !301309
  store <2 x double> %wide.load337, ptr %i.jw, align 8, !dbg !301309, !alias.scope !300930, !noalias !300939
  store <2 x double> %wide.load338, ptr %i.jx, align 8, !dbg !301309, !alias.scope !300930, !noalias !300939
  %index.next339 = add nuw i64 %index336, 4       ; 2 uses
  %i.jy = icmp eq i64 %index.next339, %n.vec334, !dbg !301306
  br i1 %i.jy, label %middle.block340, label %vector.body335, !dbg !301306, !llvm.loop !300838

middle.block340:                                  ; preds = %vector.body335
  %cmp.n341 = icmp eq i64 %i.jn, %n.vec334, !dbg !301306
  br i1 %cmp.n341, label %._crit_edge39.i53, label %.lr.ph38.i61.us.preheader364, !dbg !301306

.lr.ph38.i61.us.preheader364:                     ; preds = %.lr.ph38.i61.us.preheader, %middle.block340
  %.sroa.9.236.i62.us.ph = phi ptr [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.us.preheader ], [ %i.jp, %middle.block340 ]
  %.sroa.27.235.i63.us.ph = phi i64 [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.us.preheader ], [ %i.jq, %middle.block340 ]
  %.sroa.43.234.i64.us.ph = phi ptr [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.us.preheader ], [ %i.js, %middle.block340 ]
  br label %.lr.ph38.i61.us, !dbg !301306

.lr.ph38.i61.us:                                  ; preds = %.lr.ph38.i61.us.preheader364, %.lr.ph38.i61.us
  %.sroa.9.236.i62.us = phi ptr [ %i.kc, %.lr.ph38.i61.us ], [ %.sroa.9.236.i62.us.ph, %.lr.ph38.i61.us.preheader364 ] ; 2 uses
  %.sroa.27.235.i63.us = phi i64 [ %i.kb, %.lr.ph38.i61.us ], [ %.sroa.27.235.i63.us.ph, %.lr.ph38.i61.us.preheader364 ] ; 2 uses
  %.sroa.43.234.i64.us = phi ptr [ %i.jz, %.lr.ph38.i61.us ], [ %.sroa.43.234.i64.us.ph, %.lr.ph38.i61.us.preheader364 ]
  %.val.i65.us = load double, ptr %.sroa.9.236.i62.us, align 8, !dbg !301307, !alias.scope !300933, !noalias !300934, !noundef !8787
  %i.jz = getelementptr inbounds i8, ptr %.sroa.43.234.i64.us, i64 -8, !dbg !301310 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.235.i63.us, !dbg !301308
  store double %.val.i65.us, ptr %i.ka, align 8, !dbg !301309, !alias.scope !300930, !noalias !300939
  %i.kb = add i64 %.sroa.27.235.i63.us, 1, !dbg !301311 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62.us, i64 8, !dbg !301312 ; 3 uses
  %i.kd = icmp ult ptr %i.kc, %i.jf, !dbg !301306
  br i1 %i.kd, label %.lr.ph38.i61.us, label %._crit_edge39.i53, !dbg !301306, !llvm.loop !300841

._crit_edge39.i53:                                ; preds = %.lr.ph38.i61, %.lr.ph38.i61.us, %middle.block340, %._crit_edge.i49
  %.sroa.43.2.lcssa.i54 = phi ptr [ %.sroa.43.1.lcssa.i50, %._crit_edge.i49 ], [ %i.jz, %.lr.ph38.i61.us ], [ %i.js, %middle.block340 ], [ %i.kg, %.lr.ph38.i61 ], !dbg !301261
  %.sroa.27.2.lcssa.i55 = phi i64 [ %.sroa.27.1.lcssa.i51, %._crit_edge.i49 ], [ %i.kb, %.lr.ph38.i61.us ], [ %i.jq, %middle.block340 ], [ %i.kj, %.lr.ph38.i61 ], !dbg !301261 ; 9 uses
  %.sroa.9.2.lcssa.i56 = phi ptr [ %.sroa.9.1.lcssa.i52, %._crit_edge.i49 ], [ %i.kc, %.lr.ph38.i61.us ], [ %i.jp, %middle.block340 ], [ %i.kk, %.lr.ph38.i61 ], !dbg !301261 ; 2 uses
  %i.ke = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.0122313, !dbg !301313
  br i1 %i.ke, label %bb.ag, label %bb.af, !dbg !301313

.lr.ph38.i61:                                     ; preds = %.lr.ph38.i61.preheader, %.lr.ph38.i61
  %.sroa.9.236.i62 = phi ptr [ %i.kk, %.lr.ph38.i61 ], [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.27.235.i63 = phi i64 [ %i.kj, %.lr.ph38.i61 ], [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.43.234.i64 = phi ptr [ %i.kg, %.lr.ph38.i61 ], [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.preheader ]
  %.val.i65 = load double, ptr %.sroa.9.236.i62, align 8, !dbg !301307, !alias.scope !300933, !noalias !300934, !noundef !8787 ; 2 uses
  %i.kf = fcmp oge double %.val15.i66, %.val.i65, !dbg !301314 ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %.sroa.43.234.i64, i64 -8, !dbg !301310 ; 3 uses
  %spec.select = select i1 %i.kf, ptr %2, ptr %i.kg, !dbg !301315
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.sroa.27.235.i63, !dbg !301308
  store double %.val.i65, ptr %i.kh, align 8, !dbg !301309, !alias.scope !300930, !noalias !300939
  %i.ki = zext i1 %i.kf to i64, !dbg !301316
  %i.kj = add i64 %.sroa.27.235.i63, %i.ki, !dbg !301311 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62, i64 8, !dbg !301312 ; 3 uses
  %i.kl = icmp ult ptr %i.kk, %i.jf, !dbg !301306
  br i1 %i.kl, label %.lr.ph38.i61, label %._crit_edge39.i53, !dbg !301306

bb.af:                                            ; preds = %._crit_edge39.i53
  %i.km = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i54, i64 -8, !dbg !301317
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i55, !dbg !301318
  %i.ko = load i64, ptr %.sroa.9.2.lcssa.i56, align 8, !dbg !301319, !alias.scope !300929, !noalias !300940
  store i64 %i.ko, ptr %i.kn, align 8, !dbg !301319, !alias.scope !300930, !noalias !300941
  %i.kp = add i64 %.sroa.27.2.lcssa.i55, 1, !dbg !301320
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i56, i64 8, !dbg !301321
  br label %bb.ad, !dbg !301259

bb.ag:                                            ; preds = %._crit_edge39.i53
  %i.kr = shl i64 %.sroa.27.2.lcssa.i55, 3, !dbg !301322
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph131, ptr nonnull align 8 %2, i64 %i.kr, i1 false), !dbg !301322, !alias.scope !300942
  %i.ks = sub i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i55, !dbg !301323 ; 7 uses
  %.not47.i57 = icmp eq i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i55, !dbg !301324
  br i1 %.not47.i57, label %.outer._crit_edge.thread, label %.lr.ph45.i58, !dbg !301325

.lr.ph45.i58:                                     ; preds = %bb.ag
  %i.kt = getelementptr [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55 ; 2 uses
  %min.iters.check = icmp ult i64 %i.ks, 4, !dbg !301325
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !301325

vector.ph:                                        ; preds = %.lr.ph45.i58
  %n.vec = and i64 %i.ks, -4                      ; 3 uses
  br label %vector.body, !dbg !301325

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !301326 ; 3 uses
  %i.ku = xor i64 %index, -1, !dbg !301327
  %i.kv = getelementptr [8 x i8], ptr %i.ib, i64 %i.ku, !dbg !301328 ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.kt, i64 %index, !dbg !301329 ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kv, i64 -8, !dbg !301330
  %i.ky = getelementptr i8, ptr %i.kv, i64 -24, !dbg !301330
  %wide.load = load <2 x i64>, ptr %i.kx, align 8, !dbg !301330, !alias.scope !300930, !noalias !300929
  %wide.load329 = load <2 x i64>, ptr %i.ky, align 8, !dbg !301330, !alias.scope !300930, !noalias !300929
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !301330
  %reverse330 = shufflevector <2 x i64> %wide.load329, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !301330
  %i.kz = getelementptr i8, ptr %i.kw, i64 16, !dbg !301330
  store <2 x i64> %reverse, ptr %i.kw, align 8, !dbg !301330, !alias.scope !300929, !noalias !300930
  store <2 x i64> %reverse330, ptr %i.kz, align 8, !dbg !301330, !alias.scope !300929, !noalias !300930
  %index.next = add nuw i64 %index, 4, !dbg !301326 ; 2 uses
  %i.la = icmp eq i64 %index.next, %n.vec, !dbg !301325
  br i1 %i.la, label %middle.block, label %vector.body, !dbg !301325, !llvm.loop !300876

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ks, %n.vec, !dbg !301325
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph.preheader, !dbg !301325

scalar.ph.preheader:                              ; preds = %.lr.ph45.i58, %middle.block
  %.sroa.07.043.i59.ph = phi i64 [ 0, %.lr.ph45.i58 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !301325

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i59 = phi i64 [ %i.lb, %scalar.ph ], [ %.sroa.07.043.i59.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lb = add nuw i64 %.sroa.07.043.i59, 1, !dbg !301326 ; 2 uses
  %i.lc = xor i64 %.sroa.07.043.i59, -1, !dbg !301327
  %i.ld = getelementptr [8 x i8], ptr %i.ib, i64 %i.lc, !dbg !301328
  %i.le = getelementptr [8 x i8], ptr %i.kt, i64 %.sroa.07.043.i59, !dbg !301329
  %i.lf = load i64, ptr %i.ld, align 8, !dbg !301330, !alias.scope !300930, !noalias !300929
  store i64 %i.lf, ptr %i.le, align 8, !dbg !301330, !alias.scope !300929, !noalias !300930
  %exitcond.not.i60 = icmp eq i64 %i.lb, %i.ks, !dbg !301324
  br i1 %exitcond.not.i60, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph, !dbg !301325, !llvm.loop !300877

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %scalar.ph, %middle.block
  %i.lg = icmp ugt i64 %.sroa.27.2.lcssa.i55, %.sroa.16.0122313, !dbg !301331
  br i1 %i.lg, label %bb.ah, label %.outer, !dbg !301331, !prof !8988

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !301255
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !300950

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55, !dbg !301332 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !301255
  %i.li = icmp ult i64 %i.ks, 33, !dbg !300947
  br i1 %i.li, label %.outer._crit_edge, label %.lr.ph, !dbg !300947

bb.ah:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitiondNCINvB2_9quicksortdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i55, i64 noundef %.sroa.16.0122313, i64 noundef %.sroa.16.0122313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #57, !dbg !301333
  unreachable, !dbg !301333
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !301334 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !302035
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !302035

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph131 = phi ptr [ %i.lh, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph130 = phi i64 [ %i.ks, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph129 = phi i32 [ %i.es, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph128 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph131 to i64     ; 2 uses
  %.not = icmp eq ptr %.sroa.028.0.ph128, null
  %i.d = icmp eq i32 %.sroa.025.0.ph129, 0, !dbg !302036
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph315, !dbg !302036

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.e = icmp eq i32 %i.es, 0, !dbg !302036
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph315, !dbg !302036

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.a
  %.sroa.0.0.ph.lcssa119 = phi ptr [ %.sroa.0.0.ph131, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %0, %bb.a ], [ %i.lh, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %1, %bb.a ], [ %i.ks, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !301972), !dbg !302037
  call void @llvm.experimental.noalias.scope.decl(metadata !301973), !dbg !302037
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2, !dbg !302038
  br i1 %i.f, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !302038

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16, !dbg !302039
  %i.h = icmp samesign ult i64 %3, %i.g, !dbg !302040
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !302040

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1, !dbg !302041 ; 12 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15, !dbg !302042
  br i1 %i.j, label %bb.g, label %bb.f, !dbg !302042

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap(), !dbg !302043
  unreachable, !dbg !302043
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  %i.gq = add i64 %i.gj, %i.gp, !dbg !302308      ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !302309 ; 3 uses
  %i.gs = icmp ult ptr %i.gr, %i.fo, !dbg !302265
  br i1 %i.gs, label %.lr.ph.i40, label %._crit_edge.i, !dbg !302265

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.w
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.w ], [ %i.gn, %.lr.ph.i40 ], !dbg !302262 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.w ], [ %i.gq, %.lr.ph.i40 ], !dbg !302262 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.w ], [ %i.gr, %.lr.ph.i40 ], !dbg !302262 ; 3 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i38, !dbg !302310 ; 2 uses
  %i.gu = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gt, !dbg !302311
  br i1 %i.gu, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !302311

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gy, %.lr.ph38.i ], !dbg !302262
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hb, %.lr.ph38.i ], !dbg !302262 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.hc, %.lr.ph38.i ], !dbg !302262 ; 2 uses
  %i.gv = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0122313, !dbg !302312
  br i1 %i.gv, label %bb.y, label %bb.x, !dbg !302312

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.hc, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.hb, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gy, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load float, ptr %.sroa.9.236.i, align 4, !dbg !302313, !alias.scope !302005, !noalias !302006, !noundef !8787 ; 3 uses
  %i.gw = fcmp ord float %.val.i, 0.000000e+00, !dbg !302314
  %i.gx = fcmp ult float %.val.i, %i.fj, !dbg !302315
  %.not2.i.i.i30.i = and i1 %i.gw, %i.gx, !dbg !302316 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -4, !dbg !302317 ; 3 uses
  %.sroa.01.0.i31.i = select i1 %.not2.i.i.i30.i, ptr %2, ptr %i.gy, !dbg !302318
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i31.i, i64 %.sroa.27.235.i, !dbg !302319
  store float %.val.i, ptr %i.gz, align 4, !dbg !302320, !alias.scope !302004, !noalias !302011
  %i.ha = zext i1 %.not2.i.i.i30.i to i64, !dbg !302321
  %i.hb = add i64 %.sroa.27.235.i, %i.ha, !dbg !302322 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 4, !dbg !302323 ; 3 uses
  %i.hd = icmp ult ptr %i.hc, %i.gt, !dbg !302311
  br i1 %i.hd, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !302311

bb.x:                                             ; preds = %._crit_edge39.i
  %i.he = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -4, !dbg !302324 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.sroa.27.2.lcssa.i, !dbg !302325
  %i.hg = load i32, ptr %.sroa.9.2.lcssa.i, align 4, !dbg !302326, !alias.scope !302003, !noalias !302012
  store i32 %i.hg, ptr %i.hf, align 4, !dbg !302326, !alias.scope !302004, !noalias !302013
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 4, !dbg !302327
  br label %bb.w, !dbg !302260

bb.y:                                             ; preds = %._crit_edge39.i
  %i.hi = shl i64 %.sroa.27.2.lcssa.i, 2, !dbg !302328
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph131, ptr nonnull align 4 %2, i64 %i.hi, i1 false), !dbg !302328, !alias.scope !302014
  %i.hj = sub i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i, !dbg !302329 ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i, !dbg !302330
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !302331

.lr.ph45.i:                                       ; preds = %bb.y
  %i.hk = getelementptr [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.hj, 8, !dbg !302331
  br i1 %min.iters.check346, label %scalar.ph345.preheader, label %vector.ph347, !dbg !302331

vector.ph347:                                     ; preds = %.lr.ph45.i
  %n.vec348 = and i64 %i.hj, -8                   ; 3 uses
  br label %vector.body349, !dbg !302331

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next355, %vector.body349 ], !dbg !302332 ; 3 uses
  %i.hl = xor i64 %index350, -1, !dbg !302333
  %i.hm = getelementptr [4 x i8], ptr %i.fm, i64 %i.hl, !dbg !302334 ; 2 uses
  %i.hn = getelementptr [4 x i8], ptr %i.hk, i64 %index350, !dbg !302335 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hm, i64 -12, !dbg !302336
  %i.hp = getelementptr i8, ptr %i.hm, i64 -28, !dbg !302336
  %wide.load351 = load <4 x i32>, ptr %i.ho, align 4, !dbg !302336, !alias.scope !302004, !noalias !302003
  %wide.load352 = load <4 x i32>, ptr %i.hp, align 4, !dbg !302336, !alias.scope !302004, !noalias !302003
  %reverse353 = shufflevector <4 x i32> %wide.load351, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !302336
  %reverse354 = shufflevector <4 x i32> %wide.load352, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !302336
  %i.hq = getelementptr i8, ptr %i.hn, i64 16, !dbg !302336
  store <4 x i32> %reverse353, ptr %i.hn, align 4, !dbg !302336, !alias.scope !302003, !noalias !302004
  store <4 x i32> %reverse354, ptr %i.hq, align 4, !dbg !302336, !alias.scope !302003, !noalias !302004
  %index.next355 = add nuw i64 %index350, 8, !dbg !302332 ; 2 uses
  %i.hr = icmp eq i64 %index.next355, %n.vec348, !dbg !302331
  br i1 %i.hr, label %middle.block356, label %vector.body349, !dbg !302331, !llvm.loop !301818

middle.block356:                                  ; preds = %vector.body349
  %cmp.n357 = icmp eq i64 %i.hj, %n.vec348, !dbg !302331
  br i1 %cmp.n357, label %.loopexit, label %scalar.ph345.preheader, !dbg !302331

scalar.ph345.preheader:                           ; preds = %.lr.ph45.i, %middle.block356
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec348, %middle.block356 ]
  br label %scalar.ph345, !dbg !302331

scalar.ph345:                                     ; preds = %scalar.ph345.preheader, %scalar.ph345
  %.sroa.07.043.i = phi i64 [ %i.hs, %scalar.ph345 ], [ %.sroa.07.043.i.ph, %scalar.ph345.preheader ] ; 3 uses
  %i.hs = add nuw i64 %.sroa.07.043.i, 1, !dbg !302332 ; 2 uses
  %i.ht = xor i64 %.sroa.07.043.i, -1, !dbg !302333
  %i.hu = getelementptr [4 x i8], ptr %i.fm, i64 %i.ht, !dbg !302334
  %i.hv = getelementptr [4 x i8], ptr %i.hk, i64 %.sroa.07.043.i, !dbg !302335
  %i.hw = load i32, ptr %i.hu, align 4, !dbg !302336, !alias.scope !302004, !noalias !302003
  store i32 %i.hw, ptr %i.hv, align 4, !dbg !302336, !alias.scope !302003, !noalias !302004
  %exitcond.not.i39 = icmp eq i64 %i.hs, %i.hj, !dbg !302330
  br i1 %exitcond.not.i39, label %.loopexit, label %scalar.ph345, !dbg !302331, !llvm.loop !301819

.loopexit:                                        ; preds = %scalar.ph345, %middle.block356, %bb.y
  %i.hx = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !302337
  br i1 %i.hx, label %.thread, label %bb.z, !dbg !302338

bb.z:                                             ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0122313, !dbg !302339
  br i1 %.not.i42, label %bb.aa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !302339, !prof !8988

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @128, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #57, !dbg !302340, !noalias !302016
  unreachable, !dbg !302340

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.z
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i, !dbg !302341
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph131) ]
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %i.hy, i64 noundef %i.hj, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.es, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #54, !dbg !302342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !302343
  %i.hz = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !302035
  br i1 %i.hz, label %.outer._crit_edge, label %bb.b, !dbg !302035

.thread:                                          ; preds = %bb.s, %.loopexit
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph131, i64 %i.fg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302017), !dbg !302344
  call void @llvm.experimental.noalias.scope.decl(metadata !302018), !dbg !302344
  %.not85 = icmp samesign ult i64 %3, %.sroa.16.0122313, !dbg !302345
  br i1 %.not85, label %bb.ac, label %bb.ab, !dbg !302345, !prof !9308

bb.ab:                                            ; preds = %.thread
  %i.ib = getelementptr [4 x i8], ptr %2, i64 %.sroa.16.0122313, !dbg !302346 ; 3 uses
  br label %bb.ad, !dbg !302347

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap(), !dbg !302348
  unreachable, !dbg !302348

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.43.0.i45 = phi ptr [ %i.ib, %bb.ab ], [ %i.km, %bb.af ], !dbg !302349 ; 2 uses
  %.sroa.27.0.i46 = phi i64 [ 0, %bb.ab ], [ %i.kp, %bb.af ], !dbg !302349 ; 2 uses
  %.sroa.9.0.i47 = phi ptr [ %.sroa.0.0.ph131, %bb.ab ], [ %i.kq, %bb.af ], !dbg !302349 ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i37, %bb.ab ], [ %.sroa.16.0122313, %bb.af ] ; 4 uses
  %i.ic = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i48, i64 3), !dbg !302350
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph131, i64 %i.ic, !dbg !302351 ; 2 uses
  %i.ie = icmp ult ptr %.sroa.9.0.i47, %i.id, !dbg !302352
  br i1 %i.ie, label %.lr.ph.i68, label %._crit_edge.i49, !dbg !302352

.lr.ph.i68:                                       ; preds = %bb.ad
  %.val23.i69 = load float, ptr %i.ia, align 4, !alias.scope !302019, !noalias !302020, !noundef !8787 ; 5 uses
  %i.if = fcmp uno float %.val23.i69, 0.000000e+00 ; 4 uses
  br label %bb.ae, !dbg !302352

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i68
  %.sroa.9.131.i70 = phi ptr [ %.sroa.9.0.i47, %.lr.ph.i68 ], [ %i.jd, %bb.ae ] ; 5 uses
  %.sroa.27.130.i71 = phi i64 [ %.sroa.27.0.i46, %.lr.ph.i68 ], [ %i.jc, %bb.ae ] ; 2 uses
  %.sroa.43.129.i72 = phi ptr [ %.sroa.43.0.i45, %.lr.ph.i68 ], [ %i.iz, %bb.ae ] ; 4 uses
  %.val22.i73 = load float, ptr %.sroa.9.131.i70, align 4, !dbg !302353, !alias.scope !302021, !noalias !302022, !noundef !8787 ; 2 uses
  %i.ig = fcmp oge float %.val23.i69, %.val22.i73, !dbg !302354
  %.not2.i.i.i.not.i.i = or i1 %i.if, %i.ig, !dbg !302355 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -4, !dbg !302356
  %.sroa.01.0.i.i74 = select i1 %.not2.i.i.i.not.i.i, ptr %2, ptr %i.ih, !dbg !302357
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i.i74, i64 %.sroa.27.130.i71, !dbg !302358
  store float %.val22.i73, ptr %i.ii, align 4, !dbg !302359, !alias.scope !302018, !noalias !302023
  %i.ij = zext i1 %.not2.i.i.i.not.i.i to i64, !dbg !302360
  %i.ik = add i64 %.sroa.27.130.i71, %i.ij, !dbg !302361 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 4, !dbg !302362
  %.val20.i75 = load float, ptr %i.il, align 4, !dbg !302363, !alias.scope !302021, !noalias !302022, !noundef !8787 ; 2 uses
  %i.im = fcmp oge float %.val23.i69, %.val20.i75, !dbg !302364
  %.not2.i.i.i.not.i24.i = or i1 %i.if, %i.im, !dbg !302365 ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -8, !dbg !302366
  %.sroa.01.0.i25.i76 = select i1 %.not2.i.i.i.not.i24.i, ptr %2, ptr %i.in, !dbg !302367
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.ik, !dbg !302368
  store float %.val20.i75, ptr %i.io, align 4, !dbg !302369, !alias.scope !302018, !noalias !302024
  %i.ip = zext i1 %.not2.i.i.i.not.i24.i to i64, !dbg !302370
  %i.iq = add i64 %i.ik, %i.ip, !dbg !302371      ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 8, !dbg !302372
  %.val18.i77 = load float, ptr %i.ir, align 4, !dbg !302373, !alias.scope !302021, !noalias !302022, !noundef !8787 ; 2 uses
  %i.is = fcmp oge float %.val23.i69, %.val18.i77, !dbg !302374
  %.not2.i.i.i.not.i26.i = or i1 %i.if, %i.is, !dbg !302375 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -12, !dbg !302376
  %.sroa.01.0.i27.i78 = select i1 %.not2.i.i.i.not.i26.i, ptr %2, ptr %i.it, !dbg !302377
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i27.i78, i64 %i.iq, !dbg !302378
  store float %.val18.i77, ptr %i.iu, align 4, !dbg !302379, !alias.scope !302018, !noalias !302025
  %i.iv = zext i1 %.not2.i.i.i.not.i26.i to i64, !dbg !302380
  %i.iw = add i64 %i.iq, %i.iv, !dbg !302381      ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 12, !dbg !302382
  %.val16.i79 = load float, ptr %i.ix, align 4, !dbg !302383, !alias.scope !302021, !noalias !302022, !noundef !8787 ; 2 uses
  %i.iy = fcmp oge float %.val23.i69, %.val16.i79, !dbg !302384
  %.not2.i.i.i.not.i28.i = or i1 %i.if, %i.iy, !dbg !302385 ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -16, !dbg !302386 ; 3 uses
  %.sroa.01.0.i29.i80 = select i1 %.not2.i.i.i.not.i28.i, ptr %2, ptr %i.iz, !dbg !302387
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.i29.i80, i64 %i.iw, !dbg !302388
  store float %.val16.i79, ptr %i.ja, align 4, !dbg !302389, !alias.scope !302018, !noalias !302026
  %i.jb = zext i1 %.not2.i.i.i.not.i28.i to i64, !dbg !302390
  %i.jc = add i64 %i.iw, %i.jb, !dbg !302391      ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 16, !dbg !302392 ; 3 uses
  %i.je = icmp ult ptr %i.jd, %i.id, !dbg !302352
  br i1 %i.je, label %bb.ae, label %._crit_edge.i49, !dbg !302352

._crit_edge.i49:                                  ; preds = %bb.ae, %bb.ad
  %.sroa.43.1.lcssa.i50 = phi ptr [ %.sroa.43.0.i45, %bb.ad ], [ %i.iz, %bb.ae ], !dbg !302349 ; 4 uses
  %.sroa.27.1.lcssa.i51 = phi i64 [ %.sroa.27.0.i46, %bb.ad ], [ %i.jc, %bb.ae ], !dbg !302349 ; 5 uses
  %.sroa.9.1.lcssa.i52 = phi ptr [ %.sroa.9.0.i47, %bb.ad ], [ %i.jd, %bb.ae ], !dbg !302349 ; 7 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.0.0.i48, !dbg !302393 ; 3 uses
  %i.jg = icmp ult ptr %.sroa.9.1.lcssa.i52, %i.jf, !dbg !302394
  br i1 %i.jg, label %.lr.ph38.i61.preheader, label %._crit_edge39.i53, !dbg !302394

.lr.ph38.i61.preheader:                           ; preds = %._crit_edge.i49
  %.val15.i66 = load float, ptr %i.ia, align 4, !alias.scope !302019, !noalias !302020, !noundef !8787 ; 2 uses
  %i.jh = fcmp uno float %.val15.i66, 0.000000e+00
  br i1 %i.jh, label %.lr.ph38.i61.us.preheader, label %.lr.ph38.i61

.lr.ph38.i61.us.preheader:                        ; preds = %.lr.ph38.i61.preheader
  %i.ji = shl i64 %.sroa.0.0.i48, 2, !dbg !302394
  %7 = ptrtoaddr ptr %.sroa.9.1.lcssa.i52 to i64, !dbg !302394
  %i.jj = add i64 %i.ji, %i.c, !dbg !302394
  %i.jk = xor i64 %7, -1, !dbg !302394
  %i.jl = add i64 %i.jj, %i.jk, !dbg !302394      ; 2 uses
  %i.jm = lshr i64 %i.jl, 2, !dbg !302394
  %i.jn = add nuw nsw i64 %i.jm, 1, !dbg !302394  ; 2 uses
  %min.iters.check332 = icmp ult i64 %i.jl, 28, !dbg !302394
  br i1 %min.iters.check332, label %.lr.ph38.i61.us.preheader364, label %vector.ph333, !dbg !302394

vector.ph333:                                     ; preds = %.lr.ph38.i61.us.preheader
  %n.vec334 = and i64 %i.jn, 9223372036854775800  ; 5 uses
  %i.jo = shl i64 %n.vec334, 2
  %i.jp = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.jo ; 2 uses
  %i.jq = add i64 %.sroa.27.1.lcssa.i51, %n.vec334 ; 2 uses
  %i.jr = mul i64 %n.vec334, -4
  %i.js = getelementptr i8, ptr %.sroa.43.1.lcssa.i50, i64 %i.jr ; 2 uses
  %i.jt = getelementptr [4 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i51
  br label %vector.body335, !dbg !302394

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.ju = shl i64 %index336, 2
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i52, i64 %i.ju ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep, i64 16, !dbg !302395
  %wide.load337 = load <4 x float>, ptr %next.gep, align 4, !dbg !302395, !alias.scope !302021, !noalias !302022
  %wide.load338 = load <4 x float>, ptr %i.jv, align 4, !dbg !302395, !alias.scope !302021, !noalias !302022
  %i.jw = getelementptr [4 x i8], ptr %i.jt, i64 %index336, !dbg !302396 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16, !dbg !302397
  store <4 x float> %wide.load337, ptr %i.jw, align 4, !dbg !302397, !alias.scope !302018, !noalias !302027
  store <4 x float> %wide.load338, ptr %i.jx, align 4, !dbg !302397, !alias.scope !302018, !noalias !302027
  %index.next339 = add nuw i64 %index336, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next339, %n.vec334, !dbg !302394
  br i1 %i.jy, label %middle.block340, label %vector.body335, !dbg !302394, !llvm.loop !301926

middle.block340:                                  ; preds = %vector.body335
  %cmp.n341 = icmp eq i64 %i.jn, %n.vec334, !dbg !302394
  br i1 %cmp.n341, label %._crit_edge39.i53, label %.lr.ph38.i61.us.preheader364, !dbg !302394

.lr.ph38.i61.us.preheader364:                     ; preds = %.lr.ph38.i61.us.preheader, %middle.block340
  %.sroa.9.236.i62.us.ph = phi ptr [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.us.preheader ], [ %i.jp, %middle.block340 ]
  %.sroa.27.235.i63.us.ph = phi i64 [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.us.preheader ], [ %i.jq, %middle.block340 ]
  %.sroa.43.234.i64.us.ph = phi ptr [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.us.preheader ], [ %i.js, %middle.block340 ]
  br label %.lr.ph38.i61.us, !dbg !302394

.lr.ph38.i61.us:                                  ; preds = %.lr.ph38.i61.us.preheader364, %.lr.ph38.i61.us
  %.sroa.9.236.i62.us = phi ptr [ %i.kc, %.lr.ph38.i61.us ], [ %.sroa.9.236.i62.us.ph, %.lr.ph38.i61.us.preheader364 ] ; 2 uses
  %.sroa.27.235.i63.us = phi i64 [ %i.kb, %.lr.ph38.i61.us ], [ %.sroa.27.235.i63.us.ph, %.lr.ph38.i61.us.preheader364 ] ; 2 uses
  %.sroa.43.234.i64.us = phi ptr [ %i.jz, %.lr.ph38.i61.us ], [ %.sroa.43.234.i64.us.ph, %.lr.ph38.i61.us.preheader364 ]
  %.val.i65.us = load float, ptr %.sroa.9.236.i62.us, align 4, !dbg !302395, !alias.scope !302021, !noalias !302022, !noundef !8787
  %i.jz = getelementptr inbounds i8, ptr %.sroa.43.234.i64.us, i64 -4, !dbg !302398 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.27.235.i63.us, !dbg !302396
  store float %.val.i65.us, ptr %i.ka, align 4, !dbg !302397, !alias.scope !302018, !noalias !302027
  %i.kb = add i64 %.sroa.27.235.i63.us, 1, !dbg !302399 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62.us, i64 4, !dbg !302400 ; 3 uses
  %i.kd = icmp ult ptr %i.kc, %i.jf, !dbg !302394
  br i1 %i.kd, label %.lr.ph38.i61.us, label %._crit_edge39.i53, !dbg !302394, !llvm.loop !301929

._crit_edge39.i53:                                ; preds = %.lr.ph38.i61, %.lr.ph38.i61.us, %middle.block340, %._crit_edge.i49
  %.sroa.43.2.lcssa.i54 = phi ptr [ %.sroa.43.1.lcssa.i50, %._crit_edge.i49 ], [ %i.jz, %.lr.ph38.i61.us ], [ %i.js, %middle.block340 ], [ %i.kg, %.lr.ph38.i61 ], !dbg !302349
  %.sroa.27.2.lcssa.i55 = phi i64 [ %.sroa.27.1.lcssa.i51, %._crit_edge.i49 ], [ %i.kb, %.lr.ph38.i61.us ], [ %i.jq, %middle.block340 ], [ %i.kj, %.lr.ph38.i61 ], !dbg !302349 ; 9 uses
  %.sroa.9.2.lcssa.i56 = phi ptr [ %.sroa.9.1.lcssa.i52, %._crit_edge.i49 ], [ %i.kc, %.lr.ph38.i61.us ], [ %i.jp, %middle.block340 ], [ %i.kk, %.lr.ph38.i61 ], !dbg !302349 ; 2 uses
  %i.ke = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.0122313, !dbg !302401
  br i1 %i.ke, label %bb.ag, label %bb.af, !dbg !302401

.lr.ph38.i61:                                     ; preds = %.lr.ph38.i61.preheader, %.lr.ph38.i61
  %.sroa.9.236.i62 = phi ptr [ %i.kk, %.lr.ph38.i61 ], [ %.sroa.9.1.lcssa.i52, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.27.235.i63 = phi i64 [ %i.kj, %.lr.ph38.i61 ], [ %.sroa.27.1.lcssa.i51, %.lr.ph38.i61.preheader ] ; 2 uses
  %.sroa.43.234.i64 = phi ptr [ %i.kg, %.lr.ph38.i61 ], [ %.sroa.43.1.lcssa.i50, %.lr.ph38.i61.preheader ]
  %.val.i65 = load float, ptr %.sroa.9.236.i62, align 4, !dbg !302395, !alias.scope !302021, !noalias !302022, !noundef !8787 ; 2 uses
  %i.kf = fcmp oge float %.val15.i66, %.val.i65, !dbg !302402 ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %.sroa.43.234.i64, i64 -4, !dbg !302398 ; 3 uses
  %spec.select = select i1 %i.kf, ptr %2, ptr %i.kg, !dbg !302403
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %.sroa.27.235.i63, !dbg !302396
  store float %.val.i65, ptr %i.kh, align 4, !dbg !302397, !alias.scope !302018, !noalias !302027
  %i.ki = zext i1 %i.kf to i64, !dbg !302404
  %i.kj = add i64 %.sroa.27.235.i63, %i.ki, !dbg !302399 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i62, i64 4, !dbg !302400 ; 3 uses
  %i.kl = icmp ult ptr %i.kk, %i.jf, !dbg !302394
  br i1 %i.kl, label %.lr.ph38.i61, label %._crit_edge39.i53, !dbg !302394

bb.af:                                            ; preds = %._crit_edge39.i53
  %i.km = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i54, i64 -4, !dbg !302405
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i55, !dbg !302406
  %i.ko = load i32, ptr %.sroa.9.2.lcssa.i56, align 4, !dbg !302407, !alias.scope !302017, !noalias !302028
  store i32 %i.ko, ptr %i.kn, align 4, !dbg !302407, !alias.scope !302018, !noalias !302029
  %i.kp = add i64 %.sroa.27.2.lcssa.i55, 1, !dbg !302408
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i56, i64 4, !dbg !302409
  br label %bb.ad, !dbg !302347

bb.ag:                                            ; preds = %._crit_edge39.i53
  %i.kr = shl i64 %.sroa.27.2.lcssa.i55, 2, !dbg !302410
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph131, ptr nonnull align 4 %2, i64 %i.kr, i1 false), !dbg !302410, !alias.scope !302030
  %i.ks = sub i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i55, !dbg !302411 ; 7 uses
  %.not47.i57 = icmp eq i64 %.sroa.16.0122313, %.sroa.27.2.lcssa.i55, !dbg !302412
  br i1 %.not47.i57, label %.outer._crit_edge.thread, label %.lr.ph45.i58, !dbg !302413

.lr.ph45.i58:                                     ; preds = %bb.ag
  %i.kt = getelementptr [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55 ; 2 uses
  %min.iters.check = icmp ult i64 %i.ks, 8, !dbg !302413
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !302413

vector.ph:                                        ; preds = %.lr.ph45.i58
  %n.vec = and i64 %i.ks, -8                      ; 3 uses
  br label %vector.body, !dbg !302413

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !302414 ; 3 uses
  %i.ku = xor i64 %index, -1, !dbg !302415
  %i.kv = getelementptr [4 x i8], ptr %i.ib, i64 %i.ku, !dbg !302416 ; 2 uses
  %i.kw = getelementptr [4 x i8], ptr %i.kt, i64 %index, !dbg !302417 ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kv, i64 -12, !dbg !302418
  %i.ky = getelementptr i8, ptr %i.kv, i64 -28, !dbg !302418
  %wide.load = load <4 x i32>, ptr %i.kx, align 4, !dbg !302418, !alias.scope !302018, !noalias !302017
  %wide.load329 = load <4 x i32>, ptr %i.ky, align 4, !dbg !302418, !alias.scope !302018, !noalias !302017
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !302418
  %reverse330 = shufflevector <4 x i32> %wide.load329, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !302418
  %i.kz = getelementptr i8, ptr %i.kw, i64 16, !dbg !302418
  store <4 x i32> %reverse, ptr %i.kw, align 4, !dbg !302418, !alias.scope !302017, !noalias !302018
  store <4 x i32> %reverse330, ptr %i.kz, align 4, !dbg !302418, !alias.scope !302017, !noalias !302018
  %index.next = add nuw i64 %index, 8, !dbg !302414 ; 2 uses
  %i.la = icmp eq i64 %index.next, %n.vec, !dbg !302413
  br i1 %i.la, label %middle.block, label %vector.body, !dbg !302413, !llvm.loop !301964

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ks, %n.vec, !dbg !302413
  br i1 %cmp.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph.preheader, !dbg !302413

scalar.ph.preheader:                              ; preds = %.lr.ph45.i58, %middle.block
  %.sroa.07.043.i59.ph = phi i64 [ 0, %.lr.ph45.i58 ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !302413

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i59 = phi i64 [ %i.lb, %scalar.ph ], [ %.sroa.07.043.i59.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lb = add nuw i64 %.sroa.07.043.i59, 1, !dbg !302414 ; 2 uses
  %i.lc = xor i64 %.sroa.07.043.i59, -1, !dbg !302415
  %i.ld = getelementptr [4 x i8], ptr %i.ib, i64 %i.lc, !dbg !302416
  %i.le = getelementptr [4 x i8], ptr %i.kt, i64 %.sroa.07.043.i59, !dbg !302417
  %i.lf = load i32, ptr %i.ld, align 4, !dbg !302418, !alias.scope !302018, !noalias !302017
  store i32 %i.lf, ptr %i.le, align 4, !dbg !302418, !alias.scope !302017, !noalias !302018
  %exitcond.not.i60 = icmp eq i64 %i.lb, %i.ks, !dbg !302412
  br i1 %exitcond.not.i60, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit, label %scalar.ph, !dbg !302413, !llvm.loop !301965

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %scalar.ph, %middle.block
  %i.lg = icmp ugt i64 %.sroa.27.2.lcssa.i55, %.sroa.16.0122313, !dbg !302419
  br i1 %i.lg, label %bb.ah, label %.outer, !dbg !302419, !prof !8988

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !302343
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !302038

.outer:                                           ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph131, i64 %.sroa.27.2.lcssa.i55, !dbg !302420 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !302343
  %i.li = icmp ult i64 %i.ks, 33, !dbg !302035
  br i1 %i.li, label %.outer._crit_edge, label %.lr.ph, !dbg !302035

bb.ah:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort16stable_partitionfNCINvB2_9quicksortfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i55, i64 noundef %.sroa.16.0122313, i64 noundef %.sroa.16.0122313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #57, !dbg !302421
  unreachable, !dbg !302421
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksorthNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %4, ptr noalias noundef readonly captures(address) dereferenceable_or_null(1) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #19 personality ptr @rust_eh_personality !dbg !302422 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !302955
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !302955

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph131 = phi ptr [ %i.lg, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph130 = phi i64 [ %i.kl, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph129 = phi i32 [ %i.ee, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph128 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph131 to i64     ; 7 uses
  %.not = icmp eq ptr %.sroa.028.0.ph128, null
  %i.d = icmp eq i32 %.sroa.025.0.ph129, 0, !dbg !302956
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph287.preheader, !dbg !302956

.lr.ph287.preheader:                              ; preds = %.lr.ph
  %i.e = add i64 %i.c, -1, !dbg !302957
  br label %.lr.ph287, !dbg !302958

bb.b:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.f = icmp eq i32 %i.ee, 0, !dbg !302956
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph287, !dbg !302956

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.a
  %.sroa.0.0.ph.lcssa121 = phi ptr [ %.sroa.0.0.ph131, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %0, %bb.a ], [ %i.lg, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit ], [ %1, %bb.a ], [ %i.kl, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302892), !dbg !302959
  call void @llvm.experimental.noalias.scope.decl(metadata !302893), !dbg !302959
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2, !dbg !302960
  br i1 %i.g, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchhNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.c, !dbg !302960

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16, !dbg !302961
  %i.i = icmp samesign ult i64 %3, %i.h, !dbg !302962
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !302962

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1, !dbg !302963 ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15, !dbg !302964
  br i1 %i.k, label %bb.g, label %bb.f, !dbg !302964
end_hunk_3
