Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@emit_graph:bb.a
  %spec.select.i = select i1 %.not18.i, i32 2, i32 0
  %spec.select24.i = select i1 %.not18.i, i64 4, i64 2
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 356
  store i32 %spec.select.i, ptr %i.nt, align 4, !tbaa !122
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 360 ; 2 uses
  store i64 %spec.select24.i, ptr %i.nu, align 8, !tbaa !123
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 368 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !65
  call void @free(ptr noundef %i.nw) #27
  %i.nx = load i64, ptr %i.nu, align 8, !tbaa !123 ; 5 uses
  %.not21.i = icmp eq i64 %i.nx, 0
  br i1 %.not21.i, label %.thread.i106, label %bb.dg

.thread.i106:                                     ; preds = %bb.df
  %i.ny = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %gv_calloc.exit.i104

bb.dg:                                            ; preds = %bb.df
  %mul.ov.i.i103 = icmp ugt i64 %i.nx, 1152921504606846975
  br i1 %mul.ov.i.i103, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.nz = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.oa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nz, ptr noundef nonnull @.str.47, i64 noundef %i.nx, i64 noundef 16) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.ob = call noalias ptr @calloc(i64 noundef %i.nx, i64 noundef 16) #28 ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.dj, label %gv_calloc.exit.i104

bb.dj:                                            ; preds = %bb.di
  %i.od = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.oe = shl nuw i64 %i.nx, 4
  %i.of = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.od, ptr noundef nonnull @.str.45, i64 noundef %i.oe) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit.i104:                              ; preds = %bb.di, %.thread.i106
  %i.og = phi ptr [ %i.ny, %.thread.i106 ], [ %i.ob, %bb.di ] ; 6 uses
  store ptr %i.og, ptr %i.nv, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.og, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !120
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ez, i64 16, i1 false), !tbaa.struct !120
  %i.oi = and i32 %i.np, 8192
  %.not19.i105 = icmp eq i32 %i.oi, 0
  br i1 %.not19.i105, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %gv_calloc.exit.i104
  %i.oj = call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef nonnull %i.og, ptr noundef nonnull %i.og, i64 noundef 2) #27 ; 0 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %gv_calloc.exit.i104
  br i1 %.not18.i, label %bb.dm, label %emit_map_rect.exit

bb.dm:                                            ; preds = %bb.dl
  call void @rect2poly(ptr noundef nonnull %i.og) #27
  br label %emit_map_rect.exit

emit_map_rect.exit:                               ; preds = %bb.de, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ok = load ptr, ptr %i.nk, align 8, !tbaa !53
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ft, i64 288
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !57
  %i.on = getelementptr inbounds nuw i8, ptr %i.ft, i64 320
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !61
  %i.op = getelementptr inbounds nuw i8, ptr %i.ft, i64 256
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !52
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.ok, ptr noundef %i.om, ptr noundef %i.oo, ptr noundef %i.oq) #27
  br label %bb.dn

bb.dn:                                            ; preds = %emit_map_rect.exit, %bb.dd, %bb.db
  %i.or = call ptr @agget(ptr noundef %1, ptr noundef nonnull @.str.26) #27 ; 3 uses
  %.not.i95.i = icmp eq ptr %i.or, null
  br i1 %.not.i95.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.os = load i8, ptr %i.or, align 1, !tbaa !14
  %.not33.i.i = icmp eq i8 %i.os, 0               ; 2 uses
  %spec.select40.i.i = select i1 %.not33.i.i, ptr @.str.59, ptr %i.or
  %spec.select41.i.i = zext i1 %.not33.i.i to i32
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.028.i.i = phi ptr [ @.str.59, %bb.dn ], [ %spec.select40.i.i, %bb.do ] ; 3 uses
  %.027.i.i = phi i32 [ 1, %bb.dn ], [ %spec.select41.i.i, %bb.do ] ; 2 uses
  %i.ot = load i32, ptr %i.c, align 8, !tbaa !68  ; 2 uses
  %i.ou = and i32 %i.ot, 256
  %.not34.i.i = icmp eq i32 %i.ou, 0
  %i.ov = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.028.i.i, ptr noundef nonnull dereferenceable(12) @.str.29) #31
  %i.ow = icmp eq i32 %i.ov, 0                    ; 3 uses
  br i1 %.not34.i.i, label %.thread.i.i, label %bb.dq

.thread.i.i:                                      ; preds = %bb.dp
  %spec.select.i.i = select i1 %i.ow, ptr @.str.59, ptr %.028.i.i
  %spec.select39.i.i = select i1 %i.ow, i32 1, i32 %.027.i.i
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.ow, label %bb.ed, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.thread.i.i
  %.145.i.i = phi i32 [ %spec.select39.i.i, %.thread.i.i ], [ %.027.i.i, %bb.dq ]
  %.12944.i.i = phi ptr [ %spec.select.i.i, %.thread.i.i ], [ %.028.i.i, %bb.dq ] ; 2 uses
  %i.ox = and i32 %i.ot, 33554432
  %i.oy = icmp ne i32 %i.ox, 0
  %i.oz = icmp ne i32 %.145.i.i, 0
  %or.cond.i96.i = and i1 %i.oy, %i.oz
  br i1 %or.cond.i96.i, label %bb.ed, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.pa = call zeroext i1 @findStopColor(ptr noundef %.12944.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.pa, label %bb.dt, label %bb.eb

bb.dt:                                            ; preds = %bb.ds
  %i.pb = load ptr, ptr %i.a, align 16, !tbaa !105 ; 2 uses
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %i.pb) #27
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #27
  %i.pc = call ptr @agget(ptr noundef %1, ptr noundef nonnull @.str.64) #27 ; 3 uses
  %.not.i98 = icmp eq ptr %i.pc, null
  br i1 %.not.i98, label %checkClusterStyle.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !14
  %.not36.i = icmp eq i8 %i.pd, 0
  br i1 %.not36.i, label %checkClusterStyle.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pe = call ptr @parse_style(ptr noundef nonnull %i.pc) ; 0 uses
  %i.pf = load ptr, ptr @parse_style.parse, align 16, !tbaa !105 ; 2 uses
  %.not3744.i = icmp eq ptr %i.pf, null
  br i1 %.not3744.i, label %checkClusterStyle.exit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.dv, %.loopexit.i
  %i.pg = phi ptr [ %i.px, %.loopexit.i ], [ %i.pf, %bb.dv ] ; 4 uses
  %.03146.i = phi ptr [ %.132.i, %.loopexit.i ], [ @parse_style.parse, %bb.dv ] ; 8 uses
  %.sroa.0.045.i = phi i32 [ %.sroa.0.1.i, %.loopexit.i ], [ 0, %bb.dv ] ; 4 uses
  %i.ph = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pg, ptr noundef nonnull dereferenceable(7) @.str.65) #31
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph.i99
  %i.pj = getelementptr inbounds nuw i8, ptr %.03146.i, i64 8
  br label %.loopexit.i

bb.dx:                                            ; preds = %.lr.ph.i99
  %i.pk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pg, ptr noundef nonnull dereferenceable(7) @.str.66) #31
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %.preheader, label %bb.dy

.preheader:                                       ; preds = %bb.dx, %.preheader
  %.0.i101 = phi ptr [ %i.pm, %.preheader ], [ %.03146.i, %bb.dx ] ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i101, i64 8 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !105 ; 2 uses
  store ptr %i.pn, ptr %.0.i101, align 8, !tbaa !105
  %.not40.i = icmp eq ptr %i.pn, null
  br i1 %.not40.i, label %.loopexit.i, label %.preheader, !llvm.loop !0

bb.dy:                                            ; preds = %bb.dx
  %i.po = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pg, ptr noundef nonnull dereferenceable(8) @.str.67) #31
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %.preheader140, label %bb.dz

.preheader140:                                    ; preds = %bb.dy, %.preheader140
  %.1.i100 = phi ptr [ %i.pq, %.preheader140 ], [ %.03146.i, %bb.dy ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.1.i100, i64 8 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !105 ; 2 uses
  store ptr %i.pr, ptr %.1.i100, align 8, !tbaa !105
  %.not39.i = icmp eq ptr %i.pr, null
  br i1 %.not39.i, label %.loopexit.i, label %.preheader140, !llvm.loop !1

bb.dz:                                            ; preds = %bb.dy
  %i.ps = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pg, ptr noundef nonnull dereferenceable(8) @.str.68) #31
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %.preheader141, label %bb.ea

.preheader141:                                    ; preds = %bb.dz, %.preheader141
  %.2.i = phi ptr [ %i.pu, %.preheader141 ], [ %.03146.i, %bb.dz ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.2.i, i64 8 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !105 ; 2 uses
  store ptr %i.pv, ptr %.2.i, align 8, !tbaa !105
  %.not38.i = icmp eq ptr %i.pv, null
  br i1 %.not38.i, label %.loopexit.i, label %.preheader141, !llvm.loop !2

bb.ea:                                            ; preds = %bb.dz
  %i.pw = getelementptr inbounds nuw i8, ptr %.03146.i, i64 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader141, %.preheader140, %.preheader, %bb.ea, %bb.dw
  %.sroa.0.1.i = phi i32 [ %.sroa.0.045.i, %bb.dw ], [ %.sroa.0.045.i, %bb.ea ], [ %.sroa.0.045.i, %.preheader140 ], [ 3, %.preheader ], [ %.sroa.0.045.i, %.preheader141 ] ; 2 uses
  %.132.i = phi ptr [ %i.pj, %bb.dw ], [ %i.pw, %bb.ea ], [ %.03146.i, %.preheader140 ], [ %.03146.i, %.preheader ], [ %.03146.i, %.preheader141 ] ; 2 uses
  %i.px = load ptr, ptr %.132.i, align 8, !tbaa !105 ; 2 uses
  %.not37.i = icmp eq ptr %i.px, null
  br i1 %.not37.i, label %checkClusterStyle.exit.loopexit, label %.lr.ph.i99, !llvm.loop !3

checkClusterStyle.exit.loopexit:                  ; preds = %.loopexit.i
  %5 = lshr i32 %.sroa.0.1.i, 1
  %6 = or disjoint i32 %5, 2
  br label %checkClusterStyle.exit

checkClusterStyle.exit:                           ; preds = %checkClusterStyle.exit.loopexit, %bb.dt, %bb.du, %bb.dv
  %.sroa.0.2.i = phi i32 [ 2, %bb.dt ], [ 2, %bb.du ], [ 2, %bb.dv ], [ %6, %checkClusterStyle.exit.loopexit ]
  %i.py = load ptr, ptr %i.fa, align 8, !tbaa !105 ; 3 uses
  %.not36.i.i = icmp eq ptr %i.py, null
  %i.pz = load ptr, ptr @G_gradientangle, align 8, !tbaa !167
  %i.qa = call i32 @late_int(ptr noundef %1, ptr noundef %i.pz, i32 noundef 0, i32 noundef 0) #27
  %i.qb = load double, ptr %i.b, align 8, !tbaa !110
  %.str.27..i.i = select i1 %.not36.i.i, ptr @.str.27, ptr %i.py
  call void @gvrender_set_gradient_vals(ptr noundef nonnull %0, ptr noundef nonnull %.str.27..i.i, i32 noundef %i.qa, double noundef %i.qb) #27
  call void @gvrender_box(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %i.et, i32 noundef %.sroa.0.2.i) #27
  call void @free(ptr noundef %i.pb) #27
  call void @free(ptr noundef %i.py) #27
  br label %bb.ec

bb.eb:                                            ; preds = %bb.ds
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %.12944.i.i) #27
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #27
  call void @gvrender_box(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %i.et, i32 noundef 1) #27
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %checkClusterStyle.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dr, %bb.dq
  %i.qc = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !101
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 88
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !130 ; 6 uses
  %.not38.i.i = icmp eq ptr %i.qg, null
  br i1 %.not38.i.i, label %emit_background.exit.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !133
  %.not188.i.i.i = icmp eq i64 %i.qh, 0
  br i1 %.not188.i.i.i, label %emit_background.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ee
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !134
  br label %.outer.i.i.outer.i

._crit_edge.i.i.i:                                ; preds = %boxf_overlap.exit.thread.i.i.i
  %i.qk = icmp eq ptr %.096186.i147.i.i, null
  br i1 %i.qk, label %emit_background.exit.i, label %._crit_edge.thread194.i.i.i

.peel.next.i.i:                                   ; preds = %boxf_overlap.exit.thread.thread.i.peel.i.i, %boxf_overlap.exit.thread.thread.i.i.i
  %i.ql = phi i64 [ %i.zv, %boxf_overlap.exit.thread.thread.i.i.i ], [ %i.zp, %boxf_overlap.exit.thread.thread.i.peel.i.i ]
  %.0100184.i.pn.i.i = phi ptr [ %.0100184.i.i.i, %boxf_overlap.exit.thread.thread.i.i.i ], [ %.0100184.ph.i.i.i, %boxf_overlap.exit.thread.thread.i.peel.i.i ] ; 3 uses
  %.0101183.i.i.i = phi i64 [ %i.zu, %boxf_overlap.exit.thread.thread.i.i.i ], [ %i.zo, %boxf_overlap.exit.thread.thread.i.peel.i.i ] ; 15 uses
  %.0100184.i.i.i = getelementptr inbounds nuw i8, ptr %.0100184.i.pn.i.i, i64 128 ; 15 uses
  %i.qm = load i32, ptr %.0100184.i.i.i, align 8, !tbaa !137 ; 7 uses
  switch i32 %i.qm, label %.loopexit.i.i [
    i32 0, label %.loopexit149.i.i
    i32 1, label %.loopexit149.i.i
    i32 2, label %.loopexit150.i.i
    i32 3, label %.loopexit150.i.i
    i32 4, label %.loopexit151.i.i
    i32 5, label %.loopexit151.i.i
    i32 6, label %.loopexit152.i.i
    i32 7, label %.loopexit153.i.i
    i32 8, label %.loopexit154.i.i
    i32 9, label %.loopexit155.i.i
    i32 13, label %.loopexit156.i.i
    i32 14, label %.loopexit157.i.i
    i32 10, label %boxf_overlap.exit.thread.i.i.thread.i
    i32 11, label %boxf_overlap.exit.thread.thread.i.i.i
    i32 15, label %boxf_overlap.exit.thread.i.i.thread.i
    i32 12, label %.loopexit158.i.i
  ]

.loopexit149.i.i:                                 ; preds = %.outer.i.i.i, %.outer.i.i.i, %.peel.next.i.i, %.peel.next.i.i
  %.096186.i.lcssa135.i.i = phi ptr [ @parse_style.parse, %.peel.next.i.i ], [ @parse_style.parse, %.peel.next.i.i ], [ %.096186.ph.i.i.i, %.outer.i.i.i ], [ %.096186.ph.i.i.i, %.outer.i.i.i ] ; 2 uses
  %.0100184.i.lcssa122.i.i = phi ptr [ %.0100184.i.i.i, %.peel.next.i.i ], [ %.0100184.i.i.i, %.peel.next.i.i ], [ %.0100184.ph.i.i.i, %.outer.i.i.i ], [ %.0100184.ph.i.i.i, %.outer.i.i.i ] ; 5 uses
  %.0101183.i.lcssa109.i.i = phi i64 [ %.0101183.i.i.i, %.peel.next.i.i ], [ %.0101183.i.i.i, %.peel.next.i.i ], [ %.0101183.ph.i.i.i, %.outer.i.i.i ], [ %.0101183.ph.i.i.i, %.outer.i.i.i ] ; 2 uses
  %.lcssa97.i.i = phi i32 [ %i.qm, %.peel.next.i.i ], [ %i.qm, %.peel.next.i.i ], [ %i.zk, %.outer.i.i.i ], [ %i.zk, %.outer.i.i.i ]
  %i.qn = getelementptr inbounds nuw i8, ptr %.0100184.i.lcssa122.i.i, i64 88
  %i.qo = load <4 x double>, ptr %i.et, align 8   ; 2 uses
  %i.qp = load <4 x double>, ptr %i.qn, align 8   ; 2 uses
  %i.qq = shufflevector <4 x double> %i.qp, <4 x double> %i.qo, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.qr = shufflevector <4 x double> %i.qo, <4 x double> %i.qp, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qs = fcmp oge <4 x double> %i.qq, %i.qr
  %i.qt = freeze <4 x i1> %i.qs
  %i.qu = bitcast <4 x i1> %i.qt to i4
  %i.qv = icmp eq i4 %i.qu, -1
  br i1 %i.qv, label %bb.ef, label %boxf_overlap.exit.thread.i.i.i

bb.ef:                                            ; preds = %.loopexit149.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.qw = getelementptr inbounds nuw i8, ptr %.0100184.i.lcssa122.i.i, i64 8
  %i.qx = getelementptr inbounds nuw i8, ptr %.0100184.i.lcssa122.i.i, i64 24
  %i.qy = load <2 x double>, ptr %i.qw, align 8, !tbaa !14 ; 2 uses
  %i.qz = load <2 x double>, ptr %i.qx, align 8, !tbaa !14 ; 2 uses
  %i.ra = fsub <2 x double> %i.qy, %i.qz
  store <2 x double> %i.ra, ptr %3, align 16, !tbaa !110
  %i.rb = fadd <2 x double> %i.qy, %i.qz
  store <2 x double> %i.rb, ptr %i.fb, align 16, !tbaa !110
  %i.rc = icmp eq i32 %.lcssa97.i.i, 0
  %i.rd = select i1 %i.rc, i32 %.098185.ph.i.i.ph.i, i32 0
  call void @gvrender_ellipse(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %i.rd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %boxf_overlap.exit.thread.i.i.i

.loopexit150.i.i:                                 ; preds = %.outer.i.i.i, %.outer.i.i.i, %.peel.next.i.i, %.peel.next.i.i
  %i.re = phi i32 [ %i.qm, %.peel.next.i.i ], [ %i.qm, %.peel.next.i.i ], [ %i.zk, %.outer.i.i.i ], [ %i.zk, %.outer.i.i.i ]
  %.096186.i.lcssa136.i.i = phi ptr [ @parse_style.parse, %.peel.next.i.i ], [ @parse_style.parse, %.peel.next.i.i ], [ %.096186.ph.i.i.i, %.outer.i.i.i ], [ %.096186.ph.i.i.i, %.outer.i.i.i ] ; 2 uses
  %.0100184.i.lcssa123.i.i = phi ptr [ %.0100184.i.i.i, %.peel.next.i.i ], [ %.0100184.i.i.i, %.peel.next.i.i ], [ %.0100184.ph.i.i.i, %.outer.i.i.i ], [ %.0100184.ph.i.i.i, %.outer.i.i.i ] ; 5 uses
  %.0101183.i.lcssa110.i.i = phi i64 [ %.0101183.i.i.i, %.peel.next.i.i ], [ %.0101183.i.i.i, %.peel.next.i.i ], [ %.0101183.ph.i.i.i, %.outer.i.i.i ], [ %.0101183.ph.i.i.i, %.outer.i.i.i ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0100184.i.lcssa123.i.i, i64 88
  %i.rg = load <4 x double>, ptr %i.et, align 8   ; 2 uses
  %i.rh = load <4 x double>, ptr %i.rf, align 8   ; 2 uses
  %i.ri = shufflevector <4 x double> %i.rh, <4 x double> %i.rg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.rj = shufflevector <4 x double> %i.rg, <4 x double> %i.rh, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.rk = fcmp oge <4 x double> %i.ri, %i.rj
  %i.rl = freeze <4 x i1> %i.rk
  %i.rm = bitcast <4 x i1> %i.rl to i4
  %i.rn = icmp eq i4 %i.rm, -1
  br i1 %i.rn, label %bb.eg, label %boxf_overlap.exit.thread.i.i.i

bb.eg:                                            ; preds = %.loopexit150.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %.0100184.i.lcssa123.i.i, i64 8 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.0100184.i.lcssa123.i.i, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !14 ; 5 uses
  %i.rr = load i64, ptr %i.ro, align 8, !tbaa !14 ; 8 uses
  %.not.i90 = icmp eq i64 %i.rr, 0
  br i1 %.not.i90, label %gv_calloc.exit.thread.i96, label %bb.eh

gv_calloc.exit.thread.i96:                        ; preds = %bb.eg
  %i.rs = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %copyPts.exit97

bb.eh:                                            ; preds = %bb.eg
  %mul.ov.i.i91 = icmp ugt i64 %i.rr, 1152921504606846975
  br i1 %mul.ov.i.i91, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.rt = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ru = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rt, ptr noundef nonnull @.str.47, i64 noundef %i.rr, i64 noundef 16) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.ej:                                            ; preds = %bb.eh
  %i.rv = call noalias ptr @calloc(i64 noundef %i.rr, i64 noundef 16) #28 ; 7 uses
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %bb.ek, label %.lr.ph.i92.preheader

.lr.ph.i92.preheader:                             ; preds = %bb.ej
  %xtraiter1132 = and i64 %i.rr, 3                ; 3 uses
  %i.rx = icmp ult i64 %i.rr, 4
  br i1 %i.rx, label %.lr.ph.i92.epil.preheader, label %.lr.ph.i92.preheader.new

.lr.ph.i92.preheader.new:                         ; preds = %.lr.ph.i92.preheader
  %unroll_iter1136 = and i64 %i.rr, 1152921504606846972
  br label %.lr.ph.i92

bb.ek:                                            ; preds = %bb.ej
  %i.ry = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.rz = shl nuw i64 %i.rr, 4
  %i.sa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ry, ptr noundef nonnull @.str.45, i64 noundef %i.rz) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

.lr.ph.i92:                                       ; preds = %.lr.ph.i92, %.lr.ph.i92.preheader.new
  %.013.i93 = phi i64 [ 0, %.lr.ph.i92.preheader.new ], [ %i.sq, %.lr.ph.i92 ] ; 6 uses
  %niter1137 = phi i64 [ 0, %.lr.ph.i92.preheader.new ], [ %niter1137.next.3, %.lr.ph.i92 ]
  %i.sb = getelementptr inbounds nuw [24 x i8], ptr %i.rq, i64 %.013.i93
  %i.sc = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %.013.i93
  %i.sd = load <2 x double>, ptr %i.sb, align 8, !tbaa !110
  store <2 x double> %i.sd, ptr %i.sc, align 8, !tbaa !110
  %i.se = or disjoint i64 %.013.i93, 1            ; 2 uses
  %i.sf = getelementptr inbounds nuw [24 x i8], ptr %i.rq, i64 %i.se
  %i.sg = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %i.se
  %i.sh = load <2 x double>, ptr %i.sf, align 8, !tbaa !110
  store <2 x double> %i.sh, ptr %i.sg, align 8, !tbaa !110
  %i.si = or disjoint i64 %.013.i93, 2            ; 2 uses
  %i.sj = getelementptr inbounds nuw [24 x i8], ptr %i.rq, i64 %i.si
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %i.si
  %i.sl = load <2 x double>, ptr %i.sj, align 8, !tbaa !110
  store <2 x double> %i.sl, ptr %i.sk, align 8, !tbaa !110
  %i.sm = or disjoint i64 %.013.i93, 3            ; 2 uses
  %i.sn = getelementptr inbounds nuw [24 x i8], ptr %i.rq, i64 %i.sm
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %i.sm
  %i.sp = load <2 x double>, ptr %i.sn, align 8, !tbaa !110
  store <2 x double> %i.sp, ptr %i.so, align 8, !tbaa !110
  %i.sq = add nuw nsw i64 %.013.i93, 4            ; 2 uses
  %niter1137.next.3 = add nuw nsw i64 %niter1137, 4 ; 2 uses
  %niter1137.ncmp.3 = icmp eq i64 %niter1137.next.3, %unroll_iter1136
  br i1 %niter1137.ncmp.3, label %copyPts.exit97.loopexit.unr-lcssa, label %.lr.ph.i92, !llvm.loop !256

copyPts.exit97.loopexit.unr-lcssa:                ; preds = %.lr.ph.i92
  %lcmp.mod1134.not = icmp eq i64 %xtraiter1132, 0
  br i1 %lcmp.mod1134.not, label %copyPts.exit97.loopexit, label %.lr.ph.i92.epil.preheader

.lr.ph.i92.epil.preheader:                        ; preds = %copyPts.exit97.loopexit.unr-lcssa, %.lr.ph.i92.preheader
  %.013.i93.epil.init = phi i64 [ 0, %.lr.ph.i92.preheader ], [ %i.sq, %copyPts.exit97.loopexit.unr-lcssa ]
  %lcmp.mod1135 = icmp ne i64 %xtraiter1132, 0
end_hunk_0
begin_hunk_1_@emit_clusters:bb.a

bb.j:                                             ; preds = %gv_alloc.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !tbaa.struct !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !tbaa.struct !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 168
  %i.av = load <2 x i32>, ptr %i.at, align 8, !tbaa !47
  store <2 x i32> %i.av, ptr %i.au, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !49
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store double %i.ax, ptr %i.ay, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !tbaa.struct !48
  br label %emit_begin_cluster.exit

bb.k:                                             ; preds = %gv_alloc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 168
  store i32 3, ptr %i.be, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  store double 1.000000e+00, ptr %i.bf, align 8, !tbaa !49
  br label %emit_begin_cluster.exit

emit_begin_cluster.exit:                          ; preds = %bb.j, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 1, ptr %i.bg, align 8, !tbaa !147
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.x, ptr %i.bh, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 1, ptr %i.bi, align 8, !tbaa !148
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 10 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !149
  call fastcc void @initObjMapData(ptr noundef nonnull %0, ptr noundef %i.bm, ptr noundef %i.x)
  call void @gvrender_begin_cluster(ptr noundef nonnull %0) #27
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !39  ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 248 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53
  %.not152 = icmp eq ptr %i.bp, null
  br i1 %.not152, label %bb.l, label %bb.m

bb.l:                                             ; preds = %emit_begin_cluster.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 352
  %i.br = load i16, ptr %i.bq, align 8
  %i.bs = trunc i16 %i.br to i1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %emit_begin_cluster.exit
  %i.bt = phi i1 [ true, %emit_begin_cluster.exit ], [ %i.bs, %bb.l ] ; 2 uses
  %i.bu = call ptr @agget(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.14) #27
  %i.bv = call ptr @setColorScheme(ptr noundef %i.bu) #27 ; 2 uses
  %brmerge.not = and i1 %.not151, %i.bt
  br i1 %brmerge.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @emit_map_rect(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %i.bx)
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 288
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 320
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !61
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 256
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !52
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.by, ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.ce) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 0, ptr %4, align 4
  %i.cf = call fastcc ptr @checkClusterStyle(ptr noundef nonnull %i.x, ptr noundef %4) ; 2 uses
  %.not153 = icmp eq ptr %i.cf, null
  br i1 %.not153, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @gvrender_set_style(ptr noundef nonnull %0, ptr noundef nonnull %i.cf) #27
  %i.cg = load i32, ptr %4, align 4               ; 2 uses
  %i.ch = trunc i32 %i.cg to i1
  %spec.select184 = and i32 %i.cg, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ci = phi i1 [ false, %bb.o ], [ %i.ch, %bb.p ]
  %.0138 = phi i32 [ 0, %bb.o ], [ %spec.select184, %bb.p ] ; 2 uses
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !304
  %i.cm = zext i8 %i.cl to i32                    ; 4 uses
  %i.cn = and i32 %i.cm, 1
  %.not154 = icmp eq i32 %i.cn, 0
  br i1 %.not154, label %bb.r, label %select.unfold

bb.r:                                             ; preds = %bb.q
  %i.co = and i32 %i.cm, 2
  %.not155 = icmp eq i32 %i.co, 0
  br i1 %.not155, label %bb.s, label %select.unfold

bb.s:                                             ; preds = %bb.r
  %i.cp = and i32 %i.cm, 8
  %.not156 = icmp eq i32 %i.cp, 0
  br i1 %.not156, label %bb.t, label %select.unfold

bb.t:                                             ; preds = %bb.s
  %i.cq = and i32 %i.cm, 4
  %.not157 = icmp eq i32 %i.cq, 0
  br i1 %.not157, label %bb.u, label %select.unfold

bb.u:                                             ; preds = %bb.t
  %i.cr = call ptr @agget(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.23) #27 ; 3 uses
  %.not158 = icmp eq ptr %i.cr, null
  br i1 %.not158, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14
  %.not159 = icmp eq i8 %i.cs, 0
  %spec.select185 = select i1 %.not159, ptr null, ptr %i.cr
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0134 = phi ptr [ null, %bb.u ], [ %spec.select185, %bb.v ] ; 4 uses
  %i.ct = call ptr @agget(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.24) #27 ; 3 uses
  %.not160 = icmp eq ptr %i.ct, null
  br i1 %.not160, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %.not161 = icmp eq i8 %i.cu, 0
  %spec.select186 = select i1 %.not161, ptr %.0134, ptr %i.ct
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1 = phi ptr [ %.0134, %bb.w ], [ %spec.select186, %bb.x ] ; 3 uses
  %i.cv = call ptr @agget(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.25) #27 ; 3 uses
  %.not162 = icmp eq ptr %i.cv, null
  br i1 %.not162, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %.not163 = icmp eq i8 %i.cw, 0
  %spec.select187 = select i1 %.not163, ptr %.0134, ptr %i.cv
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1136 = phi ptr [ %.0134, %bb.y ], [ %spec.select187, %bb.z ] ; 4 uses
  %i.cx = icmp ne ptr %.1136, null
  %or.cond = and i1 %i.ci, %i.cx
  br i1 %or.cond, label %select.unfold, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = call ptr @agget(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.26) #27 ; 3 uses
  %.not164 = icmp eq ptr %i.cy, null
  br i1 %.not164, label %select.unfold, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  %.not165 = icmp eq i8 %i.cz, 0                  ; 2 uses
  %spec.select = select i1 %.not165, i32 %.0138, i32 1
  %spec.select221 = select i1 %.not165, ptr %.1136, ptr %i.cy
  br label %select.unfold

select.unfold:                                    ; preds = %bb.ac, %bb.t, %bb.s, %bb.r, %bb.q, %bb.aa, %bb.ab
  %.1139 = phi i32 [ %.0138, %bb.ab ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.aa ], [ 1, %bb.t ], [ %spec.select, %bb.ac ]
  %.2137 = phi ptr [ %.1136, %bb.ab ], [ @.str.16, %bb.q ], [ @.str.18, %bb.r ], [ @.str.20, %bb.s ], [ %.1136, %bb.aa ], [ @.str.22, %bb.t ], [ %spec.select221, %bb.ac ] ; 2 uses
  %.2 = phi ptr [ %.1, %bb.ab ], [ @.str.15, %bb.q ], [ @.str.17, %bb.r ], [ @.str.19, %bb.s ], [ %.1, %bb.aa ], [ @.str.21, %bb.t ], [ %.1, %bb.ac ] ; 2 uses
  %.not166 = icmp eq ptr %.2, null
  %spec.store.select = select i1 %.not166, ptr @.str.27, ptr %.2 ; 3 uses
  %.not167 = icmp eq ptr %.2137, null
  %spec.store.select4 = select i1 %.not167, ptr @.str.28, ptr %.2137 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.not168 = icmp eq i32 %.1139, 0
  br i1 %.not168, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.da = call zeroext i1 @findStopColor(ptr noundef nonnull %spec.store.select4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.da, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr %i.a, align 16, !tbaa !105
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %i.db) #27
  %i.dc = load ptr, ptr %i.k, align 8, !tbaa !105 ; 2 uses
  %.not169 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr @G_gradientangle, align 8, !tbaa !167
  %i.de = call i32 @late_int(ptr noundef nonnull %i.x, ptr noundef %i.dd, i32 noundef 0, i32 noundef 0) #27
  %i.df = load double, ptr %i.b, align 8, !tbaa !110
  %.str.27. = select i1 %.not169, ptr @.str.27, ptr %i.dc
  call void @gvrender_set_gradient_vals(ptr noundef nonnull %0, ptr noundef nonnull %.str.27., i32 noundef %i.de, double noundef %i.df) #27
  %i.dg = load i32, ptr %4, align 4
  %5 = lshr i32 %i.dg, 1
  %6 = and i32 %5, 1
  %. = or disjoint i32 %6, 2
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull %spec.store.select4) #27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.2140 = phi i32 [ %., %bb.ae ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %select.unfold
  %.3 = phi i32 [ %.2140, %bb.ag ], [ 0, %select.unfold ] ; 5 uses
  %i.dh = load ptr, ptr @G_penwidth, align 8, !tbaa !167 ; 2 uses
  %.not171 = icmp eq ptr %i.dh, null
  br i1 %.not171, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = call ptr @agxget(ptr noundef nonnull %i.x, ptr noundef nonnull %i.dh) #27 ; 2 uses
  %.not172 = icmp eq ptr %i.di, null
  br i1 %.not172, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %.not173 = icmp eq i8 %i.dj, 0
  br i1 %.not173, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load ptr, ptr @G_penwidth, align 8, !tbaa !167
  %i.dl = call double @late_double(ptr noundef nonnull %i.x, ptr noundef %i.dk, double noundef 1.000000e+00, double noundef 0.000000e+00) #27
  call void @gvrender_set_penwidth(ptr noundef nonnull %0, double noundef %i.dl) #27
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.dm = load i32, ptr %4, align 4               ; 3 uses
  %i.dn = and i32 %i.dm, 4
  %.not174 = icmp eq i32 %i.dn, 0
  br i1 %.not174, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = load ptr, ptr @G_peripheries, align 8, !tbaa !167
  %i.dp = call i32 @late_int(ptr noundef nonnull %i.x, ptr noundef %i.do, i32 noundef 1, i32 noundef 0) #27 ; 2 uses
  %i.dq = or i32 %i.dp, %.3
  %or.cond3.not = icmp eq i32 %i.dq, 0
  br i1 %or.cond3.not, label %bb.az, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not178 = icmp eq i32 %i.dp, 0
  %i.dr = load ptr, ptr %i.bj, align 8, !tbaa !87 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false), !tbaa.struct !120
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false), !tbaa.struct !120
  %i.du = load double, ptr %i.l, align 16, !tbaa !121
  store double %i.du, ptr %i.m, align 16, !tbaa !121
  %i.dv = load double, ptr %i.n, align 8, !tbaa !126
  store double %i.dv, ptr %i.o, align 8, !tbaa !126
  %i.dw = load double, ptr %3, align 16, !tbaa !121
  store double %i.dw, ptr %i.p, align 16, !tbaa !121
  %i.dx = load double, ptr %i.q, align 8, !tbaa !126
  store double %i.dx, ptr %i.r, align 8, !tbaa !126
  br i1 %.not178, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull %spec.store.select) #27
  %.pre = load i32, ptr %4, align 4
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dy = phi i32 [ %i.dm, %bb.ap ], [ %.pre, %bb.ao ]
  call void @round_corners(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 4, i32 %i.dy, i32 noundef %.3) #27
  br label %bb.az

bb.ar:                                            ; preds = %bb.al
  %i.dz = and i32 %i.dm, 64
  %.not175 = icmp eq i32 %i.dz, 0
  br i1 %.not175, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = load ptr, ptr %i.bj, align 8, !tbaa !87 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !tbaa.struct !120
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !tbaa.struct !120
  %i.ed = load double, ptr %i.l, align 16, !tbaa !121
  store double %i.ed, ptr %i.m, align 16, !tbaa !121
  %i.ee = load double, ptr %i.n, align 8, !tbaa !126
  store double %i.ee, ptr %i.o, align 8, !tbaa !126
  %i.ef = load double, ptr %3, align 16, !tbaa !121
  store double %i.ef, ptr %i.p, align 16, !tbaa !121
  %i.eg = load double, ptr %i.q, align 8, !tbaa !126
  store double %i.eg, ptr %i.r, align 8, !tbaa !126
  %i.eh = load ptr, ptr @G_peripheries, align 8, !tbaa !167
  %i.ei = call i32 @late_int(ptr noundef nonnull %i.x, ptr noundef %i.eh, i32 noundef 1, i32 noundef 0) #27
  %i.ej = icmp eq i32 %i.ei, 0
  %.str.29.spec.store.select = select i1 %i.ej, ptr @.str.29, ptr %spec.store.select
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull %.str.29.spec.store.select) #27
  %i.ek = call i32 @stripedBox(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %spec.store.select4, i32 noundef 0)
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.em = call ptr @agnameof(ptr noundef nonnull %i.x) #27
  %i.en = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.30, ptr noundef %i.em) #27 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.eo = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  call void @gvrender_box(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %i.ep, i32 noundef 0) #27
  br label %bb.az

bb.av:                                            ; preds = %bb.ar
  %i.eq = load ptr, ptr @G_peripheries, align 8, !tbaa !167
  %i.er = call i32 @late_int(ptr noundef nonnull %i.x, ptr noundef %i.eq, i32 noundef 1, i32 noundef 0) #27
  %.not176 = icmp eq i32 %i.er, 0
  br i1 %.not176, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull %spec.store.select) #27
  %i.es = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  call void @gvrender_box(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %i.et, i32 noundef %.3) #27
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %.not177 = icmp eq i32 %.3, 0
  br i1 %.not177, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #27
  %i.eu = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  call void @gvrender_box(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %i.ev, i32 noundef %.3) #27
  br label %bb.az

bb.az:                                            ; preds = %bb.au, %bb.ax, %bb.ay, %bb.aw, %bb.aq, %bb.am
  %i.ew = load ptr, ptr %i.a, align 16, !tbaa !105
  call void @free(ptr noundef %i.ew) #27
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !105
  call void @free(ptr noundef %i.ex) #27
  %i.ey = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !149 ; 2 uses
  %.not179 = icmp eq ptr %i.fa, null
  br i1 %.not179, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @emit_label(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull %i.fa) #27
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br i1 %i.bt, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not151, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fb = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  call void @emit_map_rect(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %i.fc)
  %i.fd = load ptr, ptr %i.bo, align 8, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bn, i64 288
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !57
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bn, i64 320
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !61
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bn, i64 256
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !52
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.fd, ptr noundef %i.ff, ptr noundef %i.fh, ptr noundef %i.fj) #27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @gvrender_end_anchor(ptr noundef nonnull %0) #27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  br i1 %.not180, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fk = call ptr @agfstnode(ptr noundef nonnull %i.x) #27 ; 2 uses
  %.not181195 = icmp eq ptr %i.fk, null
  br i1 %.not181195, label %.loopexit, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.bg, %._crit_edge
  %.0133196 = phi ptr [ %i.fn, %._crit_edge ], [ %i.fk, %bb.bg ] ; 3 uses
  call fastcc void @emit_node(ptr noundef nonnull %0, ptr noundef nonnull %.0133196)
  %i.fl = call ptr @agfstout(ptr noundef %i.x, ptr noundef nonnull %.0133196) #27 ; 2 uses
  %.not182193 = icmp eq ptr %i.fl, null
  br i1 %.not182193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph198, %.lr.ph
  %.0194 = phi ptr [ %i.fm, %.lr.ph ], [ %i.fl, %.lr.ph198 ] ; 2 uses
  call fastcc void @emit_edge(ptr noundef nonnull %0, ptr noundef %.0194)
  %i.fm = call ptr @agnxtout(ptr noundef %i.x, ptr noundef nonnull %.0194) #27 ; 2 uses
  %.not182 = icmp eq ptr %i.fm, null
  br i1 %.not182, label %._crit_edge, label %.lr.ph, !llvm.loop !301
end_hunk_1
