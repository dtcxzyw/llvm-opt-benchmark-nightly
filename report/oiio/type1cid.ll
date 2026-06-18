inline.NumInlined: 21
inline.NumDeleted: 10
begin_hunk_0_@cid_face_done:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !167
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.aj) #13
  store ptr null, ptr %i.ai, align 8, !tbaa !167
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !106
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.am) #13
  store ptr null, ptr %i.al, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !105
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.ao) #13
  store ptr null, ptr %i.an, align 8, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cid_size_init(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 176
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr i8, ptr %.val, i64 608
  %.val.val14 = load ptr, ptr %i.c, align 8, !tbaa !47 ; 2 uses
  %i.d = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.e = tail call ptr @FT_Get_Module(ptr noundef %.val.val.val, ptr noundef nonnull @.str.8) #13 ; 2 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = icmp ne ptr %.val.val14, null
  %or.cond.i = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %cid_size_get_globals_funcs.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val.val14, align 8, !tbaa !174 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %cid_size_get_globals_funcs.exit.thread, label %cid_size_get_globals_funcs.exit

cid_size_get_globals_funcs.exit:                  ; preds = %bb.b
  %i.i = tail call ptr %i.h(ptr noundef nonnull %i.e) #13, !inline_history !176 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %cid_size_get_globals_funcs.exit.thread, label %bb.c

bb.c:                                             ; preds = %cid_size_get_globals_funcs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.j = load ptr, ptr %0, align 8, !tbaa !177    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 576
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !178
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !179
  %i.o = getelementptr inbounds [336 x i8], ptr %i.l, i64 %i.n
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !180
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !158
  %i.s = call i32 %i.p(ptr noundef %i.r, ptr noundef %i.o, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not13 = icmp eq i32 %i.s, 0
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !182
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !184
  store ptr %i.t, ptr %i.v, align 8, !tbaa !185
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %cid_size_get_globals_funcs.exit.thread

cid_size_get_globals_funcs.exit.thread:           ; preds = %bb.a, %bb.b, %bb.e, %cid_size_get_globals_funcs.exit
  %.0 = phi i32 [ %i.s, %bb.e ], [ 0, %cid_size_get_globals_funcs.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @cid_size_done(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 176
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr i8, ptr %.val, i64 608
  %.val.val8 = load ptr, ptr %i.e, align 8, !tbaa !47 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.g = tail call ptr @FT_Get_Module(ptr noundef %.val.val.val, ptr noundef nonnull @.str.8) #13 ; 2 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = icmp ne ptr %.val.val8, null
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %cid_size_get_globals_funcs.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %.val.val8, align 8, !tbaa !174 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %cid_size_get_globals_funcs.exit.thread, label %cid_size_get_globals_funcs.exit

cid_size_get_globals_funcs.exit:                  ; preds = %bb.c
  %i.k = tail call ptr %i.j(ptr noundef nonnull %i.g) #13, !inline_history !176 ; 2 uses
  %.not7 = icmp eq ptr %i.k, null
  br i1 %.not7, label %cid_size_get_globals_funcs.exit.thread, label %bb.d

bb.d:                                             ; preds = %cid_size_get_globals_funcs.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !187
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !185
  tail call void %i.m(ptr noundef %i.o) #13
  br label %cid_size_get_globals_funcs.exit.thread

cid_size_get_globals_funcs.exit.thread:           ; preds = %bb.b, %bb.c, %bb.d, %cid_size_get_globals_funcs.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !184
  store ptr null, ptr %i.p, align 8, !tbaa !185
  br label %bb.e

bb.e:                                             ; preds = %cid_size_get_globals_funcs.exit.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cid_slot_init(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !197
  %i.f = tail call ptr @FT_Get_Module(ptr noundef %i.e, ptr noundef nonnull @.str.8) #13 ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198
  %i.i = tail call ptr %i.h(ptr noundef nonnull %i.f) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !199
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.i, ptr %i.l, align 8, !tbaa !200
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cid_slot_done(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr null, ptr %i.c, align 8, !tbaa !200
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cid_slot_load_glyph(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %4 = alloca %struct.T1_DecoderRec_, align 8     ; 15 uses
  %5 = alloca %struct.FT_Matrix_, align 8         ; 10 uses
  %6 = alloca %struct.FT_BBox_, align 16          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !202
  %i.g = trunc i64 %i.f to i32
  %.not = icmp ult i32 %2, %i.g
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %3, 1024
  %.not127 = icmp eq i32 %i.h, 0
  %i.i = or i32 %3, 3
  %spec.select = select i1 %.not127, i32 %3, i32 %i.i ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.l = load <2 x i64>, ptr %i.j, align 8, !tbaa !107
  store <2 x i64> %i.l, ptr %i.k, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i16 0, ptr %i.n, align 2, !tbaa !203
  store i16 0, ptr %i.m, align 8, !tbaa !204
  %i.o = and i32 %spec.select, 1                  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = and i32 %spec.select, 3
  %i.r = icmp eq i32 %i.q, 0
  %i.s = zext i1 %i.r to i8                       ; 2 uses
  %i.t = trunc nuw nsw i32 %i.o to i8
  %i.u = xor i8 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store i8 %i.s, ptr %i.v, align 8, !tbaa !205
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 305 ; 2 uses
  store i8 %i.u, ptr %i.w, align 1, !tbaa !207
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 1869968492, ptr %i.x, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !210
  %i.ab = lshr i32 %spec.select, 16
  %i.ac = and i32 %i.ab, 15
  %i.ad = call i32 %i.aa(ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, i8 noundef zeroext %i.s, i32 noundef %i.ac, ptr noundef nonnull @cid_load_glyph) #13 ; 2 uses
  %.not128 = icmp eq i32 %i.ad, 0
  br i1 %.not128, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ae = and i32 %spec.select, 1024              ; 2 uses
  %.lobit = lshr exact i32 %i.ae, 10
  %i.af = trunc nuw nsw i32 %.lobit to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 133
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !212
  %i.ah = call i32 @cid_load_glyph(ptr noundef nonnull %4, i32 noundef %2) ; 2 uses
  %.not130 = icmp eq i32 %i.ah, 0
  br i1 %.not130, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %.not129 = icmp eq i32 %i.ae, 0
  %i.ai = load i8, ptr %i.v, align 8, !tbaa !205
  %i.aj = load i8, ptr %i.w, align 1, !tbaa !207
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !tbaa.struct !223
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 2776
  %.sroa.0.0.copyload = load i64, ptr %i.al, align 8, !tbaa !107 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 2784
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !107 ; 4 uses
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !224
  call void %i.ao(ptr noundef nonnull %4) #13
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !225
  %i.ar = and i32 %i.aq, 1
  %i.as = or disjoint i32 %i.ar, 4
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !225
  br i1 %.not129, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !199 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !226
  %i.ax = call i64 @FT_RoundFix(i64 noundef %i.aw) #13
  %i.ay = ashr i64 %i.ax, 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !227
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !228
  %i.bc = call i64 @FT_RoundFix(i64 noundef %i.bb) #13
  %i.bd = ashr i64 %i.bc, 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !229
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !223
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i64 %.sroa.0.0.copyload, ptr %i.bg, align 8, !tbaa !107
  %.sroa.7.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx56, align 8, !tbaa !107
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i8 1, ptr %i.bh, align 4, !tbaa !230
  br label %.thread

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !228
  %i.bl = call i64 @FT_RoundFix(i64 noundef %i.bk) #13
  %i.bm = ashr i64 %i.bl, 16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !231
  %i.bo = load i64, ptr %i.bj, align 8, !tbaa !228
  %i.bp = call i64 @FT_RoundFix(i64 noundef %i.bo) #13
  %i.bq = ashr i64 %i.bp, 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !232
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !199
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i8 0, ptr %i.bu, align 4, !tbaa !230
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !233
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !234
  %i.bz = sub nsw i64 %i.bw, %i.by
  %i.ca = ashr i64 %i.bz, 16                      ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !235
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !236
  store i32 1869968492, ptr %i.x, align 8, !tbaa !208
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !237
  %i.cf = icmp ult i16 %i.ce, 24
  br i1 %i.cf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cg = load i32, ptr %i.ap, align 8, !tbaa !225
  %i.ch = or i32 %i.cg, 256
  store i32 %i.ch, ptr %i.ap, align 8, !tbaa !225
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ci = load i64, ptr %5, align 8, !tbaa !238
  %i.cj = icmp ne i64 %i.ci, 65536
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp ne i64 %i.cl, 65536
  %or.cond = select i1 %i.cj, i1 true, i1 %i.cm
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = icmp ne i64 %i.co, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.cp
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp ne i64 %i.cr, 0
  %or.cond8 = select i1 %or.cond5, i1 true, i1 %i.cs
  br i1 %or.cond8, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @FT_Outline_Transform(ptr noundef nonnull %i.m, ptr noundef nonnull %5) #13
  %i.ct = load i64, ptr %i.bn, align 8, !tbaa !231
  %i.cu = load i64, ptr %5, align 8, !tbaa !238
  %sext = shl i64 %i.ct, 32
  %i.cv = ashr exact i64 %sext, 32
  %sext136 = shl i64 %i.cu, 32
  %i.cw = ashr exact i64 %sext136, 32
  %i.cx = mul nsw i64 %i.cw, %i.cv                ; 2 uses
  %i.cy = ashr i64 %i.cx, 63
  %i.cz = add nsw i64 %i.cx, 32768
  %i.da = add nsw i64 %i.cz, %i.cy
  %i.db = shl i64 %i.da, 16
  %i.dc = ashr i64 %i.db, 32
  store i64 %i.dc, ptr %i.bn, align 8, !tbaa !231
  %i.dd = load i64, ptr %i.cb, align 8, !tbaa !235
  %i.de = load i64, ptr %i.ck, align 8, !tbaa !239
  %sext138 = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %sext138, 32
  %sext139 = shl i64 %i.de, 32
  %i.dg = ashr exact i64 %sext139, 32
  %i.dh = mul nsw i64 %i.dg, %i.df                ; 2 uses
  %i.di = ashr i64 %i.dh, 63
  %i.dj = add nsw i64 %i.dh, 32768
  %i.dk = add nsw i64 %i.dj, %i.di
  %i.dl = shl i64 %i.dk, 16
  %i.dm = ashr i64 %i.dl, 32                      ; 2 uses
  store i64 %i.dm, ptr %i.cb, align 8, !tbaa !235
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dn = phi i64 [ %i.ca, %bb.h ], [ %i.dm, %bb.i ]
  %i.do = icmp ne i64 %.sroa.0.0.copyload, 0
  %i.dp = icmp ne i64 %.sroa.7.0.copyload, 0
  %or.cond11 = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond11, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @FT_Outline_Translate(ptr noundef nonnull %i.m, i64 noundef %.sroa.0.0.copyload, i64 noundef %.sroa.7.0.copyload) #13
  %i.dq = load i64, ptr %i.bn, align 8, !tbaa !231
  %i.dr = add nsw i64 %i.dq, %.sroa.0.0.copyload
  store i64 %i.dr, ptr %i.bn, align 8, !tbaa !231
  %i.ds = load i64, ptr %i.cb, align 8, !tbaa !235
  %i.dt = add nsw i64 %i.ds, %.sroa.7.0.copyload  ; 2 uses
  store i64 %i.dt, ptr %i.cb, align 8, !tbaa !235
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.du = phi i64 [ %i.dn, %bb.j ], [ %i.dt, %bb.k ]
  %i.dv = icmp ne i8 %i.aj, 0
  %or.cond14 = select i1 %i.p, i1 true, i1 %i.dv
  br i1 %or.cond14, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %7 = load <2 x i64>, ptr %i.k, align 8, !tbaa !107 ; 3 uses
  %i.dw = icmp ne i8 %i.ai, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = icmp ne ptr %i.dy, null
  %or.cond18 = select i1 %i.dw, i1 %i.dz, i1 false
  br i1 %or.cond18, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !240 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !241 ; 4 uses
  %i.ee = icmp sgt i16 %i.ed, 0
  br i1 %i.ee, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.n
  %8 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !242      ; 2 uses
  %10 = shl <2 x i64> %7, splat (i64 32)
  %11 = ashr exact <2 x i64> %10, splat (i64 32)  ; 2 uses
  %12 = zext nneg i16 %i.ed to i64
  %min.iters.check = icmp eq i16 %i.ed, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %.lr.ph.a

scalar.ph.preheader:                              ; preds = %.lr.ph
  %13 = zext nneg i16 %i.ed to i32
  br label %bb.o

.lr.ph.a:                                         ; preds = %.lr.ph, %.lr.ph.a
  %index = phi i64 [ %index.next, %.lr.ph.a ], [ 0, %.lr.ph ] ; 2 uses
  %14 = shl i64 %index, 4
  %i.ef = getelementptr i8, ptr %9, i64 %14       ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ef, align 8
  %15 = shl <2 x i64> %wide.load, splat (i64 32)
  %16 = ashr exact <2 x i64> %15, splat (i64 32)
  %17 = mul nsw <2 x i64> %16, %11                ; 2 uses
  %18 = ashr <2 x i64> %17, splat (i64 63)
  %19 = add nsw <2 x i64> %17, splat (i64 32768)
  %20 = add nsw <2 x i64> %19, %18
  %21 = shl <2 x i64> %20, splat (i64 16)
  %22 = ashr <2 x i64> %21, splat (i64 32)
  store <2 x i64> %22, ptr %i.ef, align 8
  %index.next = add nuw i64 %index, 1             ; 2 uses
  %23 = icmp eq i64 %index.next, %12
  br i1 %23, label %.loopexit, label %.lr.ph.a, !llvm.loop !243

bb.o:                                             ; preds = %scalar.ph.preheader, %bb.o
  %.0121154 = phi ptr [ %i.eh, %bb.o ], [ %9, %scalar.ph.preheader ] ; 3 uses
  %.0122153 = phi i32 [ %i.eg, %bb.o ], [ %13, %scalar.ph.preheader ] ; 2 uses
  %24 = load <2 x i64>, ptr %.0121154, align 8, !tbaa !107
  %25 = shl <2 x i64> %24, splat (i64 32)
  %26 = ashr exact <2 x i64> %25, splat (i64 32)
  %27 = mul nsw <2 x i64> %26, %11                ; 2 uses
  %28 = ashr <2 x i64> %27, splat (i64 63)
  %29 = add nsw <2 x i64> %27, splat (i64 32768)
  %30 = add nsw <2 x i64> %29, %28
  %31 = shl <2 x i64> %30, splat (i64 16)
  %32 = ashr <2 x i64> %31, splat (i64 32)
  store <2 x i64> %32, ptr %.0121154, align 8, !tbaa !107
  %i.eg = add nsw i32 %.0122153, -1
  %i.eh = getelementptr inbounds nuw i8, ptr %.0121154, i64 16
  %i.ei = icmp samesign ugt i32 %.0122153, 1
  br i1 %i.ei, label %bb.o, label %.loopexit, !llvm.loop !246

.loopexit:                                        ; preds = %.lr.ph.a, %bb.o, %bb.n, %bb.m
  %i.ej = load i64, ptr %i.bn, align 8, !tbaa !231
  %sext147 = shl i64 %i.ej, 32
  %i.ek = ashr exact i64 %sext147, 32
  %33 = extractelement <2 x i64> %7, i64 0
  %sext148 = shl i64 %33, 32
  %i.el = ashr exact i64 %sext148, 32
  %i.em = mul nsw i64 %i.ek, %i.el                ; 2 uses
  %i.en = ashr i64 %i.em, 63
  %i.eo = add nsw i64 %i.em, 32768
  %i.ep = add nsw i64 %i.eo, %i.en
  %i.eq = shl i64 %i.ep, 16
  %i.er = ashr i64 %i.eq, 32
  store i64 %i.er, ptr %i.bn, align 8, !tbaa !231
  %sext150 = shl i64 %i.du, 32
  %i.es = ashr exact i64 %sext150, 32
  %34 = extractelement <2 x i64> %7, i64 1
  %sext151 = shl i64 %34, 32
  %i.et = ashr exact i64 %sext151, 32
  %i.eu = mul nsw i64 %i.es, %i.et                ; 2 uses
  %i.ev = ashr i64 %i.eu, 63
  %i.ew = add nsw i64 %i.eu, 32768
  %i.ex = add nsw i64 %i.ew, %i.ev
  %i.ey = shl i64 %i.ex, 16
  %i.ez = ashr i64 %i.ey, 32
  store i64 %i.ez, ptr %i.cb, align 8, !tbaa !235
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %.loopexit
  call void @FT_Outline_Get_CBox(ptr noundef nonnull %i.m, ptr noundef nonnull %6) #13
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !247
  %i.fd = load <2 x i64>, ptr %i.fa, align 16, !tbaa !107
  %i.fe = load <2 x i64>, ptr %6, align 16, !tbaa !107
  %i.ff = load i64, ptr %6, align 16, !tbaa !248
  %i.fg = sub nsw <2 x i64> %i.fd, %i.fe
  store <2 x i64> %i.fg, ptr %i.bi, align 8, !tbaa !107
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ff, ptr %i.fh, align 8, !tbaa !249
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.fc, ptr %i.fi, align 8, !tbaa !250
  %i.fj = and i32 %spec.select, 16
  %.not131 = icmp eq i32 %i.fj, 0
  br i1 %.not131, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fk = load i64, ptr %i.cb, align 8, !tbaa !235
  call void @ft_synthesize_vertical_metrics(ptr noundef nonnull %i.bi, i64 noundef %i.fk) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.thread

bb.s:                                             ; preds = %bb.c
  %i.fl = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !224
  call void %i.fn(ptr noundef nonnull %4) #13
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.e, %bb.b, %bb.r, %bb.s
  %.0120135 = phi i32 [ %i.ah, %bb.s ], [ 6, %bb.a ], [ 0, %bb.e ], [ %i.ad, %bb.b ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.0120135
}

; Function Attrs: nounwind uwtable
define internal i32 @cid_size_request(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !177
  %i.b = tail call i32 @FT_Request_Metrics(ptr noundef %i.a, ptr noundef %1) #13 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %cid_size_get_globals_funcs.exit.thread

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 176
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr i8, ptr %.val, i64 608
  %.val.val10 = load ptr, ptr %i.d, align 8, !tbaa !47 ; 2 uses
  %i.e = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.f = tail call ptr @FT_Get_Module(ptr noundef %.val.val.val, ptr noundef nonnull @.str.8) #13 ; 2 uses
  %i.g = icmp ne ptr %i.f, null
  %i.h = icmp ne ptr %.val.val10, null
  %or.cond.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.c, label %cid_size_get_globals_funcs.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.val.val10, align 8, !tbaa !174 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %cid_size_get_globals_funcs.exit.thread, label %cid_size_get_globals_funcs.exit

cid_size_get_globals_funcs.exit:                  ; preds = %bb.c
  %i.j = tail call ptr %i.i(ptr noundef nonnull %i.f) #13, !inline_history !176 ; 2 uses
  %.not9 = icmp eq ptr %i.j, null
  br i1 %.not9, label %cid_size_get_globals_funcs.exit.thread, label %bb.d

bb.d:                                             ; preds = %cid_size_get_globals_funcs.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !251
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !185
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !252
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !253
  tail call void %i.l(ptr noundef %i.o, i64 noundef %i.q, i64 noundef %i.s, i64 noundef 0, i64 noundef 0) #13
  br label %cid_size_get_globals_funcs.exit.thread

cid_size_get_globals_funcs.exit.thread:           ; preds = %bb.b, %bb.c, %cid_size_get_globals_funcs.exit, %bb.d, %bb.a
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare hidden ptr @ft_service_list_lookup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @cid_get_postscript_name(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !69
  %i.d = icmp eq i8 %i.c, 47
  %spec.select.idx = zext i1 %i.d to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.idx
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @cid_ps_get_font_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 56)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !tbaa.struct !255
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @cid_ps_get_font_extra(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i16, ptr %i.a, align 8, !tbaa !157
  store i16 %i.b, ptr %1, align 2, !tbaa !157
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @cid_get_ros(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  store ptr %i.b, ptr %1, align 8, !tbaa !109
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167
  store ptr %i.d, ptr %2, align 8, !tbaa !109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not14 = icmp eq ptr %3, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load i32, ptr %i.e, align 8, !tbaa !256
  store i32 %i.f, ptr %3, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @cid_get_is_cid(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) #7 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 1, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cid_get_cid_from_glyph_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) #2 {
bb.a:
  %i.a = tail call fastcc i32 @cid_compute_fd_and_offsets(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %. = select i1 %.not, i32 %1, i32 0
  store i32 %., ptr %2, align 4, !tbaa !3
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cid_compute_fd_and_offsets(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113
  %i.g = add i32 %i.f, %i.d                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.i = load i64, ptr %i.h, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.k = load i64, ptr %i.j, align 8, !tbaa !115
  %i.l = add i64 %i.k, %i.i
  %i.m = mul i32 %i.g, %1
  %i.n = zext i32 %i.m to i64
  %i.o = add i64 %i.l, %i.n
  %i.p = tail call i32 @FT_Stream_Seek(ptr noundef %i.b, i64 noundef %i.o) #13 ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.q = shl i32 %i.g, 1
  %i.r = zext i32 %i.q to i64
  %i.s = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.b, i64 noundef %i.r) #13 ; 2 uses
  %.not46 = icmp eq i32 %i.s, 0
  br i1 %.not46, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66   ; 4 uses
  %i.v = load i32, ptr %i.c, align 8, !tbaa !114  ; 6 uses
  %.not10.i = icmp eq i32 %i.v, 0
  br i1 %.not10.i, label %cid_get_offset.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i32 %i.v, 3                     ; 3 uses
  %i.w = icmp ult i32 %i.v, 4
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.v, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi ptr [ %i.u, %.lr.ph.i.preheader.new ], [ %i.an, %.lr.ph.i ] ; 5 uses
  %.0812.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aq, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.y = load i8, ptr %.013.i, align 1, !tbaa !69
  %i.z = zext i8 %i.y to i64
  %i.aa = shl i64 %.0812.i, 16
  %i.ab = shl nuw nsw i64 %i.z, 8
  %i.ac = or disjoint i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i, i64 2
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !69
  %i.af = zext i8 %i.ae to i64
  %i.ag = or disjoint i64 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i, i64 3
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !69
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl i64 %i.ag, 16
  %i.al = shl nuw nsw i64 %i.aj, 8
  %i.am = or disjoint i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !69
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.am, %i.ap            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !257

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.an, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0812.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aq, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod101 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013.i.epil = phi ptr [ %i.as, %.lr.ph.i.epil ], [ %.013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0812.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.0812.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ar = shl i64 %.0812.i.epil, 8
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.epil, i64 1
  %i.at = load i8, ptr %.013.i.epil, align 1, !tbaa !69
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !258

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa99 = phi i64 [ %i.aq, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.av, %.lr.ph.i.epil ]
  %i.aw = zext i32 %i.v to i64
  %scevgep.i = getelementptr i8, ptr %i.u, i64 %i.aw
  br label %cid_get_offset.exit

cid_get_offset.exit:                              ; preds = %bb.c, %._crit_edge.loopexit.i
  %.08.lcssa.i = phi i64 [ 0, %bb.c ], [ %.lcssa99, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.u, %bb.c ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 3 uses
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !113 ; 8 uses
  %.not10.i52 = icmp eq i32 %i.ax, 0
  br i1 %.not10.i52, label %cid_get_offset.exit73, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %cid_get_offset.exit
  %xtraiter102 = and i32 %i.ax, 3                 ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 4
  br i1 %i.ay, label %.lr.ph.i53.epil.preheader, label %.lr.ph.i53.preheader.new

.lr.ph.i53.preheader.new:                         ; preds = %.lr.ph.i53.preheader
  %unroll_iter107 = and i32 %i.ax, -4
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader.new
  %.013.i54 = phi ptr [ %.0.lcssa.i, %.lr.ph.i53.preheader.new ], [ %i.bp, %.lr.ph.i53 ] ; 5 uses
  %.0812.i55 = phi i64 [ 0, %.lr.ph.i53.preheader.new ], [ %i.bs, %.lr.ph.i53 ]
  %niter108 = phi i32 [ 0, %.lr.ph.i53.preheader.new ], [ %niter108.next.3, %.lr.ph.i53 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i54, i64 1
  %i.ba = load i8, ptr %.013.i54, align 1, !tbaa !69
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl i64 %.0812.i55, 16
  %i.bd = shl nuw nsw i64 %i.bb, 8
  %i.be = or disjoint i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i54, i64 2
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !69
  %i.bh = zext i8 %i.bg to i64
  %i.bi = or disjoint i64 %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i54, i64 3
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !69
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl i64 %i.bi, 16
  %i.bn = shl nuw nsw i64 %i.bl, 8
  %i.bo = or disjoint i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i54, i64 4 ; 2 uses
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !69
  %i.br = zext i8 %i.bq to i64
  %i.bs = or disjoint i64 %i.bo, %i.br            ; 3 uses
  %niter108.next.3 = add i32 %niter108, 4         ; 2 uses
  %niter108.ncmp.3 = icmp eq i32 %niter108.next.3, %unroll_iter107
  br i1 %niter108.ncmp.3, label %cid_get_offset.exit62.unr-lcssa, label %.lr.ph.i53, !llvm.loop !257

cid_get_offset.exit62.unr-lcssa:                  ; preds = %.lr.ph.i53
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %cid_get_offset.exit62, label %.lr.ph.i53.epil.preheader

.lr.ph.i53.epil.preheader:                        ; preds = %cid_get_offset.exit62.unr-lcssa, %.lr.ph.i53.preheader
  %.013.i54.epil.init = phi ptr [ %.0.lcssa.i, %.lr.ph.i53.preheader ], [ %i.bp, %cid_get_offset.exit62.unr-lcssa ]
  %.0812.i55.epil.init = phi i64 [ 0, %.lr.ph.i53.preheader ], [ %i.bs, %cid_get_offset.exit62.unr-lcssa ]
  %lcmp.mod106 = icmp ne i32 %xtraiter102, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.i53.epil

.lr.ph.i53.epil:                                  ; preds = %.lr.ph.i53.epil, %.lr.ph.i53.epil.preheader
  %.013.i54.epil = phi ptr [ %i.bu, %.lr.ph.i53.epil ], [ %.013.i54.epil.init, %.lr.ph.i53.epil.preheader ] ; 2 uses
  %.0812.i55.epil = phi i64 [ %i.bx, %.lr.ph.i53.epil ], [ %.0812.i55.epil.init, %.lr.ph.i53.epil.preheader ]
  %epil.iter103 = phi i32 [ %epil.iter103.next, %.lr.ph.i53.epil ], [ 0, %.lr.ph.i53.epil.preheader ]
  %i.bt = shl i64 %.0812.i55.epil, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i54.epil, i64 1
  %i.bv = load i8, ptr %.013.i54.epil, align 1, !tbaa !69
  %i.bw = zext i8 %i.bv to i64
  %i.bx = or disjoint i64 %i.bt, %i.bw            ; 2 uses
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %cid_get_offset.exit62, label %.lr.ph.i53.epil, !llvm.loop !260

cid_get_offset.exit62:                            ; preds = %.lr.ph.i53.epil, %cid_get_offset.exit62.unr-lcssa
  %.lcssa98 = phi i64 [ %i.bs, %cid_get_offset.exit62.unr-lcssa ], [ %i.bx, %.lr.ph.i53.epil ] ; 2 uses
  %i.by = zext i32 %i.ax to i64
  %scevgep.i59 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.by
  %i.bz = zext i32 %i.v to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %scevgep.i59, i64 %i.bz ; 2 uses
  %xtraiter109 = and i32 %i.ax, 3                 ; 3 uses
  %i.cb = icmp ult i32 %i.ax, 4
  br i1 %i.cb, label %.lr.ph.i64.epil.preheader, label %cid_get_offset.exit62.new

cid_get_offset.exit62.new:                        ; preds = %cid_get_offset.exit62
  %unroll_iter114 = and i32 %i.ax, -4
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.lr.ph.i64, %cid_get_offset.exit62.new
  %.013.i65 = phi ptr [ %i.ca, %cid_get_offset.exit62.new ], [ %i.cs, %.lr.ph.i64 ] ; 5 uses
  %.0812.i66 = phi i64 [ 0, %cid_get_offset.exit62.new ], [ %i.cv, %.lr.ph.i64 ]
  %niter115 = phi i32 [ 0, %cid_get_offset.exit62.new ], [ %niter115.next.3, %.lr.ph.i64 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i65, i64 1
  %i.cd = load i8, ptr %.013.i65, align 1, !tbaa !69
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl i64 %.0812.i66, 16
  %i.cg = shl nuw nsw i64 %i.ce, 8
  %i.ch = or disjoint i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i65, i64 2
  %i.cj = load i8, ptr %i.cc, align 1, !tbaa !69
  %i.ck = zext i8 %i.cj to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i65, i64 3
  %i.cn = load i8, ptr %i.ci, align 1, !tbaa !69
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl i64 %i.cl, 16
  %i.cq = shl nuw nsw i64 %i.co, 8
  %i.cr = or disjoint i64 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i65, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cm, align 1, !tbaa !69
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cr, %i.cu            ; 3 uses
  %niter115.next.3 = add i32 %niter115, 4         ; 2 uses
  %niter115.ncmp.3 = icmp eq i32 %niter115.next.3, %unroll_iter114
  br i1 %niter115.ncmp.3, label %cid_get_offset.exit73.loopexit.unr-lcssa, label %.lr.ph.i64, !llvm.loop !257

cid_get_offset.exit73.loopexit.unr-lcssa:         ; preds = %.lr.ph.i64
  %lcmp.mod111.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %cid_get_offset.exit73, label %.lr.ph.i64.epil.preheader

.lr.ph.i64.epil.preheader:                        ; preds = %cid_get_offset.exit73.loopexit.unr-lcssa, %cid_get_offset.exit62
  %.013.i65.epil.init = phi ptr [ %i.ca, %cid_get_offset.exit62 ], [ %i.cs, %cid_get_offset.exit73.loopexit.unr-lcssa ]
  %.0812.i66.epil.init = phi i64 [ 0, %cid_get_offset.exit62 ], [ %i.cv, %cid_get_offset.exit73.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i32 %xtraiter109, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.lr.ph.i64.epil

.lr.ph.i64.epil:                                  ; preds = %.lr.ph.i64.epil, %.lr.ph.i64.epil.preheader
  %.013.i65.epil = phi ptr [ %i.cx, %.lr.ph.i64.epil ], [ %.013.i65.epil.init, %.lr.ph.i64.epil.preheader ] ; 2 uses
  %.0812.i66.epil = phi i64 [ %i.da, %.lr.ph.i64.epil ], [ %.0812.i66.epil.init, %.lr.ph.i64.epil.preheader ]
  %epil.iter110 = phi i32 [ %epil.iter110.next, %.lr.ph.i64.epil ], [ 0, %.lr.ph.i64.epil.preheader ]
  %i.cw = shl i64 %.0812.i66.epil, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i65.epil, i64 1
  %i.cy = load i8, ptr %.013.i65.epil, align 1, !tbaa !69
  %i.cz = zext i8 %i.cy to i64
  %i.da = or disjoint i64 %i.cw, %i.cz            ; 2 uses
  %epil.iter110.next = add i32 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i32 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %cid_get_offset.exit73, label %.lr.ph.i64.epil, !llvm.loop !261

cid_get_offset.exit73:                            ; preds = %cid_get_offset.exit73.loopexit.unr-lcssa, %.lr.ph.i64.epil, %cid_get_offset.exit
  %.08.lcssa.i6079 = phi i64 [ 0, %cid_get_offset.exit ], [ %.lcssa98, %.lr.ph.i64.epil ], [ %.lcssa98, %cid_get_offset.exit73.loopexit.unr-lcssa ] ; 2 uses
  %.08.lcssa.i71 = phi i64 [ 0, %cid_get_offset.exit ], [ %i.cv, %cid_get_offset.exit73.loopexit.unr-lcssa ], [ %i.da, %.lr.ph.i64.epil ] ; 3 uses
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %cid_get_offset.exit73
  store i64 %.08.lcssa.i, ptr %2, align 8, !tbaa !107
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %cid_get_offset.exit73
  %.not48 = icmp eq ptr %3, null
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %.08.lcssa.i6079, ptr %3, align 8, !tbaa !107
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not49 = icmp eq ptr %4, null
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.08.lcssa.i71, ptr %4, align 8, !tbaa !107
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !99
  %i.dd = zext i32 %i.dc to i64
  %.not50 = icmp ult i64 %.08.lcssa.i, %i.dd
  br i1 %.not50, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !68
  %i.dg = icmp ugt i64 %.08.lcssa.i71, %i.df
  br i1 %i.dg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = icmp ugt i64 %.08.lcssa.i6079, %.08.lcssa.i71
  %spec.select = select i1 %i.dh, i32 9, i32 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.0.ph = phi i32 [ 9, %bb.j ], [ 9, %bb.i ], [ %spec.select, %bb.k ]
  tail call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.b) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %bb.l
  %.083 = phi i32 [ %.0.ph, %bb.l ], [ %i.p, %bb.a ], [ %i.s, %bb.b ]
  ret i32 %.083
}

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #5

declare i32 @ps_property_set(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #5

declare i32 @ps_property_get(ptr noundef, ptr noundef, ptr noundef) #5

declare hidden ptr @FT_Get_Module_Interface(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cid_hex_to_binary(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr %.192.val, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call i32 @FT_Stream_Seek(ptr noundef %.192.val, i64 noundef %2) #13 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not78 = icmp eq i64 %1, 0
  br i1 %.not78, label %.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.192.val, i64 8
  br label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %bb.m, %.lr.ph.lr.ph
  %.056.ph71 = phi i8 [ 1, %.lr.ph.lr.ph ], [ %i.ac, %bb.m ] ; 2 uses
  %.058.ph70 = phi ptr [ %i.a, %.lr.ph.lr.ph ], [ %i.ad, %bb.m ]
  %.060.ph68 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.161, %bb.m ] ; 7 uses
  %.063.ph67 = phi ptr [ %i.a, %.lr.ph.lr.ph ], [ %.265.us, %bb.m ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.j
  %.05823.us = phi ptr [ %i.u, %bb.j ], [ %.058.ph70, %.lr.ph.split.us.preheader ] ; 2 uses
  %.06322.us = phi ptr [ %.265.us, %bb.j ], [ %.063.ph67, %.lr.ph.split.us.preheader ] ; 2 uses
  %.not74.us = icmp ult ptr %.05823.us, %.06322.us
  br i1 %.not74.us, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.e = call i64 @FT_Stream_Pos(ptr noundef %.192.val) #13 ; 3 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.g = icmp eq i64 %i.f, %i.e
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 %i.f, %i.e
  %i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 256)
  %i.j = call i32 @FT_Stream_Read(ptr noundef nonnull %.192.val, ptr noundef nonnull %i.a, i64 noundef %i.i) #13 ; 2 uses
  %.not75.us = icmp eq i32 %i.j, 0
  br i1 %.not75.us, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = call i64 @FT_Stream_Pos(ptr noundef nonnull %.192.val) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.m = sub i64 0, %i.e
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  %.265.us = phi ptr [ %i.n, %bb.e ], [ %.06322.us, %.lr.ph.split.us ] ; 2 uses
  %.2.us = phi ptr [ %i.a, %bb.e ], [ %.05823.us, %.lr.ph.split.us ] ; 3 uses
  %i.o = load i8, ptr %.2.us, align 1, !tbaa !69  ; 6 uses
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i8 %i.o, -97
  %or.cond.us = icmp ult i8 %i.s, 6
  br i1 %or.cond.us, label %.split43.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add i8 %i.o, -65
  %or.cond79.us = icmp ult i8 %i.t, 6
  br i1 %or.cond79.us, label %.split48.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.o, label %.thread [
    i8 32, label %bb.j
    i8 9, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
    i8 12, label %bb.j
    i8 0, label %bb.j
    i8 62, label %.loopexit
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.2.us, i64 1
  br label %.lr.ph.split.us

.split.us:                                        ; preds = %bb.f
  %i.v = trunc nuw nsw i32 %i.q to i8
  br label %.loopexit

.split43.us:                                      ; preds = %bb.g
  %i.w = add nsw i8 %i.o, -87
  br label %.loopexit

.split48.us:                                      ; preds = %bb.h
  %i.x = add nsw i8 %i.o, -55
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.split43.us, %.split48.us, %.split.us
  %.057 = phi i8 [ %i.v, %.split.us ], [ %i.w, %.split43.us ], [ %i.x, %.split48.us ], [ 0, %bb.i ] ; 2 uses
  %.not77 = phi i1 [ true, %.split.us ], [ true, %.split43.us ], [ true, %.split48.us ], [ false, %bb.i ]
  %.not76 = icmp eq i8 %.056.ph71, 0
  br i1 %.not76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.y = shl nuw i8 %.057, 4
  br label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.z = load i8, ptr %.060.ph68, align 1, !tbaa !69
  %i.aa = add i8 %i.z, %.057
  %i.ab = getelementptr inbounds nuw i8, ptr %.060.ph68, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink = phi i8 [ %i.aa, %bb.l ], [ %i.y, %bb.k ]
  %.161 = phi ptr [ %i.ab, %bb.l ], [ %.060.ph68, %bb.k ] ; 3 uses
  store i8 %.sink, ptr %.060.ph68, align 1, !tbaa !69
  %i.ac = xor i8 %.056.ph71, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.2.us, i64 1
  %i.ae = icmp ult ptr %.161, %i.c
  %or.cond = select i1 %.not77, i1 %i.ae, i1 false
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %.thread, !llvm.loop !262

.thread:                                          ; preds = %bb.m, %bb.i, %bb.c, %bb.d, %bb.b, %bb.a
  %.3 = phi ptr [ %0, %bb.a ], [ %.060.ph68, %bb.i ], [ %0, %bb.b ], [ %.060.ph68, %bb.d ], [ %.060.ph68, %bb.c ], [ %.161, %bb.m ]
  %.1 = phi i32 [ %i.b, %bb.a ], [ 160, %bb.i ], [ 0, %bb.b ], [ 160, %bb.c ], [ %i.j, %bb.d ], [ 0, %bb.m ]
  %i.af = ptrtoint ptr %.3 to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  store i64 %i.ah, ptr %3, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.1
}

declare hidden void @FT_Stream_OpenMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cid_read_subrs(ptr nofree noundef captures(none) initializes((600, 608)) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !99
  %i.j = zext i32 %i.i to i64
  %i.k = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 16, i64 noundef 0, i64 noundef %i.j, ptr noundef null, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !159
  %i.m = load i32, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.preheader170, label %.loopexit171

.preheader170:                                    ; preds = %bb.a
  %i.n = load i32, ptr %i.h, align 8, !tbaa !99   ; 2 uses
  %.not190 = icmp eq i32 %i.n, 0
  br i1 %.not190, label %.loopexit171, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader170
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread162
  %i.t = phi i32 [ %i.n, %.lr.ph ], [ %i.er, %.thread162 ]
  %indvars.iv215 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next216, %.thread162 ] ; 2 uses
  %.0117186 = phi ptr [ %i.k, %.lr.ph ], [ %i.es, %.thread162 ] ; 3 uses
  %.0120185 = phi i32 [ 0, %.lr.ph ], [ %.3167, %.thread162 ] ; 5 uses
  %.0122184 = phi ptr [ null, %.lr.ph ], [ %.3125166, %.thread162 ] ; 4 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw [336 x i8], ptr %i.u, i64 %indvars.iv215 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !263
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 312
  %i.z = load i32, ptr %i.y, align 8, !tbaa !124  ; 6 uses
  %.not135 = icmp eq i32 %i.z, 0
  br i1 %.not135, label %.thread162, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.z, 1                         ; 6 uses
  %i.ab = icmp ugt i32 %i.aa, %.0120185
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ac = and i32 %i.z, -4
  %i.ad = add i32 %i.ac, 4                        ; 3 uses
  %.not136 = icmp ugt i32 %i.ad, %.0120185
  br i1 %.not136, label %bb.e, label %.thread155.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ae = zext i32 %.0120185 to i64
  %i.af = zext i32 %i.ad to i64
  %i.ag = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 8, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef %.0122184, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !3
  %.not137 = icmp eq i32 %i.ah, 0
  br i1 %.not137, label %bb.f, label %.thread155

bb.f:                                             ; preds = %bb.e, %bb.c
  %.2124 = phi ptr [ %i.ag, %bb.e ], [ %.0122184, %bb.c ] ; 23 uses
  %.2 = phi i32 [ %i.ad, %bb.e ], [ %.0120185, %bb.c ]
  %i.ai = load i64, ptr %i.p, align 8, !tbaa !112
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 320
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !126
  %i.al = add i64 %i.ak, %i.ai
  %i.am = call i32 @FT_Stream_Seek(ptr noundef %i.e, i64 noundef %i.al) #13 ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !3
  %.not138 = icmp eq i32 %i.am, 0
  br i1 %.not138, label %bb.g, label %.thread155

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 328 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !125
  %i.ap = mul i32 %i.ao, %i.aa
  %i.aq = zext i32 %i.ap to i64
  %i.ar = call i32 @FT_Stream_EnterFrame(ptr noundef %i.e, i64 noundef %i.aq) #13 ; 2 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !3
  %.not139 = icmp eq i32 %i.ar, 0
  br i1 %.not139, label %bb.h, label %.thread155

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr %i.an, align 8, !tbaa !125 ; 5 uses
  %.not10.i = icmp eq i32 %i.as, 0
  %i.at = zext i32 %i.as to i64
  br i1 %.not10.i, label %cid_get_offset.exit.us.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %bb.h
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !66
  %umax = call i32 @llvm.umax.i32(i32 %i.aa, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  %xtraiter = and i32 %i.as, 3                    ; 3 uses
  %i.av = icmp ult i32 %i.as, 4
  %unroll_iter = and i32 %i.as, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod245 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.i.preheader

cid_get_offset.exit.us.preheader:                 ; preds = %bb.h
  %i.aw = call i32 @llvm.umax.i32(i32 %i.aa, i32 1)
  %umax199 = zext i32 %i.aw to i64
  %i.ax = shl nuw nsw i64 %umax199, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.2124, i8 0, i64 %i.ax, i1 false), !tbaa !107
  br label %.split180.us

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %._crit_edge.loopexit.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader.preheader ], [ %indvars.iv.next, %._crit_edge.loopexit.i ] ; 2 uses
  %.0177 = phi ptr [ %i.au, %.lr.ph.i.preheader.preheader ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 3 uses
  br i1 %i.av, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.013.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.0177, %.lr.ph.i.preheader ] ; 5 uses
  %.0812.i = phi i64 [ %i.br, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.az = load i8, ptr %.013.i, align 1, !tbaa !69
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl i64 %.0812.i, 16
  %i.bc = shl nuw nsw i64 %i.ba, 8
  %i.bd = or disjoint i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i, i64 2
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !69
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i, i64 3
  %i.bj = load i8, ptr %i.be, align 1, !tbaa !69
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl i64 %i.bh, 16
  %i.bm = shl nuw nsw i64 %i.bk, 8
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !69
  %i.bq = zext i8 %i.bp to i64
  %i.br = or disjoint i64 %i.bn, %i.bq            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !257

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi ptr [ %.0177, %.lr.ph.i.preheader ], [ %i.bo, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0812.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.br, %._crit_edge.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013.i.epil = phi ptr [ %i.bt, %.lr.ph.i.epil ], [ %.013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0812.i.epil = phi i64 [ %i.bw, %.lr.ph.i.epil ], [ %.0812.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bs = shl i64 %.0812.i.epil, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.epil, i64 1
  %i.bu = load i8, ptr %.013.i.epil, align 1, !tbaa !69
  %i.bv = zext i8 %i.bu to i64
  %i.bw = or disjoint i64 %i.bs, %i.bv            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !264

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa243 = phi i64 [ %i.br, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bw, %.lr.ph.i.epil ]
  %scevgep.i = getelementptr i8, ptr %.0177, i64 %i.at
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %indvars.iv
  store i64 %.lcssa243, ptr %i.bx, align 8, !tbaa !107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.split180.us, label %.lr.ph.i.preheader, !llvm.loop !265

.split180.us:                                     ; preds = %._crit_edge.loopexit.i, %cid_get_offset.exit.us.preheader
  call void @FT_Stream_ExitFrame(ptr noundef %i.e) #13
  %.pre = load i64, ptr %.2124, align 8, !tbaa !107 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.by = add i32 %.1127181, 1                    ; 2 uses
  %.not141 = icmp ugt i32 %i.by, %i.z
  br i1 %.not141, label %bb.k, label %bb.j, !llvm.loop !266

bb.j:                                             ; preds = %.split180.us, %bb.i
  %i.bz = phi i64 [ %.pre, %.split180.us ], [ %i.cc, %bb.i ]
  %.1127181 = phi i32 [ 1, %.split180.us ], [ %i.by, %bb.i ] ; 2 uses
  %i.ca = zext i32 %.1127181 to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !107 ; 2 uses
  %i.cd = icmp ugt i64 %i.bz, %i.cc
  br i1 %i.cd, label %.thread155.sink.split, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ce = zext i32 %i.z to i64                    ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !107 ; 2 uses
  %i.ch = load i64, ptr %i.r, align 8, !tbaa !68
  %i.ci = load i64, ptr %i.p, align 8, !tbaa !112
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp ugt i64 %i.cg, %i.cj
  br i1 %i.ck, label %.thread155.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = sub i64 %i.cg, %.pre                    ; 2 uses
  %i.cm = zext i32 %i.aa to i64
  %i.cn = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 8, i64 noundef 0, i64 noundef %i.cm, ptr noundef null, ptr noundef nonnull %i.a) #13
  %i.co = getelementptr inbounds nuw i8, ptr %.0117186, i64 8 ; 5 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !160
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !3
  %.not142 = icmp eq i32 %i.cp, 0
  br i1 %.not142, label %bb.m, label %.thread155

bb.m:                                             ; preds = %bb.l
  %i.cq = call ptr @ft_mem_qalloc(ptr noundef %i.c, i64 noundef %i.cl, ptr noundef nonnull %i.a) #13
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !160
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !109
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !3
  %.not143 = icmp eq i32 %i.cs, 0
  br i1 %.not143, label %bb.n, label %.thread155

bb.n:                                             ; preds = %bb.m
  %i.ct = load i64, ptr %i.p, align 8, !tbaa !112
  %i.cu = load i64, ptr %.2124, align 8, !tbaa !107
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.e, i64 noundef %i.cv) #13 ; 2 uses
  store i32 %i.cw, ptr %i.a, align 4, !tbaa !3
  %.not144 = icmp eq i32 %i.cw, 0
  br i1 %.not144, label %bb.o, label %.thread155

bb.o:                                             ; preds = %bb.n
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !109
  %i.cz = call i32 @FT_Stream_Read(ptr noundef nonnull %i.e, ptr noundef %i.cy, i64 noundef %i.cl) #13 ; 2 uses
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !3
  %.not145 = icmp eq i32 %i.cz, 0
  br i1 %.not145, label %.preheader169, label %.thread155

.preheader169:                                    ; preds = %bb.o
  %i.da = load ptr, ptr %i.co, align 8, !tbaa !160 ; 6 uses
  %umax206 = call i32 @llvm.umax.i32(i32 %i.aa, i32 2) ; 2 uses
  %wide.trip.count207 = zext i32 %umax206 to i64
  %.pre221 = load i64, ptr %.2124, align 8, !tbaa !107 ; 2 uses
  %.pre222 = load ptr, ptr %i.da, align 8, !tbaa !109 ; 2 uses
  %i.db = add nsw i64 %wide.trip.count207, -1     ; 2 uses
  %xtraiter246 = and i64 %i.db, 3                 ; 3 uses
  %i.dc = add i32 %umax206, -2
  %i.dd = icmp ult i32 %i.dc, 3
  br i1 %i.dd, label %.epil.preheader, label %.preheader169.new

.preheader169.new:                                ; preds = %.preheader169
  %unroll_iter252 = and i64 %i.db, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader169.new
  %i.de = phi ptr [ %.pre222, %.preheader169.new ], [ %i.dy, %bb.p ]
  %i.df = phi i64 [ %.pre221, %.preheader169.new ], [ %i.dw, %bb.p ]
  %indvars.iv203 = phi i64 [ 1, %.preheader169.new ], [ %indvars.iv.next204.3, %bb.p ] ; 6 uses
  %niter253 = phi i64 [ 0, %.preheader169.new ], [ %niter253.next.3, %bb.p ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %indvars.iv203
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !107 ; 2 uses
  %i.di = sub i64 %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv203
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !109
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %indvars.iv.next204
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !107 ; 2 uses
  %i.dn = sub i64 %i.dm, %i.dh
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next204
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !109
  %indvars.iv.next204.1 = add nuw nsw i64 %indvars.iv203, 2 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %indvars.iv.next204.1
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !107 ; 2 uses
  %i.ds = sub i64 %i.dr, %i.dm
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next204.1
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !109
  %indvars.iv.next204.2 = add nuw nsw i64 %indvars.iv203, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %indvars.iv.next204.2
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !107 ; 3 uses
  %i.dx = sub i64 %i.dw, %i.dr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next204.2
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !109
  %indvars.iv.next204.3 = add nuw nsw i64 %indvars.iv203, 4 ; 2 uses
  %niter253.next.3 = add i64 %niter253, 4         ; 2 uses
  %niter253.ncmp.3 = icmp eq i64 %niter253.next.3, %unroll_iter252
  br i1 %niter253.ncmp.3, label %.unr-lcssa, label %bb.p, !llvm.loop !267

.unr-lcssa:                                       ; preds = %bb.p
  %lcmp.mod250.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod250.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader169
  %.epil.init = phi ptr [ %.pre222, %.preheader169 ], [ %i.dy, %.unr-lcssa ]
  %.epil.init249 = phi i64 [ %.pre221, %.preheader169 ], [ %i.dw, %.unr-lcssa ]
  %indvars.iv203.epil.init = phi i64 [ 1, %.preheader169 ], [ %indvars.iv.next204.3, %.unr-lcssa ]
  %lcmp.mod251 = icmp ne i64 %xtraiter246, 0
  call void @llvm.assume(i1 %lcmp.mod251)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %i.ea = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.ef, %bb.q ]
  %i.eb = phi i64 [ %.epil.init249, %.epil.preheader ], [ %i.ed, %bb.q ]
  %indvars.iv203.epil = phi i64 [ %indvars.iv203.epil.init, %.epil.preheader ], [ %indvars.iv.next204.epil, %bb.q ] ; 3 uses
  %epil.iter247 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter247.next, %bb.q ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %indvars.iv203.epil
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !107 ; 2 uses
  %i.ee = sub i64 %i.ed, %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv203.epil
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !109
  %indvars.iv.next204.epil = add nuw nsw i64 %indvars.iv203.epil, 1
  %epil.iter247.next = add i64 %epil.iter247, 1   ; 2 uses
  %epil.iter247.cmp.not = icmp eq i64 %epil.iter247.next, %xtraiter246
  br i1 %epil.iter247.cmp.not, label %.epilog-lcssa, label %bb.q, !llvm.loop !268

.epilog-lcssa:                                    ; preds = %bb.q, %.unr-lcssa
  %i.eh = icmp sgt i32 %i.x, -1
  br i1 %i.eh, label %.preheader168, label %.loopexit

.preheader168:                                    ; preds = %.epilog-lcssa, %.preheader168
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %.preheader168 ], [ 0, %.epilog-lcssa ] ; 3 uses
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %indvars.iv.next210
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !107
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.2124, i64 %indvars.iv209
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !107
  %i.em = sub i64 %i.ej, %i.el
  %i.en = load ptr, ptr %i.s, align 8, !tbaa !269
  %i.eo = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv209
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !109
  call void %i.en(ptr noundef %i.eq, i64 noundef %i.em, i16 noundef zeroext 4330) #13
  %exitcond214.not = icmp eq i64 %indvars.iv.next210, %i.ce
  br i1 %exitcond214.not, label %.loopexit, label %.preheader168, !llvm.loop !270

.loopexit:                                        ; preds = %.preheader168, %.epilog-lcssa
  store i32 %i.z, ptr %.0117186, align 8, !tbaa !271
  %.pre223 = load i32, ptr %i.h, align 8, !tbaa !99
  br label %.thread162

.thread162:                                       ; preds = %.loopexit, %bb.b
  %i.er = phi i32 [ %i.t, %bb.b ], [ %.pre223, %.loopexit ] ; 2 uses
  %.3167 = phi i32 [ %.0120185, %bb.b ], [ %.2, %.loopexit ]
  %.3125166 = phi ptr [ %.0122184, %bb.b ], [ %.2124, %.loopexit ] ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0117186, i64 16
  %i.et = zext i32 %i.er to i64
  %i.eu = icmp samesign ult i64 %indvars.iv.next216, %i.et
  br i1 %i.eu, label %bb.b, label %.loopexit171, !llvm.loop !272

.loopexit171:                                     ; preds = %.thread162, %.preheader170, %.thread155, %._crit_edge, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ %.3125159, %._crit_edge ], [ %.3125159, %.thread155 ], [ null, %.preheader170 ], [ %.3125166, %.thread162 ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %.4) #13
  %i.ev = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.ev

.thread155.sink.split:                            ; preds = %bb.k, %bb.d, %bb.j
  %.sink = phi i32 [ 3, %bb.j ], [ 3, %bb.k ], [ 160, %bb.d ]
  %.3125159.ph = phi ptr [ %.2124, %bb.j ], [ %.2124, %bb.k ], [ %.0122184, %bb.d ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !3
  br label %.thread155

.thread155:                                       ; preds = %bb.e, %bb.n, %bb.o, %bb.m, %bb.g, %bb.l, %bb.f, %.thread155.sink.split
  %.3125159 = phi ptr [ %.3125159.ph, %.thread155.sink.split ], [ %.2124, %bb.m ], [ %.2124, %bb.o ], [ %.2124, %bb.n ], [ %i.ag, %bb.e ], [ %.2124, %bb.f ], [ %.2124, %bb.l ], [ %.2124, %bb.g ] ; 2 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !159 ; 3 uses
  %.not147 = icmp eq ptr %i.ew, null
  br i1 %.not147, label %.loopexit171, label %.preheader

.preheader:                                       ; preds = %.thread155
  %i.ex = load i32, ptr %i.h, align 8, !tbaa !99
  %.not191 = icmp eq i32 %i.ex, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph189

.lr.ph189:                                        ; preds = %.preheader, %bb.s
  %i.ey = phi ptr [ %i.fi, %bb.s ], [ %i.ew, %.preheader ]
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %bb.s ], [ 0, %.preheader ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %indvars.iv218
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !160 ; 2 uses
  %.not148 = icmp eq ptr %i.fb, null
  br i1 %.not148, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph189
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !109
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.fc) #13
  %i.fd = load ptr, ptr %i.l, align 8, !tbaa !159
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %indvars.iv218
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !160 ; 2 uses
  store ptr null, ptr %i.fg, align 8, !tbaa !109
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph189, %bb.r
  %i.fh = phi ptr [ null, %.lr.ph189 ], [ %i.fg, %bb.r ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.fh) #13
  %i.fi = load ptr, ptr %i.l, align 8, !tbaa !159 ; 3 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %indvars.iv218
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr null, ptr %i.fk, align 8, !tbaa !160
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.fl = load i32, ptr %i.h, align 8, !tbaa !99
  %i.fm = zext i32 %i.fl to i64
  %i.fn = icmp samesign ult i64 %indvars.iv.next219, %i.fm
  br i1 %i.fn, label %.lr.ph189, label %._crit_edge, !llvm.loop !273

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %i.fo = phi ptr [ %i.ew, %.preheader ], [ %i.fi, %bb.s ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef nonnull %i.fo) #13
  store ptr null, ptr %i.l, align 8, !tbaa !159
  br label %.loopexit171
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare hidden i32 @FT_Stream_Read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare hidden i32 @FT_Stream_ExtractFrame(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @FT_Stream_ReleaseFrame(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @parse_fd_array(ptr nofree noundef captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.h = tail call i64 %i.g(ptr noundef %1) #13   ; 2 uses
  %or.cond = icmp ugt i64 %i.h, 2147483647
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = udiv i64 %i.j, 100
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 336, i64 noundef 0, i64 noundef %spec.select, ptr noundef null, ptr noundef nonnull %i.a) #13 ; 4 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !100
  %i.o = load i32, ptr %i.a, align 4, !tbaa !3
  %.not34 = icmp eq i32 %i.o, 0
  br i1 %.not34, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %spec.select to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 %i.p, ptr %i.q, align 8, !tbaa !99
  %.not36 = icmp eq i64 %spec.select, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %spec.select, 1
  %i.r = icmp eq i64 %spec.select, 1
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [336 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i32 7, ptr %i.t, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 124
  store i32 1, ptr %i.u, align 4, !tbaa !123
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 4, ptr %i.v, align 4, !tbaa !263
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  store i64 3932, ptr %i.w, align 8, !tbaa !274
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store i64 2596864, ptr %i.x, align 8, !tbaa !275
  %i.y = getelementptr inbounds nuw [336 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 456
  store i32 7, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 460
  store i32 1, ptr %i.aa, align 4, !tbaa !123
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 340
  store i32 4, ptr %i.ab, align 4, !tbaa !263
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 528
  store i64 3932, ptr %i.ac, align 8, !tbaa !274
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 448
  store i64 2596864, ptr %i.ad, align 8, !tbaa !275
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !276

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %spec.select to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.ae = getelementptr inbounds nuw [336 x i8], ptr %i.n, i64 %indvars.iv.epil.init ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i32 7, ptr %i.af, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 124
  store i32 1, ptr %i.ag, align 4, !tbaa !123
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 4, ptr %i.ah, align 4, !tbaa !263
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  store i64 3932, ptr %i.ai, align 8, !tbaa !274
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i64 2596864, ptr %i.aj, align 8, !tbaa !275
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cid_parse_font_matrix(ptr nofree noundef captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load i32, ptr %i.d, align 8, !tbaa !90
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178
  %i.i = zext i32 %i.c to i64
  %i.j = getelementptr inbounds nuw [336 x i8], ptr %i.h, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 264 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !277
  %i.o = call i32 %i.n(ptr noundef nonnull %1, i32 noundef 6, ptr noundef nonnull %i.a, i32 noundef 3) #13
  %i.p = icmp slt i32 %i.o, 6
  br i1 %i.p, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !107  ; 3 uses
  %i.s = call i64 @llvm.abs.i64(i64 %i.r, i1 true) ; 7 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.s, 65536
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call i64 @FT_DivFix(i64 noundef 1000, i64 noundef %i.s) #13
  %i.v = trunc i64 %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 %i.v, ptr %i.w, align 8, !tbaa !153
  %i.x = load i64, ptr %i.a, align 16, !tbaa !107
  %i.y = call i64 @FT_DivFix(i64 noundef %i.x, i64 noundef %i.s) #13
  store i64 %i.y, ptr %i.a, align 16, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !107
  %i.ab = call i64 @FT_DivFix(i64 noundef %i.aa, i64 noundef %i.s) #13
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !107
  %i.ae = call i64 @FT_DivFix(i64 noundef %i.ad, i64 noundef %i.s) #13
  store i64 %i.ae, ptr %i.ac, align 16, !tbaa !107
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 16, !tbaa !107
  %i.ah = call i64 @FT_DivFix(i64 noundef %i.ag, i64 noundef %i.s) #13
  store i64 %i.ah, ptr %i.af, align 16, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !107
  %i.ak = call i64 @FT_DivFix(i64 noundef %i.aj, i64 noundef %i.s) #13
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !107
  %i.al = load i64, ptr %i.q, align 8, !tbaa !107
  %i.am = icmp slt i64 %i.al, 0
  %i.an = select i1 %i.am, i64 -65536, i64 65536  ; 2 uses
  store i64 %i.an, ptr %i.q, align 8, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = phi i64 [ %i.an, %bb.e ], [ %i.r, %bb.d ]
  %i.ap = load i64, ptr %i.a, align 16, !tbaa !107
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !238
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !278
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.au = load i64, ptr %i.at, align 16, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  store i64 %i.au, ptr %i.av, align 8, !tbaa !279
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  store i64 %i.ao, ptr %i.aw, align 8, !tbaa !239
  %i.ax = call zeroext i8 @FT_Matrix_Check(ptr noundef nonnull %i.k) #13
  %.not30 = icmp eq i8 %i.ax, 0
  br i1 %.not30, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 3, ptr %i.ay, align 8, !tbaa !81
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ba = load i64, ptr %i.az, align 16, !tbaa !107
  %i.bb = ashr i64 %i.ba, 16
  store i64 %i.bb, ptr %i.l, align 8, !tbaa !280
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !107
  %i.be = ashr i64 %i.bd, 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !281
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.c, %bb.b, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_expansion_factor(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [336 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !282
  %i.l = tail call i64 %i.k(ptr noundef nonnull %1, i32 noundef 0) #13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  store i64 %i.l, ptr %i.m, align 8, !tbaa !283
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  store i64 %i.l, ptr %i.n, align 8, !tbaa !274
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @parse_font_name(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret void
}

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #5

declare hidden zeroext i8 @FT_Matrix_Check(ptr noundef) local_unnamed_addr #5

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @FT_Get_Module(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @cid_load_glyph(ptr noundef %0, i32 noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 17 uses
  %2 = alloca %struct.FT_Data_, align 8           ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.PS_Decoder_, align 8        ; 6 uses
  %4 = alloca %struct.CFF_SubFontRec_, align 8    ; 4 uses
  %5 = alloca %struct.FT_Incremental_MetricsRec_, align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !284  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !285
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !286  ; 7 uses
  %i.q = icmp ne ptr %i.p, null                   ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !290
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !294
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !296
  %i.v = call i32 %i.s(ptr noundef %i.u, i32 noundef %1, ptr noundef nonnull %2) #13 ; 2 uses
  store i32 %i.v, ptr %i.b, align 4, !tbaa !3
  %.not111 = icmp eq i32 %i.v, 0
  br i1 %.not111, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !297  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 552 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !114  ; 6 uses
  %i.aa = icmp ult i32 %i.x, %i.z
  br i1 %i.aa, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq i32 %i.z, 0
  br i1 %.not10.i, label %cid_get_offset.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ab = load ptr, ptr %2, align 8, !tbaa !299   ; 2 uses
  %xtraiter = and i32 %i.z, 3                     ; 3 uses
  %i.ac = icmp ult i32 %i.z, 4
  br i1 %i.ac, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.z, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi ptr [ %i.ab, %.lr.ph.i.preheader.new ], [ %i.at, %.lr.ph.i ] ; 5 uses
  %.0812.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aw, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.ae = load i8, ptr %.013.i, align 1, !tbaa !69
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl i64 %.0812.i, 16
  %i.ah = shl nuw nsw i64 %i.af, 8
  %i.ai = or disjoint i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i, i64 2
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !69
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i, i64 3
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !69
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl i64 %i.am, 16
  %i.ar = shl nuw nsw i64 %i.ap, 8
  %i.as = or disjoint i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.au = load i8, ptr %i.an, align 1, !tbaa !69
  %i.av = zext i8 %i.au to i64
  %i.aw = or disjoint i64 %i.as, %i.av            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %cid_get_offset.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !257

cid_get_offset.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cid_get_offset.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %cid_get_offset.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi ptr [ %i.ab, %.lr.ph.i.preheader ], [ %i.at, %cid_get_offset.exit.loopexit.unr-lcssa ]
  %.0812.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aw, %cid_get_offset.exit.loopexit.unr-lcssa ]
  %lcmp.mod140 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013.i.epil = phi ptr [ %i.ay, %.lr.ph.i.epil ], [ %.013.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0812.i.epil = phi i64 [ %i.bb, %.lr.ph.i.epil ], [ %.0812.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ax = shl i64 %.0812.i.epil, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.epil, i64 1
  %i.az = load i8, ptr %.013.i.epil, align 1, !tbaa !69
  %i.ba = zext i8 %i.az to i64
  %i.bb = or disjoint i64 %i.ax, %i.ba            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %cid_get_offset.exit, label %.lr.ph.i.epil, !llvm.loop !300

cid_get_offset.exit:                              ; preds = %cid_get_offset.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.d
  %.08.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.aw, %cid_get_offset.exit.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph.i.epil ] ; 2 uses
  store i64 %.08.lcssa.i, ptr %i.a, align 8, !tbaa !107
  %i.bc = sub i32 %i.x, %i.z
  %i.bd = zext i32 %i.bc to i64                   ; 3 uses
  %i.be = call ptr @ft_mem_qalloc(ptr noundef %i.j, i64 noundef %i.bd, ptr noundef nonnull %i.b) #13 ; 3 uses
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !3
  %.not112 = icmp eq i32 %i.bf, 0
  br i1 %.not112, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cid_get_offset.exit
  %i.bg = load ptr, ptr %2, align 8, !tbaa !299
  %i.bh = load i32, ptr %i.y, align 8, !tbaa !114
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bj, i64 %i.bd, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %cid_get_offset.exit
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !290
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !301
  %i.bn = load ptr, ptr %i.t, align 8, !tbaa !296
  call void %i.bm(ptr noundef %i.bn, ptr noundef nonnull %2) #13
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !3
  %.not113 = icmp eq i32 %i.bo, 0
  br i1 %.not113, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.b, %bb.f, %bb.c
  %.093.ph = phi ptr [ null, %bb.c ], [ %i.be, %bb.f ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.y

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.bp = call fastcc i32 @cid_compute_fd_and_offsets(ptr noundef nonnull %i.f, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 2 uses
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.i, label %.thread127

bb.i:                                             ; preds = %bb.h
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !107
  %i.br = load i64, ptr %i.c, align 8, !tbaa !107 ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.thread127, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = call ptr @ft_mem_qalloc(ptr noundef %i.j, i64 noundef %i.bs, ptr noundef nonnull %i.b) #13 ; 4 uses
  %i.bv = load i32, ptr %i.b, align 4, !tbaa !3
  %.not109 = icmp eq i32 %i.bv, 0
  br i1 %.not109, label %bb.k, label %.thread127

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 584
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !112
  %i.by = add i64 %i.bx, %i.br
  %i.bz = call i32 @FT_Stream_ReadAt(ptr noundef %i.h, i64 noundef %i.by, ptr noundef %i.bu, i64 noundef %i.bs) #13 ; 2 uses
  store i32 %i.bz, ptr %i.b, align 4, !tbaa !3
  %.not110 = icmp eq i32 %i.bz, 0
  br i1 %.not110, label %bb.l, label %.thread127

.thread127:                                       ; preds = %bb.i, %bb.h, %bb.k, %bb.j
  %.2.ph = phi ptr [ %i.bu, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ %i.bu, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.y

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %.pre = load i64, ptr %i.a, align 8, !tbaa !107
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.ca = phi i64 [ %.08.lcssa.i, %bb.g ], [ %.pre, %bb.l ] ; 2 uses
  %.296 = phi i64 [ %i.bd, %bb.g ], [ %i.bs, %bb.l ] ; 4 uses
  %.3 = phi ptr [ %i.be, %bb.g ], [ %i.bu, %bb.l ] ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !159
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ca ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !271
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2716
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !302
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !160
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2720
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !303
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.cm = getelementptr inbounds nuw [336 x i8], ptr %i.cl, i64 %i.ca ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %i.co, i64 32, i1 false), !tbaa.struct !223
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !304
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !263 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2712
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !305
  %i.cu = icmp sgt i32 %i.cs, -1                  ; 2 uses
  %narrow = select i1 %i.cu, i32 %i.cs, i32 0     ; 2 uses
  %spec.select = zext i32 %narrow to i64          ; 4 uses
  %i.cv = icmp ult i64 %.296, %spec.select
  br i1 %i.cv, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.cu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !269
  call void %i.cx(ptr noundef %.3, i64 noundef %.296, i16 noundef zeroext 4330) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !306
  %.not114 = icmp eq i8 %i.cz, 0
  br i1 %.not114, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !209
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !307
  %i.de = getelementptr inbounds nuw i8, ptr %.3, i64 %spec.select
  %i.df = trunc i64 %.296 to i32
  %i.dg = sub i32 %i.df, %narrow
  %i.dh = call i32 %i.dd(ptr noundef nonnull %0, ptr noundef %i.de, i32 noundef %i.dg) #13 ; 2 uses
  store i32 %i.dh, ptr %i.b, align 4, !tbaa !3
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !308
  call void %i.dj(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1) #13
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !309
  call void %i.dl(ptr noundef nonnull %i.f, ptr noundef nonnull %i.cm, ptr noundef nonnull %4) #13
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 1056
  store ptr %4, ptr %i.dm, align 8, !tbaa !310
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !209
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !320
  %i.dr = getelementptr inbounds nuw i8, ptr %.3, i64 %spec.select ; 2 uses
  %i.ds = sub i64 %.296, %spec.select             ; 2 uses
  %i.dt = call i32 %i.dq(ptr noundef nonnull %3, ptr noundef %i.dr, i64 noundef %i.ds) #13 ; 3 uses
  store i32 %i.dt, ptr %i.b, align 4, !tbaa !3
  %i.du = and i32 %i.dt, 255
  %i.dv = icmp eq i32 %i.du, 164
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !321
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 304
  store i8 0, ptr %i.dy, align 8, !tbaa !205
  %i.dz = load ptr, ptr %i.dn, align 8, !tbaa !209
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !320
  %i.ec = call i32 %i.eb(ptr noundef nonnull %3, ptr noundef %i.dr, i64 noundef %i.ds) #13 ; 2 uses
  store i32 %i.ec, ptr %i.b, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ed = phi i32 [ %i.ec, %bb.s ], [ %i.dt, %bb.r ]
  %.0100 = phi i8 [ 1, %bb.s ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.v

bb.u:                                             ; preds = %bb.m
  store i32 9, ptr %i.b, align 4, !tbaa !3
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.q
  %i.ee = phi i32 [ %i.ed, %bb.t ], [ %i.dh, %bb.q ]
  %.2102.ph = phi i8 [ %.0100, %bb.t ], [ 0, %bb.q ] ; 3 uses
  %i.ef = icmp eq i32 %i.ee, 0
  %or.cond = and i1 %i.q, %i.ef
  br i1 %or.cond, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.eg = load ptr, ptr %i.p, align 8, !tbaa !290
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !322
  %.not115 = icmp eq ptr %i.ei, null
  br i1 %.not115, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !226
  %i.el = call i64 @FT_RoundFix(i64 noundef %i.ek) #13
  %i.em = ashr i64 %i.el, 16
  store i64 %i.em, ptr %5, align 8, !tbaa !323
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.en, align 8, !tbaa !325
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !228
  %i.eq = call i64 @FT_RoundFix(i64 noundef %i.ep) #13
  %i.er = ashr i64 %i.eq, 16
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %i.er, ptr %i.es, align 8, !tbaa !326
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !327
  %i.ev = call i64 @FT_RoundFix(i64 noundef %i.eu) #13
  %i.ew = ashr i64 %i.ev, 16
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !328
  %i.ey = load ptr, ptr %i.p, align 8, !tbaa !290
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !322
  %i.fb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !296
  %i.fd = call i32 %i.fa(ptr noundef %i.fc, i32 noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %5) #13
  store i32 %i.fd, ptr %i.b, align 4, !tbaa !3
  %i.fe = load i64, ptr %5, align 8, !tbaa !323
  %i.ff = shl nsw i64 %i.fe, 16
  store i64 %i.ff, ptr %i.ej, align 8, !tbaa !226
  %i.fg = load <2 x i64>, ptr %i.es, align 8, !tbaa !107
  %i.fh = shl nsw <2 x i64> %i.fg, splat (i64 16)
  store <2 x i64> %i.fh, ptr %i.eo, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %.thread127, %.thread, %bb.x, %bb.w, %bb.v
  %.3103 = phi i8 [ %.2102.ph, %bb.x ], [ %.2102.ph, %bb.w ], [ %.2102.ph, %bb.v ], [ 0, %bb.u ], [ 0, %.thread ], [ 0, %.thread127 ]
  %.4 = phi ptr [ %.3, %bb.x ], [ %.3, %bb.w ], [ %.3, %bb.v ], [ %.3, %bb.u ], [ %.093.ph, %.thread ], [ %.2.ph, %.thread127 ]
  call void @ft_mem_free(ptr noundef %i.j, ptr noundef %.4) #13
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !321
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 305
  store i8 %.3103, ptr %i.fk, align 1, !tbaa !207
  %i.fl = load i32, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.fl
}

declare i64 @FT_RoundFix(i64 noundef) local_unnamed_addr #5

declare void @FT_Outline_Transform(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @FT_Outline_Translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @ft_synthesize_vertical_metrics(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_ReadAt(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Request_Metrics(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 56}
!8 = !{!"PS_DriverRec_", !9, i64 0, !4, i64 56, !5, i64 60, !5, i64 64, !4, i64 96}
!9 = !{!"FT_DriverRec_", !10, i64 0, !15, i64 24, !16, i64 32, !18, i64 48}
!10 = !{!"FT_ModuleRec_", !11, i64 0, !13, i64 8, !14, i64 16}
!11 = !{!"p1 _ZTS16FT_Module_Class_", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS14FT_LibraryRec_", !12, i64 0}
!14 = !{!"p1 _ZTS13FT_MemoryRec_", !12, i64 0}
!15 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !12, i64 0}
!16 = !{!"FT_ListRec_", !17, i64 0, !17, i64 8}
!17 = !{!"p1 _ZTS15FT_ListNodeRec_", !12, i64 0}
!18 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !12, i64 0}
!19 = !{!8, !5, i64 60}
!20 = !{!10, !14, i64 16}
!21 = !{!8, !4, i64 96}
!22 = !{!23, !24, i64 0}
!23 = !{!"FT_FaceRec_", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !25, i64 40, !25, i64 48, !4, i64 56, !26, i64 64, !4, i64 72, !27, i64 80, !29, i64 88, !30, i64 104, !31, i64 136, !31, i64 138, !31, i64 140, !31, i64 142, !31, i64 144, !31, i64 146, !31, i64 148, !31, i64 150, !32, i64 152, !33, i64 160, !34, i64 168, !35, i64 176, !14, i64 184, !36, i64 192, !16, i64 200, !29, i64 216, !12, i64 232, !37, i64 240}
!24 = !{!"long", !5, i64 0}
!25 = !{!"p1 omnipotent char", !12, i64 0}
!26 = !{!"p1 _ZTS15FT_Bitmap_Size_", !12, i64 0}
!27 = !{!"p2 _ZTS14FT_CharMapRec_", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!"FT_Generic_", !12, i64 0, !12, i64 8}
!30 = !{!"FT_BBox_", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!31 = !{!"short", !5, i64 0}
!32 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !12, i64 0}
!33 = !{!"p1 _ZTS11FT_SizeRec_", !12, i64 0}
!34 = !{!"p1 _ZTS14FT_CharMapRec_", !12, i64 0}
!35 = !{!"p1 _ZTS13FT_DriverRec_", !12, i64 0}
!36 = !{!"p1 _ZTS13FT_StreamRec_", !12, i64 0}
!37 = !{!"p1 _ZTS20FT_Face_InternalRec_", !12, i64 0}
!38 = !{!39, !12, i64 256}
!39 = !{!"CID_FaceRec_", !23, i64 0, !12, i64 248, !12, i64 256, !40, i64 264, !43, i64 592, !44, i64 600, !12, i64 608, !25, i64 616, !36, i64 624}
!40 = !{!"CID_FaceInfoRec_", !25, i64 0, !24, i64 8, !4, i64 16, !25, i64 24, !25, i64 32, !4, i64 40, !41, i64 48, !30, i64 104, !24, i64 136, !4, i64 144, !5, i64 152, !24, i64 280, !4, i64 288, !4, i64 292, !24, i64 296, !4, i64 304, !42, i64 312, !24, i64 320}
!41 = !{!"PS_FontInfoRec_", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !24, i64 40, !5, i64 48, !31, i64 50, !31, i64 52}
!42 = !{!"p1 _ZTS16CID_FaceDictRec_", !12, i64 0}
!43 = !{!"PS_FontExtraRec_", !31, i64 0}
!44 = !{!"p1 _ZTS13CID_SubrsRec_", !12, i64 0}
!45 = !{!23, !35, i64 176}
!46 = !{!9, !13, i64 8}
!47 = !{!39, !12, i64 608}
!48 = !{!39, !14, i64 184}
!49 = !{!39, !36, i64 192}
!50 = !{!51, !53, i64 8}
!51 = !{!"PSAux_ServiceRec_", !52, i64 0, !53, i64 8, !54, i64 16, !55, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !56, i64 64, !57, i64 72, !58, i64 80}
!52 = !{!"p1 _ZTS18PS_Table_FuncsRec_", !12, i64 0}
!53 = !{!"p1 _ZTS19PS_Parser_FuncsRec_", !12, i64 0}
!54 = !{!"p1 _ZTS20T1_Builder_FuncsRec_", !12, i64 0}
!55 = !{!"p1 _ZTS20T1_Decoder_FuncsRec_", !12, i64 0}
!56 = !{!"p1 _ZTS19T1_CMap_ClassesRec_", !12, i64 0}
!57 = !{!"p1 _ZTS20AFM_Parser_FuncsRec_", !12, i64 0}
!58 = !{!"p1 _ZTS21CFF_Decoder_FuncsRec_", !12, i64 0}
!59 = !{!60, !12, i64 0}
!60 = !{!"PS_Parser_FuncsRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96}
!61 = distinct !{null, null}
!62 = !{!63, !36, i64 144}
!63 = !{!"CID_Parser_", !64, i64 0, !36, i64 144, !25, i64 152, !24, i64 160, !24, i64 168, !24, i64 176, !65, i64 184, !4, i64 192}
!64 = !{!"PS_ParserRec_", !25, i64 0, !25, i64 8, !25, i64 16, !4, i64 24, !14, i64 32, !60, i64 40}
!65 = !{!"p1 _ZTS16CID_FaceInfoRec_", !12, i64 0}
!66 = !{!67, !25, i64 64}
!67 = !{!"FT_StreamRec_", !25, i64 0, !24, i64 8, !24, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !12, i64 48, !14, i64 56, !25, i64 64, !25, i64 72}
!68 = !{!67, !24, i64 8}
!69 = !{!5, !5, i64 0}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!63, !24, i64 168}
!73 = !{!63, !24, i64 160}
!74 = !{!63, !25, i64 152}
!75 = !{!63, !25, i64 8}
!76 = !{!63, !25, i64 0}
!77 = !{!63, !25, i64 16}
!78 = !{!63, !4, i64 192}
!79 = !{!63, !12, i64 64}
!80 = !{!63, !12, i64 56}
!81 = !{!63, !4, i64 24}
!82 = !{!63, !12, i64 112}
!83 = !{!84, !25, i64 8}
!84 = !{!"T1_TokenRec_", !25, i64 0, !25, i64 8, !4, i64 16}
!85 = !{!84, !25, i64 0}
!86 = !{!63, !12, i64 72}
!87 = !{!63, !24, i64 176}
!88 = distinct !{!88, !71}
!89 = distinct !{null, null}
!90 = !{!39, !4, i64 568}
!91 = distinct !{!91, !71}
!92 = distinct !{!92, !71}
!93 = !{!94, !25, i64 0}
!94 = !{!"T1_FieldRec_", !25, i64 0, !4, i64 8, !4, i64 12, !12, i64 16, !4, i64 24, !5, i64 28, !4, i64 32, !4, i64 36, !4, i64 40}
!95 = !{!94, !4, i64 12}
!96 = !{!94, !12, i64 16}
!97 = distinct !{null, null, null}
!98 = !{!94, !4, i64 8}
!99 = !{!40, !4, i64 304}
!100 = !{!40, !42, i64 312}
!101 = !{!12, !12, i64 0}
!102 = !{!103, !12, i64 136}
!103 = !{!"CID_Loader_", !63, i64 0, !4, i64 200}
!104 = !{!103, !12, i64 128}
!105 = !{!39, !36, i64 624}
!106 = !{!39, !25, i64 616}
!107 = !{!24, !24, i64 0}
!108 = !{i64 0, i64 8, !109, i64 8, i64 8, !107, i64 16, i64 8, !107, i64 24, i64 8, !69, i64 32, i64 8, !69, i64 40, i64 8, !101, i64 48, i64 8, !101, i64 56, i64 8, !110, i64 64, i64 8, !109, i64 72, i64 8, !109}
!109 = !{!25, !25, i64 0}
!110 = !{!14, !14, i64 0}
!111 = !{!103, !24, i64 168}
!112 = !{!40, !24, i64 320}
!113 = !{!40, !4, i64 292}
!114 = !{!40, !4, i64 288}
!115 = !{!40, !24, i64 280}
!116 = !{!40, !24, i64 296}
!117 = distinct !{!117, !71}
!118 = !{!119, !4, i64 120}
!119 = !{!"CID_FaceDictRec_", !120, i64 0, !4, i64 224, !24, i64 232, !24, i64 240, !24, i64 248, !5, i64 256, !5, i64 257, !121, i64 264, !122, i64 296, !4, i64 312, !24, i64 320, !4, i64 328}
!120 = !{!"PS_PrivateRec_", !4, i64 0, !4, i64 4, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 40, !5, i64 60, !5, i64 88, !24, i64 112, !4, i64 120, !4, i64 124, !5, i64 128, !5, i64 130, !5, i64 132, !5, i64 133, !5, i64 134, !5, i64 135, !5, i64 136, !5, i64 162, !24, i64 192, !24, i64 200, !24, i64 208, !5, i64 216}
!121 = !{!"FT_Matrix_", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!122 = !{!"FT_Vector_", !24, i64 0, !24, i64 8}
!123 = !{!119, !4, i64 124}
!124 = !{!119, !4, i64 312}
!125 = !{!119, !4, i64 328}
!126 = !{!119, !24, i64 320}
!127 = !{!63, !12, i64 48}
!128 = distinct !{null, null, null}
!129 = !{!23, !24, i64 32}
!130 = !{!23, !4, i64 72}
!131 = !{!23, !24, i64 8}
!132 = !{!23, !24, i64 16}
!133 = !{!41, !5, i64 48}
!134 = !{!41, !25, i64 24}
!135 = !{!23, !25, i64 40}
!136 = !{!23, !25, i64 48}
!137 = !{!41, !25, i64 16}
!138 = distinct !{!138, !71}
!139 = !{!40, !25, i64 0}
!140 = !{!41, !24, i64 40}
!141 = !{!41, !25, i64 32}
!142 = !{!23, !24, i64 24}
!143 = !{!23, !4, i64 56}
!144 = !{!23, !26, i64 64}
!145 = !{!40, !24, i64 104}
!146 = !{!23, !24, i64 104}
!147 = !{!40, !24, i64 112}
!148 = !{!23, !24, i64 112}
!149 = !{!40, !24, i64 120}
!150 = !{!23, !24, i64 120}
!151 = !{!40, !24, i64 128}
!152 = !{!23, !24, i64 128}
!153 = !{!23, !31, i64 136}
!154 = !{!23, !31, i64 138}
!155 = !{!23, !31, i64 140}
!156 = !{!23, !31, i64 142}
!157 = !{!31, !31, i64 0}
!158 = !{!23, !14, i64 184}
!159 = !{!39, !44, i64 600}
!160 = !{!161, !162, i64 8}
!161 = !{!"CID_SubrsRec_", !4, i64 0, !162, i64 8}
!162 = !{!"p2 omnipotent char", !28, i64 0}
!163 = distinct !{!163, !71}
!164 = !{!41, !25, i64 0}
!165 = !{!41, !25, i64 8}
!166 = !{!40, !25, i64 24}
!167 = !{!40, !25, i64 32}
!168 = !{!169, !171, i64 0}
!169 = !{!"CID_SizeRec_", !170, i64 0, !5, i64 88}
!170 = !{!"FT_SizeRec_", !171, i64 0, !29, i64 8, !172, i64 24, !173, i64 80}
!171 = !{!"p1 _ZTS11FT_FaceRec_", !12, i64 0}
!172 = !{!"FT_Size_Metrics_", !31, i64 0, !31, i64 2, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48}
!173 = !{!"p1 _ZTS20FT_Size_InternalRec_", !12, i64 0}
!174 = !{!175, !12, i64 0}
!175 = !{!"PSHinter_Interface_", !12, i64 0, !12, i64 8, !12, i64 16}
!176 = distinct !{null}
!177 = !{!170, !171, i64 0}
!178 = !{!39, !42, i64 576}
!179 = !{!39, !24, i64 8}
!180 = !{!181, !12, i64 0}
!181 = !{!"PSH_Globals_FuncsRec_", !12, i64 0, !12, i64 8, !12, i64 16}
!182 = !{!183, !183, i64 0}
!183 = !{!"p1 _ZTS15PSH_GlobalsRec_", !12, i64 0}
!184 = !{!170, !173, i64 80}
!185 = !{!186, !12, i64 0}
!186 = !{!"FT_Size_InternalRec_", !12, i64 0, !4, i64 8, !172, i64 16}
!187 = !{!181, !12, i64 16}
!188 = !{!189, !171, i64 8}
!189 = !{!"FT_GlyphSlotRec_", !13, i64 0, !171, i64 8, !32, i64 16, !4, i64 24, !29, i64 32, !190, i64 48, !24, i64 112, !24, i64 120, !122, i64 128, !4, i64 144, !191, i64 152, !4, i64 192, !4, i64 196, !192, i64 200, !4, i64 240, !195, i64 248, !12, i64 256, !24, i64 264, !24, i64 272, !24, i64 280, !12, i64 288, !196, i64 296}
!190 = !{!"FT_Glyph_Metrics_", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56}
!191 = !{!"FT_Bitmap_", !4, i64 0, !4, i64 4, !4, i64 8, !25, i64 16, !31, i64 24, !5, i64 26, !5, i64 27, !12, i64 32}
!192 = !{!"FT_Outline_", !31, i64 0, !31, i64 2, !193, i64 8, !25, i64 16, !194, i64 24, !4, i64 32}
!193 = !{!"p1 _ZTS10FT_Vector_", !12, i64 0}
!194 = !{!"p1 short", !12, i64 0}
!195 = !{!"p1 _ZTS15FT_SubGlyphRec_", !12, i64 0}
!196 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !12, i64 0}
!197 = !{!189, !13, i64 0}
!198 = !{!175, !12, i64 8}
!199 = !{!189, !196, i64 296}
!200 = !{!201, !12, i64 64}
!201 = !{!"FT_Slot_InternalRec_", !18, i64 0, !4, i64 8, !5, i64 12, !121, i64 16, !122, i64 48, !12, i64 64, !4, i64 72}
!202 = !{!39, !24, i64 32}
!203 = !{!189, !31, i64 202}
!204 = !{!189, !31, i64 200}
!205 = !{!206, !5, i64 304}
!206 = !{!"CID_GlyphSlotRec_", !189, i64 0, !5, i64 304, !5, i64 305, !24, i64 312, !24, i64 320}
!207 = !{!206, !5, i64 305}
!208 = !{!189, !4, i64 144}
!209 = !{!51, !55, i64 24}
!210 = !{!211, !12, i64 0}
!211 = !{!"T1_Decoder_FuncsRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!212 = !{!213, !5, i64 133}
!213 = !{!"T1_DecoderRec_", !214, i64 0, !5, i64 216, !217, i64 2264, !5, i64 2272, !218, i64 2680, !219, i64 2688, !4, i64 2696, !162, i64 2704, !4, i64 2712, !4, i64 2716, !162, i64 2720, !220, i64 2728, !221, i64 2736, !121, i64 2744, !122, i64 2776, !4, i64 2792, !4, i64 2796, !5, i64 2800, !222, i64 2912, !4, i64 2920, !12, i64 2928, !211, i64 2936, !217, i64 2968, !4, i64 2976, !5, i64 2980, !29, i64 2984}
!214 = !{!"T1_BuilderRec_", !14, i64 0, !171, i64 8, !32, i64 16, !18, i64 24, !215, i64 32, !215, i64 40, !24, i64 48, !24, i64 56, !122, i64 64, !122, i64 80, !30, i64 96, !4, i64 128, !5, i64 132, !5, i64 133, !5, i64 134, !12, i64 136, !12, i64 144, !216, i64 152}
!215 = !{!"p1 _ZTS11FT_Outline_", !12, i64 0}
!216 = !{!"T1_Builder_FuncsRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!217 = !{!"p1 long", !12, i64 0}
!218 = !{!"p1 _ZTS19T1_Decoder_ZoneRec_", !12, i64 0}
!219 = !{!"p1 _ZTS22FT_Service_PsCMapsRec_", !12, i64 0}
!220 = !{!"p1 int", !12, i64 0}
!221 = !{!"p1 _ZTS11FT_HashRec_", !12, i64 0}
!222 = !{!"p1 _ZTS12PS_BlendRec_", !12, i64 0}
!223 = !{i64 0, i64 8, !107, i64 8, i64 8, !107, i64 16, i64 8, !107, i64 24, i64 8, !107}
!224 = !{!211, !12, i64 8}
!225 = !{!189, !4, i64 232}
!226 = !{!213, !24, i64 64}
!227 = !{!189, !24, i64 64}
!228 = !{!213, !24, i64 80}
!229 = !{!189, !24, i64 80}
!230 = !{!201, !5, i64 12}
!231 = !{!190, !24, i64 32}
!232 = !{!189, !24, i64 112}
!233 = !{!39, !24, i64 392}
!234 = !{!39, !24, i64 376}
!235 = !{!190, !24, i64 56}
!236 = !{!189, !24, i64 120}
!237 = !{!170, !31, i64 26}
!238 = !{!121, !24, i64 0}
!239 = !{!121, !24, i64 24}
!240 = !{!213, !215, i64 32}
!241 = !{!192, !31, i64 2}
!242 = !{!192, !193, i64 8}
!243 = distinct !{!243, !71, !244, !245}
!244 = !{!"llvm.loop.isvectorized", i32 1}
!245 = !{!"llvm.loop.unroll.runtime.disable"}
!246 = distinct !{!246, !71, !245, !244}
!247 = !{!30, !24, i64 24}
!248 = !{!30, !24, i64 0}
!249 = !{!190, !24, i64 16}
!250 = !{!190, !24, i64 24}
!251 = !{!181, !12, i64 8}
!252 = !{!170, !24, i64 32}
!253 = !{!170, !24, i64 40}
!254 = !{!39, !25, i64 264}
!255 = !{i64 0, i64 8, !109, i64 8, i64 8, !109, i64 16, i64 8, !109, i64 24, i64 8, !109, i64 32, i64 8, !109, i64 40, i64 8, !107, i64 48, i64 1, !69, i64 50, i64 2, !157, i64 52, i64 2, !157}
!256 = !{!40, !4, i64 40}
!257 = distinct !{!257, !71}
!258 = distinct !{!258, !259}
!259 = !{!"llvm.loop.unroll.disable"}
!260 = distinct !{!260, !259}
!261 = distinct !{!261, !259}
!262 = distinct !{!262, !71}
!263 = !{!119, !4, i64 4}
!264 = distinct !{!264, !259}
!265 = distinct !{!265, !71}
!266 = distinct !{!266, !71}
!267 = distinct !{!267, !71}
!268 = distinct !{!268, !259}
!269 = !{!51, !12, i64 32}
!270 = distinct !{!270, !71}
!271 = !{!161, !4, i64 0}
!272 = distinct !{!272, !71}
!273 = distinct !{!273, !71}
!274 = !{!119, !24, i64 192}
!275 = !{!119, !24, i64 112}
!276 = distinct !{!276, !71}
!277 = !{!63, !12, i64 104}
!278 = !{!121, !24, i64 16}
!279 = !{!121, !24, i64 8}
!280 = !{!122, !24, i64 0}
!281 = !{!122, !24, i64 8}
!282 = !{!63, !12, i64 80}
!283 = !{!119, !24, i64 248}
!284 = !{!213, !171, i64 8}
!285 = !{!39, !37, i64 240}
!286 = !{!287, !289, i64 104}
!287 = !{!"FT_Face_InternalRec_", !121, i64 0, !122, i64 32, !4, i64 48, !288, i64 56, !289, i64 104, !5, i64 112, !4, i64 116, !4, i64 120}
!288 = !{!"FT_ServiceCacheRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!289 = !{!"p1 _ZTS28FT_Incremental_InterfaceRec_", !12, i64 0}
!290 = !{!291, !292, i64 0}
!291 = !{!"FT_Incremental_InterfaceRec_", !292, i64 0, !293, i64 8}
!292 = !{!"p1 _ZTS24FT_Incremental_FuncsRec_", !12, i64 0}
!293 = !{!"p1 _ZTS18FT_IncrementalRec_", !12, i64 0}
!294 = !{!295, !12, i64 0}
!295 = !{!"FT_Incremental_FuncsRec_", !12, i64 0, !12, i64 8, !12, i64 16}
!296 = !{!291, !293, i64 8}
!297 = !{!298, !4, i64 8}
!298 = !{!"FT_Data_", !25, i64 0, !4, i64 8}
!299 = !{!298, !25, i64 0}
!300 = distinct !{!300, !259}
!301 = !{!295, !12, i64 8}
!302 = !{!213, !4, i64 2716}
!303 = !{!213, !162, i64 2720}
!304 = !{i64 0, i64 8, !107, i64 8, i64 8, !107}
!305 = !{!213, !4, i64 2712}
!306 = !{!213, !5, i64 134}
!307 = !{!211, !12, i64 16}
!308 = !{!51, !12, i64 48}
!309 = !{!51, !12, i64 56}
!310 = !{!311, !318, i64 1056}
!311 = !{!"PS_Decoder_", !312, i64 0, !5, i64 112, !217, i64 504, !5, i64 512, !316, i64 920, !4, i64 928, !4, i64 932, !5, i64 936, !317, i64 1048, !318, i64 1056, !319, i64 1064, !217, i64 1072, !5, i64 1080, !4, i64 1084, !4, i64 1088, !4, i64 1092, !4, i64 1096, !4, i64 1100, !162, i64 1104, !162, i64 1112, !162, i64 1120, !4, i64 1128, !4, i64 1132, !5, i64 1136, !12, i64 1144, !12, i64 1152, !219, i64 1160, !4, i64 1168, !220, i64 1176, !221, i64 1184, !121, i64 1192, !122, i64 1224, !222, i64 1240, !217, i64 1248, !4, i64 1256}
!312 = !{!"PS_Builder_", !14, i64 0, !171, i64 8, !313, i64 16, !18, i64 24, !215, i64 32, !215, i64 40, !217, i64 48, !217, i64 56, !193, i64 64, !193, i64 72, !314, i64 80, !5, i64 88, !5, i64 89, !5, i64 90, !5, i64 91, !5, i64 92, !315, i64 96}
!313 = !{!"p1 _ZTS17CFF_GlyphSlotRec_", !12, i64 0}
!314 = !{!"p1 _ZTS8FT_BBox_", !12, i64 0}
!315 = !{!"PS_Builder_FuncsRec_", !12, i64 0, !12, i64 8}
!316 = !{!"p1 _ZTS16PS_Decoder_Zone_", !12, i64 0}
!317 = !{!"p1 _ZTS12CFF_FontRec_", !12, i64 0}
!318 = !{!"p1 _ZTS15CFF_SubFontRec_", !12, i64 0}
!319 = !{!"p1 _ZTS11FT_Generic_", !12, i64 0}
!320 = !{!211, !12, i64 24}
!321 = !{!213, !32, i64 16}
!322 = !{!295, !12, i64 16}
!323 = !{!324, !24, i64 0}
!324 = !{!"FT_Incremental_MetricsRec_", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!325 = !{!324, !24, i64 8}
!326 = !{!324, !24, i64 16}
!327 = !{!213, !24, i64 88}
!328 = !{!324, !24, i64 24}
end_hunk_0
