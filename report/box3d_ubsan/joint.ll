Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/joint?download=true
inline.NumInlined: 136
inline.NumDeleted: 31
begin_hunk_0_@b3CreateWheelJoint:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !308  ; 3 uses
  %i.ab = icmp ult i8 %i.aa, 2
  br i1 %i.ab, label %bb.j, label %bb.i, !prof !35, !nosanitize !33

bb.i:                                             ; preds = %bb.h
  %i.ac = zext i8 %i.aa to i64, !nosanitize !33
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @97, i64 %i.ac) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 390
  store i8 %i.aa, ptr %i.ad, align 2, !tbaa !125
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.ag = load float, ptr %i.ae, align 8, !tbaa !309
  store float %i.ag, ptr %i.af, align 4, !tbaa !125
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 228
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !310
  store float %i.aj, ptr %i.ai, align 4, !tbaa !125
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !311 ; 3 uses
  %i.am = icmp ult i8 %i.al, 2
  br i1 %i.am, label %bb.l, label %bb.k, !prof !35, !nosanitize !33

bb.k:                                             ; preds = %bb.j
  %i.an = zext i8 %i.al to i64, !nosanitize !33
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @98, i64 %i.an) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 388
  store i8 %i.al, ptr %i.ao, align 4, !tbaa !125
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 204
  %i.ar = load float, ptr %i.ap, align 4, !tbaa !312
  store float %i.ar, ptr %i.aq, align 4, !tbaa !125
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.au = load float, ptr %i.as, align 8, !tbaa !313
  store float %i.au, ptr %i.at, align 4, !tbaa !125
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !314 ; 3 uses
  %i.ax = icmp ult i8 %i.aw, 2
  br i1 %i.ax, label %bb.n, label %bb.m, !prof !35, !nosanitize !33

bb.m:                                             ; preds = %bb.l
  %i.ay = zext i8 %i.aw to i64, !nosanitize !33
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @99, i64 %i.ay) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.n:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 391
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !125
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 268
  %i.bc = load float, ptr %i.ba, align 8, !tbaa !315
  store float %i.bc, ptr %i.bb, align 4, !tbaa !125
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !316
  store float %i.bf, ptr %i.be, align 4, !tbaa !125
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 260
  %i.bi = load float, ptr %i.bg, align 8, !tbaa !317
  store float %i.bi, ptr %i.bh, align 4, !tbaa !125
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !318
  store float %i.bl, ptr %i.bk, align 4, !tbaa !125
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !319 ; 3 uses
  %i.bo = icmp ult i8 %i.bn, 2
  br i1 %i.bo, label %bb.p, label %bb.o, !prof !35, !nosanitize !33

bb.o:                                             ; preds = %bb.n
  %i.bp = zext i8 %i.bn to i64, !nosanitize !33
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @100, i64 %i.bp) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  store i8 %i.bn, ptr %i.bq, align 4, !tbaa !125
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 252
  %i.bt = load float, ptr %i.br, align 4, !tbaa !320
  store float %i.bt, ptr %i.bs, align 4, !tbaa !125
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.bw = load float, ptr %i.bu, align 8, !tbaa !321
  store float %i.bw, ptr %i.bv, align 4, !tbaa !125
  %i.bx = load i32, ptr %i.j, align 4, !tbaa !126 ; 2 uses
  %i.by = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bx, i32 1), !nosanitize !33 ; 2 uses
  %i.bz = extractvalue { i32, i1 } %i.by, 0, !nosanitize !33 ; 2 uses
  %i.ca = extractvalue { i32, i1 } %i.by, 1, !nosanitize !33
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !34, !nosanitize !33

bb.q:                                             ; preds = %bb.p
  %i.cb = zext nneg i32 %i.bx to i64, !nosanitize !33
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @101, i64 %i.cb, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.r:                                             ; preds = %bb.p
  %i.cc = ptrtoint ptr %i.a to i64, !nosanitize !33 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !nosanitize !33
  %i.ce = icmp eq i64 %i.cd, 0, !nosanitize !33
  br i1 %i.ce, label %bb.t, label %bb.s, !prof !35, !nosanitize !33

bb.s:                                             ; preds = %bb.r
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @102, i64 %i.cc) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.t:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 4760
  %i.cg = load i16, ptr %i.cf, align 8, !tbaa !127 ; 2 uses
  %i.ch = icmp ne ptr %i.i, null, !nosanitize !33
  %i.ci = ptrtoint ptr %i.i to i64, !nosanitize !33 ; 2 uses
  %i.cj = and i64 %i.ci, 7, !nosanitize !33
  %i.ck = icmp eq i64 %i.cj, 0, !nosanitize !33
  %i.cl = and i1 %i.ch, %i.ck, !nosanitize !33
  br i1 %i.cl, label %bb.v, label %bb.u, !prof !35, !nosanitize !33

bb.u:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @103, i64 %i.ci) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.v:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !128 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 4736
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !112 ; 2 uses
  %.not81 = icmp eq ptr %i.cp, null
  br i1 %.not81, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %bb.v
  %.pre = zext i16 %i.cn to i64
  %.pre82 = shl nuw i64 %.pre, 48
  %.pre84 = zext i16 %i.cg to i64
  %.pre86 = shl nuw nsw i64 %.pre84, 32
  %.pre88 = zext i32 %i.bz to i64
  %.pre90 = or disjoint i64 %.pre86, %.pre88
  %.pre92 = or disjoint i64 %.pre90, %.pre82
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 %0, ptr %2, align 8, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.cr, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 184, i1 false), !tbaa.struct !322
  %.sroa.6.0.insert.ext = zext i16 %i.cn to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.cg to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.043.0.insert.ext = zext i32 %i.bz to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.043.0.insert.ext
  %.sroa.043.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.6.0.insert.shift ; 2 uses
  call void @b3RecWriteRet_CreateWheelJoint(ptr noundef nonnull %i.cp, ptr noundef nonnull %2, i64 %.sroa.043.0.insert.insert) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge, %bb.a
  %.sroa.043.0.insert.insert47 = phi i64 [ 0, %bb.a ], [ %.pre92, %._crit_edge ], [ %.sroa.043.0.insert.insert, %bb.w ]
  ret i64 %.sroa.043.0.insert.insert47
}

declare void @b3RecWriteRet_CreateWheelJoint(ptr noundef, ptr noundef, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @b3DestroyJointInternal(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !func_sanitize !323 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !33
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !33  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !33
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !33
  %i.e = and i1 %i.a, %i.d, !nosanitize !33
  br i1 %i.e, label %bb.c, label %bb.b, !prof !35, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @104, i64 %i.b) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !132  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64, !nosanitize !33 ; 3 uses
  %i.k = add i64 %i.j, 12, !nosanitize !33        ; 2 uses
  %.not = icmp eq i64 %i.k, 0, !nosanitize !33
  %.not106 = icmp ugt ptr %i.h, inttoptr (i64 -13 to ptr)
  br i1 %.not106, label %bb.d, label %bb.e, !prof !34, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @105, i64 %i.j, i64 %i.k) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.m = icmp ne ptr %0, null, !nosanitize !33
  %i.n = ptrtoint ptr %0 to i64, !nosanitize !33  ; 2 uses
  %i.o = and i64 %i.n, 7, !nosanitize !33
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !33
  %i.q = and i1 %i.m, %i.p, !nosanitize !33
  br i1 %i.q, label %bb.g, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @106, i64 %i.n) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.g:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.h, align 4, !tbaa !139  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149  ; 4 uses
  %i.u = sext i32 %i.r to i64                     ; 2 uses
  %i.v = getelementptr inbounds [128 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = shl nsw i64 %i.u, 7
  %i.x = ptrtoint ptr %i.t to i64, !nosanitize !33 ; 6 uses
  %i.y = add i64 %i.w, %i.x, !nosanitize !33      ; 3 uses
  %i.z = icmp ne ptr %i.t, null, !nosanitize !33  ; 3 uses
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = xor i1 %i.z, %i.aa
  %i.ac = icmp uge i64 %i.y, %i.x, !nosanitize !33
  %i.ad = icmp slt i32 %i.r, 0
  %i.ae = xor i1 %i.ad, %i.ac
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !33
  br i1 %i.af, label %bb.i, label %bb.h, !prof !35, !nosanitize !33

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @107, i64 %i.x, i64 %i.y) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.i:                                             ; preds = %bb.g
  %i.ag = sext i32 %i.l to i64                    ; 2 uses
  %i.ah = getelementptr inbounds [128 x i8], ptr %i.t, i64 %i.ag ; 4 uses
  %i.ai = shl nsw i64 %i.ag, 7
  %i.aj = add i64 %i.ai, %i.x, !nosanitize !33    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = xor i1 %i.z, %i.ak
  %i.am = icmp uge i64 %i.aj, %i.x, !nosanitize !33
  %i.an = icmp slt i32 %i.l, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !33
  br i1 %i.ap, label %bb.k, label %bb.j, !prof !35, !nosanitize !33

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @108, i64 %i.x, i64 %i.aj) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !140 ; 4 uses
  %.not107 = icmp eq i32 %i.ar, -1
  br i1 %.not107, label %._crit_edge119, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !89 ; 3 uses
  %i.au = ashr i32 %i.ar, 1                       ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [72 x i8], ptr %i.at, i64 %i.av ; 2 uses
  %i.ax = mul nsw i64 %i.av, 72
  %i.ay = ptrtoint ptr %i.at to i64, !nosanitize !33 ; 3 uses
  %i.az = add i64 %i.ax, %i.ay, !nosanitize !33   ; 3 uses
  %i.ba = icmp ne ptr %i.at, null, !nosanitize !33 ; 2 uses
  %i.bb = icmp eq i64 %i.az, 0
  %i.bc = xor i1 %i.ba, %i.bb
  %i.bd = icmp uge i64 %i.az, %i.ay, !nosanitize !33
  %i.be = icmp slt i32 %i.au, 0
  %i.bf = xor i1 %i.be, %i.bd
  %i.bg = and i1 %i.bc, %i.bf, !nosanitize !33
  br i1 %i.bg, label %bb.n, label %bb.m, !prof !35, !nosanitize !33

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @109, i64 %i.ay, i64 %i.az) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.n:                                             ; preds = %bb.l
  %i.bh = ptrtoint ptr %i.aw to i64, !nosanitize !33 ; 2 uses
  %i.bi = and i64 %i.bh, 7, !nosanitize !33
  %i.bj = icmp eq i64 %i.bi, 0, !nosanitize !33
  %i.bk = and i1 %i.ba, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.o, !prof !35, !nosanitize !33

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @110, i64 %i.bh) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 20 ; 2 uses
  %i.bm = and i32 %i.ar, 1
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 12
  %i.bp = ptrtoint ptr %i.bl to i64, !nosanitize !33 ; 3 uses
  %i.bq = add i64 %i.bo, %i.bp, !nosanitize !33   ; 2 uses
  %.not108 = icmp ult i64 %i.bq, %i.bp, !nosanitize !33
  br i1 %.not108, label %bb.q, label %bb.r, !prof !34, !nosanitize !33

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.bp, i64 %i.bq) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !142
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !142
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %bb.r, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !142 ; 4 uses
  %.not109 = icmp eq i32 %i.bw, -1
  br i1 %.not109, label %bb.z, label %bb.s

bb.s:                                             ; preds = %._crit_edge119
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89 ; 3 uses
  %i.bz = ashr i32 %i.bw, 1                       ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [72 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = mul nsw i64 %i.ca, 72
  %i.cd = ptrtoint ptr %i.by to i64, !nosanitize !33 ; 3 uses
  %i.ce = add i64 %i.cc, %i.cd, !nosanitize !33   ; 3 uses
  %i.cf = icmp ne ptr %i.by, null, !nosanitize !33 ; 2 uses
  %i.cg = icmp eq i64 %i.ce, 0
  %i.ch = xor i1 %i.cf, %i.cg
  %i.ci = icmp uge i64 %i.ce, %i.cd, !nosanitize !33
  %i.cj = icmp slt i32 %i.bz, 0
  %i.ck = xor i1 %i.cj, %i.ci
  %i.cl = and i1 %i.ch, %i.ck, !nosanitize !33
  br i1 %i.cl, label %bb.u, label %bb.t, !prof !35, !nosanitize !33

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @112, i64 %i.cd, i64 %i.ce) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.u:                                             ; preds = %bb.s
  %i.cm = ptrtoint ptr %i.cb to i64, !nosanitize !33 ; 2 uses
  %i.cn = and i64 %i.cm, 7, !nosanitize !33
  %i.co = icmp eq i64 %i.cn, 0, !nosanitize !33
  %i.cp = and i1 %i.cf, %i.co
  br i1 %i.cp, label %bb.w, label %bb.v, !prof !35, !nosanitize !33

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @113, i64 %i.cm) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.w:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 20 ; 2 uses
  %i.cr = and i32 %i.bw, 1
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = mul nuw nsw i64 %i.cs, 12
  %i.cu = ptrtoint ptr %i.cq to i64, !nosanitize !33 ; 3 uses
  %i.cv = add i64 %i.ct, %i.cu, !nosanitize !33   ; 2 uses
  %.not110 = icmp ult i64 %i.cv, %i.cu, !nosanitize !33
  br i1 %.not110, label %bb.x, label %bb.y, !prof !34, !nosanitize !33

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.cu, i64 %i.cv) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.y:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cq, i64 %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %i.ar, ptr %i.cx, align 4, !tbaa !140
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge119
  %i.cy = icmp ult i32 %i.g, 1073741824
  br i1 %i.cy, label %bb.ab, label %bb.aa, !prof !35, !nosanitize !33

bb.aa:                                            ; preds = %bb.z
  %i.cz = zext i32 %i.g to i64, !nosanitize !33
  tail call void @__ubsan_handle_shift_out_of_bounds_abort(ptr nonnull @115, i64 %i.cz, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ab:                                            ; preds = %bb.z
  %i.da = shl nuw nsw i32 %i.g, 1                 ; 2 uses
  %i.db = ptrtoint ptr %i.v to i64, !nosanitize !33 ; 2 uses
  %i.dc = and i64 %i.db, 7, !nosanitize !33
  %i.dd = icmp eq i64 %i.dc, 0, !nosanitize !33
  %i.de = and i1 %i.z, %i.dd
  br i1 %i.de, label %bb.ad, label %bb.ac, !prof !35, !nosanitize !33

bb.ac:                                            ; preds = %bb.ab
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @117, i64 %i.db) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ad:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %i.v, i64 36 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !141
  %i.dh = icmp eq i32 %i.dg, %i.da
  br i1 %i.dh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.bw, ptr %i.df, align 4, !tbaa !141
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !143 ; 2 uses
  %i.dk = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dj, i32 -1) ; 2 uses
  %i.dl = extractvalue { i32, i1 } %i.dk, 1, !nosanitize !33
  br i1 %i.dl, label %bb.ag, label %bb.ah, !prof !34, !nosanitize !33

bb.ag:                                            ; preds = %bb.af
  %i.dm = zext i32 %i.dj to i64, !nosanitize !33
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @118, i64 %i.dm, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ah:                                            ; preds = %bb.af
  %i.dn = extractvalue { i32, i1 } %i.dk, 0, !nosanitize !33
  store i32 %i.dn, ptr %i.di, align 8, !tbaa !143
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !140 ; 4 uses
  %.not111 = icmp eq i32 %i.dp, -1
  br i1 %.not111, label %._crit_edge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !89 ; 3 uses
  %i.ds = ashr i32 %i.dp, 1                       ; 2 uses
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [72 x i8], ptr %i.dr, i64 %i.dt ; 2 uses
  %i.dv = mul nsw i64 %i.dt, 72
  %i.dw = ptrtoint ptr %i.dr to i64, !nosanitize !33 ; 3 uses
  %i.dx = add i64 %i.dv, %i.dw, !nosanitize !33   ; 3 uses
  %i.dy = icmp ne ptr %i.dr, null, !nosanitize !33 ; 2 uses
  %i.dz = icmp eq i64 %i.dx, 0
  %i.ea = xor i1 %i.dy, %i.dz
  %i.eb = icmp uge i64 %i.dx, %i.dw, !nosanitize !33
  %i.ec = icmp slt i32 %i.ds, 0
  %i.ed = xor i1 %i.ec, %i.eb
  %i.ee = and i1 %i.ea, %i.ed, !nosanitize !33
  br i1 %i.ee, label %bb.ak, label %bb.aj, !prof !35, !nosanitize !33

bb.aj:                                            ; preds = %bb.ai
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @119, i64 %i.dw, i64 %i.dx) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ak:                                            ; preds = %bb.ai
  %i.ef = ptrtoint ptr %i.du to i64, !nosanitize !33 ; 2 uses
  %i.eg = and i64 %i.ef, 7, !nosanitize !33
  %i.eh = icmp eq i64 %i.eg, 0, !nosanitize !33
  %i.ei = and i1 %i.dy, %i.eh
  br i1 %i.ei, label %bb.am, label %bb.al, !prof !35, !nosanitize !33

bb.al:                                            ; preds = %bb.ak
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @120, i64 %i.ef) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.am:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 20 ; 2 uses
  %i.ek = and i32 %i.dp, 1
  %i.el = zext nneg i32 %i.ek to i64              ; 2 uses
  %i.em = mul nuw nsw i64 %i.el, 12
  %i.en = ptrtoint ptr %i.ej to i64, !nosanitize !33 ; 3 uses
  %i.eo = add i64 %i.em, %i.en, !nosanitize !33   ; 2 uses
  %.not112 = icmp ult i64 %i.eo, %i.en, !nosanitize !33
  br i1 %.not112, label %bb.an, label %bb.ao, !prof !34, !nosanitize !33

bb.an:                                            ; preds = %bb.am
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @121, i64 %i.en, i64 %i.eo) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ao:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.ej, i64 %i.el
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !142
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 %i.er, ptr %i.es, align 4, !tbaa !142
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ao, %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !142 ; 4 uses
  %.not113 = icmp eq i32 %i.eu, -1
  br i1 %.not113, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !89 ; 3 uses
  %i.ex = ashr i32 %i.eu, 1                       ; 2 uses
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds [72 x i8], ptr %i.ew, i64 %i.ey ; 2 uses
  %i.fa = mul nsw i64 %i.ey, 72
  %i.fb = ptrtoint ptr %i.ew to i64, !nosanitize !33 ; 3 uses
  %i.fc = add i64 %i.fa, %i.fb, !nosanitize !33   ; 3 uses
  %i.fd = icmp ne ptr %i.ew, null, !nosanitize !33 ; 2 uses
  %i.fe = icmp eq i64 %i.fc, 0
  %i.ff = xor i1 %i.fd, %i.fe
  %i.fg = icmp uge i64 %i.fc, %i.fb, !nosanitize !33
  %i.fh = icmp slt i32 %i.ex, 0
  %i.fi = xor i1 %i.fh, %i.fg
  %i.fj = and i1 %i.ff, %i.fi, !nosanitize !33
  br i1 %i.fj, label %bb.ar, label %bb.aq, !prof !35, !nosanitize !33

bb.aq:                                            ; preds = %bb.ap
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @122, i64 %i.fb, i64 %i.fc) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ar:                                            ; preds = %bb.ap
  %i.fk = ptrtoint ptr %i.ez to i64, !nosanitize !33 ; 2 uses
  %i.fl = and i64 %i.fk, 7, !nosanitize !33
  %i.fm = icmp eq i64 %i.fl, 0, !nosanitize !33
  %i.fn = and i1 %i.fd, %i.fm
  br i1 %i.fn, label %bb.at, label %bb.as, !prof !35, !nosanitize !33

bb.as:                                            ; preds = %bb.ar
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @123, i64 %i.fk) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.at:                                            ; preds = %bb.ar
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 20 ; 2 uses
  %i.fp = and i32 %i.eu, 1
  %i.fq = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fr = mul nuw nsw i64 %i.fq, 12
  %i.fs = ptrtoint ptr %i.fo to i64, !nosanitize !33 ; 3 uses
  %i.ft = add i64 %i.fr, %i.fs, !nosanitize !33   ; 2 uses
  %.not114 = icmp ult i64 %i.ft, %i.fs, !nosanitize !33
  br i1 %.not114, label %bb.au, label %bb.av, !prof !34, !nosanitize !33

bb.au:                                            ; preds = %bb.at
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @124, i64 %i.fs, i64 %i.ft) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.av:                                            ; preds = %bb.at
  %i.fu = getelementptr inbounds nuw [12 x i8], ptr %i.fo, i64 %i.fq
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 %i.dp, ptr %i.fv, align 4, !tbaa !140
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge, %bb.av
  %i.fw = ptrtoint ptr %i.ah to i64, !nosanitize !33 ; 2 uses
  %i.fx = and i64 %i.fw, 7, !nosanitize !33
  %i.fy = icmp eq i64 %i.fx, 0, !nosanitize !33
  br i1 %i.fy, label %bb.ay, label %bb.ax, !prof !35, !nosanitize !33

bb.ax:                                            ; preds = %bb.aw
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @125, i64 %i.fw) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ay:                                            ; preds = %bb.aw
  %i.fz = or disjoint i32 %i.da, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ah, i64 36 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !141
  %i.gc = icmp eq i32 %i.gb, %i.fz
  br i1 %i.gc, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 %i.eu, ptr %i.ga, align 4, !tbaa !141
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !143 ; 2 uses
  %i.gf = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ge, i32 -1) ; 2 uses
  %i.gg = extractvalue { i32, i1 } %i.gf, 1, !nosanitize !33
  br i1 %i.gg, label %bb.bb, label %bb.bc, !prof !34, !nosanitize !33

bb.bb:                                            ; preds = %bb.ba
  %i.gh = zext i32 %i.ge to i64, !nosanitize !33
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @126, i64 %i.gh, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.bc:                                            ; preds = %bb.ba
  %i.gi = extractvalue { i32, i1 } %i.gf, 0, !nosanitize !33
  store i32 %i.gi, ptr %i.gd, align 8, !tbaa !143
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !134
  %.not115 = icmp eq i32 %i.gk, -1
  br i1 %.not115, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @b3UnlinkJoint(ptr noundef nonnull %0, ptr noundef nonnull %1) #12
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !91 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !102 ; 7 uses
  %i.gp = icmp eq i32 %i.gm, 2
  br i1 %i.gp, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  br i1 %.not, label %bb.bg, label %bb.bh, !prof !34, !nosanitize !33

bb.bg:                                            ; preds = %bb.bf
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @127, i64 %i.j, i64 0) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.bh:                                            ; preds = %bb.bf
  %i.gq = load i32, ptr %i.h, align 4, !tbaa !139
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gs = load i32, ptr %i.i, align 8, !tbaa !139
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !92
  tail call void @b3RemoveJointFromGraph(ptr noundef nonnull %0, i32 noundef %i.gq, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.go) #12
  br label %b3RemoveHelper.exit.thread

bb.bi:                                            ; preds = %bb.be
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !103 ; 3 uses
  %i.gw = sext i32 %i.gm to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [88 x i8], ptr %i.gv, i64 %i.gw ; 3 uses
  %i.gy = mul nsw i64 %i.gw, 88
  %i.gz = ptrtoint ptr %i.gv to i64, !nosanitize !33 ; 3 uses
  %i.ha = add i64 %i.gy, %i.gz, !nosanitize !33   ; 3 uses
  %i.hb = icmp ne ptr %i.gv, null, !nosanitize !33 ; 2 uses
  %i.hc = icmp eq i64 %i.ha, 0
  %i.hd = xor i1 %i.hb, %i.hc
  %i.he = icmp uge i64 %i.ha, %i.gz, !nosanitize !33
  %i.hf = icmp slt i32 %i.gm, 0
  %i.hg = xor i1 %i.hf, %i.he
  %i.hh = and i1 %i.hd, %i.hg, !nosanitize !33
  br i1 %i.hh, label %bb.bk, label %bb.bj, !prof !35, !nosanitize !33

bb.bj:                                            ; preds = %bb.bi
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @128, i64 %i.gz, i64 %i.ha) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.bk:                                            ; preds = %bb.bi
  %i.hi = ptrtoint ptr %i.gx to i64, !nosanitize !33 ; 2 uses
  %i.hj = and i64 %i.hi, 7, !nosanitize !33
  %i.hk = icmp eq i64 %i.hj, 0, !nosanitize !33
  %i.hl = and i1 %i.hb, %i.hk
  br i1 %i.hl, label %bb.bm, label %bb.bl, !prof !35, !nosanitize !33

bb.bl:                                            ; preds = %bb.bk
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @129, i64 %i.hi) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.bm:                                            ; preds = %bb.bk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 32 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !111 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gx, i64 40 ; 3 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !14 ; 2 uses
  %i.hq = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hp, i32 -1) ; 2 uses
  %i.hr = extractvalue { i32, i1 } %i.hq, 0, !nosanitize !33 ; 4 uses
  %i.hs = extractvalue { i32, i1 } %i.hq, 1, !nosanitize !33
  br i1 %i.hs, label %bb.bn, label %bb.bo, !prof !34, !nosanitize !33

bb.bn:                                            ; preds = %bb.bm
  %i.ht = zext i32 %i.hp to i64, !nosanitize !33
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @282, i64 %i.ht, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.bo:                                            ; preds = %bb.bm
  store i32 %i.hr, ptr %i.ho, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.go, %i.hr
  br i1 %.not.i, label %b3RemoveHelper.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hu = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.go, i32 444), !nosanitize !33 ; 2 uses
  %i.hv = extractvalue { i32, i1 } %i.hu, 1, !nosanitize !33
  br i1 %i.hv, label %bb.bq, label %bb.br, !prof !34, !nosanitize !33

bb.bq:                                            ; preds = %bb.bp
  %i.hw = zext i32 %i.go to i64, !nosanitize !33
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @283, i64 %i.hw, i64 444) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.br:                                            ; preds = %bb.bp
  %i.hx = extractvalue { i32, i1 } %i.hu, 0, !nosanitize !33 ; 2 uses
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hn, i64 %i.hy
  %i.ia = ptrtoint ptr %i.hn to i64, !nosanitize !33 ; 6 uses
  %i.ib = add i64 %i.ia, %i.hy, !nosanitize !33   ; 3 uses
  %i.ic = icmp ne ptr %i.hn, null                 ; 3 uses
  %i.id = icmp eq i64 %i.ib, 0
  %i.ie = xor i1 %i.ic, %i.id
  %i.if = icmp uge i64 %i.ib, %i.ia, !nosanitize !33
  %i.ig = icmp slt i32 %i.hx, 0
  %i.ih = xor i1 %i.ig, %i.if
  %i.ii = and i1 %i.ie, %i.ih, !nosanitize !33
  br i1 %i.ii, label %bb.bt, label %bb.bs, !prof !35, !nosanitize !33
end_hunk_0
begin_hunk_1_@b3Joint_GetType:bb.a
  %i.g = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64, !nosanitize !33 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !33
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !33
  %i.ad = and i1 %i.ac, %i.s
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @135, i64 %i.aa) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !136
  ret i32 %i.af
}

; Function Attrs: nounwind uwtable
define i64 @b3Joint_GetBodyA(i64 %0) local_unnamed_addr #0 !func_sanitize !153 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 0, !nosanitize !33 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.d, 1, !nosanitize !33
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64, !nosanitize !33 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !33
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !33
  %i.ad = and i1 %i.ac, %i.s
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @136, i64 %i.aa) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = tail call i64 @b3MakeBodyId(ptr noundef nonnull %i.c, i32 noundef %i.af) #12
  ret i64 %i.ag
}

declare i64 @b3MakeBodyId(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @b3Joint_GetBodyB(i64 %0) local_unnamed_addr #0 !func_sanitize !153 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 0, !nosanitize !33 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.d, 1, !nosanitize !33
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64, !nosanitize !33 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !33
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !33
  %i.ad = and i1 %i.ac, %i.s
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @137, i64 %i.aa) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 2 uses
  %.not = icmp ugt ptr %i.ae, inttoptr (i64 -13 to ptr)
  br i1 %.not, label %bb.i, label %bb.j, !prof !34, !nosanitize !33

bb.i:                                             ; preds = %bb.h
  %i.af = ptrtoint ptr %i.ae to i64, !nosanitize !33 ; 2 uses
  %i.ag = add i64 %i.af, 12, !nosanitize !33
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @138, i64 %i.af, i64 %i.ag) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.j:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = tail call i64 @b3MakeBodyId(ptr noundef nonnull %i.c, i32 noundef %i.ai) #12
  ret i64 %i.aj
}

; Function Attrs: nounwind uwtable
define i32 @b3Joint_GetWorld(i64 %0) local_unnamed_addr #0 !func_sanitize !325 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 2 uses
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 3 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !33
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !33
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !33
  %i.h = and i1 %i.d, %i.g, !nosanitize !33
  br i1 %i.h, label %bb.c, label %bb.b, !prof !35, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @139, i64 %i.e) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4488
  %i.j = add i32 %i.a, 1
  %i.k = load i16, ptr %i.i, align 8, !tbaa !326
  %.sroa.2.0.insert.ext = zext i16 %i.k to i32
  %.sroa.2.0.insert.shift = shl nuw i32 %.sroa.2.0.insert.ext, 16
  %.sroa.0.0.insert.ext = and i32 %i.j, 65535
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind uwtable
define void @b3Joint_SetLocalFrameA(i64 %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1) local_unnamed_addr #0 !func_sanitize !154 {
bb.a:
  %2 = alloca %struct.b3RecArgs_JointSetLocalFrameA, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 5 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !33
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !33
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !33
  %i.h = and i1 %i.d, %i.g, !nosanitize !33
  br i1 %i.h, label %bb.c, label %bb.b, !prof !35, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @140, i64 %i.e) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i64 %0, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, ptr noundef nonnull align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !146
  call void @b3RecWrite_JointSetLocalFrameA(ptr noundef nonnull %i.j, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.l = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1, !nosanitize !33
  br i1 %i.m, label %bb.f, label %bb.g, !prof !34, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  %i.n = and i64 %0, 4294967295
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.n, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.g:                                             ; preds = %bb.e
  %i.o = extractvalue { i32, i1 } %i.l, 0, !nosanitize !33 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 3 uses
  %i.r = sext i32 %i.o to i64                     ; 2 uses
  %i.s = mul nsw i64 %i.r, 72
  %i.t = ptrtoint ptr %i.q to i64, !nosanitize !33 ; 3 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !33      ; 3 uses
  %i.v = icmp ne ptr %i.q, null, !nosanitize !33
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !33
  %i.z = icmp slt i32 %i.o, 0
  %i.aa = xor i1 %i.z, %i.y
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !33
  br i1 %i.ab, label %b3GetJointFullId.exit, label %bb.h, !prof !35, !nosanitize !33

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.t, i64 %i.u) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.g
  %i.ac = getelementptr inbounds [72 x i8], ptr %i.q, i64 %i.r
  %i.ad = call ptr @b3GetJointSim(ptr noundef nonnull %i.c, ptr noundef %i.ac) ; 3 uses
  %i.ae = icmp ne ptr %i.ad, null, !nosanitize !33
  %i.af = ptrtoint ptr %i.ad to i64, !nosanitize !33 ; 2 uses
  %i.ag = and i64 %i.af, 3, !nosanitize !33
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !33
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !33
  br i1 %i.ai, label %bb.j, label %bb.i, !prof !35, !nosanitize !33

bb.i:                                             ; preds = %b3GetJointFullId.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @141, i64 %i.af) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.j:                                             ; preds = %b3GetJointFullId.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aj, ptr noundef nonnull align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !146
  ret void
}

declare void @b3RecWrite_JointSetLocalFrameA(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b3Joint_GetLocalFrameA(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Transform) align 4 captures(none) %0, i64 %1) local_unnamed_addr #0 !func_sanitize !155 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 0, !nosanitize !33 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.d, 1, !nosanitize !33
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %1, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null, !nosanitize !33
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o
  %i.aa = tail call ptr @b3GetJointSim(ptr noundef nonnull %i.c, ptr noundef %i.z) ; 3 uses
  %i.ab = icmp ne ptr %i.aa, null, !nosanitize !33
  %i.ac = ptrtoint ptr %i.aa to i64, !nosanitize !33 ; 2 uses
  %i.ad = and i64 %i.ac, 3, !nosanitize !33
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !33
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !33
  br i1 %i.af, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @142, i64 %i.ac) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %i.ag, i64 28, i1 false), !tbaa.struct !146
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3Joint_SetLocalFrameB(i64 %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1) local_unnamed_addr #0 !func_sanitize !154 {
bb.a:
  %2 = alloca %struct.b3RecArgs_JointSetLocalFrameB, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 5 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !33
end_hunk_1
begin_hunk_2_@b3Joint_GetLocalFrameB:bb.a
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o
  %i.aa = tail call ptr @b3GetJointSim(ptr noundef nonnull %i.c, ptr noundef %i.z) ; 3 uses
  %i.ab = icmp ne ptr %i.aa, null, !nosanitize !33
  %i.ac = ptrtoint ptr %i.aa to i64, !nosanitize !33 ; 2 uses
  %i.ad = and i64 %i.ac, 3, !nosanitize !33
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !33
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !33
  br i1 %i.af, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @145, i64 %i.ac) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %i.ag, i64 28, i1 false), !tbaa.struct !146
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3Joint_SetCollideConnected(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !150 {
bb.a:
  %2 = alloca %struct.b3RecArgs_JointSetCollideConnected, align 8 ; 6 uses
  %.sroa.4.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.c) #12 ; 14 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64, !nosanitize !33 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !33
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !33
  br i1 %i.h, label %bb.d, label %bb.c, !prof !35, !nosanitize !33

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @146, i64 %i.f) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.split, label %.split30

.split:                                           ; preds = %bb.d
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.k = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.f, !prof !34, !nosanitize !33

bb.e:                                             ; preds = %.split
  %i.m = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.m, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.f:                                             ; preds = %.split
  %i.n = extractvalue { i32, i1 } %i.k, 0, !nosanitize !33 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 3960
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89   ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 2 uses
  %i.r = mul nsw i64 %i.q, 72
  %i.s = ptrtoint ptr %i.p to i64, !nosanitize !33 ; 3 uses
  %i.t = add i64 %i.r, %i.s, !nosanitize !33      ; 3 uses
  %i.u = icmp ne ptr %i.p, null, !nosanitize !33
  %i.v = icmp eq i64 %i.t, 0
  %i.w = xor i1 %i.u, %i.v
  %i.x = icmp uge i64 %i.t, %i.s, !nosanitize !33
  %i.y = icmp slt i32 %i.n, 0
  %i.z = xor i1 %i.y, %i.x
  %i.aa = and i1 %i.w, %i.z, !nosanitize !33
  br i1 %i.aa, label %b3GetJointFullId.exit, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.s, i64 %i.t) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.f
  %i.ab = getelementptr inbounds [72 x i8], ptr %i.p, i64 %i.q
  br label %bb.k

.split30:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i64 %0, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.ac, align 8, !tbaa !152
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ad, i8 0, i64 3, i1 false)
  call void @b3RecWrite_JointSetCollideConnected(ptr noundef nonnull %i.j, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.sroa.0.0.extract.trunc.i45 = trunc i64 %0 to i32
  %i.ae = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i45, i32 -1) ; 2 uses
  %i.af = extractvalue { i32, i1 } %i.ae, 1, !nosanitize !33
  br i1 %i.af, label %bb.h, label %bb.i, !prof !34, !nosanitize !33

bb.h:                                             ; preds = %.split30
  %i.ag = and i64 %0, 4294967295
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.ag, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.i:                                             ; preds = %.split30
  %i.ah = extractvalue { i32, i1 } %i.ae, 0, !nosanitize !33 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 3960
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !89 ; 3 uses
  %i.ak = sext i32 %i.ah to i64                   ; 2 uses
  %i.al = mul nsw i64 %i.ak, 72
  %i.am = ptrtoint ptr %i.aj to i64, !nosanitize !33 ; 3 uses
  %i.an = add i64 %i.al, %i.am, !nosanitize !33   ; 3 uses
  %i.ao = icmp ne ptr %i.aj, null, !nosanitize !33
  %i.ap = icmp eq i64 %i.an, 0
  %i.aq = xor i1 %i.ao, %i.ap
  %i.ar = icmp uge i64 %i.an, %i.am, !nosanitize !33
  %i.as = icmp slt i32 %i.ah, 0
  %i.at = xor i1 %i.as, %i.ar
  %i.au = and i1 %i.aq, %i.at, !nosanitize !33
  br i1 %i.au, label %b3GetJointFullId.exit46, label %bb.j, !prof !35, !nosanitize !33

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.am, i64 %i.an) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit46:                          ; preds = %bb.i
  %i.av = getelementptr inbounds [72 x i8], ptr %i.aj, i64 %i.ak
  br label %bb.k

bb.k:                                             ; preds = %b3GetJointFullId.exit, %b3GetJointFullId.exit46
  %phi.call = phi ptr [ %i.ab, %b3GetJointFullId.exit ], [ %i.av, %b3GetJointFullId.exit46 ] ; 5 uses
  %i.aw = icmp ne ptr %phi.call, null, !nosanitize !33
  %i.ax = ptrtoint ptr %phi.call to i64, !nosanitize !33 ; 2 uses
  %i.ay = and i64 %i.ax, 7, !nosanitize !33
  %i.az = icmp eq i64 %i.ay, 0, !nosanitize !33
  %i.ba = and i1 %i.aw, %i.az, !nosanitize !33
  br i1 %i.ba, label %bb.m, label %bb.l, !prof !35, !nosanitize !33

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @147, i64 %i.ax) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %phi.call, i64 66 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !137 ; 3 uses
  %i.bd = icmp ult i8 %i.bc, 2
  br i1 %i.bd, label %bb.o, label %bb.n, !prof !35, !nosanitize !33

bb.n:                                             ; preds = %bb.m
  %i.be = zext i8 %i.bc to i64, !nosanitize !33
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @148, i64 %i.be) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.o:                                             ; preds = %bb.m
  %i.bf = icmp eq i8 %i.bc, %i.a
  br i1 %i.bf, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 %i.a, ptr %i.bb, align 2, !tbaa !137
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 3880
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !149 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %phi.call, i64 20 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !139 ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 5 uses
  %i.bl = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %i.bk ; 3 uses
  %i.bm = shl nsw i64 %i.bk, 7
  %i.bn = ptrtoint ptr %i.bh to i64, !nosanitize !33 ; 6 uses
  %i.bo = add i64 %i.bm, %i.bn, !nosanitize !33   ; 3 uses
  %i.bp = icmp ne ptr %i.bh, null                 ; 3 uses
  %i.bq = icmp eq i64 %i.bo, 0
  %i.br = xor i1 %i.bp, %i.bq
  %i.bs = icmp uge i64 %i.bo, %i.bn, !nosanitize !33
  %i.bt = icmp slt i32 %i.bj, 0
  %i.bu = xor i1 %i.bt, %i.bs
  %i.bv = and i1 %i.br, %i.bu, !nosanitize !33
  br i1 %i.bv, label %bb.r, label %bb.q, !prof !35, !nosanitize !33

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @149, i64 %i.bn, i64 %i.bo) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.r:                                             ; preds = %bb.p
  %.not42 = icmp ugt ptr %i.bi, inttoptr (i64 -13 to ptr)
  br i1 %.not42, label %bb.s, label %bb.t, !prof !34, !nosanitize !33

bb.s:                                             ; preds = %bb.r
  %i.bw = ptrtoint ptr %i.bi to i64, !nosanitize !33 ; 2 uses
  %i.bx = add i64 %i.bw, 12, !nosanitize !33
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @150, i64 %i.bw, i64 %i.bx) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.t:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %phi.call, i64 32
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 5 uses
  %i.cb = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %i.ca ; 4 uses
  %i.cc = shl nsw i64 %i.ca, 7
  %i.cd = add i64 %i.cc, %i.bn, !nosanitize !33   ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = xor i1 %i.bp, %i.ce
  %i.cg = icmp uge i64 %i.cd, %i.bn, !nosanitize !33
  %i.ch = icmp slt i32 %i.bz, 0
  %i.ci = xor i1 %i.ch, %i.cg
  %i.cj = and i1 %i.cf, %i.ci, !nosanitize !33
  br i1 %i.cj, label %bb.v, label %bb.u, !prof !35, !nosanitize !33

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @151, i64 %i.bn, i64 %i.cd) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.v:                                             ; preds = %bb.t
  %i.ck = ptrtoint ptr %i.bl to i64, !nosanitize !33 ; 3 uses
  %i.cl = and i64 %i.ck, 7, !nosanitize !33
  %i.cm = icmp eq i64 %i.cl, 0, !nosanitize !33
  %i.cn = and i1 %i.bp, %i.cm                     ; 2 uses
  br i1 %1, label %bb.w, label %bb.ap

bb.w:                                             ; preds = %bb.v
  br i1 %i.cn, label %bb.y, label %bb.x, !prof !35, !nosanitize !33

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @152, i64 %i.ck) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.y:                                             ; preds = %bb.w
  %i.co = ptrtoint ptr %i.cb to i64, !nosanitize !33 ; 2 uses
  %i.cp = and i64 %i.co, 7, !nosanitize !33
  %i.cq = icmp eq i64 %i.cp, 0, !nosanitize !33
  br i1 %i.cq, label %.split349.us, label %bb.z, !prof !35, !nosanitize !33

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @153, i64 %i.co) #13, !nosanitize !33
  unreachable, !nosanitize !33

.split349.us:                                     ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !328
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !328
  %i.cv = icmp slt i32 %i.cs, %i.cu
  %. = select i1 %i.cv, i64 %i.bk, i64 %i.ca
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 4080
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 1040 ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64               ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 1088 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 1096 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 1100 ; 2 uses
  %i.dc = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %.
  %.in = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.0.us.us997 = load i32, ptr %.in, align 4, !tbaa !14 ; 2 uses
  %.not43.us.us998 = icmp eq i32 %.0.us.us997, -1
  br i1 %.not43.us.us998, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.split349.us, %b3BufferMove.exit.us.us
  %.0.us.us999 = phi i32 [ %.0.us.us, %b3BufferMove.exit.us.us ], [ %.0.us.us997, %.split349.us ] ; 2 uses
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !329 ; 3 uses
  %i.de = sext i32 %.0.us.us999 to i64            ; 2 uses
  %i.df = getelementptr inbounds [232 x i8], ptr %i.dd, i64 %i.de ; 3 uses
  %i.dg = mul nsw i64 %i.de, 232
  %i.dh = ptrtoint ptr %i.dd to i64, !nosanitize !33 ; 3 uses
  %i.di = add i64 %i.dg, %i.dh, !nosanitize !33   ; 3 uses
  %i.dj = icmp ne ptr %i.dd, null, !nosanitize !33 ; 2 uses
  %i.dk = icmp eq i64 %i.di, 0
  %i.dl = xor i1 %i.dj, %i.dk
  %i.dm = icmp uge i64 %i.di, %i.dh, !nosanitize !33
  %i.dn = icmp slt i32 %.0.us.us999, 0
  %i.do = xor i1 %i.dn, %i.dm
  %i.dp = and i1 %i.dl, %i.do, !nosanitize !33
  br i1 %i.dp, label %bb.aa, label %.split351.us, !prof !35, !nosanitize !33

bb.aa:                                            ; preds = %.lr.ph
  %i.dq = ptrtoint ptr %i.df to i64, !nosanitize !33 ; 2 uses
  %i.dr = and i64 %i.dq, 7, !nosanitize !33
  %i.ds = icmp eq i64 %i.dr, 0, !nosanitize !33
  %i.dt = and i1 %i.dj, %i.ds
  br i1 %i.dt, label %bb.ab, label %.split354.us, !prof !35, !nosanitize !33

bb.ab:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !334 ; 4 uses
  %.not44.us.us = icmp eq i32 %i.dv, -1
  br i1 %.not44.us.us, label %b3BufferMove.exit.us.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = ashr i32 %i.dv, 2                       ; 3 uses
  %i.dx = and i32 %i.dv, 3
  %i.dy = zext nneg i32 %i.dx to i64, !nosanitize !33 ; 2 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.dy ; 4 uses
  %i.ea = shl nuw nsw i64 %i.dy, 4
  %i.eb = add i64 %i.ea, %i.cy, !nosanitize !33   ; 2 uses
  %.not.i.us.us = icmp ult i64 %i.eb, %i.cy, !nosanitize !33
  br i1 %.not.i.us.us, label %.split363.us, label %bb.ad, !prof !34, !nosanitize !33

bb.ad:                                            ; preds = %bb.ac
  %i.ec = lshr i32 %i.dw, 6                       ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !335
  %.not.i.i.us.us = icmp ult i32 %i.ec, %i.ee
  br i1 %.not.i.i.us.us, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = add nuw nsw i32 %i.ec, 1
  call void @b3GrowBitSet(ptr noundef nonnull %i.dz, i32 noundef %i.ef) #12
  %.pre.i.us.us = load ptr, ptr %i.dz, align 8, !tbaa !336 ; 2 uses
  %.pre29.i.us.us = zext nneg i32 %i.ec to i64    ; 2 uses
  %.pre31.i.us.us = shl nuw nsw i64 %.pre29.i.us.us, 3
  %.pre33.i.us.us = ptrtoint ptr %.pre.i.us.us to i64, !nosanitize !33 ; 2 uses
  %.pre35.i.us.us = add i64 %.pre31.i.us.us, %.pre33.i.us.us, !nosanitize !33
  br label %.thread.i.us.us

bb.af:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !336 ; 4 uses
  %i.eh = zext nneg i32 %i.ec to i64              ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh ; 2 uses
  %i.ej = shl nuw nsw i64 %i.eh, 3
  %i.ek = ptrtoint ptr %i.eg to i64, !nosanitize !33 ; 4 uses
  %i.el = add i64 %i.ej, %i.ek, !nosanitize !33   ; 4 uses
  %i.em = icmp ne ptr %i.eg, null, !nosanitize !33 ; 2 uses
  %i.en = icmp eq i64 %i.el, 0
  %i.eo = xor i1 %i.em, %i.en
  %i.ep = icmp uge i64 %i.el, %i.ek, !nosanitize !33
  %i.eq = and i1 %i.ep, %i.eo, !nosanitize !33
  br i1 %i.eq, label %bb.ag, label %.split373.us, !prof !35, !nosanitize !33

bb.ag:                                            ; preds = %bb.af
  %i.er = ptrtoint ptr %i.ei to i64, !nosanitize !33 ; 2 uses
  %i.es = and i64 %i.er, 7, !nosanitize !33
  %i.et = icmp eq i64 %i.es, 0, !nosanitize !33
  %i.eu = and i1 %i.em, %i.et
  br i1 %i.eu, label %b3GetBit.exit.i.us.us, label %.split377.us, !prof !35, !nosanitize !33

b3GetBit.exit.i.us.us:                            ; preds = %bb.ag
  %i.ev = and i32 %i.dw, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = load i64, ptr %i.ei, align 8, !tbaa !337
  %i.ey = shl nuw i64 1, %i.ew
  %i.ez = and i64 %i.ex, %i.ey
  %.not28.i.us.us = icmp eq i64 %i.ez, 0
  br i1 %.not28.i.us.us, label %.thread.i.us.us, label %b3BufferMove.exit.us.us

.thread.i.us.us:                                  ; preds = %b3GetBit.exit.i.us.us, %bb.ae
  %.pre-phi36.i.us.us = phi i64 [ %i.el, %b3GetBit.exit.i.us.us ], [ %.pre35.i.us.us, %bb.ae ] ; 3 uses
  %.pre-phi34.i.us.us = phi i64 [ %i.ek, %b3GetBit.exit.i.us.us ], [ %.pre33.i.us.us, %bb.ae ] ; 2 uses
  %.pre-phi.i.us.us = phi i64 [ %i.eh, %b3GetBit.exit.i.us.us ], [ %.pre29.i.us.us, %bb.ae ]
  %i.fa = phi ptr [ %i.eg, %b3GetBit.exit.i.us.us ], [ %.pre.i.us.us, %bb.ae ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.pre-phi.i.us.us ; 3 uses
  %i.fc = icmp ne ptr %i.fa, null, !nosanitize !33 ; 2 uses
  %i.fd = icmp eq i64 %.pre-phi36.i.us.us, 0
  %i.fe = xor i1 %i.fd, %i.fc
  %i.ff = icmp uge i64 %.pre-phi36.i.us.us, %.pre-phi34.i.us.us, !nosanitize !33
  %i.fg = and i1 %i.ff, %i.fe, !nosanitize !33
  br i1 %i.fg, label %bb.ah, label %.split380.us, !prof !35, !nosanitize !33

bb.ah:                                            ; preds = %.thread.i.us.us
  %i.fh = ptrtoint ptr %i.fb to i64, !nosanitize !33 ; 2 uses
  %i.fi = and i64 %i.fh, 7, !nosanitize !33
  %i.fj = icmp eq i64 %i.fi, 0, !nosanitize !33
  %i.fk = and i1 %i.fc, %i.fj
  br i1 %i.fk, label %b3SetBitGrow.exit.i.us.us, label %.split384.us, !prof !35, !nosanitize !33

b3SetBitGrow.exit.i.us.us:                        ; preds = %bb.ah
  %i.fl = and i32 %i.dw, 63
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = load i64, ptr %i.fb, align 8, !tbaa !337
  %i.fp = or i64 %i.fo, %i.fn
  store i64 %i.fp, ptr %i.fb, align 8, !tbaa !337
  %i.fq = load i32, ptr %i.da, align 8, !tbaa !338 ; 2 uses
  %i.fr = load i32, ptr %i.db, align 4, !tbaa !339 ; 6 uses
  %.not25.i.us.us = icmp slt i32 %i.fq, %i.fr
  br i1 %.not25.i.us.us, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %b3SetBitGrow.exit.i.us.us
  %i.fs = shl i32 %i.fr, 2
  %i.ft = icmp eq i32 %i.fr, 0
  br i1 %i.ft, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fu = shl nsw i32 %i.fr, 1
  %i.fv = add i32 %i.fr, 1073741824
  %i.fw = icmp sgt i32 %i.fv, -1
  br i1 %i.fw, label %bb.ak, label %.split396.us, !prof !35, !nosanitize !33

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fx = phi i32 [ 8, %bb.ai ], [ %i.fu, %bb.aj ] ; 2 uses
  %i.fy = shl i32 %i.fx, 2
  %i.fz = load ptr, ptr %i.cz, align 8, !tbaa !340
  %i.ga = call ptr @b3GrowAlloc(ptr noundef %i.fz, i32 noundef %i.fs, i32 noundef %i.fy) #12
  store ptr %i.ga, ptr %i.cz, align 8, !tbaa !340
  store i32 %i.fx, ptr %i.db, align 4, !tbaa !339
  %.pre30.i.us.us = load i32, ptr %i.da, align 8, !tbaa !338
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %b3SetBitGrow.exit.i.us.us
end_hunk_2
begin_hunk_3_@b3Joint_SetUserData:bb.a

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64, !nosanitize !33 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !33
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !33
  %i.ad = and i1 %i.ac, %i.s
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @159, i64 %i.aa) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  store ptr %1, ptr %i.z, align 8, !tbaa !133
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @b3Joint_GetUserData(i64 %0) local_unnamed_addr #0 !func_sanitize !348 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 0, !nosanitize !33 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.d, 1, !nosanitize !33
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64, !nosanitize !33 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !33
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !33
  %i.ad = and i1 %i.ac, %i.s
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @161, i64 %i.aa) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !133
  ret ptr %i.ae
}

; Function Attrs: nounwind uwtable
define void @b3Joint_WakeBodies(i64 %0) local_unnamed_addr #0 !func_sanitize !349 {
bb.a:
  %1 = alloca %struct.b3RecArgs_JointWakeBodies, align 8 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #12 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !33
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !33
  br i1 %i.g, label %bb.d, label %bb.c, !prof !35, !nosanitize !33

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @162, i64 %i.e) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store i64 %0, ptr %1, align 8
  call void @b3RecWrite_JointWakeBodies(ptr noundef nonnull %i.i, ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4763 ; 2 uses
  store i8 1, ptr %i.j, align 1, !tbaa !350
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.k = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1, !nosanitize !33
  br i1 %i.l, label %bb.g, label %bb.h, !prof !34, !nosanitize !33

bb.g:                                             ; preds = %bb.f
  %i.m = and i64 %0, 4294967295
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.m, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { i32, i1 } %i.k, 0, !nosanitize !33 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89   ; 3 uses
  %i.q = sext i32 %i.n to i64                     ; 2 uses
  %i.r = mul nsw i64 %i.q, 72
  %i.s = ptrtoint ptr %i.p to i64, !nosanitize !33 ; 3 uses
  %i.t = add i64 %i.r, %i.s, !nosanitize !33      ; 3 uses
  %i.u = icmp ne ptr %i.p, null                   ; 2 uses
  %i.v = icmp eq i64 %i.t, 0
  %i.w = xor i1 %i.u, %i.v
  %i.x = icmp uge i64 %i.t, %i.s, !nosanitize !33
  %i.y = icmp slt i32 %i.n, 0
  %i.z = xor i1 %i.y, %i.x
  %i.aa = and i1 %i.w, %i.z, !nosanitize !33
  br i1 %i.aa, label %b3GetJointFullId.exit, label %bb.i, !prof !35, !nosanitize !33

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.s, i64 %i.t) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.h
  %i.ab = getelementptr inbounds [72 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !149 ; 4 uses
  %i.ae = ptrtoint ptr %i.ab to i64, !nosanitize !33 ; 2 uses
  %i.af = and i64 %i.ae, 7, !nosanitize !33
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !33
  %i.ah = and i1 %i.ag, %i.u
  br i1 %i.ah, label %bb.k, label %bb.j, !prof !35, !nosanitize !33

bb.j:                                             ; preds = %b3GetJointFullId.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @163, i64 %i.ae) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.k:                                             ; preds = %b3GetJointFullId.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 20 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !139 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [128 x i8], ptr %i.ad, i64 %i.ak
  %i.am = shl nsw i64 %i.ak, 7
  %i.an = ptrtoint ptr %i.ad to i64, !nosanitize !33 ; 6 uses
  %i.ao = add i64 %i.am, %i.an, !nosanitize !33   ; 3 uses
  %i.ap = icmp ne ptr %i.ad, null, !nosanitize !33 ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = xor i1 %i.ap, %i.aq
  %i.as = icmp uge i64 %i.ao, %i.an, !nosanitize !33
  %i.at = icmp slt i32 %i.aj, 0
  %i.au = xor i1 %i.at, %i.as
  %i.av = and i1 %i.ar, %i.au, !nosanitize !33
  br i1 %i.av, label %bb.m, label %bb.l, !prof !35, !nosanitize !33

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @164, i64 %i.an, i64 %i.ao) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.m:                                             ; preds = %bb.k
  %.not20 = icmp ugt ptr %i.ai, inttoptr (i64 -13 to ptr)
  br i1 %.not20, label %bb.n, label %bb.o, !prof !34, !nosanitize !33

bb.n:                                             ; preds = %bb.m
  %i.aw = ptrtoint ptr %i.ai to i64, !nosanitize !33 ; 2 uses
  %i.ax = add i64 %i.aw, 12, !nosanitize !33
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @165, i64 %i.aw, i64 %i.ax) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.o:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !139 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = shl nsw i64 %i.ba, 7
  %i.bc = add i64 %i.bb, %i.an, !nosanitize !33   ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = xor i1 %i.ap, %i.bd
  %i.bf = icmp uge i64 %i.bc, %i.an, !nosanitize !33
  %i.bg = icmp slt i32 %i.az, 0
  %i.bh = xor i1 %i.bg, %i.bf
  %i.bi = and i1 %i.be, %i.bh, !nosanitize !33
  br i1 %i.bi, label %bb.q, label %bb.p, !prof !35, !nosanitize !33

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @166, i64 %i.an, i64 %i.bc) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.q:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds [128 x i8], ptr %i.ad, i64 %i.ba
  %i.bk = call zeroext i1 @b3WakeBody(ptr noundef nonnull %i.c, ptr noundef %i.al) #12 ; 0 uses
  %i.bl = call zeroext i1 @b3WakeBody(ptr noundef nonnull %i.c, ptr noundef %i.bj) #12 ; 0 uses
  store i8 0, ptr %i.j, align 1, !tbaa !350
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  ret void
}

declare void @b3RecWrite_JointWakeBodies(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define zeroext i1 @b3Joint_IsAwake(i64 %0) local_unnamed_addr #0 !func_sanitize !158 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 0, !nosanitize !33 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.d, 1, !nosanitize !33
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64, !nosanitize !33 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !33
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !33
  %i.ad = and i1 %i.ac, %i.s
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @167, i64 %i.aa) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !91
  %i.ag = icmp eq i32 %i.af, 2
  ret i1 %i.ag
}

; Function Attrs: nounwind uwtable
define hidden void @b3GetJointReaction(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #7 !func_sanitize !351 {
bb.a:
  %5 = alloca %struct.b3Transform, align 4        ; 5 uses
  %6 = alloca %struct.b3Transform, align 4        ; 5 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !33
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !33  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !33
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !33
  %i.e = and i1 %i.a, %i.d, !nosanitize !33
  br i1 %i.e, label %bb.c, label %bb.b, !prof !35, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @168, i64 %i.b) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !147
  switch i32 %i.g, label %bb.m [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.j = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fadd float %i.k, 0.000000e+00
  %i.m = tail call float @sqrtf(float noundef %i.l) #12
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.q = load <2 x float>, ptr %i.n, align 4, !tbaa !10
  %i.r = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.q)
  %i.s = load float, ptr %i.o, align 4, !tbaa !352
  %i.t = fsub float %i.r, %i.s
  %i.u = load float, ptr %i.p, align 4, !tbaa !353
  %i.v = fadd float %i.t, %i.u                    ; 3 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.v
  %i.y = select i1 %i.w, float %i.x, float %i.v
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.0133.0.copyload = load <2 x float>, ptr %i.z, align 4
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.2134.0.copyload = load float, ptr %.sroa.2134.0..sroa_idx, align 4
  %.sroa.0131.0.copyload = load <2 x float>, ptr %i.aa, align 4
  %.sroa.2132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.2132.0.copyload = load float, ptr %.sroa.2132.0..sroa_idx, align 4
  %i.ab = fadd float %.sroa.2134.0.copyload, %.sroa.2132.0.copyload ; 2 uses
  %i.ac = fadd <2 x float> %.sroa.0133.0.copyload, %.sroa.0131.0.copyload ; 2 uses
  %i.ad = fmul <2 x float> %i.ac, %i.ac           ; 2 uses
  %shift275 = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop276 = fadd <2 x float> %i.ad, %shift275
  %i.ae = extractelement <2 x float> %foldExtExtBinop276, i64 0
  %i.af = fmul float %i.ab, %i.ab
  %i.ag = fadd float %i.af, %i.ae
  %i.ah = tail call float @sqrtf(float noundef %i.ag) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 276
  %.sroa.0121.0.copyload = load <2 x float>, ptr %i.ai, align 4
  %.sroa.2122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 260
  %.sroa.2122.0.copyload = load float, ptr %.sroa.2122.0..sroa_idx, align 4
  %.sroa.0119.0.copyload = load <2 x float>, ptr %i.aj, align 4
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 284
  %.sroa.2120.0.copyload = load float, ptr %.sroa.2120.0..sroa_idx, align 4
  %i.ak = fadd float %.sroa.2122.0.copyload, %.sroa.2120.0.copyload ; 2 uses
  %i.al = fadd <2 x float> %.sroa.0121.0.copyload, %.sroa.0119.0.copyload ; 2 uses
  %i.am = fmul <2 x float> %i.al, %i.al           ; 2 uses
  %shift278 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop279 = fadd <2 x float> %i.am, %shift278
  %i.an = extractelement <2 x float> %foldExtExtBinop279, i64 0
  %i.ao = fmul float %i.ak, %i.ak
  %i.ap = fadd float %i.ao, %i.an
  %i.aq = tail call float @sqrtf(float noundef %i.ap) #12
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.au = load <2 x float>, ptr %i.as, align 4, !tbaa !10
  %i.av = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.au)
  %i.aw = load float, ptr %i.at, align 4, !tbaa !354
  %i.ax = fsub float %i.av, %i.aw                 ; 2 uses
  %i.ay = fmul float %i.ax, %i.ax
  %i.az = load <2 x float>, ptr %i.ar, align 4, !tbaa !10 ; 2 uses
end_hunk_3
begin_hunk_4_@b3Joint_GetConstraintTorque:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.aa = tail call ptr @b3GetJointSim(ptr noundef nonnull %i.c, ptr noundef %i.z) ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64, !nosanitize !33 ; 2 uses
  %i.ac = and i64 %i.ab, 7, !nosanitize !33
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !33
  %i.ae = and i1 %i.ad, %i.s
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @305, i64 %i.ab) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !136
  switch i32 %i.ag, label %b3GetJointConstraintTorque.exit [
    i32 0, label %bb.i
    i32 8, label %bb.o
    i32 7, label %bb.n
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call { <2 x float>, float } @b3GetParallelJointTorque(ptr noundef nonnull %i.c, ptr noundef %i.aa) #12 ; 2 uses
  %.fca.0.extract23.i = extractvalue { <2 x float>, float } %i.ah, 0
  %.fca.1.extract24.i = extractvalue { <2 x float>, float } %i.ah, 1
  br label %b3GetJointConstraintTorque.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = tail call { <2 x float>, float } @b3GetMotorJointTorque(ptr noundef nonnull %i.c, ptr noundef %i.aa) #12 ; 2 uses
  %.fca.0.extract19.i = extractvalue { <2 x float>, float } %i.ai, 0
  %.fca.1.extract20.i = extractvalue { <2 x float>, float } %i.ai, 1
  br label %b3GetJointConstraintTorque.exit

bb.k:                                             ; preds = %bb.h
  %i.aj = tail call { <2 x float>, float } @b3GetPrismaticJointTorque(ptr noundef nonnull %i.c, ptr noundef %i.aa) #12 ; 2 uses
  %.fca.0.extract15.i = extractvalue { <2 x float>, float } %i.aj, 0
  %.fca.1.extract16.i = extractvalue { <2 x float>, float } %i.aj, 1
  br label %b3GetJointConstraintTorque.exit

bb.l:                                             ; preds = %bb.h
  %i.ak = tail call { <2 x float>, float } @b3GetRevoluteJointTorque(ptr noundef nonnull %i.c, ptr noundef %i.aa) #12 ; 2 uses
  %.fca.0.extract11.i = extractvalue { <2 x float>, float } %i.ak, 0
  %.fca.1.extract12.i = extractvalue { <2 x float>, float } %i.ak, 1
  br label %b3GetJointConstraintTorque.exit

bb.m:                                             ; preds = %bb.h
  %i.al = tail call { <2 x float>, float } @b3GetSphericalJointTorque(ptr noundef nonnull %i.c, ptr noundef %i.aa) #12 ; 2 uses
  %.fca.0.extract7.i = extractvalue { <2 x float>, float } %i.al, 0
  %.fca.1.extract8.i = extractvalue { <2 x float>, float } %i.al, 1
  br label %b3GetJointConstraintTorque.exit

bb.n:                                             ; preds = %bb.h
  %i.am = tail call { <2 x float>, float } @b3GetWeldJointTorque(ptr noundef nonnull %i.c, ptr noundef %i.aa) #12 ; 2 uses
  %.fca.0.extract3.i = extractvalue { <2 x float>, float } %i.am, 0
  %.fca.1.extract4.i = extractvalue { <2 x float>, float } %i.am, 1
  br label %b3GetJointConstraintTorque.exit

bb.o:                                             ; preds = %bb.h
  %i.an = tail call { <2 x float>, float } @b3GetWheelJointTorque(ptr noundef nonnull %i.c, ptr noundef %i.aa) #12 ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.an, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.an, 1
  br label %b3GetJointConstraintTorque.exit

b3GetJointConstraintTorque.exit:                  ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.043.0.i = phi <2 x float> [ %.fca.0.extract7.i, %bb.m ], [ %.fca.0.extract23.i, %bb.i ], [ %.fca.0.extract.i, %bb.o ], [ %.fca.0.extract3.i, %bb.n ], [ %.fca.0.extract19.i, %bb.j ], [ %.fca.0.extract15.i, %bb.k ], [ %.fca.0.extract11.i, %bb.l ], [ zeroinitializer, %bb.h ]
  %.sroa.11.0.i = phi float [ %.fca.1.extract8.i, %bb.m ], [ %.fca.1.extract24.i, %bb.i ], [ %.fca.1.extract.i, %bb.o ], [ %.fca.1.extract4.i, %bb.n ], [ %.fca.1.extract20.i, %bb.j ], [ %.fca.1.extract16.i, %bb.k ], [ %.fca.1.extract12.i, %bb.l ], [ 0.000000e+00, %bb.h ]
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.043.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %.sroa.11.0.i, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define float @b3Joint_GetLinearSeparation(i64 %0) local_unnamed_addr #7 !func_sanitize !123 {
bb.a:
  %.sroa.014.i208 = alloca <2 x float>, align 8   ; 5 uses
  %.sroa.0.i209 = alloca <2 x float>, align 8     ; 5 uses
  %.sroa.014.i = alloca <2 x float>, align 8      ; 5 uses
  %.sroa.0.i = alloca <2 x float>, align 8        ; 5 uses
  %1 = alloca %struct.b3Transform, align 8        ; 8 uses
  %2 = alloca %struct.b3Transform, align 8        ; 8 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 6 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 0, !nosanitize !33 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.d, 1, !nosanitize !33
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.aa = tail call ptr @b3GetJointSim(ptr noundef nonnull %i.c, ptr noundef %i.z) ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.ab = ptrtoint ptr %i.z to i64, !nosanitize !33 ; 2 uses
  %i.ac = and i64 %i.ab, 7, !nosanitize !33
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !33
  %i.ae = and i1 %i.ad, %i.s
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @171, i64 %i.ab) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !139
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %1, ptr noundef nonnull %i.c, i32 noundef %i.ag) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.not = icmp ugt ptr %i.af, inttoptr (i64 -13 to ptr)
  br i1 %.not, label %bb.i, label %bb.j, !prof !34, !nosanitize !33

bb.i:                                             ; preds = %bb.h
  %i.ah = ptrtoint ptr %i.af to i64, !nosanitize !33 ; 2 uses
  %i.ai = add i64 %i.ah, 12, !nosanitize !33
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @172, i64 %i.ah, i64 %i.ai) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !139
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef nonnull %i.c, i32 noundef %i.ak) #12
  %i.al = icmp ne ptr %i.aa, null, !nosanitize !33
  %i.am = ptrtoint ptr %i.aa to i64, !nosanitize !33 ; 2 uses
  %i.an = and i64 %i.am, 3, !nosanitize !33
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !33
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !33
  br i1 %i.ap, label %bb.l, label %bb.k, !prof !35, !nosanitize !33

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @173, i64 %i.am) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.l:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.as = load <2 x float>, ptr %i.ar, align 4    ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.au = load <2 x float>, ptr %i.at, align 4    ; 7 uses
  %.sroa.2.8.vec.extract65.i.i = extractelement <2 x float> %i.au, i64 0
  %.sroa.09.4.vec.extract13.i.i.i = extractelement <2 x float> %i.as, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load <2 x float>, ptr %i.aw, align 8
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.2120.0.copyload = load float, ptr %.sroa.2120.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0119.0.copyload = load <2 x float>, ptr %i.aq, align 4 ; 4 uses
  %.sroa.0.4.vec.extract8.i.i.i = extractelement <2 x float> %.sroa.0119.0.copyload, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !361
  %i.ba = load float, ptr %1, align 8, !tbaa !362
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.av, align 4 ; 4 uses
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bc = load <2 x float>, ptr %i.bb, align 4    ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.be = load <2 x float>, ptr %i.bd, align 4    ; 5 uses
  %.sroa.2.8.vec.extract65.i.i176 = extractelement <2 x float> %i.be, i64 0
  %.sroa.09.4.vec.extract13.i.i.i177 = extractelement <2 x float> %i.bc, i64 1
  %.sroa.0.4.vec.extract8.i.i.i178 = extractelement <2 x float> %.sroa.0111.0.copyload, i64 1 ; 2 uses
  %i.bf = load float, ptr %2, align 8, !tbaa !362
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !361
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load <2 x float>, ptr %i.bi, align 8
  %i.bk = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bl = fmul <2 x float> %i.bk, %.sroa.0119.0.copyload
  %i.bm = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.2120.0.copyload
  %i.bn = fmul float %.sroa.2.8.vec.extract65.i.i, %.sroa.0.4.vec.extract8.i.i.i
  %i.bo = shufflevector <2 x float> %i.au, <2 x float> %i.as, <2 x i32> <i32 0, i32 2> ; 5 uses
  %i.bp = fmul <2 x float> %i.bo, %.sroa.0119.0.copyload ; 2 uses
  %i.bq = shufflevector <2 x float> %.sroa.0119.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.br = insertelement <2 x float> %i.bq, float %.sroa.2120.0.copyload, i64 0 ; 2 uses
  %i.bs = fmul <2 x float> %i.as, %i.br           ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = insertelement <2 x float> %i.bt, float %i.bm, i64 0
  %i.bv = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = insertelement <2 x float> %i.bv, float %i.bn, i64 0
  %i.bx = fsub <2 x float> %i.bu, %i.bw
  %i.by = insertelement <2 x float> %i.bq, float %.sroa.2120.0.copyload, i64 1
  %i.bz = fmul <2 x float> %i.bk, %i.by
  %i.ca = fsub <2 x float> %i.bp, %i.bs
  %i.cb = fadd <2 x float> %i.bl, %i.bx           ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.au, %i.cb
  %i.cc = fadd <2 x float> %i.bz, %i.ca           ; 2 uses
  %shift = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop251 = fmul <2 x float> %i.as, %shift
  %foldExtExtBinop253 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop251
  %i.cd = extractelement <2 x float> %foldExtExtBinop253, i64 0
  %i.ce = fmul float %i.cd, 2.000000e+00
  %i.cf = fadd float %.sroa.0.4.vec.extract8.i.i.i, %i.ce
  %i.cg = fadd float %i.az, %i.cf
  %i.ch = fmul <2 x float> %i.as, %i.cc
  %i.ci = shufflevector <2 x float> %i.as, <2 x float> %i.au, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.cj = fmul <2 x float> %i.ci, %i.cb
  %i.ck = fsub <2 x float> %i.ch, %i.cj
  %i.cl = fmul <2 x float> %i.ck, splat (float 2.000000e+00)
  %i.cm = fadd <2 x float> %i.br, %i.cl
  %i.cn = insertelement <2 x float> %i.ax, float %i.ba, i64 1
  %i.co = fadd <2 x float> %i.cn, %i.cm
  %i.cp = fmul float %.sroa.2112.0.copyload, %.sroa.09.4.vec.extract13.i.i.i177
  %i.cq = fmul float %.sroa.0.4.vec.extract8.i.i.i178, %.sroa.2.8.vec.extract65.i.i176
  %i.cr = shufflevector <2 x float> %i.be, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.cs = fmul <2 x float> %.sroa.0111.0.copyload, %i.cr ; 2 uses
  %i.ct = shufflevector <2 x float> %.sroa.0111.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cu = insertelement <2 x float> %i.ct, float %.sroa.2112.0.copyload, i64 0 ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.bc           ; 2 uses
  %i.cw = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cx = insertelement <2 x float> %i.cw, float %i.cp, i64 0
  %i.cy = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cz = insertelement <2 x float> %i.cy, float %i.cq, i64 0
  %i.da = fsub <2 x float> %i.cx, %i.cz
  %i.db = fsub <2 x float> %i.cs, %i.cv
  %i.dc = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = fmul <2 x float> %.sroa.0111.0.copyload, %i.dc
  %i.de = insertelement <2 x float> %i.ct, float %.sroa.2112.0.copyload, i64 1
  %i.df = fmul <2 x float> %i.de, %i.dc
  %i.dg = fadd <2 x float> %i.dd, %i.da           ; 2 uses
  %i.dh = fadd <2 x float> %i.df, %i.db           ; 2 uses
  %foldExtExtBinop255 = fmul <2 x float> %i.be, %i.dg
  %shift257 = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop258 = fmul <2 x float> %i.bc, %shift257
  %foldExtExtBinop260 = fsub <2 x float> %foldExtExtBinop255, %foldExtExtBinop258
  %i.di = extractelement <2 x float> %foldExtExtBinop260, i64 0
  %i.dj = fmul <2 x float> %i.bc, %i.dh
  %i.dk = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 1, i32 2>
  %i.dl = fmul <2 x float> %i.dk, %i.dg
  %i.dm = fsub <2 x float> %i.dj, %i.dl
  %i.dn = fmul float %i.di, 2.000000e+00
  %i.do = fadd float %.sroa.0.4.vec.extract8.i.i.i178, %i.dn
  %i.dp = fmul <2 x float> %i.dm, splat (float 2.000000e+00)
  %i.dq = fadd <2 x float> %i.cu, %i.dp
  %i.dr = fadd float %i.bh, %i.do
  %i.ds = insertelement <2 x float> %i.bj, float %i.bf, i64 1
  %i.dt = fadd <2 x float> %i.ds, %i.dq
  %i.du = fsub float %i.dr, %i.cg                 ; 12 uses
  %i.dv = fsub <2 x float> %i.dt, %i.co           ; 14 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !136
  switch i32 %i.dx, label %bb.at [
    i32 8, label %bb.ak
    i32 1, label %bb.m
    i32 7, label %bb.ai
    i32 6, label %bb.ah
    i32 4, label %bb.x
    i32 5, label %bb.ag
  ]

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  %i.dz = fmul float %i.du, %i.du
  %i.ea = fmul <2 x float> %i.dv, %i.dv           ; 2 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 1
  %i.ec = fadd float %i.eb, %i.dz
  %i.ed = extractelement <2 x float> %i.ea, i64 0
  %i.ee = fadd float %i.ed, %i.ec
  %i.ef = call float @sqrtf(float noundef %i.ee) #12 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aa, i64 296
  %i.eh = load i8, ptr %i.eg, align 4, !tbaa !363 ; 3 uses
  %i.ei = icmp ult i8 %i.eh, 2
  br i1 %i.ei, label %bb.o, label %bb.n, !prof !35, !nosanitize !33

bb.n:                                             ; preds = %bb.m
  %i.ej = zext i8 %i.eh to i64, !nosanitize !33
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @174, i64 %i.ej) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.o:                                             ; preds = %bb.m
  %i.ek = trunc nuw i8 %i.eh to i1
  br i1 %i.ek, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.el = getelementptr inbounds nuw i8, ptr %i.aa, i64 297
  %i.em = load i8, ptr %i.el, align 1, !tbaa !364 ; 3 uses
  %i.en = icmp ult i8 %i.em, 2
  br i1 %i.en, label %bb.r, label %bb.q, !prof !35, !nosanitize !33

bb.q:                                             ; preds = %bb.p
  %i.eo = zext i8 %i.em to i64, !nosanitize !33
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @175, i64 %i.eo) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.r:                                             ; preds = %bb.p
  %i.ep = trunc nuw i8 %i.em to i1
  br i1 %i.ep, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aa, i64 204
  %i.er = load float, ptr %i.eq, align 4, !tbaa !365 ; 2 uses
  %i.es = fcmp olt float %i.ef, %i.er
  br i1 %i.es, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.et = fsub float %i.er, %i.ef
  br label %bb.at

bb.u:                                             ; preds = %bb.s
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !366 ; 2 uses
  %i.ew = fcmp ogt float %i.ef, %i.ev
  br i1 %i.ew, label %bb.v, label %bb.at

bb.v:                                             ; preds = %bb.u
  %i.ex = fsub float %i.ef, %i.ev
  br label %bb.at

bb.w:                                             ; preds = %bb.o
  %i.ey = load float, ptr %i.dy, align 4, !tbaa !367
  %i.ez = fsub float %i.ef, %i.ey                 ; 3 uses
  %i.fa = fcmp olt float %i.ez, 0.000000e+00
  %i.fb = fneg float %i.ez
  %i.fc = select i1 %i.fa, float %i.fb, float %i.ez
  br label %bb.at

bb.x:                                             ; preds = %bb.l
  %i.fd = fmul <2 x float> %i.bo, zeroinitializer
  %i.fe = fmul <2 x float> %i.ci, <float 0.000000e+00, float 1.000000e+00>
  %i.ff = fmul <2 x float> %i.bo, <float 1.000000e+00, float 0.000000e+00>
  %i.fg = fmul <2 x float> %i.as, <float 0.000000e+00, float 1.000000e+00>
  %i.fh = fsub <2 x float> %i.fe, %i.fd
end_hunk_4
begin_hunk_5_@b3Joint_GetLinearSeparation:bb.a
  %foldExtExtBinop280 = fsub <2 x float> %foldExtExtBinop275, %foldExtExtBinop278
  %i.iz = extractelement <2 x float> %foldExtExtBinop280, i64 0
  %i.ja = fmul <2 x float> %i.as, %i.iy
  %i.jb = fmul <2 x float> %i.ci, %i.iw
  %i.jc = fsub <2 x float> %i.ja, %i.jb
  %i.jd = fmul float %i.iz, 2.000000e+00
  %i.je = fadd float %i.jd, 0.000000e+00          ; 3 uses
  %i.jf = fmul <2 x float> %i.jc, splat (float 2.000000e+00)
  %i.jg = fadd <2 x float> %i.jf, <float 0.000000e+00, float 1.000000e+00> ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i208)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i209)
  %i.jh = extractelement <2 x float> %i.jg, i64 1 ; 2 uses
  %i.ji = call float @llvm.fabs.f32(float %i.jh)
  %or.cond.i211 = fcmp ogt float %i.ji, 5.000000e-01
  br i1 %or.cond.i211, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store float %i.je, ptr %.sroa.014.i208, align 8, !tbaa !368
  %i.jj = fneg float %i.jh
  %.sroa.014.i208.4.i208.4.i208.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i208, i64 4
  store float %i.jj, ptr %.sroa.014.i208.4.i208.4.i208.4..sroa_idx, align 4, !tbaa !369
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store float 0.000000e+00, ptr %.sroa.0.i209, align 8, !tbaa !368
  %i.jk = extractelement <2 x float> %i.jg, i64 0
  %.sroa.0.i209.4.i209.4.i209.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i209, i64 4
  store float %i.jk, ptr %.sroa.0.i209.4.i209.4.i209.4..sroa_idx, align 4, !tbaa !369
  %i.jl = fneg float %i.je
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.05.0.in.i214 = phi ptr [ %.sroa.014.i208, %bb.al ], [ %.sroa.0.i209, %bb.am ]
  %.sroa.5.0.i215 = phi float [ 0.000000e+00, %bb.al ], [ %i.jl, %bb.am ] ; 3 uses
  %.sroa.05.0.i216 = load <2 x float>, ptr %.sroa.05.0.in.i214, align 8, !tbaa !10 ; 3 uses
  %i.jm = fmul <2 x float> %.sroa.05.0.i216, %.sroa.05.0.i216 ; 2 uses
  %shift282 = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop283 = fadd <2 x float> %i.jm, %shift282
  %i.jn = extractelement <2 x float> %foldExtExtBinop283, i64 0
  %i.jo = fmul float %.sroa.5.0.i215, %.sroa.5.0.i215
  %i.jp = fadd float %i.jo, %i.jn                 ; 2 uses
  %i.jq = fcmp ogt float %i.jp, f0x057A0000
  br i1 %i.jq, label %bb.ao, label %b3Perp.exit227

bb.ao:                                            ; preds = %bb.an
  %i.jr = call float @sqrtf(float noundef %i.jp) #12
  %i.js = fdiv float 1.000000e+00, %i.jr          ; 2 uses
  %i.jt = insertelement <2 x float> poison, float %i.js, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x float> %.sroa.05.0.i216, %i.ju
  %i.jw = fmul float %.sroa.5.0.i215, %i.js
  br label %b3Perp.exit227

b3Perp.exit227:                                   ; preds = %bb.an, %bb.ao
  %.sroa.07.0.i.i219 = phi <2 x float> [ %i.jv, %bb.ao ], [ zeroinitializer, %bb.an ] ; 2 uses
  %.sroa.5.0.i.i220 = phi float [ %i.jw, %bb.ao ], [ 0.000000e+00, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i208)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i209)
  %.sroa.03.4.vec.extract.i230 = extractelement <2 x float> %.sroa.07.0.i.i219, i64 1
  %shift285 = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop286 = fmul <2 x float> %shift285, %.sroa.07.0.i.i219
  %i.jx = extractelement <2 x float> %foldExtExtBinop286, i64 0
  %i.jy = fmul float %i.du, %.sroa.03.4.vec.extract.i230
  %i.jz = fadd float %i.jx, %i.jy
  %i.ka = extractelement <2 x float> %i.dv, i64 0
  %i.kb = fmul float %i.ka, %.sroa.5.0.i.i220
  %i.kc = fadd float %i.kb, %i.jz                 ; 3 uses
  %i.kd = fcmp olt float %i.kc, 0.000000e+00
  %i.ke = fneg float %i.kc
  %i.kf = select i1 %i.kd, float %i.ke, float %i.kc ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.aa, i64 390
  %i.kh = load i8, ptr %i.kg, align 2, !tbaa !374 ; 3 uses
  %i.ki = icmp ult i8 %i.kh, 2
  br i1 %i.ki, label %bb.aq, label %bb.ap, !prof !35, !nosanitize !33

bb.ap:                                            ; preds = %b3Perp.exit227
  %i.kj = zext i8 %i.kh to i64, !nosanitize !33
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @177, i64 %i.kj) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.aq:                                            ; preds = %b3Perp.exit227
  %i.kk = trunc nuw i8 %i.kh to i1
  br i1 %i.kk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kl = fmul float %i.je, %i.du
  %i.km = fmul <2 x float> %i.jg, %i.dv           ; 2 uses
  %i.kn = extractelement <2 x float> %i.km, i64 1
  %i.ko = fadd float %i.kn, %i.kl
  %i.kp = extractelement <2 x float> %i.km, i64 0
  %i.kq = fadd float %i.kp, %i.ko                 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  %i.ks = getelementptr inbounds nuw i8, ptr %i.aa, i64 228
  %i.kt = load float, ptr %i.kr, align 4, !tbaa !375 ; 2 uses
  %i.ku = fcmp olt float %i.kq, %i.kt
  %i.kv = fsub float %i.kt, %i.kq
  %.0138 = select i1 %i.ku, float %i.kv, float 0.000000e+00
  %i.kw = load float, ptr %i.ks, align 4, !tbaa !376 ; 2 uses
  %i.kx = fcmp olt float %i.kw, %i.kq
  %i.ky = fsub float %i.kq, %i.kw
  %.1139 = select i1 %i.kx, float %i.ky, float %.0138 ; 2 uses
  %i.kz = fmul float %.1139, %.1139
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.2140 = phi float [ %i.kz, %bb.ar ], [ 0.000000e+00, %bb.aq ]
  %i.la = fmul float %i.kf, %i.kf
  %i.lb = fadd float %i.la, %.2140
  %i.lc = call float @sqrtf(float noundef %i.lb) #12
  br label %bb.at

bb.at:                                            ; preds = %bb.l, %bb.aj, %bb.ai, %bb.t, %bb.v, %bb.w, %bb.u, %bb.r, %bb.as, %bb.ah, %bb.ag, %bb.af
  %.2 = phi float [ 0.000000e+00, %bb.ai ], [ %i.lc, %bb.as ], [ %i.fc, %bb.w ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.u ], [ %i.hq, %bb.af ], [ %i.hx, %bb.ag ], [ %i.ie, %bb.ah ], [ %i.et, %bb.t ], [ %i.ex, %bb.v ], [ %i.io, %bb.aj ], [ 0.000000e+00, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret float %.2
}

; Function Attrs: nounwind uwtable
define float @b3Joint_GetAngularSeparation(i64 %0) local_unnamed_addr #7 !func_sanitize !123 {
bb.a:
  %1 = alloca %struct.b3Transform, align 4        ; 5 uses
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #12 ; 6 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 0, !nosanitize !33 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.d, 1, !nosanitize !33
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #13, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit:                            ; preds = %bb.e
  %i.z = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.aa = tail call ptr @b3GetJointSim(ptr noundef nonnull %i.c, ptr noundef %i.z) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.ab = ptrtoint ptr %i.z to i64, !nosanitize !33 ; 2 uses
  %i.ac = and i64 %i.ab, 7, !nosanitize !33
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !33
  %i.ae = and i1 %i.ad, %i.s
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !35, !nosanitize !33

bb.g:                                             ; preds = %b3GetJointFullId.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @178, i64 %i.ab) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %b3GetJointFullId.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !139
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %1, ptr noundef nonnull %i.c, i32 noundef %i.ag) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.not = icmp ugt ptr %i.af, inttoptr (i64 -13 to ptr)
  br i1 %.not, label %bb.i, label %bb.j, !prof !34, !nosanitize !33

bb.i:                                             ; preds = %bb.h
  %i.ah = ptrtoint ptr %i.af to i64, !nosanitize !33 ; 2 uses
  %i.ai = add i64 %i.ah, 12, !nosanitize !33
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @179, i64 %i.ah, i64 %i.ai) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !139
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef nonnull %i.c, i32 noundef %i.ak) #12
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.an = load <2 x float>, ptr %i.al, align 4    ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load <2 x float>, ptr %i.ao, align 4    ; 6 uses
  %i.aq = load <2 x float>, ptr %i.am, align 4    ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load <2 x float>, ptr %i.ar, align 4    ; 4 uses
  %i.at = shufflevector <2 x float> %i.an, <2 x float> %i.ap, <2 x i32> <i32 1, i32 2>
  %i.au = fmul <2 x float> %i.at, %i.aq
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> %i.as, <2 x i32> <i32 1, i32 2>
  %i.aw = fmul <2 x float> %i.an, %i.av
  %i.ax = fsub <2 x float> %i.au, %i.aw
  %i.ay = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = shufflevector <2 x float> %i.as, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.ba = fmul <2 x float> %i.ay, %i.az
  %i.bb = fadd <2 x float> %i.ax, %i.ba
  %i.bc = shufflevector <2 x float> %i.ap, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.bd = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.be = fmul <2 x float> %i.bc, %i.bd
  %i.bf = fsub <2 x float> %i.bb, %i.be           ; 17 uses
  %i.bg = shufflevector <2 x float> %i.ap, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  %i.bh = fmul <2 x float> %i.bg, %i.bd           ; 2 uses
  %i.bi = shufflevector <2 x float> %i.an, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.bj = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bi, %i.bj           ; 2 uses
  %i.bl = shufflevector <2 x float> %i.as, <2 x float> %i.aq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bm = fmul <2 x float> %i.an, %i.bl
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bo = fadd <2 x float> %i.bn, %i.bk
  %i.bp = fsub <2 x float> %i.bn, %i.bk
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.br = fmul <2 x float> %i.ap, %i.bl
  %i.bs = fadd <2 x float> %i.br, %i.bq           ; 2 uses
  %i.bt = fadd <2 x float> %i.bs, %i.bh           ; 7 uses
  %i.bu = fsub <2 x float> %i.bs, %i.bh           ; 2 uses
  %i.bv = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 0, i32 3> ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !136
  switch i32 %i.bx, label %.thread [
    i32 0, label %bb.k
    i32 7, label %bb.ak
    i32 6, label %bb.y
    i32 5, label %bb.m
    i32 4, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %foldExtExtBinop = fmul <2 x float> %i.bf, %i.bf
  %foldExtExtBinop106 = fmul <2 x float> %i.bv, %i.bv
  %foldExtExtBinop108 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop106
  %i.by = extractelement <2 x float> %foldExtExtBinop108, i64 1
  %i.bz = fadd float %i.by, 0.000000e+00
  %i.ca = call float @sqrtf(float noundef %i.bz) #12
  %i.cb = extractelement <2 x float> %i.bt, i64 0
  %i.cc = call float @b3Atan2(float noundef %i.ca, float noundef %i.cb) #12
  %i.cd = fmul float %i.cc, 2.000000e+00
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %foldExtExtBinop110 = fmul <2 x float> %i.bv, %i.bv
  %i.ce = fmul <2 x float> %i.bf, %i.bf           ; 2 uses
  %foldExtExtBinop112 = fadd <2 x float> %i.ce, %foldExtExtBinop110
  %shift = shufflevector <2 x float> %foldExtExtBinop112, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop114 = fadd <2 x float> %i.ce, %shift
  %i.cf = extractelement <2 x float> %foldExtExtBinop114, i64 0
  %i.cg = call float @sqrtf(float noundef %i.cf) #12
  %i.ch = extractelement <2 x float> %i.bt, i64 0
  %i.ci = call float @b3Atan2(float noundef %i.cg, float noundef %i.ch) #12
  %i.cj = fmul float %i.ci, 2.000000e+00
  br label %.thread

bb.m:                                             ; preds = %bb.j
  %i.ck = icmp ne ptr %i.aa, null, !nosanitize !33
  %i.cl = ptrtoint ptr %i.aa to i64, !nosanitize !33 ; 2 uses
  %i.cm = and i64 %i.cl, 3, !nosanitize !33
  %i.cn = icmp eq i64 %i.cm, 0, !nosanitize !33
  %i.co = and i1 %i.ck, %i.cn, !nosanitize !33
  br i1 %i.co, label %bb.o, label %bb.n, !prof !35, !nosanitize !33

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @180, i64 %i.cl) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.o:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 382
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !377 ; 3 uses
  %i.cr = icmp ult i8 %i.cq, 2
  br i1 %i.cr, label %bb.q, label %bb.p, !prof !35, !nosanitize !33

bb.p:                                             ; preds = %bb.o
  %i.cs = zext i8 %i.cq to i64, !nosanitize !33
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @181, i64 %i.cs) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.q:                                             ; preds = %bb.o
  %i.ct = trunc nuw i8 %i.cq to i1
  br i1 %i.ct, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cu = extractelement <2 x float> %i.bt, i64 0 ; 5 uses
  %i.cv = fcmp olt float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = extractelement <2 x float> %i.bf, i64 0
  %i.cx = fneg float %i.cw
  %i.cy = fneg float %i.cu
  %i.cz = call float @b3Atan2(float noundef %i.cx, float noundef %i.cy) #12
  br label %b3GetTwistAngle.exit

bb.t:                                             ; preds = %bb.r
  %i.da = extractelement <2 x float> %i.bf, i64 0
  %i.db = call float @b3Atan2(float noundef %i.da, float noundef %i.cu) #12
  br label %b3GetTwistAngle.exit

b3GetTwistAngle.exit:                             ; preds = %bb.s, %bb.t
  %i.dc = phi float [ %i.cz, %bb.s ], [ %i.db, %bb.t ]
  %i.dd = fmul float %i.dc, 2.000000e+00          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  %i.df = load float, ptr %i.de, align 4, !tbaa !378
  %i.dg = fcmp olt float %i.dd, %i.df
  br i1 %i.dg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %b3GetTwistAngle.exit
  %foldExtExtBinop116 = fmul <2 x float> %i.bv, %i.bv
  %i.dh = fmul <2 x float> %i.bf, %i.bf           ; 2 uses
  %foldExtExtBinop118 = fadd <2 x float> %i.dh, %foldExtExtBinop116
  %shift120 = shufflevector <2 x float> %foldExtExtBinop118, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop121 = fadd <2 x float> %i.dh, %shift120
  %i.di = extractelement <2 x float> %foldExtExtBinop121, i64 0
  %i.dj = call float @sqrtf(float noundef %i.di) #12
  %i.dk = call float @b3Atan2(float noundef %i.dj, float noundef %i.cu) #12
  %i.dl = fmul float %i.dk, 2.000000e+00
  br label %.thread

bb.v:                                             ; preds = %b3GetTwistAngle.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 244
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !379
  %i.do = fcmp olt float %i.dn, %i.dd
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %foldExtExtBinop123 = fmul <2 x float> %i.bv, %i.bv
  %i.dp = fmul <2 x float> %i.bf, %i.bf           ; 2 uses
  %foldExtExtBinop125 = fadd <2 x float> %i.dp, %foldExtExtBinop123
  %shift127 = shufflevector <2 x float> %foldExtExtBinop125, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop128 = fadd <2 x float> %i.dp, %shift127
  %i.dq = extractelement <2 x float> %foldExtExtBinop128, i64 0
  %i.dr = call float @sqrtf(float noundef %i.dq) #12
  %i.ds = call float @b3Atan2(float noundef %i.dr, float noundef %i.cu) #12
  %i.dt = fmul float %i.ds, 2.000000e+00
  br label %.thread

bb.x:                                             ; preds = %bb.v, %bb.q
  %i.du = shufflevector <2 x float> %i.bf, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dv = fmul <2 x float> %i.du, %i.du           ; 2 uses
  %shift130 = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop131 = fadd <2 x float> %i.dv, %shift130
  %i.dw = extractelement <2 x float> %foldExtExtBinop131, i64 0
  %i.dx = fadd float %i.dw, 0.000000e+00
  %i.dy = call float @sqrtf(float noundef %i.dx) #12
  %i.dz = extractelement <2 x float> %i.bt, i64 0
  %i.ea = call float @b3Atan2(float noundef %i.dy, float noundef %i.dz) #12
  %i.eb = fmul float %i.ea, 2.000000e+00
  br label %.thread

bb.y:                                             ; preds = %bb.j
  %i.ec = icmp ne ptr %i.aa, null, !nosanitize !33
  %i.ed = ptrtoint ptr %i.aa to i64, !nosanitize !33 ; 2 uses
  %i.ee = and i64 %i.ed, 3, !nosanitize !33
  %i.ef = icmp eq i64 %i.ee, 0, !nosanitize !33
  %i.eg = and i1 %i.ec, %i.ef, !nosanitize !33
  br i1 %i.eg, label %bb.aa, label %bb.z, !prof !35, !nosanitize !33

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @182, i64 %i.ed) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.aa:                                            ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aa, i64 442
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !380 ; 3 uses
  %i.ej = icmp ult i8 %i.ei, 2
  br i1 %i.ej, label %bb.ac, label %bb.ab, !prof !35, !nosanitize !33

bb.ab:                                            ; preds = %bb.aa
  %i.ek = zext i8 %i.ei to i64, !nosanitize !33
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @183, i64 %i.ek) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.ac:                                            ; preds = %bb.aa
  %i.el = trunc nuw i8 %i.ei to i1
  br i1 %i.el, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.em = fmul <2 x float> %i.bv, %i.bv
  %i.en = fmul <2 x float> %i.bf, %i.bf
  %i.eo = fadd <2 x float> %i.en, %i.em           ; 2 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0
end_hunk_5
begin_hunk_6_@b3WarmStartJoints_Overflow:bb.a
bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @198, i64 %i.i, i64 %i.m) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i64 %i.m, 0, !nosanitize !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2592
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101  ; 3 uses
  br i1 %.not, label %bb.h, label %bb.i, !prof !34, !nosanitize !33

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @199, i64 %i.i, i64 0) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 2600
  %i.q = load i32, ptr %i.p, align 8, !tbaa !178  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.s = ptrtoint ptr %i.o to i64, !nosanitize !33 ; 3 uses
  %i.t = icmp ne ptr %i.o, null, !nosanitize !33
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %bb.j

._crit_edge:                                      ; preds = %bb.l, %bb.i
  ret void

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.u = mul nuw nsw i64 %indvars.iv, 444
  %i.v = add i64 %i.u, %i.s, !nosanitize !33      ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = xor i1 %i.t, %i.w
  %i.y = icmp uge i64 %i.v, %i.s, !nosanitize !33
  %i.z = and i1 %i.y, %i.x, !nosanitize !33
  br i1 %i.z, label %bb.l, label %bb.k, !prof !35, !nosanitize !33

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @200, i64 %i.s, i64 %i.v) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [444 x i8], ptr %i.o, i64 %indvars.iv
  tail call void @b3WarmStartJoint(ptr noundef %i.aa, ptr noundef nonnull %0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !390
}

; Function Attrs: nounwind uwtable
define hidden void @b3SolveJoints_Overflow(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !392 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !33
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !33  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !33
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !33
  %i.e = and i1 %i.a, %i.d, !nosanitize !33
  br i1 %i.e, label %bb.c, label %bb.b, !prof !35, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @201, i64 %i.b) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177  ; 5 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !33 ; 5 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @202, i64 %i.i) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = add i64 %i.i, 2576, !nosanitize !33      ; 2 uses
  %.not14 = icmp ugt ptr %i.g, inttoptr (i64 -2577 to ptr)
  br i1 %.not14, label %bb.f, label %bb.g, !prof !34, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @203, i64 %i.i, i64 %i.m) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i64 %i.m, 0, !nosanitize !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2592
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101  ; 3 uses
  br i1 %.not, label %bb.h, label %bb.i, !prof !34, !nosanitize !33

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @204, i64 %i.i, i64 0) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 2600
  %i.q = load i32, ptr %i.p, align 8, !tbaa !178  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.s = ptrtoint ptr %i.o to i64, !nosanitize !33 ; 3 uses
  %i.t = icmp ne ptr %i.o, null, !nosanitize !33
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %bb.j

._crit_edge:                                      ; preds = %bb.l, %bb.i
  ret void

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.u = mul nuw nsw i64 %indvars.iv, 444
  %i.v = add i64 %i.u, %i.s, !nosanitize !33      ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = xor i1 %i.t, %i.w
  %i.y = icmp uge i64 %i.v, %i.s, !nosanitize !33
  %i.z = and i1 %i.y, %i.x, !nosanitize !33
  br i1 %i.z, label %bb.l, label %bb.k, !prof !35, !nosanitize !33

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @205, i64 %i.s, i64 %i.v) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [444 x i8], ptr %i.o, i64 %indvars.iv
  tail call void @b3SolveJoint(ptr noundef %i.aa, ptr noundef nonnull %0, i1 noundef zeroext %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !391
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawJoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 !func_sanitize !393 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 15 uses
  %4 = alloca %struct.b3Transform, align 8        ; 15 uses
  %i.a = alloca [24 x i32], align 16              ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = icmp ne ptr %1, null, !nosanitize !33
  %i.d = ptrtoint ptr %1 to i64, !nosanitize !33  ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !33
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !33
  %i.g = and i1 %i.c, %i.f, !nosanitize !33
  br i1 %i.g, label %bb.c, label %bb.b, !prof !35, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @206, i64 %i.d) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3880
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149  ; 4 uses
  %i.j = icmp ne ptr %2, null, !nosanitize !33
  %i.k = ptrtoint ptr %2 to i64, !nosanitize !33  ; 2 uses
  %i.l = and i64 %i.k, 7, !nosanitize !33
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !33
  %i.n = and i1 %i.j, %i.m, !nosanitize !33
  br i1 %i.n, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @207, i64 %i.k) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !139  ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [128 x i8], ptr %i.i, i64 %i.q ; 3 uses
  %i.s = shl nsw i64 %i.q, 7
  %i.t = ptrtoint ptr %i.i to i64, !nosanitize !33 ; 6 uses
  %i.u = add i64 %i.s, %i.t, !nosanitize !33      ; 3 uses
  %i.v = icmp ne ptr %i.i, null, !nosanitize !33  ; 3 uses
  %i.w = icmp eq i64 %i.u, 0
  %i.x = xor i1 %i.v, %i.w
  %i.y = icmp uge i64 %i.u, %i.t, !nosanitize !33
  %i.z = icmp slt i32 %i.p, 0
  %i.aa = xor i1 %i.z, %i.y
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !33
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @208, i64 %i.t, i64 %i.u) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.g:                                             ; preds = %bb.e
  %.not = icmp ugt ptr %i.o, inttoptr (i64 -13 to ptr)
  br i1 %.not, label %bb.h, label %bb.i, !prof !34, !nosanitize !33

bb.h:                                             ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.o to i64, !nosanitize !33 ; 2 uses
  %i.ad = add i64 %i.ac, 12, !nosanitize !33
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @209, i64 %i.ac, i64 %i.ad) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [128 x i8], ptr %i.i, i64 %i.ag ; 3 uses
  %i.ai = shl nsw i64 %i.ag, 7
  %i.aj = add i64 %i.ai, %i.t, !nosanitize !33    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = xor i1 %i.v, %i.ak
  %i.am = icmp uge i64 %i.aj, %i.t, !nosanitize !33
  %i.an = icmp slt i32 %i.af, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !33
  br i1 %i.ap, label %bb.k, label %bb.j, !prof !35, !nosanitize !33

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @210, i64 %i.t, i64 %i.aj) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.k:                                             ; preds = %bb.i
  %i.aq = ptrtoint ptr %i.r to i64, !nosanitize !33 ; 2 uses
  %i.ar = and i64 %i.aq, 7, !nosanitize !33
  %i.as = icmp eq i64 %i.ar, 0, !nosanitize !33
  %i.at = and i1 %i.v, %i.as
  br i1 %i.at, label %bb.m, label %bb.l, !prof !35, !nosanitize !33

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @211, i64 %i.aq) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !131
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.cn, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = ptrtoint ptr %i.ah to i64, !nosanitize !33 ; 2 uses
  %i.ay = and i64 %i.ax, 7, !nosanitize !33
  %i.az = icmp eq i64 %i.ay, 0, !nosanitize !33
  br i1 %i.az, label %bb.p, label %bb.o, !prof !35, !nosanitize !33

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @212, i64 %i.ax) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.p:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !131
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.cn, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = tail call ptr @b3GetJointSim(ptr noundef nonnull %1, ptr noundef nonnull %2) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %1, ptr noundef nonnull %i.r) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %4, ptr noundef nonnull %1, ptr noundef nonnull %i.ah) #12
  %i.be = icmp ne ptr %i.bd, null, !nosanitize !33
  %i.bf = ptrtoint ptr %i.bd to i64, !nosanitize !33 ; 2 uses
  %i.bg = and i64 %i.bf, 3, !nosanitize !33
  %i.bh = icmp eq i64 %i.bg, 0, !nosanitize !33
  %i.bi = and i1 %i.be, %i.bh, !nosanitize !33
  br i1 %i.bi, label %bb.s, label %bb.r, !prof !35, !nosanitize !33

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @213, i64 %i.bf) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.s:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.0109.0.copyload = load <2 x float>, ptr %i.bj, align 4 ; 4 uses
  %.sroa.2110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.2110.0.copyload = load float, ptr %.sroa.2110.0..sroa_idx, align 4 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bl = load <2 x float>, ptr %i.bk, align 4    ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bn = load <2 x float>, ptr %i.bm, align 4    ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0109.0.copyload, %i.bn
  %i.bo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %i.bl, i64 0
  %i.bp = fmul float %.sroa.2110.0.copyload, %.sroa.09.0.vec.extract.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load float, ptr %i.bq, align 8, !tbaa !394 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %.sroa.096.0.copyload = load <2 x float>, ptr %i.bs, align 4 ; 4 uses
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  %.sroa.297.0.copyload = load float, ptr %.sroa.297.0..sroa_idx, align 4 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bu = load <2 x float>, ptr %i.bt, align 4    ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bw = load <2 x float>, ptr %i.bv, align 4    ; 4 uses
  %.sroa.09.0.vec.extract.i.i.i200 = extractelement <2 x float> %i.bu, i64 0
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.by = load float, ptr %i.bx, align 8, !tbaa !394
  %i.bz = fsub float %i.bo, %i.bp
  %i.ca = shufflevector <2 x float> %.sroa.0109.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cb = insertelement <2 x float> %i.ca, float %.sroa.2110.0.copyload, i64 1 ; 2 uses
  %i.cc = fmul <2 x float> %i.cb, %i.bl
  %i.cd = shufflevector <2 x float> %i.bl, <2 x float> %i.bn, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ce = fmul <2 x float> %.sroa.0109.0.copyload, %i.cd
  %i.cf = fsub <2 x float> %i.cc, %i.ce           ; 2 uses
  %i.cg = insertelement <2 x float> %i.ca, float %.sroa.2110.0.copyload, i64 0
  %i.ch = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ci = fmul <2 x float> %i.cg, %i.ch
  %i.cj = fmul <2 x float> %i.cb, %i.ch
  %i.ck = fadd <2 x float> %i.ci, %i.cf           ; 2 uses
  %i.cl = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = insertelement <2 x float> %i.cl, float %i.bz, i64 0
  %i.cn = fadd <2 x float> %i.cj, %i.cm           ; 2 uses
  %i.co = fmul <2 x float> %i.cd, %i.ck
  %i.cp = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.cq = fmul <2 x float> %i.cp, %i.cn
  %i.cr = fsub <2 x float> %i.co, %i.cq
  %i.cs = fmul <2 x float> %i.cr, splat (float 2.000000e+00)
  %i.ct = fadd <2 x float> %.sroa.0109.0.copyload, %i.cs
  %i.cu = load <2 x float>, ptr %3, align 8, !tbaa !10
  %i.cv = fadd <2 x float> %i.cu, %i.ct           ; 7 uses
  %foldExtExtBinop258 = fmul <2 x float> %.sroa.096.0.copyload, %i.bw
  %i.cw = extractelement <2 x float> %foldExtExtBinop258, i64 0
  %i.cx = fmul float %.sroa.297.0.copyload, %.sroa.09.0.vec.extract.i.i.i200
  %i.cy = fsub float %i.cw, %i.cx
  %i.cz = shufflevector <2 x float> %.sroa.096.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.da = insertelement <2 x float> %i.cz, float %.sroa.297.0.copyload, i64 1 ; 2 uses
  %i.db = fmul <2 x float> %i.da, %i.bu
  %i.dc = shufflevector <2 x float> %i.bu, <2 x float> %i.bw, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dd = fmul <2 x float> %.sroa.096.0.copyload, %i.dc
  %i.de = fsub <2 x float> %i.db, %i.dd           ; 2 uses
  %i.df = insertelement <2 x float> %i.cz, float %.sroa.297.0.copyload, i64 0
  %i.dg = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dh = fmul <2 x float> %i.df, %i.dg
  %i.di = fmul <2 x float> %i.da, %i.dg
  %i.dj = fadd <2 x float> %i.dh, %i.de           ; 2 uses
  %i.dk = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = insertelement <2 x float> %i.dk, float %i.cy, i64 0
  %i.dm = fadd <2 x float> %i.di, %i.dl           ; 2 uses
  %i.dn = fmul <2 x float> %i.dc, %i.dj
  %i.do = shufflevector <2 x float> %i.bw, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.dp = fmul <2 x float> %i.do, %i.dm
  %i.dq = fsub <2 x float> %i.dn, %i.dp
  %i.dr = fmul <2 x float> %i.dq, splat (float 2.000000e+00)
  %i.ds = fadd <2 x float> %.sroa.096.0.copyload, %i.dr
  %i.dt = shufflevector <2 x float> %i.bl, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.du = shufflevector <2 x float> %i.cn, <2 x float> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.dv = fmul <2 x float> %i.dt, %i.du
  %i.dw = shufflevector <2 x float> %i.bl, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.dx = shufflevector <2 x float> %i.ck, <2 x float> %i.dj, <2 x i32> <i32 1, i32 3>
  %i.dy = fmul <2 x float> %i.dw, %i.dx
  %i.dz = fsub <2 x float> %i.dv, %i.dy
  %i.ea = fmul <2 x float> %i.dz, splat (float 2.000000e+00)
  %i.eb = insertelement <2 x float> poison, float %.sroa.2110.0.copyload, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %.sroa.297.0.copyload, i64 1
  %i.ed = fadd <2 x float> %i.ec, %i.ea
  %i.ee = load <2 x float>, ptr %4, align 8, !tbaa !10
  %i.ef = fadd <2 x float> %i.ee, %i.ds           ; 7 uses
  %i.eg = insertelement <2 x float> poison, float %i.br, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.by, i64 1
  %i.ei = fadd <2 x float> %i.eh, %i.ed           ; 8 uses
  %i.ej = icmp ne ptr %0, null, !nosanitize !33
  %i.ek = ptrtoint ptr %0 to i64, !nosanitize !33 ; 2 uses
  %i.el = and i64 %i.ek, 7, !nosanitize !33
  %i.em = icmp eq i64 %i.el, 0, !nosanitize !33
  %i.en = and i1 %i.ej, %i.em, !nosanitize !33
  br i1 %i.en, label %bb.u, label %bb.t, !prof !35, !nosanitize !33

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @215, i64 %i.ek) #13, !nosanitize !33
  unreachable, !nosanitize !33

bb.u:                                             ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.eq = load float, ptr %i.eo, align 4, !tbaa !396
  %i.er = load float, ptr %i.ep, align 8, !tbaa !135
  %i.es = fmul float %i.eq, %i.er                 ; 2 uses
  %i.et = fcmp olt float %i.es, f0x38D1B717
  %i.eu = select i1 %i.et, float f0x38D1B717, float %i.es ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !136
  switch i32 %i.ew, label %bb.aq [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.ab
    i32 4, label %bb.al
    i32 5, label %bb.am
    i32 6, label %bb.an
    i32 7, label %bb.ao
    i32 8, label %bb.ap
  ]

bb.v:                                             ; preds = %bb.u
  call void @b3DrawParallelJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.eu) #12
  br label %bb.ba

bb.w:                                             ; preds = %bb.u
  call void @b3DrawDistanceJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4) #12
  br label %bb.ba

bb.x:                                             ; preds = %bb.u
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !397 ; 4 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -8
end_hunk_6
