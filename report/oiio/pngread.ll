inline.NumInlined: 35
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@png_create_colormap_entry:bb.a
  %i.go = trunc i32 %.3153 to i16
  %i.gp = select i1 %spec.select, i64 0, i64 3
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.gp
  store i16 %i.go, ptr %i.gq, align 2, !tbaa !153
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gr = icmp samesign ult i32 %.3153, 65535
  br i1 %i.gr, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.not164 = icmp eq i32 %.3153, 0
  br i1 %.not164, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = mul i32 %.2148, %.3153
  %i.gt = add i32 %i.gs, 32767
  %i.gu = udiv i32 %i.gt, 65535
  %i.gv = mul i32 %.2143, %.3153
  %i.gw = add i32 %i.gv, 32767
  %i.gx = udiv i32 %i.gw, 65535
  %i.gy = mul i32 %.2, %.3153
  %i.gz = add i32 %i.gy, 32767
  %i.ha = udiv i32 %i.gz, 65535
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.3149 = phi i32 [ %i.gu, %bb.ac ], [ %.2148, %bb.aa ], [ 0, %bb.ab ]
  %.3144 = phi i32 [ %i.gx, %bb.ac ], [ %.2143, %bb.aa ], [ 0, %bb.ab ]
  %.3 = phi i32 [ %i.ha, %bb.ac ], [ %.2, %bb.aa ], [ 0, %bb.ab ]
  %i.hb = trunc i32 %.3149 to i16
  %i.hc = or disjoint i32 %i.gg, %i.ge            ; 2 uses
  %i.hd = xor i32 %i.hc, 2
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.he
  store i16 %i.hb, ptr %i.hf, align 2, !tbaa !153
  %i.hg = trunc i32 %.3144 to i16
  %i.hh = select i1 %spec.select, i64 2, i64 1
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.hh
  store i16 %i.hg, ptr %i.hi, align 2, !tbaa !153
  %i.hj = trunc i32 %.3 to i16
  %i.hk = zext nneg i32 %i.hc to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.hk
  store i16 %i.hj, ptr %i.hl, align 2, !tbaa !153
  br label %bb.ao

bb.ae:                                            ; preds = %bb.y
  %i.hm = trunc i32 %.3153 to i16
  %i.hn = xor i32 %i.ge, 1
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.ho
  store i16 %i.hm, ptr %i.hp, align 2, !tbaa !153
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %i.hq = icmp samesign ult i32 %.3153, 65535
  br i1 %i.hq, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.not163 = icmp eq i32 %.3153, 0
  br i1 %.not163, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hr = mul i32 %.2143, %.3153
  %i.hs = add i32 %i.hr, 32767
  %i.ht = udiv i32 %i.hs, 65535
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.4 = phi i32 [ %i.ht, %bb.ah ], [ %.2143, %bb.af ], [ 0, %bb.ag ]
  %i.hu = trunc i32 %.4 to i16
  %i.hv = zext i1 %spec.select to i64
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.hv
  store i16 %i.hu, ptr %i.hw, align 2, !tbaa !153
  br label %bb.ao

default.unreachable187:                           ; preds = %bb.aj, %bb.y
  unreachable

bb.aj:                                            ; preds = %bb.x
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gm ; 6 uses
  switch i32 %i.gk, label %default.unreachable187 [
    i32 4, label %bb.ak
    i32 3, label %bb.al
    i32 2, label %bb.am
    i32 1, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.hy = trunc i32 %.3153 to i8
  %i.hz = select i1 %spec.select, i64 0, i64 3
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hz
  store i8 %i.hy, ptr %i.ia, align 1, !tbaa !46
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ib = trunc i32 %.2148 to i8
  %i.ic = or disjoint i32 %i.gg, %i.ge            ; 2 uses
  %i.id = xor i32 %i.ic, 2
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ie
  store i8 %i.ib, ptr %i.if, align 1, !tbaa !46
  %i.ig = trunc i32 %.2143 to i8
  %i.ih = select i1 %spec.select, i64 2, i64 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ih
  store i8 %i.ig, ptr %i.ii, align 1, !tbaa !46
  %i.ij = trunc i32 %.2 to i8
  %i.ik = zext nneg i32 %i.ic to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ik
  store i8 %i.ij, ptr %i.il, align 1, !tbaa !46
  br label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.im = trunc i32 %.3153 to i8
  %i.in = xor i32 %i.ge, 1
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.io
  store i8 %i.im, ptr %i.ip, align 1, !tbaa !46
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %i.iq = trunc i32 %.2143 to i8
  %i.ir = zext i1 %spec.select to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ir
  store i8 %i.iq, ptr %i.is, align 1, !tbaa !46
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an, %bb.ad, %bb.ai
  ret void
}

declare void @png_set_background_fixed(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @make_ga_colormap(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.01921 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ] ; 3 uses
  %.019.tr = trunc nuw nsw i32 %.01921 to i16
  %i.a = shl nuw i16 %.019.tr, 8
  %.lhs.trunc = or disjoint i16 %i.a, 115
  %i.b = udiv i16 %.lhs.trunc, 231
  %.zext = zext nneg i16 %i.b to i32              ; 3 uses
  %i.c = add nuw nsw i32 %.01921, 1               ; 2 uses
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %.01921, i32 noundef %.zext, i32 noundef %.zext, i32 noundef %.zext, i32 noundef 255, i32 noundef 1)
  %exitcond.not = icmp eq i32 %i.c, 231
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !191

.preheader:                                       ; preds = %bb.b
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 231, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 0, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 232, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 233, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 234, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 235, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 236, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 237, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 238, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 239, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 240, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 241, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 242, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 243, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 244, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 245, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 246, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 247, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 248, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 249, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 250, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 251, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 252, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 253, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 254, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 204, i32 noundef 1)
  ret i32 256
}

declare void @png_set_rgb_to_gray_fixed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @png_resolve_file_gamma(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @png_gamma_16bit_correct(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @make_rgb_colormap(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  br label %.preheader14

.preheader14:                                     ; preds = %bb.a, %bb.b
  %.01220 = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %.01319 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  %i.a = mul nuw nsw i32 %.01220, 51              ; 6 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader14, %.preheader
  %.01118 = phi i32 [ 0, %.preheader14 ], [ %i.i, %.preheader ] ; 2 uses
  %.117 = phi i32 [ %.01319, %.preheader14 ], [ %i.h, %.preheader ] ; 7 uses
  %i.b = mul nuw nsw i32 %.01118, 51              ; 6 uses
  %i.c = add i32 %.117, 1
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %.117, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 0, i32 noundef 255, i32 noundef 1)
  %i.d = add i32 %.117, 2
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 51, i32 noundef 255, i32 noundef 1)
  %i.e = add i32 %.117, 3
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.d, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 102, i32 noundef 255, i32 noundef 1)
  %i.f = add i32 %.117, 4
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 153, i32 noundef 255, i32 noundef 1)
  %i.g = add i32 %.117, 5
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 204, i32 noundef 255, i32 noundef 1)
  %i.h = add i32 %.117, 6                         ; 3 uses
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 255, i32 noundef 255, i32 noundef 1)
  %i.i = add nuw nsw i32 %.01118, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, 6
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !192

bb.b:                                             ; preds = %.preheader
  %i.j = add nuw nsw i32 %.01220, 1               ; 2 uses
  %exitcond21.not = icmp eq i32 %i.j, 6
  br i1 %exitcond21.not, label %bb.c, label %.preheader14, !llvm.loop !193

bb.c:                                             ; preds = %bb.b
  ret i32 %i.h
}

declare void @png_set_tRNS_to_alpha(ptr noundef) local_unnamed_addr #2

declare void @png_set_alpha_mode_fixed(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @png_gamma_significant(i32 noundef) local_unnamed_addr #2

declare i32 @png_reciprocal(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 16842496) i32 @decode_gamma(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef range(i32 1, 4) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 3
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !189  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !139
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %i.h = tail call i32 @png_resolve_file_gamma(ptr noundef %i.g) #13 ; 5 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_error(ptr noundef %i.g, ptr noundef nonnull @.str.50) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @png_gamma_significant(i32 noundef %i.h) #13
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.thread.thread17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add i32 %i.h, -10000001
  %or.cond.i.i = icmp ult i32 %i.k, -9999001
  br i1 %or.cond.i.i, label %.thread.thread, label %png_gamma_not_sRGB.exit.i

png_gamma_not_sRGB.exit.i:                        ; preds = %bb.f
  %i.l = mul nuw nsw i32 %i.h, 11
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = udiv i32 %i.m, 5
  %i.o = tail call i32 @png_gamma_significant(i32 noundef %i.n) #13
  %.not10.i = icmp eq i32 %i.o, 0
  br i1 %.not10.i, label %.thread.thread, label %bb.g

bb.g:                                             ; preds = %png_gamma_not_sRGB.exit.i
  store i32 3, ptr %i.b, align 8, !tbaa !189
  %i.p = tail call i32 @png_reciprocal(i32 noundef %i.h) #13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.p, ptr %i.q, align 4, !tbaa !190
  %.pre = load i32, ptr %i.b, align 8, !tbaa !189
  br label %.thread

.thread.thread:                                   ; preds = %bb.f, %png_gamma_not_sRGB.exit.i
  store i32 1, ptr %i.b, align 8, !tbaa !189
  br label %bb.i

.thread.thread17:                                 ; preds = %bb.e
  store i32 4, ptr %i.b, align 8, !tbaa !189
  br label %bb.j

.thread:                                          ; preds = %bb.g, %bb.a, %bb.b
  %.1 = phi i32 [ %2, %bb.a ], [ %i.c, %bb.b ], [ %.pre, %bb.g ]
  switch i32 %.1, label %bb.k [
    i32 3, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 4, label %bb.j
  ]

bb.h:                                             ; preds = %.thread
  %i.r = mul nuw nsw i32 %1, 257
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !190
  %i.u = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %i.r, i32 noundef %i.t) #13
  %i.v = zext i16 %i.u to i32
  br label %bb.l

bb.i:                                             ; preds = %.thread.thread, %.thread
  %i.w = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !153
  %i.z = zext i16 %i.y to i32
  br label %bb.l

bb.j:                                             ; preds = %.thread.thread17, %.thread
  %i.aa = mul nuw nsw i32 %1, 257
  br label %bb.l

bb.k:                                             ; preds = %.thread
  %i.ab = load ptr, ptr %0, align 8, !tbaa !139
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !109
  tail call void @png_error(ptr noundef %i.ad, ptr noundef nonnull @.str.51) #14
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %.thread
  %.011 = phi i32 [ %i.v, %bb.h ], [ %i.z, %bb.i ], [ %1, %.thread ], [ %i.aa, %bb.j ]
  ret i32 %.011
}

declare i64 @png_get_rowbytes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_image_read_and_map(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 620 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !41
  switch i8 %i.e, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.53) #14
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.0103 = phi i32 [ 7, %bb.b ], [ 1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !138  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !137  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !164
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !173  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !174  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.q = zext i32 %i.i to i64                     ; 8 uses
  %.fr = freeze i32 %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit133
  %.0104153 = phi i32 [ 0, %bb.d ], [ %i.fn, %.loopexit133 ] ; 8 uses
  %i.r = load i8, ptr %i.d, align 4, !tbaa !41
  %i.s = icmp eq i8 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = icmp samesign ugt i32 %.0104153, 1
  %i.u = sub nuw nsw i32 7, %.0104153
  %i.v = lshr i32 %i.u, 1                         ; 2 uses
  %i.w = select i1 %i.t, i32 %i.v, i32 3          ; 2 uses
  %notmask = shl nsw i32 -1, %i.w
  %i.x = xor i32 %notmask, -1
  %i.y = and i32 %.0104153, 1                     ; 2 uses
  %i.z = add nuw nsw i32 %.0104153, 1
  %i.aa = lshr i32 %i.z, 1
  %i.ab = sub nsw i32 3, %i.aa
  %i.ac = shl nuw nsw i32 %i.y, %i.ab
  %i.ad = and i32 %i.ac, 7                        ; 2 uses
  %i.ae = add i32 %i.i, %i.x
  %i.af = sub i32 %i.ae, %i.ad
  %i.ag = lshr i32 %i.af, %i.w
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = shl nuw nsw i32 1, %i.v
  %i.aj = xor i32 %i.y, 1
  %i.ak = lshr i32 %.0104153, 1
  %i.al = sub nsw i32 3, %i.ak
  %i.am = shl nuw nsw i32 %i.aj, %i.al
  %i.an = and i32 %i.am, 7
  %i.ao = icmp samesign ugt i32 %.0104153, 2
  %i.ap = add nsw i32 %.0104153, -1
  %i.aq = ashr i32 %i.ap, 1
  %i.ar = lshr i32 8, %i.aq
  %i.as = select i1 %i.ao, i32 %i.ar, i32 8
  %i.at = zext nneg i32 %i.ad to i64
  %i.au = zext nneg i32 %i.ai to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.0109 = phi i32 [ %i.an, %bb.g ], [ 0, %bb.e ] ; 6 uses
  %.0108 = phi i32 [ %i.as, %bb.g ], [ 1, %bb.e ] ; 5 uses
  %.0107 = phi i64 [ %i.au, %bb.g ], [ 1, %bb.e ] ; 4 uses
  %.0105 = phi i64 [ %i.at, %bb.g ], [ 0, %bb.e ] ; 8 uses
  %i.av = icmp ult i32 %.0109, %i.g
  br i1 %i.av, label %.lr.ph146, label %.loopexit133

.lr.ph146:                                        ; preds = %bb.h
  switch i32 %.fr, label %.lr.ph146.split [
    i32 1, label %.preheader.us.preheader
    i32 2, label %.preheader127.us.preheader
end_hunk_0
