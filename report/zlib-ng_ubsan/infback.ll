Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/infback?download=true
begin_hunk_0_@zng_inflateBack:bb.a
.preheader741.preheader:                          ; preds = %bb.pe
  %i.uz = zext i32 %.14 to i64
  br label %.preheader741

bb.pf:                                            ; preds = %bb.pe
  br i1 %i.e, label %.critedge1460, label %bb.pg, !prof !13, !nosanitize !12

bb.pg:                                            ; preds = %bb.pf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @250, i64 %i.c) #5, !nosanitize !12
  store ptr %.0513, ptr %i.bj, align 8, !tbaa !77
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @251, i64 %i.c) #5, !nosanitize !12
  br label %bb.ph, !nosanitize !12

.critedge1460:                                    ; preds = %bb.pf
  store ptr %.0513, ptr %i.bj, align 8, !tbaa !77
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %.critedge1460
  store i32 %.0479, ptr %i.bk, align 8, !tbaa !78
  %i.va = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  br i1 %i.e, label %.critedge1463, label %.critedge1462.a, !prof !13, !nosanitize !12

.critedge1462.a:                                  ; preds = %bb.ph
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @252, i64 %i.c) #5, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @253, i64 %i.c) #5, !nosanitize !12
  store ptr %i.va, ptr %0, align 8, !tbaa !59
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @254, i64 %i.c) #5, !nosanitize !12
  br label %bb.pi, !nosanitize !12

.critedge1463:                                    ; preds = %bb.ph
  store ptr %i.va, ptr %0, align 8, !tbaa !59
  br label %bb.pi

bb.pi:                                            ; preds = %.critedge1462.a, %.critedge1463
  store i32 %.24511, ptr %i.bl, align 8, !tbaa !61
  br i1 %i.r, label %.critedge1465, label %bb.pj, !prof !13, !nosanitize !12

bb.pj:                                            ; preds = %bb.pi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @255, i64 %i.o) #5, !nosanitize !12
  store i64 %.14467, ptr %i.bm, align 8, !tbaa !79
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @256, i64 %i.o) #5, !nosanitize !12
  br label %bb.pk, !nosanitize !12

.critedge1465:                                    ; preds = %bb.pi
  store i64 %.14467, ptr %i.bm, align 8, !tbaa !79
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %.critedge1465
  store i32 %.14, ptr %i.bn, align 32, !tbaa !80
  br i1 %i.r, label %bb.pm, label %bb.pl, !prof !13, !nosanitize !12

bb.pl:                                            ; preds = %bb.pk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @257, i64 %i.o) #5, !nosanitize !12
  br label %bb.pm, !nosanitize !12

bb.pm:                                            ; preds = %bb.pk, %bb.pl
  %i.vb = load i32, ptr %i.x, align 8, !tbaa !29
  br i1 %i.r, label %bb.po, label %bb.pn, !prof !13, !nosanitize !12

bb.pn:                                            ; preds = %bb.pm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @258, i64 %i.o) #5, !nosanitize !12
  br label %bb.po, !nosanitize !12

bb.po:                                            ; preds = %bb.pn, %bb.pm
  br i1 %i.ak, label %bb.pq, label %bb.pp, !prof !13, !nosanitize !12

bb.pp:                                            ; preds = %bb.po
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @259, i64 %i.ai) #5, !nosanitize !12
  br label %bb.pq, !nosanitize !12

bb.pq:                                            ; preds = %bb.pp, %bb.po
  %i.vc = load i32, ptr %i.ah, align 64, !tbaa !27
  %i.vd = icmp ult i32 %i.vb, %i.vc
  br i1 %i.vd, label %bb.pr, label %bb.qa

bb.pr:                                            ; preds = %bb.pq
  br i1 %i.r, label %bb.pt, label %bb.ps, !prof !13, !nosanitize !12

bb.ps:                                            ; preds = %bb.pr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @260, i64 %i.o) #5, !nosanitize !12
  br label %bb.pt, !nosanitize !12

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  br i1 %i.ak, label %bb.pv, label %bb.pu, !prof !13, !nosanitize !12

bb.pu:                                            ; preds = %bb.pt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @261, i64 %i.ai) #5, !nosanitize !12
  br label %bb.pv, !nosanitize !12

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %i.ve = load i32, ptr %i.ah, align 64, !tbaa !27 ; 2 uses
  %i.vf = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.ve, i32 %.0479), !nosanitize !12 ; 2 uses
  %i.vg = extractvalue { i32, i1 } %i.vf, 0, !nosanitize !12
  %i.vh = extractvalue { i32, i1 } %i.vf, 1, !nosanitize !12
  br i1 %i.vh, label %bb.pw, label %bb.px, !prof !62, !nosanitize !12

bb.pw:                                            ; preds = %bb.pv
  %i.vi = zext i32 %i.ve to i64, !nosanitize !12
  %i.vj = zext i32 %.0479 to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @262, i64 %i.vi, i64 %i.vj) #6, !nosanitize !12
  br label %bb.px, !nosanitize !12

bb.px:                                            ; preds = %bb.pw, %bb.pv
  br i1 %i.r, label %bb.pz, label %bb.py, !prof !13, !nosanitize !12

bb.py:                                            ; preds = %bb.px
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @263, i64 %i.o) #5, !nosanitize !12
  br label %bb.pz, !nosanitize !12

bb.pz:                                            ; preds = %bb.px, %bb.py
  store i32 %i.vg, ptr %i.x, align 8, !tbaa !29
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pq, %bb.pz
  %i.vk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 80), align 8, !tbaa !82 ; 4 uses
  %i.vl = getelementptr i8, ptr %i.vk, i64 -8
  %i.vm = load i32, ptr %i.vl, align 4, !nosanitize !12
  %i.vn = icmp eq i32 %i.vm, -1056584962, !nosanitize !12
  br i1 %i.vn, label %bb.qb, label %bb.qd, !nosanitize !12

bb.qb:                                            ; preds = %bb.qa
  %i.vo = getelementptr i8, ptr %i.vk, i64 -4
  %i.vp = load i32, ptr %i.vo, align 8, !nosanitize !12
  %i.vq = icmp eq i32 %i.vp, -971363099, !nosanitize !12
  br i1 %i.vq, label %bb.qd, label %bb.qc, !prof !13, !nosanitize !12

bb.qc:                                            ; preds = %bb.qb
  %i.vr = ptrtoint ptr %i.vk to i64, !nosanitize !12
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @265, i64 %i.vr) #5, !nosanitize !12
  br label %bb.qd, !nosanitize !12

bb.qd:                                            ; preds = %bb.qb, %bb.qc, %bb.qa
  br i1 %i.r, label %bb.qf, label %bb.qe, !prof !13, !nosanitize !12

bb.qe:                                            ; preds = %bb.qd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @266, i64 %i.o) #5, !nosanitize !12
  br label %bb.qf, !nosanitize !12

bb.qf:                                            ; preds = %bb.qe, %bb.qd
  br i1 %i.ak, label %bb.qh, label %bb.qg, !prof !13, !nosanitize !12

bb.qg:                                            ; preds = %bb.qf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @267, i64 %i.ai) #5, !nosanitize !12
  br label %bb.qh, !nosanitize !12

bb.qh:                                            ; preds = %bb.qg, %bb.qf
  %i.vs = load i32, ptr %i.ah, align 64, !tbaa !27
  call void %i.vk(ptr noundef nonnull %0, i32 noundef %i.vs) #5
  br i1 %i.e, label %bb.qj, label %bb.qi, !prof !13, !nosanitize !12

bb.qi:                                            ; preds = %bb.qh
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @268, i64 %i.c) #5, !nosanitize !12
  br label %bb.qj, !nosanitize !12

bb.qj:                                            ; preds = %bb.qh, %bb.qi
  %i.vt = load ptr, ptr %i.bj, align 8, !tbaa !77
  br i1 %i.e, label %bb.ql, label %bb.qk, !prof !13, !nosanitize !12

bb.qk:                                            ; preds = %bb.qj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @269, i64 %i.c) #5, !nosanitize !12
  br label %bb.ql, !nosanitize !12

bb.ql:                                            ; preds = %bb.qj, %bb.qk
  %i.vu = load i32, ptr %i.bk, align 8, !tbaa !78
  br i1 %i.e, label %.critedge1470.a, label %.critedge1469, !prof !13, !nosanitize !12

.critedge1469:                                    ; preds = %bb.ql
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @270, i64 %i.c) #5, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @271, i64 %i.c) #5, !nosanitize !12
  %i.vv = load ptr, ptr %0, align 8, !tbaa !59
  store ptr %i.vv, ptr %i.a, align 8, !tbaa !60
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @272, i64 %i.c) #5, !nosanitize !12
  br label %bb.qm, !nosanitize !12

.critedge1470.a:                                  ; preds = %bb.ql
  %i.vw = load ptr, ptr %0, align 8, !tbaa !59
  store ptr %i.vw, ptr %i.a, align 8, !tbaa !60
  br label %bb.qm

bb.qm:                                            ; preds = %.critedge1469, %.critedge1470.a
  %i.vx = load i32, ptr %i.bl, align 8, !tbaa !61
  br i1 %i.r, label %bb.qo, label %bb.qn, !prof !13, !nosanitize !12

bb.qn:                                            ; preds = %bb.qm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @273, i64 %i.o) #5, !nosanitize !12
  br label %bb.qo, !nosanitize !12

bb.qo:                                            ; preds = %bb.qm, %bb.qn
  %i.vy = load i64, ptr %i.bm, align 8, !tbaa !79
  br i1 %i.r, label %bb.qq, label %bb.qp, !prof !13, !nosanitize !12

bb.qp:                                            ; preds = %bb.qo
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @274, i64 %i.o) #5, !nosanitize !12
  br label %bb.qq, !nosanitize !12

bb.qq:                                            ; preds = %bb.qo, %bb.qp
  %i.vz = load i32, ptr %i.bn, align 32, !tbaa !80
  br label %.loopexit738.backedge

.preheader741:                                    ; preds = %.preheader741.preheader, %bb.rp
  %indvars.iv1109 = phi i64 [ %i.uz, %.preheader741.preheader ], [ %indvars.iv.next1110, %bb.rp ] ; 8 uses
  %.25512 = phi i32 [ %.24511, %.preheader741.preheader ], [ %i.xe, %bb.rp ] ; 4 uses
  %.15468 = phi i64 [ %.14467, %.preheader741.preheader ], [ %i.xv, %bb.rp ] ; 5 uses
  br i1 %i.r, label %bb.qs, label %bb.qr, !prof !13, !nosanitize !12

bb.qr:                                            ; preds = %.preheader741
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @275, i64 %i.o) #5, !nosanitize !12
  br label %bb.qs, !nosanitize !12

bb.qs:                                            ; preds = %.preheader741, %bb.qr
  %i.wa = load ptr, ptr %i.ax, align 8, !tbaa !73 ; 3 uses
  br i1 %i.r, label %bb.qu, label %bb.qt, !prof !13, !nosanitize !12

bb.qt:                                            ; preds = %bb.qs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @276, i64 %i.o) #5, !nosanitize !12
  br label %bb.qu, !nosanitize !12

bb.qu:                                            ; preds = %bb.qs, %bb.qt
  %i.wb = load i32, ptr %i.ay, align 4, !tbaa !74 ; 3 uses
  %i.wc = icmp ult i32 %i.wb, 32
  br i1 %i.wc, label %bb.qw, label %bb.qv, !prof !13, !nosanitize !12

bb.qv:                                            ; preds = %bb.qu
  %i.wd = zext i32 %i.wb to i64, !nosanitize !12
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @277, i64 1, i64 %i.wd) #6, !nosanitize !12
  br label %bb.qw, !nosanitize !12

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %notmask574 = shl nsw i32 -1, %i.wb
  %i.we = xor i32 %notmask574, -1
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = and i64 %.15468, %i.wf                  ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %i.wg ; 2 uses
  %i.wi = shl nuw nsw i64 %i.wg, 2
  %i.wj = ptrtoint ptr %i.wa to i64, !nosanitize !12 ; 3 uses
  %i.wk = add i64 %i.wi, %i.wj, !nosanitize !12   ; 3 uses
  %i.wl = icmp ne ptr %i.wa, null, !nosanitize !12 ; 2 uses
  %i.wm = icmp eq i64 %i.wk, 0
  %i.wn = xor i1 %i.wl, %i.wm
  %i.wo = icmp uge i64 %i.wk, %i.wj, !nosanitize !12
  %i.wp = and i1 %i.wo, %i.wn, !nosanitize !12
  br i1 %i.wp, label %bb.qy, label %bb.qx, !prof !13, !nosanitize !12

bb.qx:                                            ; preds = %bb.qw
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @278, i64 %i.wj, i64 %i.wk) #5, !nosanitize !12
  br label %bb.qy, !nosanitize !12

bb.qy:                                            ; preds = %bb.qx, %bb.qw
  %i.wq = ptrtoint ptr %i.wh to i64, !nosanitize !12 ; 2 uses
  %i.wr = and i64 %i.wq, 1, !nosanitize !12
  %i.ws = icmp eq i64 %i.wr, 0, !nosanitize !12
  %i.wt = and i1 %i.wl, %i.ws
  br i1 %i.wt, label %bb.ra, label %bb.qz, !prof !13, !nosanitize !12

bb.qz:                                            ; preds = %bb.qy
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @279, i64 %i.wq) #5, !nosanitize !12
  br label %bb.ra, !nosanitize !12

bb.ra:                                            ; preds = %bb.qz, %bb.qy
  %i.wu = load i32, ptr %i.wh, align 2            ; 6 uses
  %.sroa.18.0.extract.shift661 = lshr i32 %i.wu, 8 ; 2 uses
  %i.wv = and i32 %.sroa.18.0.extract.shift661, 255 ; 5 uses
  %i.ww = zext nneg i32 %i.wv to i64              ; 6 uses
  %.not575 = icmp samesign ult i64 %indvars.iv1109, %i.ww
  br i1 %.not575, label %bb.rb, label %bb.rq

bb.rb:                                            ; preds = %bb.ra
  %i.wx = icmp eq i32 %.25512, 0
  br i1 %i.wx, label %bb.rc, label %bb.rh

bb.rc:                                            ; preds = %bb.rb
  %i.wy = load i32, ptr %i.am, align 4, !nosanitize !12
  %i.wz = icmp eq i32 %i.wy, -1056584962, !nosanitize !12
  br i1 %i.wz, label %bb.rd, label %bb.rf, !nosanitize !12

bb.rd:                                            ; preds = %bb.rc
  %i.xa = load i32, ptr %i.an, align 8, !nosanitize !12
  %i.xb = icmp eq i32 %i.xa, -1949095732, !nosanitize !12
  br i1 %i.xb, label %bb.rf, label %bb.re, !prof !13, !nosanitize !12

bb.re:                                            ; preds = %bb.rd
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @280, i64 %i.ao) #5, !nosanitize !12
  br label %bb.rf, !nosanitize !12

bb.rf:                                            ; preds = %bb.rd, %bb.re, %bb.rc
  %i.xc = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %bb.rf
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %.loopexit736

bb.rh:                                            ; preds = %bb.rf, %bb.rb
  %.26 = phi i32 [ %i.xc, %bb.rf ], [ %.25512, %bb.rb ]
  %i.xe = add i32 %.26, -1
  %i.xf = load ptr, ptr %i.a, align 8, !tbaa !60  ; 4 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 1
  %i.xh = ptrtoint ptr %i.xf to i64, !nosanitize !12 ; 3 uses
  %i.xi = add i64 %i.xh, 1, !nosanitize !12       ; 2 uses
  %i.xj = icmp ne ptr %i.xf, null, !nosanitize !12 ; 2 uses
  %i.xk = icmp ne i64 %i.xi, 0
  %i.xl = and i1 %i.xj, %i.xk, !nosanitize !12
  br i1 %i.xl, label %bb.rj, label %bb.ri, !prof !13, !nosanitize !12

bb.ri:                                            ; preds = %bb.rh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @281, i64 %i.xh, i64 %i.xi) #5, !nosanitize !12
  br label %bb.rj, !nosanitize !12

bb.rj:                                            ; preds = %bb.ri, %bb.rh
  store ptr %i.xg, ptr %i.a, align 8, !tbaa !60
  br i1 %i.xj, label %bb.rl, label %bb.rk, !prof !13, !nosanitize !12

bb.rk:                                            ; preds = %bb.rj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @282, i64 %i.xh) #5, !nosanitize !12
  br label %bb.rl, !nosanitize !12

bb.rl:                                            ; preds = %bb.rk, %bb.rj
  %i.xm = load i8, ptr %i.xf, align 1, !tbaa !30
  %i.xn = zext i8 %i.xm to i64                    ; 3 uses
  %i.xo = icmp samesign ult i64 %indvars.iv1109, 64
  %i.xp = sub nuw nsw i64 63, %indvars.iv1109
  %i.xq = lshr i64 %i.xn, %i.xp
  %i.xr = icmp samesign ult i64 %i.xq, 2
  %i.xs = select i1 %i.xo, i1 %i.xr, i1 false
  br i1 %i.xs, label %bb.rn, label %bb.rm, !prof !13, !nosanitize !12

bb.rm:                                            ; preds = %bb.rl
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @283, i64 %i.xn, i64 %indvars.iv1109) #6, !nosanitize !12
  br label %bb.rn, !nosanitize !12

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %i.xt = shl i64 %i.xn, %indvars.iv1109          ; 2 uses
  %i.xu = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.15468, i64 %i.xt), !nosanitize !12 ; 2 uses
  %i.xv = extractvalue { i64, i1 } %i.xu, 0, !nosanitize !12
  %i.xw = extractvalue { i64, i1 } %i.xu, 1, !nosanitize !12
  br i1 %i.xw, label %bb.ro, label %bb.rp, !prof !62, !nosanitize !12

bb.ro:                                            ; preds = %bb.rn
  call void @__ubsan_handle_add_overflow(ptr nonnull @284, i64 %.15468, i64 %i.xt) #6, !nosanitize !12
  br label %bb.rp, !nosanitize !12

bb.rp:                                            ; preds = %bb.rn, %bb.ro
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 8
  br label %.preheader741

bb.rq:                                            ; preds = %bb.ra
  %i.xx = trunc nuw i64 %indvars.iv1109 to i32
  %.sroa.0643.0.extract.trunc652 = trunc i32 %i.wu to i8 ; 2 uses
  %i.xy = add i8 %.sroa.0643.0.extract.trunc652, -1
  %or.cond626 = icmp ult i8 %i.xy, 15
  br i1 %or.cond626, label %bb.rr, label %bb.sv

bb.rr:                                            ; preds = %bb.rq
  %.sroa.16.0.extract.shift = lshr i32 %i.wu, 16
  %.sroa.16.0.extract.trunc = zext nneg i32 %.sroa.16.0.extract.shift to i64
  %i.xz = and i32 %i.wu, 255
  %i.ya = add nuw nsw i32 %i.wv, %i.xz            ; 3 uses
  %i.yb = icmp samesign ult i32 %i.ya, 32
  %i.yc = zext nneg i32 %i.ya to i64
  %notmask577 = shl nsw i32 -1, %i.ya
  %i.yd = xor i32 %notmask577, -1
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = and i32 %i.wu, 49152
  %i.yg = icmp eq i32 %i.yf, 0                    ; 2 uses
  br label %bb.rs

bb.rs:                                            ; preds = %bb.sr, %bb.rr
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %bb.sr ], [ %indvars.iv1109, %bb.rr ] ; 7 uses
  %.27 = phi i32 [ %i.zi, %bb.sr ], [ %.25512, %bb.rr ] ; 3 uses
  %.16469 = phi i64 [ %i.zz, %bb.sr ], [ %.15468, %bb.rr ] ; 5 uses
  br i1 %i.r, label %bb.ru, label %bb.rt, !prof !13, !nosanitize !12

bb.rt:                                            ; preds = %bb.rs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @285, i64 %i.o) #5, !nosanitize !12
  br label %bb.ru, !nosanitize !12

bb.ru:                                            ; preds = %bb.rs, %bb.rt
  %i.yh = load ptr, ptr %i.ax, align 8, !tbaa !73 ; 3 uses
  br i1 %i.yb, label %bb.rw, label %bb.rv, !prof !13, !nosanitize !12

bb.rv:                                            ; preds = %bb.ru
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @286, i64 1, i64 %i.yc) #6, !nosanitize !12
  br label %bb.rw, !nosanitize !12

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  %i.yi = and i64 %.16469, %i.ye                  ; 2 uses
  br i1 %i.yg, label %bb.ry, label %bb.rx, !prof !13, !nosanitize !12

bb.rx:                                            ; preds = %bb.rw
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @287, i64 %i.yi, i64 %i.ww) #5, !nosanitize !12
  br label %bb.ry, !nosanitize !12

bb.ry:                                            ; preds = %bb.rw, %bb.rx
  %i.yj = lshr i64 %i.yi, %i.ww
  %i.yk = add nuw nsw i64 %i.yj, %.sroa.16.0.extract.trunc ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.yk ; 2 uses
  %i.ym = shl nuw nsw i64 %i.yk, 2
  %i.yn = ptrtoint ptr %i.yh to i64, !nosanitize !12 ; 3 uses
  %i.yo = add i64 %i.ym, %i.yn, !nosanitize !12   ; 3 uses
  %i.yp = icmp ne ptr %i.yh, null, !nosanitize !12 ; 2 uses
  %i.yq = icmp eq i64 %i.yo, 0
  %i.yr = xor i1 %i.yp, %i.yq
  %i.ys = icmp uge i64 %i.yo, %i.yn, !nosanitize !12
  %i.yt = and i1 %i.ys, %i.yr, !nosanitize !12
  br i1 %i.yt, label %bb.sa, label %bb.rz, !prof !13, !nosanitize !12

bb.rz:                                            ; preds = %bb.ry
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @288, i64 %i.yn, i64 %i.yo) #5, !nosanitize !12
  br label %bb.sa, !nosanitize !12

bb.sa:                                            ; preds = %bb.rz, %bb.ry
  %i.yu = ptrtoint ptr %i.yl to i64, !nosanitize !12 ; 2 uses
  %i.yv = and i64 %i.yu, 1, !nosanitize !12
  %i.yw = icmp eq i64 %i.yv, 0, !nosanitize !12
  %i.yx = and i1 %i.yp, %i.yw
  br i1 %i.yx, label %bb.sc, label %bb.sb, !prof !13, !nosanitize !12

bb.sb:                                            ; preds = %bb.sa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @289, i64 %i.yu) #5, !nosanitize !12
  br label %bb.sc, !nosanitize !12

bb.sc:                                            ; preds = %bb.sb, %bb.sa
  %i.yy = load i32, ptr %i.yl, align 2            ; 3 uses
  %.sroa.18.0.extract.shift663 = lshr i32 %i.yy, 8 ; 2 uses
  %i.yz = and i32 %.sroa.18.0.extract.shift663, 255 ; 3 uses
  %i.za = add nuw nsw i32 %i.yz, %i.wv
  %5 = zext nneg i32 %i.za to i64
  %.not578 = icmp samesign ult i64 %indvars.iv1113, %5
  br i1 %.not578, label %bb.sd, label %bb.ss

bb.sd:                                            ; preds = %bb.sc
  %i.zb = icmp eq i32 %.27, 0
  br i1 %i.zb, label %bb.se, label %bb.sj

bb.se:                                            ; preds = %bb.sd
  %i.zc = load i32, ptr %i.am, align 4, !nosanitize !12
  %i.zd = icmp eq i32 %i.zc, -1056584962, !nosanitize !12
  br i1 %i.zd, label %bb.sf, label %bb.sh, !nosanitize !12

bb.sf:                                            ; preds = %bb.se
  %i.ze = load i32, ptr %i.an, align 8, !nosanitize !12
  %i.zf = icmp eq i32 %i.ze, -1949095732, !nosanitize !12
  br i1 %i.zf, label %bb.sh, label %bb.sg, !prof !13, !nosanitize !12

bb.sg:                                            ; preds = %bb.sf
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @290, i64 %i.ao) #5, !nosanitize !12
  br label %bb.sh, !nosanitize !12

bb.sh:                                            ; preds = %bb.sf, %bb.sg, %bb.se
  %i.zg = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.zh = icmp eq i32 %i.zg, 0
  br i1 %i.zh, label %bb.si, label %bb.sj

bb.si:                                            ; preds = %bb.sh
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %.loopexit736

bb.sj:                                            ; preds = %bb.sh, %bb.sd
  %.28 = phi i32 [ %i.zg, %bb.sh ], [ %.27, %bb.sd ]
  %i.zi = add i32 %.28, -1
  %i.zj = load ptr, ptr %i.a, align 8, !tbaa !60  ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 1
  %i.zl = ptrtoint ptr %i.zj to i64, !nosanitize !12 ; 3 uses
  %i.zm = add i64 %i.zl, 1, !nosanitize !12       ; 2 uses
  %i.zn = icmp ne ptr %i.zj, null, !nosanitize !12 ; 2 uses
  %i.zo = icmp ne i64 %i.zm, 0
  %i.zp = and i1 %i.zn, %i.zo, !nosanitize !12
  br i1 %i.zp, label %bb.sl, label %bb.sk, !prof !13, !nosanitize !12

bb.sk:                                            ; preds = %bb.sj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @291, i64 %i.zl, i64 %i.zm) #5, !nosanitize !12
  br label %bb.sl, !nosanitize !12

bb.sl:                                            ; preds = %bb.sk, %bb.sj
  store ptr %i.zk, ptr %i.a, align 8, !tbaa !60
  br i1 %i.zn, label %bb.sn, label %bb.sm, !prof !13, !nosanitize !12

bb.sm:                                            ; preds = %bb.sl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @292, i64 %i.zl) #5, !nosanitize !12
  br label %bb.sn, !nosanitize !12

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %i.zq = load i8, ptr %i.zj, align 1, !tbaa !30
  %i.zr = zext i8 %i.zq to i64                    ; 3 uses
  %i.zs = icmp samesign ult i64 %indvars.iv1113, 64
  %i.zt = sub nuw nsw i64 63, %indvars.iv1113
  %i.zu = lshr i64 %i.zr, %i.zt
  %i.zv = icmp samesign ult i64 %i.zu, 2
  %i.zw = select i1 %i.zs, i1 %i.zv, i1 false
  br i1 %i.zw, label %bb.sp, label %bb.so, !prof !13, !nosanitize !12

bb.so:                                            ; preds = %bb.sn
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @293, i64 %i.zr, i64 %indvars.iv1113) #6, !nosanitize !12
  br label %bb.sp, !nosanitize !12

bb.sp:                                            ; preds = %bb.so, %bb.sn
  %i.zx = shl i64 %i.zr, %indvars.iv1113          ; 2 uses
  %i.zy = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.16469, i64 %i.zx), !nosanitize !12 ; 2 uses
  %i.zz = extractvalue { i64, i1 } %i.zy, 0, !nosanitize !12
  %i.aaa = extractvalue { i64, i1 } %i.zy, 1, !nosanitize !12
  br i1 %i.aaa, label %bb.sq, label %bb.sr, !prof !62, !nosanitize !12

bb.sq:                                            ; preds = %bb.sp
  call void @__ubsan_handle_add_overflow(ptr nonnull @294, i64 %.16469, i64 %i.zx) #6, !nosanitize !12
  br label %bb.sr, !nosanitize !12

bb.sr:                                            ; preds = %bb.sp, %bb.sq
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 8
  br label %bb.rs

bb.ss:                                            ; preds = %bb.sc
  %6 = trunc nuw i64 %indvars.iv1113 to i32
  %.sroa.0643.0.extract.trunc654.le = trunc i32 %i.yy to i8
  br i1 %i.yg, label %bb.su, label %bb.st, !prof !13, !nosanitize !12

bb.st:                                            ; preds = %bb.ss
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @295, i64 %.16469, i64 %i.ww) #5, !nosanitize !12
  br label %bb.su, !nosanitize !12

bb.su:                                            ; preds = %bb.st, %bb.ss
  %i.aab = lshr i64 %.16469, %i.ww
  %i.aac = sub nuw i32 %6, %i.wv
  %.pre = zext nneg i32 %i.yz to i64
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.rq
  %.pre-phi = phi i64 [ %.pre, %bb.su ], [ %i.ww, %bb.rq ] ; 3 uses
  %.sroa.18.0.mask.pre-phi = phi i32 [ %i.yz, %bb.su ], [ %i.wv, %bb.rq ]
  %.sroa.38.0.in.in = phi i32 [ %i.yy, %bb.su ], [ %i.wu, %bb.rq ]
  %.sroa.18.0.in = phi i32 [ %.sroa.18.0.extract.shift663, %bb.su ], [ %.sroa.18.0.extract.shift661, %bb.rq ]
  %.sroa.0643.0 = phi i8 [ %.sroa.0643.0.extract.trunc654.le, %bb.su ], [ %.sroa.0643.0.extract.trunc652, %bb.rq ] ; 4 uses
  %.29 = phi i32 [ %.27, %bb.su ], [ %.25512, %bb.rq ] ; 6 uses
  %.17470 = phi i64 [ %i.aab, %bb.su ], [ %.15468, %bb.rq ] ; 2 uses
  %.17 = phi i32 [ %i.aac, %bb.su ], [ %i.xx, %bb.rq ] ; 2 uses
  %.sroa.38.0.in = lshr i32 %.sroa.38.0.in.in, 16
  %i.aad = and i32 %.sroa.18.0.in, 192
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %bb.sx, label %bb.sw, !prof !13, !nosanitize !12

bb.sw:                                            ; preds = %bb.sv
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @296, i64 %.17470, i64 %.pre-phi) #5, !nosanitize !12
  br label %bb.sx, !nosanitize !12

bb.sx:                                            ; preds = %bb.sw, %bb.sv
  %i.aaf = lshr i64 %.17470, %.pre-phi            ; 5 uses
  %i.aag = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.17, i32 %.sroa.18.0.mask.pre-phi), !nosanitize !12 ; 2 uses
  %i.aah = extractvalue { i32, i1 } %i.aag, 0, !nosanitize !12 ; 5 uses
  %i.aai = extractvalue { i32, i1 } %i.aag, 1, !nosanitize !12
  br i1 %i.aai, label %bb.sy, label %bb.sz, !prof !62, !nosanitize !12

bb.sy:                                            ; preds = %bb.sx
  %i.aaj = zext i32 %.17 to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @297, i64 %i.aaj, i64 %.pre-phi) #6, !nosanitize !12
  br label %bb.sz, !nosanitize !12

bb.sz:                                            ; preds = %bb.sy, %bb.sx
  br i1 %i.r, label %bb.tb, label %bb.ta, !prof !13, !nosanitize !12

bb.ta:                                            ; preds = %bb.sz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @298, i64 %i.o) #5, !nosanitize !12
  br label %bb.tb, !nosanitize !12

bb.tb:                                            ; preds = %bb.sz, %bb.ta
  store i32 %.sroa.38.0.in, ptr %i.bd, align 4, !tbaa !64
  %i.aak = icmp eq i8 %.sroa.0643.0, 0
  br i1 %i.aak, label %bb.tc, label %bb.ue

bb.tc:                                            ; preds = %bb.tb
  %i.aal = icmp eq i32 %.0479, 0
  br i1 %i.aal, label %bb.td, label %bb.tr

bb.td:                                            ; preds = %bb.tc
  br i1 %i.r, label %bb.tf, label %bb.te, !prof !13, !nosanitize !12

bb.te:                                            ; preds = %bb.td
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @299, i64 %i.o) #5, !nosanitize !12
  br label %bb.tf, !nosanitize !12

bb.tf:                                            ; preds = %bb.te, %bb.td
  br i1 %i.af, label %bb.th, label %bb.tg, !prof !13, !nosanitize !12

bb.tg:                                            ; preds = %bb.tf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @300, i64 %i.ad) #5, !nosanitize !12
  br label %bb.th, !nosanitize !12

bb.th:                                            ; preds = %bb.tg, %bb.tf
  %i.aam = load ptr, ptr %i.ac, align 16, !tbaa !28 ; 2 uses
  br i1 %i.r, label %bb.tj, label %bb.ti, !prof !13, !nosanitize !12

bb.ti:                                            ; preds = %bb.th
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @301, i64 %i.o) #5, !nosanitize !12
  br label %bb.tj, !nosanitize !12

bb.tj:                                            ; preds = %bb.ti, %bb.th
  br i1 %i.ak, label %bb.tl, label %bb.tk, !prof !13, !nosanitize !12

bb.tk:                                            ; preds = %bb.tj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @302, i64 %i.ai) #5, !nosanitize !12
  br label %bb.tl, !nosanitize !12

bb.tl:                                            ; preds = %bb.tk, %bb.tj
  %i.aan = load i32, ptr %i.ah, align 64, !tbaa !27 ; 4 uses
  br i1 %i.r, label %bb.tn, label %bb.tm, !prof !13, !nosanitize !12

bb.tm:                                            ; preds = %bb.tl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @303, i64 %i.o) #5, !nosanitize !12
  br label %bb.tn, !nosanitize !12

bb.tn:                                            ; preds = %bb.tl, %bb.tm
  store i32 %i.aan, ptr %i.x, align 8, !tbaa !29
  %i.aao = load i32, ptr %i.bg, align 4, !nosanitize !12
  %i.aap = icmp eq i32 %i.aao, -1056584962, !nosanitize !12
  br i1 %i.aap, label %bb.to, label %bb.tq, !nosanitize !12

bb.to:                                            ; preds = %bb.tn
  %i.aaq = load i32, ptr %i.bh, align 8, !nosanitize !12
  %i.aar = icmp eq i32 %i.aaq, -620532382, !nosanitize !12
  br i1 %i.aar, label %bb.tq, label %bb.tp, !prof !13, !nosanitize !12

bb.tp:                                            ; preds = %bb.to
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @304, i64 %i.bi) #5, !nosanitize !12
  br label %bb.tq, !nosanitize !12

bb.tq:                                            ; preds = %bb.to, %bb.tp, %bb.tn
  %i.aas = call i32 %3(ptr noundef %4, ptr noundef %i.aam, i32 noundef %i.aan) #5
  %.not594 = icmp eq i32 %i.aas, 0
  br i1 %.not594, label %bb.tr, label %.loopexit736

bb.tr:                                            ; preds = %bb.tq, %bb.tc
  %.3516 = phi ptr [ %i.aam, %bb.tq ], [ %.0513, %bb.tc ] ; 4 uses
  %.3482 = phi i32 [ %i.aan, %bb.tq ], [ %.0479, %bb.tc ] ; 2 uses
  br i1 %i.r, label %bb.tt, label %bb.ts, !prof !13, !nosanitize !12

bb.ts:                                            ; preds = %bb.tr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @305, i64 %i.o) #5, !nosanitize !12
  br label %bb.tt, !nosanitize !12

bb.tt:                                            ; preds = %bb.tr, %bb.ts
  %i.aat = load i32, ptr %i.bd, align 4, !tbaa !64
  %i.aau = trunc i32 %i.aat to i8
  %i.aav = getelementptr inbounds nuw i8, ptr %.3516, i64 1
  %i.aaw = ptrtoint ptr %.3516 to i64, !nosanitize !12 ; 3 uses
  %i.aax = add i64 %i.aaw, 1, !nosanitize !12     ; 2 uses
  %i.aay = icmp ne ptr %.3516, null, !nosanitize !12 ; 2 uses
  %i.aaz = icmp ne i64 %i.aax, 0
  %i.aba = and i1 %i.aay, %i.aaz, !nosanitize !12
  br i1 %i.aba, label %bb.tv, label %bb.tu, !prof !13, !nosanitize !12

bb.tu:                                            ; preds = %bb.tt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @306, i64 %i.aaw, i64 %i.aax) #5, !nosanitize !12
  br label %bb.tv, !nosanitize !12

bb.tv:                                            ; preds = %bb.tu, %bb.tt
  br i1 %i.aay, label %bb.tx, label %bb.tw, !prof !13, !nosanitize !12

bb.tw:                                            ; preds = %bb.tv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @307, i64 %i.aaw) #5, !nosanitize !12
  br label %bb.tx, !nosanitize !12

bb.tx:                                            ; preds = %bb.tw, %bb.tv
  store i8 %i.aau, ptr %.3516, align 1, !tbaa !30
  %i.abb = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.3482, i32 1), !nosanitize !12 ; 2 uses
  %i.abc = extractvalue { i32, i1 } %i.abb, 0, !nosanitize !12
  %i.abd = extractvalue { i32, i1 } %i.abb, 1, !nosanitize !12
  br i1 %i.abd, label %bb.ty, label %bb.tz, !prof !62, !nosanitize !12

bb.ty:                                            ; preds = %bb.tx
  %i.abe = zext nneg i32 %.3482 to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @308, i64 %i.abe, i64 1) #6, !nosanitize !12
  br label %bb.tz, !nosanitize !12

bb.tz:                                            ; preds = %bb.ty, %bb.tx
  br i1 %i.r, label %bb.ub, label %bb.ua, !prof !13, !nosanitize !12

bb.ua:                                            ; preds = %bb.tz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @309, i64 %i.o) #5, !nosanitize !12
  br label %bb.ub, !nosanitize !12

bb.ub:                                            ; preds = %bb.ua, %bb.tz
  br i1 %i.v, label %bb.ud, label %bb.uc, !prof !13, !nosanitize !12

bb.uc:                                            ; preds = %bb.ub
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @310, i64 %i.t) #5, !nosanitize !12
  br label %bb.ud, !nosanitize !12

bb.ud:                                            ; preds = %bb.uc, %bb.ub
  store i32 16200, ptr %i.s, align 8, !tbaa !57
  br label %.loopexit738.backedge

bb.ue:                                            ; preds = %bb.tb
  %i.abf = and i8 %.sroa.0643.0, 32
  %.not579 = icmp eq i8 %i.abf, 0
  br i1 %.not579, label %bb.uk, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  br i1 %i.r, label %bb.uh, label %bb.ug, !prof !13, !nosanitize !12

bb.ug:                                            ; preds = %bb.uf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @311, i64 %i.o) #5, !nosanitize !12
  br label %bb.uh, !nosanitize !12

bb.uh:                                            ; preds = %bb.ug, %bb.uf
  br i1 %i.v, label %bb.uj, label %bb.ui, !prof !13, !nosanitize !12

bb.ui:                                            ; preds = %bb.uh
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @312, i64 %i.t) #5, !nosanitize !12
  br label %bb.uj, !nosanitize !12

bb.uj:                                            ; preds = %bb.ui, %bb.uh
  store i32 16191, ptr %i.s, align 8, !tbaa !57
  br label %.loopexit738.backedge

bb.uk:                                            ; preds = %bb.ue
  %i.abg = and i8 %.sroa.0643.0, 64
  %.not580 = icmp eq i8 %i.abg, 0
  br i1 %.not580, label %bb.us, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  br i1 %i.r, label %bb.un, label %bb.um, !prof !13, !nosanitize !12

bb.um:                                            ; preds = %bb.ul
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @313, i64 %i.o) #5, !nosanitize !12
end_hunk_0
begin_hunk_1_@zng_inflateBack:bb.a

bb.ut:                                            ; preds = %bb.us
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @316, i64 %i.o) #5, !nosanitize !12
  store i32 %i.abi, ptr %i.be, align 4, !tbaa !83
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @317, i64 %i.o) #5, !nosanitize !12
  br label %bb.uu, !nosanitize !12

.critedge1472.a:                                  ; preds = %bb.us
  store i32 %i.abi, ptr %i.be, align 4, !tbaa !83
  br label %bb.uu

bb.uu:                                            ; preds = %bb.ut, %.critedge1472.a
  %i.abj = load i32, ptr %i.be, align 4, !tbaa !83
  %.not581 = icmp eq i32 %i.abj, 0
  br i1 %.not581, label %bb.vz, label %.preheader740

.preheader740:                                    ; preds = %bb.uu, %.preheader740.backedge
  %.30 = phi i32 [ %i.abt, %.preheader740.backedge ], [ %.29, %bb.uu ] ; 4 uses
  %.18471 = phi i64 [ %i.acl, %.preheader740.backedge ], [ %i.aaf, %bb.uu ] ; 6 uses
  %.18 = phi i32 [ %i.aco, %.preheader740.backedge ], [ %i.aah, %bb.uu ] ; 6 uses
  br i1 %i.r, label %bb.uw, label %bb.uv, !prof !13, !nosanitize !12

bb.uv:                                            ; preds = %.preheader740
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @318, i64 %i.o) #5, !nosanitize !12
  br label %bb.uw, !nosanitize !12

bb.uw:                                            ; preds = %.preheader740, %bb.uv
  %i.abk = load i32, ptr %i.be, align 4, !tbaa !83
  %i.abl = icmp ult i32 %.18, %i.abk
  br i1 %i.abl, label %bb.ux, label %bb.vn

bb.ux:                                            ; preds = %bb.uw
  %i.abm = icmp eq i32 %.30, 0
  br i1 %i.abm, label %bb.uy, label %bb.vd

bb.uy:                                            ; preds = %bb.ux
  %i.abn = load i32, ptr %i.am, align 4, !nosanitize !12
  %i.abo = icmp eq i32 %i.abn, -1056584962, !nosanitize !12
  br i1 %i.abo, label %bb.uz, label %bb.vb, !nosanitize !12

bb.uz:                                            ; preds = %bb.uy
  %i.abp = load i32, ptr %i.an, align 8, !nosanitize !12
  %i.abq = icmp eq i32 %i.abp, -1949095732, !nosanitize !12
  br i1 %i.abq, label %bb.vb, label %bb.va, !prof !13, !nosanitize !12

bb.va:                                            ; preds = %bb.uz
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @319, i64 %i.ao) #5, !nosanitize !12
  br label %bb.vb, !nosanitize !12

bb.vb:                                            ; preds = %bb.uz, %bb.va, %bb.uy
  %i.abr = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.abs = icmp eq i32 %i.abr, 0
  br i1 %i.abs, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %.loopexit736

bb.vd:                                            ; preds = %bb.vb, %bb.ux
  %.31 = phi i32 [ %i.abr, %bb.vb ], [ %.30, %bb.ux ]
  %i.abt = add i32 %.31, -1
  %i.abu = load ptr, ptr %i.a, align 8, !tbaa !60 ; 4 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 1
  %i.abw = ptrtoint ptr %i.abu to i64, !nosanitize !12 ; 3 uses
  %i.abx = add i64 %i.abw, 1, !nosanitize !12     ; 2 uses
  %i.aby = icmp ne ptr %i.abu, null, !nosanitize !12 ; 2 uses
  %i.abz = icmp ne i64 %i.abx, 0
  %i.aca = and i1 %i.aby, %i.abz, !nosanitize !12
  br i1 %i.aca, label %bb.vf, label %bb.ve, !prof !13, !nosanitize !12

bb.ve:                                            ; preds = %bb.vd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @320, i64 %i.abw, i64 %i.abx) #5, !nosanitize !12
  br label %bb.vf, !nosanitize !12

bb.vf:                                            ; preds = %bb.ve, %bb.vd
  store ptr %i.abv, ptr %i.a, align 8, !tbaa !60
  br i1 %i.aby, label %bb.vh, label %bb.vg, !prof !13, !nosanitize !12

bb.vg:                                            ; preds = %bb.vf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @321, i64 %i.abw) #5, !nosanitize !12
  br label %bb.vh, !nosanitize !12

bb.vh:                                            ; preds = %bb.vg, %bb.vf
  %i.acb = load i8, ptr %i.abu, align 1, !tbaa !30
  %i.acc = zext i8 %i.acb to i64                  ; 3 uses
  %i.acd = zext i32 %.18 to i64                   ; 4 uses
  %i.ace = icmp ult i32 %.18, 64
  %i.acf = sub nuw nsw i64 63, %i.acd
  %i.acg = lshr i64 %i.acc, %i.acf
  %i.ach = icmp samesign ult i64 %i.acg, 2
  %i.aci = select i1 %i.ace, i1 %i.ach, i1 false
  br i1 %i.aci, label %bb.vj, label %bb.vi, !prof !13, !nosanitize !12

bb.vi:                                            ; preds = %bb.vh
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @322, i64 %i.acc, i64 %i.acd) #6, !nosanitize !12
  br label %bb.vj, !nosanitize !12

bb.vj:                                            ; preds = %bb.vi, %bb.vh
  %i.acj = shl i64 %i.acc, %i.acd                 ; 2 uses
  %i.ack = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.18471, i64 %i.acj), !nosanitize !12 ; 2 uses
  %i.acl = extractvalue { i64, i1 } %i.ack, 0, !nosanitize !12
  %i.acm = extractvalue { i64, i1 } %i.ack, 1, !nosanitize !12
  br i1 %i.acm, label %bb.vk, label %bb.vl, !prof !62, !nosanitize !12

bb.vk:                                            ; preds = %bb.vj
  call void @__ubsan_handle_add_overflow(ptr nonnull @323, i64 %.18471, i64 %i.acj) #6, !nosanitize !12
  br label %bb.vl, !nosanitize !12

bb.vl:                                            ; preds = %bb.vk, %bb.vj
  %i.acn = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.18, i32 8), !nosanitize !12 ; 2 uses
  %i.aco = extractvalue { i32, i1 } %i.acn, 0, !nosanitize !12
  %i.acp = extractvalue { i32, i1 } %i.acn, 1, !nosanitize !12
  br i1 %i.acp, label %bb.vm, label %.preheader740.backedge, !prof !62, !nosanitize !12

bb.vm:                                            ; preds = %bb.vl
  call void @__ubsan_handle_add_overflow(ptr nonnull @324, i64 %i.acd, i64 8) #6, !nosanitize !12
  br label %.preheader740.backedge, !nosanitize !12

.preheader740.backedge:                           ; preds = %bb.vm, %bb.vl
  br label %.preheader740, !llvm.loop !52

bb.vn:                                            ; preds = %bb.uw
  br i1 %i.r, label %bb.vp, label %bb.vo, !prof !13, !nosanitize !12

bb.vo:                                            ; preds = %bb.vn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @325, i64 %i.o) #5, !nosanitize !12
  br label %bb.vp, !nosanitize !12

bb.vp:                                            ; preds = %bb.vn, %bb.vo
  %i.acq = load i32, ptr %i.be, align 4, !tbaa !83 ; 3 uses
  %i.acr = icmp ult i32 %i.acq, 32
  br i1 %i.acr, label %bb.vr, label %bb.vq, !prof !13, !nosanitize !12

bb.vq:                                            ; preds = %bb.vp
  %i.acs = zext i32 %i.acq to i64, !nosanitize !12
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @326, i64 1, i64 %i.acs) #6, !nosanitize !12
  br label %bb.vr, !nosanitize !12

bb.vr:                                            ; preds = %bb.vq, %bb.vp
  %notmask582 = shl nsw i32 -1, %i.acq
  %i.act = xor i32 %notmask582, -1                ; 2 uses
  br i1 %i.r, label %.critedge1474, label %bb.vs, !prof !13, !nosanitize !12

bb.vs:                                            ; preds = %bb.vr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @327, i64 %i.o) #5, !nosanitize !12
  %i.acu = load i32, ptr %i.bd, align 4, !tbaa !64
  %i.acv = trunc i64 %.18471 to i32
  %i.acw = and i32 %i.act, %i.acv
  %i.acx = add i32 %i.acu, %i.acw
  store i32 %i.acx, ptr %i.bd, align 4, !tbaa !64
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @328, i64 %i.o) #5, !nosanitize !12
  br label %bb.vt, !nosanitize !12

.critedge1474:                                    ; preds = %bb.vr
  %i.acy = load i32, ptr %i.bd, align 4, !tbaa !64
  %i.acz = trunc i64 %.18471 to i32
  %i.ada = and i32 %i.act, %i.acz
  %i.adb = add i32 %i.acy, %i.ada
  store i32 %i.adb, ptr %i.bd, align 4, !tbaa !64
  br label %bb.vt

bb.vt:                                            ; preds = %bb.vs, %.critedge1474
  %i.adc = load i32, ptr %i.be, align 4, !tbaa !83 ; 2 uses
  %i.add = zext i32 %i.adc to i64                 ; 2 uses
  %i.ade = icmp ult i32 %i.adc, 64
  br i1 %i.ade, label %bb.vv, label %bb.vu, !prof !13, !nosanitize !12

bb.vu:                                            ; preds = %bb.vt
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @329, i64 %.18471, i64 %i.add) #5, !nosanitize !12
  br label %bb.vv, !nosanitize !12

bb.vv:                                            ; preds = %bb.vu, %bb.vt
  %i.adf = lshr i64 %.18471, %i.add               ; 2 uses
  br i1 %i.r, label %bb.vx, label %bb.vw, !prof !13, !nosanitize !12

bb.vw:                                            ; preds = %bb.vv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @330, i64 %i.o) #5, !nosanitize !12
  br label %bb.vx, !nosanitize !12

bb.vx:                                            ; preds = %bb.vv, %bb.vw
  %i.adg = load i32, ptr %i.be, align 4, !tbaa !83 ; 2 uses
  %i.adh = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.18, i32 %i.adg), !nosanitize !12 ; 2 uses
  %i.adi = extractvalue { i32, i1 } %i.adh, 0, !nosanitize !12 ; 2 uses
  %i.adj = extractvalue { i32, i1 } %i.adh, 1, !nosanitize !12
  br i1 %i.adj, label %bb.vy, label %bb.vz, !prof !62, !nosanitize !12

bb.vy:                                            ; preds = %bb.vx
  %i.adk = zext i32 %.18 to i64, !nosanitize !12
  %i.adl = zext i32 %i.adg to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @331, i64 %i.adk, i64 %i.adl) #6, !nosanitize !12
  br label %bb.vz, !nosanitize !12

bb.vz:                                            ; preds = %bb.vx, %bb.vy, %bb.uu
  %.32 = phi i32 [ %.29, %bb.uu ], [ %.30, %bb.vy ], [ %.30, %bb.vx ]
  %.19472 = phi i64 [ %i.aaf, %bb.uu ], [ %i.adf, %bb.vy ], [ %i.adf, %bb.vx ]
  %.19 = phi i32 [ %i.aah, %bb.uu ], [ %i.adi, %bb.vy ], [ %i.adi, %bb.vx ]
  %i.adm = zext i32 %.19 to i64
  br label %bb.wa

bb.wa:                                            ; preds = %bb.wz, %bb.vz
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %bb.wz ], [ %i.adm, %bb.vz ] ; 8 uses
  %.33 = phi i32 [ %i.aer, %bb.wz ], [ %.32, %bb.vz ] ; 4 uses
  %.20473 = phi i64 [ %i.afi, %bb.wz ], [ %.19472, %bb.vz ] ; 5 uses
  br i1 %i.r, label %bb.wc, label %bb.wb, !prof !13, !nosanitize !12

bb.wb:                                            ; preds = %bb.wa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @332, i64 %i.o) #5, !nosanitize !12
  br label %bb.wc, !nosanitize !12

bb.wc:                                            ; preds = %bb.wa, %bb.wb
  %i.adn = load ptr, ptr %i.bb, align 16, !tbaa !75 ; 3 uses
  br i1 %i.r, label %bb.we, label %bb.wd, !prof !13, !nosanitize !12

bb.wd:                                            ; preds = %bb.wc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @333, i64 %i.o) #5, !nosanitize !12
  br label %bb.we, !nosanitize !12

bb.we:                                            ; preds = %bb.wc, %bb.wd
  %i.ado = load i32, ptr %i.bc, align 8, !tbaa !76 ; 3 uses
  %i.adp = icmp ult i32 %i.ado, 32
  br i1 %i.adp, label %bb.wg, label %bb.wf, !prof !13, !nosanitize !12

bb.wf:                                            ; preds = %bb.we
  %i.adq = zext i32 %i.ado to i64, !nosanitize !12
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @334, i64 1, i64 %i.adq) #6, !nosanitize !12
  br label %bb.wg, !nosanitize !12

bb.wg:                                            ; preds = %bb.wf, %bb.we
  %notmask583 = shl nsw i32 -1, %i.ado
  %i.adr = xor i32 %notmask583, -1
  %i.ads = zext nneg i32 %i.adr to i64
  %i.adt = and i64 %.20473, %i.ads                ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %i.adt ; 2 uses
  %i.adv = shl nuw nsw i64 %i.adt, 2
  %i.adw = ptrtoint ptr %i.adn to i64, !nosanitize !12 ; 3 uses
  %i.adx = add i64 %i.adv, %i.adw, !nosanitize !12 ; 3 uses
  %i.ady = icmp ne ptr %i.adn, null, !nosanitize !12 ; 2 uses
  %i.adz = icmp eq i64 %i.adx, 0
  %i.aea = xor i1 %i.ady, %i.adz
  %i.aeb = icmp uge i64 %i.adx, %i.adw, !nosanitize !12
  %i.aec = and i1 %i.aeb, %i.aea, !nosanitize !12
  br i1 %i.aec, label %bb.wi, label %bb.wh, !prof !13, !nosanitize !12

bb.wh:                                            ; preds = %bb.wg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @335, i64 %i.adw, i64 %i.adx) #5, !nosanitize !12
  br label %bb.wi, !nosanitize !12

bb.wi:                                            ; preds = %bb.wh, %bb.wg
  %i.aed = ptrtoint ptr %i.adu to i64, !nosanitize !12 ; 2 uses
  %i.aee = and i64 %i.aed, 1, !nosanitize !12
  %i.aef = icmp eq i64 %i.aee, 0, !nosanitize !12
  %i.aeg = and i1 %i.ady, %i.aef
  br i1 %i.aeg, label %bb.wk, label %bb.wj, !prof !13, !nosanitize !12

bb.wj:                                            ; preds = %bb.wi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @336, i64 %i.aed) #5, !nosanitize !12
  br label %bb.wk, !nosanitize !12

bb.wk:                                            ; preds = %bb.wj, %bb.wi
  %i.aeh = load i32, ptr %i.adu, align 2          ; 6 uses
  %.sroa.18.0.extract.shift665 = lshr i32 %i.aeh, 8 ; 2 uses
  %i.aei = and i32 %.sroa.18.0.extract.shift665, 255 ; 5 uses
  %i.aej = zext nneg i32 %i.aei to i64            ; 6 uses
  %.not584 = icmp samesign ult i64 %indvars.iv1116, %i.aej
  br i1 %.not584, label %bb.wl, label %bb.xa

bb.wl:                                            ; preds = %bb.wk
  %i.aek = icmp eq i32 %.33, 0
  br i1 %i.aek, label %bb.wm, label %bb.wr

bb.wm:                                            ; preds = %bb.wl
  %i.ael = load i32, ptr %i.am, align 4, !nosanitize !12
  %i.aem = icmp eq i32 %i.ael, -1056584962, !nosanitize !12
  br i1 %i.aem, label %bb.wn, label %bb.wp, !nosanitize !12

bb.wn:                                            ; preds = %bb.wm
  %i.aen = load i32, ptr %i.an, align 8, !nosanitize !12
  %i.aeo = icmp eq i32 %i.aen, -1949095732, !nosanitize !12
  br i1 %i.aeo, label %bb.wp, label %bb.wo, !prof !13, !nosanitize !12

bb.wo:                                            ; preds = %bb.wn
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @337, i64 %i.ao) #5, !nosanitize !12
  br label %bb.wp, !nosanitize !12

bb.wp:                                            ; preds = %bb.wn, %bb.wo, %bb.wm
  %i.aep = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.aeq = icmp eq i32 %i.aep, 0
  br i1 %i.aeq, label %bb.wq, label %bb.wr

bb.wq:                                            ; preds = %bb.wp
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %.loopexit736

bb.wr:                                            ; preds = %bb.wp, %bb.wl
  %.34 = phi i32 [ %i.aep, %bb.wp ], [ %.33, %bb.wl ]
  %i.aer = add i32 %.34, -1
  %i.aes = load ptr, ptr %i.a, align 8, !tbaa !60 ; 4 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 1
  %i.aeu = ptrtoint ptr %i.aes to i64, !nosanitize !12 ; 3 uses
  %i.aev = add i64 %i.aeu, 1, !nosanitize !12     ; 2 uses
  %i.aew = icmp ne ptr %i.aes, null, !nosanitize !12 ; 2 uses
  %i.aex = icmp ne i64 %i.aev, 0
  %i.aey = and i1 %i.aew, %i.aex, !nosanitize !12
  br i1 %i.aey, label %bb.wt, label %bb.ws, !prof !13, !nosanitize !12

bb.ws:                                            ; preds = %bb.wr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @338, i64 %i.aeu, i64 %i.aev) #5, !nosanitize !12
  br label %bb.wt, !nosanitize !12

bb.wt:                                            ; preds = %bb.ws, %bb.wr
  store ptr %i.aet, ptr %i.a, align 8, !tbaa !60
  br i1 %i.aew, label %bb.wv, label %bb.wu, !prof !13, !nosanitize !12

bb.wu:                                            ; preds = %bb.wt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @339, i64 %i.aeu) #5, !nosanitize !12
  br label %bb.wv, !nosanitize !12

bb.wv:                                            ; preds = %bb.wu, %bb.wt
  %i.aez = load i8, ptr %i.aes, align 1, !tbaa !30
  %i.afa = zext i8 %i.aez to i64                  ; 3 uses
  %i.afb = icmp samesign ult i64 %indvars.iv1116, 64
  %i.afc = sub nuw nsw i64 63, %indvars.iv1116
  %i.afd = lshr i64 %i.afa, %i.afc
  %i.afe = icmp samesign ult i64 %i.afd, 2
  %i.aff = select i1 %i.afb, i1 %i.afe, i1 false
  br i1 %i.aff, label %bb.wx, label %bb.ww, !prof !13, !nosanitize !12

bb.ww:                                            ; preds = %bb.wv
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @340, i64 %i.afa, i64 %indvars.iv1116) #6, !nosanitize !12
  br label %bb.wx, !nosanitize !12

bb.wx:                                            ; preds = %bb.ww, %bb.wv
  %i.afg = shl i64 %i.afa, %indvars.iv1116        ; 2 uses
  %i.afh = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.20473, i64 %i.afg), !nosanitize !12 ; 2 uses
  %i.afi = extractvalue { i64, i1 } %i.afh, 0, !nosanitize !12
  %i.afj = extractvalue { i64, i1 } %i.afh, 1, !nosanitize !12
  br i1 %i.afj, label %bb.wy, label %bb.wz, !prof !62, !nosanitize !12

bb.wy:                                            ; preds = %bb.wx
  call void @__ubsan_handle_add_overflow(ptr nonnull @341, i64 %.20473, i64 %i.afg) #6, !nosanitize !12
  br label %bb.wz, !nosanitize !12

bb.wz:                                            ; preds = %bb.wx, %bb.wy
  %indvars.iv.next1117 = add nuw nsw i64 %indvars.iv1116, 8
  br label %bb.wa

bb.xa:                                            ; preds = %bb.wk
  %i.afk = trunc nuw i64 %indvars.iv1116 to i32
  %.sroa.0643.0.extract.trunc655 = trunc i32 %i.aeh to i8 ; 2 uses
  %i.afl = icmp ult i8 %.sroa.0643.0.extract.trunc655, 16
  br i1 %i.afl, label %bb.xb, label %bb.yf

bb.xb:                                            ; preds = %bb.xa
  %.sroa.16.0.extract.shift640 = lshr i32 %i.aeh, 16
  %.sroa.16.0.extract.trunc641 = zext nneg i32 %.sroa.16.0.extract.shift640 to i64
  %i.afm = and i32 %i.aeh, 15
  %i.afn = add nuw nsw i32 %i.aei, %i.afm         ; 3 uses
  %i.afo = icmp samesign ult i32 %i.afn, 32
  %i.afp = zext nneg i32 %i.afn to i64
  %notmask585 = shl nsw i32 -1, %i.afn
  %i.afq = xor i32 %notmask585, -1
  %i.afr = zext nneg i32 %i.afq to i64
  %i.afs = and i32 %i.aeh, 49152
  %i.aft = icmp eq i32 %i.afs, 0                  ; 2 uses
  br label %bb.xc

bb.xc:                                            ; preds = %bb.yb, %bb.xb
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %bb.yb ], [ %indvars.iv1116, %bb.xb ] ; 7 uses
  %.35 = phi i32 [ %i.agv, %bb.yb ], [ %.33, %bb.xb ] ; 3 uses
  %.21474 = phi i64 [ %i.ahm, %bb.yb ], [ %.20473, %bb.xb ] ; 5 uses
  br i1 %i.r, label %bb.xe, label %bb.xd, !prof !13, !nosanitize !12

bb.xd:                                            ; preds = %bb.xc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @342, i64 %i.o) #5, !nosanitize !12
  br label %bb.xe, !nosanitize !12

bb.xe:                                            ; preds = %bb.xc, %bb.xd
  %i.afu = load ptr, ptr %i.bb, align 16, !tbaa !75 ; 3 uses
  br i1 %i.afo, label %bb.xg, label %bb.xf, !prof !13, !nosanitize !12

bb.xf:                                            ; preds = %bb.xe
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @343, i64 1, i64 %i.afp) #6, !nosanitize !12
  br label %bb.xg, !nosanitize !12

bb.xg:                                            ; preds = %bb.xf, %bb.xe
  %i.afv = and i64 %.21474, %i.afr                ; 2 uses
  br i1 %i.aft, label %bb.xi, label %bb.xh, !prof !13, !nosanitize !12

bb.xh:                                            ; preds = %bb.xg
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @344, i64 %i.afv, i64 %i.aej) #5, !nosanitize !12
  br label %bb.xi, !nosanitize !12

bb.xi:                                            ; preds = %bb.xg, %bb.xh
  %i.afw = lshr i64 %i.afv, %i.aej
  %i.afx = add nuw nsw i64 %i.afw, %.sroa.16.0.extract.trunc641 ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.afx ; 2 uses
  %i.afz = shl nuw nsw i64 %i.afx, 2
  %i.aga = ptrtoint ptr %i.afu to i64, !nosanitize !12 ; 3 uses
  %i.agb = add i64 %i.afz, %i.aga, !nosanitize !12 ; 3 uses
  %i.agc = icmp ne ptr %i.afu, null, !nosanitize !12 ; 2 uses
  %i.agd = icmp eq i64 %i.agb, 0
  %i.age = xor i1 %i.agc, %i.agd
  %i.agf = icmp uge i64 %i.agb, %i.aga, !nosanitize !12
  %i.agg = and i1 %i.agf, %i.age, !nosanitize !12
  br i1 %i.agg, label %bb.xk, label %bb.xj, !prof !13, !nosanitize !12

bb.xj:                                            ; preds = %bb.xi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @345, i64 %i.aga, i64 %i.agb) #5, !nosanitize !12
  br label %bb.xk, !nosanitize !12

bb.xk:                                            ; preds = %bb.xj, %bb.xi
  %i.agh = ptrtoint ptr %i.afy to i64, !nosanitize !12 ; 2 uses
  %i.agi = and i64 %i.agh, 1, !nosanitize !12
  %i.agj = icmp eq i64 %i.agi, 0, !nosanitize !12
  %i.agk = and i1 %i.agc, %i.agj
  br i1 %i.agk, label %bb.xm, label %bb.xl, !prof !13, !nosanitize !12

bb.xl:                                            ; preds = %bb.xk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @346, i64 %i.agh) #5, !nosanitize !12
  br label %bb.xm, !nosanitize !12

bb.xm:                                            ; preds = %bb.xl, %bb.xk
  %i.agl = load i32, ptr %i.afy, align 2          ; 3 uses
  %.sroa.18.0.extract.shift672 = lshr i32 %i.agl, 8 ; 2 uses
  %i.agm = and i32 %.sroa.18.0.extract.shift672, 255 ; 3 uses
  %i.agn = add nuw nsw i32 %i.agm, %i.aei
  %7 = zext nneg i32 %i.agn to i64
  %.not586 = icmp samesign ult i64 %indvars.iv1120, %7
  br i1 %.not586, label %bb.xn, label %bb.yc

bb.xn:                                            ; preds = %bb.xm
  %i.ago = icmp eq i32 %.35, 0
  br i1 %i.ago, label %bb.xo, label %bb.xt

bb.xo:                                            ; preds = %bb.xn
  %i.agp = load i32, ptr %i.am, align 4, !nosanitize !12
  %i.agq = icmp eq i32 %i.agp, -1056584962, !nosanitize !12
  br i1 %i.agq, label %bb.xp, label %bb.xr, !nosanitize !12

bb.xp:                                            ; preds = %bb.xo
  %i.agr = load i32, ptr %i.an, align 8, !nosanitize !12
  %i.ags = icmp eq i32 %i.agr, -1949095732, !nosanitize !12
  br i1 %i.ags, label %bb.xr, label %bb.xq, !prof !13, !nosanitize !12

bb.xq:                                            ; preds = %bb.xp
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @347, i64 %i.ao) #5, !nosanitize !12
  br label %bb.xr, !nosanitize !12

bb.xr:                                            ; preds = %bb.xp, %bb.xq, %bb.xo
  %i.agt = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.agu = icmp eq i32 %i.agt, 0
  br i1 %i.agu, label %bb.xs, label %bb.xt

bb.xs:                                            ; preds = %bb.xr
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %.loopexit736

bb.xt:                                            ; preds = %bb.xr, %bb.xn
  %.36 = phi i32 [ %i.agt, %bb.xr ], [ %.35, %bb.xn ]
  %i.agv = add i32 %.36, -1
  %i.agw = load ptr, ptr %i.a, align 8, !tbaa !60 ; 4 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 1
  %i.agy = ptrtoint ptr %i.agw to i64, !nosanitize !12 ; 3 uses
  %i.agz = add i64 %i.agy, 1, !nosanitize !12     ; 2 uses
  %i.aha = icmp ne ptr %i.agw, null, !nosanitize !12 ; 2 uses
  %i.ahb = icmp ne i64 %i.agz, 0
  %i.ahc = and i1 %i.aha, %i.ahb, !nosanitize !12
  br i1 %i.ahc, label %bb.xv, label %bb.xu, !prof !13, !nosanitize !12

bb.xu:                                            ; preds = %bb.xt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @348, i64 %i.agy, i64 %i.agz) #5, !nosanitize !12
  br label %bb.xv, !nosanitize !12

bb.xv:                                            ; preds = %bb.xu, %bb.xt
  store ptr %i.agx, ptr %i.a, align 8, !tbaa !60
  br i1 %i.aha, label %bb.xx, label %bb.xw, !prof !13, !nosanitize !12

bb.xw:                                            ; preds = %bb.xv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @349, i64 %i.agy) #5, !nosanitize !12
  br label %bb.xx, !nosanitize !12

bb.xx:                                            ; preds = %bb.xw, %bb.xv
  %i.ahd = load i8, ptr %i.agw, align 1, !tbaa !30
  %i.ahe = zext i8 %i.ahd to i64                  ; 3 uses
  %i.ahf = icmp samesign ult i64 %indvars.iv1120, 64
  %i.ahg = sub nuw nsw i64 63, %indvars.iv1120
  %i.ahh = lshr i64 %i.ahe, %i.ahg
  %i.ahi = icmp samesign ult i64 %i.ahh, 2
  %i.ahj = select i1 %i.ahf, i1 %i.ahi, i1 false
  br i1 %i.ahj, label %bb.xz, label %bb.xy, !prof !13, !nosanitize !12

bb.xy:                                            ; preds = %bb.xx
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @350, i64 %i.ahe, i64 %indvars.iv1120) #6, !nosanitize !12
  br label %bb.xz, !nosanitize !12

bb.xz:                                            ; preds = %bb.xy, %bb.xx
  %i.ahk = shl i64 %i.ahe, %indvars.iv1120        ; 2 uses
  %i.ahl = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.21474, i64 %i.ahk), !nosanitize !12 ; 2 uses
  %i.ahm = extractvalue { i64, i1 } %i.ahl, 0, !nosanitize !12
  %i.ahn = extractvalue { i64, i1 } %i.ahl, 1, !nosanitize !12
  br i1 %i.ahn, label %bb.ya, label %bb.yb, !prof !62, !nosanitize !12

bb.ya:                                            ; preds = %bb.xz
  call void @__ubsan_handle_add_overflow(ptr nonnull @351, i64 %.21474, i64 %i.ahk) #6, !nosanitize !12
  br label %bb.yb, !nosanitize !12

bb.yb:                                            ; preds = %bb.xz, %bb.ya
  %indvars.iv.next1121 = add nuw nsw i64 %indvars.iv1120, 8
  br label %bb.xc

bb.yc:                                            ; preds = %bb.xm
  %8 = trunc nuw i64 %indvars.iv1120 to i32
  %.sroa.0643.0.extract.trunc660.le = trunc i32 %i.agl to i8
  br i1 %i.aft, label %bb.ye, label %bb.yd, !prof !13, !nosanitize !12

bb.yd:                                            ; preds = %bb.yc
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @352, i64 %.21474, i64 %i.aej) #5, !nosanitize !12
  br label %bb.ye, !nosanitize !12

bb.ye:                                            ; preds = %bb.yd, %bb.yc
  %i.aho = lshr i64 %.21474, %i.aej
  %i.ahp = sub nuw i32 %8, %i.aei
  %.pre1125 = zext nneg i32 %i.agm to i64
  br label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.xa
  %.pre-phi1126 = phi i64 [ %.pre1125, %bb.ye ], [ %i.aej, %bb.xa ] ; 3 uses
  %.sroa.18.1.mask.pre-phi = phi i32 [ %i.agm, %bb.ye ], [ %i.aei, %bb.xa ]
  %.sroa.38.1.in.in = phi i32 [ %i.agl, %bb.ye ], [ %i.aeh, %bb.xa ]
  %.sroa.18.1.in = phi i32 [ %.sroa.18.0.extract.shift672, %bb.ye ], [ %.sroa.18.0.extract.shift665, %bb.xa ]
  %.sroa.0643.1 = phi i8 [ %.sroa.0643.0.extract.trunc660.le, %bb.ye ], [ %.sroa.0643.0.extract.trunc655, %bb.xa ] ; 2 uses
  %.37 = phi i32 [ %.35, %bb.ye ], [ %.33, %bb.xa ] ; 3 uses
  %.22475 = phi i64 [ %i.aho, %bb.ye ], [ %.20473, %bb.xa ] ; 2 uses
  %.22 = phi i32 [ %i.ahp, %bb.ye ], [ %i.afk, %bb.xa ] ; 2 uses
  %.sroa.38.1.in = lshr i32 %.sroa.38.1.in.in, 16
  %i.ahq = and i32 %.sroa.18.1.in, 192
  %i.ahr = icmp eq i32 %i.ahq, 0
  br i1 %i.ahr, label %bb.yh, label %bb.yg, !prof !13, !nosanitize !12

bb.yg:                                            ; preds = %bb.yf
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @353, i64 %.22475, i64 %.pre-phi1126) #5, !nosanitize !12
  br label %bb.yh, !nosanitize !12

bb.yh:                                            ; preds = %bb.yg, %bb.yf
  %i.ahs = lshr i64 %.22475, %.pre-phi1126        ; 3 uses
  %i.aht = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.22, i32 %.sroa.18.1.mask.pre-phi), !nosanitize !12 ; 2 uses
  %i.ahu = extractvalue { i32, i1 } %i.aht, 0, !nosanitize !12 ; 3 uses
  %i.ahv = extractvalue { i32, i1 } %i.aht, 1, !nosanitize !12
  br i1 %i.ahv, label %bb.yi, label %bb.yj, !prof !62, !nosanitize !12

bb.yi:                                            ; preds = %bb.yh
  %i.ahw = zext i32 %.22 to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @354, i64 %i.ahw, i64 %.pre-phi1126) #6, !nosanitize !12
  br label %bb.yj, !nosanitize !12

bb.yj:                                            ; preds = %bb.yh, %bb.yi
  %i.ahx = and i8 %.sroa.0643.1, 64
  %.not587 = icmp eq i8 %i.ahx, 0
  br i1 %.not587, label %bb.yr, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  br i1 %i.r, label %bb.ym, label %bb.yl, !prof !13, !nosanitize !12

bb.yl:                                            ; preds = %bb.yk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @355, i64 %i.o) #5, !nosanitize !12
  br label %bb.ym, !nosanitize !12

bb.ym:                                            ; preds = %bb.yl, %bb.yk
  br i1 %i.v, label %bb.yo, label %bb.yn, !prof !13, !nosanitize !12

bb.yn:                                            ; preds = %bb.ym
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @356, i64 %i.t) #5, !nosanitize !12
  br label %bb.yo, !nosanitize !12

bb.yo:                                            ; preds = %bb.yn, %bb.ym
  store i32 16209, ptr %i.s, align 8, !tbaa !57
  br i1 %i.e, label %bb.yq, label %bb.yp, !prof !13, !nosanitize !12

bb.yp:                                            ; preds = %bb.yo
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @357, i64 %i.c) #5, !nosanitize !12
  br label %bb.yq, !nosanitize !12

bb.yq:                                            ; preds = %bb.yo, %bb.yp
  store ptr @.str.11, ptr %i.m, align 8, !tbaa !19
  br label %.loopexit738.backedge

bb.yr:                                            ; preds = %bb.yj
  br i1 %i.r, label %bb.yt, label %bb.ys, !prof !13, !nosanitize !12

bb.ys:                                            ; preds = %bb.yr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @358, i64 %i.o) #5, !nosanitize !12
  br label %bb.yt, !nosanitize !12

bb.yt:                                            ; preds = %bb.yr, %bb.ys
  store i32 %.sroa.38.1.in, ptr %i.bf, align 64, !tbaa !84
  %i.ahy = and i8 %.sroa.0643.1, 15
  %i.ahz = zext nneg i8 %i.ahy to i32             ; 2 uses
  br i1 %i.r, label %.critedge1476, label %bb.yu, !prof !13, !nosanitize !12

bb.yu:                                            ; preds = %bb.yt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @359, i64 %i.o) #5, !nosanitize !12
  store i32 %i.ahz, ptr %i.be, align 4, !tbaa !83
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @360, i64 %i.o) #5, !nosanitize !12
  br label %bb.yv, !nosanitize !12

.critedge1476:                                    ; preds = %bb.yt
  store i32 %i.ahz, ptr %i.be, align 4, !tbaa !83
  br label %bb.yv

bb.yv:                                            ; preds = %bb.yu, %.critedge1476
  %i.aia = load i32, ptr %i.be, align 4, !tbaa !83
  %.not588 = icmp eq i32 %i.aia, 0
  br i1 %.not588, label %bb.aaa, label %.preheader739

.preheader739:                                    ; preds = %bb.yv, %.preheader739.backedge
  %.38 = phi i32 [ %i.aik, %.preheader739.backedge ], [ %.37, %bb.yv ] ; 4 uses
  %.23476 = phi i64 [ %i.ajc, %.preheader739.backedge ], [ %i.ahs, %bb.yv ] ; 6 uses
  %.23 = phi i32 [ %i.ajf, %.preheader739.backedge ], [ %i.ahu, %bb.yv ] ; 6 uses
  br i1 %i.r, label %bb.yx, label %bb.yw, !prof !13, !nosanitize !12

bb.yw:                                            ; preds = %.preheader739
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @361, i64 %i.o) #5, !nosanitize !12
  br label %bb.yx, !nosanitize !12

bb.yx:                                            ; preds = %.preheader739, %bb.yw
  %i.aib = load i32, ptr %i.be, align 4, !tbaa !83
  %i.aic = icmp ult i32 %.23, %i.aib
  br i1 %i.aic, label %bb.yy, label %bb.zo

bb.yy:                                            ; preds = %bb.yx
  %i.aid = icmp eq i32 %.38, 0
  br i1 %i.aid, label %bb.yz, label %bb.ze

bb.yz:                                            ; preds = %bb.yy
  %i.aie = load i32, ptr %i.am, align 4, !nosanitize !12
  %i.aif = icmp eq i32 %i.aie, -1056584962, !nosanitize !12
  br i1 %i.aif, label %bb.za, label %bb.zc, !nosanitize !12

bb.za:                                            ; preds = %bb.yz
  %i.aig = load i32, ptr %i.an, align 8, !nosanitize !12
  %i.aih = icmp eq i32 %i.aig, -1949095732, !nosanitize !12
  br i1 %i.aih, label %bb.zc, label %bb.zb, !prof !13, !nosanitize !12

bb.zb:                                            ; preds = %bb.za
  call void @__ubsan_handle_function_type_mismatch(ptr nonnull @362, i64 %i.ao) #5, !nosanitize !12
  br label %bb.zc, !nosanitize !12

bb.zc:                                            ; preds = %bb.za, %bb.zb, %bb.yz
  %i.aii = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.aij = icmp eq i32 %i.aii, 0
  br i1 %i.aij, label %bb.zd, label %bb.ze

bb.zd:                                            ; preds = %bb.zc
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %.loopexit736

bb.ze:                                            ; preds = %bb.zc, %bb.yy
  %.39 = phi i32 [ %i.aii, %bb.zc ], [ %.38, %bb.yy ]
  %i.aik = add i32 %.39, -1
  %i.ail = load ptr, ptr %i.a, align 8, !tbaa !60 ; 4 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 1
  %i.ain = ptrtoint ptr %i.ail to i64, !nosanitize !12 ; 3 uses
  %i.aio = add i64 %i.ain, 1, !nosanitize !12     ; 2 uses
  %i.aip = icmp ne ptr %i.ail, null, !nosanitize !12 ; 2 uses
  %i.aiq = icmp ne i64 %i.aio, 0
  %i.air = and i1 %i.aip, %i.aiq, !nosanitize !12
  br i1 %i.air, label %bb.zg, label %bb.zf, !prof !13, !nosanitize !12

bb.zf:                                            ; preds = %bb.ze
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @363, i64 %i.ain, i64 %i.aio) #5, !nosanitize !12
  br label %bb.zg, !nosanitize !12

bb.zg:                                            ; preds = %bb.zf, %bb.ze
  store ptr %i.aim, ptr %i.a, align 8, !tbaa !60
  br i1 %i.aip, label %bb.zi, label %bb.zh, !prof !13, !nosanitize !12

bb.zh:                                            ; preds = %bb.zg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @364, i64 %i.ain) #5, !nosanitize !12
  br label %bb.zi, !nosanitize !12

bb.zi:                                            ; preds = %bb.zh, %bb.zg
  %i.ais = load i8, ptr %i.ail, align 1, !tbaa !30
  %i.ait = zext i8 %i.ais to i64                  ; 3 uses
  %i.aiu = zext i32 %.23 to i64                   ; 4 uses
  %i.aiv = icmp ult i32 %.23, 64
  %i.aiw = sub nuw nsw i64 63, %i.aiu
  %i.aix = lshr i64 %i.ait, %i.aiw
  %i.aiy = icmp samesign ult i64 %i.aix, 2
  %i.aiz = select i1 %i.aiv, i1 %i.aiy, i1 false
  br i1 %i.aiz, label %bb.zk, label %bb.zj, !prof !13, !nosanitize !12

bb.zj:                                            ; preds = %bb.zi
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @365, i64 %i.ait, i64 %i.aiu) #6, !nosanitize !12
  br label %bb.zk, !nosanitize !12

bb.zk:                                            ; preds = %bb.zj, %bb.zi
  %i.aja = shl i64 %i.ait, %i.aiu                 ; 2 uses
  %i.ajb = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.23476, i64 %i.aja), !nosanitize !12 ; 2 uses
  %i.ajc = extractvalue { i64, i1 } %i.ajb, 0, !nosanitize !12
  %i.ajd = extractvalue { i64, i1 } %i.ajb, 1, !nosanitize !12
  br i1 %i.ajd, label %bb.zl, label %bb.zm, !prof !62, !nosanitize !12

bb.zl:                                            ; preds = %bb.zk
  call void @__ubsan_handle_add_overflow(ptr nonnull @366, i64 %.23476, i64 %i.aja) #6, !nosanitize !12
  br label %bb.zm, !nosanitize !12

bb.zm:                                            ; preds = %bb.zl, %bb.zk
  %i.aje = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.23, i32 8), !nosanitize !12 ; 2 uses
  %i.ajf = extractvalue { i32, i1 } %i.aje, 0, !nosanitize !12
  %i.ajg = extractvalue { i32, i1 } %i.aje, 1, !nosanitize !12
  br i1 %i.ajg, label %bb.zn, label %.preheader739.backedge, !prof !62, !nosanitize !12

bb.zn:                                            ; preds = %bb.zm
  call void @__ubsan_handle_add_overflow(ptr nonnull @367, i64 %i.aiu, i64 8) #6, !nosanitize !12
  br label %.preheader739.backedge, !nosanitize !12

.preheader739.backedge:                           ; preds = %bb.zn, %bb.zm
  br label %.preheader739, !llvm.loop !53

bb.zo:                                            ; preds = %bb.yx
  br i1 %i.r, label %bb.zq, label %bb.zp, !prof !13, !nosanitize !12

end_hunk_1
