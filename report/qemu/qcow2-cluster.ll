Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qcow2-cluster?download=true
inline.NumInlined: 195
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@calculate_l2_meta:bb.a
  br i1 %6, label %bb.al, label %bb.p

bb.p:                                             ; preds = %._crit_edge.loopexit, %._crit_edge
  %i.da = getelementptr i8, ptr %i.c, i64 384     ; 4 uses
  %.val180 = load i64, ptr %i.da, align 8         ; 2 uses
  %i.db = trunc i64 %.val180 to i32
  %i.dc = lshr i32 %i.db, 4
  %i.dd = and i32 %i.dc, 1
  %i.de = shl i32 %i.i, %i.dd
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = tail call noundef i64 @llvm.bswap.i64(i64 %i.dh)
  %i.dj = and i64 %.val180, 16
  %.not.i190 = icmp eq i64 %i.dj, 0
  br i1 %.not.i190, label %get_l2_bitmap.exit192, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = shl i32 %i.i, 1
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %4, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = tail call noundef i64 @llvm.bswap.i64(i64 %i.do)
  br label %get_l2_bitmap.exit192

get_l2_bitmap.exit192:                            ; preds = %bb.p, %bb.q
  %.0.i191 = phi i64 [ %i.dp, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.dq = getelementptr i8, ptr %i.c, i64 12      ; 4 uses
  %.val173 = load i32, ptr %i.dq, align 4
  %i.dr = getelementptr i8, ptr %i.c, i64 20      ; 3 uses
  %.val174 = load i32, ptr %i.dr, align 4
  %i.ds = zext nneg i32 %.val173 to i64
  %i.dt = ashr i64 %2, %i.ds
  %i.du = add i32 %.val174, -1
  %i.dv = trunc i64 %i.dt to i32
  %i.dw = and i32 %i.du, %i.dv                    ; 6 uses
  %i.dx = tail call fastcc i32 @qcow2_get_subcluster_type(ptr noundef %0, i64 noundef %i.di, i64 noundef %.0.i191, i32 noundef %i.dw) ; 2 uses
  br i1 %6, label %bb.v, label %bb.r

bb.r:                                             ; preds = %get_l2_bitmap.exit192
  switch i32 %i.dx, label %bb.u [
    i32 5, label %bb.x
    i32 4, label %bb.s
    i32 3, label %bb.s
    i32 1, label %bb.s
    i32 2, label %.sink.split
    i32 0, label %.sink.split
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r
  %.val170 = load i64, ptr %i.da, align 8
  %i.dy = and i64 %.val170, 16
  %.not198 = icmp eq i64 %i.dy, 0
  br i1 %.not198, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = trunc i64 %.0.i191 to i32
  %i.ea = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dz, i1 false)
  %i.eb = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.ea)
  br label %.sink.split

bb.u:                                             ; preds = %bb.r
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 1240, ptr noundef nonnull @__func__.calculate_l2_meta, ptr noundef null) #15
  unreachable

bb.v:                                             ; preds = %get_l2_bitmap.exit192
  switch i32 %i.dx, label %bb.w [
    i32 4, label %bb.x
    i32 3, label %.sink.split
    i32 1, label %.sink.split
  ]

bb.w:                                             ; preds = %bb.v
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 1252, ptr noundef nonnull @__func__.calculate_l2_meta, ptr noundef null) #15
  unreachable

.sink.split:                                      ; preds = %bb.v, %bb.v, %bb.r, %bb.r, %bb.t
  %.sink = phi i32 [ %i.dw, %bb.r ], [ %i.eb, %bb.t ], [ %i.dw, %bb.r ], [ %i.dw, %bb.v ], [ %i.dw, %bb.v ]
  %i.ec = load i32, ptr %i.dq, align 4
  %i.ed = shl i32 %.sink, %i.ec
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.v, %bb.s, %bb.r
  %.0157 = phi i32 [ 0, %bb.s ], [ %i.n, %bb.v ], [ 0, %bb.r ], [ %i.ed, %.sink.split ] ; 2 uses
  %i.ee = add i32 %i.i, -1
  %i.ef = add i32 %i.ee, %i.s                     ; 2 uses
  %.val179 = load i64, ptr %i.da, align 8         ; 2 uses
  %i.eg = trunc i64 %.val179 to i32
  %i.eh = lshr i32 %i.eg, 4
  %i.ei = and i32 %i.eh, 1
  %i.ej = shl i32 %i.ef, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8
  %i.en = tail call noundef i64 @llvm.bswap.i64(i64 %i.em)
  %i.eo = and i64 %.val179, 16
  %.not.i193 = icmp eq i64 %i.eo, 0
  br i1 %.not.i193, label %get_l2_bitmap.exit195, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = shl i32 %i.ef, 1
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr [8 x i8], ptr %4, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = tail call noundef i64 @llvm.bswap.i64(i64 %i.et)
  br label %get_l2_bitmap.exit195

get_l2_bitmap.exit195:                            ; preds = %bb.x, %bb.y
  %.0.i194 = phi i64 [ %i.eu, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.ev = zext i32 %3 to i64
  %i.ew = add i64 %2, -1
  %i.ex = add i64 %i.ew, %i.ev
  %.val171 = load i32, ptr %i.dq, align 4
  %.val172 = load i32, ptr %i.dr, align 4
  %i.ey = zext nneg i32 %.val171 to i64
  %i.ez = ashr i64 %i.ex, %i.ey
  %i.fa = add i32 %.val172, -1
  %i.fb = trunc i64 %i.ez to i32
  %i.fc = and i32 %i.fa, %i.fb                    ; 2 uses
  %i.fd = tail call fastcc i32 @qcow2_get_subcluster_type(ptr noundef %0, i64 noundef %i.en, i64 noundef %.0.i194, i32 noundef %i.fc) ; 2 uses
  br i1 %6, label %bb.af, label %bb.z

bb.z:                                             ; preds = %get_l2_bitmap.exit195
  switch i32 %i.fd, label %bb.ae [
    i32 5, label %bb.aa
    i32 4, label %bb.ab
    i32 3, label %bb.ab
    i32 1, label %bb.ab
    i32 2, label %bb.ad
    i32 0, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.fe = load i32, ptr %i.j, align 4             ; 2 uses
  %i.ff = add i32 %i.o, -1
  %i.fg = add i32 %i.ff, %i.fe
  %i.fh = sub i32 0, %i.fe
  %i.fi = and i32 %i.fg, %i.fh
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z, %bb.z, %bb.z
  %i.fj = load i32, ptr %i.j, align 4             ; 2 uses
  %i.fk = add i32 %i.o, -1
  %i.fl = add i32 %i.fk, %i.fj
  %i.fm = sub i32 0, %i.fj
  %i.fn = and i32 %i.fl, %i.fm                    ; 2 uses
  %.val169 = load i64, ptr %i.da, align 8
  %i.fo = and i64 %.val169, 16
  %.not199 = icmp eq i64 %i.fo, 0
  br i1 %.not199, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fp = trunc i64 %.0.i194 to i32
  %i.fq = load i32, ptr %i.dr, align 4
  %i.fr = xor i32 %i.fc, -1
  %i.fs = add i32 %i.fq, %i.fr
  %i.ft = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fp, i1 false)
  %i.fu = tail call i32 @llvm.smin.i32(i32 %i.fs, i32 %i.ft)
  %i.fv = load i32, ptr %i.dq, align 4
  %i.fw = shl i32 %i.fu, %i.fv
  %i.fx = sub i32 %i.fn, %i.fw
  br label %bb.ai

bb.ad:                                            ; preds = %bb.z, %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fz = load i32, ptr %i.fy, align 8            ; 2 uses
  %i.ga = add i32 %i.o, -1
  %i.gb = add i32 %i.ga, %i.fz
  %i.gc = sub i32 0, %i.fz
  %i.gd = and i32 %i.gb, %i.gc
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 1285, ptr noundef nonnull @__func__.calculate_l2_meta, ptr noundef null) #15
  unreachable

bb.af:                                            ; preds = %get_l2_bitmap.exit195
  switch i32 %i.fd, label %bb.ah [
    i32 4, label %bb.ai
    i32 3, label %bb.ag
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gf = load i32, ptr %i.ge, align 8            ; 2 uses
  %i.gg = add i32 %i.o, -1
  %i.gh = add i32 %i.gg, %i.gf
  %i.gi = sub i32 0, %i.gf
  %i.gj = and i32 %i.gh, %i.gi
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 1297, ptr noundef nonnull @__func__.calculate_l2_meta, ptr noundef null) #15
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ag, %bb.aa, %bb.ad, %bb.ac, %bb.ab
  %.0158 = phi i32 [ %i.gd, %bb.ad ], [ %i.gj, %bb.ag ], [ %i.fi, %bb.aa ], [ %i.fx, %bb.ac ], [ %i.fn, %bb.ab ], [ %i.o, %bb.af ]
  %i.gk = tail call noalias dereferenceable_or_null(104) ptr @g_malloc0(i64 noundef 104) #16 ; 17 uses
  store ptr %i.gk, ptr %5, align 8
  %.val187 = load i32, ptr %i.j, align 4
  %i.gl = sub i32 0, %.val187
  %i.gm = sext i32 %i.gl to i64
  %i.gn = and i64 %2, %i.gm
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 21
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.go = sub i32 %i.n, %.0157
  %i.gp = sub i32 %.0158, %i.o
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.13.0..sroa_idx, i8 0, i64 6, i1 false)
  %.sroa.2.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.gk, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5.0..sroa_idx, i8 0, i64 19, i1 false)
  store i64 %i.gn, ptr %i.gk, align 8
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx.a, align 8
  %.sroa.5.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx.a, align 8
  %.sroa.6.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  store i8 %i.a, ptr %.sroa.6.0..sroa_idx.a, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  store i32 %.0157, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 44
  store i32 %i.go, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  store i32 %i.o, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  store i32 %i.gp, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.gk, i64 57
  store i8 0, ptr %.sroa.16.0..sroa_idx.a, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 64
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.t, ptr %.sroa.17.0..sroa_idx, align 8
  tail call void @qemu_co_queue_init(ptr noundef nonnull %.sroa.6.0..sroa_idx) #13
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8            ; 3 uses
  %i.gs = load ptr, ptr %5, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 88
  store ptr %i.gr, ptr %i.gt, align 8
  %.not162 = icmp eq ptr %i.gr, null
  br i1 %.not162, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gu = load ptr, ptr %5, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 88
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 96
  store ptr %i.gv, ptr %i.gw, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gx = load ptr, ptr %5, align 8               ; 2 uses
  store ptr %i.gx, ptr %i.gq, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 96
  store ptr %i.gq, ptr %i.gy, align 8
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.loopexit, %._crit_edge, %bb.ak, %bb.o
  %.0 = phi i32 [ -5, %bb.o ], [ 0, %bb.ak ], [ 0, %._crit_edge ], [ 0, %._crit_edge.loopexit ]
  ret i32 %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #11

declare void @qemu_co_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @do_alloc_cluster_offset(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @qemu_coroutine_self() #13
  %i.d = load i64, ptr %2, align 8
  %i.e = load i64, ptr %3, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %trace_qcow2_do_alloc_clusters_offset.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr @_TRACE_QCOW2_DO_ALLOC_CLUSTERS_OFFSET_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.h, 0
  br i1 %.not3.i, label %trace_qcow2_do_alloc_clusters_offset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 32768
  %.not4.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i, label %trace_qcow2_do_alloc_clusters_offset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.69, ptr noundef %i.c, i64 noundef %1, i64 noundef %i.d, i32 noundef %i.f) #13
  br label %trace_qcow2_do_alloc_clusters_offset.exit

trace_qcow2_do_alloc_clusters_offset.exit:        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.val = load ptr, ptr %i.a, align 8
  %i.k = getelementptr i8, ptr %0, i64 16832
  %.val33 = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val, i64 504
  %.val.val = load ptr, ptr %i.l, align 8
  %.not = icmp eq ptr %.val.val, %.val33
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %trace_qcow2_do_alloc_clusters_offset.exit
  %i.m = load i64, ptr %2, align 8                ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  %.phi.trans.insert = getelementptr i8, ptr %i.b, i64 4
  %.val34.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre = sub i32 0, %.val34.pre
  %.pre38 = sext i32 %.pre to i64
  %.pre40 = and i64 %1, %.pre38                   ; 2 uses
  %i.o = icmp eq i64 %i.m, %.pre40
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 1643, ptr noundef nonnull @__PRETTY_FUNCTION__.do_alloc_cluster_offset) #15
  unreachable

._crit_edge:                                      ; preds = %bb.e
  store i64 %.pre40, ptr %2, align 8
  br label %bb.q

bb.g:                                             ; preds = %trace_qcow2_do_alloc_clusters_offset.exit
  %i.p = tail call ptr @qemu_coroutine_self() #13
  %i.q = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i36 = icmp eq i32 %i.q, 0
  br i1 %.not.i36, label %trace_qcow2_cluster_alloc_phys.exit, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.r = load i16, ptr @_TRACE_QCOW2_CLUSTER_ALLOC_PHYS_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.r, 0
  br i1 %.not1.i, label %trace_qcow2_cluster_alloc_phys.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr @qemu_loglevel, align 4
  %i.t = and i32 %i.s, 32768
  %.not2.i = icmp eq i32 %i.t, 0
  br i1 %.not2.i, label %trace_qcow2_cluster_alloc_phys.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.70, ptr noundef %i.p) #13
  br label %trace_qcow2_cluster_alloc_phys.exit

trace_qcow2_cluster_alloc_phys.exit:              ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.u = load i64, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  %i.w = load i64, ptr %3, align 8                ; 2 uses
  br i1 %i.v, label %bb.k, label %bb.n

bb.k:                                             ; preds = %trace_qcow2_cluster_alloc_phys.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = tail call i64 @qcow2_alloc_clusters(ptr noundef nonnull %0, i64 noundef %i.aa) #13 ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = trunc i64 %i.ab to i32
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  store i64 %i.ab, ptr %2, align 8
  br label %bb.q

bb.n:                                             ; preds = %trace_qcow2_cluster_alloc_phys.exit
  %i.ae = tail call i64 @qcow2_alloc_clusters_at(ptr noundef nonnull %0, i64 noundef %i.u, i64 noundef %i.w) #13 ; 3 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = trunc i64 %i.ae to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i64 %i.ae, ptr %3, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.l, %bb.m, %._crit_edge
  %.2 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.m ], [ %i.ad, %bb.l ], [ %i.ag, %bb.o ], [ 0, %bb.p ]
  ret i32 %.2
}

declare i64 @qcow2_alloc_clusters_at(ptr noundef, i64 noundef, i64 noundef) #2

declare void @qcow2_discard_cluster(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @qcow2_get_refcount(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @qcow2_update_cluster_refcount(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @bdrv_pwrite_zeroes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @bdrv_pwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_0
