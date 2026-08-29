Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_fc_test?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0_@test_rxfc:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !17
  %i.cq = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.2, i32 noundef 547, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i64 noundef %i.cn, i64 noundef %i.cp) #7
  %.not91.i = icmp eq i32 %i.cq, 0
  br i1 %.not91.i, label %run_rxfc_script.exit, label %bb.ax

bb.x:                                             ; preds = %bb.b
  %i.cr = icmp ne i32 %.065.i, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 551, ptr noundef nonnull @.str.38, i32 noundef %i.cs) #7
  %.not88.i = icmp eq i32 %i.ct, 0
  br i1 %.not88.i, label %run_rxfc_script.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = call i64 @ossl_quic_rxfc_get_swm(ptr noundef nonnull %1) #7
  %i.cv = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !17
  %i.cx = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.2, i32 noundef 554, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.45, i64 noundef %i.cu, i64 noundef %i.cw) #7
  %.not89.i = icmp eq i32 %i.cx, 0
  br i1 %.not89.i, label %run_rxfc_script.exit, label %bb.ax

bb.z:                                             ; preds = %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %.064.i, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !19 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 3
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cz
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !20
  %i.dd = icmp ne i8 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.df = phi i32 [ 0, %bb.z ], [ %i.de, %bb.aa ]
  %i.dg = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 559, ptr noundef nonnull @.str.46, i32 noundef %i.df) #7
  %.not86.i = icmp eq i32 %i.dg, 0
  br i1 %.not86.i, label %run_rxfc_script.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i64, ptr %i.cy, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.dh
  %i.dj = call i64 @ossl_quic_rxfc_get_swm(ptr noundef nonnull %i.di) #7
  %i.dk = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !17
  %i.dm = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.2, i32 noundef 562, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i64 noundef %i.dj, i64 noundef %i.dl) #7
  %.not87.i = icmp eq i32 %i.dm, 0
  br i1 %.not87.i, label %run_rxfc_script.exit, label %bb.ax

bb.ad:                                            ; preds = %bb.b
  %i.dn = icmp ne i32 %.065.i, 0
  %i.do = zext i1 %i.dn to i32
  %i.dp = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef nonnull @.str.38, i32 noundef %i.do) #7
  %.not84.i = icmp eq i32 %i.dp, 0
  br i1 %.not84.i, label %run_rxfc_script.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = call i64 @ossl_quic_rxfc_get_rwm(ptr noundef nonnull %1) #7
  %i.dr = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !17
  %i.dt = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.2, i32 noundef 569, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.45, i64 noundef %i.dq, i64 noundef %i.ds) #7
  %.not85.i = icmp eq i32 %i.dt, 0
  br i1 %.not85.i, label %run_rxfc_script.exit, label %bb.ax

bb.af:                                            ; preds = %bb.b
  %i.du = getelementptr inbounds nuw i8, ptr %.064.i, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !19 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 3
  br i1 %i.dw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !20
  %i.dz = icmp ne i8 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eb = phi i32 [ 0, %bb.af ], [ %i.ea, %bb.ag ]
  %i.ec = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 574, ptr noundef nonnull @.str.46, i32 noundef %i.eb) #7
  %.not82.i = icmp eq i32 %i.ec, 0
  br i1 %.not82.i, label %run_rxfc_script.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = load i64, ptr %i.du, align 8, !tbaa !19
  %i.ee = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.ed
  %i.ef = call i64 @ossl_quic_rxfc_get_rwm(ptr noundef nonnull %i.ee) #7
  %i.eg = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !17
  %i.ei = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.2, i32 noundef 577, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.45, i64 noundef %i.ef, i64 noundef %i.eh) #7
  %.not83.i = icmp eq i32 %i.ei, 0
  br i1 %.not83.i, label %run_rxfc_script.exit, label %bb.ax

bb.aj:                                            ; preds = %bb.b
  %i.ej = icmp ne i32 %.065.i, 0
  %i.ek = zext i1 %i.ej to i32
  %i.el = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 581, ptr noundef nonnull @.str.38, i32 noundef %i.ek) #7
  %.not80.i = icmp eq i32 %i.el, 0
  br i1 %.not80.i, label %run_rxfc_script.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %.064.i, i64 24
  %i.en = load i64, ptr %i.em, align 8, !tbaa !18
  %i.eo = trunc i64 %i.en to i32
  %i.ep = call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef nonnull %1, i32 noundef %i.eo) #7
  %i.eq = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !17
  %i.es = trunc i64 %i.er to i32
  %i.et = call i32 @test_int_eq(ptr noundef nonnull @.str.2, i32 noundef 585, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %i.ep, i32 noundef %i.es) #7
  %.not81.i = icmp eq i32 %i.et, 0
  br i1 %.not81.i, label %run_rxfc_script.exit, label %bb.ax

bb.al:                                            ; preds = %bb.b
  %i.eu = getelementptr inbounds nuw i8, ptr %.064.i, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !19 ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 3
  br i1 %i.ew, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ev
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !20
  %i.ez = icmp ne i8 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fb = phi i32 [ 0, %bb.al ], [ %i.fa, %bb.am ]
  %i.fc = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 590, ptr noundef nonnull @.str.46, i32 noundef %i.fb) #7
  %.not78.i = icmp eq i32 %i.fc, 0
  br i1 %.not78.i, label %run_rxfc_script.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fd = load i64, ptr %i.eu, align 8, !tbaa !19
  %i.fe = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.064.i, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !18
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef nonnull %i.fe, i32 noundef %i.fh) #7
  %i.fj = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !17
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = call i32 @test_int_eq(ptr noundef nonnull @.str.2, i32 noundef 594, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %i.fi, i32 noundef %i.fl) #7
  %.not79.i = icmp eq i32 %i.fm, 0
  br i1 %.not79.i, label %run_rxfc_script.exit, label %bb.ax

bb.ap:                                            ; preds = %bb.b
  %i.fn = icmp ne i32 %.065.i, 0
  %i.fo = zext i1 %i.fn to i32
  %i.fp = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 598, ptr noundef nonnull @.str.38, i32 noundef %i.fo) #7
  %.not76.i = icmp eq i32 %i.fp, 0
  br i1 %.not76.i, label %run_rxfc_script.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fq = getelementptr inbounds nuw i8, ptr %.064.i, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !18
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = call i32 @ossl_quic_rxfc_get_error(ptr noundef nonnull %1, i32 noundef %i.fs) #7
  %i.fu = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !17
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = call i32 @test_int_eq(ptr noundef nonnull @.str.2, i32 noundef 602, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %i.ft, i32 noundef %i.fw) #7
  %.not77.i = icmp eq i32 %i.fx, 0
  br i1 %.not77.i, label %run_rxfc_script.exit, label %bb.ax

bb.ar:                                            ; preds = %bb.b
  %i.fy = getelementptr inbounds nuw i8, ptr %.064.i, i64 8 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !19 ; 2 uses
  %i.ga = icmp ult i64 %i.fz, 3
  br i1 %i.ga, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !20
  %i.gd = icmp ne i8 %i.gc, 0
  %i.ge = zext i1 %i.gd to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gf = phi i32 [ 0, %bb.ar ], [ %i.ge, %bb.as ]
  %i.gg = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 607, ptr noundef nonnull @.str.46, i32 noundef %i.gf) #7
  %.not74.i = icmp eq i32 %i.gg, 0
  br i1 %.not74.i, label %run_rxfc_script.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gh = load i64, ptr %i.fy, align 8, !tbaa !19
  %i.gi = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %.064.i, i64 24
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !18
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = call i32 @ossl_quic_rxfc_get_error(ptr noundef nonnull %i.gi, i32 noundef %i.gl) #7
  %i.gn = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !17
  %i.gp = trunc i64 %i.go to i32
  %i.gq = call i32 @test_int_eq(ptr noundef nonnull @.str.2, i32 noundef 611, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.53, i32 noundef %i.gm, i32 noundef %i.gp) #7
  %.not75.i = icmp eq i32 %i.gq, 0
  br i1 %.not75.i, label %run_rxfc_script.exit, label %bb.ax

bb.av:                                            ; preds = %bb.b
  %i.gr = getelementptr inbounds nuw i8, ptr %.064.i, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !17 ; 2 uses
  %i.gt = load i64, ptr @cur_time.0, align 8      ; 2 uses
  %3 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gt, i64 %i.gs)
  %4 = extractvalue { i64, i1 } %3, 1
  %.0.i.i.i = add i64 %i.gt, %i.gs
  %..0.i.i.i = select i1 %4, i64 -1, i64 %.0.i.i.i
  store i64 %..0.i.i.i, ptr @cur_time.0, align 8, !tbaa !12
  br label %bb.ax

bb.aw:                                            ; preds = %bb.b
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gv = getelementptr inbounds nuw i8, ptr %.064.i, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !24
  %i.gx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str.57, ptr noundef %i.gw) #8 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.aq, %bb.ao, %bb.ak, %bb.ai, %bb.ae, %bb.ac, %bb.y, %bb.w, %bb.s, %bb.q, %bb.l, %bb.g, %bb.c
  %.1.i = phi i32 [ %.065.i, %bb.aw ], [ %.065.i, %bb.g ], [ %.065.i, %bb.l ], [ %.065.i, %bb.q ], [ %.065.i, %bb.s ], [ %.065.i, %bb.w ], [ %.065.i, %bb.y ], [ %.065.i, %bb.ac ], [ %.065.i, %bb.ae ], [ %.065.i, %bb.ai ], [ %.065.i, %bb.ak ], [ %.065.i, %bb.ao ], [ %.065.i, %bb.aq ], [ %.065.i, %bb.au ], [ %.065.i, %bb.av ], [ 1, %bb.c ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.064.i, i64 48
  br label %bb.b, !llvm.loop !25

run_rxfc_script.exit.loopexit:                    ; preds = %bb.b
  br label %run_rxfc_script.exit

run_rxfc_script.exit:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.k, %bb.l, %bb.p, %bb.q, %bb.r, %bb.s, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.at, %bb.au, %run_rxfc_script.exit.loopexit
  %.0.i = phi i32 [ 1, %run_rxfc_script.exit.loopexit ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.an ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_quic_txfc_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_txfc_bump_cwm(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @test_uint64_t_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ossl_quic_txfc_get_swm(ptr noundef) local_unnamed_addr #1

declare i64 @ossl_quic_txfc_get_cwm(ptr noundef) local_unnamed_addr #1

declare i64 @ossl_quic_txfc_get_credit_local(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ossl_quic_txfc_get_credit(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @test_false(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_quic_txfc_has_become_blocked(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_quic_txfc_consume_credit(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @ossl_quic_rxfc_init(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @fake_now(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @cur_time.0, align 8, !tbaa !12
  ret i64 %.sroa.0.0.copyload
}

declare i32 @test_size_t_lt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rxfc_on_rx_stream_frame(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @test_int_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rxfc_on_retire(ptr noundef, i64 noundef, i64) local_unnamed_addr #1

declare i64 @ossl_quic_rxfc_get_cwm(ptr noundef) local_unnamed_addr #1

declare i64 @ossl_quic_rxfc_get_swm(ptr noundef) local_unnamed_addr #1

declare i64 @ossl_quic_rxfc_get_rwm(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rxfc_get_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS10rx_test_op", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"rx_test_op", !7, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !7, i64 32, !16, i64 40}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!15, !13, i64 16}
!18 = !{!15, !13, i64 24}
!19 = !{!15, !13, i64 8}
!20 = !{!7, !7, i64 0}
!21 = !{!15, !7, i64 32}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!24 = !{!15, !16, i64 40}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
end_hunk_0
