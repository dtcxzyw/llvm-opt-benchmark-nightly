Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/name_cache?download=true
begin_hunk_0_@b3NameMap_insert_raw:bb.a
  %i.kk = shl i64 %i.kg, 3
  %i.kl = ptrtoint ptr %i.kf to i64, !nosanitize !10 ; 4 uses
  %i.km = add i64 %i.kk, %i.kl, !nosanitize !10   ; 3 uses
  %i.kn = icmp ne ptr %i.kf, null, !nosanitize !10 ; 2 uses
  %i.ko = icmp eq i64 %i.km, 0                    ; 2 uses
  %i.kp = xor i1 %i.kn, %i.ko
  %i.kq = icmp uge i64 %i.km, %i.kl, !nosanitize !10
  %i.kr = and i1 %i.kj, %i.kq, !nosanitize !10
  %i.ks = and i1 %i.kp, %i.kr, !nosanitize !10
  br i1 %i.ks, label %bb.cd, label %bb.cc, !prof !14, !nosanitize !10

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %i.kl, i64 %i.km) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cd:                                            ; preds = %bb.cb
  %i.kt = ptrtoint ptr %i.kh to i64, !nosanitize !10 ; 2 uses
  %i.ku = and i64 %i.kt, 3, !nosanitize !10
  %i.kv = icmp eq i64 %i.ku, 0, !nosanitize !10
  %i.kw = and i1 %i.kn, %i.kv
  br i1 %i.kw, label %bb.cf, label %bb.ce, !prof !14, !nosanitize !10

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @79, i64 %i.kt) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cf:                                            ; preds = %bb.cd
  store i32 %2, ptr %i.kh, align 4, !tbaa !43
  %i.kx = ptrtoint ptr %3 to i64, !nosanitize !10 ; 2 uses
  %i.ky = and i64 %i.kx, 3, !nosanitize !10
  %i.kz = icmp eq i64 %i.ky, 0, !nosanitize !10
  br i1 %i.kz, label %bb.ch, label %bb.cg, !prof !14, !nosanitize !10

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @80, i64 %i.kx) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ch:                                            ; preds = %bb.cf
  br i1 %i.ko, label %bb.ci, label %bb.cj, !prof !11, !nosanitize !10

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.kl, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cj:                                            ; preds = %bb.ch
  %i.la = load i32, ptr %3, align 4, !tbaa !39
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !38
  %i.lc = load ptr, ptr %i.v, align 8, !tbaa !22  ; 5 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.kd ; 4 uses
  %i.le = shl nsw i64 %i.kd, 1
  %i.lf = ptrtoint ptr %i.lc to i64, !nosanitize !10 ; 11 uses
  %i.lg = add i64 %i.le, %i.lf, !nosanitize !10   ; 3 uses
  %i.lh = icmp ne ptr %i.lc, null, !nosanitize !10 ; 2 uses
  %i.li = icmp eq i64 %i.lg, 0                    ; 2 uses
  %i.lj = xor i1 %i.lh, %i.li
  %i.lk = icmp uge i64 %i.lg, %i.lf, !nosanitize !10
  %i.ll = and i1 %i.lk, %i.lj, !nosanitize !10
  br i1 %i.ll, label %bb.cl, label %bb.ck, !prof !14, !nosanitize !10

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.lf, i64 %i.lg) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cl:                                            ; preds = %bb.cj
  %i.lm = ptrtoint ptr %i.ld to i64, !nosanitize !10 ; 2 uses
  %i.ln = and i64 %i.lm, 1, !nosanitize !10
  %i.lo = icmp eq i64 %i.ln, 0, !nosanitize !10
  %i.lp = and i1 %i.lh, %i.lo
  br i1 %i.lp, label %bb.cn, label %bb.cm, !prof !14, !nosanitize !10

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %i.lm) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cn:                                            ; preds = %bb.cl
  %i.lq = load i16, ptr %i.ld, align 2, !tbaa !42
  %i.lr = and i16 %i.lq, 2047
  %i.ls = or disjoint i16 %i.lr, %i.k
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.kg ; 3 uses
  %i.lu = shl nsw i64 %i.kg, 1
  %i.lv = add i64 %i.lu, %i.lf, !nosanitize !10   ; 3 uses
  %.not114 = icmp ult i64 %i.lv, %i.lf, !nosanitize !10
  br i1 %.not114, label %bb.co, label %bb.cp, !prof !11, !nosanitize !10

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.lf, i64 %i.lv) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cp:                                            ; preds = %bb.cn
  %i.lw = ptrtoint ptr %i.lt to i64, !nosanitize !10 ; 2 uses
  %i.lx = and i64 %i.lw, 1, !nosanitize !10
  %i.ly = icmp eq i64 %i.lx, 0, !nosanitize !10
  br i1 %i.ly, label %bb.cr, label %bb.cq, !prof !14, !nosanitize !10

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.lw) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cr:                                            ; preds = %bb.cp
  store i16 %i.ls, ptr %i.lt, align 2, !tbaa !42
  br i1 %i.li, label %bb.cs, label %bb.ct, !prof !11, !nosanitize !10

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 %i.lf, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ct:                                            ; preds = %bb.cr
  %i.lz = load i16, ptr %i.ld, align 2, !tbaa !42
  %i.ma = and i16 %i.lz, -2048
  %i.mb = load i16, ptr %i.d, align 2, !tbaa !42
  %i.mc = or i16 %i.ma, %i.mb
  store i16 %i.mc, ptr %i.ld, align 2, !tbaa !42
  %i.md = load i64, ptr %1, align 8, !tbaa !19
  %i.me = add i64 %i.md, 1
  store i64 %i.me, ptr %1, align 8, !tbaa !19
  store ptr %i.kh, ptr %0, align 8, !tbaa !36
  %.not115 = icmp eq i64 %i.lv, 0
  br i1 %.not115, label %bb.cu, label %bb.cv, !prof !11, !nosanitize !10

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @87, i64 %i.lf, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cv:                                            ; preds = %bb.ct
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lt, ptr %i.mf, align 8, !tbaa !34
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mh = load i64, ptr %i.s, align 8, !tbaa !20  ; 3 uses
  %i.mi = add i64 %i.mh, 4611686018427387904
  %i.mj = icmp sgt i64 %i.mi, -1
  %i.mk = shl i64 %i.mh, 1
  %i.ml = add i64 %i.mk, %i.lf, !nosanitize !10   ; 2 uses
  %i.mm = icmp uge i64 %i.ml, %i.lf, !nosanitize !10
  %i.mn = and i1 %i.mj, %i.mm, !nosanitize !10
  br i1 %i.mn, label %bb.cx, label %bb.cw, !prof !14, !nosanitize !10

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @88, i64 %i.lf, i64 %i.ml) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cx:                                            ; preds = %bb.cv
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.mh ; 3 uses
  %i.mp = ptrtoint ptr %i.mo to i64, !nosanitize !10 ; 2 uses
  %i.mq = add i64 %i.mp, 2, !nosanitize !10       ; 2 uses
  %i.mr = icmp ne i64 %i.mq, 0
  %i.ms = icmp ult ptr %i.mo, inttoptr (i64 -2 to ptr)
  %i.mt = and i1 %i.ms, %i.mr, !nosanitize !10
  br i1 %i.mt, label %bb.cz, label %bb.cy, !prof !14, !nosanitize !10

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @89, i64 %i.mp, i64 %i.mq) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cz:                                            ; preds = %bb.cx
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  store ptr %i.mu, ptr %i.mg, align 8, !tbaa !35
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %i.mv, align 8, !tbaa !46
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.critedge109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.db

bb.db:                                            ; preds = %.critedge, %bb.da, %bb.bf, %bb.an
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @b3NameMap_rehash(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #8 !func_sanitize !74 {
bb.a:
  %2 = alloca %struct.b3NameMap, align 8          ; 12 uses
  %3 = alloca %struct.b3NameMap_itr, align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.b = add i64 %1, -1                           ; 3 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !20
  %i.c = mul i64 %i.b, 10
  %i.d = add i64 %i.c, 18
  %i.e = tail call ptr @b3Alloc(i64 noundef %i.d) #11 ; 5 uses
  %.not273.not = icmp eq ptr %i.e, null
  br i1 %.not273.not, label %.loopexit, label %b3NameMap_metadata_offset.exit.lr.ph, !prof !75

b3NameMap_metadata_offset.exit.lr.ph:             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.h = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  br i1 %i.j, label %b3NameMap_metadata_offset.exit.us.us, label %b3NameMap_metadata_offset.exit, !prof !49, !nosanitize !10

b3NameMap_metadata_offset.exit.us.us:             ; preds = %b3NameMap_metadata_offset.exit.lr.ph, %b3NameMap_total_alloc_size.exit.us.us
  %i.p = phi ptr [ %11, %b3NameMap_total_alloc_size.exit.us.us ], [ %i.e, %b3NameMap_metadata_offset.exit.lr.ph ] ; 3 uses
  %.024274.us.us = phi i64 [ %i.w, %b3NameMap_total_alloc_size.exit.us.us ], [ %1, %b3NameMap_metadata_offset.exit.lr.ph ] ; 3 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !21
  %i.q = load i64, ptr %i.a, align 8, !tbaa !20
  %i.r = shl i64 %i.q, 3
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %i.t = ptrtoint ptr %i.p to i64, !nosanitize !10 ; 3 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !10      ; 2 uses
  %.not36.us.us = icmp ult i64 %i.u, %i.t, !nosanitize !10
  br i1 %.not36.us.us, label %.split286.us, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %b3NameMap_metadata_offset.exit.us.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !22
  %i.w = shl i64 %.024274.us.us, 1                ; 4 uses
  %i.x = add i64 %i.w, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.v, i8 0, i64 %i.x, i1 false)
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %.024274.us.us ; 2 uses
  %i.aa = add i64 %.024274.us.us, 4611686018427387904
  %i.ab = icmp sgt i64 %i.aa, -1
  %i.ac = ptrtoint ptr %i.y to i64, !nosanitize !10 ; 3 uses
  %i.ad = add i64 %i.w, %i.ac, !nosanitize !10    ; 3 uses
  %i.ae = icmp ne ptr %i.y, null, !nosanitize !10 ; 2 uses
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = xor i1 %i.ae, %i.af
  %i.ah = icmp uge i64 %i.ad, %i.ac, !nosanitize !10
  %i.ai = and i1 %i.ab, %i.ah, !nosanitize !10
  %i.aj = and i1 %i.ag, %i.ai, !nosanitize !10
  br i1 %i.aj, label %bb.c, label %.split289.us, !prof !14, !nosanitize !10

bb.c:                                             ; preds = %bb.b
  %i.ak = ptrtoint ptr %i.z to i64, !nosanitize !10 ; 2 uses
  %i.al = and i64 %i.ak, 1, !nosanitize !10
  %i.am = icmp eq i64 %i.al, 0, !nosanitize !10
  %i.an = and i1 %i.ae, %i.am
  br i1 %i.an, label %.lr.ph.us.us, label %.split293.us, !prof !14, !nosanitize !10

.lr.ph.us.us:                                     ; preds = %bb.c
  store i16 1, ptr %i.z, align 2, !tbaa !42
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %i.ap = add i64 %i.ao, 1
  %.not360 = icmp ult i64 %i.ap, 2
  br i1 %.not360, label %.split.us277.us, label %.lr.ph.us330

b3NameMap_total_alloc_size.exit.us.us:            ; preds = %.split.us277.us
  %4 = load ptr, ptr %i.f, align 8, !tbaa !21
  %5 = load i64, ptr %i.a, align 8, !tbaa !20
  %6 = mul i64 %5, 10
  %7 = add i64 %6, 18
  call void @b3Free(ptr noundef %4, i64 noundef %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %8 = add i64 %i.w, -1                           ; 2 uses
  store i64 %8, ptr %i.a, align 8, !tbaa !20
  %9 = mul i64 %8, 10
  %10 = add i64 %9, 18
  %11 = call ptr @b3Alloc(i64 noundef %10) #11    ; 2 uses
  %.not.us.us.not = icmp eq ptr %11, null
  br i1 %.not.us.us.not, label %.loopexit, label %b3NameMap_metadata_offset.exit.us.us, !prof !76

.split.us277.us:                                  ; preds = %b3NameMap_bucket_count.exit.us.us.us.us, %bb.h, %.lr.ph.us.us
  %12 = load i64, ptr %2, align 8, !tbaa !19
  %13 = load i64, ptr %0, align 8, !tbaa !19
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %b3NameMap_total_alloc_size.exit.us.us, label %.split303.us, !prof !47

.lr.ph.us330:                                     ; preds = %.lr.ph.us.us, %b3NameMap_bucket_count.exit.us.us.us.us
  %i.aq = phi i64 [ %i.cc, %b3NameMap_bucket_count.exit.us.us.us.us ], [ %i.ao, %.lr.ph.us.us ]
  %.0159.us.us.us329.us = phi i64 [ %i.cd, %b3NameMap_bucket_count.exit.us.us.us.us ], [ 0, %.lr.ph.us.us ] ; 7 uses
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !22  ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %.0159.us.us.us329.us ; 2 uses
  %i.at = add nuw i64 %.0159.us.us.us329.us, 4611686018427387904
  %i.au = icmp sgt i64 %i.at, -1
  %i.av = shl nuw i64 %.0159.us.us.us329.us, 1
  %i.aw = ptrtoint ptr %i.ar to i64, !nosanitize !10 ; 3 uses
  %i.ax = add i64 %i.av, %i.aw, !nosanitize !10   ; 3 uses
  %i.ay = icmp ne ptr %i.ar, null, !nosanitize !10 ; 2 uses
  %i.az = icmp eq i64 %i.ax, 0
  %i.ba = xor i1 %i.ay, %i.az
  %i.bb = icmp uge i64 %i.ax, %i.aw, !nosanitize !10
  %i.bc = and i1 %i.au, %i.bb, !nosanitize !10
  %i.bd = and i1 %i.ba, %i.bc, !nosanitize !10
  br i1 %i.bd, label %bb.d, label %.split163.us, !prof !14, !nosanitize !10

bb.d:                                             ; preds = %.lr.ph.us330
  %i.be = ptrtoint ptr %i.as to i64, !nosanitize !10 ; 2 uses
  %i.bf = and i64 %i.be, 1, !nosanitize !10
  %i.bg = icmp eq i64 %i.bf, 0, !nosanitize !10
  %i.bh = and i1 %i.ay, %i.bg
  br i1 %i.bh, label %bb.e, label %.split167.us, !prof !14, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  %i.bi = load i16, ptr %i.as, align 2, !tbaa !42
  %.not37.us.us.us.us = icmp eq i16 %i.bi, 0
  br i1 %.not37.us.us.us.us, label %b3NameMap_bucket_count.exit.us.us.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !21  ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.0159.us.us.us329.us ; 3 uses
  %i.bl = icmp samesign ult i64 %.0159.us.us.us329.us, 1152921504606846976
  %i.bm = shl i64 %.0159.us.us.us329.us, 3
  %i.bn = ptrtoint ptr %i.bj to i64, !nosanitize !10 ; 3 uses
  %i.bo = add i64 %i.bm, %i.bn, !nosanitize !10   ; 3 uses
  %i.bp = icmp ne ptr %i.bj, null, !nosanitize !10 ; 2 uses
  %i.bq = icmp eq i64 %i.bo, 0
  %i.br = xor i1 %i.bp, %i.bq
  %i.bs = icmp uge i64 %i.bo, %i.bn, !nosanitize !10
  %i.bt = and i1 %i.bl, %i.bs, !nosanitize !10
  %i.bu = and i1 %i.br, %i.bt, !nosanitize !10
  br i1 %i.bu, label %bb.g, label %.split173.us, !prof !14, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.bv = ptrtoint ptr %i.bk to i64, !nosanitize !10 ; 2 uses
  %i.bw = and i64 %i.bv, 3, !nosanitize !10
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !10
  %i.by = and i1 %i.bp, %i.bx
  br i1 %i.by, label %bb.h, label %.split177.us, !prof !14, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  %i.bz = load i32, ptr %i.bk, align 4, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  call fastcc void @b3NameMap_insert_raw(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %2, i32 noundef %i.bz, ptr noundef %i.ca, i1 noundef zeroext true, i1 noundef zeroext false)
  %.val.us.us.us.us = load ptr, ptr %i.n, align 8, !tbaa !34
  %.val39.us.us.us.us = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.cb = icmp eq ptr %.val.us.us.us.us, %.val39.us.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.cb, label %.split.us277.us, label %.b3NameMap_bucket_count.exit.us.us.us.us_crit_edge

.b3NameMap_bucket_count.exit.us.us.us.us_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %i.k, align 8, !tbaa !20
  br label %b3NameMap_bucket_count.exit.us.us.us.us

b3NameMap_bucket_count.exit.us.us.us.us:          ; preds = %.b3NameMap_bucket_count.exit.us.us.us.us_crit_edge, %bb.e
  %i.cc = phi i64 [ %.pre, %.b3NameMap_bucket_count.exit.us.us.us.us_crit_edge ], [ %i.aq, %bb.e ] ; 3 uses
  %i.cd = add nuw nsw i64 %.0159.us.us.us329.us, 1 ; 2 uses
  %i.ce = icmp ne i64 %i.cc, 0
  %i.cf = zext i1 %i.ce to i64
  %i.cg = add i64 %i.cc, %i.cf
  %i.ch = icmp ult i64 %i.cd, %i.cg
  br i1 %i.ch, label %.lr.ph.us330, label %.split.us277.us

b3NameMap_metadata_offset.exit:                   ; preds = %b3NameMap_metadata_offset.exit.lr.ph
  store ptr %i.e, ptr %i.f, align 8, !tbaa !21
  %i.ci = shl i64 %i.b, 3
  %i.cj = add i64 %i.ci, 8                        ; 2 uses
  %i.ck = ptrtoint ptr %i.e to i64, !nosanitize !10 ; 3 uses
  %i.cl = add i64 %i.cj, %i.ck, !nosanitize !10   ; 2 uses
  %.not36 = icmp ult i64 %i.cl, %i.ck, !nosanitize !10
  br i1 %.not36, label %.split286.us, label %bb.i, !prof !11, !nosanitize !10

.split286.us:                                     ; preds = %b3NameMap_metadata_offset.exit.us.us, %b3NameMap_metadata_offset.exit
  %.us-phi = phi i64 [ %i.ck, %b3NameMap_metadata_offset.exit ], [ %i.t, %b3NameMap_metadata_offset.exit.us.us ]
  %.us-phi287 = phi i64 [ %i.cl, %b3NameMap_metadata_offset.exit ], [ %i.u, %b3NameMap_metadata_offset.exit.us.us ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @113, i64 %.us-phi, i64 %.us-phi287) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %b3NameMap_metadata_offset.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cj ; 4 uses
  store ptr %i.cm, ptr %i.g, align 8, !tbaa !22
  %i.cn = shl i64 %1, 1                           ; 2 uses
  %i.co = add i64 %i.cn, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cm, i8 0, i64 %i.co, i1 false)
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %1 ; 2 uses
  %i.cq = add i64 %1, 4611686018427387904
  %i.cr = icmp sgt i64 %i.cq, -1
  %i.cs = ptrtoint ptr %i.cm to i64, !nosanitize !10 ; 3 uses
  %i.ct = add i64 %i.cn, %i.cs, !nosanitize !10   ; 2 uses
  %i.cu = icmp uge i64 %i.ct, %i.cs, !nosanitize !10
  %i.cv = and i1 %i.cr, %i.cu, !nosanitize !10
  br i1 %i.cv, label %bb.j, label %.split289.us, !prof !14, !nosanitize !10

.split289.us:                                     ; preds = %bb.b, %bb.i
  %.us-phi290 = phi i64 [ %i.cs, %bb.i ], [ %i.ac, %bb.b ]
  %.us-phi291 = phi i64 [ %i.ct, %bb.i ], [ %i.ad, %bb.b ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %.us-phi290, i64 %.us-phi291) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.cw = ptrtoint ptr %i.cp to i64, !nosanitize !10 ; 2 uses
  %i.cx = and i64 %i.cw, 1, !nosanitize !10
  %i.cy = icmp eq i64 %i.cx, 0, !nosanitize !10
  br i1 %i.cy, label %._crit_edge, label %.split293.us, !prof !14, !nosanitize !10

.split293.us:                                     ; preds = %bb.c, %bb.j
  %.us-phi294 = phi i64 [ %i.cw, %bb.j ], [ %i.ak, %bb.c ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %.us-phi294) #10, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge:                                      ; preds = %bb.j
  store i16 1, ptr %i.cp, align 2, !tbaa !42
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @120, i64 %i.h) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split163.us:                                     ; preds = %.lr.ph.us330
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @116, i64 %i.aw, i64 %i.ax) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split167.us:                                     ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @117, i64 %i.be) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split173.us:                                     ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @118, i64 %i.bn, i64 %i.bo) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split177.us:                                     ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @119, i64 %i.bv) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split303.us:                                     ; preds = %.split.us277.us
  %i.cz = load i64, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %.not38 = icmp eq i64 %i.cz, 0
  br i1 %.not38, label %bb.k, label %b3NameMap_total_alloc_size.exit41

b3NameMap_total_alloc_size.exit41:                ; preds = %.split303.us
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.db = mul i64 %i.cz, 10
  %i.dc = add i64 %i.db, 18
  call void @b3Free(ptr noundef %i.da, i64 noundef %i.dc) #11
  br label %bb.k

bb.k:                                             ; preds = %.split303.us, %b3NameMap_total_alloc_size.exit41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !79
  br label %.loopexit

.loopexit:                                        ; preds = %b3NameMap_total_alloc_size.exit.us.us, %bb.a, %bb.k
  %.not102 = phi i1 [ true, %bb.k ], [ false, %bb.a ], [ false, %b3NameMap_total_alloc_size.exit.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i1 %.not102
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i1 @b3NameMap_find_first_empty(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #7 !func_sanitize !80 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64, !nosanitize !10  ; 2 uses
  %i.b = and i64 %i.a, 1, !nosanitize !10
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !10
  br i1 %i.c, label %bb.c, label %bb.b, !prof !14, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @105, i64 %i.a) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  store i16 1, ptr %3, align 2, !tbaa !42
  %i.d = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !10
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !10
  %i.g = add i64 %1, 1
  br i1 %i.f, label %.lr.ph, label %bb.g, !prof !49, !nosanitize !10

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.j = and i64 %i.i, 7
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.split.split.split.us, label %bb.h, !prof !14, !nosanitize !10

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %.fr67 = freeze ptr %i.m                        ; 3 uses
  %i.n = ptrtoint ptr %.fr67 to i64, !nosanitize !10 ; 5 uses
  %.not = icmp eq ptr %.fr67, null, !nosanitize !10
  %i.o = load i64, ptr %i.h, align 8, !tbaa !20
  %i.p = and i64 %i.o, %i.g                       ; 4 uses
  store i64 %i.p, ptr %2, align 8, !tbaa !48
  %i.q = add i64 %i.p, 4611686018427387904
  %i.r = icmp sgt i64 %i.q, -1                    ; 2 uses
  %i.s = shl i64 %i.p, 1                          ; 3 uses
  br i1 %.not, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split.split.us, !prof !11

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i1 %i.r, %i.t, !nosanitize !10
  br i1 %i.u, label %.split49.us, label %.split.us, !prof !14, !nosanitize !10

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us
  %i.v = add i64 %i.s, %i.n, !nosanitize !10      ; 2 uses
  %i.w = icmp uge i64 %i.v, %i.n, !nosanitize !10
  %i.x = and i1 %i.r, %i.w, !nosanitize !10
  br i1 %i.x, label %.lr.ph65, label %.split.us, !prof !49, !nosanitize !10

bb.d:                                             ; preds = %bb.f
  %i.y = zext i16 %i.aq to i64
  %i.z = add i64 %.045.us.us5664, %i.y            ; 2 uses
  %i.aa = add i64 %i.z, %1
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !20
  %i.ac = and i64 %i.ab, %i.aa                    ; 4 uses
  store i64 %i.ac, ptr %2, align 8, !tbaa !48
  %i.ad = add i64 %i.ac, 4611686018427387904
  %i.ae = icmp sgt i64 %i.ad, -1
  %i.af = shl i64 %i.ac, 1
  %i.ag = add i64 %i.af, %i.n, !nosanitize !10    ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %i.n, !nosanitize !10
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !10
  br i1 %i.ai, label %.lr.ph65, label %.split.us, !prof !45, !nosanitize !10

.lr.ph65:                                         ; preds = %.lr.ph.split.split.split.us.split.split.us, %bb.d
  %i.aj = phi i16 [ %i.aq, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %.pn = phi i64 [ %i.ac, %bb.d ], [ %i.p, %.lr.ph.split.split.split.us.split.split.us ]
  %.045.us.us5664 = phi i64 [ %i.z, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.fr67, i64 %.pn ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64, !nosanitize !10 ; 2 uses
  %i.am = and i64 %i.al, 1, !nosanitize !10
  %i.an = icmp eq i64 %i.am, 0, !nosanitize !10
  br i1 %i.an, label %bb.e, label %.split49.us, !prof !14, !nosanitize !10

bb.e:                                             ; preds = %.lr.ph65
  %i.ao = load i16, ptr %i.ak, align 2, !tbaa !42
  %i.ap = icmp eq i16 %i.ao, 0                    ; 2 uses
  br i1 %i.ap, label %.split52.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i16 %i.aj, 1                        ; 4 uses
  store i16 %i.aq, ptr %3, align 2, !tbaa !42
  %i.ar = icmp eq i16 %i.aq, 2047
  br i1 %i.ar, label %.split52.us, label %bb.d, !prof !47

bb.g:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @106, i64 %i.d) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %.lr.ph
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @107, i64 %i.i) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split.us:                                        ; preds = %bb.d, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.split.us
  %.us-phi54 = phi i64 [ %i.s, %.lr.ph.split.split.split.us.split.us ], [ %i.v, %.lr.ph.split.split.split.us.split.split.us ], [ %i.ag, %bb.d ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @108, i64 %i.n, i64 %.us-phi54) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split49.us:                                      ; preds = %.lr.ph65, %.lr.ph.split.split.split.us.split.us
  %.us-phi55 = phi i64 [ 0, %.lr.ph.split.split.split.us.split.us ], [ %i.al, %.lr.ph65 ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @109, i64 %.us-phi55) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split52.us:                                      ; preds = %bb.f, %bb.e
  ret i1 %i.ap
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @b3NameMap_find_insert_location_in_chain(ptr noundef nonnull %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #7 !func_sanitize !81 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !10
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !10
  br i1 %i.c, label %.lr.ph, label %bb.d, !prof !49, !nosanitize !10

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %.fr69 = freeze ptr %i.f                        ; 3 uses
  %i.g = ptrtoint ptr %.fr69 to i64, !nosanitize !10 ; 5 uses
  %.not70 = icmp eq ptr %.fr69, null, !nosanitize !10
  %i.h = add i64 %1, 4611686018427387904
  %i.i = icmp sgt i64 %i.h, -1                    ; 2 uses
  %i.j = shl i64 %1, 1                            ; 3 uses
  br i1 %.not70, label %.lr.ph.split.split.us, label %.lr.ph.split.split.split.us.split.us, !prof !11

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i1 %i.i, %i.k, !nosanitize !10
  br i1 %i.l, label %.split48, label %.split.us, !prof !14, !nosanitize !10

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph
  %i.m = add i64 %i.j, %i.g, !nosanitize !10      ; 2 uses
  %i.n = icmp uge i64 %i.m, %i.g, !nosanitize !10
  %i.o = and i1 %i.i, %i.n, !nosanitize !10
  br i1 %i.o, label %.lr.ph67, label %.split.us, !prof !49, !nosanitize !10

.lr.ph67:                                         ; preds = %.lr.ph.split.split.split.us.split.us, %bb.c
  %.01045.us50.us66 = phi i64 [ %i.ab, %bb.c ], [ %1, %.lr.ph.split.split.split.us.split.us ] ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.fr69, i64 %.01045.us50.us66 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64, !nosanitize !10 ; 2 uses
  %i.r = and i64 %i.q, 1, !nosanitize !10
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !10
  br i1 %i.s, label %bb.b, label %.split48, !prof !14, !nosanitize !10

bb.b:                                             ; preds = %.lr.ph67
  %i.t = load i16, ptr %i.p, align 2, !tbaa !42
  %i.u = and i16 %i.t, 2047                       ; 2 uses
  %.not.us.us = icmp ugt i16 %i.u, %2
  br i1 %.not.us.us, label %.split58.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i16 %i.u to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul nuw nsw i64 %i.w, %i.v
  %i.y = lshr i64 %i.x, 1
  %i.z = add i64 %i.y, %1
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !20
  %i.ab = and i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = add i64 %i.ab, 4611686018427387904
  %i.ad = icmp sgt i64 %i.ac, -1
  %i.ae = shl i64 %i.ab, 1
  %i.af = add i64 %i.ae, %i.g, !nosanitize !10    ; 2 uses
  %i.ag = icmp uge i64 %i.af, %i.g, !nosanitize !10
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !10
  br i1 %i.ah, label %.lr.ph67, label %.split.us, !prof !45, !nosanitize !10

bb.d:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @110, i64 %i.a) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split.us:                                        ; preds = %bb.c, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.us
  %.us-phi46 = phi i64 [ %i.j, %.lr.ph.split.split.us ], [ %i.m, %.lr.ph.split.split.split.us.split.us ], [ %i.af, %bb.c ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.g, i64 %.us-phi46) #10, !nosanitize !10
  unreachable, !nosanitize !10
end_hunk_0
