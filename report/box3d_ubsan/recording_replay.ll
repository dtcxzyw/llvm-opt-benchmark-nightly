Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/recording_replay?download=true
begin_hunk_0_@b3RecTagLookup_insert_raw:bb.a
bb.cf:                                            ; preds = %bb.cd
  store i64 %2, ptr %i.jz, align 8, !tbaa !246
  %i.kp = ptrtoint ptr %3 to i64, !nosanitize !9  ; 2 uses
  %i.kq = and i64 %i.kp, 3, !nosanitize !9
  %i.kr = icmp eq i64 %i.kq, 0, !nosanitize !9
  br i1 %i.kr, label %bb.ch, label %bb.cg, !prof !10, !nosanitize !9

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @308, i64 %i.kp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ch:                                            ; preds = %bb.cf
  %i.ks = load i32, ptr %3, align 4, !tbaa !38
  %i.kt = load i64, ptr %i.c, align 8, !tbaa !62  ; 5 uses
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.kt ; 3 uses
  %i.kv = add i64 %i.kt, 576460752303423488
  %i.kw = icmp ult i64 %i.kv, 1152921504606846976
  %i.kx = shl i64 %i.kt, 4
  %i.ky = add i64 %i.kx, %i.kd, !nosanitize !9    ; 3 uses
  %.not114 = icmp eq i64 %i.ky, 0
  %i.kz = icmp uge i64 %i.ky, %i.kd, !nosanitize !9
  %i.la = and i1 %i.kw, %i.kz, !nosanitize !9
  br i1 %i.la, label %bb.cj, label %bb.ci, !prof !10, !nosanitize !9

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @309, i64 %i.kd, i64 %i.ky) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cj:                                            ; preds = %bb.ch
  %i.lb = ptrtoint ptr %i.ku to i64, !nosanitize !9 ; 2 uses
  %i.lc = and i64 %i.lb, 7, !nosanitize !9
  %i.ld = icmp eq i64 %i.lc, 0, !nosanitize !9
  br i1 %i.ld, label %bb.cl, label %bb.ck, !prof !10, !nosanitize !9

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @310, i64 %i.lb) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cl:                                            ; preds = %bb.cj
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i32 %i.ks, ptr %i.le, align 8, !tbaa !241
  %i.lf = load ptr, ptr %i.u, align 8, !tbaa !109 ; 5 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.jv ; 4 uses
  %i.lh = shl nsw i64 %i.jv, 1
  %i.li = ptrtoint ptr %i.lf to i64, !nosanitize !9 ; 11 uses
  %i.lj = add i64 %i.lh, %i.li, !nosanitize !9    ; 3 uses
  %i.lk = icmp ne ptr %i.lf, null, !nosanitize !9 ; 2 uses
  %i.ll = icmp eq i64 %i.lj, 0                    ; 2 uses
  %i.lm = xor i1 %i.lk, %i.ll
  %i.ln = icmp uge i64 %i.lj, %i.li, !nosanitize !9
  %i.lo = and i1 %i.ln, %i.lm, !nosanitize !9
  br i1 %i.lo, label %bb.cn, label %bb.cm, !prof !10, !nosanitize !9

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @311, i64 %i.li, i64 %i.lj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cn:                                            ; preds = %bb.cl
  %i.lp = ptrtoint ptr %i.lg to i64, !nosanitize !9 ; 2 uses
  %i.lq = and i64 %i.lp, 1, !nosanitize !9
  %i.lr = icmp eq i64 %i.lq, 0, !nosanitize !9
  %i.ls = and i1 %i.lk, %i.lr
  br i1 %i.ls, label %bb.cp, label %bb.co, !prof !10, !nosanitize !9

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @312, i64 %i.lp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cp:                                            ; preds = %bb.cn
  %i.lt = load i16, ptr %i.lg, align 2, !tbaa !199
  %i.lu = and i16 %i.lt, 2047
  %i.lv = or disjoint i16 %i.lu, %i.j
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.kt ; 3 uses
  %i.lx = shl nsw i64 %i.kt, 1
  %i.ly = add i64 %i.lx, %i.li, !nosanitize !9    ; 3 uses
  %.not115 = icmp ult i64 %i.ly, %i.li, !nosanitize !9
  br i1 %.not115, label %bb.cq, label %bb.cr, !prof !27, !nosanitize !9

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @313, i64 %i.li, i64 %i.ly) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cr:                                            ; preds = %bb.cp
  %i.lz = ptrtoint ptr %i.lw to i64, !nosanitize !9 ; 2 uses
  %i.ma = and i64 %i.lz, 1, !nosanitize !9
  %i.mb = icmp eq i64 %i.ma, 0, !nosanitize !9
  br i1 %i.mb, label %bb.ct, label %bb.cs, !prof !10, !nosanitize !9

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @314, i64 %i.lz) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ct:                                            ; preds = %bb.cr
  store i16 %i.lv, ptr %i.lw, align 2, !tbaa !199
  br i1 %i.ll, label %bb.cu, label %bb.cv, !prof !27, !nosanitize !9

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @315, i64 %i.li, i64 0) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cv:                                            ; preds = %bb.ct
  %i.mc = load i16, ptr %i.lg, align 2, !tbaa !199
  %i.md = and i16 %i.mc, -2048
  %i.me = load i16, ptr %i.d, align 2, !tbaa !199
  %i.mf = or i16 %i.md, %i.me
  store i16 %i.mf, ptr %i.lg, align 2, !tbaa !199
  %i.mg = load i64, ptr %1, align 8, !tbaa !251
  %i.mh = add i64 %i.mg, 1
  store i64 %i.mh, ptr %1, align 8, !tbaa !251
  br i1 %.not114, label %bb.cw, label %bb.cx, !prof !27, !nosanitize !9

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @316, i64 %i.kd, i64 0) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cx:                                            ; preds = %bb.cv
  store ptr %i.ku, ptr %0, align 8, !tbaa !239
  %.not116 = icmp eq i64 %i.ly, 0
  br i1 %.not116, label %bb.cy, label %bb.cz, !prof !27, !nosanitize !9

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @317, i64 %i.li, i64 0) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cz:                                            ; preds = %bb.cx
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lw, ptr %i.mi, align 8, !tbaa !237
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mk = load i64, ptr %i.r, align 8, !tbaa !107 ; 3 uses
  %i.ml = add i64 %i.mk, 4611686018427387904
  %i.mm = icmp sgt i64 %i.ml, -1
  %i.mn = shl i64 %i.mk, 1
  %i.mo = add i64 %i.mn, %i.li, !nosanitize !9    ; 2 uses
  %i.mp = icmp uge i64 %i.mo, %i.li, !nosanitize !9
  %i.mq = and i1 %i.mm, %i.mp, !nosanitize !9
  br i1 %i.mq, label %bb.db, label %bb.da, !prof !10, !nosanitize !9

bb.da:                                            ; preds = %bb.cz
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @318, i64 %i.li, i64 %i.mo) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.db:                                            ; preds = %bb.cz
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.mk ; 3 uses
  %i.ms = ptrtoint ptr %i.mr to i64, !nosanitize !9 ; 2 uses
  %i.mt = add i64 %i.ms, 2, !nosanitize !9        ; 2 uses
  %i.mu = icmp ne i64 %i.mt, 0
  %i.mv = icmp ult ptr %i.mr, inttoptr (i64 -2 to ptr)
  %i.mw = and i1 %i.mv, %i.mu, !nosanitize !9
  br i1 %i.mw, label %bb.dd, label %bb.dc, !prof !10, !nosanitize !9

bb.dc:                                            ; preds = %bb.db
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @319, i64 %i.ms, i64 %i.mt) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dd:                                            ; preds = %bb.db
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  store ptr %i.mx, ptr %i.mj, align 8, !tbaa !238
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %i.my, align 8, !tbaa !249
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.critedge109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.df

bb.df:                                            ; preds = %.critedge, %bb.de, %bb.bf, %bb.an
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @b3RecTagLookup_rehash(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #9 !func_sanitize !616 {
bb.a:
  %2 = alloca %struct.b3RecTagLookup, align 8     ; 12 uses
  %3 = alloca %struct.b3RecTagLookup_itr, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.b = add i64 %1, -1                           ; 3 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !107
  %i.c = mul i64 %i.b, 18
  %i.d = add i64 %i.c, 26
  %i.e = tail call ptr @b3Alloc(i64 noundef %i.d) #13 ; 5 uses
  %.not273.not = icmp eq ptr %i.e, null
  br i1 %.not273.not, label %.loopexit, label %b3RecTagLookup_metadata_offset.exit.lr.ph, !prof !123

b3RecTagLookup_metadata_offset.exit.lr.ph:        ; preds = %bb.a
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
  br i1 %i.j, label %b3RecTagLookup_metadata_offset.exit.us.us, label %b3RecTagLookup_metadata_offset.exit, !prof !218, !nosanitize !9

b3RecTagLookup_metadata_offset.exit.us.us:        ; preds = %b3RecTagLookup_metadata_offset.exit.lr.ph, %b3RecTagLookup_total_alloc_size.exit.us.us
  %i.p = phi ptr [ %11, %b3RecTagLookup_total_alloc_size.exit.us.us ], [ %i.e, %b3RecTagLookup_metadata_offset.exit.lr.ph ] ; 3 uses
  %.024274.us.us = phi i64 [ %i.w, %b3RecTagLookup_total_alloc_size.exit.us.us ], [ %1, %b3RecTagLookup_metadata_offset.exit.lr.ph ] ; 3 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !108
  %i.q = load i64, ptr %i.a, align 8, !tbaa !107
  %i.r = shl i64 %i.q, 4
  %i.s = add i64 %i.r, 16                         ; 2 uses
  %i.t = ptrtoint ptr %i.p to i64, !nosanitize !9 ; 3 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !9       ; 2 uses
  %.not36.us.us = icmp ult i64 %i.u, %i.t, !nosanitize !9
  br i1 %.not36.us.us, label %.split286.us, label %bb.b, !prof !27, !nosanitize !9

bb.b:                                             ; preds = %b3RecTagLookup_metadata_offset.exit.us.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !109
  %i.w = shl i64 %.024274.us.us, 1                ; 4 uses
  %i.x = add i64 %i.w, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.v, i8 0, i64 %i.x, i1 false)
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !109  ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %.024274.us.us ; 2 uses
  %i.aa = add i64 %.024274.us.us, 4611686018427387904
  %i.ab = icmp sgt i64 %i.aa, -1
  %i.ac = ptrtoint ptr %i.y to i64, !nosanitize !9 ; 3 uses
  %i.ad = add i64 %i.w, %i.ac, !nosanitize !9     ; 3 uses
  %i.ae = icmp ne ptr %i.y, null, !nosanitize !9  ; 2 uses
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = xor i1 %i.ae, %i.af
  %i.ah = icmp uge i64 %i.ad, %i.ac, !nosanitize !9
  %i.ai = and i1 %i.ab, %i.ah, !nosanitize !9
  %i.aj = and i1 %i.ag, %i.ai, !nosanitize !9
  br i1 %i.aj, label %bb.c, label %.split289.us, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  %i.ak = ptrtoint ptr %i.z to i64, !nosanitize !9 ; 2 uses
  %i.al = and i64 %i.ak, 1, !nosanitize !9
  %i.am = icmp eq i64 %i.al, 0, !nosanitize !9
  %i.an = and i1 %i.ae, %i.am
  br i1 %i.an, label %.lr.ph.us.us, label %.split293.us, !prof !10, !nosanitize !9

.lr.ph.us.us:                                     ; preds = %bb.c
  store i16 1, ptr %i.z, align 2, !tbaa !199
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !107 ; 2 uses
  %i.ap = add i64 %i.ao, 1
  %.not360 = icmp ult i64 %i.ap, 2
  br i1 %.not360, label %.split.us277.us, label %.lr.ph.us330

b3RecTagLookup_total_alloc_size.exit.us.us:       ; preds = %.split.us277.us
  %4 = load ptr, ptr %i.f, align 8, !tbaa !108
  %5 = load i64, ptr %i.a, align 8, !tbaa !107
  %6 = mul i64 %5, 18
  %7 = add i64 %6, 26
  call void @b3Free(ptr noundef %4, i64 noundef %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %8 = add i64 %i.w, -1                           ; 2 uses
  store i64 %8, ptr %i.a, align 8, !tbaa !107
  %9 = mul i64 %8, 18
  %10 = add i64 %9, 26
  %11 = call ptr @b3Alloc(i64 noundef %10) #13    ; 2 uses
  %.not.us.us.not = icmp eq ptr %11, null
  br i1 %.not.us.us.not, label %.loopexit, label %b3RecTagLookup_metadata_offset.exit.us.us, !prof !617

.split.us277.us:                                  ; preds = %b3RecTagLookup_bucket_count.exit.us.us.us.us, %bb.h, %.lr.ph.us.us
  %12 = load i64, ptr %2, align 8, !tbaa !251
  %13 = load i64, ptr %0, align 8, !tbaa !251
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %b3RecTagLookup_total_alloc_size.exit.us.us, label %.split303.us, !prof !252

.lr.ph.us330:                                     ; preds = %.lr.ph.us.us, %b3RecTagLookup_bucket_count.exit.us.us.us.us
  %i.aq = phi i64 [ %i.cc, %b3RecTagLookup_bucket_count.exit.us.us.us.us ], [ %i.ao, %.lr.ph.us.us ]
  %.0159.us.us.us329.us = phi i64 [ %i.cd, %b3RecTagLookup_bucket_count.exit.us.us.us.us ], [ 0, %.lr.ph.us.us ] ; 7 uses
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !109 ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %.0159.us.us.us329.us ; 2 uses
  %i.at = add nuw i64 %.0159.us.us.us329.us, 4611686018427387904
  %i.au = icmp sgt i64 %i.at, -1
  %i.av = shl nuw i64 %.0159.us.us.us329.us, 1
  %i.aw = ptrtoint ptr %i.ar to i64, !nosanitize !9 ; 3 uses
  %i.ax = add i64 %i.av, %i.aw, !nosanitize !9    ; 3 uses
  %i.ay = icmp ne ptr %i.ar, null, !nosanitize !9 ; 2 uses
  %i.az = icmp eq i64 %i.ax, 0
  %i.ba = xor i1 %i.ay, %i.az
  %i.bb = icmp uge i64 %i.ax, %i.aw, !nosanitize !9
  %i.bc = and i1 %i.au, %i.bb, !nosanitize !9
  %i.bd = and i1 %i.ba, %i.bc, !nosanitize !9
  br i1 %i.bd, label %bb.d, label %.split163.us, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %.lr.ph.us330
  %i.be = ptrtoint ptr %i.as to i64, !nosanitize !9 ; 2 uses
  %i.bf = and i64 %i.be, 1, !nosanitize !9
  %i.bg = icmp eq i64 %i.bf, 0, !nosanitize !9
  %i.bh = and i1 %i.ay, %i.bg
  br i1 %i.bh, label %bb.e, label %.split167.us, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  %i.bi = load i16, ptr %i.as, align 2, !tbaa !199
  %.not37.us.us.us.us = icmp eq i16 %i.bi, 0
  br i1 %.not37.us.us.us.us, label %b3RecTagLookup_bucket_count.exit.us.us.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !108 ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.0159.us.us.us329.us ; 3 uses
  %i.bl = icmp samesign ult i64 %.0159.us.us.us329.us, 576460752303423488
  %i.bm = shl i64 %.0159.us.us.us329.us, 4
  %i.bn = ptrtoint ptr %i.bj to i64, !nosanitize !9 ; 3 uses
  %i.bo = add i64 %i.bm, %i.bn, !nosanitize !9    ; 3 uses
  %i.bp = icmp ne ptr %i.bj, null, !nosanitize !9 ; 2 uses
  %i.bq = icmp eq i64 %i.bo, 0
  %i.br = xor i1 %i.bp, %i.bq
  %i.bs = icmp uge i64 %i.bo, %i.bn, !nosanitize !9
  %i.bt = and i1 %i.bl, %i.bs, !nosanitize !9
  %i.bu = and i1 %i.br, %i.bt, !nosanitize !9
  br i1 %i.bu, label %bb.g, label %.split173.us, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  %i.bv = ptrtoint ptr %i.bk to i64, !nosanitize !9 ; 2 uses
  %i.bw = and i64 %i.bv, 7, !nosanitize !9
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !9
  %i.by = and i1 %i.bp, %i.bx
  br i1 %i.by, label %bb.h, label %.split177.us, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %i.bk, align 8, !tbaa !246
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call fastcc void @b3RecTagLookup_insert_raw(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %2, i64 noundef %i.bz, ptr noundef %i.ca, i1 noundef zeroext true, i1 noundef zeroext false)
  %.val.us.us.us.us = load ptr, ptr %i.n, align 8, !tbaa !237
  %.val39.us.us.us.us = load ptr, ptr %i.o, align 8, !tbaa !238
  %i.cb = icmp eq ptr %.val.us.us.us.us, %.val39.us.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %i.cb, label %.split.us277.us, label %.b3RecTagLookup_bucket_count.exit.us.us.us.us_crit_edge

.b3RecTagLookup_bucket_count.exit.us.us.us.us_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %i.k, align 8, !tbaa !107
  br label %b3RecTagLookup_bucket_count.exit.us.us.us.us

b3RecTagLookup_bucket_count.exit.us.us.us.us:     ; preds = %.b3RecTagLookup_bucket_count.exit.us.us.us.us_crit_edge, %bb.e
  %i.cc = phi i64 [ %.pre, %.b3RecTagLookup_bucket_count.exit.us.us.us.us_crit_edge ], [ %i.aq, %bb.e ] ; 3 uses
  %i.cd = add nuw nsw i64 %.0159.us.us.us329.us, 1 ; 2 uses
  %i.ce = icmp ne i64 %i.cc, 0
  %i.cf = zext i1 %i.ce to i64
  %i.cg = add i64 %i.cc, %i.cf
  %i.ch = icmp ult i64 %i.cd, %i.cg
  br i1 %i.ch, label %.lr.ph.us330, label %.split.us277.us

b3RecTagLookup_metadata_offset.exit:              ; preds = %b3RecTagLookup_metadata_offset.exit.lr.ph
  store ptr %i.e, ptr %i.f, align 8, !tbaa !108
  %i.ci = shl i64 %i.b, 4
  %i.cj = add i64 %i.ci, 16                       ; 2 uses
  %i.ck = ptrtoint ptr %i.e to i64, !nosanitize !9 ; 3 uses
  %i.cl = add i64 %i.cj, %i.ck, !nosanitize !9    ; 2 uses
  %.not36 = icmp ult i64 %i.cl, %i.ck, !nosanitize !9
  br i1 %.not36, label %.split286.us, label %bb.i, !prof !27, !nosanitize !9

.split286.us:                                     ; preds = %b3RecTagLookup_metadata_offset.exit.us.us, %b3RecTagLookup_metadata_offset.exit
  %.us-phi = phi i64 [ %i.ck, %b3RecTagLookup_metadata_offset.exit ], [ %i.t, %b3RecTagLookup_metadata_offset.exit.us.us ]
  %.us-phi287 = phi i64 [ %i.cl, %b3RecTagLookup_metadata_offset.exit ], [ %i.u, %b3RecTagLookup_metadata_offset.exit.us.us ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @343, i64 %.us-phi, i64 %.us-phi287) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %b3RecTagLookup_metadata_offset.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cj ; 4 uses
  store ptr %i.cm, ptr %i.g, align 8, !tbaa !109
  %i.cn = shl i64 %1, 1                           ; 2 uses
  %i.co = add i64 %i.cn, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cm, i8 0, i64 %i.co, i1 false)
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %1 ; 2 uses
  %i.cq = add i64 %1, 4611686018427387904
  %i.cr = icmp sgt i64 %i.cq, -1
  %i.cs = ptrtoint ptr %i.cm to i64, !nosanitize !9 ; 3 uses
  %i.ct = add i64 %i.cn, %i.cs, !nosanitize !9    ; 2 uses
  %i.cu = icmp uge i64 %i.ct, %i.cs, !nosanitize !9
  %i.cv = and i1 %i.cr, %i.cu, !nosanitize !9
  br i1 %i.cv, label %bb.j, label %.split289.us, !prof !10, !nosanitize !9

.split289.us:                                     ; preds = %bb.b, %bb.i
  %.us-phi290 = phi i64 [ %i.cs, %bb.i ], [ %i.ac, %bb.b ]
  %.us-phi291 = phi i64 [ %i.ct, %bb.i ], [ %i.ad, %bb.b ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @344, i64 %.us-phi290, i64 %.us-phi291) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.cw = ptrtoint ptr %i.cp to i64, !nosanitize !9 ; 2 uses
  %i.cx = and i64 %i.cw, 1, !nosanitize !9
  %i.cy = icmp eq i64 %i.cx, 0, !nosanitize !9
  br i1 %i.cy, label %._crit_edge, label %.split293.us, !prof !10, !nosanitize !9

.split293.us:                                     ; preds = %bb.c, %bb.j
  %.us-phi294 = phi i64 [ %i.cw, %bb.j ], [ %i.ak, %bb.c ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @345, i64 %.us-phi294) #12, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge:                                      ; preds = %bb.j
  store i16 1, ptr %i.cp, align 2, !tbaa !199
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @351, i64 %i.h) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split163.us:                                     ; preds = %.lr.ph.us330
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @346, i64 %i.aw, i64 %i.ax) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split167.us:                                     ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @347, i64 %i.be) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split173.us:                                     ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @348, i64 %i.bn, i64 %i.bo) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split177.us:                                     ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @349, i64 %i.bv) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split303.us:                                     ; preds = %.split.us277.us
  %i.cz = load i64, ptr %i.k, align 8, !tbaa !107 ; 2 uses
  %.not38 = icmp eq i64 %i.cz, 0
  br i1 %.not38, label %bb.k, label %b3RecTagLookup_total_alloc_size.exit41

b3RecTagLookup_total_alloc_size.exit41:           ; preds = %.split303.us
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !108
  %i.db = mul i64 %i.cz, 18
  %i.dc = add i64 %i.db, 26
  call void @b3Free(ptr noundef %i.da, i64 noundef %i.dc) #13
  br label %bb.k

bb.k:                                             ; preds = %.split303.us, %b3RecTagLookup_total_alloc_size.exit41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !619
  br label %.loopexit

.loopexit:                                        ; preds = %b3RecTagLookup_total_alloc_size.exit.us.us, %bb.a, %bb.k
  %.not102 = phi i1 [ true, %bb.k ], [ false, %bb.a ], [ false, %b3RecTagLookup_total_alloc_size.exit.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.not102
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i1 @b3RecTagLookup_find_first_empty(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #8 !func_sanitize !620 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 1, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @335, i64 %i.a) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  store i16 1, ptr %3, align 2, !tbaa !199
  %i.d = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  %i.g = add i64 %1, 1
  br i1 %i.f, label %.lr.ph, label %bb.g, !prof !218, !nosanitize !9

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.j = and i64 %i.i, 7
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.split.split.split.us, label %bb.h, !prof !10, !nosanitize !9

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109
  %.fr67 = freeze ptr %i.m                        ; 3 uses
  %i.n = ptrtoint ptr %.fr67 to i64, !nosanitize !9 ; 5 uses
  %.not = icmp eq ptr %.fr67, null, !nosanitize !9
  %i.o = load i64, ptr %i.h, align 8, !tbaa !107
  %i.p = and i64 %i.o, %i.g                       ; 4 uses
  store i64 %i.p, ptr %2, align 8, !tbaa !62
  %i.q = add i64 %i.p, 4611686018427387904
  %i.r = icmp sgt i64 %i.q, -1                    ; 2 uses
  %i.s = shl i64 %i.p, 1                          ; 3 uses
  br i1 %.not, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split.split.us, !prof !27

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i1 %i.r, %i.t, !nosanitize !9
  br i1 %i.u, label %.split49.us, label %.split.us, !prof !10, !nosanitize !9

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us
  %i.v = add i64 %i.s, %i.n, !nosanitize !9       ; 2 uses
  %i.w = icmp uge i64 %i.v, %i.n, !nosanitize !9
  %i.x = and i1 %i.r, %i.w, !nosanitize !9
  br i1 %i.x, label %.lr.ph65, label %.split.us, !prof !218, !nosanitize !9

bb.d:                                             ; preds = %bb.f
  %i.y = zext i16 %i.aq to i64
  %i.z = add i64 %.045.us.us5664, %i.y            ; 2 uses
  %i.aa = add i64 %i.z, %1
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !107
  %i.ac = and i64 %i.ab, %i.aa                    ; 4 uses
  store i64 %i.ac, ptr %2, align 8, !tbaa !62
  %i.ad = add i64 %i.ac, 4611686018427387904
  %i.ae = icmp sgt i64 %i.ad, -1
  %i.af = shl i64 %i.ac, 1
  %i.ag = add i64 %i.af, %i.n, !nosanitize !9     ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %i.n, !nosanitize !9
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !9
  br i1 %i.ai, label %.lr.ph65, label %.split.us, !prof !248, !nosanitize !9

.lr.ph65:                                         ; preds = %.lr.ph.split.split.split.us.split.split.us, %bb.d
  %i.aj = phi i16 [ %i.aq, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %.pn = phi i64 [ %i.ac, %bb.d ], [ %i.p, %.lr.ph.split.split.split.us.split.split.us ]
  %.045.us.us5664 = phi i64 [ %i.z, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.fr67, i64 %.pn ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64, !nosanitize !9 ; 2 uses
  %i.am = and i64 %i.al, 1, !nosanitize !9
  %i.an = icmp eq i64 %i.am, 0, !nosanitize !9
  br i1 %i.an, label %bb.e, label %.split49.us, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %.lr.ph65
  %i.ao = load i16, ptr %i.ak, align 2, !tbaa !199
  %i.ap = icmp eq i16 %i.ao, 0                    ; 2 uses
  br i1 %i.ap, label %.split52.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i16 %i.aj, 1                        ; 4 uses
  store i16 %i.aq, ptr %3, align 2, !tbaa !199
  %i.ar = icmp eq i16 %i.aq, 2047
  br i1 %i.ar, label %.split52.us, label %bb.d, !prof !252

bb.g:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @336, i64 %i.d) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %.lr.ph
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @337, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.d, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.split.us
  %.us-phi54 = phi i64 [ %i.s, %.lr.ph.split.split.split.us.split.us ], [ %i.v, %.lr.ph.split.split.split.us.split.split.us ], [ %i.ag, %bb.d ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @338, i64 %i.n, i64 %.us-phi54) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split49.us:                                      ; preds = %.lr.ph65, %.lr.ph.split.split.split.us.split.us
  %.us-phi55 = phi i64 [ 0, %.lr.ph.split.split.split.us.split.us ], [ %i.al, %.lr.ph65 ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @339, i64 %.us-phi55) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split52.us:                                      ; preds = %bb.f, %bb.e
  ret i1 %i.ap
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @b3RecTagLookup_find_insert_location_in_chain(ptr noundef nonnull %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #8 !func_sanitize !621 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %.lr.ph, label %bb.d, !prof !218, !nosanitize !9

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109
  %.fr69 = freeze ptr %i.f                        ; 3 uses
  %i.g = ptrtoint ptr %.fr69 to i64, !nosanitize !9 ; 5 uses
  %.not70 = icmp eq ptr %.fr69, null, !nosanitize !9
  %i.h = add i64 %1, 4611686018427387904
  %i.i = icmp sgt i64 %i.h, -1                    ; 2 uses
  %i.j = shl i64 %1, 1                            ; 3 uses
  br i1 %.not70, label %.lr.ph.split.split.us, label %.lr.ph.split.split.split.us.split.us, !prof !27

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i1 %i.i, %i.k, !nosanitize !9
  br i1 %i.l, label %.split48, label %.split.us, !prof !10, !nosanitize !9

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph
  %i.m = add i64 %i.j, %i.g, !nosanitize !9       ; 2 uses
  %i.n = icmp uge i64 %i.m, %i.g, !nosanitize !9
  %i.o = and i1 %i.i, %i.n, !nosanitize !9
  br i1 %i.o, label %.lr.ph67, label %.split.us, !prof !218, !nosanitize !9

.lr.ph67:                                         ; preds = %.lr.ph.split.split.split.us.split.us, %bb.c
  %.01045.us50.us66 = phi i64 [ %i.ab, %bb.c ], [ %1, %.lr.ph.split.split.split.us.split.us ] ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.fr69, i64 %.01045.us50.us66 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64, !nosanitize !9 ; 2 uses
  %i.r = and i64 %i.q, 1, !nosanitize !9
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !9
  br i1 %i.s, label %bb.b, label %.split48, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %.lr.ph67
  %i.t = load i16, ptr %i.p, align 2, !tbaa !199
  %i.u = and i16 %i.t, 2047                       ; 2 uses
  %.not.us.us = icmp ugt i16 %i.u, %2
  br i1 %.not.us.us, label %.split58.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i16 %i.u to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul nuw nsw i64 %i.w, %i.v
  %i.y = lshr i64 %i.x, 1
  %i.z = add i64 %i.y, %1
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !107
  %i.ab = and i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = add i64 %i.ab, 4611686018427387904
  %i.ad = icmp sgt i64 %i.ac, -1
  %i.ae = shl i64 %i.ab, 1
  %i.af = add i64 %i.ae, %i.g, !nosanitize !9     ; 2 uses
  %i.ag = icmp uge i64 %i.af, %i.g, !nosanitize !9
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !9
  br i1 %i.ah, label %.lr.ph67, label %.split.us, !prof !248, !nosanitize !9

bb.d:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @340, i64 %i.a) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.c, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.us
  %.us-phi46 = phi i64 [ %i.j, %.lr.ph.split.split.us ], [ %i.m, %.lr.ph.split.split.split.us.split.us ], [ %i.af, %bb.c ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @341, i64 %i.g, i64 %.us-phi46) #12, !nosanitize !9
  unreachable, !nosanitize !9
end_hunk_0
begin_hunk_1_@b3RecDispatch_QueryCastMover:bb.a
  %i.ab = tail call i64 @b3RecR_U64(ptr noundef nonnull %1) ; 2 uses
  %.sroa.3.0.insert.ext.i.i.us = shl i64 %i.ab, 48
  %i.ac = lshr i64 %i.ab, 32
  %.sroa.0.0.insert.insert.i.i.us = or disjoint i64 %.sroa.3.0.insert.ext.i.i.us, %i.ac
  %i.ad = load i16, ptr %i.m, align 8, !tbaa !254
  %i.ae = add i16 %i.ad, -1
  %.sroa.23.0.insert.ext.i.us = zext i16 %i.ae to i64
  %.sroa.23.0.insert.shift.i.us = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.us, 32
  %.sroa.02.0.insert.insert.i.us = or disjoint i64 %.sroa.23.0.insert.shift.i.us, %.sroa.0.0.insert.insert.i.i.us
  store i64 %.sroa.02.0.insert.insert.i.us, ptr %i.o, align 8
  %i.af = tail call zeroext i8 @b3RecR_U8(ptr noundef nonnull %1)
  %i.ag = icmp ne i8 %i.af, 0
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !255 ; 4 uses
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64, !nosanitize !9 ; 3 uses
  %i.ak = add i64 %i.p, %i.aj, !nosanitize !9     ; 3 uses
  %i.al = icmp ne ptr %i.ah, null, !nosanitize !9 ; 2 uses
  %i.am = icmp eq i64 %i.ak, 0
  %i.an = xor i1 %i.al, %i.am
  %i.ao = icmp uge i64 %i.ak, %i.aj, !nosanitize !9
  %i.ap = and i1 %i.ao, %i.an, !nosanitize !9
  br i1 %i.ap, label %bb.g, label %.split94.us, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %b3RecMakeShapeId.exit.us
  %i.aq = ptrtoint ptr %i.ai to i64, !nosanitize !9 ; 2 uses
  %i.ar = and i64 %i.aq, 7, !nosanitize !9
  %i.as = icmp eq i64 %i.ar, 0, !nosanitize !9
  %i.at = and i1 %i.al, %i.as
  br i1 %i.at, label %bb.h, label %.split98.us, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.av = zext i1 %i.ag to i8
  store i8 %i.av, ptr %i.au, align 8, !tbaa !256
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !801

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.aw = tail call i32 @b3RecR_U32(ptr noundef nonnull %1) ; 2 uses
  %i.ax = load i8, ptr %i.h, align 4, !tbaa !26   ; 3 uses
  %i.ay = icmp ult i8 %i.ax, 2
  br i1 %i.ay, label %bb.j, label %bb.i, !prof !10, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split.split.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1072, i64 %i.q, i64 %i.r) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split91.us:                                      ; preds = %bb.f
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1073, i64 %i.x) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split94.us:                                      ; preds = %b3RecMakeShapeId.exit.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1074, i64 %i.aj, i64 %i.ak) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split98.us:                                      ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1075, i64 %i.aq) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %._crit_edge
  %i.az = zext i8 %i.ax to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @1076, i64 %i.az) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %._crit_edge
  %i.ba = trunc nuw i8 %i.ax to i1
  br i1 %i.ba, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %1, ptr %2, align 8, !tbaa !259
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !255
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !260
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.a, ptr %i.bd, align 8, !tbaa !261
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 0, ptr %i.be, align 4, !tbaa !262
  %i.bf = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.bg = and i64 %i.bf, 7, !nosanitize !9
  %i.bh = icmp eq i64 %i.bg, 0, !nosanitize !9
  br i1 %i.bh, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1078, i64 %i.bf) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bn = load i32, ptr %i.bi, align 8
  %.sroa.06.0.copyload = load <2 x float>, ptr %i.bj, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.27.0.copyload = load float, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bl, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.bo = call float @b3World_CastMover(i32 %i.bn, <2 x float> %.sroa.06.0.copyload, float %.sroa.27.0.copyload, ptr noundef nonnull %i.bk, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload, ptr noundef nonnull byval(%struct.b3QueryFilter) align 8 %i.bm, ptr noundef nonnull @b3RecReplayMoverFilterTrampoline, ptr noundef nonnull %2) #13
  %i.bp = load i32, ptr %i.be, align 4, !tbaa !262
  %.not54 = icmp ne i32 %i.bp, %i.a
  %i.bq = bitcast float %i.bo to i32
  %i.br = icmp ne i32 %i.aw, %i.bq
  %or.cond = select i1 %.not54, i1 true, i1 %i.br
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 1, ptr %i.bs, align 1, !tbaa !263
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !253 ; 2 uses
  %.not56 = icmp eq ptr %i.bu, null
  br i1 %.not56, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = call fastcc ptr @b3RecStashQueryBegin(ptr noundef nonnull %i.bu, i32 noundef 5, ptr noundef null, i32 noundef 0) ; 7 uses
  %i.bw = ptrtoint ptr %i.bv to i64, !nosanitize !9 ; 2 uses
  %i.bx = and i64 %i.bw, 7, !nosanitize !9
  %i.by = icmp eq i64 %i.bx, 0, !nosanitize !9
  br i1 %i.by, label %bb.r, label %bb.q, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1079, i64 %i.bw) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !tbaa.struct !209
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ca, ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i64 12, i1 false), !tbaa.struct !250
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 1616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cb, ptr noundef nonnull align 8 dereferenceable(28) %i.bk, i64 28, i1 false), !tbaa.struct !172
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cc, ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i64 12, i1 false), !tbaa.struct !250
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 1668
  store i32 %i.aw, ptr %i.cd, align 4, !tbaa !233
  call fastcc void @b3RecComputeQueryBounds(ptr noundef %i.bv)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3RecDispatch_QueryCollideMover(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #4 !func_sanitize !808 {
bb.a:
  %2 = alloca %struct.b3RecReplayQueryCtx, align 8 ; 7 uses
  %i.a = tail call i32 @b3RecR_U32(ptr noundef nonnull %1) ; 2 uses
  %.not79283.not = icmp eq i32 %i.a, 0
  %.pre518 = ptrtoint ptr %1 to i64               ; 3 uses
  %.pre520 = and i64 %.pre518, 7
  %i.b = icmp eq i64 %.pre520, 0                  ; 2 uses
  br i1 %.not79283.not, label %.thread89, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  br i1 %i.b, label %b3RecMakeShapeId.exit.us.us, label %.lr.ph287.split, !prof !10, !nosanitize !9

b3RecMakeShapeId.exit.us.us:                      ; preds = %.lr.ph287, %._crit_edge282.us.us
  %.0285.us.us = phi i32 [ %i.m, %._crit_edge282.us.us ], [ 0, %.lr.ph287 ] ; 6 uses
  %.063284.us.us = phi i32 [ %i.cq, %._crit_edge282.us.us ], [ 0, %.lr.ph287 ]
  %i.g = tail call i64 @b3RecR_U64(ptr noundef nonnull %1) ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %.sroa.3.0.insert.ext.i.i.us.us = shl i64 %i.g, 48
  %.sroa.0.0.insert.insert.i.i.us.us = or disjoint i64 %.sroa.3.0.insert.ext.i.i.us.us, %i.h
  %i.i = load i16, ptr %i.c, align 8, !tbaa !254
  %i.j = add i16 %i.i, -1
  %.sroa.23.0.insert.ext.i.us.us = zext i16 %i.j to i64
  %.sroa.23.0.insert.shift.i.us.us = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.us.us, 32
  %.sroa.02.0.insert.insert.i.us.us = or disjoint i64 %.sroa.23.0.insert.shift.i.us.us, %.sroa.0.0.insert.insert.i.i.us.us
  %i.k = tail call i32 @b3RecR_U32(ptr noundef nonnull %1) ; 4 uses
  %spec.store.select.us.us = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0) ; 3 uses
  %i.l = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0285.us.us, i32 %spec.store.select.us.us), !nosanitize !9 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 0, !nosanitize !9 ; 3 uses
  %i.n = extractvalue { i32, i1 } %i.l, 1, !nosanitize !9
  br i1 %i.n, label %.split289.us, label %bb.b, !prof !27, !nosanitize !9

bb.b:                                             ; preds = %b3RecMakeShapeId.exit.us.us
  %i.o = tail call fastcc zeroext i1 @b3RecReserveScratch(ptr noundef nonnull %1, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.m, i32 noundef 112) ; 0 uses
  %i.p = load i8, ptr %i.f, align 4, !tbaa !26    ; 3 uses
  %i.q = icmp ult i8 %i.p, 2
  br i1 %i.q, label %bb.c, label %.split296.us, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  %i.r = trunc nuw i8 %i.p to i1
  br i1 %i.r, label %.preheader.us.us, label %.thread87

.lr.ph.split.us.us:                               ; preds = %.preheader.us.us, %bb.f
  %.062278.us.us = phi i32 [ %i.bb, %bb.f ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.s = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0285.us.us, i32 %.062278.us.us), !nosanitize !9 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1, !nosanitize !9
  br i1 %i.t, label %.split299.us, label %bb.d, !prof !27, !nosanitize !9

bb.d:                                             ; preds = %.lr.ph.split.us.us
  %i.u = extractvalue { i32, i1 } %i.s, 0, !nosanitize !9 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !255  ; 3 uses
  %i.w = sext i32 %i.u to i64                     ; 2 uses
  %i.x = getelementptr inbounds [112 x i8], ptr %i.v, i64 %i.w ; 9 uses
  %i.y = mul nsw i64 %i.w, 112
  %i.z = ptrtoint ptr %i.v to i64, !nosanitize !9 ; 3 uses
  %i.aa = add i64 %i.y, %i.z, !nosanitize !9      ; 3 uses
  %i.ab = icmp ne ptr %i.v, null, !nosanitize !9  ; 2 uses
  %i.ac = icmp eq i64 %i.aa, 0
  %i.ad = xor i1 %i.ab, %i.ac
  %i.ae = icmp uge i64 %i.aa, %i.z, !nosanitize !9
  %i.af = icmp slt i32 %i.u, 0
  %i.ag = xor i1 %i.af, %i.ae
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !9
  br i1 %i.ah, label %bb.e, label %.split303.us, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  %i.ai = ptrtoint ptr %i.x to i64, !nosanitize !9 ; 2 uses
  %i.aj = and i64 %i.ai, 7, !nosanitize !9
  %i.ak = icmp eq i64 %i.aj, 0, !nosanitize !9
  %i.al = and i1 %i.ab, %i.ak
  br i1 %i.al, label %bb.f, label %.split307.us, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.an = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  %i.ao = insertelement <2 x i32> poison, i32 %i.an, i64 0
  %i.ap = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  %i.aq = insertelement <2 x i32> %i.ao, i32 %i.ap, i64 1
  %i.ar = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  %i.as = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  %i.at = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  %i.au = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.av = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  %i.aw = insertelement <2 x i32> %i.au, i32 %i.av, i64 1
  %i.ax = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  %i.ay = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  %i.az = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  %i.ba = tail call i32 @b3RecR_U32(ptr noundef nonnull %1), !noalias !809
  store <2 x i32> %i.aq, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 %i.ar, ptr %.sroa.4.0..sroa_idx.us.us, align 8, !tbaa !35
  %.sroa.5.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  store i32 %i.as, ptr %.sroa.5.0..sroa_idx.us.us, align 4, !tbaa !35
  %.sroa.6.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store <2 x i32> %i.aw, ptr %.sroa.6.0..sroa_idx.us.us, align 8
  %.sroa.7.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store i32 %i.ax, ptr %.sroa.7.0..sroa_idx.us.us, align 8, !tbaa !35
  %.sroa.8.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  store i32 %i.ay, ptr %.sroa.8.0..sroa_idx.us.us, align 4, !tbaa !38
  %.sroa.9.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store i32 %i.az, ptr %.sroa.9.0..sroa_idx.us.us, align 8, !tbaa !38
  %.sroa.10.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.x, i64 92
  store i32 %i.ba, ptr %.sroa.10.0..sroa_idx.us.us, align 4, !tbaa !38
  %i.bb = add nuw nsw i32 %.062278.us.us, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.k
  br i1 %exitcond.not, label %._crit_edge.us.us, label %.lr.ph.split.us.us, !llvm.loop !805

._crit_edge.us.us:                                ; preds = %bb.f
  %i.bc = tail call zeroext i8 @b3RecR_U8(ptr noundef nonnull %1)
  %i.bd = icmp ne i8 %i.bc, 0
  %i.be = zext i1 %i.bd to i8
  br label %.lr.ph281.split.us.us

.lr.ph281.split.us.us:                            ; preds = %._crit_edge.us.us, %bb.l
  %.061279.us.us = phi i32 [ %i.cp, %bb.l ], [ 0, %._crit_edge.us.us ] ; 3 uses
  %i.bf = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0285.us.us, i32 %.061279.us.us), !nosanitize !9 ; 2 uses
  %i.bg = extractvalue { i32, i1 } %i.bf, 1, !nosanitize !9
  br i1 %i.bg, label %.split313.us, label %bb.g, !prof !27, !nosanitize !9

bb.g:                                             ; preds = %.lr.ph281.split.us.us
  %i.bh = extractvalue { i32, i1 } %i.bf, 0, !nosanitize !9 ; 2 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !255 ; 3 uses
  %i.bj = sext i32 %i.bh to i64                   ; 3 uses
  %i.bk = getelementptr inbounds [112 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = mul nsw i64 %i.bj, 112                  ; 2 uses
  %i.bm = ptrtoint ptr %i.bi to i64, !nosanitize !9 ; 3 uses
  %i.bn = add i64 %i.bl, %i.bm, !nosanitize !9    ; 3 uses
  %i.bo = icmp ne ptr %i.bi, null, !nosanitize !9 ; 2 uses
  %i.bp = icmp eq i64 %i.bn, 0
  %i.bq = xor i1 %i.bo, %i.bp
  %i.br = icmp sgt i32 %i.bh, -1                  ; 2 uses
  %i.bs = icmp ult i64 %i.bn, %i.bm, !nosanitize !9
  %i.bt = xor i1 %i.br, %i.bs
  %i.bu = and i1 %i.bq, %i.bt, !nosanitize !9
  br i1 %i.bu, label %bb.h, label %.split317.us, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.bv = ptrtoint ptr %i.bk to i64, !nosanitize !9 ; 2 uses
  %i.bw = and i64 %i.bv, 7, !nosanitize !9
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !9
  %i.by = and i1 %i.bo, %i.bx
  br i1 %i.by, label %bb.i, label %.split321.us, !prof !10, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  store i64 %.sroa.02.0.insert.insert.i.us.us, ptr %i.bk, align 8
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !255 ; 3 uses
  %i.ca = getelementptr inbounds [112 x i8], ptr %i.bz, i64 %i.bj ; 3 uses
  %i.cb = ptrtoint ptr %i.bz to i64, !nosanitize !9 ; 4 uses
  %i.cc = add i64 %i.bl, %i.cb, !nosanitize !9    ; 3 uses
  %i.cd = icmp ne ptr %i.bz, null, !nosanitize !9 ; 2 uses
  %i.ce = icmp eq i64 %i.cc, 0                    ; 2 uses
  %i.cf = xor i1 %i.cd, %i.ce
  %i.cg = icmp ult i64 %i.cc, %i.cb, !nosanitize !9
  %i.ch = xor i1 %i.br, %i.cg
  %i.ci = and i1 %i.cf, %i.ch, !nosanitize !9
  br i1 %i.ci, label %bb.j, label %.split324.us, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.cj = ptrtoint ptr %i.ca to i64, !nosanitize !9 ; 2 uses
  %i.ck = and i64 %i.cj, 7, !nosanitize !9
  %i.cl = icmp eq i64 %i.ck, 0, !nosanitize !9
  %i.cm = and i1 %i.cd, %i.cl
  br i1 %i.cm, label %bb.k, label %.split328.us, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  store i32 %spec.store.select.us.us, ptr %i.cn, align 8, !tbaa !268
  br i1 %i.ce, label %.split334.us, label %bb.l, !prof !27, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  store i8 %i.be, ptr %i.co, align 8, !tbaa !256
  %i.cp = add nuw nsw i32 %.061279.us.us, 1       ; 2 uses
  %exitcond516.not = icmp eq i32 %i.cp, %i.k
  br i1 %exitcond516.not, label %._crit_edge282.us.us, label %.lr.ph281.split.us.us, !llvm.loop !806

._crit_edge282.us.us:                             ; preds = %bb.l, %._crit_edge.us.us.thread
  %i.cq = add nuw i32 %.063284.us.us, 1           ; 2 uses
  %exitcond517.not = icmp eq i32 %i.cq, %i.a
  br i1 %exitcond517.not, label %.thread89, label %b3RecMakeShapeId.exit.us.us, !llvm.loop !807

.preheader.us.us:                                 ; preds = %bb.c
  %3 = icmp sgt i32 %i.k, 0
  br i1 %3, label %.lr.ph.split.us.us, label %._crit_edge.us.us.thread

._crit_edge.us.us.thread:                         ; preds = %.preheader.us.us
  %4 = tail call zeroext i8 @b3RecR_U8(ptr noundef nonnull %1) ; 0 uses
  br label %._crit_edge282.us.us

.lr.ph287.split:                                  ; preds = %.lr.ph287
  %i.cr = tail call i64 @b3RecR_U64(ptr noundef nonnull %1) ; 0 uses
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @719, i64 %.pre518) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split289.us:                                     ; preds = %b3RecMakeShapeId.exit.us.us
  %i.cs = zext i32 %.0285.us.us to i64, !nosanitize !9
  %i.ct = zext nneg i32 %spec.store.select.us.us to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @1080, i64 %i.cs, i64 %i.ct) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split296.us:                                     ; preds = %bb.b
  %i.cu = zext i8 %i.p to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @1081, i64 %i.cu) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split299.us:                                     ; preds = %.lr.ph.split.us.us
  %i.cv = zext i32 %.0285.us.us to i64, !nosanitize !9
  %i.cw = zext nneg i32 %.062278.us.us to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @1082, i64 %i.cv, i64 %i.cw) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split303.us:                                     ; preds = %bb.d
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1083, i64 %i.z, i64 %i.aa) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split307.us:                                     ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1084, i64 %i.ai) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split313.us:                                     ; preds = %.lr.ph281.split.us.us
  %i.cx = zext i32 %.0285.us.us to i64, !nosanitize !9
  %i.cy = zext nneg i32 %.061279.us.us to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @1085, i64 %i.cx, i64 %i.cy) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split317.us:                                     ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1086, i64 %i.bm, i64 %i.bn) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split321.us:                                     ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1087, i64 %i.bv) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split324.us:                                     ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1088, i64 %i.cb, i64 %i.cc) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split328.us:                                     ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1089, i64 %i.cj) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split334.us:                                     ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @1090, i64 %i.cb, i64 0) #12, !nosanitize !9
  unreachable, !nosanitize !9

.thread89:                                        ; preds = %._crit_edge282.us.us, %bb.a
  %.pre-phi521 = phi i1 [ %i.b, %bb.a ], [ true, %._crit_edge282.us.us ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge282.us.us ] ; 3 uses
  br i1 %.pre-phi521, label %bb.n, label %bb.m, !prof !10, !nosanitize !9

bb.m:                                             ; preds = %.thread89
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1091, i64 %.pre518) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %.thread89
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !26  ; 3 uses
  %i.db = icmp ult i8 %i.da, 2
  br i1 %i.db, label %bb.p, label %bb.o, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  %i.dc = zext i8 %i.da to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @1092, i64 %i.dc) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  %i.dd = trunc nuw i8 %i.da to i1
  br i1 %i.dd, label %bb.q, label %.thread87

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %1, ptr %2, align 8, !tbaa !259
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !255
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !260
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.0.lcssa, ptr %i.dh, align 8, !tbaa !261
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 0, ptr %i.di, align 4, !tbaa !262
  %i.dj = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.dk = and i64 %i.dj, 7, !nosanitize !9
  %i.dl = icmp eq i64 %i.dk, 0, !nosanitize !9
  br i1 %i.dl, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1094, i64 %i.dj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dq = load i32, ptr %i.dm, align 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.dn, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  call void @b3World_CollideMover(i32 %i.dq, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload, ptr noundef nonnull %i.do, ptr noundef nonnull byval(%struct.b3QueryFilter) align 8 %i.dp, ptr noundef nonnull @b3RecReplayPlaneTrampoline, ptr noundef nonnull %2) #13
  %i.dr = load i32, ptr %i.di, align 4, !tbaa !262
  %.not81 = icmp eq i32 %i.dr, %.0.lcssa
  br i1 %.not81, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 1, ptr %i.ds, align 1, !tbaa !263
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !253 ; 2 uses
  %.not83 = icmp eq ptr %i.du, null
  br i1 %.not83, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = load ptr, ptr %i.de, align 8, !tbaa !255
  %i.dw = call fastcc ptr @b3RecStashQueryBegin(ptr noundef nonnull %i.du, i32 noundef 6, ptr noundef %i.dv, i32 noundef %.0.lcssa) ; 5 uses
  %i.dx = ptrtoint ptr %i.dw to i64, !nosanitize !9 ; 2 uses
  %i.dy = and i64 %i.dx, 7, !nosanitize !9
  %i.dz = icmp eq i64 %i.dy, 0, !nosanitize !9
  br i1 %i.dz, label %bb.x, label %bb.w, !prof !10, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1095, i64 %i.dx) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 32, i1 false), !tbaa.struct !209
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 1644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eb, ptr noundef nonnull align 4 dereferenceable(12) %i.dn, i64 12, i1 false), !tbaa.struct !250
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 1616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ec, ptr noundef nonnull align 8 dereferenceable(28) %i.do, i64 28, i1 false), !tbaa.struct !172
  call fastcc void @b3RecComputeQueryBounds(ptr noundef %i.dw)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %.thread87

.thread87:                                        ; preds = %bb.c, %bb.p, %bb.y
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3RecDispatch_QueryTag(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !func_sanitize !810 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1110, i64 %i.a) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  br i1 %i.f, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1111, i64 %i.d) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.g = load i64, ptr %0, align 8, !tbaa !211
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1120
  store i64 %i.g, ptr %i.h, align 8, !tbaa !811
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3RecDispatch_StateHash(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !func_sanitize !812 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1112, i64 %i.a) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call ptr @b3GetWorldFromId(i32 %i.e) #13
end_hunk_1
