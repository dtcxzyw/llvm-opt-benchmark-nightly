Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/resize_layer?download=true
inline.NumInlined: 1075
inline.NumDeleted: 396
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv3dnn15ResizeLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %i.on = sext i32 %i.ml to i64                   ; 9 uses
  %i.oo = sext i32 %i.mq to i64                   ; 9 uses
  %i.op = extractelement <2 x float> %i.ny, i64 1
  %i.oq = extractelement <2 x float> %i.ny, i64 0
  %i.or = extractelement <2 x float> %i.ny, i64 0
  %xtraiter = and i32 %.fr683, 7                  ; 3 uses
  %i.os = icmp ult i32 %.fr683, 8
  %unroll_iter = and i32 %.fr683, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod946 = icmp ne i32 %xtraiter, 0
  br label %bb.gf

.preheader:                                       ; preds = %bb.fw
  br i1 %i.ob, label %.lr.ph682, label %.loopexit

.lr.ph682:                                        ; preds = %.preheader
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ou = add nsw i32 %i.mb, -1
  %i.ov = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %62, i64 128
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.oy = add nsw i32 %i.mk, -1
  %i.oz = getelementptr inbounds nuw i8, ptr %63, i64 4
  %i.pa = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.pb = getelementptr inbounds nuw i8, ptr %63, i64 128
  %i.pc = getelementptr inbounds nuw i8, ptr %63, i64 136
  %i.pd = icmp sgt i32 %.fr683, 0
  %i.pe = sext i32 %i.ml to i64                   ; 9 uses
  %i.pf = sext i32 %i.mq to i64                   ; 9 uses
  %i.pg = extractelement <2 x float> %i.ny, i64 1
  %i.ph = extractelement <2 x float> %i.ny, i64 0
  %i.pi = extractelement <2 x float> %i.ny, i64 0
  %xtraiter948 = and i32 %.fr683, 7               ; 3 uses
  %i.pj = icmp ult i32 %.fr683, 8
  %unroll_iter952 = and i32 %.fr683, 2147483640
  %lcmp.mod950.not = icmp eq i32 %xtraiter948, 0
  %lcmp.mod951 = icmp ne i32 %xtraiter948, 0
  br label %bb.fx

bb.fx:                                            ; preds = %.lr.ph682, %._crit_edge676
  %indvars.iv723 = phi i64 [ 0, %.lr.ph682 ], [ %indvars.iv.next724, %._crit_edge676 ] ; 3 uses
  %i.pk = trunc nuw nsw i64 %indvars.iv723 to i32
  %i.pl = uitofp nneg i32 %i.pk to float
  %i.pm = load float, ptr %i.ot, align 4, !tbaa !129
  %i.pn = call float @llvm.fmuladd.f32(float %i.pl, float %i.pm, float %i.pg) ; 2 uses
  %i.po = load i8, ptr %i.nq, align 1, !tbaa !65, !range !83, !noundef !84
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.pq = call noundef float @llvm.floor.f32(float %i.pn)
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.pr = call i64 @lroundf(float noundef %i.pn) #22
  %i.ps = sitofp i64 %i.pr to float
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.pt = phi float [ %i.pq, %bb.fy ], [ %i.ps, %bb.fz ]
  %i.pu = fptosi float %i.pt to i32
  %.sroa.speculated598 = call i32 @llvm.smin.i32(i32 %i.ou, i32 %i.pu)
  %i.pv = load ptr, ptr %i.ov, align 8, !tbaa !130
  %i.pw = load i64, ptr %i.ow, align 8, !tbaa !64
  %i.px = sext i32 %.sroa.speculated598 to i64
  %i.py = mul i64 %i.pw, %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.py ; 2 uses
  %i.qa = load i32, ptr %i.mo, align 4, !tbaa !60 ; 2 uses
  %i.qb = icmp sgt i32 %i.qa, 0
  br i1 %i.qb, label %.lr.ph675, label %._crit_edge676

.lr.ph675:                                        ; preds = %bb.ga
  br i1 %i.pd, label %.lr.ph675.split.us, label %.lr.ph675.split

.lr.ph675.split.us:                               ; preds = %.lr.ph675, %._crit_edge.us677
  %indvars.iv720 = phi i64 [ %indvars.iv.next721, %._crit_edge.us677 ], [ 0, %.lr.ph675 ] ; 3 uses
  %i.qc = trunc nuw nsw i64 %indvars.iv720 to i32
  %i.qd = uitofp nneg i32 %i.qc to float
  %i.qe = load float, ptr %i.ox, align 8, !tbaa !131
  %i.qf = call float @llvm.fmuladd.f32(float %i.qd, float %i.qe, float %i.pi) ; 2 uses
  %i.qg = load i8, ptr %i.nq, align 1, !tbaa !65, !range !83, !noundef !84
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %.lr.ph675.split.us
  %i.qi = call i64 @lroundf(float noundef %i.qf) #22
  %i.qj = sitofp i64 %i.qi to float
  br label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us

bb.gc:                                            ; preds = %.lr.ph675.split.us
  %i.qk = call noundef float @llvm.floor.f32(float %i.qf)
  br label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us:                  ; preds = %bb.gc, %bb.gb
  %i.ql = phi float [ %i.qk, %bb.gc ], [ %i.qj, %bb.gb ]
  %i.qm = fptosi float %i.ql to i32
  %.sroa.speculated591.us = call i32 @llvm.smin.i32(i32 %i.oy, i32 %i.qm)
  %i.qn = load i32, ptr %i.oz, align 4, !tbaa !100
  %i.qo = icmp slt i32 %i.qn, 2                   ; 2 uses
  %i.qp = load ptr, ptr %i.pa, align 8, !tbaa !130
  %i.qq = load i64, ptr %i.pb, align 8, !tbaa !64 ; 2 uses
  %i.qr = mul i64 %i.qq, %indvars.iv723
  %i.qs = load i64, ptr %i.pc, align 8
  %.sink825 = select i1 %i.qo, i64 %i.qq, i64 %i.qs
  %.sink.idx = select i1 %i.qo, i64 0, i64 %i.qr
  %.sink = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.sink.idx
  %i.qt = mul i64 %.sink825, %indvars.iv720
  %i.qu = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.qt ; 2 uses
  %i.qv = sext i32 %.sroa.speculated591.us to i64 ; 9 uses
  br i1 %i.pj, label %.epil.preheader947, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.new

_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.new:              ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.new
  %.0230670.us = phi ptr [ %i.sa, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.new ], [ %i.pz, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us ] ; 2 uses
  %.0231669.us = phi ptr [ %i.sb, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.new ], [ %i.qu, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us ] ; 2 uses
  %niter953 = phi i32 [ %niter953.next.7, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.new ], [ 0, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us ]
  %i.qw = getelementptr inbounds i8, ptr %.0230670.us, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !31
  store i8 %i.qx, ptr %.0231669.us, align 1, !tbaa !31
  %i.qy = getelementptr inbounds i8, ptr %.0230670.us, i64 %i.pe ; 2 uses
  %i.qz = getelementptr inbounds i8, ptr %.0231669.us, i64 %i.pf ; 2 uses
  %i.ra = getelementptr inbounds i8, ptr %i.qy, i64 %i.qv
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !31
  store i8 %i.rb, ptr %i.qz, align 1, !tbaa !31
  %i.rc = getelementptr inbounds i8, ptr %i.qy, i64 %i.pe ; 2 uses
  %i.rd = getelementptr inbounds i8, ptr %i.qz, i64 %i.pf ; 2 uses
  %i.re = getelementptr inbounds i8, ptr %i.rc, i64 %i.qv
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !31
  store i8 %i.rf, ptr %i.rd, align 1, !tbaa !31
  %i.rg = getelementptr inbounds i8, ptr %i.rc, i64 %i.pe ; 2 uses
  %i.rh = getelementptr inbounds i8, ptr %i.rd, i64 %i.pf ; 2 uses
  %i.ri = getelementptr inbounds i8, ptr %i.rg, i64 %i.qv
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !31
  store i8 %i.rj, ptr %i.rh, align 1, !tbaa !31
  %i.rk = getelementptr inbounds i8, ptr %i.rg, i64 %i.pe ; 2 uses
  %i.rl = getelementptr inbounds i8, ptr %i.rh, i64 %i.pf ; 2 uses
  %i.rm = getelementptr inbounds i8, ptr %i.rk, i64 %i.qv
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !31
  store i8 %i.rn, ptr %i.rl, align 1, !tbaa !31
  %i.ro = getelementptr inbounds i8, ptr %i.rk, i64 %i.pe ; 2 uses
  %i.rp = getelementptr inbounds i8, ptr %i.rl, i64 %i.pf ; 2 uses
  %i.rq = getelementptr inbounds i8, ptr %i.ro, i64 %i.qv
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !31
  store i8 %i.rr, ptr %i.rp, align 1, !tbaa !31
  %i.rs = getelementptr inbounds i8, ptr %i.ro, i64 %i.pe ; 2 uses
  %i.rt = getelementptr inbounds i8, ptr %i.rp, i64 %i.pf ; 2 uses
  %i.ru = getelementptr inbounds i8, ptr %i.rs, i64 %i.qv
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !31
  store i8 %i.rv, ptr %i.rt, align 1, !tbaa !31
  %i.rw = getelementptr inbounds i8, ptr %i.rs, i64 %i.pe ; 2 uses
  %i.rx = getelementptr inbounds i8, ptr %i.rt, i64 %i.pf ; 2 uses
  %i.ry = getelementptr inbounds i8, ptr %i.rw, i64 %i.qv
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !31
  store i8 %i.rz, ptr %i.rx, align 1, !tbaa !31
  %i.sa = getelementptr inbounds i8, ptr %i.rw, i64 %i.pe ; 2 uses
  %i.sb = getelementptr inbounds i8, ptr %i.rx, i64 %i.pf ; 2 uses
  %niter953.next.7 = add nuw nsw i32 %niter953, 8 ; 2 uses
  %niter953.ncmp.7 = icmp eq i32 %niter953.next.7, %unroll_iter952
  br i1 %niter953.ncmp.7, label %._crit_edge.us677.unr-lcssa, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.new, !llvm.loop !172

._crit_edge.us677.unr-lcssa:                      ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us.new
  br i1 %lcmp.mod950.not, label %._crit_edge.us677, label %.epil.preheader947

.epil.preheader947:                               ; preds = %._crit_edge.us677.unr-lcssa, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us
  %.0230670.us.epil.init = phi ptr [ %i.pz, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us ], [ %i.sa, %._crit_edge.us677.unr-lcssa ]
  %.0231669.us.epil.init = phi ptr [ %i.qu, %_ZN2cv3Mat3ptrIaEEPT_ii.exit.us ], [ %i.sb, %._crit_edge.us677.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod951)
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gd, %.epil.preheader947
  %.0230670.us.epil = phi ptr [ %.0230670.us.epil.init, %.epil.preheader947 ], [ %i.se, %bb.gd ] ; 2 uses
  %.0231669.us.epil = phi ptr [ %.0231669.us.epil.init, %.epil.preheader947 ], [ %i.sf, %bb.gd ] ; 2 uses
  %epil.iter949 = phi i32 [ 0, %.epil.preheader947 ], [ %epil.iter949.next, %bb.gd ]
  %i.sc = getelementptr inbounds i8, ptr %.0230670.us.epil, i64 %i.qv
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !31
  store i8 %i.sd, ptr %.0231669.us.epil, align 1, !tbaa !31
  %i.se = getelementptr inbounds i8, ptr %.0230670.us.epil, i64 %i.pe
  %i.sf = getelementptr inbounds i8, ptr %.0231669.us.epil, i64 %i.pf
  %epil.iter949.next = add i32 %epil.iter949, 1   ; 2 uses
  %epil.iter949.cmp.not = icmp eq i32 %epil.iter949.next, %xtraiter948
  br i1 %epil.iter949.cmp.not, label %._crit_edge.us677, label %bb.gd, !llvm.loop !173

._crit_edge.us677:                                ; preds = %bb.gd, %._crit_edge.us677.unr-lcssa
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %i.sg = load i32, ptr %i.mo, align 4, !tbaa !60
  %i.sh = sext i32 %i.sg to i64
  %i.si = icmp slt i64 %indvars.iv.next721, %i.sh
  br i1 %i.si, label %.lr.ph675.split.us, label %._crit_edge676, !llvm.loop !174

.lr.ph675.split:                                  ; preds = %.lr.ph675
  %i.sj = load i8, ptr %i.nq, align 1, !tbaa !65, !range !83, !noundef !84
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %._crit_edge676, label %.lr.ph675.split.split

._crit_edge676:                                   ; preds = %_ZN2cv3Mat3ptrIaEEPT_ii.exit, %._crit_edge.us677, %.lr.ph675.split, %bb.ga
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %i.sl = load i32, ptr %i.mm, align 8, !tbaa !62
  %i.sm = sext i32 %i.sl to i64
  %i.sn = icmp slt i64 %indvars.iv.next724, %i.sm
  br i1 %i.sn, label %bb.fx, label %.loopexit, !llvm.loop !175

.lr.ph675.split.split:                            ; preds = %.lr.ph675.split, %_ZN2cv3Mat3ptrIaEEPT_ii.exit
  %74 = phi i32 [ %i.st, %_ZN2cv3Mat3ptrIaEEPT_ii.exit ], [ %i.qa, %.lr.ph675.split ]
  %.0232673.a = phi i32 [ %i.su, %_ZN2cv3Mat3ptrIaEEPT_ii.exit ], [ 0, %.lr.ph675.split ] ; 2 uses
  %75 = load i8, ptr %i.nq, align 1, !tbaa !65, !range !83, !noundef !84
  %i.so = trunc nuw i8 %75 to i1
  br i1 %i.so, label %_ZN2cv3Mat3ptrIaEEPT_ii.exit, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph675.split.split
  %i.sp = uitofp nneg i32 %.0232673.a to float
  %i.sq = load float, ptr %i.ox, align 8, !tbaa !131
  %i.sr = call float @llvm.fmuladd.f32(float %i.sp, float %i.sq, float %i.ph)
  %i.ss = call i64 @lroundf(float noundef %i.sr) #22 ; 0 uses
  %.pre729 = load i32, ptr %i.mo, align 4, !tbaa !60
  br label %_ZN2cv3Mat3ptrIaEEPT_ii.exit

_ZN2cv3Mat3ptrIaEEPT_ii.exit:                     ; preds = %bb.ge, %.lr.ph675.split.split
  %i.st = phi i32 [ %.pre729, %bb.ge ], [ %74, %.lr.ph675.split.split ] ; 2 uses
  %i.su = add nuw nsw i32 %.0232673.a, 1          ; 2 uses
  %i.sv = icmp slt i32 %i.su, %i.st
  br i1 %i.sv, label %.lr.ph675.split.split, label %._crit_edge676, !llvm.loop !176

bb.gf:                                            ; preds = %.lr.ph668, %._crit_edge663
  %indvars.iv716 = phi i64 [ 0, %.lr.ph668 ], [ %indvars.iv.next717, %._crit_edge663 ] ; 3 uses
  %i.sw = trunc nuw nsw i64 %indvars.iv716 to i32
  %i.sx = uitofp nneg i32 %i.sw to float
  %i.sy = load float, ptr %i.oc, align 4, !tbaa !129
  %i.sz = call float @llvm.fmuladd.f32(float %i.sx, float %i.sy, float %i.op) ; 2 uses
  %i.ta = load i8, ptr %i.nq, align 1, !tbaa !65, !range !83, !noundef !84
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.tc = call noundef float @llvm.floor.f32(float %i.sz)
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  %i.td = call i64 @lroundf(float noundef %i.sz) #22
  %i.te = sitofp i64 %i.td to float
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.tf = phi float [ %i.tc, %bb.gg ], [ %i.te, %bb.gh ]
  %i.tg = fptosi float %i.tf to i32
  %.sroa.speculated585 = call i32 @llvm.smin.i32(i32 %i.od, i32 %i.tg)
  %i.th = load ptr, ptr %i.oe, align 8, !tbaa !130
  %i.ti = load i64, ptr %i.of, align 8, !tbaa !64
  %i.tj = sext i32 %.sroa.speculated585 to i64
  %i.tk = mul i64 %i.ti, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tk ; 2 uses
  %i.tm = load i32, ptr %i.mo, align 4, !tbaa !60 ; 2 uses
  %i.tn = icmp sgt i32 %i.tm, 0
  br i1 %i.tn, label %.lr.ph662, label %._crit_edge663

.lr.ph662:                                        ; preds = %bb.gi
  br i1 %i.om, label %.lr.ph662.split.us, label %.lr.ph662.split

.lr.ph662.split.us:                               ; preds = %.lr.ph662, %._crit_edge.us664
  %indvars.iv713 = phi i64 [ %indvars.iv.next714, %._crit_edge.us664 ], [ 0, %.lr.ph662 ] ; 3 uses
  %i.to = trunc nuw nsw i64 %indvars.iv713 to i32
  %i.tp = uitofp nneg i32 %i.to to float
  %i.tq = load float, ptr %i.og, align 8, !tbaa !131
  %i.tr = call float @llvm.fmuladd.f32(float %i.tp, float %i.tq, float %i.or) ; 2 uses
  %i.ts = load i8, ptr %i.nq, align 1, !tbaa !65, !range !83, !noundef !84
  %i.tt = trunc nuw i8 %i.ts to i1
  br i1 %i.tt, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %.lr.ph662.split.us
  %i.tu = call i64 @lroundf(float noundef %i.tr) #22
  %i.tv = sitofp i64 %i.tu to float
  br label %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us

bb.gk:                                            ; preds = %.lr.ph662.split.us
  %i.tw = call noundef float @llvm.floor.f32(float %i.tr)
  br label %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us

_ZN2cv3Mat3ptrIfEEPT_ii.exit.us:                  ; preds = %bb.gk, %bb.gj
  %i.tx = phi float [ %i.tw, %bb.gk ], [ %i.tv, %bb.gj ]
  %i.ty = fptosi float %i.tx to i32
  %.sroa.speculated578.us = call i32 @llvm.smin.i32(i32 %i.oh, i32 %i.ty)
  %i.tz = load i32, ptr %i.oi, align 4, !tbaa !100
  %i.ua = icmp slt i32 %i.tz, 2                   ; 2 uses
  %i.ub = load ptr, ptr %i.oj, align 8, !tbaa !130
  %i.uc = load i64, ptr %i.ok, align 8, !tbaa !64 ; 2 uses
  %i.ud = mul i64 %i.uc, %indvars.iv716
  %i.ue = load i64, ptr %i.ol, align 8
  %.sink828 = select i1 %i.ua, i64 %i.uc, i64 %i.ue
  %.sink826.idx = select i1 %i.ua, i64 0, i64 %i.ud
  %.sink826 = getelementptr inbounds nuw i8, ptr %i.ub, i64 %.sink826.idx
  %i.uf = mul i64 %.sink828, %indvars.iv713
  %i.ug = getelementptr inbounds nuw i8, ptr %.sink826, i64 %i.uf ; 2 uses
  %i.uh = sext i32 %.sroa.speculated578.us to i64 ; 9 uses
  br i1 %i.os, label %.epil.preheader, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us.new

_ZN2cv3Mat3ptrIfEEPT_ii.exit.us.new:              ; preds = %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us.new
  %.0225657.us = phi ptr [ %i.vm, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us.new ], [ %i.tl, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us ] ; 2 uses
  %.0226656.us = phi ptr [ %i.vn, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us.new ], [ %i.ug, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us.new ], [ 0, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us ]
  %i.ui = getelementptr inbounds [4 x i8], ptr %.0225657.us, i64 %i.uh
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !58
  store float %i.uj, ptr %.0226656.us, align 4, !tbaa !58
  %i.uk = getelementptr inbounds [4 x i8], ptr %.0225657.us, i64 %i.on ; 2 uses
  %i.ul = getelementptr inbounds [4 x i8], ptr %.0226656.us, i64 %i.oo ; 2 uses
  %i.um = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.uh
  %i.un = load float, ptr %i.um, align 4, !tbaa !58
  store float %i.un, ptr %i.ul, align 4, !tbaa !58
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.on ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %i.oo ; 2 uses
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.uh
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !58
  store float %i.ur, ptr %i.up, align 4, !tbaa !58
  %i.us = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.on ; 2 uses
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.oo ; 2 uses
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.uh
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !58
  store float %i.uv, ptr %i.ut, align 4, !tbaa !58
  %i.uw = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.on ; 2 uses
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.oo ; 2 uses
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.uh
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !58
  store float %i.uz, ptr %i.ux, align 4, !tbaa !58
  %i.va = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.on ; 2 uses
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.oo ; 2 uses
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.uh
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !58
  store float %i.vd, ptr %i.vb, align 4, !tbaa !58
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.on ; 2 uses
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.oo ; 2 uses
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.uh
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !58
  store float %i.vh, ptr %i.vf, align 4, !tbaa !58
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.on ; 2 uses
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.oo ; 2 uses
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.vi, i64 %i.uh
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !58
  store float %i.vl, ptr %i.vj, align 4, !tbaa !58
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.vi, i64 %i.on ; 2 uses
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vj, i64 %i.oo ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us664.unr-lcssa, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us.new, !llvm.loop !177

._crit_edge.us664.unr-lcssa:                      ; preds = %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us664, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us664.unr-lcssa, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us
  %.0225657.us.epil.init = phi ptr [ %i.tl, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us ], [ %i.vm, %._crit_edge.us664.unr-lcssa ]
  %.0226656.us.epil.init = phi ptr [ %i.ug, %_ZN2cv3Mat3ptrIfEEPT_ii.exit.us ], [ %i.vn, %._crit_edge.us664.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod946)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gl, %.epil.preheader
  %.0225657.us.epil = phi ptr [ %.0225657.us.epil.init, %.epil.preheader ], [ %i.vq, %bb.gl ] ; 2 uses
  %.0226656.us.epil = phi ptr [ %.0226656.us.epil.init, %.epil.preheader ], [ %i.vr, %bb.gl ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.gl ]
  %i.vo = getelementptr inbounds [4 x i8], ptr %.0225657.us.epil, i64 %i.uh
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !58
  store float %i.vp, ptr %.0226656.us.epil, align 4, !tbaa !58
  %i.vq = getelementptr inbounds [4 x i8], ptr %.0225657.us.epil, i64 %i.on
  %i.vr = getelementptr inbounds [4 x i8], ptr %.0226656.us.epil, i64 %i.oo
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us664, label %bb.gl, !llvm.loop !178

._crit_edge.us664:                                ; preds = %bb.gl, %._crit_edge.us664.unr-lcssa
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %i.vs = load i32, ptr %i.mo, align 4, !tbaa !60
  %i.vt = sext i32 %i.vs to i64
  %i.vu = icmp slt i64 %indvars.iv.next714, %i.vt
  br i1 %i.vu, label %.lr.ph662.split.us, label %._crit_edge663, !llvm.loop !179

.lr.ph662.split:                                  ; preds = %.lr.ph662
  %i.vv = load i8, ptr %i.nq, align 1, !tbaa !65, !range !83, !noundef !84
  %i.vw = trunc nuw i8 %i.vv to i1
  br i1 %i.vw, label %._crit_edge663, label %.lr.ph662.split.split

._crit_edge663:                                   ; preds = %_ZN2cv3Mat3ptrIfEEPT_ii.exit, %._crit_edge.us664, %.lr.ph662.split, %bb.gi
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1 ; 2 uses
  %i.vx = load i32, ptr %i.mm, align 8, !tbaa !62
  %i.vy = sext i32 %i.vx to i64
  %i.vz = icmp slt i64 %indvars.iv.next717, %i.vy
  br i1 %i.vz, label %bb.gf, label %.loopexit, !llvm.loop !180

.lr.ph662.split.split:                            ; preds = %.lr.ph662.split, %_ZN2cv3Mat3ptrIfEEPT_ii.exit
  %76 = phi i32 [ %i.wf, %_ZN2cv3Mat3ptrIfEEPT_ii.exit ], [ %i.tm, %.lr.ph662.split ]
  %.0227660.a = phi i32 [ %i.wg, %_ZN2cv3Mat3ptrIfEEPT_ii.exit ], [ 0, %.lr.ph662.split ] ; 2 uses
  %77 = load i8, ptr %i.nq, align 1, !tbaa !65, !range !83, !noundef !84
  %i.wa = trunc nuw i8 %77 to i1
  br i1 %i.wa, label %_ZN2cv3Mat3ptrIfEEPT_ii.exit, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph662.split.split
  %i.wb = uitofp nneg i32 %.0227660.a to float
  %i.wc = load float, ptr %i.og, align 8, !tbaa !131
  %i.wd = call float @llvm.fmuladd.f32(float %i.wb, float %i.wc, float %i.oq)
  %i.we = call i64 @lroundf(float noundef %i.wd) #22 ; 0 uses
  %.pre728 = load i32, ptr %i.mo, align 4, !tbaa !60
  br label %_ZN2cv3Mat3ptrIfEEPT_ii.exit

_ZN2cv3Mat3ptrIfEEPT_ii.exit:                     ; preds = %bb.gm, %.lr.ph662.split.split
  %i.wf = phi i32 [ %.pre728, %bb.gm ], [ %76, %.lr.ph662.split.split ] ; 2 uses
  %i.wg = add nuw nsw i32 %.0227660.a, 1          ; 2 uses
  %i.wh = icmp slt i32 %i.wg, %i.wf
  br i1 %i.wh, label %.lr.ph662.split.split, label %._crit_edge663, !llvm.loop !181

.loopexit:                                        ; preds = %._crit_edge663, %._crit_edge676, %.preheader623, %.preheader
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  br label %bb.ia

bb.gn:                                            ; preds = %bb.fv, %bb.fu
  %.pn313 = phi { ptr, i32 } [ %i.nx, %bb.fv ], [ %i.nw, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  br label %.body459

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit498: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit423
  br i1 %i.ij, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit498.thread610

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit425.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit498
  %i.wi = getelementptr inbounds nuw i8, ptr %53, i64 72
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !94 ; 2 uses
  %i.wk = icmp sgt i32 %i.wj, 2
  br i1 %i.wk, label %bb.gr, label %bb.go

bb.go:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc504 unwind label %.body528

.noexc504:                                        ; preds = %bb.go
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.30, i32 noundef 97) #23
          to label %bb.gp unwind label %bb.gq

bb.gp:                                            ; preds = %.noexc504
  unreachable

bb.gq:                                            ; preds = %.noexc504
  %i.wl = landingpad { ptr, i32 }
          cleanup
  %i.wm = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.wo = icmp eq ptr %i.wm, %i.wn
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501: ; preds = %bb.gq
  %i.wp = load i64, ptr %i.wn, align 8, !tbaa !31
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i502: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i501
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body459

bb.gr:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread
  %i.wr = getelementptr inbounds nuw i8, ptr %53, i64 92
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !95 ; 4 uses
  %.not615 = icmp eq i32 %i.wj, 3
  br i1 %.not615, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc513 unwind label %.body528

.noexc513:                                        ; preds = %bb.gs
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.30, i32 noundef 97) #23
          to label %bb.gt unwind label %bb.gu

bb.gt:                                            ; preds = %.noexc513
  unreachable

bb.gu:                                            ; preds = %.noexc513
  %i.wt = landingpad { ptr, i32 }
          cleanup
  %i.wu = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ww = icmp eq ptr %i.wu, %i.wv
  br i1 %i.ww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510: ; preds = %bb.gu
  %i.wx = load i64, ptr %i.wv, align 8, !tbaa !31
  %i.wy = add i64 %i.wx, 1
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i511: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i510
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body459

bb.gv:                                            ; preds = %bb.gr
  %i.wz = getelementptr inbounds nuw i8, ptr %53, i64 84
  %i.xa = getelementptr inbounds nuw i8, ptr %53, i64 96
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !95 ; 3 uses
  %i.xc = mul nsw i32 %i.xb, %i.ws                ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !62
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 4 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !60
  %i.xh = mul nsw i32 %i.xg, %i.xe                ; 2 uses
  %i.xi = load i32, ptr %i.wz, align 4, !tbaa !95
  %i.xj = getelementptr inbounds nuw i8, ptr %53, i64 88
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !95
  %i.xl = mul i32 %i.xk, %i.xi                    ; 7 uses
  %i.xm = load i32, ptr %53, align 8, !tbaa !112
  %i.xn = and i32 %i.xm, 16384
  %.not616 = icmp eq i32 %i.xn, 0
  br i1 %.not616, label %bb.gw, label %bb.hb

.body528:                                         ; preds = %bb.dj, %bb.dl, %bb.dm, %bb.ib, %bb.ij, %bb.ex, %bb.fb, %bb.go, %bb.gs
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %.body459

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %65)
          to label %bb.gx unwind label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @__func__._ZN2cv3dnn15ResizeLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.9, i32 noundef 349) #23
          to label %bb.gy unwind label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  unreachable

bb.gz:                                            ; preds = %bb.gw
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533

bb.ha:                                            ; preds = %bb.gx
  %i.xq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xr = load ptr, ptr %64, align 8, !tbaa !37   ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.xt = icmp eq ptr %i.xr, %i.xs
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531: ; preds = %bb.ha
  %i.xu = load i64, ptr %i.xs, align 8, !tbaa !31
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xr, i64 noundef %i.xv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533: ; preds = %bb.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531, %bb.gz
  %.pn300 = phi { ptr, i32 } [ %i.xp, %bb.gz ], [ %i.xq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531 ], [ %i.xq, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #22
  br label %.body459

bb.hb:                                            ; preds = %bb.gv
  %i.xw = load i32, ptr %54, align 8, !tbaa !112
  %i.xx = and i32 %i.xw, 16384
  %.not617 = icmp eq i32 %i.xx, 0
  br i1 %.not617, label %bb.hc, label %bb.hh

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %67)
          to label %bb.hd unwind label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @__func__._ZN2cv3dnn15ResizeLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.9, i32 noundef 349) #23
          to label %bb.he unwind label %bb.hg

bb.he:                                            ; preds = %bb.hd
  unreachable

bb.hf:                                            ; preds = %bb.hc
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536

bb.hg:                                            ; preds = %bb.hd
  %i.xz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ya = load ptr, ptr %66, align 8, !tbaa !37   ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.yc = icmp eq ptr %i.ya, %i.yb
  br i1 %i.yc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534: ; preds = %bb.hg
  %i.yd = load i64, ptr %i.yb, align 8, !tbaa !31
  %i.ye = add i64 %i.yd, 1
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef %i.ye) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536: ; preds = %bb.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534, %bb.hf
  %.pn302 = phi { ptr, i32 } [ %i.xy, %bb.hf ], [ %i.xz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i534 ], [ %i.xz, %bb.hg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %.body459

bb.hh:                                            ; preds = %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
end_hunk_0
