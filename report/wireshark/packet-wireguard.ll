inline.NumInlined: 92
inline.NumDeleted: 39
begin_hunk_0_@dissect_wg:bb.a
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.ja = getelementptr i8, ptr %i.iu, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  %.not61.i.i = icmp eq ptr %i.jb, null
  br i1 %.not61.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 945, ptr noundef nonnull @.str.111) #21
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.jc = getelementptr i8, ptr %i.iu, i64 112    ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8
  %.not62.i.i = icmp eq ptr %i.jd, null
  br i1 %.not62.i.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.je = getelementptr i8, ptr %i.iu, i64 120    ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %.not63.i.i = icmp eq ptr %i.jf, null
  br i1 %.not63.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.123, i32 noundef 5, ptr noundef nonnull @.str.106, i64 noundef 949, ptr noundef nonnull @__func__.wg_process_response, ptr noundef nonnull @.str.124)
  br label %wg_process_response.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.jg = getelementptr i8, ptr %i.iw, i64 63
  %.val66.i.i = load i8, ptr %i.jg, align 1
  %i.jh = and i8 %.val66.i.i, 64
  %i.ji = icmp ne i8 %i.jh, 0
  %i.jj = getelementptr i8, ptr %i.ix, i64 95
  %.val65.i.i = load i8, ptr %i.jj, align 1
  %i.jk = and i8 %.val65.i.i, 64
  %i.jl = icmp ne i8 %i.jk, 0
  %i.jm = getelementptr i8, ptr %i.iz, i64 63
  %.val.i.i50 = load i8, ptr %i.jm, align 1
  %i.jn = and i8 %.val.i.i50, 64
  %i.jo = icmp ne i8 %i.jn, 0
  %or.cond.i.i51 = select i1 %i.ji, i1 %i.jl, i1 false ; 3 uses
  %or.cond3.i.i = select i1 %or.cond.i.i51, i1 true, i1 %i.jo
  br i1 %or.cond3.i.i, label %bb.ca, label %wg_process_response.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.jp = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 12, i32 noundef 32) ; 4 uses
  %i.jq = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 44, i32 noundef 16) ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 8 uses
  %i.jt = getelementptr i8, ptr %i.iu, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef align 8 dereferenceable(32) %i.jt, i64 32, i1 false)
  %i.ju = getelementptr i8, ptr %i.iu, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef align 8 dereferenceable(32) %i.ju, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  %i.jv = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.k, ptr noundef %i.jp, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 423, ptr noundef nonnull @.str.114) #21
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.jx = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.k, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 32)
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %wg_kdf.exit.i.i52, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 425, ptr noundef nonnull @.str.114) #21
  unreachable

wg_kdf.exit.i.i52:                                ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef %i.jp, i64 noundef 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  br i1 %or.cond.i.i51, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %wg_kdf.exit.i.i52
  %i.jz = load ptr, ptr %i.iv, align 8
  %i.ka = getelementptr i8, ptr %i.jz, i64 32
  %i.kb = call i32 @crypto_scalarmult_curve25519(ptr noundef nonnull %6, ptr noundef %i.ka, ptr noundef %i.jp) ; 0 uses
  br label %bb.cg

bb.cf:                                            ; preds = %wg_kdf.exit.i.i52
  %i.kc = load ptr, ptr %i.iy, align 8
  %i.kd = getelementptr i8, ptr %i.kc, i64 32
  %i.ke = load ptr, ptr %i.iv, align 8
  %i.kf = call i32 @crypto_scalarmult_curve25519(ptr noundef nonnull %6, ptr noundef %i.kd, ptr noundef %i.ke) ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  %i.kg = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.j, ptr noundef nonnull %6, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 423, ptr noundef nonnull @.str.114) #21
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.ki = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.j, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 32)
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %wg_kdf.exit67.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 425, ptr noundef nonnull @.str.114) #21
  unreachable

wg_kdf.exit67.i.i:                                ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  br i1 %or.cond.i.i51, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %wg_kdf.exit67.i.i
  %i.kk = load ptr, ptr %i.iu, align 8
  %i.kl = getelementptr i8, ptr %i.kk, i64 64
  %i.km = call i32 @crypto_scalarmult_curve25519(ptr noundef nonnull %7, ptr noundef %i.kl, ptr noundef %i.jp) ; 0 uses
  br label %bb.cm

bb.cl:                                            ; preds = %wg_kdf.exit67.i.i
  %i.kn = load ptr, ptr %i.iy, align 8
  %i.ko = getelementptr i8, ptr %i.kn, i64 32
  %i.kp = load ptr, ptr %i.iu, align 8
  %i.kq = call i32 @crypto_scalarmult_curve25519(ptr noundef nonnull %7, ptr noundef %i.ko, ptr noundef %i.kp) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  %i.kr = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.i, ptr noundef nonnull %7, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 423, ptr noundef nonnull @.str.114) #21
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.kt = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.i, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 32)
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %wg_kdf.exit68.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 425, ptr noundef nonnull @.str.114) #21
  unreachable

wg_kdf.exit68.i.i:                                ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.08.i.i, ptr noundef nonnull align 1 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  br label %bb.cq

bb.cq:                                            ; preds = %bb.dn, %wg_kdf.exit68.i.i
  %.sroa.077.0.i.i = phi i32 [ 0, %wg_kdf.exit68.i.i ], [ %.sroa.077.1.i.i, %bb.dn ] ; 2 uses
  %.sroa.778.0.i.i = phi ptr [ null, %wg_kdf.exit68.i.i ], [ %i.le, %bb.dn ] ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.sroa.778.0.i.i, null
  br i1 %.not17.i.i.i, label %.lr.ph.i.i.i, label %bb.cy

bb.cr:                                            ; preds = %wg_kdf.exit69.i.i.jt1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.08.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false)
  %.not17.i.i.i.jt1 = icmp eq ptr %i.li, null
  br i1 %.not17.i.i.i.jt1, label %.loopexit19.i.i.i, label %bb.cy

bb.cs:                                            ; preds = %wg_kdf.exit69.i.i.jt2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.08.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false)
  %.not17.i.i.i.jt2 = icmp eq ptr %i.lm, null
  br i1 %.not17.i.i.i.jt2, label %.lr.ph.i.i.jt2.i, label %bb.cy

bb.ct:                                            ; preds = %wg_kdf.exit69.i.jt1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.08.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false)
  %.not17.i.i.jt1.i = icmp eq ptr %i.lq, null
  br i1 %.not17.i.i.jt1.i, label %.loopexit19.i.i.i, label %bb.cz

bb.cu:                                            ; preds = %wg_kdf.exit69.i.jt2.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.08.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false)
  %.not17.i.i.jt2.i = icmp eq ptr %i.lu, null
  br i1 %.not17.i.i.jt2.i, label %.lr.ph.i.i.jt2.i, label %bb.da

bb.cv:                                            ; preds = %wg_kdf.exit69.jt1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.08.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false)
  %.not17.i.jt1.i.i = icmp eq ptr %i.ma, null
  br i1 %.not17.i.jt1.i.i, label %.loopexit19.i.i.i, label %bb.db

bb.cw:                                            ; preds = %wg_kdf.exit69.jt2.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.08.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false)
  %.not17.i.jt2.i.i = icmp eq ptr %i.me, null
  br i1 %.not17.i.jt2.i.i, label %.lr.ph.i.i.jt2.i, label %bb.dc

default.unreachable128:                           ; preds = %.lr.ph.i.i.i
  unreachable

.lr.ph.i.i.i:                                     ; preds = %bb.cq
  switch i32 %.sroa.077.0.i.i, label %default.unreachable128 [
    i32 0, label %bb.cx
    i32 1, label %.loopexit19.i.i.i
    i32 2, label %.lr.ph.i.i.jt2.i
  ], !llvm.loop !9

.lr.ph.i.jt3.i.i:                                 ; preds = %wg_kdf.exit69.jt3.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.08.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false)
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.iu, i64 28
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4
  %i.kv = and i8 %.pre.i.i, 2
  %i.kw = icmp eq i8 %i.kv, 0
  br i1 %i.kw, label %bb.dw, label %bb.do

.loopexit19.i.i.i:                                ; preds = %bb.cr, %bb.cx, %.lr.ph.i.i.i, %bb.cv, %bb.ct
  %i.kx = load ptr, ptr %i.iy, align 8
  %i.ky = getelementptr i8, ptr %i.kx, i64 64
  %i.kz = load ptr, ptr %i.ky, align 8            ; 3 uses
  %.not.jt2.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.jt2.i.i.i, label %.lr.ph.i.i.jt2.i, label %bb.de, !llvm.loop !9

bb.cx:                                            ; preds = %.lr.ph.i.i.i
  %i.la = load ptr, ptr %i.iv, align 8
  %i.lb = getelementptr i8, ptr %i.la, i64 64
  %i.lc = load ptr, ptr %i.lb, align 8            ; 3 uses
  %.not.jt1.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not.jt1.i.i.i, label %.loopexit19.i.i.i, label %bb.dd, !llvm.loop !9

bb.cy:                                            ; preds = %bb.cr, %bb.cs, %bb.cq
  %.sroa.077.1.i.i = phi i32 [ %.sroa.077.0.i.i, %bb.cq ], [ 2, %bb.cs ], [ 1, %bb.cr ]
  %.0.lcssa.i.i.i = phi ptr [ %.sroa.778.0.i.i, %bb.cq ], [ %i.lm, %bb.cs ], [ %i.li, %bb.cr ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i.i.i, i64 32, i1 false)
  %i.ld = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 32
  %i.le = load ptr, ptr %i.ld, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lf = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.df, label %.loopexit.i.i

bb.cz:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.lq, i64 32, i1 false)
  %i.lh = getelementptr i8, ptr %i.lq, i64 32
  %i.li = load ptr, ptr %i.lh, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lj = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.dg, label %.loopexit.i.i

bb.da:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.lu, i64 32, i1 false)
  %i.ll = getelementptr i8, ptr %i.lu, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.ln = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.dh, label %.loopexit.i.i

bb.db:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ma, i64 32, i1 false)
  %i.lp = getelementptr i8, ptr %i.ma, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lr = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.di, label %.loopexit.i.i

bb.dc:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.me, i64 32, i1 false)
  %i.lt = getelementptr i8, ptr %i.me, i64 32
  %i.lu = load ptr, ptr %i.lt, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lv = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.dj, label %.loopexit.i.i

.lr.ph.i.i.jt2.i:                                 ; preds = %bb.cs, %.loopexit19.i.i.i, %.lr.ph.i.i.i, %bb.cw, %bb.cu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, i8 noundef 0, i64 noundef 32, i1 noundef false) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.lx = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.dk, label %.loopexit.i.i

bb.dd:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.lc, i64 32, i1 false)
  %i.lz = getelementptr i8, ptr %i.lc, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.mb = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.dl, label %.loopexit.i.i

bb.de:                                            ; preds = %.loopexit19.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.kz, i64 32, i1 false)
  %i.md = getelementptr i8, ptr %i.kz, i64 32
  %i.me = load ptr, ptr %i.md, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.mf = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.h, ptr noundef nonnull %8, i64 noundef range(i64 0, 33) 32, ptr noundef nonnull %4, i64 noundef 32)
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %bb.dm, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.cy, %bb.da, %bb.cz, %.lr.ph.i.i.jt2.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 423, ptr noundef nonnull @.str.114) #21
  unreachable

bb.df:                                            ; preds = %bb.cy
  %i.mh = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %wg_kdf.exit69.i.i, label %.loopexit89.i.i

bb.dg:                                            ; preds = %bb.cz
  %i.mj = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mk = icmp eq i32 %i.mj, 0
  br i1 %i.mk, label %wg_kdf.exit69.i.i.jt1, label %.loopexit89.i.i

bb.dh:                                            ; preds = %bb.da
  %i.ml = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %wg_kdf.exit69.i.i.jt2, label %.loopexit89.i.i

bb.di:                                            ; preds = %bb.db
  %i.mn = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %wg_kdf.exit69.i.jt1.i, label %.loopexit89.i.i

bb.dj:                                            ; preds = %bb.dc
  %i.mp = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %wg_kdf.exit69.i.jt2.i, label %.loopexit89.i.i

bb.dk:                                            ; preds = %.lr.ph.i.i.jt2.i
  %i.mr = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %wg_kdf.exit69.jt3.i.i, label %.loopexit89.i.i

bb.dl:                                            ; preds = %bb.dd
  %i.mt = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %wg_kdf.exit69.jt1.i.i, label %.loopexit89.i.i

bb.dm:                                            ; preds = %bb.de
  %i.mv = call i32 @hkdf_expand(i32 noundef 322, ptr noundef nonnull %i.h, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 96)
  %i.mw = icmp eq i32 %i.mv, 0
  br i1 %i.mw, label %wg_kdf.exit69.jt2.i.i, label %.loopexit89.i.i

.loopexit89.i.i:                                  ; preds = %bb.dm, %bb.dl, %bb.dj, %bb.di, %bb.df, %bb.dh, %bb.dg, %bb.dk
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef 425, ptr noundef nonnull @.str.114) #21
  unreachable

wg_kdf.exit69.i.i:                                ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.mx = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.mx, label %wg_psk_iter_next.exit.thread.i.i, label %bb.dn

wg_kdf.exit69.i.i.jt1:                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.my = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.my, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cr

wg_kdf.exit69.i.i.jt2:                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.mz = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.mz, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cs

wg_kdf.exit69.i.jt1.i:                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.na = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.na, label %wg_psk_iter_next.exit.thread.i.i, label %bb.ct

wg_kdf.exit69.i.jt2.i:                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.nb = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.nb, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cu

wg_kdf.exit69.jt3.i.i:                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.nc = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.nc, label %wg_psk_iter_next.exit.thread.i.i, label %.lr.ph.i.jt3.i.i

wg_kdf.exit69.jt1.i.i:                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.nd = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.nd, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cv

wg_kdf.exit69.jt2.i.i:                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef nonnull %i.jr, i64 noundef 32)
  %i.ne = call fastcc zeroext i1 @aead_decrypt(ptr noundef nonnull %i.js, ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  br i1 %i.ne, label %wg_psk_iter_next.exit.thread.i.i, label %bb.cw

bb.dn:                                            ; preds = %wg_kdf.exit69.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.08.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false)
  br label %bb.cq, !llvm.loop !10

wg_psk_iter_next.exit.thread.i.i:                 ; preds = %wg_kdf.exit69.jt2.i.i, %wg_kdf.exit69.jt1.i.i, %wg_kdf.exit69.i.jt2.i, %wg_kdf.exit69.i.jt1.i, %wg_kdf.exit69.i.i, %wg_kdf.exit69.i.i.jt2, %wg_kdf.exit69.i.i.jt1, %wg_kdf.exit69.jt3.i.i
  %i.nf = getelementptr i8, ptr %i.iu, i64 28     ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 4
  %i.nh = or i8 %i.ng, 2
  store i8 %i.nh, ptr %i.nf, align 4
  br label %bb.do

bb.do:                                            ; preds = %wg_psk_iter_next.exit.thread.i.i, %.lr.ph.i.jt3.i.i
  call fastcc void @wg_mix_hash(ptr noundef nonnull %5, ptr noundef %i.jq, i64 noundef 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.ni = call i32 @ws_hmac_buffer(i32 noundef 322, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef range(i64 0, 33) 0, ptr noundef nonnull %4, i64 noundef 32)
  %i.nj = icmp eq i32 %i.ni, 0
end_hunk_0
