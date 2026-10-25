Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/info_job?download=true
inline.NumInlined: 30
inline.NumDeleted: 16
begin_hunk_0_@scontrol_print_job:bb.a
  %.not581.i.i = icmp eq ptr %i.tm, null
  br i1 %.not581.i.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.163, ptr noundef nonnull %i.tm) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.tn = getelementptr inbounds nuw i8, ptr %.058120, i64 586
  %i.to = load i16, ptr %i.tn, align 2
  %i.tp = call ptr @job_oversubscribe_string(i16 noundef zeroext %i.to) #14
  %i.tq = getelementptr inbounds nuw i8, ptr %.058120, i64 304
  %i.tr = load i16, ptr %i.tq, align 8
  %i.ts = call ptr @job_exclusive_display_string(i16 noundef zeroext %i.tr) #14
  %i.tt = getelementptr inbounds nuw i8, ptr %.058120, i64 192
  %i.tu = load i16, ptr %i.tt, align 8
  %i.tv = zext i16 %i.tu to i32
  %i.tw = getelementptr inbounds nuw i8, ptr %.058120, i64 456
  %i.tx = load ptr, ptr %i.tw, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %.058120, i64 464
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %.058120, i64 528
  %i.ub = load ptr, ptr %i.ua, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.164, ptr noundef %i.tp, ptr noundef %i.ts, i32 noundef %i.tv, ptr noundef %i.tx, ptr noundef %i.tz, ptr noundef %i.ub) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %i.uc = getelementptr inbounds nuw i8, ptr %.058120, i64 152
  %i.ud = load ptr, ptr %i.uc, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.165, ptr noundef %i.ud) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %i.ue = getelementptr inbounds nuw i8, ptr %.058120, i64 872
  %i.uf = load ptr, ptr %i.ue, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.166, ptr noundef %i.uf) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %i.ug = getelementptr inbounds nuw i8, ptr %.058120, i64 1016
  %i.uh = load ptr, ptr %i.ug, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.167, ptr noundef %i.uh) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %i.ui = getelementptr inbounds nuw i8, ptr %.058120, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8            ; 2 uses
  %.not582.i.i = icmp eq ptr %i.uj, null
  br i1 %.not582.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.168, ptr noundef nonnull %i.uj) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.uk = getelementptr inbounds nuw i8, ptr %.058120, i64 896
  %i.ul = load ptr, ptr %i.uk, align 8            ; 2 uses
  %.not583.i.i = icmp eq ptr %i.ul, null
  br i1 %.not583.i.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.169, ptr noundef nonnull %i.ul) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.um = getelementptr inbounds nuw i8, ptr %.058120, i64 160
  %i.un = load ptr, ptr %i.um, align 8            ; 2 uses
  %.not584.i.i = icmp eq ptr %i.un, null
  br i1 %.not584.i.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.170, ptr noundef nonnull %i.un) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.uo = getelementptr inbounds nuw i8, ptr %.058120, i64 312
  %i.up = load ptr, ptr %i.uo, align 8            ; 2 uses
  %.not585.i.i = icmp eq ptr %i.up, null
  br i1 %.not585.i.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.171, ptr noundef nonnull %i.up) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.uq = load i16, ptr %i.gi, align 8
  %.not586.i.i = icmp eq i16 %i.uq, 0
  br i1 %.not586.i.i, label %.thread670.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @slurm_get_job_stderr(ptr noundef nonnull %i.h, i32 noundef 4096, ptr noundef nonnull %.058120) #14
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.172, ptr noundef nonnull %i.h) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %.pr.i.i = load i16, ptr %i.gi, align 8
  %.not587.i.i = icmp eq i16 %.pr.i.i, 0
  br i1 %.not587.i.i, label %.thread670.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @slurm_get_job_stdin(ptr noundef nonnull %i.h, i32 noundef 4096, ptr noundef nonnull %.058120) #14
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.173, ptr noundef nonnull %i.h) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %.pr669.i.i = load i16, ptr %i.gi, align 8
  %.not588.i.i = icmp eq i16 %.pr669.i.i, 0
  br i1 %.not588.i.i, label %.thread670.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @slurm_get_job_stdout(ptr noundef nonnull %i.h, i32 noundef 4096, ptr noundef nonnull %.058120) #14
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.174, ptr noundef nonnull %i.h) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %.thread670.i.i

.thread670.i.i:                                   ; preds = %bb.gv, %bb.gu, %bb.gt, %bb.gs
  %i.ur = getelementptr inbounds nuw i8, ptr %.058120, i64 864
  %i.us = load i16, ptr %i.ur, align 8            ; 2 uses
  %.not589.i.i = icmp eq i16 %i.us, 0
  br i1 %.not589.i.i, label %bb.hb, label %bb.gw

bb.gw:                                            ; preds = %.thread670.i.i
  %i.ut = zext i16 %i.us to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.175, i32 noundef %i.ut) #14
  %i.uu = load i64, ptr %i.iu, align 8            ; 2 uses
  %i.uv = and i64 %i.uu, 8796093022208
  %.not590.i.i = icmp eq i64 %i.uv, 0
  br i1 %.not590.i.i, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.176) #14
  %.pre734.i.i = load i64, ptr %i.iu, align 8
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.uw = phi i64 [ %.pre734.i.i, %bb.gx ], [ %i.uu, %bb.gw ]
  %i.ux = and i64 %i.uw, 17592186044416
  %.not591.i.i = icmp eq i64 %i.ux, 0
  br i1 %.not591.i.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.177) #14
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %.thread670.i.i
  %i.uy = getelementptr inbounds nuw i8, ptr %.058120, i64 712 ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 8
  %.not592.i.i = icmp eq i32 %i.uz, 0
  br i1 %.not592.i.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  %i.va = getelementptr inbounds nuw i8, ptr %.058120, i64 1000
  %i.vb = load i32, ptr %i.va, align 8
  %i.vc = zext i32 %i.vb to i64
  call void @secs2time_str(i64 noundef %i.vc, ptr noundef nonnull %i.o, i32 noundef 32) #14
  %i.vd = load i32, ptr %i.uy, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.178, i32 noundef %i.vd, ptr noundef nonnull %i.o) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.ve = getelementptr inbounds nuw i8, ptr %.058120, i64 120
  %i.vf = load ptr, ptr %i.ve, align 8            ; 2 uses
  %.not593.i.i = icmp eq ptr %i.vf, null
  br i1 %.not593.i.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.179, ptr noundef nonnull %i.vf) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.vg = getelementptr inbounds nuw i8, ptr %.058120, i64 128
  %i.vh = load ptr, ptr %i.vg, align 8            ; 2 uses
  %.not594.i.i = icmp eq ptr %i.vh, null
  br i1 %.not594.i.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.180, ptr noundef nonnull %i.vh) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.vi = getelementptr inbounds nuw i8, ptr %.058120, i64 220
  %i.vj = load i32, ptr %i.vi, align 4
  %i.vk = getelementptr inbounds nuw i8, ptr %.058120, i64 212
  %i.vl = load i32, ptr %i.vk, align 4
  %i.vm = getelementptr inbounds nuw i8, ptr %.058120, i64 216
  %i.vn = load i32, ptr %i.vm, align 8
  %i.vo = call i32 @cpu_freq_debug(ptr noundef null, ptr noundef null, ptr noundef nonnull %i.e, i32 noundef 128, i32 noundef %i.vj, i32 noundef %i.vl, i32 noundef %i.vn, i32 noundef -2) #14
  %.not595.i.i = icmp eq i32 %i.vo, 0
  br i1 %.not595.i.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.vp = load i64, ptr %i.iu, align 8            ; 2 uses
  %i.vq = and i64 %i.vp, 1099511627776
  %.not596.i.i = icmp eq i64 %i.vq, 0
  br i1 %.not596.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.181) #14
  %.pre735.i.i = load i64, ptr %i.iu, align 8
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.vr = phi i64 [ %i.vp, %bb.hj ], [ %.pre735.i.i, %bb.hk ] ; 2 uses
  %.2651.i.i = phi i8 [ 1, %bb.hj ], [ 0, %bb.hk ] ; 2 uses
  %i.vs = and i64 %i.vr, 524288
  %.not597.i.i = icmp eq i64 %i.vs, 0
  br i1 %.not597.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %6 = trunc nuw i8 %.2651.i.i to i1
  %i.vt = select i1 %6, ptr @.str.41, ptr @.str.74
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.vt, ptr noundef nonnull @.str.182) #14
  %.pre736.i.i = load i64, ptr %i.iu, align 8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.vu = phi i64 [ %i.vr, %bb.hl ], [ %.pre736.i.i, %bb.hm ] ; 2 uses
  %.3652.i.i = phi i8 [ %.2651.i.i, %bb.hl ], [ 0, %bb.hm ] ; 2 uses
  %i.vv = and i64 %i.vu, 16
  %.not598.i.i = icmp eq i64 %i.vv, 0
  br i1 %.not598.i.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.vw = trunc nuw i8 %.3652.i.i to i1
  %i.vx = select i1 %i.vw, ptr @.str.41, ptr @.str.74
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.vx, ptr noundef nonnull @.str.183) #14
  %.pre737.i.i = load i64, ptr %i.iu, align 8
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.vy = phi i64 [ %i.vu, %bb.hn ], [ %.pre737.i.i, %bb.ho ] ; 2 uses
  %.4.i.i = phi i8 [ %.3652.i.i, %bb.hn ], [ 0, %bb.ho ] ; 2 uses
  %i.vz = and i64 %i.vy, 549755813888
  %.not599.i.i = icmp eq i64 %i.vz, 0
  br i1 %.not599.i.i, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.wa = trunc nuw i8 %.4.i.i to i1
  %i.wb = select i1 %i.wa, ptr @.str.41, ptr @.str.74
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.wb, ptr noundef nonnull @.str.184) #14
  %.pre738.i.i = load i64, ptr %i.iu, align 8
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.wc = phi i64 [ %i.vy, %bb.hp ], [ %.pre738.i.i, %bb.hq ] ; 2 uses
  %.5.i.i = phi i8 [ %.4.i.i, %bb.hp ], [ 0, %bb.hq ] ; 2 uses
  %i.wd = and i64 %i.wc, 274877906944
  %.not600.i.i = icmp eq i64 %i.wd, 0
  br i1 %.not600.i.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.we = trunc nuw i8 %.5.i.i to i1
  %i.wf = select i1 %i.we, ptr @.str.41, ptr @.str.74
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.wf, ptr noundef nonnull @.str.185) #14
  %.pre739.i.i = load i64, ptr %i.iu, align 8
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.wg = phi i64 [ %i.wc, %bb.hr ], [ %.pre739.i.i, %bb.hs ] ; 2 uses
  %.6.i.i = phi i8 [ %.5.i.i, %bb.hr ], [ 0, %bb.hs ] ; 2 uses
  %i.wh = and i64 %i.wg, 1
  %.not601.i.i = icmp eq i64 %i.wh, 0
  br i1 %.not601.i.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.wi = trunc nuw i8 %.6.i.i to i1
  %i.wj = select i1 %i.wi, ptr @.str.41, ptr @.str.74
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.wj, ptr noundef nonnull @.str.186) #14
  %.pre740.i.i = load i64, ptr %i.iu, align 8
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.wk = phi i64 [ %i.wg, %bb.ht ], [ %.pre740.i.i, %bb.hu ] ; 2 uses
  %.7.i.i = phi i8 [ %.6.i.i, %bb.ht ], [ 0, %bb.hu ] ; 2 uses
  %i.wl = and i64 %i.wk, 2
  %.not602.i.i = icmp eq i64 %i.wl, 0
  br i1 %.not602.i.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.wm = trunc nuw i8 %.7.i.i to i1
  %i.wn = select i1 %i.wm, ptr @.str.41, ptr @.str.74
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.wn, ptr noundef nonnull @.str.187) #14
  %.pre741.i.i = load i64, ptr %i.iu, align 8
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.wo = phi i64 [ %i.wk, %bb.hv ], [ %.pre741.i.i, %bb.hw ] ; 2 uses
  %.8.i.i = phi i8 [ %.7.i.i, %bb.hv ], [ 0, %bb.hw ] ; 2 uses
  %i.wp = and i64 %i.wo, 256
  %.not603.i.i = icmp eq i64 %i.wp, 0
  br i1 %.not603.i.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.wq = trunc nuw i8 %.8.i.i to i1
  %i.wr = select i1 %i.wq, ptr @.str.41, ptr @.str.74
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.wr, ptr noundef nonnull @.str.188) #14
  %.pre742.i.i = load i64, ptr %i.iu, align 8
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.ws = phi i64 [ %i.wo, %bb.hx ], [ %.pre742.i.i, %bb.hy ]
  %.9.i.i = phi i8 [ %.8.i.i, %bb.hx ], [ 0, %bb.hy ]
  %i.wt = and i64 %i.ws, 35184372088832
  %.not604.i.i = icmp eq i64 %i.wt, 0
  %i.wu = trunc nuw i8 %.9.i.i to i1              ; 2 uses
  br i1 %.not604.i.i, label %bb.ia, label %.thread672.i.i

.thread672.i.i:                                   ; preds = %bb.hz
  %i.wv = select i1 %i.wu, ptr @.str.41, ptr @.str.74
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.wv, ptr noundef nonnull @.str.189) #14
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  br i1 %i.wu, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.thread672.i.i
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.ww = getelementptr inbounds nuw i8, ptr %.058120, i64 584
  %i.wx = load i16, ptr %i.ww, align 8            ; 2 uses
  %.not605.i.i = icmp eq i16 %i.wx, -2
  br i1 %.not605.i.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.wy = zext i16 %i.wx to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.190, i32 noundef %i.wy) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.wz = getelementptr inbounds nuw i8, ptr %.058120, i64 224
  %i.xa = load ptr, ptr %i.wz, align 8            ; 2 uses
  %.not606.i.i = icmp eq ptr %i.xa, null
  br i1 %.not606.i.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.191, ptr noundef nonnull %i.xa) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %i.xb = load ptr, ptr %i.sg, align 8            ; 2 uses
  %.not607.i.i = icmp eq ptr %i.xb, null
  br i1 %.not607.i.i, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.192, ptr noundef nonnull %i.xb) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.xc = getelementptr inbounds nuw i8, ptr %.058120, i64 920
  %i.xd = load ptr, ptr %i.xc, align 8            ; 2 uses
  %.not608.i.i = icmp eq ptr %i.xd, null
  br i1 %.not608.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.193, ptr noundef nonnull %i.xd) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %i.xe = getelementptr inbounds nuw i8, ptr %.058120, i64 928
  %i.xf = load ptr, ptr %i.xe, align 8            ; 2 uses
  %.not609.i.i = icmp eq ptr %i.xf, null
  br i1 %.not609.i.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.194, ptr noundef nonnull %i.xf) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.xg = getelementptr inbounds nuw i8, ptr %.058120, i64 936
  %i.xh = load ptr, ptr %i.xg, align 8            ; 2 uses
  %.not610.i.i = icmp eq ptr %i.xh, null
  br i1 %.not610.i.i, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.195, ptr noundef nonnull %i.xh) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.xi = getelementptr inbounds nuw i8, ptr %.058120, i64 944
  %i.xj = load ptr, ptr %i.xi, align 8            ; 2 uses
  %.not611.i.i = icmp eq ptr %i.xj, null
  br i1 %.not611.i.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.196, ptr noundef nonnull %i.xj) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.xk = getelementptr inbounds nuw i8, ptr %.058120, i64 952
  %i.xl = load ptr, ptr %i.xk, align 8            ; 2 uses
  %.not612.i.i = icmp eq ptr %i.xl, null
  br i1 %.not612.i.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.197, ptr noundef nonnull %i.xl) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.xm = getelementptr inbounds nuw i8, ptr %.058120, i64 960
  %i.xn = load ptr, ptr %i.xm, align 8            ; 2 uses
  %.not613.i.i = icmp eq ptr %i.xn, null
end_hunk_0
