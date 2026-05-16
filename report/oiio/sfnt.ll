inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_cmap14_validate:bb.a
  %i.el = or disjoint i64 %i.ek, %i.dy
  %i.em = or disjoint i64 %i.el, %i.ec
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %bb.ad
  %.0114136 = phi i64 [ %i.fk, %bb.ad ], [ 0, %.lr.ph137.preheader ]
  %.0115135 = phi i64 [ %i.fo, %bb.ad ], [ 0, %.lr.ph137.preheader ]
  %.0117134 = phi ptr [ %i.ez, %bb.ad ], [ %i.dk, %.lr.ph137.preheader ] ; 6 uses
  %i.en = load i8, ptr %.0117134, align 1, !tbaa !16 ; 2 uses
  %i.eo = zext i8 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 16
  %i.eq = getelementptr inbounds nuw i8, ptr %.0117134, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !16
  %i.es = zext i8 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.0117134, i64 2
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !16
  %i.ew = zext i8 %i.ev to i64
  %i.ex = or disjoint i64 %i.ep, %i.ew
  %i.ey = or disjoint i64 %i.ex, %i.et            ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0117134, i64 5
  %i.fa = getelementptr inbounds nuw i8, ptr %.0117134, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !16
  %i.fc = zext i8 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.0117134, i64 4
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !16
  %i.fg = zext i8 %i.ff to i64
  %i.fh = or disjoint i64 %i.fd, %i.fg
  %i.fi = icmp ugt i8 %i.en, 16
  br i1 %i.fi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph137
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph137
  %i.fj = icmp ult i64 %i.ey, %.0114136
  br i1 %i.fj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fk = add nuw nsw i64 %i.ey, 1
  %i.fl = load volatile i32, ptr %i.ai, align 8, !tbaa !21
  %.not127 = icmp eq i32 %i.fl, 0
  br i1 %.not127, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fm = load i32, ptr %i.aj, align 8, !tbaa !22
  %i.fn = zext i32 %i.fm to i64
  %.not128 = icmp samesign ult i64 %i.fh, %i.fn
  br i1 %.not128, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fo = add nuw nsw i64 %.0115135, 1            ; 2 uses
  %exitcond145.not = icmp eq i64 %i.fo, %i.em
  br i1 %exitcond145.not, label %.loopexit, label %.lr.ph137, !llvm.loop !116

.loopexit:                                        ; preds = %bb.ad, %bb.w, %.loopexit130
  %i.fp = add nuw nsw i64 %.0113139, 1            ; 2 uses
  %exitcond146.not = icmp eq i64 %i.fp, %i.am
  br i1 %exitcond146.not, label %._crit_edge, label %bb.g, !llvm.loop !117

._crit_edge:                                      ; preds = %.loopexit, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @tt_cmap14_get_info(ptr readnone captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 14, ptr %i.a, align 8, !tbaa !25
  store i64 4294967295, ptr %1, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_cmap_unicode_init(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call i32 %i.e(ptr noundef %i.g, ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull @tt_get_glyph_name, ptr noundef null, ptr noundef nonnull %i.a) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @tt_cmap_unicode_done(ptr noundef captures(none) initializes((24, 28)) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.e) #26
  store ptr null, ptr %i.d, align 8, !tbaa !148
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !151
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_cmap_unicode_char_index(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef %1) #26
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_cmap_unicode_char_next(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, ptr noundef %1) #26
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_goto_table(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val = load i16, ptr %i.a, align 8, !tbaa !154 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 296
  %.val11 = load ptr, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %i.c = zext i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.c, 5
  %i.d = getelementptr inbounds nuw i8, ptr %.val11, i64 %.idx.i
  %.not4.i = icmp eq i16 %.val, 0
  br i1 %.not4.i, label %tt_face_lookup_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.0101.i = phi ptr [ %i.i, %bb.c ], [ %.val11, %bb.a ] ; 4 uses
  %i.e = load i64, ptr %.0101.i, align 8, !tbaa !156
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0101.i, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !158  ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %tt_face_lookup_table.exit

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0101.i, i64 32 ; 2 uses
  %i.j = icmp ult ptr %i.i, %i.d
  br i1 %i.j, label %.lr.ph.i, label %tt_face_lookup_table.exit.thread, !llvm.loop !159

tt_face_lookup_table.exit:                        ; preds = %bb.b
  %.not10 = icmp eq ptr %3, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %tt_face_lookup_table.exit
  store i64 %i.h, ptr %3, align 8, !tbaa !160
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %tt_face_lookup_table.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.0101.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !161
  %i.m = tail call i32 @FT_Stream_Seek(ptr noundef %2, i64 noundef %i.l) #26
  br label %tt_face_lookup_table.exit.thread

tt_face_lookup_table.exit.thread:                 ; preds = %bb.c, %bb.a, %bb.e
  %.0 = phi i32 [ %i.m, %bb.e ], [ 142, %bb.a ], [ 142, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @sfnt_init_face(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr readnone captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 27 uses
  %5 = alloca %struct.WOFF_HeaderRec_, align 8    ; 14 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 18 uses
  %i.d = alloca i32, align 4                      ; 23 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @FT_Get_Module_Interface(ptr noundef %i.i, ptr noundef nonnull @.str) #26 ; 4 uses
  %.not170 = icmp eq ptr %i.l, null
  br i1 %.not170, label %bb.co, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.j, align 8, !tbaa !170
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 832
  store ptr %i.m, ptr %i.n, align 8, !tbaa !173
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !174
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.o = phi ptr [ %i.g, %bb.a ], [ %.pre, %bb.c ]
  %.0155 = phi ptr [ %i.k, %bb.a ], [ %i.l, %bb.c ]
  %i.p = tail call ptr @ft_module_get_service(ptr noundef %i.o, ptr noundef nonnull @.str.1, i8 noundef zeroext 1) #26
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 888
  store ptr %i.p, ptr %i.q, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !175
  %.not171 = icmp eq ptr %i.s, null
  br i1 %.not171, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @FT_Get_Module(ptr noundef %i.i, ptr noundef nonnull @.str.2) #26
  %i.u = tail call ptr @ft_module_get_service(ptr noundef %i.t, ptr noundef nonnull @.str.3, i8 noundef zeroext 0) #26
  store ptr %i.u, ptr %i.r, align 8, !tbaa !175
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !176
  %.not172 = icmp eq ptr %i.w, null
  br i1 %.not172, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = tail call ptr @FT_Get_Module(ptr noundef %i.i, ptr noundef nonnull @.str.2) #26
  %i.y = tail call ptr @ft_module_get_service(ptr noundef %i.x, ptr noundef nonnull @.str.4, i8 noundef zeroext 0) #26
  store ptr %i.y, ptr %i.v, align 8, !tbaa !176
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %.not173 = icmp eq ptr %i.aa, null
  br i1 %.not173, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !162
  %i.ac = tail call ptr @ft_module_get_service(ptr noundef %i.ab, ptr noundef nonnull @.str.4, i8 noundef zeroext 0) #26
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !177
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !178 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ai = tail call i64 @FT_Stream_Pos(ptr noundef %0) #26
  %i.aj = call i32 @FT_Stream_ReadULong(ptr noundef %0, ptr noundef nonnull %i.c) #26
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %.not17.i = icmp eq i32 %i.ak, 0
  br i1 %.not17.i, label %.lr.ph.i, label %sfnt_open_font.exit.thread

.lr.ph.i:                                         ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 13 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %.phi.trans.insert309.i.i = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.ba, %.lr.ph.i
  %i.av = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.kw, %bb.ba ] ; 2 uses
  %i.aw = phi i64 [ %i.ai, %.lr.ph.i ], [ %i.kv, %bb.ba ] ; 2 uses
  %.06318.i = phi ptr [ %0, %.lr.ph.i ], [ %i.ku, %bb.ba ] ; 22 uses
  switch i32 %i.av, label %sfnt_open_font.exit.thread [
    i32 2001684038, label %bb.l
    i32 -1519619212, label %bb.bb
    i32 -1519689116, label %bb.bb
    i32 1954115633, label %bb.bb
    i32 1953784678, label %bb.bb
    i32 1953658213, label %bb.bb
    i32 1330926671, label %bb.bb
    i32 131072, label %bb.bb
    i32 65536, label %bb.bb
  ]

bb.l:                                             ; preds = %bb.k
  %i.ax = call i32 @FT_Stream_Seek(ptr noundef %.06318.i, i64 noundef %i.aw) #26 ; 3 uses
  store i32 %i.ax, ptr %i.c, align 4, !tbaa !3
  %.not78.i = icmp eq i32 %i.ax, 0
  br i1 %.not78.i, label %bb.m, label %sfnt_open_font.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.06318.i, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !178 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ba = call i32 @FT_Stream_ReadFields(ptr noundef %.06318.i, ptr noundef nonnull @woff_open_font.woff_header_fields, ptr noundef nonnull %5) #26 ; 3 uses
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %bb.n, label %woff_open_font.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !180
  switch i64 %i.bb, label %bb.o [
    i64 2001684038, label %woff_open_font.exit.thread.i
    i64 1953784678, label %woff_open_font.exit.thread.i
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = load i64, ptr %i.am, align 8, !tbaa !182 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.06318.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !183
  %i.bf = icmp ne i64 %i.bc, %i.be
  %i.bg = load i16, ptr %i.an, align 8            ; 2 uses
  %i.bh = icmp eq i16 %i.bg, 0
  %or.cond6.i.i = select i1 %i.bf, i1 true, i1 %i.bh
  br i1 %or.cond6.i.i, label %woff_open_font.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = zext i16 %i.bg to i64                   ; 2 uses
  %i.bj = mul nuw nsw i64 %i.bi, 20
  %i.bk = add nuw nsw i64 %i.bj, 44
  %.not219.i.i = icmp ult i64 %i.bk, %i.bc
  br i1 %.not219.i.i, label %bb.q, label %woff_open_font.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bl = shl nuw nsw i64 %i.bi, 4
  %i.bm = or disjoint i64 %i.bl, 12
  %i.bn = load i64, ptr %i.ao, align 8, !tbaa !184 ; 2 uses
  %.not220.i.i = icmp ult i64 %i.bm, %i.bn
  %i.bo = and i64 %i.bn, 3
  %.not221.i.i = icmp eq i64 %i.bo, 0
  %or.cond.i.i = and i1 %.not220.i.i, %.not221.i.i
  br i1 %or.cond.i.i, label %bb.r, label %woff_open_font.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bp = load i64, ptr %i.ap, align 8, !tbaa !185
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = load i64, ptr %i.aq, align 8, !tbaa !186 ; 2 uses
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = load i64, ptr %.phi.trans.insert309.i.i, align 8
  %i.bu = icmp ne i64 %i.bt, 0
  %or.cond9.i.i = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond9.i.i, label %woff_open_font.exit.thread.i, label %.thread.i.i

bb.t:                                             ; preds = %bb.r
  %.pre310.i.i = load i64, ptr %.phi.trans.insert309.i.i, align 8
  %i.bv = icmp ne i64 %i.br, 0
  %i.bw = icmp eq i64 %.pre310.i.i, 0
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %woff_open_font.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.t, %bb.s
  %i.by = load i64, ptr %i.ar, align 8, !tbaa !187
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = load i64, ptr %i.as, align 8
  %i.cb = icmp ne i64 %i.ca, 0
  %or.cond15.i.i = select i1 %i.bz, i1 %i.cb, i1 false
  br i1 %or.cond15.i.i, label %woff_open_font.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %.thread.i.i
  %i.cc = call ptr @ft_mem_qalloc(ptr noundef %i.az, i64 noundef 12, ptr noundef nonnull %i.a) #26 ; 23 uses
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !3
  %.not222.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not222.i.i, label %bb.v, label %.thread266.i.i

bb.v:                                             ; preds = %bb.u
  %i.ce = call ptr @ft_mem_alloc(ptr noundef %i.az, i64 noundef 80, ptr noundef nonnull %i.a) #26 ; 18 uses
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !3
  %.not223.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not223.i.i, label %bb.w, label %.thread266.i.i

bb.w:                                             ; preds = %bb.v
  %i.cg = load i16, ptr %i.an, align 8, !tbaa !188 ; 2 uses
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %.not224272.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not224272.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.w
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = call range(i32 17, 33) i32 @llvm.ctlz.i32(i32 %i.ci, i1 false)
  %i.ck = sub nuw nsw i32 32, %i.cj
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.w
  %.0189.lcssa.i.i = phi i32 [ -1, %bb.w ], [ %i.ck, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cl = shl nuw nsw i32 16, %.0189.lcssa.i.i    ; 3 uses
  %i.cm = shl nuw nsw i32 %i.ch, 4
  %i.cn = sub nsw i32 %i.cm, %i.cl                ; 2 uses
  %i.co = load i64, ptr %i.al, align 8, !tbaa !180
  %i.cp = lshr i64 %i.co, 24
  %i.cq = trunc i64 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store i8 %i.cq, ptr %i.cc, align 1, !tbaa !16
  %i.cs = load i64, ptr %i.al, align 8, !tbaa !180
  %i.ct = lshr i64 %i.cs, 16
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i8 %i.cu, ptr %i.cr, align 1, !tbaa !16
  %i.cw = load i64, ptr %i.al, align 8, !tbaa !180
  %i.cx = lshr i64 %i.cw, 8
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  store i8 %i.cy, ptr %i.cv, align 1, !tbaa !16
  %i.da = load i64, ptr %i.al, align 8, !tbaa !180
  %i.db = trunc i64 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !16
  %6 = load i16, ptr %i.an, align 8, !tbaa !188
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cc, i64 5
  store i8 %8, ptr %i.dc, align 1, !tbaa !16
  %i.de = load i16, ptr %i.an, align 8, !tbaa !188
  %i.df = trunc i16 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !16
  %i.dh = lshr i32 %i.cl, 8
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 7
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !16
  %i.dk = trunc i32 %i.cl to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !16
  %i.dm = lshr i32 %.0189.lcssa.i.i, 8
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 9
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !16
  %i.dp = trunc nsw i32 %.0189.lcssa.i.i to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !16
  %i.dr = lshr i32 %i.cn, 8
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 11
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !16
  %i.du = trunc i32 %i.cn to i8
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !16
  %i.dv = load i16, ptr %i.an, align 8, !tbaa !188
  %i.dw = zext i16 %i.dv to i64
  %i.dx = call ptr @ft_mem_qrealloc(ptr noundef %i.az, i64 noundef 48, i64 noundef 0, i64 noundef %i.dw, ptr noundef null, ptr noundef nonnull %i.a) #26 ; 15 uses
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !3
  %.not225.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not225.i.i, label %bb.x, label %.thread266.i.i

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.dz = load i16, ptr %i.an, align 8, !tbaa !188
  %i.ea = zext i16 %i.dz to i64
  %i.eb = call ptr @ft_mem_qrealloc(ptr noundef %i.az, i64 noundef 8, i64 noundef 0, i64 noundef %i.ea, ptr noundef null, ptr noundef nonnull %i.a) #26 ; 15 uses
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !3
  %.not226.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not226.i.i, label %bb.y, label %.thread266.i.i

bb.y:                                             ; preds = %bb.x
  %i.ed = load i16, ptr %i.an, align 8, !tbaa !188
  %i.ee = zext i16 %i.ed to i64
  %i.ef = mul nuw nsw i64 %i.ee, 20
  %i.eg = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %.06318.i, i64 noundef %i.ef) #26 ; 2 uses
  store i32 %i.eg, ptr %i.a, align 4, !tbaa !3
  %.not227.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not227.i.i, label %.preheader.i.i, label %.thread266.i.i

.preheader.i.i:                                   ; preds = %bb.y
  %i.eh = load i16, ptr %i.an, align 8, !tbaa !188
  %.not297.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not297.i.i, label %._crit_edge278.i.i, label %.lr.ph277.i.i

.lr.ph277.i.i:                                    ; preds = %.preheader.i.i, %bb.aa
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.aa ], [ 0, %.preheader.i.i ] ; 3 uses
  %.0195276.i.i = phi i32 [ %i.ew, %bb.aa ], [ 0, %.preheader.i.i ]
  %i.ei = getelementptr inbounds nuw [48 x i8], ptr %i.dx, i64 %indvars.iv.i.i ; 7 uses
  %i.ej = call i32 @FT_Stream_GetULong(ptr noundef nonnull %.06318.i) #26
  store i32 %i.ej, ptr %i.ei, align 8, !tbaa !189
  %i.ek = call i32 @FT_Stream_GetULong(ptr noundef nonnull %.06318.i) #26
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %i.el, ptr %i.em, align 8, !tbaa !191
  %i.en = call i32 @FT_Stream_GetULong(ptr noundef nonnull %.06318.i) #26
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !192
  %i.eq = call i32 @FT_Stream_GetULong(ptr noundef nonnull %.06318.i) #26
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %i.er, ptr %i.es, align 8, !tbaa !193
  %i.et = call i32 @FT_Stream_GetULong(ptr noundef nonnull %.06318.i) #26
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !194
  %i.ew = load i32, ptr %i.ei, align 8, !tbaa !189 ; 2 uses
  %.not241.i.i = icmp ugt i32 %i.ew, %.0195276.i.i
  br i1 %.not241.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph277.i.i
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %.06318.i) #26
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.thread266.i.i

bb.aa:                                            ; preds = %.lr.ph277.i.i
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  store ptr %i.ei, ptr %i.ex, align 8, !tbaa !195
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ey = load i16, ptr %i.an, align 8, !tbaa !188
  %i.ez = zext i16 %i.ey to i64
  %i.fa = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ez
  br i1 %i.fa, label %.lr.ph277.i.i, label %._crit_edge278.i.i, !llvm.loop !197

._crit_edge278.i.i:                               ; preds = %bb.aa, %.preheader.i.i
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %.06318.i) #26
  %i.fb = load i16, ptr %i.an, align 8, !tbaa !188
  %i.fc = zext i16 %i.fb to i64
  call void @qsort(ptr noundef %i.eb, i64 noundef %i.fc, i64 noundef 8, ptr noundef nonnull @compare_offsets) #26
  %i.fd = load i16, ptr %i.an, align 8, !tbaa !188 ; 2 uses
  %i.fe = zext i16 %i.fd to i64                   ; 3 uses
  %i.ff = mul nuw nsw i64 %i.fe, 20
  %i.fg = add nuw nsw i64 %i.ff, 44               ; 2 uses
  %i.fh = shl nuw nsw i64 %i.fe, 4
  %i.fi = or disjoint i64 %i.fh, 12               ; 2 uses
  %.not298.i.i = icmp eq i16 %i.fd, 0
  br i1 %.not298.i.i, label %._crit_edge284.i.i, label %.lr.ph283.i.i

.lr.ph283.i.i:                                    ; preds = %._crit_edge278.i.i
  %i.fj = load i64, ptr %i.am, align 8            ; 2 uses
  %i.fk = load i64, ptr %i.ao, align 8            ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.lr.ph283.i.i
  %indvars.iv302.i.i = phi i64 [ 0, %.lr.ph283.i.i ], [ %indvars.iv.next303.i.i, %bb.af ] ; 2 uses
  %.0188281.i.i = phi i64 [ %i.fg, %.lr.ph283.i.i ], [ %i.gd, %bb.af ] ; 3 uses
  %.0200279.i.i = phi i64 [ %i.fi, %.lr.ph283.i.i ], [ %i.gg, %bb.af ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv302.i.i
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !195 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !191
  %.not240.i.i.a = icmp eq i64 %i.fo, %.0188281.i.i
  br i1 %.not240.i.i.a, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !192 ; 4 uses
  %i.fr = icmp ugt i64 %i.fq, %i.fj
  %i.fs = sub nuw i64 %i.fj, %i.fq
  %i.ft = icmp ugt i64 %.0188281.i.i, %i.fs
  %or.cond245.i.i = select i1 %i.fr, i1 true, i1 %i.ft
  br i1 %or.cond245.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !193 ; 4 uses
  %i.fw = icmp ugt i64 %i.fv, %i.fk
  %i.fx = sub nuw i64 %i.fk, %i.fv
  %i.fy = icmp ugt i64 %.0200279.i.i, %i.fx
  %or.cond247.i.i = select i1 %i.fw, i1 true, i1 %i.fy
  %i.fz = icmp ugt i64 %i.fq, %i.fv
  %or.cond248.i.i = or i1 %i.fz, %or.cond247.i.i
  br i1 %or.cond248.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.thread266.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store i64 %.0200279.i.i, ptr %i.ga, align 8, !tbaa !198
  %i.gb = add i64 %i.fq, 3
  %i.gc = and i64 %i.gb, 4294967292
  %i.gd = add i64 %i.gc, %.0188281.i.i            ; 2 uses
  %i.ge = add i64 %i.fv, 3
  %i.gf = and i64 %i.ge, 4294967292
  %i.gg = add i64 %i.gf, %.0200279.i.i            ; 2 uses
  %indvars.iv.next303.i.i = add nuw nsw i64 %indvars.iv302.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next303.i.i, %i.fe
  br i1 %exitcond.not.i.i, label %._crit_edge284.i.i, label %bb.ab, !llvm.loop !199

._crit_edge284.i.i:                               ; preds = %bb.af, %._crit_edge278.i.i
  %.0200.lcssa.i.i = phi i64 [ %i.fi, %._crit_edge278.i.i ], [ %i.gg, %bb.af ] ; 2 uses
  %.0188.lcssa.i.i = phi i64 [ %i.fg, %._crit_edge278.i.i ], [ %i.gd, %bb.af ] ; 3 uses
  %i.gh = load i64, ptr %i.ap, align 8, !tbaa !185 ; 2 uses
  %.not228.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not228.i.i, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge284.i.i
  %.not229.i.i = icmp eq i64 %i.gh, %.0188.lcssa.i.i
  br i1 %.not229.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gi = load i64, ptr %i.aq, align 8, !tbaa !186
  %i.gj = add i64 %i.gi, %.0188.lcssa.i.i         ; 2 uses
  %i.gk = load i64, ptr %i.am, align 8, !tbaa !182
  %i.gl = icmp ugt i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.thread266.i.i

bb.aj:                                            ; preds = %bb.ah, %._crit_edge284.i.i
  %.2.i.i = phi i64 [ %.0188.lcssa.i.i, %._crit_edge284.i.i ], [ %i.gj, %bb.ah ] ; 2 uses
  %i.gm = load i64, ptr %i.ar, align 8, !tbaa !187 ; 3 uses
  %.not230.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not230.i.i, label %._crit_edge311.i.i, label %bb.ak

._crit_edge311.i.i:                               ; preds = %bb.aj
  %.pre312.i.i = load i64, ptr %i.am, align 8
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.gn = add i64 %.2.i.i, 3
  %i.go = and i64 %i.gn, 4294967292
  %.not231.i.i = icmp eq i64 %i.gm, %i.go
  br i1 %.not231.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gp = load i64, ptr %i.as, align 8, !tbaa !200
  %i.gq = add i64 %i.gp, %i.gm                    ; 2 uses
  %i.gr = load i64, ptr %i.am, align 8, !tbaa !182 ; 2 uses
  %i.gs = icmp ugt i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.thread266.i.i

bb.an:                                            ; preds = %bb.al, %._crit_edge311.i.i
  %i.gt = phi i64 [ %.pre312.i.i, %._crit_edge311.i.i ], [ %i.gr, %bb.al ]
  %.3.i.i = phi i64 [ %.2.i.i, %._crit_edge311.i.i ], [ %i.gq, %bb.al ]
  %i.gu = load i64, ptr %i.ao, align 8, !tbaa !184
  %.not232.i.i = icmp eq i64 %.0200.lcssa.i.i, %i.gu
  %.not233.i.i = icmp eq i64 %.3.i.i, %i.gt
  %or.cond251.i.i = select i1 %.not232.i.i, i1 %.not233.i.i, i1 false
  br i1 %or.cond251.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.thread266.i.i

bb.ap:                                            ; preds = %bb.an
  %i.gv = call ptr @ft_mem_qrealloc(ptr noundef %i.az, i64 noundef 1, i64 noundef 12, i64 noundef %.0200.lcssa.i.i, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.a) #26 ; 10 uses
  %i.gw = load i32, ptr %i.a, align 4, !tbaa !3
  %.not234.i.i = icmp eq i32 %i.gw, 0
  br i1 %.not234.i.i, label %bb.aq, label %.thread266.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.gx = load i16, ptr %i.an, align 8, !tbaa !188
  %.not299.i.i = icmp eq i16 %i.gx, 0
  br i1 %.not299.i.i, label %._crit_edge296.i.i, label %.lr.ph295.i.i

.lr.ph295.i.i:                                    ; preds = %bb.aq
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.gz = getelementptr inbounds nuw i8, ptr %.06318.i, i64 64 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge291.i.i, %.lr.ph295.i.i
  %indvars.iv305.i.i = phi i64 [ 0, %.lr.ph295.i.i ], [ %indvars.iv.next306.i.i, %._crit_edge291.i.i ] ; 2 uses
  %.0203292.i.i = phi ptr [ %i.gy, %.lr.ph295.i.i ], [ %i.jg, %._crit_edge291.i.i ] ; 17 uses
  %i.ha = getelementptr inbounds nuw [48 x i8], ptr %i.dx, i64 %indvars.iv305.i.i ; 9 uses
  %9 = load i32, ptr %i.ha, align 8, !tbaa !189
  %10 = lshr i32 %9, 24
  %11 = trunc nuw i32 %10 to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 1
  store i8 %11, ptr %.0203292.i.i, align 1, !tbaa !16
  %12 = load i32, ptr %i.ha, align 8, !tbaa !189
  %13 = lshr i32 %12, 16
  %i.hc = trunc i32 %13 to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 2
  store i8 %i.hc, ptr %i.hb, align 1, !tbaa !16
  %i.he = load i32, ptr %i.ha, align 8, !tbaa !189
  %i.hf = lshr i32 %i.he, 8
  %i.hg = trunc i32 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 3
  store i8 %i.hg, ptr %i.hd, align 1, !tbaa !16
  %i.hi = load i32, ptr %i.ha, align 8, !tbaa !189
  %i.hj = trunc i32 %i.hi to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 4
  store i8 %i.hj, ptr %i.hh, align 1, !tbaa !16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ha, i64 32 ; 4 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !194
  %i.hn = lshr i64 %i.hm, 24
  %i.ho = trunc i64 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 5
  store i8 %i.ho, ptr %i.hk, align 1, !tbaa !16
  %i.hq = load i64, ptr %i.hl, align 8, !tbaa !194
  %i.hr = lshr i64 %i.hq, 16
  %i.hs = trunc i64 %i.hr to i8
  %i.ht = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 6
  store i8 %i.hs, ptr %i.hp, align 1, !tbaa !16
  %i.hu = load i64, ptr %i.hl, align 8, !tbaa !194
  %i.hv = lshr i64 %i.hu, 8
  %i.hw = trunc i64 %i.hv to i8
  %i.hx = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 7
  store i8 %i.hw, ptr %i.ht, align 1, !tbaa !16
  %i.hy = load i64, ptr %i.hl, align 8, !tbaa !194
  %i.hz = trunc i64 %i.hy to i8
  %i.ia = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 8
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ha, i64 40 ; 7 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !198
  %i.id = lshr i64 %i.ic, 24
  %i.ie = trunc i64 %i.id to i8
  %i.if = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 9
  store i8 %i.ie, ptr %i.ia, align 1, !tbaa !16
  %i.ig = load i64, ptr %i.ib, align 8, !tbaa !198
  %i.ih = lshr i64 %i.ig, 16
  %i.ii = trunc i64 %i.ih to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 10
  store i8 %i.ii, ptr %i.if, align 1, !tbaa !16
  %i.ik = load i64, ptr %i.ib, align 8, !tbaa !198
  %i.il = lshr i64 %i.ik, 8
  %i.im = trunc i64 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 11
  store i8 %i.im, ptr %i.ij, align 1, !tbaa !16
  %i.io = load i64, ptr %i.ib, align 8, !tbaa !198
  %i.ip = trunc i64 %i.io to i8
  %i.iq = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 12
  store i8 %i.ip, ptr %i.in, align 1, !tbaa !16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ha, i64 24 ; 7 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !193
  %i.it = lshr i64 %i.is, 24
  %i.iu = trunc i64 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 13
  store i8 %i.iu, ptr %i.iq, align 1, !tbaa !16
  %i.iw = load i64, ptr %i.ir, align 8, !tbaa !193
  %i.ix = lshr i64 %i.iw, 16
  %i.iy = trunc i64 %i.ix to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 14
  store i8 %i.iy, ptr %i.iv, align 1, !tbaa !16
  %i.ja = load i64, ptr %i.ir, align 8, !tbaa !193
  %i.jb = lshr i64 %i.ja, 8
  %i.jc = trunc i64 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 15
  store i8 %i.jc, ptr %i.iz, align 1, !tbaa !16
  %i.je = load i64, ptr %i.ir, align 8, !tbaa !193
  %i.jf = trunc i64 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %.0203292.i.i, i64 16
  store i8 %i.jf, ptr %i.jd, align 1, !tbaa !16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !191
  %i.jj = call i32 @FT_Stream_Seek(ptr noundef nonnull %.06318.i, i64 noundef %i.ji) #26 ; 2 uses
  store i32 %i.jj, ptr %i.a, align 4, !tbaa !3
  %.not235.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not235.i.i, label %bb.as, label %.thread266.i.i

bb.as:                                            ; preds = %bb.ar
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !192
  %i.jm = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %.06318.i, i64 noundef %i.jl) #26 ; 2 uses
  store i32 %i.jm, ptr %i.a, align 4, !tbaa !3
  %.not236.i.i = icmp eq i32 %i.jm, 0
  br i1 %.not236.i.i, label %bb.at, label %.thread266.i.i

bb.at:                                            ; preds = %bb.as
  %i.jn = load i64, ptr %i.jk, align 8, !tbaa !192 ; 3 uses
  %i.jo = load i64, ptr %i.ir, align 8, !tbaa !193 ; 2 uses
  %i.jp = icmp eq i64 %i.jn, %i.jo
  br i1 %i.jp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jq = load i64, ptr %i.ib, align 8, !tbaa !198
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jq
  %i.js = load ptr, ptr %i.gz, align 8, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jr, ptr align 1 %i.js, i64 %i.jn, i1 false)
  br label %bb.az

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.jo, ptr %i.b, align 8, !tbaa !160
  %i.jt = load i64, ptr %i.ib, align 8, !tbaa !198
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jt
  %i.jv = load ptr, ptr %i.gz, align 8, !tbaa !201
  %i.jw = call i32 @FT_Gzip_Uncompress(ptr noundef %i.az, ptr noundef %i.ju, ptr noundef nonnull %i.b, ptr noundef %i.jv, i64 noundef %i.jn) #26 ; 2 uses
  store i32 %i.jw, ptr %i.a, align 4, !tbaa !3
  %.not237.i.i = icmp eq i32 %i.jw, 0
  br i1 %.not237.i.i, label %bb.aw, label %.loopexit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.jx = load i64, ptr %i.b, align 8, !tbaa !160
  %i.jy = load i64, ptr %i.ir, align 8, !tbaa !193
  %.not238.i.i = icmp eq i64 %i.jx, %i.jy
  br i1 %.not238.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit.i.i

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.au
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %.06318.i) #26
  %i.jz = load i64, ptr %i.ib, align 8, !tbaa !198 ; 2 uses
  %i.ka = load i64, ptr %i.ir, align 8, !tbaa !193 ; 2 uses
  %i.kb = add i64 %i.ka, %i.jz                    ; 2 uses
  %i.kc = and i64 %i.kb, 3
  %.not239287.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not239287.i.i, label %._crit_edge291.i.i, label %.lr.ph290.preheader.i.i

.lr.ph290.preheader.i.i:                          ; preds = %bb.az
  %scevgep.i.i = getelementptr i8, ptr %i.gv, i64 %i.kb
  %.neg.i.i = xor i64 %i.ka, -1
  %.neg327.i.i = sub i64 %.neg.i.i, %i.jz
  %i.kd = and i64 %.neg327.i.i, 3
  %i.ke = add nuw nsw i64 %i.kd, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.ke, i1 false), !tbaa !16
  br label %._crit_edge291.i.i

._crit_edge291.i.i:                               ; preds = %.lr.ph290.preheader.i.i, %bb.az
  %indvars.iv.next306.i.i = add nuw nsw i64 %indvars.iv305.i.i, 1 ; 2 uses
  %i.kf = load i16, ptr %i.an, align 8, !tbaa !188
  %i.kg = zext i16 %i.kf to i64
  %i.kh = icmp samesign ult i64 %indvars.iv.next306.i.i, %i.kg
  br i1 %i.kh, label %bb.ar, label %._crit_edge296.i.i, !llvm.loop !202

._crit_edge296.i.i:                               ; preds = %._crit_edge291.i.i, %bb.aq
  %i.ki = load i64, ptr %i.ao, align 8, !tbaa !184
  call void @FT_Stream_OpenMemory(ptr noundef %i.ce, ptr noundef %i.gv, i64 noundef %i.ki) #26
  %i.kj = load ptr, ptr %i.ay, align 8, !tbaa !178
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !178
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store ptr @sfnt_stream_close, ptr %i.kl, align 8, !tbaa !203
  %i.km = load ptr, ptr %i.at, align 8, !tbaa !204
  %i.kn = load i64, ptr %i.au, align 8, !tbaa !205
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = lshr i32 %i.ko, 10
  %i.kq = and i32 %i.kp, 1
  call void @FT_Stream_Free(ptr noundef %i.km, i32 noundef %i.kq) #26
  store ptr %i.ce, ptr %i.at, align 8, !tbaa !204
  %i.kr = load i64, ptr %i.au, align 8, !tbaa !205
  %i.ks = and i64 %i.kr, -1025
  store i64 %i.ks, ptr %i.au, align 8, !tbaa !205
  br label %.thread266.i.i

.thread266.i.i:                                   ; preds = %bb.as, %bb.ar, %.loopexit.i.i, %._crit_edge296.i.i, %bb.ap, %bb.ao, %bb.am, %bb.ai, %bb.ae, %bb.z, %bb.y, %bb.x, %._crit_edge.i.i, %bb.v, %bb.u
  %.0204.i.i = phi ptr [ null, %bb.u ], [ %i.ce, %bb.v ], [ %i.ce, %._crit_edge.i.i ], [ %i.ce, %bb.x ], [ %i.ce, %bb.y ], [ %i.ce, %bb.z ], [ %i.ce, %bb.ae ], [ %i.ce, %bb.ai ], [ %i.ce, %bb.am ], [ %i.ce, %bb.ao ], [ %i.ce, %bb.ap ], [ %i.ce, %._crit_edge296.i.i ], [ %i.ce, %.loopexit.i.i ], [ %i.ce, %bb.ar ], [ %i.ce, %bb.as ] ; 2 uses
  %.0190.i.i = phi ptr [ %i.cc, %bb.u ], [ %i.cc, %bb.v ], [ %i.cc, %._crit_edge.i.i ], [ %i.cc, %bb.x ], [ %i.cc, %bb.y ], [ %i.cc, %bb.z ], [ %i.cc, %bb.ae ], [ %i.cc, %bb.ai ], [ %i.cc, %bb.am ], [ %i.cc, %bb.ao ], [ %i.gv, %bb.ap ], [ %i.gv, %._crit_edge296.i.i ], [ %i.gv, %.loopexit.i.i ], [ %i.gv, %bb.ar ], [ %i.gv, %bb.as ]
  %.0186.i.i = phi ptr [ null, %bb.u ], [ null, %bb.v ], [ null, %._crit_edge.i.i ], [ %i.eb, %bb.x ], [ %i.eb, %bb.y ], [ %i.eb, %bb.z ], [ %i.eb, %bb.ae ], [ %i.eb, %bb.ai ], [ %i.eb, %bb.am ], [ %i.eb, %bb.ao ], [ %i.eb, %bb.ap ], [ %i.eb, %._crit_edge296.i.i ], [ %i.eb, %.loopexit.i.i ], [ %i.eb, %bb.ar ], [ %i.eb, %bb.as ]
  %.0185.i.i = phi ptr [ null, %bb.u ], [ null, %bb.v ], [ %i.dx, %._crit_edge.i.i ], [ %i.dx, %bb.x ], [ %i.dx, %bb.y ], [ %i.dx, %bb.z ], [ %i.dx, %bb.ae ], [ %i.dx, %bb.ai ], [ %i.dx, %bb.am ], [ %i.dx, %bb.ao ], [ %i.dx, %bb.ap ], [ %i.dx, %._crit_edge296.i.i ], [ %i.dx, %.loopexit.i.i ], [ %i.dx, %bb.ar ], [ %i.dx, %bb.as ]
  call void @ft_mem_free(ptr noundef %i.az, ptr noundef %.0185.i.i) #26
  call void @ft_mem_free(ptr noundef %i.az, ptr noundef %.0186.i.i) #26
  %i.kt = load i32, ptr %i.a, align 4, !tbaa !3
  %.not242.i.i = icmp eq i32 %i.kt, 0
  br i1 %.not242.i.i, label %woff_open_font.exit.thread3.i, label %woff_open_font.exit.i

woff_open_font.exit.thread3.i:                    ; preds = %.thread266.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.c, align 4, !tbaa !3
  br label %bb.ba

.loopexit.i.i:                                    ; preds = %bb.av, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %.06318.i) #26
  br label %.thread266.i.i

woff_open_font.exit.thread.i:                     ; preds = %.thread.i.i, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.n, %bb.m
  %.0.i.ph.i = phi i32 [ 8, %bb.p ], [ 8, %bb.o ], [ 8, %bb.n ], [ 8, %bb.t ], [ 8, %.thread.i.i ], [ 8, %bb.q ], [ 8, %bb.n ], [ %i.ba, %bb.m ], [ 8, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %sfnt_open_font.exit.thread

woff_open_font.exit.i:                            ; preds = %.thread266.i.i
  call void @ft_mem_free(ptr noundef %i.az, ptr noundef %.0190.i.i) #26
  call void @FT_Stream_Close(ptr noundef %.0204.i.i) #26
  call void @ft_mem_free(ptr noundef %i.az, ptr noundef %.0204.i.i) #26
  %.pre313.i.i = load i32, ptr %i.a, align 4, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i32 %.pre313.i.i, ptr %i.c, align 4, !tbaa !3
  %.not79.i = icmp eq i32 %.pre313.i.i, 0
  br i1 %.not79.i, label %bb.ba, label %sfnt_open_font.exit.thread

bb.ba:                                            ; preds = %woff_open_font.exit.i, %woff_open_font.exit.thread3.i
  %i.ku = load ptr, ptr %i.at, align 8, !tbaa !204 ; 3 uses
  %i.kv = call i64 @FT_Stream_Pos(ptr noundef %i.ku) #26
  %i.kw = call i32 @FT_Stream_ReadULong(ptr noundef %i.ku, ptr noundef nonnull %i.c) #26
  %i.kx = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %.not.i = icmp eq i32 %i.kx, 0
  br i1 %.not.i, label %bb.k, label %sfnt_open_font.exit.thread

bb.bb:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  store i64 1953784678, ptr %i.af, align 8, !tbaa !206
  %i.ky = icmp eq i32 %i.av, 1953784678
  br i1 %i.ky, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.kz = call i32 @FT_Stream_ReadFields(ptr noundef %.06318.i, ptr noundef nonnull @sfnt_open_font.ttc_header_fields, ptr noundef nonnull %i.af) #26 ; 3 uses
  store i32 %i.kz, ptr %i.c, align 4, !tbaa !3
  %.not75.i = icmp eq i32 %i.kz, 0
  br i1 %.not75.i, label %bb.bd, label %sfnt_open_font.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.la = load i64, ptr %i.ah, align 8, !tbaa !207 ; 3 uses
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %sfnt_open_font.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lc = getelementptr inbounds nuw i8, ptr %.06318.i, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !183
  %i.le = lshr i64 %i.ld, 5
  %i.lf = icmp ugt i64 %i.la, %i.le
  br i1 %i.lf, label %sfnt_open_font.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lg = call ptr @ft_mem_qrealloc(ptr noundef %i.ae, i64 noundef 8, i64 noundef 0, i64 noundef %i.la, ptr noundef null, ptr noundef nonnull %i.c) #26
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !208
  %i.li = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %.not76.i = icmp eq i32 %i.li, 0
  br i1 %.not76.i, label %bb.bg, label %sfnt_open_font.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.lj = load i64, ptr %i.ah, align 8, !tbaa !207
  %i.lk = shl nsw i64 %i.lj, 2
  %i.ll = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %.06318.i, i64 noundef %i.lk) #26 ; 3 uses
  store i32 %i.ll, ptr %i.c, align 4, !tbaa !3
  %.not77.i = icmp eq i32 %i.ll, 0
  br i1 %.not77.i, label %.preheader.i, label %sfnt_open_font.exit.thread

.preheader.i:                                     ; preds = %bb.bg
  %i.lm = load i64, ptr %i.ah, align 8, !tbaa !207
  %i.ln = icmp sgt i64 %i.lm, 0
  br i1 %i.ln, label %.lr.ph25.i, label %sfnt_open_font.exit

.lr.ph25.i:                                       ; preds = %.preheader.i, %.lr.ph25.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph25.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.lo = call i32 @FT_Stream_GetULong(ptr noundef nonnull %.06318.i) #26
  %i.lp = zext i32 %i.lo to i64
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !208
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv.i
  store i64 %i.lp, ptr %i.lr, align 8, !tbaa !160
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ls = load i64, ptr %i.ah, align 8, !tbaa !207
  %i.lt = icmp sgt i64 %i.ls, %indvars.iv.next.i
  br i1 %i.lt, label %.lr.ph25.i, label %sfnt_open_font.exit, !llvm.loop !209

bb.bh:                                            ; preds = %bb.bb
  store i64 65536, ptr %i.ag, align 8, !tbaa !210
  store i64 1, ptr %i.ah, align 8, !tbaa !207
  %i.lu = call ptr @ft_mem_qalloc(ptr noundef %i.ae, i64 noundef 8, ptr noundef nonnull %i.c) #26 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !208
  %i.lw = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %.not74.i = icmp eq i32 %i.lw, 0
  br i1 %.not74.i, label %sfnt_open_font.exit.thread202, label %sfnt_open_font.exit.thread

sfnt_open_font.exit.thread202:                    ; preds = %bb.bh
  store i64 %i.aw, ptr %i.lu, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.bi

sfnt_open_font.exit.thread:                       ; preds = %bb.l, %bb.ba, %woff_open_font.exit.i, %bb.k, %bb.bf, %bb.be, %bb.bd, %bb.bc, %woff_open_font.exit.thread.i, %bb.bh, %bb.bg, %bb.j
  %.1.i.ph = phi i32 [ %i.kz, %bb.bc ], [ 8, %bb.bd ], [ 10, %bb.be ], [ %i.li, %bb.bf ], [ %i.ak, %bb.j ], [ %i.ll, %bb.bg ], [ %i.lw, %bb.bh ], [ %.0.i.ph.i, %woff_open_font.exit.thread.i ], [ %i.ax, %bb.l ], [ %i.kx, %bb.ba ], [ %.pre313.i.i, %woff_open_font.exit.i ], [ 2, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.co

sfnt_open_font.exit:                              ; preds = %.lr.ph25.i, %.preheader.i
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %.06318.i) #26
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %.not174 = icmp eq i32 %.pre.i, 0
  br i1 %.not174, label %bb.bi, label %bb.co

bb.bi:                                            ; preds = %sfnt_open_font.exit.thread202, %sfnt_open_font.exit
  %i.lx = load ptr, ptr %i.at, align 8, !tbaa !204 ; 16 uses
  %i.ly = icmp slt i32 %2, 0
  %i.lz = call i32 @llvm.abs.i32(i32 %2, i1 true) ; 2 uses
  %i.ma = and i32 %i.lz, 65535                    ; 2 uses
  %i.mb = icmp ne i32 %i.ma, 0
  %or.cond = and i1 %i.ly, %i.mb
  %i.mc = sext i1 %or.cond to i32
  %spec.select = add nsw i32 %i.ma, %i.mc         ; 2 uses
  %i.md = zext nneg i32 %spec.select to i64
  %i.me = load i64, ptr %i.ah, align 8, !tbaa !207
  %.not175 = icmp sgt i64 %i.me, %i.md
  br i1 %.not175, label %._crit_edge239, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mf = icmp sgt i32 %2, -1
  br i1 %i.mf, label %bb.co, label %._crit_edge239

._crit_edge239:                                   ; preds = %bb.bj, %bb.bi
  %.1157 = phi i32 [ %spec.select, %bb.bi ], [ 0, %bb.bj ]
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !208
  %i.mi = zext nneg i32 %.1157 to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mi
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !160
  %i.ml = call i32 @FT_Stream_Seek(ptr noundef %i.lx, i64 noundef %i.mk) #26 ; 2 uses
  %.not176 = icmp eq i32 %i.ml, 0
  br i1 %.not176, label %bb.bk, label %bb.co

bb.bk:                                            ; preds = %._crit_edge239
  %i.mm = getelementptr inbounds nuw i8, ptr %.0155, i64 176
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !211
  %i.mo = call i32 %i.mn(ptr noundef nonnull %1, ptr noundef %i.lx) #26 ; 3 uses
  store i32 %i.mo, ptr %i.d, align 4, !tbaa !3
  %.not177 = icmp eq i32 %i.mo, 0
  br i1 %.not177, label %bb.bl, label %bb.co

bb.bl:                                            ; preds = %bb.bk
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !212 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.mr = lshr i32 %i.lz, 16
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 4 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !173
  %i.mu = call i32 %i.mt(ptr noundef nonnull %1, i64 noundef 1719034226, ptr noundef %i.lx, ptr noundef nonnull %i.e) #26
  %i.mv = icmp ne i32 %i.mu, 0
  %i.mw = load i64, ptr %i.e, align 8
  %i.mx = icmp ult i64 %i.mw, 20
  %or.cond3 = select i1 %i.mv, i1 true, i1 %i.mx
  br i1 %or.cond3, label %bb.bt, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
end_hunk_0
