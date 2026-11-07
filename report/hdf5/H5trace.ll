Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5trace?download=true
inline.NumInlined: 15
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@H5_trace_args:.preheader1658
    i32 4, label %bb.fv
  ]

bb.fr:                                            ; preds = %bb.fq
  %i.su = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.65) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.fs:                                            ; preds = %bb.fq
  %i.sv = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.66) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ft:                                            ; preds = %bb.fq
  %i.sw = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.67) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.fu:                                            ; preds = %bb.fq
  %i.sx = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.68) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.fv:                                            ; preds = %bb.fq
  %i.sy = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.69) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.fw:                                            ; preds = %bb.fq
  %i.sz = zext i32 %i.st to i64
  %i.ta = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.sz) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.fx:                                            ; preds = %bb.df
  %i.tb = load ptr, ptr %i.d, align 8             ; 8 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 56
  store ptr %i.tc, ptr %i.d, align 8
  %.sroa.0323.0.copyload = load ptr, ptr %i.tb, align 8, !tbaa !32
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %.sroa.4324.0.copyload = load ptr, ptr %.sroa.4324.0..sroa_idx, align 8, !tbaa !32
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %.sroa.5325.0.copyload = load ptr, ptr %.sroa.5325.0..sroa_idx, align 8, !tbaa !32
  %.sroa.6326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %.sroa.6326.0.copyload = load ptr, ptr %.sroa.6326.0..sroa_idx, align 8, !tbaa !32
  %.sroa.7327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tb, i64 32
  %.sroa.7327.0.copyload = load ptr, ptr %.sroa.7327.0..sroa_idx, align 8, !tbaa !32
  %.sroa.8328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %.sroa.8328.0.copyload = load ptr, ptr %.sroa.8328.0..sroa_idx, align 8, !tbaa !32
  %.sroa.9329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tb, i64 48
  %.sroa.9329.0.copyload = load ptr, ptr %.sroa.9329.0..sroa_idx, align 8, !tbaa !32
  %i.td = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef %.sroa.0323.0.copyload) #10 ; 0 uses
  %i.te = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef %.sroa.4324.0.copyload) #10 ; 0 uses
  %i.tf = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef %.sroa.5325.0.copyload) #10 ; 0 uses
  %i.tg = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef %.sroa.6326.0.copyload) #10 ; 0 uses
  %i.th = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef %.sroa.7327.0.copyload) #10 ; 0 uses
  %i.ti = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef %.sroa.8328.0.copyload) #10 ; 0 uses
  %i.tj = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef %.sroa.9329.0.copyload) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.fy:                                            ; preds = %bb.df
  %i.tk = load i32, ptr %2, align 8               ; 3 uses
  %i.tl = icmp ult i32 %i.tk, 41
  br i1 %i.tl, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.tm = load ptr, ptr %i.e, align 8
  %i.tn = zext nneg i32 %i.tk to i64
  %i.to = getelementptr i8, ptr %i.tm, i64 %i.tn
  %i.tp = add nuw nsw i32 %i.tk, 8
  store i32 %i.tp, ptr %2, align 8
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  %i.tq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.tr = getelementptr i8, ptr %i.tq, i64 8
  store ptr %i.tr, ptr %i.d, align 8
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.ts = phi ptr [ %i.to, %bb.fz ], [ %i.tq, %bb.ga ]
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.tt, label %bb.gj [
    i32 0, label %bb.gc
    i32 2, label %bb.gd
    i32 3, label %bb.ge
    i32 4, label %bb.gf
    i32 5, label %bb.gg
    i32 1, label %bb.gh
    i32 6, label %bb.gi
  ]

bb.gc:                                            ; preds = %bb.gb
  %i.tu = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.73) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gd:                                            ; preds = %bb.gb
  %i.tv = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.74) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ge:                                            ; preds = %bb.gb
  %i.tw = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.75) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gf:                                            ; preds = %bb.gb
  %i.tx = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.76) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gg:                                            ; preds = %bb.gb
  %i.ty = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.77) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gh:                                            ; preds = %bb.gb
  %i.tz = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.78) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gi:                                            ; preds = %bb.gb
  %i.ua = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.79) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gj:                                            ; preds = %bb.gb
  %i.ub = zext i32 %i.tt to i64
  %i.uc = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.80, i64 noundef %i.ub) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gk:                                            ; preds = %bb.df
  %i.ud = load i32, ptr %2, align 8               ; 3 uses
  %i.ue = icmp ult i32 %i.ud, 41
  br i1 %i.ue, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.uf = load ptr, ptr %i.e, align 8
  %i.ug = zext nneg i32 %i.ud to i64
  %i.uh = getelementptr i8, ptr %i.uf, i64 %i.ug
  %i.ui = add nuw nsw i32 %i.ud, 8
  store i32 %i.ui, ptr %2, align 8
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gk
  %i.uj = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.uk = getelementptr i8, ptr %i.uj, i64 8
  store ptr %i.uk, ptr %i.d, align 8
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.ul = phi ptr [ %i.uh, %bb.gl ], [ %i.uj, %bb.gm ]
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.um, label %bb.gu [
    i32 -1, label %bb.go
    i32 0, label %bb.gp
    i32 1, label %bb.gq
    i32 2, label %bb.gr
    i32 3, label %bb.gs
    i32 4, label %bb.gt
  ]

bb.go:                                            ; preds = %bb.gn
  %i.un = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.81) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gp:                                            ; preds = %bb.gn
  %i.uo = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.82) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gq:                                            ; preds = %bb.gn
  %i.up = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.83) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gr:                                            ; preds = %bb.gn
  %i.uq = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.84) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gs:                                            ; preds = %bb.gn
  %i.ur = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.85) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gt:                                            ; preds = %bb.gn
  %i.us = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.86) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gu:                                            ; preds = %bb.gn
  %i.ut = sext i32 %i.um to i64
  %i.uu = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.ut) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.gv:                                            ; preds = %bb.df
  %i.uv = load i32, ptr %2, align 8               ; 3 uses
  %i.uw = icmp ult i32 %i.uv, 41
  br i1 %i.uw, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.ux = load ptr, ptr %i.e, align 8
  %i.uy = zext nneg i32 %i.uv to i64
  %i.uz = getelementptr i8, ptr %i.ux, i64 %i.uy
  %i.va = add nuw nsw i32 %i.uv, 8
  store i32 %i.va, ptr %2, align 8
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gv
  %i.vb = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.vc = getelementptr i8, ptr %i.vb, i64 8
  store ptr %i.vc, ptr %i.d, align 8
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.vd = phi ptr [ %i.uz, %bb.gw ], [ %i.vb, %bb.gx ]
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !10 ; 7 uses
  %i.vf = and i32 %i.ve, 1
  %.not1620 = icmp eq i32 %i.vf, 0
  br i1 %.not1620, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.vg = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.11445 = phi i8 [ 1, %bb.gz ], [ 0, %bb.gy ]   ; 2 uses
  %i.vh = and i32 %i.ve, 2
  %.not1621 = icmp eq i32 %i.vh, 0
  br i1 %.not1621, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.vi = trunc nuw i8 %.11445 to i1
  %i.vj = select i1 %i.vi, ptr @.str.89, ptr @.str.2
  %i.vk = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.vj) #10 ; 0 uses
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.21446 = phi i8 [ 1, %bb.hb ], [ %.11445, %bb.ha ] ; 2 uses
  %i.vl = and i32 %i.ve, 4
  %.not1622 = icmp eq i32 %i.vl, 0
  br i1 %.not1622, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.vm = trunc nuw i8 %.21446 to i1
  %i.vn = select i1 %i.vm, ptr @.str.89, ptr @.str.2
  %i.vo = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.vn) #10 ; 0 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.31447 = phi i8 [ 1, %bb.hd ], [ %.21446, %bb.hc ] ; 2 uses
  %i.vp = and i32 %i.ve, 8
  %.not1623 = icmp eq i32 %i.vp, 0
  br i1 %.not1623, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.vq = trunc nuw i8 %.31447 to i1
  %i.vr = select i1 %i.vq, ptr @.str.89, ptr @.str.2
  %i.vs = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.vr) #10 ; 0 uses
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.41448 = phi i8 [ 1, %bb.hf ], [ %.31447, %bb.he ] ; 2 uses
  %i.vt = and i32 %i.ve, 16
  %.not1624 = icmp eq i32 %i.vt, 0
  br i1 %.not1624, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %4 = and i32 %i.ve, 32
  %.not1625 = icmp eq i32 %4, 0
  %5 = trunc i8 %.41448 to i1                     ; 2 uses
  br i1 %.not1625, label %bb.hj, label %.thread

bb.hi:                                            ; preds = %bb.hg
  %6 = trunc nuw i8 %.41448 to i1
  %7 = select i1 %6, ptr @.str.89, ptr @.str.2
  %8 = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef nonnull %7) #10 ; 0 uses
  %i.vu = and i32 %i.ve, 32
  %.not1625.a = icmp eq i32 %i.vu, 0
  br i1 %.not1625.a, label %H5_trace_args_close_degree.exit1654, label %.thread.thread

.thread:                                          ; preds = %bb.hh
  br i1 %5, label %.thread.thread, label %.thread.a

.thread.thread:                                   ; preds = %bb.hi, %.thread
  br label %.thread.a

.thread.a:                                        ; preds = %.thread, %.thread.thread
  %9 = phi ptr [ @.str.89, %.thread.thread ], [ @.str.2, %.thread ]
  %i.vv = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef nonnull %9) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.hj:                                            ; preds = %bb.hh
  br i1 %5, label %H5_trace_args_close_degree.exit1654, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.vw = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.95) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.hl:                                            ; preds = %bb.df
  %i.vx = load i32, ptr %2, align 8               ; 3 uses
  %i.vy = icmp ult i32 %i.vx, 41
  br i1 %i.vy, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.vz = load ptr, ptr %i.e, align 8
  %i.wa = zext nneg i32 %i.vx to i64
  %i.wb = getelementptr i8, ptr %i.vz, i64 %i.wa
  %i.wc = add nuw nsw i32 %i.vx, 8
  store i32 %i.wc, ptr %2, align 8
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hl
  %i.wd = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.we = getelementptr i8, ptr %i.wd, i64 8
  store ptr %i.we, ptr %i.d, align 8
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.wf = phi ptr [ %i.wb, %bb.hm ], [ %i.wd, %bb.hn ]
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.wg, label %bb.hs [
    i32 0, label %bb.hp
    i32 1, label %bb.hq
    i32 2, label %bb.hr
  ]

bb.hp:                                            ; preds = %bb.ho
  %i.wh = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.96) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.hq:                                            ; preds = %bb.ho
  %i.wi = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.97) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.hr:                                            ; preds = %bb.ho
  %i.wj = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.98) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.hs:                                            ; preds = %bb.ho
  %i.wk = zext i32 %i.wg to i64
  %i.wl = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.wk) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ht:                                            ; preds = %bb.df
  %i.wm = load i32, ptr %2, align 8               ; 3 uses
  %i.wn = icmp ult i32 %i.wm, 41
  br i1 %i.wn, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.wo = load ptr, ptr %i.e, align 8
  %i.wp = zext nneg i32 %i.wm to i64
  %i.wq = getelementptr i8, ptr %i.wo, i64 %i.wp
  %i.wr = add nuw nsw i32 %i.wm, 8
  store i32 %i.wr, ptr %2, align 8
  br label %bb.hw

bb.hv:                                            ; preds = %bb.ht
  %i.ws = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.wt = getelementptr i8, ptr %i.ws, i64 8
  store ptr %i.wt, ptr %i.d, align 8
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.wu = phi ptr [ %i.wq, %bb.hu ], [ %i.ws, %bb.hv ]
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !32
  %i.ww = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.wv) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.hx:                                            ; preds = %bb.df
  %i.wx = load i32, ptr %2, align 8               ; 3 uses
  %i.wy = icmp ult i32 %i.wx, 41
  br i1 %i.wy, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.wz = load ptr, ptr %i.e, align 8
  %i.xa = zext nneg i32 %i.wx to i64
  %i.xb = getelementptr i8, ptr %i.wz, i64 %i.xa
  %i.xc = add nuw nsw i32 %i.wx, 8
  store i32 %i.xc, ptr %2, align 8
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  %i.xd = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.xe = getelementptr i8, ptr %i.xd, i64 8
  store ptr %i.xe, ptr %i.d, align 8
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.xf = phi ptr [ %i.xb, %bb.hy ], [ %i.xd, %bb.hz ]
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.xg, label %bb.if [
    i32 0, label %bb.ib
    i32 1, label %bb.ic
    i32 2, label %bb.id
    i32 -1, label %bb.ie
  ]

bb.ib:                                            ; preds = %bb.ia
  %i.xh = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.99) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ic:                                            ; preds = %bb.ia
  %i.xi = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.100) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.id:                                            ; preds = %bb.ia
  %i.xj = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.101) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ie:                                            ; preds = %bb.ia
  %i.xk = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.102) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.if:                                            ; preds = %bb.ia
  %i.xl = sext i32 %i.xg to i64
  %i.xm = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.xl) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ig:                                            ; preds = %bb.df
  %i.xn = load i32, ptr %2, align 8               ; 3 uses
  %i.xo = icmp ult i32 %i.xn, 41
  br i1 %i.xo, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.xp = load ptr, ptr %i.e, align 8
  %i.xq = zext nneg i32 %i.xn to i64
  %i.xr = getelementptr i8, ptr %i.xp, i64 %i.xq
  %i.xs = add nuw nsw i32 %i.xn, 8
  store i32 %i.xs, ptr %2, align 8
  br label %bb.ij

bb.ii:                                            ; preds = %bb.ig
  %i.xt = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 8
  store ptr %i.xu, ptr %i.d, align 8
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.xv = phi ptr [ %i.xr, %bb.ih ], [ %i.xt, %bb.ii ]
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !32
  %i.xx = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.xw) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ik:                                            ; preds = %bb.df
  %i.xy = load i32, ptr %2, align 8               ; 3 uses
  %i.xz = icmp ult i32 %i.xy, 41
  br i1 %i.xz, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.ya = load ptr, ptr %i.e, align 8
  %i.yb = zext nneg i32 %i.xy to i64
  %i.yc = getelementptr i8, ptr %i.ya, i64 %i.yb
  %i.yd = add nuw nsw i32 %i.xy, 8
  store i32 %i.yd, ptr %2, align 8
  br label %bb.in

bb.im:                                            ; preds = %bb.ik
  %i.ye = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.yf = getelementptr i8, ptr %i.ye, i64 8
  store ptr %i.yf, ptr %i.d, align 8
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.yg = phi ptr [ %i.yc, %bb.il ], [ %i.ye, %bb.im ]
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.yh, label %bb.iq [
    i32 0, label %bb.io
    i32 1, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.yi = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.103) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ip:                                            ; preds = %bb.in
  %i.yj = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.104) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.iq:                                            ; preds = %bb.in
  %i.yk = zext i32 %i.yh to i64
  %i.yl = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.yk) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.ir:                                            ; preds = %bb.df
  %i.ym = load i32, ptr %2, align 8               ; 3 uses
  %i.yn = icmp ult i32 %i.ym, 41
  br i1 %i.yn, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.yo = load ptr, ptr %i.e, align 8
  %i.yp = zext nneg i32 %i.ym to i64
  %i.yq = getelementptr i8, ptr %i.yo, i64 %i.yp
  %i.yr = add nuw nsw i32 %i.ym, 8
end_hunk_0
begin_hunk_1_@H5_trace_args:.preheader1658
  br label %bb.avx

bb.avx:                                           ; preds = %bb.avw, %bb.avv
  %i.cwd = phi ptr [ %i.cvz, %bb.avv ], [ %i.cwb, %bb.avw ]
  %i.cwe = load ptr, ptr %i.cwd, align 8, !tbaa !73
  %i.cwf = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.cwe) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.avy:                                           ; preds = %bb.avl
  %i.cwg = load i32, ptr %2, align 8              ; 3 uses
  %i.cwh = icmp ult i32 %i.cwg, 41
  br i1 %i.cwh, label %bb.avz, label %bb.awa

bb.avz:                                           ; preds = %bb.avy
  %i.cwi = load ptr, ptr %i.e, align 8
  %i.cwj = zext nneg i32 %i.cwg to i64
  %i.cwk = getelementptr i8, ptr %i.cwi, i64 %i.cwj
  %i.cwl = add nuw nsw i32 %i.cwg, 8
  store i32 %i.cwl, ptr %2, align 8
  br label %bb.awb

bb.awa:                                           ; preds = %bb.avy
  %i.cwm = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cwn = getelementptr i8, ptr %i.cwm, i64 8
  store ptr %i.cwn, ptr %i.d, align 8
  br label %bb.awb

bb.awb:                                           ; preds = %bb.awa, %bb.avz
  %i.cwo = phi ptr [ %i.cwk, %bb.avz ], [ %i.cwm, %bb.awa ]
  %i.cwp = load i32, ptr %i.cwo, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.cwp, label %bb.awe [
    i32 0, label %bb.awc
    i32 1, label %bb.awd
  ]

bb.awc:                                           ; preds = %bb.awb
  %i.cwq = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.520) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awd:                                           ; preds = %bb.awb
  %i.cwr = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.521) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awe:                                           ; preds = %bb.awb
  %i.cws = sext i32 %i.cwp to i64
  %i.cwt = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.cws) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awf:                                           ; preds = %bb.avl
  %i.cwu = load i32, ptr %2, align 8              ; 3 uses
  %i.cwv = icmp ult i32 %i.cwu, 41
  br i1 %i.cwv, label %bb.awg, label %bb.awh

bb.awg:                                           ; preds = %bb.awf
  %i.cww = load ptr, ptr %i.e, align 8
  %i.cwx = zext nneg i32 %i.cwu to i64
  %i.cwy = getelementptr i8, ptr %i.cww, i64 %i.cwx
  %i.cwz = add nuw nsw i32 %i.cwu, 8
  store i32 %i.cwz, ptr %2, align 8
  br label %bb.awi

bb.awh:                                           ; preds = %bb.awf
  %i.cxa = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cxb = getelementptr i8, ptr %i.cxa, i64 8
  store ptr %i.cxb, ptr %i.d, align 8
  br label %bb.awi

bb.awi:                                           ; preds = %bb.awh, %bb.awg
  %i.cxc = phi ptr [ %i.cwy, %bb.awg ], [ %i.cxa, %bb.awh ]
  %i.cxd = load i32, ptr %i.cxc, align 4, !tbaa !10 ; 2 uses
  switch i32 %i.cxd, label %bb.awq [
    i32 0, label %bb.awj
    i32 1, label %bb.awk
    i32 2, label %bb.awl
    i32 3, label %bb.awm
    i32 4, label %bb.awn
    i32 5, label %bb.awo
    i32 6, label %bb.awp
  ]

bb.awj:                                           ; preds = %bb.awi
  %i.cxe = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.522) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awk:                                           ; preds = %bb.awi
  %i.cxf = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.523) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awl:                                           ; preds = %bb.awi
  %i.cxg = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.524) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awm:                                           ; preds = %bb.awi
  %i.cxh = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.525) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awn:                                           ; preds = %bb.awi
  %i.cxi = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.526) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awo:                                           ; preds = %bb.awi
  %i.cxj = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.527) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awp:                                           ; preds = %bb.awi
  %i.cxk = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.528) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awq:                                           ; preds = %bb.awi
  %i.cxl = sext i32 %i.cxd to i64
  %i.cxm = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.cxl) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awr:                                           ; preds = %bb.avl
  %i.cxn = load i32, ptr %2, align 8              ; 3 uses
  %i.cxo = icmp ult i32 %i.cxn, 41
  br i1 %i.cxo, label %bb.aws, label %bb.awt

bb.aws:                                           ; preds = %bb.awr
  %i.cxp = load ptr, ptr %i.e, align 8
  %i.cxq = zext nneg i32 %i.cxn to i64
  %i.cxr = getelementptr i8, ptr %i.cxp, i64 %i.cxq
  %i.cxs = add nuw nsw i32 %i.cxn, 8
  store i32 %i.cxs, ptr %2, align 8
  br label %bb.awu

bb.awt:                                           ; preds = %bb.awr
  %i.cxt = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cxu = getelementptr i8, ptr %i.cxt, i64 8
  store ptr %i.cxu, ptr %i.d, align 8
  br label %bb.awu

bb.awu:                                           ; preds = %bb.awt, %bb.aws
  %i.cxv = phi ptr [ %i.cxr, %bb.aws ], [ %i.cxt, %bb.awt ]
  %i.cxw = load ptr, ptr %i.cxv, align 8, !tbaa !32
  %i.cxx = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.cxw) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.awv:                                           ; preds = %bb.avl
  %i.cxy = load i32, ptr %2, align 8              ; 3 uses
  %i.cxz = icmp ult i32 %i.cxy, 41
  br i1 %i.cxz, label %bb.aww, label %bb.awx

bb.aww:                                           ; preds = %bb.awv
  %i.cya = load ptr, ptr %i.e, align 8
  %i.cyb = zext nneg i32 %i.cxy to i64
  %i.cyc = getelementptr i8, ptr %i.cya, i64 %i.cyb
  %i.cyd = add nuw nsw i32 %i.cxy, 8
  store i32 %i.cyd, ptr %2, align 8
  br label %bb.awy

bb.awx:                                           ; preds = %bb.awv
  %i.cye = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.cyf = getelementptr i8, ptr %i.cye, i64 8
  store ptr %i.cyf, ptr %i.d, align 8
  br label %bb.awy

bb.awy:                                           ; preds = %bb.awx, %bb.aww
  %i.cyg = phi ptr [ %i.cyc, %bb.aww ], [ %i.cye, %bb.awx ]
  %i.cyh = load i64, ptr %i.cyg, align 8, !tbaa !28 ; 2 uses
  %i.cyi = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.529, i64 noundef %i.cyh) #10 ; 0 uses
  %i.cyj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.cyh, ptr %i.cyj, align 8, !tbaa !28
  br label %H5_trace_args_close_degree.exit1654

bb.awz:                                           ; preds = %bb.avl
  %i.cyk = sext i8 %i.cvf to i32
  %i.cyl = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.515, i32 noundef %i.cyk) #10 ; 0 uses
  br label %.loopexit1659

bb.axa:                                           ; preds = %bb.bk
  %i.cym = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.530) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.axb:                                           ; preds = %bb.bk
  %i.cyn = call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.531) #10 ; 0 uses
  br label %H5_trace_args_close_degree.exit1654

bb.axc:                                           ; preds = %bb.bk
  %i.cyo = sext i8 %i.hg to i32                   ; 2 uses
  %i.cyp = tail call ptr @__ctype_b_loc() #12
  %i.cyq = load ptr, ptr %i.cyp, align 8, !tbaa !75
  %i.cyr = sext i8 %i.hg to i64
  %i.cys = getelementptr inbounds [2 x i8], ptr %i.cyq, i64 %i.cyr
  %i.cyt = load i16, ptr %i.cys, align 2, !tbaa !77
  %i.cyu = and i16 %i.cyt, 256
  %.not1627 = icmp eq i16 %i.cyu, 0
  br i1 %.not1627, label %bb.axe, label %bb.axd

bb.axd:                                           ; preds = %bb.axc
  %i.cyv = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.cyw = load i8, ptr %i.cyv, align 1, !tbaa !29
  %i.cyx = sext i8 %i.cyw to i32
  %i.cyy = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.532, i32 noundef %i.cyo, i32 noundef %i.cyx) #10 ; 0 uses
  br label %.loopexit1659

bb.axe:                                           ; preds = %bb.axc
  %i.cyz = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.533, i32 noundef %i.cyo) #10 ; 0 uses
  br label %.loopexit1659

H5_trace_args_close_degree.exit1654:              ; preds = %bb.bf, %bb.am, %bb.ac, %bb.z, %bb.hi, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %.thread.a, %bb.awj, %bb.awl, %bb.awn, %bb.awp, %bb.awq, %bb.awo, %bb.awm, %bb.awk, %bb.awc, %bb.awe, %bb.awd, %bb.avq, %bb.avr, %bb.avs, %bb.avt, %bb.aup, %bb.auq, %bb.aur, %bb.aus, %bb.aut, %bb.auu, %bb.auv, %bb.aue, %bb.auf, %bb.aug, %bb.asy, %bb.asz, %bb.ata, %bb.atb, %bb.atc, %bb.atd, %bb.ate, %bb.atf, %bb.atg, %bb.ath, %bb.ati, %bb.atj, %bb.atk, %bb.atl, %bb.atm, %bb.atn, %bb.ato, %bb.atp, %bb.atq, %bb.atr, %bb.ats, %bb.att, %bb.atu, %bb.atv, %bb.atw, %bb.atx, %bb.aty, %bb.atz, %bb.asf, %bb.asg, %bb.ash, %bb.asi, %bb.asj, %bb.ask, %bb.asl, %bb.asm, %bb.asn, %bb.aso, %bb.asp, %bb.arn, %bb.aro, %bb.arp, %bb.arq, %bb.arr, %bb.ars, %bb.art, %bb.aru, %bb.arv, %bb.arw, %bb.arx, %bb.ary, %bb.arz, %bb.asa, %bb.arh, %bb.ari, %bb.ara, %bb.arb, %bb.arc, %bb.aqp, %bb.aqq, %bb.aqr, %bb.aqs, %bb.aqt, %bb.aqu, %bb.aqv, %bb.aqc, %bb.aqd, %bb.aqe, %bb.aqf, %bb.aqg, %bb.apu, %bb.apv, %bb.apw, %bb.apx, %bb.apn, %bb.apo, %bb.app, %bb.apf, %bb.apg, %bb.aph, %bb.api, %bb.aox, %bb.aoy, %bb.aoz, %bb.apa, %bb.aoo, %bb.aop, %bb.aoq, %bb.aor, %bb.aos, %bb.aoh, %bb.aoi, %bb.aoj, %bb.anx, %bb.any, %bb.anz, %bb.aoa, %bb.aob, %bb.aoc, %bb.ank, %bb.anl, %bb.anm, %bb.ann, %bb.ano, %bb.anp, %bb.anq, %bb.anr, %bb.ans, %bb.and, %bb.ane, %bb.anf, %bb.amv, %bb.amw, %bb.amx, %bb.amy, %bb.amn, %bb.amo, %bb.amp, %bb.amq, %bb.amh, %bb.ami, %bb.alw, %bb.alx, %bb.aly, %bb.alz, %bb.ama, %bb.amb, %bb.amc, %bb.alo, %bb.alp, %bb.alq, %bb.alr, %bb.ale, %bb.alf, %bb.alg, %bb.alh, %bb.ali, %bb.alj, %bb.akp, %bb.akq, %bb.akr, %bb.aks, %bb.akt, %bb.aku, %bb.akv, %bb.ajt, %bb.aju, %bb.ajv, %bb.ajw, %bb.ajx, %bb.ajy, %bb.aja, %bb.ajb, %bb.ajc, %bb.ajd, %bb.aje, %bb.ajf, %bb.ajg, %bb.ajh, %bb.aji, %bb.ajj, %bb.ajk, %bb.ajl, %bb.ajm, %bb.ajn, %bb.ajo, %bb.air, %bb.ais, %bb.ait, %bb.aiu, %bb.aiv, %bb.aih, %bb.aii, %bb.aij, %bb.aik, %bb.ail, %bb.aim, %bb.ahw, %bb.ahx, %bb.ahy, %bb.ahz, %bb.aia, %bb.aib, %bb.aic, %bb.ahn, %bb.aho, %bb.ahp, %bb.ahq, %bb.ahr, %bb.ahb, %bb.ahc, %bb.ahd, %bb.ahe, %bb.agt, %bb.agu, %bb.agv, %bb.agw, %bb.agc, %bb.agf, %bb.age, %bb.afq, %bb.afr, %bb.afs, %bb.aft, %bb.afu, %bb.afv, %bb.afw, %bb.afb, %bb.afc, %bb.afd, %bb.afe, %bb.aff, %bb.afg, %bb.afh, %bb.afi, %bb.afj, %bb.afk, %bb.afl, %bb.aes, %bb.aet, %bb.aeu, %bb.aev, %bb.aew, %bb.aee, %bb.aef, %bb.aeg, %bb.aeh, %bb.aei, %bb.aej, %bb.aek, %bb.ael, %bb.abx, %bb.aby, %bb.abk, %bb.abl, %bb.abm, %bb.abn, %bb.abo, %bb.abp, %bb.abq, %bb.aaf, %bb.aag, %bb.aah, %bb.aai, %bb.aaj, %bb.aak, %bb.aal, %bb.aam, %bb.aan, %bb.aao, %bb.zh, %bb.zi, %bb.zj, %bb.zk, %bb.zl, %bb.zm, %bb.xr, %bb.xs, %bb.xt, %bb.xu, %bb.xv, %bb.xw, %bb.xx, %bb.xy, %bb.xz, %bb.ya, %bb.yb, %bb.yc, %bb.yd, %bb.ye, %bb.yf, %bb.yg, %bb.yh, %bb.yi, %bb.yj, %bb.yk, %bb.wv, %bb.ww, %bb.wx, %bb.wy, %bb.wz, %bb.xa, %bb.wi, %bb.wj, %bb.wk, %bb.wl, %bb.wm, %bb.qd, %bb.qh, %bb.qi, %bb.vh, %bb.vi, %bb.vj, %bb.vk, %bb.vl, %bb.vm, %bb.vn, %bb.vo, %bb.vp, %bb.vq, %bb.vr, %bb.vs, %bb.vt, %bb.vu, %bb.qm, %bb.qq, %bb.qu, %bb.qy, %bb.rc, %bb.rg, %bb.rk, %bb.ro, %bb.rs, %bb.rw, %bb.sa, %bb.se, %bb.si, %bb.sm, %bb.sq, %bb.su, %bb.sy, %bb.tc, %bb.tg, %bb.tk, %bb.to, %bb.ts, %bb.tw, %bb.ua, %bb.ue, %bb.ui, %bb.um, %bb.uq, %bb.uu, %bb.uy, %bb.vc, %bb.vd, %bb.va, %bb.uw, %bb.us, %bb.uo, %bb.uk, %bb.ug, %bb.uc, %bb.ty, %bb.tu, %bb.tq, %bb.tm, %bb.ti, %bb.te, %bb.ta, %bb.sw, %bb.ss, %bb.so, %bb.sk, %bb.sg, %bb.sc, %bb.ry, %bb.ru, %bb.rq, %bb.rm, %bb.ri, %bb.re, %bb.ra, %bb.qw, %bb.qs, %bb.qo, %bb.qk, %bb.qf, %bb.vf, %bb.vg, %bb.ve, %bb.pn, %bb.po, %bb.ow, %bb.ox, %bb.oy, %bb.oz, %bb.pa, %bb.pb, %bb.pc, %bb.pd, %bb.ny, %bb.nz, %bb.oa, %bb.ob, %bb.oc, %bb.od, %bb.oe, %bb.no, %bb.np, %bb.nq, %bb.nr, %bb.ns, %bb.nt, %bb.nh, %bb.ni, %bb.nj, %bb.mu, %bb.mv, %bb.mw, %bb.mx, %bb.my, %bb.mz, %bb.na, %bb.nb, %bb.nc, %bb.mg, %bb.mh, %bb.mi, %bb.mj, %bb.mk, %bb.li, %bb.lj, %bb.lk, %bb.kz, %bb.la, %bb.lb, %bb.lc, %bb.ld, %bb.kk, %bb.kl, %bb.km, %bb.jr, %bb.js, %bb.jd, %bb.je, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jj, %bb.jk, %bb.jl, %bb.iv, %bb.iw, %bb.ix, %bb.iy, %bb.io, %bb.ip, %bb.iq, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.if, %bb.hp, %bb.hq, %bb.hr, %bb.hs, %bb.hj, %bb.hk, %bb.go, %bb.gp, %bb.gq, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %bb.gc, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fw, %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.en, %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.ef, %bb.eg, %bb.eh, %bb.ei, %bb.dy, %bb.dz, %bb.ea, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.bp, %bb.bq, %bb.bi, %._crit_edge1773, %bb.r, %bb.q, %bb.aa, %._crit_edge1769, %._crit_edge1761, %bb.ah, %bb.ag, %bb.ad, %bb.ae, %._crit_edge1765, %bb.al, %bb.ak, %._crit_edge1753, %bb.ar, %bb.aq, %bb.an, %bb.ao, %._crit_edge1757, %._crit_edge1749, %bb.au, %bb.at, %._crit_edge1745, %bb.bd, %bb.bc, %bb.bg, %._crit_edge, %bb.bj, %bb.avx, %bb.awu, %bb.awy, %bb.avf, %bb.avg, %bb.akz, %bb.aqk, %bb.ast, %bb.auk, %bb.auz, %bb.ake, %bb.aki, %bb.agk, %bb.ago, %bb.ahi, %bb.ady, %bb.acd, %bb.ach, %bb.acl, %bb.acp, %bb.act, %bb.acx, %bb.adb, %bb.adf, %bb.adj, %bb.adn, %bb.adr, %bb.aax, %bb.abb, %bb.abf, %bb.zw, %bb.aaa, %bb.yy, %bb.zc, %bb.zq, %bb.vz, %bb.wd, %bb.wq, %bb.xe, %bb.xi, %bb.xm, %bb.yo, %bb.pt, %bb.px, %bb.ok, %bb.or, %bb.ph, %H5_trace_args_close_degree.exit, %bb.mo, %bb.mp, %bb.jx, %bb.kb, %bb.kf, %bb.kq, %bb.ku, %bb.dt, %bb.fe, %bb.fx, %bb.hw, %bb.ij, %bb.cv, %bb.cz, %bb.bs, %bb.bw, %bb.ca, %bb.axb, %bb.axa, %bb.avk, %bb.aas, %bb.yt, %bb.de, %bb.cf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cza = tail call ptr @__ctype_b_loc() #12
  %i.czb = load ptr, ptr %i.cza, align 8, !tbaa !75
  %i.czc = load i8, ptr %.3, align 1, !tbaa !29
  %i.czd = sext i8 %i.czc to i64
  %i.cze = getelementptr inbounds [2 x i8], ptr %i.czb, i64 %i.czd
  %i.czf = load i16, ptr %i.cze, align 2, !tbaa !77
  %i.czg = and i16 %i.czf, 256
  %.not1642 = icmp eq i16 %i.czg, 0
  %i.czh = select i1 %.not1642, i64 1, i64 2
  %i.czi = getelementptr inbounds nuw i8, ptr %.3, i64 %i.czh ; 2 uses
  %i.czj = load i8, ptr %i.czi, align 1, !tbaa !29 ; 2 uses
  %.not = icmp eq i8 %i.czj, 0
  br i1 %.not, label %.loopexit1659, label %.preheader, !llvm.loop !26

.loopexit1659:                                    ; preds = %H5_trace_args_close_degree.exit1654, %bb.zs, %.preheader1658, %bb.cb, %bb.da, %bb.jm, %bb.ll, %bb.of, %bb.pi, %bb.py, %bb.yp, %bb.zr, %bb.abr, %bb.ads, %bb.adu, %bb.adz, %bb.aem, %bb.afx, %bb.ajz, %bb.akj, %bb.ava, %bb.awz, %bb.axe, %bb.axd
  %.01434 = phi i32 [ -1, %bb.da ], [ -1, %bb.axd ], [ -1, %bb.axe ], [ -1, %bb.cb ], [ -1, %bb.awz ], [ -1, %bb.ava ], [ -1, %bb.akj ], [ -1, %bb.ajz ], [ -1, %bb.afx ], [ -1, %bb.aem ], [ -1, %bb.adz ], [ -1, %bb.adu ], [ -1, %bb.ads ], [ -1, %bb.abr ], [ -1, %bb.zr ], [ -1, %bb.yp ], [ -1, %bb.py ], [ -1, %bb.pi ], [ -1, %bb.of ], [ -1, %bb.ll ], [ -1, %bb.jm ], [ 0, %.preheader1658 ], [ 0, %H5_trace_args_close_degree.exit1654 ], [ -1, %bb.zs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.01434
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @H5RS_asprintf_cat(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @H5RS_acat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @H5_trace_args_cset(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 -1, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 6, label %bb.e
    i32 7, label %bb.e
    i32 8, label %bb.e
    i32 9, label %bb.e
    i32 10, label %bb.e
    i32 11, label %bb.e
    i32 12, label %bb.e
    i32 13, label %bb.e
    i32 14, label %bb.e
    i32 15, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.545) #10 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.546) #10 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.c = tail call i32 @H5RS_acat(ptr noundef %0, ptr noundef nonnull @.str.547) #10 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = tail call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.548, i64 noundef %i.d) #10 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.f = sext i32 %1 to i64
  %i.g = tail call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.f) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare ptr @H5I_object(i64 noundef) local_unnamed_addr #4

declare i32 @H5S_get_simple_extent_type(ptr noundef) local_unnamed_addr #4

declare i32 @H5S_get_simple_extent_ndims(ptr noundef) local_unnamed_addr #4

declare noalias ptr @H5P_get_class_name(ptr noundef) local_unnamed_addr #4

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define double @H5_trace(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %4 = alloca %struct.H5_timer_t, align 8         ; 8 uses
  %5 = alloca %struct.H5_timevals_t, align 8      ; 10 uses
  %6 = alloca %struct.H5_timevals_t, align 8      ; 8 uses
  %i.a = alloca [320 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.b = load ptr, ptr @H5_debug_g, align 8, !tbaa !83 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !tbaa !84, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @H5_timer_init(ptr noundef nonnull %4) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 8), align 8, !tbaa !85, !range !14, !noundef !15
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not37 = icmp eq ptr %0, null
  %i.h = load i32, ptr @H5_trace.current_depth, align 4, !tbaa !10 ; 4 uses
  br i1 %.not37, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr @H5_trace.current_depth, align 4, !tbaa !10
  br label %bb.ad

bb.h:                                             ; preds = %bb.e
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = add nuw nsw i32 %i.h, 1
  store i32 %i.l, ptr @H5_trace.current_depth, align 4, !tbaa !10
  br label %bb.ad

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.d
  %.b = load i1, ptr @H5_trace.is_first_invocation, align 1
  %not..b = xor i1 %.b, true
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !range !14 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = select i1 %not..b, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i1 true, ptr @H5_trace.is_first_invocation, align 1
  %i.o = call i32 @H5_timer_init(ptr noundef nonnull @H5_trace.running_timer) #10 ; 0 uses
  %i.p = call i32 @H5_timer_start(ptr noundef nonnull @H5_trace.running_timer) #10 ; 0 uses
  %.pre.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.q = phi i8 [ %.pre.a, %bb.k ], [ %i.m, %bb.j ]
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.s = call i32 @H5_timer_start(ptr noundef nonnull %4) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.t = call ptr @H5RS_create(ptr noundef null) #10 ; 13 uses
  %i.u = icmp ne ptr %0, null                     ; 3 uses
  %i.v = load i32, ptr @H5_trace.current_depth, align 4, !tbaa !10 ; 3 uses
  br i1 %i.u, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr @H5_trace.current_depth, align 4, !tbaa !10
  %i.x = load i32, ptr @H5_trace.last_call_depth, align 4, !tbaa !10
  %.not38 = icmp sgt i32 %i.v, %i.x
  br i1 %.not38, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !tbaa !84, !range !14, !noundef !15
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.aa = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 %4, ptr noundef nonnull %5) #10 ; 0 uses
  %i.ab = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 @H5_trace.running_timer, ptr noundef nonnull %6) #10 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !87
  %i.ag = fsub double %i.ad, %i.af
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 320, ptr noundef nonnull @.str.534, double noundef %i.ag) #10 ; 0 uses
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #11
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %i.t, ptr noundef nonnull @.str.535, i32 noundef %i.aj, ptr noundef nonnull @.str.2) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.pre48 = load i32, ptr @H5_trace.current_depth, align 4, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.al = phi i32 [ %.pre48, %bb.q ], [ %i.w, %bb.p ] ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %bb.r, %.lr.ph43
  %.041 = phi i64 [ %i.ao, %.lr.ph43 ], [ 0, %bb.r ]
  %i.an = call i32 @H5RS_aputc(ptr noundef %i.t, i32 noundef 43) #10 ; 0 uses
  %i.ao = add nuw nsw i64 %.041, 1                ; 2 uses
  %i.ap = load i32, ptr @H5_trace.current_depth, align 4, !tbaa !10 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph43, label %._crit_edge44, !llvm.loop !78

._crit_edge44:                                    ; preds = %.lr.ph43, %bb.r
  %.lcssa = phi i32 [ %i.al, %bb.r ], [ %i.ap, %.lr.ph43 ]
  %i.as = shl nsw i32 %.lcssa, 1
  %i.at = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %i.t, ptr noundef nonnull @.str.536, i32 noundef %i.as, ptr noundef nonnull @.str.2, ptr noundef %1) #10 ; 0 uses
  br label %bb.y

bb.s:                                             ; preds = %bb.o
  %i.au = call i32 @H5RS_acat(ptr noundef %i.t, ptr noundef nonnull @.str.537) #10 ; 0 uses
  br label %bb.y

bb.t:                                             ; preds = %bb.n
  %i.av = load i32, ptr @H5_trace.last_call_depth, align 4, !tbaa !10
  %i.aw = icmp sgt i32 %i.v, %i.av
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ax = call i32 @H5RS_acat(ptr noundef %i.t, ptr noundef nonnull @.str.538) #10 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !tbaa !84, !range !14, !noundef !15
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ba = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 %4, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bb = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 @H5_trace.running_timer, ptr noundef nonnull %6) #10 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !87
  %i.bg = fsub double %i.bd, %i.bf
  %i.bh = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %i.t, ptr noundef nonnull @.str.539, double noundef %i.bg) #10 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bi = load i32, ptr @H5_trace.current_depth, align 4, !tbaa !10 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.x, %.lr.ph
  %.140 = phi i64 [ %i.bl, %.lr.ph ], [ 0, %bb.x ]
  %i.bk = call i32 @H5RS_aputc(ptr noundef %i.t, i32 noundef 43) #10 ; 0 uses
  %i.bl = add nuw nsw i64 %.140, 1                ; 2 uses
  %i.bm = load i32, ptr @H5_trace.current_depth, align 4, !tbaa !10 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph, %bb.x
  %.lcssa39 = phi i32 [ %i.bi, %bb.x ], [ %i.bm, %.lr.ph ]
  %i.bp = shl nsw i32 %.lcssa39, 1
  %i.bq = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %i.t, ptr noundef nonnull @.str.540, i32 noundef %i.bp, ptr noundef nonnull @.str.2, ptr noundef %1) #10 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge44, %bb.s, %._crit_edge
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.br = call i32 @H5_trace_args(ptr noundef %i.t, ptr noundef %2, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.bs = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !range !14
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond3 = select i1 %i.u, i1 %i.bt, i1 false
  br i1 %or.cond3, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y
  %i.bu = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 %4, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bv = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 @H5_trace.running_timer, ptr noundef nonnull %6) #10 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !87 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !87
  %i.ca = fsub double %i.bx, %i.bz
  %i.cb = load double, ptr %0, align 8, !tbaa !13
  %i.cc = fsub double %i.bx, %i.cb
  %i.cd = call i32 (ptr, ptr, ...) @H5RS_asprintf_cat(ptr noundef %i.t, ptr noundef nonnull @.str.541, double noundef %i.ca, double noundef %i.cc) #10 ; 0 uses
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  br i1 %i.u, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = load i32, ptr @H5_trace.current_depth, align 4, !tbaa !10 ; 2 uses
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr @H5_trace.current_depth, align 4, !tbaa !10
  store i32 %i.ce, ptr @H5_trace.last_call_depth, align 4, !tbaa !10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %.thread, %bb.aa
  %.str.543.sink = phi ptr [ @.str.543, %bb.aa ], [ @.str.542, %.thread ], [ @.str.542, %bb.z ]
  %i.cg = call i32 @H5RS_acat(ptr noundef %i.t, ptr noundef nonnull %.str.543.sink) #10 ; 0 uses
  %i.ch = call ptr @H5RS_get_str(ptr noundef %i.t) #10
  %i.ci = call i32 @fputs(ptr noundef %i.ch, ptr noundef nonnull %i.b) ; 0 uses
  %i.cj = call i32 @fflush(ptr noundef nonnull %i.b) ; 0 uses
  %i.ck = call i32 @H5RS_decr(ptr noundef %i.t) #10 ; 0 uses
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @H5_debug_g, i64 9), align 1, !tbaa !84, !range !14, !noundef !15
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load double, ptr %i.cn, align 8, !tbaa !87
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.a, %bb.ac, %bb.i, %bb.g
  %.032 = phi double [ 0.000000e+00, %bb.g ], [ %i.co, %bb.ac ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret double %.032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @H5_timer_init(ptr noundef) local_unnamed_addr #4

declare i32 @H5_timer_start(ptr noundef) local_unnamed_addr #4

declare ptr @H5RS_create(ptr noundef) local_unnamed_addr #4

declare i32 @H5_timer_get_times(ptr noundef byval(%struct.H5_timer_t) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @H5RS_aputc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

end_hunk_1
