inline.NumInlined: 83
inline.NumDeleted: 27
begin_hunk_0_@x509_crt_verify_restartable_ca_cb:bb.a

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  %i.nc = call i64 @mbedtls_pk_get_bitlen(ptr noundef nonnull %i.kp) #18
  %i.nd = load i32, ptr %i.dw, align 4, !tbaa !106
  %i.ne = zext i32 %i.nd to i64
  %.not19.i.i.i = icmp ult i64 %i.nc, %i.ne
  br label %x509_profile_check_key.exit.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.nf = add i32 %i.nb, -2
  %or.cond5.i.i.i = icmp ult i32 %i.nf, 3
  br i1 %or.cond5.i.i.i, label %bb.bw, label %x509_profile_check_key.exit.thread.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.ng = load <2 x ptr>, ptr %i.kp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x ptr> %i.ng, ptr %8, align 16
  %i.nh = call i32 @mbedtls_pk_get_type(ptr noundef nonnull %8) #18 ; 0 uses
  %i.ni = load ptr, ptr %i.dz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !107 ; 2 uses
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %x509_profile_check_key.exit.thread.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nl = load i32, ptr %i.dy, align 4, !tbaa !115
  %i.nm = add i32 %i.nj, -1
  %i.nn = shl nuw i32 1, %i.nm
  %i.no = and i32 %i.nl, %i.nn
  %.not.i62.i.i = icmp eq i32 %i.no, 0
  br label %x509_profile_check_key.exit.i.i

x509_profile_check_key.exit.thread.i.i:           ; preds = %bb.bw, %bb.bv
  %i.np = or i32 %i.mr, 65536
  br label %bb.by

x509_profile_check_key.exit.i.i:                  ; preds = %bb.bx, %bb.bu
  %.1.i.in.i.i = phi i1 [ %.not19.i.i.i, %bb.bu ], [ %.not.i62.i.i, %bb.bx ]
  %.1.i.in.fr.i.i = freeze i1 %.1.i.in.i.i
  %i.nq = or i32 %i.mr, 65536
  %spec.select80.i.i = select i1 %.1.i.in.fr.i.i, i32 %i.nq, i32 %i.mr
  br label %bb.by

bb.by:                                            ; preds = %x509_profile_check_key.exit.i.i, %x509_profile_check_key.exit.thread.i.i
  %i.nr = phi i32 [ %i.np, %x509_profile_check_key.exit.thread.i.i ], [ %spec.select80.i.i, %x509_profile_check_key.exit.i.i ] ; 2 uses
  %i.ns = load i32, ptr %i.mi, align 4, !tbaa !133
  %i.nt = getelementptr inbounds nuw i8, ptr %.04392.i.i, i64 400
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !136
  %i.nv = load i32, ptr %i.ly, align 8, !tbaa !132
  %i.nw = getelementptr inbounds nuw i8, ptr %.04392.i.i, i64 384
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !137
  %i.ny = getelementptr inbounds nuw i8, ptr %.04392.i.i, i64 376
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !138
  %i.oa = call i32 @mbedtls_pk_verify_ext(i32 noundef %i.ns, ptr noundef %i.nu, ptr noundef nonnull %i.kp, i32 noundef %i.nv, ptr noundef nonnull %i.b, i64 noundef %i.mu, ptr noundef %i.nx, i64 noundef %i.nz) #18
  %.not51.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not51.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ob = or i32 %i.nr, 16
  br label %x509_crt_verifycrl.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.oc = getelementptr inbounds nuw i8, ptr %.04392.i.i, i64 192
  %i.od = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.oc, ptr noundef nonnull %10) #18
  %i.oe = lshr i32 %i.od, 26
  %i.of = and i32 %i.oe, 32
  %spec.select54.i.i = or i32 %i.of, %i.nr        ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.04392.i.i, i64 168
  %i.oh = call i32 @mbedtls_x509_time_cmp(ptr noundef nonnull %i.og, ptr noundef nonnull %10) #18
  %i.oi = icmp sgt i32 %i.oh, 0
  %i.oj = or i32 %spec.select54.i.i, 1024
  %.5.i.i = select i1 %i.oi, i32 %i.oj, i32 %spec.select54.i.i ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.04392.i.i, i64 216
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ce, %bb.ca
  %.013.i.i.i = phi ptr [ %i.ok, %bb.ca ], [ %i.ou, %bb.ce ] ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !82 ; 3 uses
  %.not12.i.i.i = icmp eq i64 %i.om, 0
  br i1 %.not12.i.i.i, label %.outer.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.on = load i64, ptr %i.lk, align 8, !tbaa !85
  %i.oo = icmp eq i64 %i.on, %i.om
  br i1 %i.oo, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.op = load ptr, ptr %i.lj, align 8, !tbaa !86
  %i.oq = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !87
  %bcmp.i.i61.i = call i32 @bcmp(ptr %i.op, ptr %i.or, i64 %i.om)
  %i.os = icmp eq i32 %bcmp.i.i61.i, 0
  br i1 %i.os, label %mbedtls_x509_crt_is_revoked.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.ot = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !88 ; 2 uses
  %.not.i63.i.i = icmp eq ptr %i.ou, null
  br i1 %.not.i63.i.i, label %.outer.i.i, label %bb.cb, !llvm.loop !89

mbedtls_x509_crt_is_revoked.exit.i.i:             ; preds = %bb.cd
  %i.ov = or i32 %.5.i.i, 2
  br label %x509_crt_verifycrl.exit.i

.outer.i.i:                                       ; preds = %bb.ce, %bb.cb
  %i.ow = getelementptr inbounds nuw i8, ptr %.04392.i.i, i64 408
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !130 ; 2 uses
  %.not91.i.i = icmp eq ptr %i.ox, null
  br i1 %.not91.i.i, label %x509_crt_verifycrl.exit.i, label %.lr.ph.i58.i, !llvm.loop !131

x509_crt_verifycrl.exit.i:                        ; preds = %.outer.i.i, %bb.bn, %mbedtls_x509_crt_is_revoked.exit.i.i, %bb.bz, %bb.bs, %mbedtls_x509_crt_check_key_usage.exit.i.i, %bb.bk
  %.0.i60.i = phi i32 [ 0, %bb.bk ], [ %i.lx, %mbedtls_x509_crt_check_key_usage.exit.i.i ], [ %i.na, %bb.bs ], [ %i.ob, %bb.bz ], [ %i.ov, %mbedtls_x509_crt_is_revoked.exit.i.i ], [ %.044.ph95.i.i, %bb.bn ], [ %.5.i.i, %.outer.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.oy = load i32, ptr %i.ed, align 8, !tbaa !4
  %i.oz = or i32 %i.oy, %.0.i60.i
  store i32 %i.oz, ptr %i.ed, align 8, !tbaa !4
  %.pre = load i32, ptr %i.x, align 8, !tbaa !116
  br label %bb.s

x509_crt_verify_chain.exit:                       ; preds = %bb.be, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.thread

.loopexit32:                                      ; preds = %bb.w, %bb.ac, %x509_crt_find_parent.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.pa = load i32, ptr %i.e, align 8, !tbaa !92
  %i.pb = or i32 %i.pa, %.3
  store i32 %i.pb, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.pc = load i32, ptr %i.x, align 8, !tbaa !116 ; 4 uses
  %.not18.i = icmp eq i32 %i.pc, 0
  br i1 %.not18.i, label %.loopexit32..loopexit28_crit_edge, label %.lr.ph.i

.loopexit32..loopexit28_crit_edge:                ; preds = %.loopexit32
  %.pre118 = load i32, ptr %5, align 4, !tbaa !4
  br label %.loopexit28

.lr.ph.i:                                         ; preds = %.loopexit32
  %.not16.i45 = icmp eq ptr %6, null
  br i1 %.not16.i45, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.pd = zext i32 %i.pc to i64
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %.promoted.i = load i32, ptr %5, align 4, !tbaa !4 ; 2 uses
  %i.pe = zext i32 %i.pc to i64                   ; 3 uses
  %xtraiter = and i64 %i.pe, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.split.us.i, %.prol.preheader
  %indvars.iv23.i.prol = phi i64 [ %i.pg, %.prol.preheader ], [ %i.pe, %.lr.ph.split.us.i ]
  %i.pf = phi i32 [ %i.pk, %.prol.preheader ], [ %.promoted.i, %.lr.ph.split.us.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.split.us.i ]
  %i.pg = add nsw i64 %indvars.iv23.i.prol, -1    ; 3 uses
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !92
  %i.pk = or i32 %i.pj, %i.pf                     ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !139

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.split.us.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.split.us.i ], [ %i.pk, %.prol.preheader ]
  %indvars.iv23.i.unr = phi i64 [ %i.pe, %.lr.ph.split.us.i ], [ %i.pg, %.prol.preheader ]
  %.unr = phi i32 [ %.promoted.i, %.lr.ph.split.us.i ], [ %i.pk, %.prol.preheader ]
  %i.pl = icmp ult i32 %i.pc, 4
  br i1 %i.pl, label %.loopexit, label %.lr.ph.split.us.i.new

.lr.ph.split.us.i.new:                            ; preds = %.prol.loopexit, %.lr.ph.split.us.i.new
  %indvars.iv23.i = phi i64 [ %i.pz, %.lr.ph.split.us.i.new ], [ %indvars.iv23.i.unr, %.prol.loopexit ] ; 4 uses
  %i.pm = phi i32 [ %i.qd, %.lr.ph.split.us.i.new ], [ %.unr, %.prol.loopexit ]
  %i.pn = getelementptr [16 x i8], ptr %12, i64 %indvars.iv23.i
  %i.po = getelementptr i8, ptr %i.pn, i64 -8
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !92
  %i.pq = or i32 %i.pp, %i.pm
  %i.pr = getelementptr [16 x i8], ptr %12, i64 %indvars.iv23.i
  %i.ps = getelementptr i8, ptr %i.pr, i64 -24
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !92
  %i.pu = or i32 %i.pt, %i.pq
  %i.pv = getelementptr [16 x i8], ptr %12, i64 %indvars.iv23.i
  %i.pw = getelementptr i8, ptr %i.pv, i64 -40
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !92
  %i.py = or i32 %i.px, %i.pu
  %i.pz = add nsw i64 %indvars.iv23.i, -4         ; 3 uses
  %i.qa = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !92
  %i.qd = or i32 %i.qc, %i.py                     ; 2 uses
  %.not.us.wide.i.3 = icmp eq i64 %i.pz, 0
  br i1 %.not.us.wide.i.3, label %.loopexit, label %.lr.ph.split.us.i.new, !llvm.loop !141

.lr.ph.split.i:                                   ; preds = %bb.cf, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ %i.pd, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %bb.cf ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %13 = and i64 %indvars.iv.next.i, 4294967295
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %13 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !92
  store i32 %i.qg, ptr %i.a, align 4, !tbaa !4
  %i.qh = load ptr, ptr %i.qe, align 8, !tbaa !90
  %i.qi = call i32 %6(ptr noundef %7, ptr noundef %i.qh, i32 noundef %indvars.i, ptr noundef nonnull %i.a) #18, !inline_history !142
  %.fr = freeze i32 %i.qi                         ; 3 uses
  %.not17.i46 = icmp eq i32 %.fr, 0
  br i1 %.not17.i46, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.split.i
  %i.qj = load i32, ptr %i.a, align 4, !tbaa !4
  %i.qk = load i32, ptr %5, align 4, !tbaa !4
  %i.ql = or i32 %i.qk, %i.qj                     ; 2 uses
  store i32 %i.ql, ptr %5, align 4, !tbaa !4
  %.not.i48 = icmp eq i32 %indvars.i, 0
  br i1 %.not.i48, label %.loopexit28, label %.lr.ph.split.i, !llvm.loop !141

bb.cg:                                            ; preds = %.lr.ph.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.qm = icmp eq i32 %.fr, -9984
  %spec.select = select i1 %i.qm, i32 -12288, i32 %.fr
  br label %.thread

.thread:                                          ; preds = %bb.cg, %bb.a, %x509_crt_verify_chain.exit
  %.ph = phi i32 [ -12288, %x509_crt_verify_chain.exit ], [ %spec.select, %bb.cg ], [ -10240, %bb.a ]
  store i32 -1, ptr %5, align 4, !tbaa !4
  br label %bb.ch

.loopexit:                                        ; preds = %.lr.ph.split.us.i.new, %.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.qd, %.lr.ph.split.us.i.new ] ; 2 uses
  store i32 %.lcssa, ptr %5, align 4, !tbaa !4
  br label %.loopexit28

.loopexit28:                                      ; preds = %bb.cf, %.loopexit32..loopexit28_crit_edge, %.loopexit
  %i.qn = phi i32 [ %.pre118, %.loopexit32..loopexit28_crit_edge ], [ %.lcssa, %.loopexit ], [ %i.ql, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not34 = icmp eq i32 %i.qn, 0
  %. = select i1 %.not34, i32 0, i32 -9984
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit28, %.thread
  %.0 = phi i32 [ %.ph, %.thread ], [ %., %.loopexit28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_x509_crt_verify_with_profile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef captures(none) initializes((0, 4)) %5, ptr noundef readonly captures(address_is_null) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @x509_crt_verify_restartable_ca_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_x509_crt_verify_restartable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef captures(none) initializes((0, 4)) %5, ptr noundef readonly captures(address_is_null) %6, ptr noundef %7, ptr noundef readnone captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @x509_crt_verify_restartable_ca_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_x509_crt_init(ptr noundef writeonly captures(none) initializes((0, 744)) %0) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %0, i8 0, i64 744, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mbedtls_x509_crt_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not24 = icmp eq ptr %0, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.025 = phi ptr [ %i.v, %bb.f ], [ %0, %bb.a ]  ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.025, i64 360
  tail call void @mbedtls_pk_free(ptr noundef nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %.025, i64 728
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  tail call void @free(ptr noundef %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %.025, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143
  tail call void @mbedtls_asn1_free_named_data_list_shallow(ptr noundef %i.e) #18
  %i.f = getelementptr inbounds nuw i8, ptr %.025, i64 272
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !144
  tail call void @mbedtls_asn1_free_named_data_list_shallow(ptr noundef %i.g) #18
  %i.h = getelementptr inbounds nuw i8, ptr %.025, i64 680
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145
  tail call void @mbedtls_asn1_sequence_free(ptr noundef %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %.025, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !146
  tail call void @mbedtls_asn1_sequence_free(ptr noundef %i.k) #18
  %i.l = getelementptr inbounds nuw i8, ptr %.025, i64 632
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !147
  tail call void @mbedtls_asn1_sequence_free(ptr noundef %i.m) #18
  %i.n = getelementptr inbounds nuw i8, ptr %.025, i64 552
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !148
  tail call void @mbedtls_asn1_sequence_free(ptr noundef %i.o) #18
  %i.p = getelementptr inbounds nuw i8, ptr %.025, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.not21 = icmp eq ptr %i.q, null
  br i1 %.not21, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = load i32, ptr %.025, align 8, !tbaa !30
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.q, i64 noundef %i.t) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.025, i64 736
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %.025, i64 noundef 744) #18
  %.not23 = icmp eq ptr %.025, %0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %.025) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

declare void @mbedtls_pk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare void @mbedtls_asn1_free_named_data_list_shallow(ptr noundef) local_unnamed_addr #3

declare void @mbedtls_asn1_sequence_free(ptr noundef) local_unnamed_addr #3

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @mbedtls_x509_crt_get_ca_istrue(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = and i32 %i.b, 256
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -9472, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

declare i32 @mbedtls_asn1_get_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @mbedtls_x509_get_serial(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_x509_get_alg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_x509_get_sig_alg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_x509_get_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @x509_get_dates(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call i32 @mbedtls_asn1_get_tag(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 48) #18 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, -9216
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !26
  %i.e = load i64, ptr %i.a, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e ; 3 uses
  %i.g = call i32 @mbedtls_x509_get_time(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef nonnull %2) #18 ; 2 uses
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %bb.d, label %bb.f

end_hunk_0
