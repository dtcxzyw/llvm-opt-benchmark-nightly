Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/initconfig?download=true
inline.NumInlined: 296
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@config_read:bb.a

bb.cm:                                            ; preds = %bb.cl
  %i.gg = load i32, ptr %i.gc, align 4, !tbaa !15, !noalias !517
  %i.gh = icmp eq i32 %i.gg, 34
  %i.gi = add i64 %i.gd, -2147483648
  %or.cond.i.i109.i = icmp ult i64 %i.gi, -4294967296
  %or.cond8.i.i110.i = select i1 %i.gh, i1 true, i1 %or.cond.i.i109.i
  br i1 %or.cond8.i.i110.i, label %.thread.i108.i, label %bb.cn

.thread.i108.i:                                   ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28, !noalias !517
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.gj = trunc nuw nsw i64 %i.gd to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28, !noalias !517
  %i.gk = icmp slt i64 %i.gd, 0
  br i1 %i.gk, label %bb.co, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.cn, %bb.ck
  %i.gl = phi i32 [ %i.gj, %bb.cn ], [ 1, %bb.ck ]
  store i32 %i.gl, ptr %i.fs, align 4, !tbaa !161, !noalias !517
  br label %config_init_tracemalloc.exit.i

config_init_tracemalloc.exit.i:                   ; preds = %.critedge.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28, !noalias !517
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn, %.thread.i108.i, %bb.ch
  %.sroa.11190.0.ph.i = phi ptr [ @.str.210, %bb.cn ], [ @.str.208, %bb.ch ], [ @.str.210, %.thread.i108.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28, !noalias !517
  br label %bb.fe

bb.cp:                                            ; preds = %config_init_tracemalloc.exit.i, %config_init_lazy_imports.exit.thread.i
  %i.gm = getelementptr i8, ptr %1, i64 40        ; 7 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !162, !noalias !514
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %bb.cq, label %bb.dc

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28, !noalias !518
  store i32 0, ptr %i.l, align 4, !tbaa !15, !noalias !518
  %.val22.i.i = load i32, ptr %i.y, align 8, !tbaa !181, !noalias !518
  %i.gp = call ptr @_Py_GetEnv(i32 noundef %.val22.i.i, ptr noundef nonnull @.str.211) #28, !noalias !518 ; 2 uses
  %.not.i111.i = icmp eq ptr %i.gp, null
  br i1 %.not.i111.i, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gq = call i32 @_Py_str_to_int(ptr noundef nonnull %i.gp, ptr noundef nonnull %i.l) #28, !noalias !518
  %.not15.i112.i = icmp eq i32 %i.gq, 0
  br i1 %.not15.i112.i, label %bb.cs, label %.thread.i113.i

.thread.i113.i:                                   ; preds = %bb.cr
  store i32 0, ptr %i.l, align 4, !tbaa !15, !noalias !518
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %.pr.i118.i = load i32, ptr %i.l, align 4, !tbaa !15, !noalias !518
  %.not16.i119.i = icmp eq i32 %.pr.i118.i, 0
  br i1 %.not16.i119.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 1, ptr %i.gm, align 8, !tbaa !162, !noalias !518
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %.thread.i113.i, %bb.cq
  %i.gr = call ptr @_Py_get_xoption(ptr noundef %i.dk, ptr noundef nonnull @.str.212) #28, !noalias !518
  %.not17.i.i98 = icmp eq ptr %i.gr, null
  br i1 %.not17.i.i98, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i32 1, ptr %i.gm, align 8, !tbaa !162, !noalias !518
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.val.i114.i = load i32, ptr %i.y, align 8, !tbaa !181, !noalias !518
  %i.gs = call ptr @_Py_GetEnv(i32 noundef %.val.i114.i, ptr noundef nonnull @.str.213) #28, !noalias !518 ; 2 uses
  %.not18.i115.i = icmp eq ptr %i.gs, null
  br i1 %.not18.i115.i, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gt = call i32 @_Py_str_to_int(ptr noundef nonnull %i.gs, ptr noundef nonnull %i.l) #28, !noalias !518
  %.not19.i116.i = icmp eq i32 %i.gt, 0
  br i1 %.not19.i116.i, label %bb.cy, label %.thread26.i117.i

.thread26.i117.i:                                 ; preds = %bb.cx
  store i32 0, ptr %i.l, align 4, !tbaa !15, !noalias !518
  br label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %.pr25.i.i = load i32, ptr %i.l, align 4, !tbaa !15, !noalias !518
  %.not20.i.i = icmp eq i32 %.pr25.i.i, 0
  br i1 %.not20.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 2, ptr %i.gm, align 8, !tbaa !162, !noalias !518
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %.thread26.i117.i, %bb.cw
  %i.gu = call ptr @_Py_get_xoption(ptr noundef %i.dk, ptr noundef nonnull @.str.214) #28, !noalias !518
  %.not21.i.i = icmp eq ptr %i.gu, null
  br i1 %.not21.i.i, label %config_init_perf_profiling.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 2, ptr %i.gm, align 8, !tbaa !162, !noalias !518
  br label %config_init_perf_profiling.exit.i

config_init_perf_profiling.exit.i:                ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28, !noalias !518
  br label %bb.dc

bb.dc:                                            ; preds = %config_init_perf_profiling.exit.i, %bb.cp
  %i.gv = getelementptr i8, ptr %1, i64 44        ; 4 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !519, !noalias !514
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.gy = load i32, ptr @Py_IgnoreEnvironmentFlag, align 4, !tbaa !15, !noalias !520
  %.not.i.i120.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i120.i, label %bb.de, label %config_init_remote_debug.exit.i

bb.de:                                            ; preds = %bb.dd
  %i.gz = call ptr @getenv(ptr noundef nonnull @.str.215) #28, !noalias !520
  %i.ha = icmp eq ptr %i.gz, null
  %i.hb = zext i1 %i.ha to i32
  br label %config_init_remote_debug.exit.i

config_init_remote_debug.exit.i:                  ; preds = %bb.de, %bb.dd
  %.0.i.i.i = phi i32 [ %i.hb, %bb.de ], [ 1, %bb.dd ]
  %i.hc = call ptr @_Py_get_xoption(ptr noundef %i.dk, ptr noundef nonnull @.str.216) #28, !noalias !520
  %.not4.i.i = icmp eq ptr %i.hc, null
  %.1.i121.i = select i1 %.not4.i.i, i32 %.0.i.i.i, i32 0
  store i32 %.1.i121.i, ptr %i.gv, align 4, !tbaa !519, !noalias !520
  br label %bb.df

bb.df:                                            ; preds = %config_init_remote_debug.exit.i, %bb.dc
  %i.hd = getelementptr i8, ptr %1, i64 264       ; 4 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !151, !noalias !514
  %i.hf = icmp slt i32 %i.he, 0
  br i1 %i.hf, label %bb.dg, label %bb.dq

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28, !noalias !521
  %.val.i122.i = load i32, ptr %i.y, align 8, !tbaa !181, !noalias !521
  %i.hg = call ptr @_Py_GetEnv(i32 noundef %.val.i122.i, ptr noundef nonnull @.str.217) #28, !noalias !521 ; 2 uses
  %.not.i123.i = icmp eq ptr %i.hg, null
  br i1 %.not.i123.i, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.hh = call i32 @_Py_str_to_int(ptr noundef nonnull %i.hg, ptr noundef nonnull %i.k) #28, !noalias !521
  %.not21.i124.i = icmp eq i32 %i.hh, 0
  br i1 %.not21.i124.i, label %bb.di, label %bb.dp

bb.di:                                            ; preds = %bb.dh
  %i.hi = load i32, ptr %i.k, align 4, !tbaa !15, !noalias !521 ; 3 uses
  %i.hj = icmp eq i32 %i.hi, 0
  %i.hk = icmp sgt i32 %i.hi, 639
  %i.hl = or i1 %i.hj, %i.hk
  br i1 %i.hl, label %.thread28.i.i, label %bb.dp

.thread28.i.i:                                    ; preds = %bb.di
  store i32 %i.hi, ptr %i.hd, align 8, !tbaa !151, !noalias !521
  br label %bb.dj

bb.dj:                                            ; preds = %.thread28.i.i, %bb.dg
  %i.hm = call ptr @_Py_get_xoption(ptr noundef %i.dk, ptr noundef nonnull @.str.219) #28, !noalias !521 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.hm, null
  br i1 %.not22.i.i, label %bb.do, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.hn = call ptr @wcschr(ptr noundef nonnull %i.hm, i32 noundef 61) #29, !noalias !521 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.hn, null
  br i1 %.not23.i.i, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ho = getelementptr i8, ptr %i.hn, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28, !noalias !521
  store ptr %i.ho, ptr %i.j, align 8, !tbaa !32, !noalias !521
  %i.hp = tail call ptr @__errno_location() #32   ; 2 uses
  store i32 0, ptr %i.hp, align 4, !tbaa !15, !noalias !521
  %i.hq = call i64 @__isoc23_wcstol(ptr noundef %i.ho, ptr noundef nonnull %i.j, i32 noundef 10) #28, !noalias !521 ; 4 uses
  %i.hr = load ptr, ptr %i.j, align 8, !tbaa !32, !noalias !521
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !15, !noalias !521
  %.not.i.i126.i = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i126.i, label %bb.dm, label %config_wstr_to_int.exit.thread.i127.i

bb.dm:                                            ; preds = %bb.dl
  %i.ht = load i32, ptr %i.hp, align 4, !tbaa !15, !noalias !521
  %i.hu = icmp eq i32 %i.ht, 34
  %i.hv = add i64 %i.hq, -2147483648
  %or.cond.i.i128.i = icmp ult i64 %i.hv, -4294967296
  %or.cond8.i.i129.i = select i1 %i.hu, i1 true, i1 %or.cond.i.i128.i
  br i1 %or.cond8.i.i129.i, label %config_wstr_to_int.exit.thread.i127.i, label %bb.dn

config_wstr_to_int.exit.thread.i127.i:            ; preds = %bb.dm, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !521
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %19 = trunc nuw nsw i64 %i.hq to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !521
  %i.hw = icmp eq i64 %i.hq, 0
  %i.hx = icmp sgt i64 %i.hq, 639
  %i.hy = or i1 %i.hw, %i.hx
  br i1 %i.hy, label %config_init_int_max_str_digits.exit.sink.split.i, label %bb.dp

bb.do:                                            ; preds = %bb.dj
  %.pre.i.i = load i32, ptr %i.hd, align 8, !tbaa !151, !noalias !521
  %i.hz = icmp slt i32 %.pre.i.i, 0
  br i1 %i.hz, label %config_init_int_max_str_digits.exit.sink.split.i, label %config_init_int_max_str_digits.exit.i

config_init_int_max_str_digits.exit.sink.split.i: ; preds = %bb.do, %bb.dn
  %.sink.i = phi i32 [ %19, %bb.dn ], [ 4300, %bb.do ]
  store i32 %.sink.i, ptr %i.hd, align 8, !tbaa !151, !noalias !521
  br label %config_init_int_max_str_digits.exit.i

config_init_int_max_str_digits.exit.i:            ; preds = %config_init_int_max_str_digits.exit.sink.split.i, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28, !noalias !521
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn, %config_wstr_to_int.exit.thread.i127.i, %bb.dk, %bb.di, %bb.dh
  %.sroa.11180.0.ph.i = phi ptr [ @.str.220, %config_wstr_to_int.exit.thread.i127.i ], [ @.str.220, %bb.dn ], [ @.str.218, %bb.di ], [ @.str.218, %bb.dh ], [ @.str.220, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28, !noalias !521
  br label %bb.fe

bb.dq:                                            ; preds = %config_init_int_max_str_digits.exit.i, %bb.df
  %i.ia = getelementptr i8, ptr %1, i64 276       ; 3 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !153, !noalias !514
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %bb.dr, label %config_init_cpu_count.exit.i

bb.dr:                                            ; preds = %bb.dq
  %.val.i130.i = load i32, ptr %i.y, align 8, !tbaa !181, !noalias !522
  %i.id = call ptr @_Py_GetEnv(i32 noundef %.val.i130.i, ptr noundef nonnull @.str.221) #28, !noalias !522 ; 3 uses
  %.not.i131.i = icmp eq ptr %i.id, null
  br i1 %.not.i131.i, label %bb.dv, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28, !noalias !522
  store i32 -1, ptr %i.i, align 4, !tbaa !15, !noalias !522
  %i.ie = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.id, ptr noundef nonnull dereferenceable(8) @.str.222) #29, !noalias !522
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %.thread.i133.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ig = call i32 @_Py_str_to_int(ptr noundef nonnull %i.id, ptr noundef nonnull %i.i) #28, !noalias !522
  %i.ih = icmp slt i32 %i.ig, 0
  %i.ii = load i32, ptr %i.i, align 4, !noalias !522 ; 2 uses
  %i.ij = icmp slt i32 %i.ii, 1
  %or.cond.i132.i = select i1 %i.ih, i1 true, i1 %i.ij
  br i1 %or.cond.i132.i, label %bb.du, label %.thread.i133.i

.thread.i133.i:                                   ; preds = %bb.dt, %bb.ds
  %i.ik = phi i32 [ %i.ii, %bb.dt ], [ -1, %bb.ds ]
  store i32 %i.ik, ptr %i.ia, align 4, !tbaa !153, !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28, !noalias !522
  br label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28, !noalias !522
  br label %bb.fe

bb.dv:                                            ; preds = %.thread.i133.i, %bb.dr
  %i.il = call ptr @_Py_get_xoption(ptr noundef %i.dk, ptr noundef nonnull @.str.223) #28, !noalias !522 ; 2 uses
  %.not19.i134.i = icmp eq ptr %i.il, null
  br i1 %.not19.i134.i, label %config_init_cpu_count.exit.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.im = call ptr @wcschr(ptr noundef nonnull %i.il, i32 noundef 61) #29, !noalias !522 ; 2 uses
  %.not20.i135.i = icmp eq ptr %i.im, null
  br i1 %.not20.i135.i, label %bb.fe, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.in = getelementptr i8, ptr %i.im, i64 4      ; 3 uses
  %i.io = call i32 @wcscmp(ptr noundef %i.in, ptr noundef nonnull @.str.146) #29, !noalias !522
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28, !noalias !522
  store ptr %i.in, ptr %i.h, align 8, !tbaa !32, !noalias !522
  %i.iq = tail call ptr @__errno_location() #32   ; 2 uses
  store i32 0, ptr %i.iq, align 4, !tbaa !15, !noalias !522
  %i.ir = call i64 @__isoc23_wcstol(ptr noundef %i.in, ptr noundef nonnull %i.h, i32 noundef 10) #28, !noalias !522 ; 3 uses
  %i.is = load ptr, ptr %i.h, align 8, !tbaa !32, !noalias !522
  %i.it = load i32, ptr %i.is, align 4, !tbaa !15, !noalias !522
  %.not.i.i136.i = icmp eq i32 %i.it, 0
  br i1 %.not.i.i136.i, label %bb.dz, label %config_wstr_to_int.exit.thread.i137.i

bb.dz:                                            ; preds = %bb.dy
  %i.iu = load i32, ptr %i.iq, align 4, !tbaa !15, !noalias !522
  %i.iv = icmp eq i32 %i.iu, 34
  %i.iw = add i64 %i.ir, -2147483648
  %or.cond.i.i138.i = icmp ult i64 %i.iw, -4294967296
  %or.cond8.i.i139.i = select i1 %i.iv, i1 true, i1 %or.cond.i.i138.i
  br i1 %or.cond8.i.i139.i, label %config_wstr_to_int.exit.thread.i137.i, label %config_wstr_to_int.exit.i.i

config_wstr_to_int.exit.thread.i137.i:            ; preds = %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28, !noalias !522
  br label %bb.fe

config_wstr_to_int.exit.i.i:                      ; preds = %bb.dz
  %i.ix = trunc nuw nsw i64 %i.ir to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28, !noalias !522
  %i.iy = icmp slt i64 %i.ir, 1
  br i1 %i.iy, label %bb.fe, label %bb.ea

bb.ea:                                            ; preds = %config_wstr_to_int.exit.i.i, %bb.dx
  %.023.i.i = phi i32 [ %i.ix, %config_wstr_to_int.exit.i.i ], [ -1, %bb.dx ]
  store i32 %.023.i.i, ptr %i.ia, align 4, !tbaa !153, !noalias !522
  br label %config_init_cpu_count.exit.i

config_init_cpu_count.exit.i:                     ; preds = %bb.ea, %bb.dv, %bb.dq
  %i.iz = getelementptr i8, ptr %1, i64 96        ; 7 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !126, !noalias !514
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.eb, label %config_init_pycache_prefix.exit.thread.i

bb.eb:                                            ; preds = %config_init_cpu_count.exit.i
  %i.jc = call ptr @_Py_get_xoption(ptr noundef %i.dk, ptr noundef nonnull @.str.225) #28, !noalias !523 ; 2 uses
  %.not.i140.i = icmp eq ptr %i.jc, null
  br i1 %.not.i140.i, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.jd = call ptr @wcschr(ptr noundef nonnull %i.jc, i32 noundef 61) #29, !noalias !523 ; 3 uses
  %.not12.i141.i = icmp eq ptr %i.jd, null
  br i1 %.not12.i141.i, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.je = call i64 @wcslen(ptr noundef nonnull %i.jd) #29, !noalias !523
  %i.jf = icmp ugt i64 %i.je, 1
  br i1 %i.jf, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.jg = getelementptr i8, ptr %i.jd, i64 4
  %i.jh = call ptr @_PyMem_RawWcsdup(ptr noundef %i.jg) #28, !noalias !523 ; 2 uses
  store ptr %i.jh, ptr %i.iz, align 8, !tbaa !126, !noalias !523
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.fe, label %config_init_pycache_prefix.exit.thread.i

bb.ef:                                            ; preds = %bb.ed, %bb.ec
  store ptr null, ptr %i.iz, align 8, !tbaa !126, !noalias !523
  br label %config_init_pycache_prefix.exit.thread.i

bb.eg:                                            ; preds = %bb.eb
  %i.jj = load i32, ptr %i.y, align 8, !tbaa !181, !noalias !524
  %.not.i.i142.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i.i142.i, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store ptr null, ptr %i.iz, align 8, !tbaa !32, !noalias !524
  br label %config_init_pycache_prefix.exit.thread.i

bb.ei:                                            ; preds = %bb.eg
  %i.jk = call ptr @getenv(ptr noundef nonnull @.str.227) #28, !noalias !524 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not10.i.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !36, !noalias !524
  %i.jm = icmp eq i8 %i.jl, 0
  br i1 %i.jm, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  store ptr null, ptr %i.iz, align 8, !tbaa !32, !noalias !524
  br label %config_init_pycache_prefix.exit.thread.i

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !525
  call void @_Py_PreInitializeFromConfig(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %11, ptr noundef nonnull %1, ptr noundef null) #28, !noalias !525
  %i.jn = load i32, ptr %11, align 8, !tbaa !19, !noalias !525 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.jn, 0
  br i1 %.not.i.i.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 4
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4, !noalias !514
  %.sroa.13172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.13172.0.copyload.i = load ptr, ptr %.sroa.13172.0..sroa_idx.i, align 8, !tbaa !164, !noalias !514
  %.sroa.15173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.15173.0.copyload.i = load ptr, ptr %.sroa.15173.0..sroa_idx.i, align 8, !tbaa !164, !noalias !514
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.jo = load <2 x i32>, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !514
  br label %config_init_pycache_prefix.exit.thread334.i

bb.en:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28, !noalias !525
  %i.jp = call ptr @Py_DecodeLocale(ptr noundef nonnull %i.jk, ptr noundef nonnull %i.g) #28, !noalias !525 ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.jp, null
  br i1 %.not11.i.i.i.i, label %bb.eo, label %config_init_pycache_prefix.exit.i

bb.eo:                                            ; preds = %bb.en
  %i.jq = load i64, ptr %i.g, align 8, !tbaa !34, !noalias !525
  %i.jr = icmp eq i64 %i.jq, -2
  %spec.select.i.i.i.i = select i1 %i.jr, ptr @.str.228, ptr @.str
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28, !noalias !525
  br label %config_init_pycache_prefix.exit.thread334.i

config_init_pycache_prefix.exit.thread334.i:      ; preds = %bb.eo, %bb.em
  %.sroa.0171.0.ph.i = phi i32 [ %i.jn, %bb.em ], [ 1, %bb.eo ]
  %.sroa.10.0.ph.i = phi i32 [ %.sroa.10.0.copyload.i, %bb.em ], [ 0, %bb.eo ]
  %.sroa.13172.0.ph.i = phi ptr [ %.sroa.13172.0.copyload.i, %bb.em ], [ @__func__.config_set_bytes_string, %bb.eo ]
  %.sroa.15173.0.ph.i = phi ptr [ %.sroa.15173.0.copyload.i, %bb.em ], [ %spec.select.i.i.i.i, %bb.eo ]
  %i.js = phi <2 x i32> [ %i.jo, %bb.em ], [ zeroinitializer, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !525
  br label %bb.fe

config_init_pycache_prefix.exit.i:                ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28, !noalias !525
  %i.jt = load ptr, ptr %i.iz, align 8, !tbaa !32, !noalias !525
  call void @PyMem_RawFree(ptr noundef %i.jt) #28, !noalias !525
  store ptr %i.jp, ptr %i.iz, align 8, !tbaa !32, !noalias !525
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !525
end_hunk_0
