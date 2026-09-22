Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres_sock_list?download=true
inline.NumInlined: 12
inline.NumDeleted: 11
begin_hunk_0_@_foreach_gres_sock_list_create:bb.a
  %i.pf = phi ptr [ %.pre.i78, %.critedge63.i ], [ %i.ms, %._crit_edge.i77 ], [ %i.ms, %.thread.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %_build_sock_gres_by_topo.exit

bb.ed:                                            ; preds = %bb.dl
  %i.pg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8
  %.not.i84 = icmp eq ptr %i.ph, null
  br i1 %.not.i84, label %bb.ee, label %_build_sock_gres_by_topo.exit.thread

bb.ee:                                            ; preds = %bb.ed
  %i.pi = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.pj = load i8, ptr %i.pi, align 8, !range !22, !noundef !23
  %i.pk = trunc nuw i8 %i.pj to i1                ; 2 uses
  br i1 %i.pk, label %._crit_edge111, label %bb.ef

._crit_edge111:                                   ; preds = %bb.ee
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.pre113 = load i64, ptr %.phi.trans.insert112, align 8
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.pl = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.pm = load i64, ptr %i.pl, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.po = load i64, ptr %i.pn, align 8            ; 2 uses
  %.not31.i = icmp ult i64 %i.pm, %i.po
  br i1 %.not31.i, label %bb.eg, label %_build_sock_gres_by_topo.exit.thread

bb.eg:                                            ; preds = %._crit_edge111, %bb.ef
  %i.pp = phi i64 [ %.pre113, %._crit_edge111 ], [ %i.po, %bb.ef ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.pr = load i64, ptr %i.pq, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.pt = load i64, ptr %i.ps, align 8
  %spec.select.i85 = call i64 @llvm.umax.i64(i64 %i.pr, i64 %i.pt)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.pv = load i64, ptr %i.pu, align 8
  %spec.select..i86 = call i64 @llvm.umax.i64(i64 %spec.select.i85, i64 %i.pv)
  %.1..i = call i64 @llvm.umax.i64(i64 %spec.select..i86, i64 1)
  br i1 %i.pk, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pw = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.px = load i64, ptr %i.pw, align 8
  %i.py = sub i64 %i.pp, %i.px
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %storemerge.i87 = phi i64 [ %i.py, %bb.eh ], [ %i.pp, %bb.eg ] ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.qa = load ptr, ptr %i.pz, align 8            ; 4 uses
  %i.qb = load i32, ptr %i.l, align 8             ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i88, label %_handle_gres_exc_basic.exit.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8            ; 2 uses
  %.not23.i.i = icmp eq ptr %i.qd, null
  br i1 %.not23.i.i, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8            ; 2 uses
  %.not24.i.i = icmp eq ptr %i.qf, null
  br i1 %.not24.i.i, label %bb.el, label %bb.en

bb.el:                                            ; preds = %bb.ek
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qh = load ptr, ptr %i.qg, align 8
  %.not25.i.i = icmp eq ptr %i.qh, null
  %spec.select38.i = select i1 %.not25.i.i, i64 %storemerge.i87, i64 0
  br label %_handle_gres_exc_basic.exit.i

bb.em:                                            ; preds = %bb.ej
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 152
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = sext i32 %i.qb to i64
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.qj, i64 %i.qk
  %i.qm = load i64, ptr %i.ql, align 8
  %spec.select.i.i89 = call i64 @llvm.usub.sat.i64(i64 %storemerge.i87, i64 %i.qm)
  br label %bb.eo

bb.en:                                            ; preds = %bb.ek
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 152
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = sext i32 %i.qb to i64
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.qp
  %i.qr = load i64, ptr %i.qq, align 8
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sink.i.i90 = phi i64 [ %i.qr, %bb.en ], [ %spec.select.i.i89, %bb.em ] ; 4 uses
  %i.qs = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.qt = and i64 %i.qs, 1
  %.not28.i.i91 = icmp eq i64 %i.qt, 0
  br i1 %.not28.i.i91, label %_handle_gres_exc_basic.exit.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.qu = call i32 @slurm_get_log_level() #5
  %i.qv = icmp sgt i32 %i.qu, 3
  br i1 %i.qv, label %bb.eq, label %_handle_gres_exc_basic.exit.i

bb.eq:                                            ; preds = %bb.ep
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._handle_gres_exc_basic, i32 noundef %i.qb, i64 noundef %.sink.i.i90) #5
  br label %_handle_gres_exc_basic.exit.i

_handle_gres_exc_basic.exit.i:                    ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.el, %bb.ei
  %.0.i = phi i64 [ %storemerge.i87, %bb.ei ], [ %spec.select38.i, %bb.el ], [ %.sink.i.i90, %bb.ep ], [ %.sink.i.i90, %bb.eo ], [ %.sink.i.i90, %bb.eq ] ; 3 uses
  %i.qw = icmp ult i64 %.0.i, %.1..i
  br i1 %i.qw, label %_build_sock_gres_by_topo.exit.thread, label %bb.er

bb.er:                                            ; preds = %_handle_gres_exc_basic.exit.i
  %i.qx = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 88, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 627, ptr noundef nonnull @__func__._build_sock_gres_basic) #5 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16 ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8
  %i.ra = add i64 %i.qz, %.0.i
  store i64 %i.ra, ptr %i.qy, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 64 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8
  %i.rd = add i64 %i.rc, %.0.i
  store i64 %i.rd, ptr %i.rb, align 8
  br label %_build_sock_gres_by_topo.exit.thread95

_build_sock_gres_by_topo.exit:                    ; preds = %.split.i, %_build_sock_gres_by_type.exit
  %.0 = phi ptr [ %i.bu, %.split.i ], [ %i.pf, %_build_sock_gres_by_type.exit ] ; 2 uses
  %.not70 = icmp eq ptr %.0, null
  br i1 %.not70, label %_build_sock_gres_by_topo.exit.thread, label %_build_sock_gres_by_topo.exit.thread95

_build_sock_gres_by_topo.exit.thread:             ; preds = %_handle_gres_exc_basic.exit.i, %bb.ef, %bb.ed, %.thread30.i, %bb.p, %bb.l, %_build_sock_gres_by_topo.exit
  %i.re = load ptr, ptr %i.ak, align 8
  call void @slurm_bit_clear_all(ptr noundef %i.re) #5
  %i.rf = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8            ; 2 uses
  %.not71 = icmp eq ptr %i.rg, null
  br i1 %.not71, label %bb.et, label %bb.es

bb.es:                                            ; preds = %_build_sock_gres_by_topo.exit.thread
  call void @slurm_list_destroy(ptr noundef nonnull %i.rg) #5
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %_build_sock_gres_by_topo.exit.thread
  store ptr null, ptr %i.rf, align 8
  br label %bb.eu

_build_sock_gres_by_topo.exit.thread95:           ; preds = %bb.er, %bb.dk, %_build_sock_gres_by_topo.exit
  %.098 = phi ptr [ %.0, %_build_sock_gres_by_topo.exit ], [ %i.qx, %bb.er ], [ %i.bu, %bb.dk ] ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ri = load i8, ptr %i.rh, align 8, !range !22, !noundef !23
  %i.rj = getelementptr inbounds nuw i8, ptr %.098, i64 80
  store i8 %i.ri, ptr %i.rj, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %.098, i64 32
  store ptr %0, ptr %i.rk, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %.098, i64 40
  store ptr %i.j, ptr %i.rl, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.rn = load ptr, ptr %i.rm, align 8
  call void @slurm_list_append(ptr noundef %i.rn, ptr noundef nonnull %.098) #5
  br label %bb.eu

bb.eu:                                            ; preds = %_build_sock_gres_by_topo.exit.thread95, %bb.et, %bb.f
  %.054 = phi i32 [ 0, %_build_sock_gres_by_topo.exit.thread95 ], [ -1, %bb.et ], [ -1, %bb.f ]
  ret i32 %.054
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @gres_get_gpu_plugin_id() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @slurm_list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @slurm_gres_find_id(ptr noundef, ptr noundef) #2

declare ptr @slurm_bit_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_restricted_gpu(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 21 uses
  %i.c = tail call i32 @gres_find_gpu_or_alt(ptr noundef %0, ptr noundef null) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i16, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i16, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.s = zext i32 %i.l to i64                     ; 3 uses
  %i.t = tail call ptr @slurm_xcalloc(i64 noundef %i.s, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 712, ptr noundef nonnull @__func__._pick_restricted_cores) #5
  store ptr %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 9 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr @node_record_count, align 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = zext i32 %i.y to i64
  %i.ab = tail call ptr @slurm_xcalloc(i64 noundef %i.aa, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 718, ptr noundef nonnull @__func__._pick_restricted_cores) #5 ; 2 uses
  store ptr %i.ab, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = phi ptr [ %i.x, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ad = zext i32 %i.r to i64                    ; 8 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %.not65.i = icmp eq ptr %i.af, null
  br i1 %.not65.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @slurm_bit_free(ptr noundef nonnull %i.ae) #5
  %.pre.i = load ptr, ptr %i.w, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = phi ptr [ %.pre.i, %bb.e ], [ %i.ac, %bb.d ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ad
  store ptr null, ptr %i.ah, align 8
  %i.ai = tail call i64 @slurm_bit_size(ptr noundef %i.d) #5
  %i.aj = tail call ptr @slurm_bit_alloc(i64 noundef %i.ai) #5
  %i.ak = load ptr, ptr %i.w, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ad
  store ptr %i.aj, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 4 uses
  %i.an = load i16, ptr %i.am, align 8
  %.not110.i = icmp eq i16 %i.an, 0
  br i1 %.not110.i, label %_pick_restricted_cores.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 3 uses
  %i.ar = zext i16 %i.n to i32                    ; 2 uses
  %.not114.i = icmp eq i16 %i.n, 0
  %i.as = zext i16 %i.p to i32                    ; 6 uses
  %i.at = and i32 %i.l, 65535                     ; 3 uses
  %.not112.i = icmp eq i32 %i.at, 0
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add i32 %i.l, -1
  %i.aw = zext i32 %i.av to i64
  %.not113.i = icmp eq i32 %i.l, 0
  br i1 %.not114.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %.not111.i = icmp eq i16 %i.p, 0
  br i1 %.not111.i, label %.lr.ph.split.us.split.i, label %.lr.ph.split.us.split.us.preheader.i

.lr.ph.split.us.split.us.preheader.i:             ; preds = %.lr.ph.split.us.i
  %i.ax = zext i16 %i.p to i64                    ; 2 uses
  %2 = add nsw i32 %i.as, -1
  %3 = add nsw i32 %i.ar, -1
  %wide.trip.count135.i = zext i16 %i.n to i64
  br label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.us.i:                       ; preds = %..loopexit_crit_edge.us.us.i, %.lr.ph.split.us.split.us.preheader.i
  %indvars.iv153.i = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.i ], [ %indvars.iv.next154.i, %..loopexit_crit_edge.us.us.i ] ; 5 uses
  %i.ay = load ptr, ptr %i.ao, align 8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv153.i
  %i.ba = load ptr, ptr %i.az, align 8
  %.not66.us.us.i = icmp eq ptr %i.ba, null
  br i1 %.not66.us.us.i, label %..loopexit_crit_edge.us.us.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.split.us.i
  %i.bb = load ptr, ptr %i.ap, align 8
  %.not67.us.us.i = icmp eq ptr %i.bb, null
  br i1 %.not67.us.us.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load i32, ptr %i.v, align 8
  %i.bd = load ptr, ptr %i.aq, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv153.i
  %i.bf = load i32, ptr %i.be, align 4
  %.not68.us.us.i = icmp eq i32 %i.bc, %i.bf
  br i1 %.not68.us.us.i, label %bb.i, label %..loopexit_crit_edge.us.us.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bg = load i32, ptr %0, align 8
  %i.bh = call zeroext i1 @gres_id_shared(i32 noundef %i.bg) #5
  br i1 %i.bh, label %bb.o, label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %bb.i
  %i.bi = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.aw ; 3 uses
  br i1 %.not112.i, label %.lr.ph77.split.split.split.us.split.us96.us.i.a, label %.lr.ph75.us.us.us.us.i

.lr.ph77.split.split.split.us.split.us96.us.i.a:  ; preds = %.preheader.us.us.i
  br i1 %.not113.i, label %vector.body, label %.lr.ph75.us84.us.us.us.i

vector.body:                                      ; preds = %.lr.ph77.split.split.split.us.split.us96.us.i.a
  %4 = load i32, ptr %i.bj, align 4               ; 2 uses
  %invariant.op.us.us.i = add i32 %4, 1
  %5 = add i32 %4, %i.as
  %smin.i = call i32 @llvm.smin.i32(i32 %2, i32 %invariant.op.us.us.i)
  %6 = sub i32 %5, %smin.i
  %7 = udiv i32 %6, %i.as
  %.not174.i = icmp ugt i32 %7, %3
  br i1 %.not174.i, label %..loopexit_crit_edge.us.us.i, label %_pick_core_group.exit.us.i, !llvm.loop !24

.lr.ph75.us84.us.us.us.i:                         ; preds = %.lr.ph77.split.split.split.us.split.us96.us.i.a, %..critedge_crit_edge.split.us.split.us.us.us.us.us.i
  %.06176.us85.us.us.us.i = phi i32 [ %i.bv, %..critedge_crit_edge.split.us.split.us.us.us.us.us.i ], [ 0, %.lr.ph77.split.split.split.us.split.us96.us.i.a ] ; 2 uses
  %i.bk = mul nuw i32 %.06176.us85.us.us.us.i, %i.as
  %invariant.op59 = sub i32 1, %i.bk
  br label %_pick_core_group.exit.us.us.us.us.us.us.i

_pick_core_group.exit.us.us.us.us.us.us.i:        ; preds = %._crit_edge.us.us.us.us.us.us.i, %.lr.ph75.us84.us.us.us.i
  %i.bl = load i32, ptr %i.bj, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_pick_core_group.exit.us.us.us.us.us.us.i
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %bb.j ], [ 0, %_pick_core_group.exit.us.us.us.us.us.us.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv145.i ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = sext i32 %i.bn to i64
  call void @slurm_bit_set(ptr noundef %i.f, i64 noundef %i.bo) #5
  %i.bp = load ptr, ptr %i.w, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ad
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load i32, ptr %i.bm, align 4
  %i.bt = sext i32 %i.bs to i64
  call void @slurm_bit_set(ptr noundef %i.br, i64 noundef %i.bt) #5
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next146.i, %i.s
  br i1 %exitcond150.not.i, label %._crit_edge.us.us.us.us.us.us.i, label %bb.j, !llvm.loop !25

._crit_edge.us.us.us.us.us.us.i:                  ; preds = %bb.j
  %.reass183.i.reass.reass = add i32 %i.bl, %invariant.op59
  %i.bu = icmp slt i32 %.reass183.i.reass.reass, %i.as
  br i1 %i.bu, label %_pick_core_group.exit.us.us.us.us.us.us.i, label %..critedge_crit_edge.split.us.split.us.us.us.us.us.i, !llvm.loop !24

..critedge_crit_edge.split.us.split.us.us.us.us.us.i: ; preds = %._crit_edge.us.us.us.us.us.us.i
  %i.bv = add nuw nsw i32 %.06176.us85.us.us.us.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i32 %i.bv, %i.ar
  br i1 %exitcond151.not.i, label %..loopexit_crit_edge.us.us.i, label %.lr.ph75.us84.us.us.us.i, !llvm.loop !26

.lr.ph75.us.us.us.us.i:                           ; preds = %.preheader.us.us.i, %.critedge.us.us.us.us.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i, %.critedge.us.us.us.us.i ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 3 uses
  %i.bw = mul nuw nsw i64 %indvars.iv.next132.i, %i.ax ; 3 uses
  %i.bx = mul nuw nsw i64 %indvars.iv131.i, %i.ax
  %i.by = trunc nuw nsw i64 %i.bx to i32          ; 2 uses
  %invariant.op = sub i32 1, %i.by
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.us.us.us.us109.us.i, %.lr.ph75.us.us.us.us.i
  %.06073.us.us.us.us.us.i = phi i32 [ 0, %.lr.ph75.us.us.us.us.i ], [ %.reass.i.reass.reass.reass, %._crit_edge.us.us.us.us109.us.i ]
  %i.bz = add nsw i32 %.06073.us.us.us.us.us.i, %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.ao, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv153.i
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = sext i32 %i.bz to i64
  %i.ce = icmp sgt i64 %i.bw, %i.cd
  br i1 %i.ce, label %.lr.ph.split.preheader.i.us.us.us.us.us.i, label %_pick_core_group.exit.us79.us.us.us.us.i

.lr.ph.split.preheader.i.us.us.us.us.us.i:        ; preds = %bb.k, %.outer.i.us.us.us.us.us.i
  %indvars.iv23.i.us.us.us.us.us.i = phi i64 [ %indvars.iv.next24.i.us.us.us.us.us.i, %.outer.i.us.us.us.us.us.i ], [ 0, %bb.k ] ; 3 uses
  %.015.ph15.i.us.us.us.us.us.i = phi i32 [ %i.cl, %.outer.i.us.us.us.us.us.i ], [ %i.bz, %bb.k ]
  %i.cf = sext i32 %.015.ph15.i.us.us.us.us.us.i to i64
  br label %.lr.ph.split.i.us.us.us.us.us.i

.lr.ph.split.i.us.us.us.us.us.i:                  ; preds = %bb.m, %.lr.ph.split.preheader.i.us.us.us.us.us.i
  %indvars.iv.i.us.us.us.us.us.i = phi i64 [ %i.cf, %.lr.ph.split.preheader.i.us.us.us.us.us.i ], [ %indvars.iv.next.i.us.us.us.us.us.i, %bb.m ] ; 4 uses
  %i.cg = call i32 @slurm_bit_test(ptr noundef %i.cc, i64 noundef %indvars.iv.i.us.us.us.us.us.i) #5
  %.not.i.us.us.us.us.us.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.us.us.us.us.us.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i.us.us.us.us.us.i
  %i.ch = call i32 @slurm_bit_test(ptr noundef %i.d, i64 noundef %indvars.iv.i.us.us.us.us.us.i) #5
  %.not16.i.us.us.us.us.us.i = icmp eq i32 %i.ch, 0
  br i1 %.not16.i.us.us.us.us.us.i, label %bb.m, label %.outer.i.us.us.us.us.us.i

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.i.us.us.us.us.us.i
  %indvars.iv.next.i.us.us.us.us.us.i = add nsw i64 %indvars.iv.i.us.us.us.us.us.i, 1 ; 2 uses
  %i.ci = icmp slt i64 %indvars.iv.next.i.us.us.us.us.us.i, %i.bw
  br i1 %i.ci, label %.lr.ph.split.i.us.us.us.us.us.i, label %.outer._crit_edge.loopexit.i.us.us.us.us.us.i, !llvm.loop !27

.outer.i.us.us.us.us.us.i:                        ; preds = %bb.l
  %i.cj = trunc nsw i64 %indvars.iv.i.us.us.us.us.us.i to i32 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv23.i.us.us.us.us.us.i
  store i32 %i.cj, ptr %i.ck, align 4
  %indvars.iv.next24.i.us.us.us.us.us.i = add nuw nsw i64 %indvars.iv23.i.us.us.us.us.us.i, 1 ; 3 uses
  %i.cl = add nsw i32 %i.cj, 1                    ; 2 uses
  %i.cm = icmp ne i64 %indvars.iv.next24.i.us.us.us.us.us.i, %i.au
  %i.cn = sext i32 %i.cl to i64
  %i.co = icmp sgt i64 %i.bw, %i.cn
  %i.cp = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %i.cp, label %.lr.ph.split.preheader.i.us.us.us.us.us.i, label %_pick_core_group.exit.us79.us.us.us.us.loopexit.i, !llvm.loop !27

.outer._crit_edge.loopexit.i.us.us.us.us.us.i:    ; preds = %bb.m
  %i.cq = trunc nuw nsw i64 %indvars.iv23.i.us.us.us.us.us.i to i32
  br label %_pick_core_group.exit.us79.us.us.us.us.i

_pick_core_group.exit.us79.us.us.us.us.loopexit.i: ; preds = %.outer.i.us.us.us.us.us.i
  %indvars.i = trunc i64 %indvars.iv.next24.i.us.us.us.us.us.i to i32
  br label %_pick_core_group.exit.us79.us.us.us.us.i

_pick_core_group.exit.us79.us.us.us.us.i:         ; preds = %_pick_core_group.exit.us79.us.us.us.us.loopexit.i, %.outer._crit_edge.loopexit.i.us.us.us.us.us.i, %bb.k
  %.0.ph.lcssa.i.us.us.us.us.us.i = phi i32 [ %i.cq, %.outer._crit_edge.loopexit.i.us.us.us.us.us.i ], [ 0, %bb.k ], [ %indvars.i, %_pick_core_group.exit.us79.us.us.us.us.loopexit.i ]
  %i.cr = icmp eq i32 %.0.ph.lcssa.i.us.us.us.us.us.i, %i.at
  br i1 %i.cr, label %.lr.ph.us.us.us.us.us.i, label %.critedge.us.us.us.us.i

.lr.ph.us.us.us.us.us.i:                          ; preds = %_pick_core_group.exit.us79.us.us.us.us.i
  %i.cs = load i32, ptr %i.bj, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.us.us.us.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %.lr.ph.us.us.us.us.us.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = sext i32 %i.cu to i64
  call void @slurm_bit_set(ptr noundef %i.f, i64 noundef %i.cv) #5
  %i.cw = load ptr, ptr %i.w, align 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ad
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = load i32, ptr %i.ct, align 4
  %i.da = sext i32 %i.cz to i64
  call void @slurm_bit_set(ptr noundef %i.cy, i64 noundef %i.da) #5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.s
  br i1 %exitcond.not.i, label %._crit_edge.us.us.us.us109.us.i, label %bb.n, !llvm.loop !25

._crit_edge.us.us.us.us109.us.i:                  ; preds = %bb.n
  %.reass.i.reass.reass.reass = add i32 %i.cs, %invariant.op ; 2 uses
  %i.db = icmp slt i32 %.reass.i.reass.reass.reass, %i.as
  br i1 %i.db, label %bb.k, label %.critedge.us.us.us.us.i, !llvm.loop !24

.critedge.us.us.us.us.i:                          ; preds = %._crit_edge.us.us.us.us109.us.i, %_pick_core_group.exit.us79.us.us.us.us.i
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next132.i, %wide.trip.count135.i
  br i1 %exitcond136.not.i, label %..loopexit_crit_edge.us.us.i, label %.lr.ph75.us.us.us.us.i, !llvm.loop !26

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.dc = call ptr @slurm_bit_copy(ptr noundef %i.d) #5 ; 2 uses
  store ptr %i.dc, ptr %i.b, align 8
  %i.dd = load ptr, ptr %i.ao, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv153.i
  %i.df = load ptr, ptr %i.de, align 8
  call void @slurm_bit_and(ptr noundef %i.dc, ptr noundef %i.df) #5
  %i.dg = load ptr, ptr %i.b, align 8
  call void @slurm_bit_or(ptr noundef %i.f, ptr noundef %i.dg) #5
  %i.dh = load ptr, ptr %i.w, align 8
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ad
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load ptr, ptr %i.b, align 8
  call void @slurm_bit_or(ptr noundef %i.dj, ptr noundef %i.dk) #5
  %i.dl = load ptr, ptr %i.b, align 8
  %.not69.us.us.i = icmp eq ptr %i.dl, null
  br i1 %.not69.us.us.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #5
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %..loopexit_crit_edge.us.us.i

..loopexit_crit_edge.us.us.i:                     ; preds = %.critedge.us.us.us.us.i, %..critedge_crit_edge.split.us.split.us.us.us.us.us.i, %bb.q, %vector.body, %bb.h, %.lr.ph.split.us.split.us.i
  %indvars.iv.next154.i = add nuw nsw i64 %indvars.iv153.i, 1 ; 2 uses
  %i.dm = load i16, ptr %i.am, align 8
  %i.dn = zext i16 %i.dm to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next154.i, %i.dn
  br i1 %i.do, label %.lr.ph.split.us.split.us.i, label %_pick_restricted_cores.exit, !llvm.loop !28

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i, %.preheader.us.i
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %.preheader.us.i ], [ 0, %.lr.ph.split.us.i ] ; 4 uses
  %i.dp = load ptr, ptr %i.ao, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv157.i
  %i.dr = load ptr, ptr %i.dq, align 8
  %.not66.us.i = icmp eq ptr %i.dr, null
  br i1 %.not66.us.i, label %.preheader.us.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us.split.i
  %i.ds = load ptr, ptr %i.ap, align 8
  %.not67.us.i = icmp eq ptr %i.ds, null
  br i1 %.not67.us.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = load i32, ptr %i.v, align 8
  %i.du = load ptr, ptr %i.aq, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv157.i
  %i.dw = load i32, ptr %i.dv, align 4
  %.not68.us.i = icmp eq i32 %i.dt, %i.dw
  br i1 %.not68.us.i, label %bb.t, label %.preheader.us.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dx = load i32, ptr %0, align 8
  %i.dy = call zeroext i1 @gres_id_shared(i32 noundef %i.dx) #5
  br i1 %i.dy, label %bb.u, label %.preheader.us.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.dz = call ptr @slurm_bit_copy(ptr noundef %i.d) #5 ; 2 uses
  store ptr %i.dz, ptr %i.b, align 8
  %i.ea = load ptr, ptr %i.ao, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv157.i
  %i.ec = load ptr, ptr %i.eb, align 8
  call void @slurm_bit_and(ptr noundef %i.dz, ptr noundef %i.ec) #5
  %i.ed = load ptr, ptr %i.b, align 8
  call void @slurm_bit_or(ptr noundef %i.f, ptr noundef %i.ed) #5
  %i.ee = load ptr, ptr %i.w, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ad
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.b, align 8
  call void @slurm_bit_or(ptr noundef %i.eg, ptr noundef %i.eh) #5
  %i.ei = load ptr, ptr %i.b, align 8
  %.not69.us.i = icmp eq ptr %i.ei, null
  br i1 %.not69.us.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.w, %bb.t, %bb.s, %.lr.ph.split.us.split.i
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %i.ej = load i16, ptr %i.am, align 8
  %i.ek = zext i16 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next158.i, %i.ek
  br i1 %i.el, label %.lr.ph.split.us.split.i, label %_pick_restricted_cores.exit, !llvm.loop !28

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %.preheader.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.em = load ptr, ptr %i.ao, align 8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv161.i
  %i.eo = load ptr, ptr %i.en, align 8
  %.not66.i = icmp eq ptr %i.eo, null
  br i1 %.not66.i, label %.preheader.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.ep = load ptr, ptr %i.ap, align 8
  %.not67.i = icmp eq ptr %i.ep, null
  br i1 %.not67.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = load i32, ptr %i.v, align 8
  %i.er = load ptr, ptr %i.aq, align 8
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv161.i
  %i.et = load i32, ptr %i.es, align 4
  %.not68.i = icmp eq i32 %i.eq, %i.et
  br i1 %.not68.i, label %bb.z, label %.preheader.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eu = load i32, ptr %0, align 8
  %i.ev = call zeroext i1 @gres_id_shared(i32 noundef %i.eu) #5
  br i1 %i.ev, label %bb.aa, label %.preheader.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.ew = call ptr @slurm_bit_copy(ptr noundef %i.d) #5 ; 2 uses
  store ptr %i.ew, ptr %i.b, align 8
  %i.ex = load ptr, ptr %i.ao, align 8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv161.i
  %i.ez = load ptr, ptr %i.ey, align 8
  call void @slurm_bit_and(ptr noundef %i.ew, ptr noundef %i.ez) #5
  %i.fa = load ptr, ptr %i.b, align 8
  call void @slurm_bit_or(ptr noundef %i.f, ptr noundef %i.fa) #5
  %i.fb = load ptr, ptr %i.w, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ad
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = load ptr, ptr %i.b, align 8
  call void @slurm_bit_or(ptr noundef %i.fd, ptr noundef %i.fe) #5
  %i.ff = load ptr, ptr %i.b, align 8
  %.not69.i = icmp eq ptr %i.ff, null
  br i1 %.not69.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %.preheader.i

_pick_core_group.exit.us.i:                       ; preds = %vector.body, %_pick_core_group.exit.us.i
  br label %_pick_core_group.exit.us.i

.preheader.i:                                     ; preds = %bb.ac, %bb.z, %bb.y, %.lr.ph.split.i
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %i.fg = load i16, ptr %i.am, align 8
  %i.fh = zext i16 %i.fg to i64
  %i.fi = icmp samesign ult i64 %indvars.iv.next162.i, %i.fh
  br i1 %i.fi, label %.lr.ph.split.i, label %_pick_restricted_cores.exit, !llvm.loop !28

_pick_restricted_cores.exit:                      ; preds = %..loopexit_crit_edge.us.us.i, %.preheader.us.i, %.preheader.i, %bb.f
  call void @slurm_xfree(ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %_pick_restricted_cores.exit
  ret i32 0
}

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #2

declare i32 @gres_find_gpu_or_alt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @slurm_bit_alloc(i64 noundef) local_unnamed_addr #2

declare i64 @slurm_bit_size(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gres_id_shared(i32 noundef) local_unnamed_addr #2

declare void @slurm_bit_or(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_bit_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @gres_id_sharing(i32 noundef) local_unnamed_addr #2

declare i32 @slurm_gres_find_job_by_key_exact_type(ptr noundef, ptr noundef) #2

declare i64 @slurm_bit_ffs(ptr noundef) local_unnamed_addr #2

declare void @slurm_bit_clear_all(ptr noundef) local_unnamed_addr #2

declare void @slurm_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gres_use_busy_dev(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @slurm_bit_overlap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @slurm_error(ptr noundef, ...) local_unnamed_addr #2

declare void @slurm_bit_nclear(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @slurm_get_log_level() local_unnamed_addr #2

declare void @slurm_log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @bit_and_not(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @slurm_bit_set_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_sock_gres_log(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.f = tail call i32 @slurm_get_log_level() #5
  %i.g = icmp sgt i32 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._foreach_sock_gres_log, ptr noundef %i.j, ptr noundef %i.l, i64 noundef %i.n, i64 noundef %i.p) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call ptr @slurm_bit_fmt(ptr noundef nonnull %i.a, i32 noundef 32, ptr noundef nonnull %i.q) #5 ; 0 uses
  %i.s = load ptr, ptr %0, align 8
  %i.t = call i64 @slurm_bit_size(ptr noundef %i.s) #5
  %i.u = trunc i64 %i.t to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026 = phi i32 [ %i.u, %bb.d ], [ -1, %bb.c ]
  %i.v = call i32 @slurm_get_log_level() #5
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._foreach_sock_gres_log, i64 noundef %i.y, ptr noundef nonnull %i.a, i32 noundef %.026) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.n, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0

bb.h:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 6 uses
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.a, align 16
  %i.ai = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.ai, null
  br i1 %.not30, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not31 = icmp eq ptr %i.ak, null
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = call ptr @slurm_bit_fmt(ptr noundef nonnull %i.a, i32 noundef 32, ptr noundef nonnull %i.ak) #5 ; 0 uses
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i64 @slurm_bit_size(ptr noundef %i.ao) #5
  %i.aq = trunc i64 %i.ap to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.1 = phi i32 [ %i.aq, %bb.k ], [ -1, %bb.j ], [ -1, %bb.i ]
  %i.ar = call i32 @slurm_get_log_level() #5
  %i.as = icmp sgt i32 %i.ar, 2
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ac, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.9, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._foreach_sock_gres_log, i32 noundef %i.aw, i64 noundef %i.av, ptr noundef nonnull %i.a, i32 noundef %.1) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.z, align 8
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.h, label %._crit_edge, !llvm.loop !29
}

declare ptr @slurm_bit_fmt(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !8, !9}
!11 = distinct !{!11, !8, !9}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !8, !9}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !8, !9}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !8, !9}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !8, !9}
!27 = distinct !{!27, !8, !9}
!28 = distinct !{!28, !8, !9}
!29 = distinct !{!29, !8, !9}
end_hunk_0
