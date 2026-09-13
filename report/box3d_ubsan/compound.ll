Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/compound?download=true
inline.NumInlined: 170
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3CreateCompound:bb.a
  %i.fq = and i64 %i.fp, 7, !nosanitize !9
  %i.fr = icmp eq i64 %i.fq, 0, !nosanitize !9
  %i.fs = and i1 %i.fo, %i.fr, !nosanitize !9
  br i1 %i.fs, label %bb.an, label %bb.am, !prof !10, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @64, i64 %i.fp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.al
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !66 ; 2 uses
  %i.fv = getelementptr inbounds nuw [36 x i8], ptr %.fr2360, i64 %indvars.iv3748 ; 4 uses
  %i.fw = mul nuw nsw i64 %indvars.iv3748, 36
  %i.fx = add i64 %i.fw, %i.em, !nosanitize !9    ; 3 uses
  %i.fy = icmp eq i64 %i.fx, 0
  %i.fz = xor i1 %i.en, %i.fy
  %i.ga = icmp uge i64 %i.fx, %i.em, !nosanitize !9
  %i.gb = and i1 %i.ga, %i.fz, !nosanitize !9
  br i1 %i.gb, label %bb.ap, label %bb.ao, !prof !10, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @65, i64 %i.em, i64 %i.fx) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ap:                                            ; preds = %bb.an
  %i.gc = ptrtoint ptr %i.fv to i64, !nosanitize !9 ; 2 uses
  %i.gd = and i64 %i.gc, 3, !nosanitize !9
  %i.ge = icmp eq i64 %i.gd, 0, !nosanitize !9
  %i.gf = and i1 %i.en, %i.ge
  br i1 %i.gf, label %bb.ar, label %bb.aq, !prof !10, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @67, i64 %i.gc) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  store i32 %i.fu, ptr %i.gg, align 4, !tbaa !35
  %i.gh = icmp eq i32 %i.fu, %.23441904
  br i1 %i.gh, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.gi = sext i32 %.23441904 to i64              ; 2 uses
  %i.gj = getelementptr inbounds [40 x i8], ptr %i.bn, i64 %i.gi ; 2 uses
  %i.gk = mul nsw i64 %i.gi, 40
  %i.gl = add i64 %i.gk, %i.eo, !nosanitize !9    ; 3 uses
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = xor i1 %i.ep, %i.gm
  %i.go = icmp uge i64 %i.gl, %i.eo, !nosanitize !9
  %i.gp = icmp slt i32 %.23441904, 0
  %i.gq = xor i1 %i.gp, %i.go
  %i.gr = and i1 %i.gn, %i.gq, !nosanitize !9
  br i1 %i.gr, label %bb.au, label %bb.at, !prof !10, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @68, i64 %i.eo, i64 %i.gl) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.au:                                            ; preds = %bb.as
  %i.gs = ptrtoint ptr %i.gj to i64, !nosanitize !9 ; 2 uses
  %i.gt = and i64 %i.gs, 7, !nosanitize !9
  %i.gu = icmp eq i64 %i.gt, 0, !nosanitize !9
  %i.gv = and i1 %i.ep, %i.gu
  br i1 %i.gv, label %bb.aw, label %bb.av, !prof !10, !nosanitize !9

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @69, i64 %i.gs) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gj, ptr noundef nonnull align 8 dereferenceable(40) %i.fm, i64 40, i1 false), !tbaa.struct !171
  %i.gw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.23441904, i32 1), !nosanitize !9 ; 2 uses
  %i.gx = extractvalue { i32, i1 } %i.gw, 1, !nosanitize !9
  br i1 %i.gx, label %bb.ax, label %bb.ay, !prof !20, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  %i.gy = zext nneg i32 %.23441904 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @70, i64 %i.gy, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  %i.gz = extractvalue { i32, i1 } %i.gw, 0, !nosanitize !9
  br label %bb.az

bb.az:                                            ; preds = %bb.ar, %bb.ay
  %.3 = phi i32 [ %i.gz, %bb.ay ], [ %.23441904, %bb.ar ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fv, ptr noundef nonnull align 8 dereferenceable(28) %i.fk, i64 28, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @b3HullMap_get_or_insert(ptr dead_on_unwind nonnull writable sret(%struct.b3HullMap_itr) align 8 %8, ptr noundef nonnull %5, ptr noundef %i.fj, i32 noundef %.03381905) #13
  %i.ha = load ptr, ptr %8, align 8, !tbaa !64    ; 3 uses
  %i.hb = icmp ne ptr %i.ha, null, !nosanitize !9
  %i.hc = ptrtoint ptr %i.ha to i64, !nosanitize !9 ; 2 uses
  %i.hd = and i64 %i.hc, 7, !nosanitize !9
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !9
  %i.hf = and i1 %i.hb, %i.he, !nosanitize !9
  br i1 %i.hf, label %bb.bb, label %bb.ba, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @72, i64 %i.hc) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  %i.hi = load i32, ptr %i.hg, align 8, !tbaa !177 ; 2 uses
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !30
  %i.hj = icmp eq i32 %i.hi, %.03381905
  br i1 %i.hj, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.hk = sext i32 %.03381905 to i64              ; 2 uses
  %i.hl = getelementptr inbounds [16 x i8], ptr %.fr2354, i64 %i.hk ; 3 uses
  %i.hm = shl nsw i64 %i.hk, 4
  %i.hn = add i64 %i.hm, %i.eq, !nosanitize !9    ; 3 uses
  %i.ho = icmp eq i64 %i.hn, 0
  %i.hp = xor i1 %i.er, %i.ho
  %i.hq = icmp uge i64 %i.hn, %i.eq, !nosanitize !9
  %i.hr = icmp slt i32 %.03381905, 0
  %i.hs = xor i1 %i.hr, %i.hq
  %i.ht = and i1 %i.hp, %i.hs, !nosanitize !9
  br i1 %i.ht, label %bb.be, label %bb.bd, !prof !10, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @73, i64 %i.eq, i64 %i.hn) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.be:                                            ; preds = %bb.bc
  %i.hu = ptrtoint ptr %i.hl to i64, !nosanitize !9 ; 2 uses
  %i.hv = and i64 %i.hu, 7, !nosanitize !9
  %i.hw = icmp eq i64 %i.hv, 0, !nosanitize !9
  %i.hx = and i1 %i.er, %i.hw
  br i1 %i.hx, label %bb.bg, label %bb.bf, !prof !10, !nosanitize !9

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %i.hu) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bg:                                            ; preds = %bb.be
  store ptr %i.fj, ptr %i.hl, align 8, !tbaa !179
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i32 -1, ptr %i.hy, align 8, !tbaa !180
  %i.hz = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.03381905, i32 1), !nosanitize !9 ; 2 uses
  %i.ia = extractvalue { i32, i1 } %i.hz, 1, !nosanitize !9
  br i1 %i.ia, label %bb.bh, label %bb.bi, !prof !20, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  %i.ib = zext nneg i32 %.03381905 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @76, i64 %i.ib, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bi:                                            ; preds = %bb.bg
  %i.ic = extractvalue { i32, i1 } %i.hz, 0, !nosanitize !9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bb
  %.1339 = phi i32 [ %i.ic, %bb.bi ], [ %.03381905, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %indvars.iv.next3749 = add nuw nsw i64 %indvars.iv3748, 1 ; 2 uses
  %exitcond3758.not = icmp eq i64 %indvars.iv.next3749, %wide.trip.count3757
  br i1 %exitcond3758.not, label %bb.af, label %.split1907, !llvm.loop !142

bb.bk:                                            ; preds = %bb.af, %._crit_edge
  %.2349 = phi i32 [ %i.et, %bb.af ], [ %.0347.lcssa, %._crit_edge ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.af ], [ %.0342.lcssa, %._crit_edge ] ; 2 uses
  %.2340 = phi i32 [ %.1339, %bb.af ], [ 0, %._crit_edge ] ; 4 uses
  %i.id = shl nsw i64 %i.ao, 4                    ; 2 uses
  %i.ie = call ptr @b3AllocZeroed(i64 noundef %i.id) #13
  %.fr2357 = freeze ptr %i.ie                     ; 13 uses
  %i.if = icmp sgt i32 %i.an, 0                   ; 2 uses
  br i1 %i.if, label %.preheader.i.i436, label %bb.dc

.preheader.i.i436:                                ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr @vt_empty_placeholder_metadatum, ptr %i.ii, align 8, !tbaa !61
  %i.ij = uitofp nneg i64 %i.ao to double
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.preheader.i.i436
  %.0.i.i437 = phi i64 [ %i.in, %bb.bl ], [ 8, %.preheader.i.i436 ] ; 4 uses
  %i.ik = uitofp i64 %.0.i.i437 to double
  %i.il = fmul nnan double %i.ik, 9.000000e-01
  %i.im = fcmp olt double %i.il, %i.ij
  %i.in = shl i64 %.0.i.i437, 1
  br i1 %i.im, label %bb.bl, label %b3MeshMap_bucket_count.exit.i, !llvm.loop !143

b3MeshMap_bucket_count.exit.i:                    ; preds = %bb.bl
  %.not.i439.not = icmp eq i64 %.0.i.i437, 0
  br i1 %.not.i439.not, label %.lr.ph2209, label %bb.bm

bb.bm:                                            ; preds = %b3MeshMap_bucket_count.exit.i
  %i.io = call fastcc zeroext i1 @b3MeshMap_rehash(ptr noundef nonnull %9, i64 noundef %.0.i.i437) ; 0 uses
  br label %.lr.ph2209

.lr.ph2209:                                       ; preds = %b3MeshMap_bucket_count.exit.i, %bb.bm
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.is = ptrtoint ptr %.fr2366 to i64            ; 6 uses
  %i.it = icmp ne ptr %.fr2366, null              ; 4 uses
  %i.iu = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.iv = icmp ne ptr %i.bn, null                 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.iy = ptrtoint ptr %.fr2357 to i64            ; 3 uses
  %i.iz = icmp ne ptr %.fr2357, null              ; 2 uses
  %i.ja = sext i32 %.2349 to i64
  %wide.trip.count3771 = zext nneg i32 %i.an to i64
  br label %.lr.ph2209.split

._crit_edge2210:                                  ; preds = %bb.db
  %indvars3769.le = trunc i64 %indvars.iv.next3767 to i32
  %i.jb = load i64, ptr %i.ig, align 8, !tbaa !68 ; 2 uses
  %.not.i441 = icmp eq i64 %i.jb, 0
  br i1 %.not.i441, label %b3MeshMap_cleanup.exit, label %b3MeshMap_init.exit.i

b3MeshMap_init.exit.i:                            ; preds = %._crit_edge2210
  %i.jc = load ptr, ptr %i.ih, align 8, !tbaa !69
  %i.jd = mul i64 %i.jb, 18
  %i.je = add i64 %i.jd, 26
  call void @b3Free(ptr noundef %i.jc, i64 noundef %i.je) #13
  br label %b3MeshMap_cleanup.exit

b3MeshMap_cleanup.exit:                           ; preds = %._crit_edge2210, %b3MeshMap_init.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.dc

.lr.ph2209.split:                                 ; preds = %.lr.ph2209, %bb.db
  %indvars.iv3766 = phi i64 [ %i.ja, %.lr.ph2209 ], [ %indvars.iv.next3767, %bb.db ] ; 3 uses
  %indvars.iv3764 = phi i64 [ 0, %.lr.ph2209 ], [ %indvars.iv.next3765, %bb.db ] ; 9 uses
  %.03352207 = phi i32 [ 0, %.lr.ph2209 ], [ %.1336, %bb.db ] ; 7 uses
  %.52206 = phi i32 [ %.4, %.lr.ph2209 ], [ %.6.lcssa, %bb.db ] ; 4 uses
  %i.jf = load ptr, ptr %i.ip, align 8, !tbaa !167 ; 3 uses
  %i.jg = getelementptr inbounds nuw [64 x i8], ptr %i.jf, i64 %indvars.iv3764 ; 7 uses
  %i.jh = shl nuw nsw i64 %indvars.iv3764, 6      ; 3 uses
  %i.ji = ptrtoint ptr %i.jf to i64, !nosanitize !9 ; 3 uses
  %i.jj = add i64 %i.jh, %i.ji, !nosanitize !9    ; 3 uses
  %i.jk = icmp ne ptr %i.jf, null, !nosanitize !9 ; 2 uses
  %i.jl = icmp eq i64 %i.jj, 0
  %i.jm = xor i1 %i.jk, %i.jl
  %i.jn = icmp uge i64 %i.jj, %i.ji, !nosanitize !9
  %i.jo = and i1 %i.jm, %i.jn, !nosanitize !9
  br i1 %i.jo, label %bb.bo, label %bb.bn, !prof !10, !nosanitize !9

bb.bn:                                            ; preds = %.lr.ph2209.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.ji, i64 %i.jj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bo:                                            ; preds = %.lr.ph2209.split
  %i.jp = ptrtoint ptr %i.jg to i64, !nosanitize !9 ; 2 uses
  %i.jq = and i64 %i.jp, 7, !nosanitize !9
  %i.jr = icmp eq i64 %i.jq, 0, !nosanitize !9
  %i.js = and i1 %i.jk, %i.jr
  br i1 %i.js, label %bb.bq, label %bb.bp, !prof !10, !nosanitize !9

bb.bp:                                            ; preds = %bb.bo
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @79, i64 %i.jp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bq:                                            ; preds = %bb.bo
  %i.jt = load ptr, ptr %i.jg, align 8, !tbaa !181 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jg, i64 36
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.jv, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 44
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  call void @b3ComputeMeshAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %10, ptr noundef %i.jt, ptr noundef nonnull byval(%struct.b3Transform) align 8 %i.ju, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload) #13
  %i.jw = call i32 @b3DynamicTree_CreateProxy(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.b3AABB) align 8 %10, i64 noundef -1, i64 noundef %indvars.iv3766) #13 ; 0 uses
  %indvars.iv.next3767 = add nsw i64 %indvars.iv3766, 1 ; 2 uses
  %i.jx = icmp eq i64 %indvars.iv3766, 2147483647
  br i1 %i.jx, label %bb.br, label %bb.bs, !prof !20, !nosanitize !9

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @80, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bs:                                            ; preds = %bb.bq
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !169 ; 2 uses
  %i.ka = call i32 @llvm.umin.i32(i32 %i.jz, i32 4)
  %i.kb = icmp sgt i32 %i.jz, 0
  br i1 %i.kb, label %.lr.ph1911, label %.split.us.i

.lr.ph1911:                                       ; preds = %bb.bs
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jg, i64 48 ; 4 uses
  %i.kd = getelementptr [60 x i8], ptr %.fr2366, i64 %indvars.iv3764 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 44 ; 2 uses
  %i.kf = ptrtoint ptr %i.ke to i64               ; 3 uses
  %i.kg = mul nuw nsw i64 %indvars.iv3764, 60
  %i.kh = add i64 %i.kg, %i.is                    ; 3 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %i.kj = xor i1 %i.it, %i.ki
  %i.kk = icmp uge i64 %i.kh, %i.is
  %i.kl = and i1 %i.kj, %i.kk
  %.fr1989 = freeze i1 %i.kl
  br i1 %.fr1989, label %.lr.ph1911.split.us.split.us, label %.split.us.i446.us, !prof !10, !nosanitize !9

.lr.ph1911.split.us.split.us:                     ; preds = %.lr.ph1911
  %i.km = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.kn = and i64 %i.km, 3
  %i.ko = icmp eq i64 %i.kn, 0
  %i.kp = and i1 %i.it, %i.ko
  br i1 %i.kp, label %.lr.ph1911.split.us.split.us.split.us.preheader, label %.split.us.i446.us.us, !prof !10, !nosanitize !9

.lr.ph1911.split.us.split.us.split.us.preheader:  ; preds = %.lr.ph1911.split.us.split.us
  %wide.trip.count3762 = zext nneg i32 %i.ka to i64
  br label %.lr.ph1911.split.us.split.us.split.us

.lr.ph1911.split.us.split.us.split.us:            ; preds = %.lr.ph1911.split.us.split.us.split.us.preheader, %bb.cc
  %indvars.iv3759 = phi i64 [ 0, %.lr.ph1911.split.us.split.us.split.us.preheader ], [ %indvars.iv.next3760, %bb.cc ] ; 6 uses
  %.61908.us.us.us = phi i32 [ %.52206, %.lr.ph1911.split.us.split.us.split.us.preheader ], [ %.7.us.us.us, %bb.cc ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.kq = load ptr, ptr %i.kc, align 8, !tbaa !182 ; 3 uses
  %i.kr = mul nuw nsw i64 %indvars.iv3759, 40     ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64, !nosanitize !9 ; 3 uses
  %i.kt = add i64 %i.kr, %i.ks, !nosanitize !9    ; 3 uses
  %i.ku = icmp ne ptr %i.kq, null, !nosanitize !9
  %i.kv = icmp eq i64 %i.kt, 0
  %i.kw = xor i1 %i.ku, %i.kv
  %i.kx = icmp uge i64 %i.kt, %i.ks, !nosanitize !9
  %i.ky = and i1 %i.kw, %i.kx, !nosanitize !9
  br i1 %i.ky, label %.split.us.i446.us.us.us, label %.split1914.us, !prof !10, !nosanitize !9

.split.us.i446.us.us.us:                          ; preds = %.lr.ph1911.split.us.split.us.split.us
  %i.kz = getelementptr inbounds nuw [40 x i8], ptr %i.kq, i64 %indvars.iv3759
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.61908.us.us.us, ptr %i.a, align 4, !tbaa !24, !noalias !183
  br label %.split.us.split.us.i452.us.us.us

.split.us.split.us.i452.us.us.us:                 ; preds = %bb.bt, %.split.us.i446.us.us.us
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr noundef nonnull %2, ptr noundef %i.kz, ptr noundef %i.a, i1 noundef zeroext false)
  %.val.us.us.i453.us.us.us = load ptr, ptr %i.iq, align 8, !tbaa !70, !alias.scope !183
  %.val5.us.us.i454.us.us.us = load ptr, ptr %i.ir, align 8, !tbaa !71, !alias.scope !183
  %i.la = icmp eq ptr %.val.us.us.i453.us.us.us, %.val5.us.us.i454.us.us.us
  br i1 %i.la, label %bb.bt, label %b3MaterialMap_get_or_insert.exit.us.us.us, !prof !72

bb.bt:                                            ; preds = %.split.us.split.us.i452.us.us.us
  %i.lb = load i64, ptr %i.bb, align 8, !tbaa !68, !noalias !183 ; 2 uses
  %.not.us.us.i455.us.us.us = icmp eq i64 %i.lb, 0
  %i.lc = shl i64 %i.lb, 1
  %i.ld = add i64 %i.lc, 2
  %i.le = select i1 %.not.us.us.i455.us.us.us, i64 8, i64 %i.ld
  %i.lf = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %i.le), !noalias !183
  br i1 %i.lf, label %.split.us.split.us.i452.us.us.us, label %b3MaterialMap_get_or_insert.exit.us.us.us, !prof !73

b3MaterialMap_get_or_insert.exit.us.us.us:        ; preds = %bb.bt, %.split.us.split.us.i452.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lg = load ptr, ptr %11, align 8, !tbaa !64   ; 3 uses
  %i.lh = icmp ne ptr %i.lg, null, !nosanitize !9
  %i.li = ptrtoint ptr %i.lg to i64, !nosanitize !9 ; 2 uses
  %i.lj = and i64 %i.li, 7, !nosanitize !9
  %i.lk = icmp eq i64 %i.lj, 0, !nosanitize !9
  %i.ll = and i1 %i.lh, %i.lk, !nosanitize !9
  br i1 %i.ll, label %bb.bu, label %.split1918.us, !prof !10, !nosanitize !9

bb.bu:                                            ; preds = %b3MaterialMap_get_or_insert.exit.us.us.us
  %i.lm = shl nuw nsw i64 %indvars.iv3759, 2
  %i.ln = add i64 %i.lm, %i.kf, !nosanitize !9    ; 2 uses
  %.not2350.a = icmp ult i64 %i.ln, %i.kf, !nosanitize !9
  br i1 %.not2350.a, label %.split1931.us, label %bb.bv, !prof !20, !nosanitize !9

bb.bv:                                            ; preds = %bb.bu
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv3759
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !66 ; 2 uses
  store i32 %i.lq, ptr %i.lo, align 4, !tbaa !24
  %i.lr = icmp eq i32 %i.lq, %.61908.us.us.us
  br i1 %i.lr, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.ls = sext i32 %.61908.us.us.us to i64        ; 2 uses
  %i.lt = getelementptr inbounds [40 x i8], ptr %i.bn, i64 %i.ls ; 2 uses
  %i.lu = mul nsw i64 %i.ls, 40
  %i.lv = add i64 %i.lu, %i.iu, !nosanitize !9    ; 3 uses
  %i.lw = icmp eq i64 %i.lv, 0
  %i.lx = xor i1 %i.iv, %i.lw
  %i.ly = icmp uge i64 %i.lv, %i.iu, !nosanitize !9
  %i.lz = icmp slt i32 %.61908.us.us.us, 0
  %i.ma = xor i1 %i.lz, %i.ly
  %i.mb = and i1 %i.lx, %i.ma, !nosanitize !9
  br i1 %i.mb, label %bb.bx, label %.split1938.us, !prof !10, !nosanitize !9

bb.bx:                                            ; preds = %bb.bw
  %i.mc = ptrtoint ptr %i.lt to i64, !nosanitize !9 ; 2 uses
  %i.md = and i64 %i.mc, 7, !nosanitize !9
  %i.me = icmp eq i64 %i.md, 0, !nosanitize !9
  %i.mf = and i1 %i.iv, %i.me
  br i1 %i.mf, label %bb.by, label %.split1942.us, !prof !10, !nosanitize !9

bb.by:                                            ; preds = %bb.bx
  %i.mg = load ptr, ptr %i.kc, align 8, !tbaa !182 ; 3 uses
  %i.mh = getelementptr inbounds nuw [40 x i8], ptr %i.mg, i64 %indvars.iv3759 ; 2 uses
  %i.mi = ptrtoint ptr %i.mg to i64, !nosanitize !9 ; 3 uses
  %i.mj = add i64 %i.kr, %i.mi, !nosanitize !9    ; 3 uses
  %i.mk = icmp ne ptr %i.mg, null, !nosanitize !9 ; 2 uses
  %i.ml = icmp eq i64 %i.mj, 0
  %i.mm = xor i1 %i.mk, %i.ml
  %i.mn = icmp uge i64 %i.mj, %i.mi, !nosanitize !9
  %i.mo = and i1 %i.mm, %i.mn, !nosanitize !9
  br i1 %i.mo, label %bb.bz, label %.split1945.us, !prof !10, !nosanitize !9

bb.bz:                                            ; preds = %bb.by
  %i.mp = ptrtoint ptr %i.mh to i64, !nosanitize !9 ; 2 uses
  %i.mq = and i64 %i.mp, 7, !nosanitize !9
  %i.mr = icmp eq i64 %i.mq, 0, !nosanitize !9
  %i.ms = and i1 %i.mk, %i.mr
  br i1 %i.ms, label %bb.ca, label %.split1949.us, !prof !10, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lt, ptr noundef nonnull align 8 dereferenceable(40) %i.mh, i64 40, i1 false), !tbaa.struct !171
  %i.mt = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.61908.us.us.us, i32 1), !nosanitize !9 ; 2 uses
  %i.mu = extractvalue { i32, i1 } %i.mt, 1, !nosanitize !9
  br i1 %i.mu, label %.split1952.us, label %bb.cb, !prof !20, !nosanitize !9

bb.cb:                                            ; preds = %bb.ca
  %i.mv = extractvalue { i32, i1 } %i.mt, 0, !nosanitize !9
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bv
  %.7.us.us.us = phi i32 [ %i.mv, %bb.cb ], [ %.61908.us.us.us, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %indvars.iv.next3760 = add nuw nsw i64 %indvars.iv3759, 1 ; 2 uses
  %exitcond3763.not = icmp eq i64 %indvars.iv.next3760, %wide.trip.count3762
  br i1 %exitcond3763.not, label %.split.us.i, label %.lr.ph1911.split.us.split.us.split.us, !llvm.loop !146

.split.us.i446.us.us:                             ; preds = %.lr.ph1911.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.mw = load ptr, ptr %i.kc, align 8, !tbaa !182
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.52206, ptr %i.a, align 4, !tbaa !24, !noalias !183
  br label %.split.us.split.us.i452.us.us

.split.us.split.us.i452.us.us:                    ; preds = %bb.cd, %.split.us.i446.us.us
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr noundef nonnull %2, ptr noundef %i.mw, ptr noundef %i.a, i1 noundef zeroext false)
  %.val.us.us.i453.us.us = load ptr, ptr %i.iq, align 8, !tbaa !70, !alias.scope !183
  %.val5.us.us.i454.us.us = load ptr, ptr %i.ir, align 8, !tbaa !71, !alias.scope !183
  %i.mx = icmp eq ptr %.val.us.us.i453.us.us, %.val5.us.us.i454.us.us
  br i1 %i.mx, label %bb.cd, label %b3MaterialMap_get_or_insert.exit.us.us, !prof !72

bb.cd:                                            ; preds = %.split.us.split.us.i452.us.us
  %i.my = load i64, ptr %i.bb, align 8, !tbaa !68, !noalias !183 ; 2 uses
  %.not.us.us.i455.us.us = icmp eq i64 %i.my, 0
  %i.mz = shl i64 %i.my, 1
  %i.na = add i64 %i.mz, 2
  %i.nb = select i1 %.not.us.us.i455.us.us, i64 8, i64 %i.na
  %i.nc = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %i.nb), !noalias !183
  br i1 %i.nc, label %.split.us.split.us.i452.us.us, label %b3MaterialMap_get_or_insert.exit.us.us, !prof !73

b3MaterialMap_get_or_insert.exit.us.us:           ; preds = %bb.cd, %.split.us.split.us.i452.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.nd = load ptr, ptr %11, align 8, !tbaa !64   ; 2 uses
  %i.ne = icmp ne ptr %i.nd, null, !nosanitize !9
  %i.nf = ptrtoint ptr %i.nd to i64, !nosanitize !9 ; 2 uses
  %i.ng = and i64 %i.nf, 7, !nosanitize !9
  %i.nh = icmp eq i64 %i.ng, 0, !nosanitize !9
  %i.ni = and i1 %i.ne, %i.nh, !nosanitize !9
  br i1 %i.ni, label %.split1928.us.split.us, label %.split1918.us, !prof !10, !nosanitize !9

.split1928.us.split.us:                           ; preds = %b3MaterialMap_get_or_insert.exit.us.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.km) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us.i446.us:                                ; preds = %.lr.ph1911
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.nj = load ptr, ptr %i.kc, align 8, !tbaa !182
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.52206, ptr %i.a, align 4, !tbaa !24, !noalias !183
  br label %.split.us.split.us.i452.us

.split.us.split.us.i452.us:                       ; preds = %bb.ce, %.split.us.i446.us
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr noundef nonnull %2, ptr noundef %i.nj, ptr noundef %i.a, i1 noundef zeroext false)
  %.val.us.us.i453.us = load ptr, ptr %i.iq, align 8, !tbaa !70, !alias.scope !183
  %.val5.us.us.i454.us = load ptr, ptr %i.ir, align 8, !tbaa !71, !alias.scope !183
  %i.nk = icmp eq ptr %.val.us.us.i453.us, %.val5.us.us.i454.us
  br i1 %i.nk, label %bb.ce, label %b3MaterialMap_get_or_insert.exit.us, !prof !72

bb.ce:                                            ; preds = %.split.us.split.us.i452.us
  %i.nl = load i64, ptr %i.bb, align 8, !tbaa !68, !noalias !183 ; 2 uses
  %.not.us.us.i455.us = icmp eq i64 %i.nl, 0
  %i.nm = shl i64 %i.nl, 1
  %i.nn = add i64 %i.nm, 2
  %i.no = select i1 %.not.us.us.i455.us, i64 8, i64 %i.nn
  %i.np = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %i.no), !noalias !183
  br i1 %i.np, label %.split.us.split.us.i452.us, label %b3MaterialMap_get_or_insert.exit.us, !prof !73

b3MaterialMap_get_or_insert.exit.us:              ; preds = %bb.ce, %.split.us.split.us.i452.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.nq = load ptr, ptr %11, align 8, !tbaa !64   ; 2 uses
  %i.nr = icmp ne ptr %i.nq, null, !nosanitize !9
  %i.ns = ptrtoint ptr %i.nq to i64, !nosanitize !9 ; 2 uses
  %i.nt = and i64 %i.ns, 7, !nosanitize !9
  %i.nu = icmp eq i64 %i.nt, 0, !nosanitize !9
  %i.nv = and i1 %i.nr, %i.nu, !nosanitize !9
  br i1 %i.nv, label %.split1924.us, label %.split1918.us, !prof !10, !nosanitize !9

.split1924.us:                                    ; preds = %b3MaterialMap_get_or_insert.exit.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @83, i64 %i.is, i64 %i.kh) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us.i:                                      ; preds = %bb.cc, %bb.bs
  %.6.lcssa = phi i32 [ %.52206, %bb.bs ], [ %.7.us.us.us, %bb.cc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.03352207, ptr %i.b, align 4, !tbaa !24, !noalias !184
  br label %.split.us.split.us.i

.split.us.split.us.i:                             ; preds = %.split.us.i, %bb.cf
  call fastcc void @b3MeshMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull %9, ptr noundef %i.jt, ptr noundef %i.b, i1 noundef zeroext false)
  %.val.us.us.i = load ptr, ptr %i.iw, align 8, !tbaa !70, !alias.scope !184
  %.val5.us.us.i = load ptr, ptr %i.ix, align 8, !tbaa !71, !alias.scope !184
  %i.nw = icmp eq ptr %.val.us.us.i, %.val5.us.us.i
  br i1 %i.nw, label %bb.cf, label %b3MeshMap_get_or_insert.exit, !prof !72

bb.cf:                                            ; preds = %.split.us.split.us.i
  %i.nx = load i64, ptr %i.ig, align 8, !tbaa !68, !noalias !184 ; 2 uses
  %.not.us.us.i = icmp eq i64 %i.nx, 0
  %i.ny = shl i64 %i.nx, 1
  %i.nz = add i64 %i.ny, 2
  %i.oa = select i1 %.not.us.us.i, i64 8, i64 %i.nz
  %i.ob = call fastcc zeroext i1 @b3MeshMap_rehash(ptr noundef nonnull %9, i64 noundef %i.oa), !noalias !184
  br i1 %i.ob, label %.split.us.split.us.i, label %b3MeshMap_get_or_insert.exit, !prof !73

b3MeshMap_get_or_insert.exit:                     ; preds = %.split.us.split.us.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.oc = load ptr, ptr %12, align 8, !tbaa !64   ; 3 uses
  %i.od = icmp ne ptr %i.oc, null, !nosanitize !9
  %i.oe = ptrtoint ptr %i.oc to i64, !nosanitize !9 ; 2 uses
  %i.of = and i64 %i.oe, 7, !nosanitize !9
  %i.og = icmp eq i64 %i.of, 0, !nosanitize !9
  %i.oh = and i1 %i.od, %i.og, !nosanitize !9
  br i1 %i.oh, label %bb.ch, label %bb.cg, !prof !10, !nosanitize !9

.split1914.us:                                    ; preds = %.lr.ph1911.split.us.split.us.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.ks, i64 %i.kt) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1918.us:                                    ; preds = %b3MaterialMap_get_or_insert.exit.us.us.us, %b3MaterialMap_get_or_insert.exit.us.us, %b3MaterialMap_get_or_insert.exit.us
  %.us-phi1974 = phi i64 [ %i.nf, %b3MaterialMap_get_or_insert.exit.us.us ], [ %i.ns, %b3MaterialMap_get_or_insert.exit.us ], [ %i.li, %b3MaterialMap_get_or_insert.exit.us.us.us ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %.us-phi1974) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1931.us:                                    ; preds = %bb.bu
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 %i.kf, i64 %i.ln) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1938.us:                                    ; preds = %bb.bw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @87, i64 %i.iu, i64 %i.lv) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1942.us:                                    ; preds = %bb.bx
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %i.mc) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1945.us:                                    ; preds = %bb.by
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @89, i64 %i.mi, i64 %i.mj) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1949.us:                                    ; preds = %bb.bz
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @90, i64 %i.mp) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1952.us:                                    ; preds = %bb.ca
  %i.oi = zext nneg i32 %.61908.us.us.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @91, i64 %i.oi, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cg:                                            ; preds = %b3MeshMap_get_or_insert.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @93, i64 %i.oe) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ch:                                            ; preds = %b3MeshMap_get_or_insert.exit
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !75 ; 2 uses
  %i.ol = getelementptr inbounds nuw [60 x i8], ptr %.fr2366, i64 %indvars.iv3764 ; 4 uses
  %i.om = mul nuw nsw i64 %indvars.iv3764, 60
  %i.on = add i64 %i.om, %i.is, !nosanitize !9    ; 3 uses
  %i.oo = icmp eq i64 %i.on, 0
  %i.op = xor i1 %i.it, %i.oo
  %i.oq = icmp uge i64 %i.on, %i.is, !nosanitize !9
  %i.or = and i1 %i.op, %i.oq, !nosanitize !9
  br i1 %i.or, label %bb.cj, label %bb.ci, !prof !10, !nosanitize !9

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @94, i64 %i.is, i64 %i.on) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cj:                                            ; preds = %bb.ch
  %i.os = ptrtoint ptr %i.ol to i64, !nosanitize !9 ; 2 uses
  %i.ot = and i64 %i.os, 3, !nosanitize !9
  %i.ou = icmp eq i64 %i.ot, 0, !nosanitize !9
  %i.ov = and i1 %i.it, %i.ou
  br i1 %i.ov, label %bb.cl, label %bb.ck, !prof !10, !nosanitize !9

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @95, i64 %i.os) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cl:                                            ; preds = %bb.cj
  %i.ow = load ptr, ptr %i.ip, align 8, !tbaa !167 ; 3 uses
  %i.ox = getelementptr inbounds nuw [64 x i8], ptr %i.ow, i64 %indvars.iv3764 ; 2 uses
  %i.oy = ptrtoint ptr %i.ow to i64, !nosanitize !9 ; 3 uses
  %i.oz = add i64 %i.jh, %i.oy, !nosanitize !9    ; 3 uses
  %i.pa = icmp ne ptr %i.ow, null, !nosanitize !9 ; 2 uses
  %i.pb = icmp eq i64 %i.oz, 0
  %i.pc = xor i1 %i.pa, %i.pb
  %i.pd = icmp uge i64 %i.oz, %i.oy, !nosanitize !9
  %i.pe = and i1 %i.pc, %i.pd, !nosanitize !9
  br i1 %i.pe, label %bb.cn, label %bb.cm, !prof !10, !nosanitize !9

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @96, i64 %i.oy, i64 %i.oz) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cn:                                            ; preds = %bb.cl
  %i.pf = ptrtoint ptr %i.ox to i64, !nosanitize !9 ; 2 uses
  %i.pg = and i64 %i.pf, 7, !nosanitize !9
end_hunk_0
