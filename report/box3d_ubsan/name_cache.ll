Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/name_cache?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3NameMap_insert_raw:bb.a
  %i.kj = icmp eq i64 %i.kh, 0                    ; 2 uses
  %i.kk = xor i1 %i.ki, %i.kj
  %i.kl = icmp uge i64 %i.kh, %i.kg, !nosanitize !10
  %i.km = and i1 %i.ke, %i.kl, !nosanitize !10
  %i.kn = and i1 %i.kk, %i.km, !nosanitize !10
  br i1 %i.kn, label %bb.cd, label %bb.cc, !prof !14, !nosanitize !10

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %i.kg, i64 %i.kh) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cd:                                            ; preds = %bb.cb
  %i.ko = ptrtoint ptr %i.kc to i64, !nosanitize !10 ; 2 uses
  %i.kp = and i64 %i.ko, 3, !nosanitize !10
  %i.kq = icmp eq i64 %i.kp, 0, !nosanitize !10
  %i.kr = and i1 %i.ki, %i.kq
  br i1 %i.kr, label %bb.cf, label %bb.ce, !prof !14, !nosanitize !10

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @79, i64 %i.ko) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cf:                                            ; preds = %bb.cd
  store i32 %2, ptr %i.kc, align 4, !tbaa !43
  %i.ks = ptrtoint ptr %3 to i64, !nosanitize !10 ; 2 uses
  %i.kt = and i64 %i.ks, 3, !nosanitize !10
  %i.ku = icmp eq i64 %i.kt, 0, !nosanitize !10
  br i1 %i.ku, label %bb.ch, label %bb.cg, !prof !14, !nosanitize !10

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @80, i64 %i.ks) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ch:                                            ; preds = %bb.cf
  br i1 %i.kj, label %bb.ci, label %bb.cj, !prof !11, !nosanitize !10

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.kg, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cj:                                            ; preds = %bb.ch
  %i.kv = load i32, ptr %3, align 4, !tbaa !39
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !38
  %i.kx = load ptr, ptr %i.v, align 8, !tbaa !22  ; 5 uses
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.jy ; 4 uses
  %i.kz = shl nsw i64 %i.jy, 1
  %i.la = ptrtoint ptr %i.kx to i64, !nosanitize !10 ; 11 uses
  %i.lb = add i64 %i.kz, %i.la, !nosanitize !10   ; 3 uses
  %i.lc = icmp ne ptr %i.kx, null, !nosanitize !10 ; 2 uses
  %i.ld = icmp eq i64 %i.lb, 0                    ; 2 uses
  %i.le = xor i1 %i.lc, %i.ld
  %i.lf = icmp uge i64 %i.lb, %i.la, !nosanitize !10
  %i.lg = and i1 %i.lf, %i.le, !nosanitize !10
  br i1 %i.lg, label %bb.cl, label %bb.ck, !prof !14, !nosanitize !10

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.la, i64 %i.lb) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cl:                                            ; preds = %bb.cj
  %i.lh = ptrtoint ptr %i.ky to i64, !nosanitize !10 ; 2 uses
  %i.li = and i64 %i.lh, 1, !nosanitize !10
  %i.lj = icmp eq i64 %i.li, 0, !nosanitize !10
  %i.lk = and i1 %i.lc, %i.lj
  br i1 %i.lk, label %bb.cn, label %bb.cm, !prof !14, !nosanitize !10

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %i.lh) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cn:                                            ; preds = %bb.cl
  %i.ll = load i16, ptr %i.ky, align 2, !tbaa !42
  %i.lm = and i16 %i.ll, 2047
  %i.ln = or disjoint i16 %i.lm, %i.k
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.kb ; 3 uses
  %i.lp = shl nsw i64 %i.kb, 1
  %i.lq = add i64 %i.lp, %i.la, !nosanitize !10   ; 3 uses
  %.not114 = icmp ult i64 %i.lq, %i.la, !nosanitize !10
  br i1 %.not114, label %bb.co, label %bb.cp, !prof !11, !nosanitize !10

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.la, i64 %i.lq) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cp:                                            ; preds = %bb.cn
  %i.lr = ptrtoint ptr %i.lo to i64, !nosanitize !10 ; 2 uses
  %i.ls = and i64 %i.lr, 1, !nosanitize !10
  %i.lt = icmp eq i64 %i.ls, 0, !nosanitize !10
  br i1 %i.lt, label %bb.cr, label %bb.cq, !prof !14, !nosanitize !10

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.lr) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cr:                                            ; preds = %bb.cp
  store i16 %i.ln, ptr %i.lo, align 2, !tbaa !42
  br i1 %i.ld, label %bb.cs, label %bb.ct, !prof !11, !nosanitize !10

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 %i.la, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ct:                                            ; preds = %bb.cr
  %i.lu = load i16, ptr %i.ky, align 2, !tbaa !42
  %i.lv = and i16 %i.lu, -2048
  %i.lw = load i16, ptr %i.d, align 2, !tbaa !42
  %i.lx = or i16 %i.lv, %i.lw
  store i16 %i.lx, ptr %i.ky, align 2, !tbaa !42
  %i.ly = load i64, ptr %1, align 8, !tbaa !19
  %i.lz = add i64 %i.ly, 1
  store i64 %i.lz, ptr %1, align 8, !tbaa !19
  store ptr %i.kc, ptr %0, align 8, !tbaa !36
  %.not115 = icmp eq i64 %i.lq, 0
  br i1 %.not115, label %bb.cu, label %bb.cv, !prof !11, !nosanitize !10

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @87, i64 %i.la, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cv:                                            ; preds = %bb.ct
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lo, ptr %i.ma, align 8, !tbaa !34
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mc = load i64, ptr %i.s, align 8, !tbaa !20  ; 3 uses
  %i.md = add i64 %i.mc, 4611686018427387904
  %i.me = icmp sgt i64 %i.md, -1
  %i.mf = shl i64 %i.mc, 1
  %i.mg = add i64 %i.mf, %i.la, !nosanitize !10   ; 2 uses
  %i.mh = icmp uge i64 %i.mg, %i.la, !nosanitize !10
  %i.mi = and i1 %i.me, %i.mh, !nosanitize !10
  br i1 %i.mi, label %bb.cx, label %bb.cw, !prof !14, !nosanitize !10

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @88, i64 %i.la, i64 %i.mg) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cx:                                            ; preds = %bb.cv
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.mc ; 3 uses
  %i.mk = ptrtoint ptr %i.mj to i64, !nosanitize !10 ; 2 uses
  %i.ml = add i64 %i.mk, 2, !nosanitize !10       ; 2 uses
  %i.mm = icmp ne i64 %i.ml, 0
  %i.mn = icmp ult ptr %i.mj, inttoptr (i64 -2 to ptr)
  %i.mo = and i1 %i.mn, %i.mm, !nosanitize !10
  br i1 %i.mo, label %bb.cz, label %bb.cy, !prof !14, !nosanitize !10

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @89, i64 %i.mk, i64 %i.ml) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.cz:                                            ; preds = %bb.cx
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 2
  store ptr %i.mp, ptr %i.mb, align 8, !tbaa !35
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %i.mq, align 8, !tbaa !46
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
  %i.p = phi ptr [ %i.cq, %b3NameMap_total_alloc_size.exit.us.us ], [ %i.e, %b3NameMap_metadata_offset.exit.lr.ph ] ; 3 uses
  %.024274.us.us = phi i64 [ %i.u, %b3NameMap_total_alloc_size.exit.us.us ], [ %1, %b3NameMap_metadata_offset.exit.lr.ph ] ; 3 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !21
  %i.q = load i64, ptr %i.a, align 8, !tbaa !20
  %i.r = shl i64 %i.q, 3                          ; 2 uses
  %4 = ptrtoint ptr %i.p to i64, !nosanitize !10  ; 3 uses
  %5 = add i64 %4, 8
  %i.s = add i64 %5, %i.r, !nosanitize !10        ; 2 uses
  %.not36.us.us = icmp ult i64 %i.s, %4, !nosanitize !10
  br i1 %.not36.us.us, label %.split286.us, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %b3NameMap_metadata_offset.exit.us.us
  %6 = getelementptr i8, ptr %i.p, i64 %i.r
  %i.t = getelementptr i8, ptr %6, i64 8          ; 2 uses
  store ptr %i.t, ptr %i.g, align 8, !tbaa !22
  %i.u = shl i64 %.024274.us.us, 1                ; 4 uses
  %i.v = add i64 %i.u, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.t, i8 0, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.024274.us.us ; 2 uses
  %i.y = add i64 %.024274.us.us, 4611686018427387904
  %i.z = icmp sgt i64 %i.y, -1
  %i.aa = ptrtoint ptr %i.w to i64, !nosanitize !10 ; 3 uses
  %i.ab = add i64 %i.u, %i.aa, !nosanitize !10    ; 3 uses
  %i.ac = icmp ne ptr %i.w, null, !nosanitize !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = xor i1 %i.ac, %i.ad
  %i.af = icmp uge i64 %i.ab, %i.aa, !nosanitize !10
  %i.ag = and i1 %i.z, %i.af, !nosanitize !10
  %i.ah = and i1 %i.ae, %i.ag, !nosanitize !10
  br i1 %i.ah, label %bb.c, label %.split289.us, !prof !14, !nosanitize !10

bb.c:                                             ; preds = %bb.b
  %i.ai = ptrtoint ptr %i.x to i64, !nosanitize !10 ; 2 uses
  %i.aj = and i64 %i.ai, 1, !nosanitize !10
  %i.ak = icmp eq i64 %i.aj, 0, !nosanitize !10
  %i.al = and i1 %i.ac, %i.ak
  br i1 %i.al, label %.lr.ph.us.us, label %.split293.us, !prof !14, !nosanitize !10

.lr.ph.us.us:                                     ; preds = %bb.c
  store i16 1, ptr %i.x, align 2, !tbaa !42
  %i.am = load i64, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %i.an = add i64 %i.am, 1
  %.not360 = icmp ult i64 %i.an, 2
  br i1 %.not360, label %.split.us278.us, label %.lr.ph.us330

.lr.ph.us330:                                     ; preds = %.lr.ph.us.us, %b3NameMap_bucket_count.exit.us.us.us.us
  %i.ao = phi i64 [ %i.ca, %b3NameMap_bucket_count.exit.us.us.us.us ], [ %i.am, %.lr.ph.us.us ]
  %.0159.us.us.us329.us = phi i64 [ %i.cb, %b3NameMap_bucket_count.exit.us.us.us.us ], [ 0, %.lr.ph.us.us ] ; 7 uses
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !22  ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %.0159.us.us.us329.us ; 2 uses
  %i.ar = add nuw i64 %.0159.us.us.us329.us, 4611686018427387904
  %i.as = icmp sgt i64 %i.ar, -1
  %i.at = shl nuw i64 %.0159.us.us.us329.us, 1
  %i.au = ptrtoint ptr %i.ap to i64, !nosanitize !10 ; 3 uses
  %i.av = add i64 %i.at, %i.au, !nosanitize !10   ; 3 uses
  %i.aw = icmp ne ptr %i.ap, null, !nosanitize !10 ; 2 uses
  %i.ax = icmp eq i64 %i.av, 0
  %i.ay = xor i1 %i.aw, %i.ax
  %i.az = icmp uge i64 %i.av, %i.au, !nosanitize !10
  %i.ba = and i1 %i.as, %i.az, !nosanitize !10
  %i.bb = and i1 %i.ay, %i.ba, !nosanitize !10
  br i1 %i.bb, label %bb.d, label %.split163.us, !prof !14, !nosanitize !10

bb.d:                                             ; preds = %.lr.ph.us330
  %i.bc = ptrtoint ptr %i.aq to i64, !nosanitize !10 ; 2 uses
  %i.bd = and i64 %i.bc, 1, !nosanitize !10
  %i.be = icmp eq i64 %i.bd, 0, !nosanitize !10
  %i.bf = and i1 %i.aw, %i.be
  br i1 %i.bf, label %bb.e, label %.split167.us, !prof !14, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  %i.bg = load i16, ptr %i.aq, align 2, !tbaa !42
  %.not37.us.us.us.us = icmp eq i16 %i.bg, 0
  br i1 %.not37.us.us.us.us, label %b3NameMap_bucket_count.exit.us.us.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !21  ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.0159.us.us.us329.us ; 3 uses
  %i.bj = icmp samesign ult i64 %.0159.us.us.us329.us, 1152921504606846976
  %i.bk = shl i64 %.0159.us.us.us329.us, 3
  %i.bl = ptrtoint ptr %i.bh to i64, !nosanitize !10 ; 3 uses
  %i.bm = add i64 %i.bk, %i.bl, !nosanitize !10   ; 3 uses
  %i.bn = icmp ne ptr %i.bh, null, !nosanitize !10 ; 2 uses
  %i.bo = icmp eq i64 %i.bm, 0
  %i.bp = xor i1 %i.bn, %i.bo
  %i.bq = icmp uge i64 %i.bm, %i.bl, !nosanitize !10
  %i.br = and i1 %i.bj, %i.bq, !nosanitize !10
  %i.bs = and i1 %i.bp, %i.br, !nosanitize !10
  br i1 %i.bs, label %bb.g, label %.split173.us, !prof !14, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.bt = ptrtoint ptr %i.bi to i64, !nosanitize !10 ; 2 uses
  %i.bu = and i64 %i.bt, 3, !nosanitize !10
  %i.bv = icmp eq i64 %i.bu, 0, !nosanitize !10
  %i.bw = and i1 %i.bn, %i.bv
  br i1 %i.bw, label %bb.h, label %.split177.us, !prof !14, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  %i.bx = load i32, ptr %i.bi, align 4, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  call fastcc void @b3NameMap_insert_raw(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %2, i32 noundef %i.bx, ptr noundef %i.by, i1 noundef zeroext true, i1 noundef zeroext false)
  %.val.us.us.us.us = load ptr, ptr %i.n, align 8, !tbaa !34
  %.val39.us.us.us.us = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.bz = icmp eq ptr %.val.us.us.us.us, %.val39.us.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br i1 %i.bz, label %.split.us278.us, label %.b3NameMap_bucket_count.exit.us.us.us.us_crit_edge

.b3NameMap_bucket_count.exit.us.us.us.us_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %i.k, align 8, !tbaa !20
  br label %b3NameMap_bucket_count.exit.us.us.us.us

b3NameMap_bucket_count.exit.us.us.us.us:          ; preds = %.b3NameMap_bucket_count.exit.us.us.us.us_crit_edge, %bb.e
  %i.ca = phi i64 [ %.pre, %.b3NameMap_bucket_count.exit.us.us.us.us_crit_edge ], [ %i.ao, %bb.e ] ; 3 uses
  %i.cb = add nuw nsw i64 %.0159.us.us.us329.us, 1 ; 2 uses
  %i.cc = icmp ne i64 %i.ca, 0
  %i.cd = zext i1 %i.cc to i64
  %i.ce = add i64 %i.ca, %i.cd
  %i.cf = icmp ult i64 %i.cb, %i.ce
  br i1 %i.cf, label %.lr.ph.us330, label %.split.us278.us

.split.us278.us:                                  ; preds = %b3NameMap_bucket_count.exit.us.us.us.us, %bb.h, %.lr.ph.us.us
  %i.cg = load i64, ptr %2, align 8, !tbaa !19
  %i.ch = load i64, ptr %0, align 8, !tbaa !19
  %i.ci = icmp ult i64 %i.cg, %i.ch
  br i1 %i.ci, label %b3NameMap_total_alloc_size.exit.us.us, label %.split324.us, !prof !47

b3NameMap_total_alloc_size.exit.us.us:            ; preds = %.split.us278.us
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !20
  %i.cl = mul i64 %i.ck, 10
  %i.cm = add i64 %i.cl, 18
  call void @b3Free(ptr noundef %i.cj, i64 noundef %i.cm) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.cn = add i64 %i.u, -1                        ; 2 uses
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !20
  %i.co = mul i64 %i.cn, 10
  %i.cp = add i64 %i.co, 18
  %i.cq = call ptr @b3Alloc(i64 noundef %i.cp) #11 ; 2 uses
  %.not.us.us.not = icmp eq ptr %i.cq, null
  br i1 %.not.us.us.not, label %.loopexit, label %b3NameMap_metadata_offset.exit.us.us, !prof !76

b3NameMap_metadata_offset.exit:                   ; preds = %b3NameMap_metadata_offset.exit.lr.ph
  store ptr %i.e, ptr %i.f, align 8, !tbaa !21
  %i.cr = shl i64 %i.b, 3                         ; 2 uses
  %7 = ptrtoint ptr %i.e to i64, !nosanitize !10  ; 3 uses
  %8 = add i64 %7, 8
  %i.cs = add i64 %8, %i.cr, !nosanitize !10      ; 2 uses
  %.not36 = icmp ult i64 %i.cs, %7, !nosanitize !10
  br i1 %.not36, label %.split286.us, label %bb.i, !prof !11, !nosanitize !10

.split286.us:                                     ; preds = %b3NameMap_metadata_offset.exit.us.us, %b3NameMap_metadata_offset.exit
  %.us-phi = phi i64 [ %7, %b3NameMap_metadata_offset.exit ], [ %4, %b3NameMap_metadata_offset.exit.us.us ]
  %.us-phi287 = phi i64 [ %i.cs, %b3NameMap_metadata_offset.exit ], [ %i.s, %b3NameMap_metadata_offset.exit.us.us ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @113, i64 %.us-phi, i64 %.us-phi287) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %b3NameMap_metadata_offset.exit
  %9 = getelementptr i8, ptr %i.e, i64 %i.cr
  %i.ct = getelementptr i8, ptr %9, i64 8         ; 5 uses
  store ptr %i.ct, ptr %i.g, align 8, !tbaa !22
  %i.cu = shl i64 %1, 1                           ; 2 uses
  %i.cv = add i64 %i.cu, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ct, i8 0, i64 %i.cv, i1 false)
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %1 ; 2 uses
  %i.cx = add i64 %1, 4611686018427387904
  %i.cy = icmp sgt i64 %i.cx, -1
  %i.cz = ptrtoint ptr %i.ct to i64, !nosanitize !10 ; 3 uses
  %i.da = add i64 %i.cu, %i.cz, !nosanitize !10   ; 3 uses
  %10 = icmp ne ptr %i.ct, null, !nosanitize !10  ; 2 uses
  %11 = icmp eq i64 %i.da, 0
  %12 = xor i1 %10, %11
  %i.db = icmp uge i64 %i.da, %i.cz, !nosanitize !10
  %13 = and i1 %i.cy, %i.db, !nosanitize !10
  %i.dc = and i1 %12, %13, !nosanitize !10
  br i1 %i.dc, label %bb.j, label %.split289.us, !prof !14, !nosanitize !10

.split289.us:                                     ; preds = %bb.b, %bb.i
  %.us-phi290 = phi i64 [ %i.cz, %bb.i ], [ %i.aa, %bb.b ]
  %.us-phi291 = phi i64 [ %i.da, %bb.i ], [ %i.ab, %bb.b ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %.us-phi290, i64 %.us-phi291) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.dd = ptrtoint ptr %i.cw to i64, !nosanitize !10 ; 2 uses
  %i.de = and i64 %i.dd, 1, !nosanitize !10
  %i.df = icmp eq i64 %i.de, 0, !nosanitize !10
  %14 = and i1 %10, %i.df
  br i1 %14, label %._crit_edge, label %.split293.us, !prof !14, !nosanitize !10

.split293.us:                                     ; preds = %bb.c, %bb.j
  %.us-phi294 = phi i64 [ %i.dd, %bb.j ], [ %i.ai, %bb.c ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %.us-phi294) #10, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge:                                      ; preds = %bb.j
  store i16 1, ptr %i.cw, align 2, !tbaa !42
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @120, i64 %i.h) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split163.us:                                     ; preds = %.lr.ph.us330
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @116, i64 %i.au, i64 %i.av) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split167.us:                                     ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @117, i64 %i.bc) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split173.us:                                     ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @118, i64 %i.bl, i64 %i.bm) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split177.us:                                     ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @119, i64 %i.bt) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split324.us:                                     ; preds = %.split.us278.us
  %i.dg = load i64, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %.not38 = icmp eq i64 %i.dg, 0
  br i1 %.not38, label %bb.k, label %b3NameMap_total_alloc_size.exit41

b3NameMap_total_alloc_size.exit41:                ; preds = %.split324.us
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.di = mul i64 %i.dg, 10
  %i.dj = add i64 %i.di, 18
  call void @b3Free(ptr noundef %i.dh, i64 noundef %i.dj) #11
  br label %bb.k

bb.k:                                             ; preds = %.split324.us, %b3NameMap_total_alloc_size.exit41
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
end_hunk_0
