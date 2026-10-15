Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/joint?download=true
inline.NumInlined: 136
inline.NumDeleted: 31
begin_hunk_0_@b3CreateJoint:bb.a
bb.bq:                                            ; preds = %bb.bp
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !103 ; 5 uses
  store i32 0, ptr %i.cp, align 8, !tbaa !91
  %i.hg = icmp ne ptr %i.hf, null, !nosanitize !33
  %i.hh = ptrtoint ptr %i.hf to i64, !nosanitize !33 ; 2 uses
  %i.hi = and i64 %i.hh, 7, !nosanitize !33
  %i.hj = icmp eq i64 %i.hi, 0, !nosanitize !33
  %i.hk = and i1 %i.hg, %i.hj, !nosanitize !33
  br i1 %i.hk, label %bb.bs, label %bb.br, !prof !35, !nosanitize !33

bb.br:                                            ; preds = %bb.bq
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @263, i64 %i.hh) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.bs:                                            ; preds = %bb.bq
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 40 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !245
  store i32 %i.hn, ptr %i.cr, align 8, !tbaa !102
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 44
  %i.hp = tail call fastcc ptr @b3EmplaceHelper(ptr noundef nonnull %i.hl, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.ho) ; 7 uses
  %.not213 = icmp eq ptr %i.hp, null, !nosanitize !33
  br i1 %.not213, label %bb.bt, label %bb.bu, !prof !34, !nosanitize !33

bb.bt:                                            ; preds = %bb.bs
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @264) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.bu:                                            ; preds = %bb.bs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(444) %i.hp, i8 0, i64 444, i1 false)
  %i.hq = ptrtoint ptr %i.hp to i64, !nosanitize !33
  store i32 %i.ag, ptr %i.hp, align 4, !tbaa !126
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  store i32 %i.p, ptr %i.hr, align 4, !tbaa !144
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i32 %i.w, ptr %i.hs, align 4, !tbaa !145
  br label %bb.cp

bb.bv:                                            ; preds = %bb.bp, %bb.bo
  %i.ht = icmp eq i32 %i.fv, 2
  %i.hu = icmp eq i32 %i.fx, 2
  %or.cond216 = or i1 %i.ht, %i.hu
  br i1 %or.cond216, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.hv = icmp sgt i32 %i.ab, 2
  br i1 %i.hv, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void @b3WakeSolverSet(ptr noundef nonnull %0, i32 noundef %i.ab) #12
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  store i32 2, ptr %i.cp, align 8, !tbaa !91
  %i.hw = tail call ptr @b3CreateJointInGraph(ptr noundef nonnull %0, ptr noundef nonnull %i.bv) #12 ; 6 uses
  %i.hx = icmp ne ptr %i.hw, null, !nosanitize !33
  %i.hy = ptrtoint ptr %i.hw to i64, !nosanitize !33 ; 3 uses
  %i.hz = and i64 %i.hy, 3, !nosanitize !33
  %i.ia = icmp eq i64 %i.hz, 0, !nosanitize !33
  %i.ib = and i1 %i.hx, %i.ia, !nosanitize !33
  br i1 %i.ib, label %bb.ca, label %bb.bz, !prof !35, !nosanitize !33

bb.bz:                                            ; preds = %bb.by
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @265, i64 %i.hy) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ca:                                            ; preds = %bb.by
  store i32 %i.ag, ptr %i.hw, align 4, !tbaa !126
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 %i.p, ptr %i.ic, align 4, !tbaa !144
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 %i.w, ptr %i.id, align 4, !tbaa !145
  br label %bb.cp

bb.cb:                                            ; preds = %bb.bv
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 3920 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !103 ; 3 uses
  %i.ig = sext i32 %i.ab to i64                   ; 2 uses
  %i.ih = getelementptr inbounds [88 x i8], ptr %i.if, i64 %i.ig ; 4 uses
  %i.ii = mul nsw i64 %i.ig, 88
  %i.ij = ptrtoint ptr %i.if to i64, !nosanitize !33 ; 3 uses
  %i.ik = add i64 %i.ii, %i.ij, !nosanitize !33   ; 3 uses
  %i.il = icmp ne ptr %i.if, null, !nosanitize !33 ; 2 uses
  %i.im = icmp eq i64 %i.ik, 0
  %i.in = xor i1 %i.il, %i.im
  %i.io = icmp uge i64 %i.ik, %i.ij, !nosanitize !33
  %i.ip = icmp slt i32 %i.ab, 0
  %i.iq = xor i1 %i.ip, %i.io
  %i.ir = and i1 %i.in, %i.iq, !nosanitize !33
  br i1 %i.ir, label %bb.cd, label %bb.cc, !prof !35, !nosanitize !33

bb.cc:                                            ; preds = %bb.cb
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @266, i64 %i.ij, i64 %i.ik) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.cd:                                            ; preds = %bb.cb
  store i32 %i.ab, ptr %i.cp, align 8, !tbaa !91
  %i.is = ptrtoint ptr %i.ih to i64, !nosanitize !33 ; 2 uses
  %i.it = and i64 %i.is, 7, !nosanitize !33
  %i.iu = icmp eq i64 %i.it, 0, !nosanitize !33
  %i.iv = and i1 %i.il, %i.iu
  br i1 %i.iv, label %bb.cf, label %bb.ce, !prof !35, !nosanitize !33

bb.ce:                                            ; preds = %bb.cd
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @267, i64 %i.is) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.cf:                                            ; preds = %bb.cd
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 40 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !245
  store i32 %i.iy, ptr %i.cr, align 8, !tbaa !102
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ih, i64 44
  %i.ja = tail call fastcc ptr @b3EmplaceHelper(ptr noundef nonnull %i.iw, ptr noundef nonnull %i.ix, ptr noundef nonnull %i.iz) ; 7 uses
  %.not211 = icmp eq ptr %i.ja, null, !nosanitize !33
  br i1 %.not211, label %bb.cg, label %bb.ch, !prof !34, !nosanitize !33

bb.cg:                                            ; preds = %bb.cf
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @268) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ch:                                            ; preds = %bb.cf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(444) %i.ja, i8 0, i64 444, i1 false)
  %i.jb = ptrtoint ptr %i.ja to i64, !nosanitize !33
  store i32 %i.ag, ptr %i.ja, align 4, !tbaa !126
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store i32 %i.p, ptr %i.jc, align 4, !tbaa !144
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i32 %i.w, ptr %i.jd, align 4, !tbaa !145
  %i.je = load i32, ptr %i.x, align 8, !tbaa !131 ; 3 uses
  %i.jf = load i32, ptr %i.y, align 8, !tbaa !131 ; 3 uses
  %.not212 = icmp ne i32 %i.je, %i.jf
  %i.jg = icmp sgt i32 %i.je, 2
  %or.cond = and i1 %i.jg, %.not212
  %i.jh = icmp sgt i32 %i.jf, 2
  %or.cond215 = and i1 %i.jh, %or.cond
  br i1 %or.cond215, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  tail call void @b3MergeSolverSets(ptr noundef nonnull %0, i32 noundef %i.je, i32 noundef %i.jf) #12
  %i.ji = load i32, ptr %i.x, align 8, !tbaa !131 ; 2 uses
  %i.jj = load ptr, ptr %i.ie, align 8, !tbaa !103 ; 3 uses
  %i.jk = sext i32 %i.ji to i64                   ; 2 uses
  %i.jl = getelementptr inbounds [88 x i8], ptr %i.jj, i64 %i.jk ; 2 uses
  %i.jm = mul nsw i64 %i.jk, 88
  %i.jn = ptrtoint ptr %i.jj to i64, !nosanitize !33 ; 3 uses
  %i.jo = add i64 %i.jm, %i.jn, !nosanitize !33   ; 3 uses
  %i.jp = icmp ne ptr %i.jj, null, !nosanitize !33 ; 2 uses
  %i.jq = icmp eq i64 %i.jo, 0
  %i.jr = xor i1 %i.jp, %i.jq
  %i.js = icmp uge i64 %i.jo, %i.jn, !nosanitize !33
  %i.jt = icmp slt i32 %i.ji, 0
  %i.ju = xor i1 %i.jt, %i.js
  %i.jv = and i1 %i.jr, %i.ju, !nosanitize !33
  br i1 %i.jv, label %bb.ck, label %bb.cj, !prof !35, !nosanitize !33

bb.cj:                                            ; preds = %bb.ci
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @269, i64 %i.jn, i64 %i.jo) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ck:                                            ; preds = %bb.ci
  %i.jw = ptrtoint ptr %i.jl to i64, !nosanitize !33 ; 2 uses
  %i.jx = and i64 %i.jw, 7, !nosanitize !33
  %i.jy = icmp eq i64 %i.jx, 0, !nosanitize !33
  %i.jz = and i1 %i.jp, %i.jy
  br i1 %i.jz, label %bb.cm, label %bb.cl, !prof !35, !nosanitize !33

bb.cl:                                            ; preds = %bb.ck
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @270, i64 %i.jw) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.cm:                                            ; preds = %bb.ck
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !111 ; 3 uses
  %i.kc = load i32, ptr %i.cr, align 8, !tbaa !102 ; 2 uses
  %i.kd = sext i32 %i.kc to i64                   ; 2 uses
  %i.ke = mul nsw i64 %i.kd, 444
  %i.kf = ptrtoint ptr %i.kb to i64, !nosanitize !33 ; 3 uses
  %i.kg = add i64 %i.ke, %i.kf, !nosanitize !33   ; 3 uses
  %i.kh = icmp ne ptr %i.kb, null, !nosanitize !33
  %i.ki = icmp eq i64 %i.kg, 0
  %i.kj = xor i1 %i.kh, %i.ki
  %i.kk = icmp uge i64 %i.kg, %i.kf, !nosanitize !33
  %i.kl = icmp slt i32 %i.kc, 0
  %i.km = xor i1 %i.kl, %i.kk
  %i.kn = and i1 %i.kj, %i.km, !nosanitize !33
  br i1 %i.kn, label %bb.co, label %bb.cn, !prof !35, !nosanitize !33

bb.cn:                                            ; preds = %bb.cm
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @271, i64 %i.kf, i64 %i.kg) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.co:                                            ; preds = %bb.cm
  %i.ko = getelementptr inbounds [444 x i8], ptr %i.kb, i64 %i.kd ; 2 uses
  %.pre218 = ptrtoint ptr %i.ko to i64, !nosanitize !33
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ch, %bb.co, %bb.bu, %bb.ca, %bb.bn
  %.pre-phi219 = phi i64 [ %i.jb, %bb.ch ], [ %.pre218, %bb.co ], [ %i.hq, %bb.bu ], [ %i.hy, %bb.ca ], [ %i.gx, %bb.bn ] ; 2 uses
  %.1 = phi ptr [ %i.ja, %bb.ch ], [ %i.ko, %bb.co ], [ %i.hp, %bb.bu ], [ %i.hw, %bb.ca ], [ %i.gw, %bb.bn ] ; 9 uses
  %i.kp = icmp ne ptr %.1, null, !nosanitize !33
  %i.kq = and i64 %.pre-phi219, 3, !nosanitize !33
  %i.kr = icmp eq i64 %i.kq, 0, !nosanitize !33
  %i.ks = and i1 %i.kp, %i.kr, !nosanitize !33
  br i1 %i.ks, label %bb.cr, label %bb.cq, !prof !35, !nosanitize !33

bb.cq:                                            ; preds = %bb.cp
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %.pre-phi219) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.cr:                                            ; preds = %bb.cp
  %i.kt = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kt, ptr noundef nonnull align 8 dereferenceable(28) %i.ku, i64 28, i1 false), !tbaa.struct !146
  %i.kv = getelementptr inbounds nuw i8, ptr %.1, i64 44
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kv, ptr noundef nonnull align 4 dereferenceable(28) %i.kw, i64 28, i1 false), !tbaa.struct !146
  %i.kx = getelementptr inbounds nuw i8, ptr %.1, i64 12
  store i32 %2, ptr %i.kx, align 4, !tbaa !147
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.kz = getelementptr inbounds nuw i8, ptr %.1, i64 152
  %i.la = load <2 x float>, ptr %i.ky, align 8, !tbaa !10
  store <2 x float> %i.la, ptr %i.kz, align 4, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %.1, i64 160
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %3, align 4, !tbaa !10
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1, i64 168
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !10
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.lc = getelementptr inbounds nuw i8, ptr %.1, i64 172
  %i.ld = load <2 x float>, ptr %i.lb, align 8, !tbaa !10
  store <2 x float> %i.ld, ptr %i.lc, align 4, !tbaa !10
  %i.le = load i32, ptr %i.cp, align 8, !tbaa !91
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  tail call void @b3LinkJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bv) #12
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  tail call void @b3ValidateSolverSets(ptr noundef nonnull %0) #12
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.bv, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #6

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

declare void @b3RecWriteRet_CreateDistanceJoint(ptr noundef, ptr noundef, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @b3CreateMotorJoint(i32 %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !247 {
bb.a:
  %2 = alloca %struct.b3RecArgs_CreateMotorJoint, align 8 ; 6 uses
  %i.a = tail call ptr @b3GetUnlockedWorldFromId(i32 %0) #12 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %1, null, !nosanitize !33
  %i.d = ptrtoint ptr %1 to i64, !nosanitize !33  ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !33
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !33
  %i.g = and i1 %i.c, %i.f, !nosanitize !33
  br i1 %i.g, label %bb.d, label %bb.c, !prof !35, !nosanitize !33

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @42, i64 %i.d) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.d:                                             ; preds = %bb.b
  %i.h = tail call fastcc { ptr, ptr } @b3CreateJoint(ptr noundef %i.a, ptr noundef %1, i32 noundef 3) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 3 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 12 uses
  %i.k = ptrtoint ptr %i.j to i64, !nosanitize !33 ; 2 uses
  %i.l = and i64 %i.k, 3, !nosanitize !33
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !33
  br i1 %i.m, label %bb.f, label %bb.e, !prof !35, !nosanitize !33

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @43, i64 %i.k) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.n, i8 0, i64 240, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !148
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.r = load float, ptr %i.p, align 4, !tbaa !249
  store float %i.r, ptr %i.q, align 4, !tbaa !125
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 196
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %i.t, i64 12, i1 false), !tbaa.struct !148
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 212
  %i.w = load float, ptr %i.u, align 4, !tbaa !250
  store float %i.w, ptr %i.v, align 4, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.z = load float, ptr %i.x, align 8, !tbaa !251
  store float %i.z, ptr %i.y, align 4, !tbaa !125
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 220
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !252
  store float %i.ac, ptr %i.ab, align 4, !tbaa !125
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.af = load float, ptr %i.ad, align 8, !tbaa !253
  store float %i.af, ptr %i.ae, align 4, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 228
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !254
  store float %i.ai, ptr %i.ah, align 4, !tbaa !125
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.al = load float, ptr %i.aj, align 8, !tbaa !255
  store float %i.al, ptr %i.ak, align 4, !tbaa !125
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 236
  %i.ao = load float, ptr %i.am, align 4, !tbaa !256
  store float %i.ao, ptr %i.an, align 4, !tbaa !125
  %i.ap = load i32, ptr %i.j, align 4, !tbaa !126 ; 2 uses
  %i.aq = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ap, i32 1), !nosanitize !33 ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 0, !nosanitize !33 ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.aq, 1, !nosanitize !33
  br i1 %i.as, label %bb.g, label %bb.h, !prof !34, !nosanitize !33

bb.g:                                             ; preds = %bb.f
  %i.at = zext nneg i32 %i.ap to i64, !nosanitize !33
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @44, i64 %i.at, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %bb.f
  %i.au = ptrtoint ptr %i.a to i64, !nosanitize !33 ; 2 uses
  %i.av = and i64 %i.au, 7, !nosanitize !33
  %i.aw = icmp eq i64 %i.av, 0, !nosanitize !33
  br i1 %i.aw, label %bb.j, label %bb.i, !prof !35, !nosanitize !33

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.au) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4760
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.az = icmp ne ptr %i.i, null, !nosanitize !33
  %i.ba = ptrtoint ptr %i.i to i64, !nosanitize !33 ; 2 uses
  %i.bb = and i64 %i.ba, 7, !nosanitize !33
  %i.bc = icmp eq i64 %i.bb, 0, !nosanitize !33
  %i.bd = and i1 %i.az, %i.bc, !nosanitize !33
  br i1 %i.bd, label %bb.l, label %bb.k, !prof !35, !nosanitize !33

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @46, i64 %i.ba) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.l:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !128 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4736
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112 ; 2 uses
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.l
  %.pre = zext i16 %i.bf to i64
  %.pre49 = shl nuw i64 %.pre, 48
  %.pre51 = zext i16 %i.ay to i64
  %.pre53 = shl nuw nsw i64 %.pre51, 32
  %.pre55 = zext i32 %i.ar to i64
  %.pre57 = or disjoint i64 %.pre53, %.pre55
  %.pre59 = or disjoint i64 %.pre57, %.pre49
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 %0, ptr %2, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bj, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false), !tbaa.struct !257
  %.sroa.6.0.insert.ext = zext i16 %i.bf to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.ay to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.029.0.insert.ext = zext i32 %i.ar to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.029.0.insert.ext
  %.sroa.029.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.6.0.insert.shift ; 2 uses
  call void @b3RecWriteRet_CreateMotorJoint(ptr noundef nonnull %i.bh, ptr noundef nonnull %2, i64 %.sroa.029.0.insert.insert) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge, %bb.a
  %.sroa.029.0.insert.insert33 = phi i64 [ 0, %bb.a ], [ %.pre59, %._crit_edge ], [ %.sroa.029.0.insert.insert, %bb.m ]
  ret i64 %.sroa.029.0.insert.insert33
}

declare void @b3RecWriteRet_CreateMotorJoint(ptr noundef, ptr noundef, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @b3CreateFilterJoint(i32 %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !258 {
bb.a:
  %2 = alloca %struct.b3RecArgs_CreateFilterJoint, align 8 ; 6 uses
  %i.a = tail call ptr @b3GetUnlockedWorldFromId(i32 %0) #12 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %1, null, !nosanitize !33
  %i.d = ptrtoint ptr %1 to i64, !nosanitize !33  ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !33
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !33
  %i.g = and i1 %i.c, %i.f, !nosanitize !33
  br i1 %i.g, label %bb.d, label %bb.c, !prof !35, !nosanitize !33

bb.c:                                             ; preds = %bb.b
end_hunk_0
