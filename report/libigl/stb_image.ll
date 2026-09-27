Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv:bb.a
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !77
  call void %i.bt(ptr noundef %i.bu, ptr noundef %i.bn, i32 noundef 1), !inline_history !182
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us [
    i32 4, label %bb.m
    i32 2, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bv = load ptr, ptr %0, align 8, !tbaa !76
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !77
  %i.bx = getelementptr i8, ptr %i.bn, i64 %i.af
  %i.by = getelementptr i8, ptr %i.bx, i64 -1
  call void %i.bv(ptr noundef %i.bw, ptr noundef %i.by, i32 noundef 1), !inline_history !182
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us: ; preds = %bb.m, %bb.l, %.lr.ph150.us
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph150.us, !llvm.loop !183

._crit_edge.us:                                   ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us, %.loopexit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.t

bb.n:                                             ; preds = %bb.f
  br i1 %i.ax, label %.lr.ph154.us.preheader, label %._crit_edge155.us

.lr.ph154.us.preheader:                           ; preds = %bb.n
  %i.bz = sext i32 %i.aw to i64
  br label %.lr.ph154.us

.lr.ph154.us:                                     ; preds = %.lr.ph154.us.preheader, %bb.o
  %indvars.iv174 = phi i64 [ %i.bz, %.lr.ph154.us.preheader ], [ %indvars.iv.next175, %bb.o ] ; 2 uses
  %.2152.us = phi i32 [ 2, %.lr.ph154.us.preheader ], [ %i.cc, %bb.o ] ; 3 uses
  %i.ca = mul nsw i64 %indvars.iv174, %i.ab
  %i.cb = getelementptr inbounds i8, ptr %i.an, i64 %i.ca
  %bcmp.us = call i32 @bcmp(ptr %i.aq, ptr %i.cb, i64 %i.ab)
  %.not118.us = icmp eq i32 %bcmp.us, 0
  br i1 %.not118.us, label %bb.o, label %._crit_edge155.us

bb.o:                                             ; preds = %.lr.ph154.us
  %i.cc = add nuw nsw i32 %.2152.us, 1            ; 2 uses
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.cd = icmp slt i64 %indvars.iv.next175, %i.ai
  %i.ce = icmp samesign ult i32 %.2152.us, 127
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %.lr.ph154.us, label %._crit_edge155.us, !llvm.loop !184

._crit_edge155.us:                                ; preds = %.lr.ph154.us, %bb.o, %bb.n
  %.2.lcssa.us = phi i32 [ 2, %bb.n ], [ %i.cc, %bb.o ], [ %.2152.us, %.lr.ph154.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.cg = trunc nuw i32 %.2.lcssa.us to i8
  %i.ch = add nuw i8 %i.cg, 127
  store i8 %i.ch, ptr %i.d, align 1, !tbaa !34
  %i.ci = load ptr, ptr %0, align 8, !tbaa !76
  %i.cj = load ptr, ptr %i.ac, align 8, !tbaa !77
  call void %i.ci(ptr noundef %i.cj, ptr noundef nonnull %i.d, i32 noundef 1)
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us [
    i32 2, label %bb.q
    i32 1, label %bb.q
    i32 4, label %bb.p
    i32 3, label %bb.p
  ]

bb.p:                                             ; preds = %._crit_edge155.us, %._crit_edge155.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !34
  %i.co = load i8, ptr %i.aq, align 1, !tbaa !34
  %.val.i123.us = load ptr, ptr %0, align 8, !tbaa !76
  %.val38.i124.us = load ptr, ptr %i.ac, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i8 %i.cl, ptr %i.a, align 1, !tbaa !34
  store i8 %i.cn, ptr %i.ag, align 1, !tbaa !34
  store i8 %i.co, ptr %i.ah, align 1, !tbaa !34
  call void %.val.i123.us(ptr noundef %.val38.i124.us, ptr noundef nonnull %i.a, i32 noundef 3), !inline_history !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge155.us, %._crit_edge155.us
  %i.cp = load ptr, ptr %0, align 8, !tbaa !76
  %i.cq = load ptr, ptr %i.ac, align 8, !tbaa !77
  call void %i.cp(ptr noundef %i.cq, ptr noundef %i.aq, i32 noundef 1), !inline_history !182
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us [
    i32 4, label %bb.s
    i32 2, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.cr = load ptr, ptr %0, align 8, !tbaa !76
  %i.cs = load ptr, ptr %i.ac, align 8, !tbaa !77
  %i.ct = getelementptr i8, ptr %i.aq, i64 %i.af
  %i.cu = getelementptr i8, ptr %i.ct, i64 -1
  call void %i.cr(ptr noundef %i.cs, ptr noundef %i.cu, i32 noundef 1), !inline_history !182
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us: ; preds = %bb.s, %bb.r, %._crit_edge155.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.t

bb.t:                                             ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us, %._crit_edge.us
  %.3143.us = phi i32 [ %.2.lcssa.us, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us ], [ %.3.ph.us, %._crit_edge.us ]
  %i.cv = add nsw i32 %.3143.us, %.0109159.us     ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %1
  br i1 %i.cw, label %bb.e, label %._crit_edge163.us, !llvm.loop !185

._crit_edge163.us:                                ; preds = %bb.t
  %indvars.iv.next178 = add i64 %indvars.iv177, %.0102 ; 2 uses
  %i.cx = trunc i64 %indvars.iv.next178 to i32
  %.not116.us = icmp eq i32 %.0103, %i.cx
  br i1 %.not116.us, label %.loopexit144, label %.lr.ph162.us, !llvm.loop !186

.loopexit144:                                     ; preds = %._crit_edge163.us, %.lr.ph167, %bb.d, %bb.a, %bb.c
  %.0110 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %.lr.ph167 ], [ 1, %._crit_edge163.us ]
  ret i32 %.0110
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_tga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 3 uses
  store ptr @_ZL17stbi__stdio_writePvS_i, ptr %5, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !77
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc noundef i32 @_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %i.d = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_write_hdr_to_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf(ptr %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 10 uses
  %i.e = alloca [4 x i8], align 1                 ; 13 uses
  %i.f = alloca [128 x i8], align 16              ; 4 uses
  %i.g = alloca [66 x i8], align 16               ; 4 uses
  %i.h = icmp slt i32 %1, 1
  %i.i = icmp slt i32 %0, 1
  %or.cond = or i1 %i.i, %i.h
  %i.j = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.j
  br i1 %or.cond3, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = shl nuw nsw i32 %0, 2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #34 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.g, ptr noundef nonnull align 16 dereferenceable(66) @__const._ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf.header, i64 66, i1 false)
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 65)
  %i.n = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) @.str.107, i32 noundef %1, i32 noundef %0) #33
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.f, i32 noundef %i.n)
  %i.o = mul nsw i32 %2, %0                       ; 3 uses
  %i.p = lshr i32 %0, 8
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.s = trunc i32 %0 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.u = add nsw i32 %0, -32768
  %or.cond.i = icmp ult i32 %i.u, -32760
  %.off.i = add i32 %2, -3
  %switch.i = icmp ult i32 %.off.i, 2             ; 2 uses
  %i.v = shl nuw i32 %0, 1                        ; 3 uses
  %i.w = mul i32 %0, 3                            ; 3 uses
  %i.x = zext nneg i32 %0 to i64                  ; 14 uses
  %i.y = zext i32 %i.v to i64                     ; 3 uses
  %i.z = zext i32 %i.w to i64                     ; 3 uses
  %i.aa = sext i32 %2 to i64                      ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.x ; 4 uses
  %invariant.gep200.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y ; 4 uses
  %invariant.gep202.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z ; 4 uses
  %i.ab = zext nneg i32 %2 to i64                 ; 5 uses
  %invariant.op.i = add nsw i32 %0, -2            ; 2 uses
  %invariant.op212.i = add nsw i64 %i.x, -3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.split.us, label %.preheader131.i.preheader

.preheader131.i.preheader:                        ; preds = %bb.b
  %i.af = sub nsw i64 %i.y, %i.x                  ; 2 uses
  %i.ag = sub nsw i64 %i.z, %i.x                  ; 2 uses
  %i.ah = sub nsw i64 %i.z, %i.y                  ; 2 uses
  %ident.check.not = icmp eq i32 %2, 1
  %i.ai = add nsw i32 %0, -1
  %diff.check61 = icmp ult i32 %i.ai, 3
  %i.aj = add nsw i32 %i.v, -1
  %diff.check62.a = icmp ult i32 %i.aj, 3
  %conflict.rdx63.a = or i1 %diff.check61, %diff.check62.a
  %i.ak = add nsw i32 %i.w, -1
  %diff.check64.a = icmp ult i32 %i.ak, 3
  %conflict.rdx65.a = or i1 %conflict.rdx63.a, %diff.check64.a
  %i.al = add nsw i64 %i.af, -1
  %diff.check66.a = icmp ult i64 %i.al, 3
  %conflict.rdx67.a = or i1 %conflict.rdx65.a, %diff.check66.a
  %i.am = add nsw i64 %i.ag, -1
  %diff.check68 = icmp ult i64 %i.am, 3
  %conflict.rdx69 = or i1 %conflict.rdx67.a, %diff.check68
  %i.an = add nsw i64 %i.ah, -1
  %diff.check70 = icmp ult i64 %i.an, 3
  %conflict.rdx71 = or i1 %conflict.rdx69, %diff.check70
  %n.vec74 = and i64 %i.x, 32764                  ; 3 uses
  %cmp.n82 = icmp eq i64 %n.vec74, %i.x
  %i.ao = add nsw i32 %0, -1
  %diff.check = icmp ult i32 %i.ao, 3
  %i.ap = add nsw i32 %i.v, -1
  %diff.check44 = icmp ult i32 %i.ap, 3
  %conflict.rdx = or i1 %diff.check, %diff.check44
  %i.aq = add nsw i32 %i.w, -1
  %diff.check45 = icmp ult i32 %i.aq, 3
  %conflict.rdx46 = or i1 %conflict.rdx, %diff.check45
  %i.ar = add nsw i64 %i.af, -1
  %diff.check47 = icmp ult i64 %i.ar, 3
  %conflict.rdx48 = or i1 %conflict.rdx46, %diff.check47
  %i.as = add nsw i64 %i.ag, -1
  %diff.check49 = icmp ult i64 %i.as, 3
  %conflict.rdx50 = or i1 %conflict.rdx48, %diff.check49
  %i.at = add nsw i64 %i.ah, -1
  %diff.check51 = icmp ult i64 %i.at, 3
  %conflict.rdx52 = or i1 %conflict.rdx50, %diff.check51
  %n.vec = and i64 %i.x, 32764                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.preheader131.i

.split.us:                                        ; preds = %bb.b
  br i1 %switch.i, label %.preheader.i.us.us, label %.preheader.i.us

.preheader.i.us.us:                               ; preds = %.split.us, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us
  %.06.us.us = phi i32 [ %i.bz, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us ], [ 0, %.split.us ] ; 3 uses
  %i.au = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !24
  %.not.us.us = icmp eq i32 %i.au, 0
  %i.av = xor i32 %.06.us.us, -1
  %i.aw = add nsw i32 %1, %i.av
  %i.ax = select i1 %.not.us.us, i32 %.06.us.us, i32 %i.aw
  %i.ay = mul nsw i32 %i.o, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us, %.preheader.i.us.us
  %indvars.iv183.i.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %indvars.iv.next184.i.us.us.us, %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us ] ; 2 uses
  %i.bb = mul nuw nsw i64 %indvars.iv183.i.us.us.us, %i.aa
  %i.bc = getelementptr [4 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !55 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !55 ; 3 uses
  %i.bh = load float, ptr %i.bc, align 4, !tbaa !55 ; 3 uses
  %i.bi = fcmp ogt float %i.bg, %i.be
  %..i.i.us.us.us = select i1 %i.bi, float %i.bg, float %i.be ; 2 uses
  %i.bj = fcmp ogt float %i.bh, %..i.i.us.us.us
  %i.bk = select i1 %i.bj, float %i.bh, float %..i.i.us.us.us ; 3 uses
  %i.bl = fcmp olt float %i.bk, 1.000000e-32
  br i1 %i.bl, label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = call { float, i32 } @llvm.frexp.f32.i32(float %i.bk) ; 2 uses
  %i.bn = extractvalue { float, i32 } %i.bm, 1
  %i.bo = extractvalue { float, i32 } %i.bm, 0
  %i.bp = fmul float %i.bo, 2.560000e+02
  %i.bq = fdiv float %i.bp, %i.bk                 ; 3 uses
  %i.br = fmul float %i.bh, %i.bq
  %i.bs = fptoui float %i.br to i8
  %i.bt = fmul float %i.bg, %i.bq
  %i.bu = fptoui float %i.bt to i8
  %i.bv = fmul float %i.be, %i.bq
  %i.bw = fptoui float %i.bv to i8
  %i.bx = trunc i32 %i.bn to i8
  %i.by = xor i8 %i.bx, -128
  br label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us

_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us:   ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ %i.bu, %bb.d ], [ 0, %bb.c ]
  %.sink.i.us.us.us = phi i8 [ %i.bs, %bb.d ], [ 0, %bb.c ]
  %.sink32.i.i.us.us.us = phi i8 [ %i.by, %bb.d ], [ 0, %bb.c ]
  %.sink.i.i.us.us.us = phi i8 [ %i.bw, %bb.d ], [ 0, %bb.c ]
  store i8 %.sink, ptr %i.ae, align 1, !tbaa !34
  store i8 %.sink.i.us.us.us, ptr %i.e, align 1, !tbaa !34
  store i8 %.sink32.i.i.us.us.us, ptr %i.ac, align 1, !tbaa !34
  store i8 %.sink.i.i.us.us.us, ptr %i.ad, align 1, !tbaa !34
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !187
  %indvars.iv.next184.i.us.us.us = add nuw nsw i64 %indvars.iv183.i.us.us.us, 1 ; 2 uses
  %exitcond187.not.i.us.us.us = icmp eq i64 %indvars.iv.next184.i.us.us.us, %i.x
  br i1 %exitcond187.not.i.us.us.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us, label %bb.c, !llvm.loop !188

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.bz = add nuw nsw i32 %.06.us.us, 1           ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bz, %1
  br i1 %exitcond17.not, label %.split8.us, label %.preheader.i.us.us, !llvm.loop !189

.preheader.i.us:                                  ; preds = %.split.us, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split
  %.06.us = phi i32 [ %i.cu, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split ], [ 0, %.split.us ] ; 3 uses
  %i.ca = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !24
  %.not.us = icmp eq i32 %i.ca, 0
  %i.cb = xor i32 %.06.us, -1
  %i.cc = add nsw i32 %1, %i.cb
  %i.cd = select i1 %.not.us, i32 %.06.us, i32 %i.cc
  %i.ce = mul nsw i32 %i.o, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %bb.e

bb.e:                                             ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us, %.preheader.i.us
  %indvars.iv183.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next184.i.us, %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us ] ; 2 uses
  %i.ch = mul nsw i64 %indvars.iv183.i.us, %i.aa
  %i.ci = getelementptr [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !55 ; 4 uses
  %i.ck = fcmp olt float %i.cj, 1.000000e-32
  br i1 %i.ck, label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cl = call { float, i32 } @llvm.frexp.f32.i32(float %i.cj) ; 2 uses
  %i.cm = extractvalue { float, i32 } %i.cl, 1
  %i.cn = extractvalue { float, i32 } %i.cl, 0
  %i.co = fmul float %i.cn, 2.560000e+02
  %i.cp = fdiv float %i.co, %i.cj
  %i.cq = fmul float %i.cj, %i.cp
  %i.cr = fptoui float %i.cq to i8
  %i.cs = trunc i32 %i.cm to i8
  %i.ct = xor i8 %i.cs, -128
  br label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us

_ZL21stbiw__linear_to_rgbePhPf.exit.i.us:         ; preds = %bb.e, %bb.f
  %.sink18 = phi i8 [ %i.cr, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sink32.i.i.us = phi i8 [ %i.ct, %bb.f ], [ 0, %bb.e ]
  store i8 %.sink18, ptr %i.ae, align 1, !tbaa !34
  store i8 %.sink18, ptr %i.e, align 1, !tbaa !34
  store i8 %.sink32.i.i.us, ptr %i.ac, align 1, !tbaa !34
  store i8 %.sink18, ptr %i.ad, align 1, !tbaa !34
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !187
  %indvars.iv.next184.i.us = add nuw nsw i64 %indvars.iv183.i.us, 1 ; 2 uses
  %exitcond187.not.i.us = icmp eq i64 %indvars.iv.next184.i.us, %i.x
  br i1 %exitcond187.not.i.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split, label %bb.e, !llvm.loop !188

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.cu = add nuw nsw i32 %.06.us, 1              ; 2 uses
  %exitcond16.not = icmp eq i32 %i.cu, %1
  br i1 %exitcond16.not, label %.split8.us, label %.preheader.i.us, !llvm.loop !189

.preheader131.i:                                  ; preds = %.preheader131.i.preheader, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1
  %.06 = phi i32 [ %i.hv, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1 ], [ 0, %.preheader131.i.preheader ] ; 3 uses
  %i.cv = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !24
  %.not = icmp eq i32 %i.cv, 0
  %i.cw = xor i32 %.06, -1
  %i.cx = add nsw i32 %1, %i.cw
  %i.cy = select i1 %.not, i32 %.06, i32 %i.cx
  %i.cz = mul nsw i32 %i.o, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %3, i64 %i.da ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 514, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i8 %i.q, ptr %i.r, align 2, !tbaa !34
  store i8 %i.s, ptr %i.t, align 1, !tbaa !34
  br i1 %switch.i, label %vector.scevcheck, label %vector.scevcheck58

vector.scevcheck58:                               ; preds = %.preheader131.i
  %ident.check.not.not = xor i1 %ident.check.not, true
  %brmerge = select i1 %ident.check.not.not, i1 true, i1 %conflict.rdx71
  br i1 %brmerge, label %.preheader131.split.i.preheader, label %vector.body75

vector.body75:                                    ; preds = %vector.scevcheck58, %vector.body75
  %index76 = phi i64 [ %index.next80, %vector.body75 ], [ 0, %vector.scevcheck58 ] ; 6 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %index76
  %wide.load77 = load <4 x float>, ptr %i.dc, align 4, !tbaa !55 ; 4 uses
  %i.dd = fcmp olt <4 x float> %wide.load77, splat (float 1.000000e-32) ; 2 uses
  %i.de = call { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float> %wide.load77) ; 2 uses
  %i.df = extractvalue { <4 x float>, <4 x i32> } %i.de, 1
  %i.dg = extractvalue { <4 x float>, <4 x i32> } %i.de, 0
  %i.dh = fmul <4 x float> %i.dg, splat (float 2.560000e+02)
  %i.di = fdiv <4 x float> %i.dh, %wide.load77
  %i.dj = fmul <4 x float> %wide.load77, %i.di
  %i.dk = fptoui <4 x float> %i.dj to <4 x i8>
  %i.dl = trunc <4 x i32> %i.df to <4 x i8>
  %i.dm = xor <4 x i8> %i.dl, splat (i8 -128)
  %predphi78 = select <4 x i1> %i.dd, <4 x i8> zeroinitializer, <4 x i8> %i.dk ; 3 uses
  %predphi79 = select <4 x i1> %i.dd, <4 x i8> zeroinitializer, <4 x i8> %i.dm
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 %index76
  store <4 x i8> %predphi78, ptr %i.dn, align 1, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index76
  store <4 x i8> %predphi78, ptr %i.do, align 1, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %index76
  store <4 x i8> %predphi78, ptr %i.dp, align 1, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %index76
  store <4 x i8> %predphi79, ptr %i.dq, align 1, !tbaa !34
  %index.next80 = add nuw i64 %index76, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.dr, label %middle.block81, label %vector.body75, !llvm.loop !190

middle.block81:                                   ; preds = %vector.body75
  br i1 %cmp.n82, label %.split.us.i, label %.preheader131.split.i.preheader

.preheader131.split.i.preheader:                  ; preds = %vector.scevcheck58, %middle.block81
  %indvars.iv.i.ph = phi i64 [ %n.vec74, %middle.block81 ], [ 0, %vector.scevcheck58 ]
  br label %.preheader131.split.i

vector.scevcheck:                                 ; preds = %.preheader131.i
  br i1 %conflict.rdx52, label %.preheader131.split.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 9 uses
  %4 = or disjoint i64 %index, 1
  %5 = or disjoint i64 %index, 2
  %6 = or disjoint i64 %index, 3
  %7 = mul nuw nsw i64 %index, %i.ab
  %8 = mul nuw nsw i64 %4, %i.ab
  %9 = mul nuw nsw i64 %5, %i.ab
  %10 = mul nuw nsw i64 %6, %i.ab
  %11 = getelementptr [4 x i8], ptr %i.db, i64 %7 ; 3 uses
  %12 = getelementptr [4 x i8], ptr %i.db, i64 %8 ; 3 uses
  %13 = getelementptr [4 x i8], ptr %i.db, i64 %9 ; 3 uses
  %i.ds = getelementptr [4 x i8], ptr %i.db, i64 %10 ; 3 uses
  %14 = getelementptr i8, ptr %11, i64 8
  %15 = getelementptr i8, ptr %12, i64 8
  %16 = getelementptr i8, ptr %13, i64 8
  %17 = getelementptr i8, ptr %i.ds, i64 8
  %18 = load float, ptr %14, align 4, !tbaa !55
  %19 = load float, ptr %15, align 4, !tbaa !55
  %20 = load float, ptr %16, align 4, !tbaa !55
  %21 = load float, ptr %17, align 4, !tbaa !55
  %22 = insertelement <4 x float> poison, float %18, i64 0
  %23 = insertelement <4 x float> %22, float %19, i64 1
  %24 = insertelement <4 x float> %23, float %20, i64 2
  %25 = insertelement <4 x float> %24, float %21, i64 3 ; 3 uses
  %26 = getelementptr i8, ptr %11, i64 4
  %i.dt = getelementptr i8, ptr %12, i64 4
  %27 = getelementptr i8, ptr %13, i64 4
  %i.du = getelementptr i8, ptr %i.ds, i64 4
  %28 = load float, ptr %26, align 4, !tbaa !55
  %29 = load float, ptr %i.dt, align 4, !tbaa !55
  %30 = load float, ptr %27, align 4, !tbaa !55
  %31 = load float, ptr %i.du, align 4, !tbaa !55
  %32 = insertelement <4 x float> poison, float %28, i64 0
  %33 = insertelement <4 x float> %32, float %29, i64 1
  %34 = insertelement <4 x float> %33, float %30, i64 2
  %35 = insertelement <4 x float> %34, float %31, i64 3 ; 3 uses
  %36 = load float, ptr %11, align 4, !tbaa !55
  %37 = load float, ptr %12, align 4, !tbaa !55
  %38 = load float, ptr %13, align 4, !tbaa !55
  %39 = load float, ptr %i.ds, align 4, !tbaa !55
  %40 = insertelement <4 x float> poison, float %36, i64 0
  %41 = insertelement <4 x float> %40, float %37, i64 1
  %42 = insertelement <4 x float> %41, float %38, i64 2
  %43 = insertelement <4 x float> %42, float %39, i64 3 ; 3 uses
  %i.dv = fcmp ogt <4 x float> %35, %25
  %i.dw = select <4 x i1> %i.dv, <4 x float> %35, <4 x float> %25 ; 2 uses
  %i.dx = fcmp ogt <4 x float> %43, %i.dw
  %i.dy = select <4 x i1> %i.dx, <4 x float> %43, <4 x float> %i.dw ; 3 uses
  %i.dz = fcmp olt <4 x float> %i.dy, splat (float 1.000000e-32) ; 4 uses
  %i.ea = call { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float> %i.dy) ; 2 uses
  %i.eb = extractvalue { <4 x float>, <4 x i32> } %i.ea, 1
  %i.ec = extractvalue { <4 x float>, <4 x i32> } %i.ea, 0
  %i.ed = fmul <4 x float> %i.ec, splat (float 2.560000e+02)
  %i.ee = fdiv <4 x float> %i.ed, %i.dy           ; 3 uses
  %i.ef = fmul <4 x float> %43, %i.ee
  %i.eg = fptoui <4 x float> %i.ef to <4 x i8>
  %i.eh = fmul <4 x float> %35, %i.ee
  %i.ei = fptoui <4 x float> %i.eh to <4 x i8>
  %i.ej = fmul <4 x float> %25, %i.ee
  %i.ek = fptoui <4 x float> %i.ej to <4 x i8>
  %i.el = trunc <4 x i32> %i.eb to <4 x i8>
  %i.em = xor <4 x i8> %i.el, splat (i8 -128)
  %predphi = select <4 x i1> %i.dz, <4 x i8> zeroinitializer, <4 x i8> %i.ei
  %predphi55.a = select <4 x i1> %i.dz, <4 x i8> zeroinitializer, <4 x i8> %i.eg
  %predphi56 = select <4 x i1> %i.dz, <4 x i8> zeroinitializer, <4 x i8> %i.em
  %predphi57 = select <4 x i1> %i.dz, <4 x i8> zeroinitializer, <4 x i8> %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 %index
  store <4 x i8> %predphi55.a, ptr %i.en, align 1, !tbaa !34
  %i.eo = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index
  store <4 x i8> %predphi, ptr %i.eo, align 1, !tbaa !34
  %i.ep = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %index
  store <4 x i8> %predphi57, ptr %i.ep, align 1, !tbaa !34
  %i.eq = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %index
  store <4 x i8> %predphi56, ptr %i.eq, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.split.us.i, label %.preheader131.split.us.i.preheader

.preheader131.split.us.i.preheader:               ; preds = %vector.scevcheck, %middle.block
  %indvars.iv163.i.ph = phi i64 [ 0, %vector.scevcheck ], [ %n.vec, %middle.block ]
  br label %.preheader131.split.us.i

.preheader131.split.us.i:                         ; preds = %.preheader131.split.us.i.preheader, %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i ], [ %indvars.iv163.i.ph, %.preheader131.split.us.i.preheader ] ; 6 uses
  %i.es = mul nuw nsw i64 %indvars.iv163.i, %i.ab
  %i.et = getelementptr [4 x i8], ptr %i.db, i64 %i.es ; 3 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !55 ; 3 uses
  %i.ew = getelementptr i8, ptr %i.et, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !55 ; 3 uses
  %i.ey = load float, ptr %i.et, align 4, !tbaa !55 ; 3 uses
  %i.ez = fcmp ogt float %i.ex, %i.ev
  %..i116.us.i = select i1 %i.ez, float %i.ex, float %i.ev ; 2 uses
  %i.fa = fcmp ogt float %i.ey, %..i116.us.i
  %i.fb = select i1 %i.fa, float %i.ey, float %..i116.us.i ; 3 uses
  %i.fc = fcmp olt float %i.fb, 1.000000e-32
  br i1 %i.fc, label %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i, label %bb.g

bb.g:                                             ; preds = %.preheader131.split.us.i
  %i.fd = call { float, i32 } @llvm.frexp.f32.i32(float %i.fb) ; 2 uses
  %i.fe = extractvalue { float, i32 } %i.fd, 1
  %i.ff = extractvalue { float, i32 } %i.fd, 0
  %i.fg = fmul float %i.ff, 2.560000e+02
  %i.fh = fdiv float %i.fg, %i.fb                 ; 3 uses
  %i.fi = fmul float %i.ey, %i.fh
  %i.fj = fptoui float %i.fi to i8
  %i.fk = fmul float %i.ex, %i.fh
  %i.fl = fptoui float %i.fk to i8
  %i.fm = fmul float %i.ev, %i.fh
  %i.fn = fptoui float %i.fm to i8
  %i.fo = trunc i32 %i.fe to i8
  %i.fp = xor i8 %i.fo, -128
  br label %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i

_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i:      ; preds = %bb.g, %.preheader131.split.us.i
  %i.fq = phi i8 [ %i.fl, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %i.fr = phi i8 [ %i.fj, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %.sink32.i117.us.i = phi i8 [ %i.fp, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %.sink.i118.us.i = phi i8 [ %i.fn, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv163.i
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !34
  %gep205.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv163.i
  store i8 %i.fq, ptr %gep205.i, align 1, !tbaa !34
  %gep207.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv163.i
  store i8 %.sink.i118.us.i, ptr %gep207.i, align 1, !tbaa !34
  %gep209.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv163.i
  store i8 %.sink32.i117.us.i, ptr %gep209.i, align 1, !tbaa !34
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %i.x
  br i1 %exitcond167.not.i, label %.split.us.i, label %.preheader131.split.us.i, !llvm.loop !192

.preheader131.split.i:                            ; preds = %.preheader131.split.i.preheader, %_ZL21stbiw__linear_to_rgbePhPf.exit119.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZL21stbiw__linear_to_rgbePhPf.exit119.i ], [ %indvars.iv.i.ph, %.preheader131.split.i.preheader ] ; 6 uses
  %i.ft = mul nsw i64 %indvars.iv.i, %i.aa
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !55 ; 4 uses
  %i.fw = fcmp olt float %i.fv, 1.000000e-32
  br i1 %i.fw, label %_ZL21stbiw__linear_to_rgbePhPf.exit119.i, label %bb.h

bb.h:                                             ; preds = %.preheader131.split.i
  %i.fx = call { float, i32 } @llvm.frexp.f32.i32(float %i.fv) ; 2 uses
  %i.fy = extractvalue { float, i32 } %i.fx, 1
  %i.fz = extractvalue { float, i32 } %i.fx, 0
  %i.ga = fmul float %i.fz, 2.560000e+02
  %i.gb = fdiv float %i.ga, %i.fv
  %i.gc = fmul float %i.fv, %i.gb
  %i.gd = fptoui float %i.gc to i8
  %i.ge = trunc i32 %i.fy to i8
  %i.gf = xor i8 %i.ge, -128
  br label %_ZL21stbiw__linear_to_rgbePhPf.exit119.i

_ZL21stbiw__linear_to_rgbePhPf.exit119.i:         ; preds = %bb.h, %.preheader131.split.i
  %i.gg = phi i8 [ %i.gd, %bb.h ], [ 0, %.preheader131.split.i ] ; 3 uses
  %.sink32.i117.i = phi i8 [ %i.gf, %bb.h ], [ 0, %.preheader131.split.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !34
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  store i8 %i.gg, ptr %gep.i, align 1, !tbaa !34
  %gep201.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv.i
  store i8 %i.gg, ptr %gep201.i, align 1, !tbaa !34
  %gep203.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv.i
  store i8 %.sink32.i117.i, ptr %gep203.i, align 1, !tbaa !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %exitcond.not.i, label %.split.us.i, label %.preheader131.split.i, !llvm.loop !193

.split.us.i:                                      ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit119.i, %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i, %middle.block81, %middle.block
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.d, i32 noundef 4), !inline_history !187
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.split.us.i
  %indvars.iv179.i = phi i64 [ 0, %.split.us.i ], [ %indvars.iv.next180.i, %bb.n ] ; 2 uses
  %i.gi = mul nuw nsw i64 %indvars.iv179.i, %i.x
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.gi ; 7 uses
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %.loopexit127.i, %bb.i
  %.2152.i = phi i32 [ 0, %bb.i ], [ %.5.i, %.loopexit127.i ] ; 5 uses
  %i.gk = icmp slt i32 %.2152.i, %invariant.op.i
  br i1 %i.gk, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader129.i
  %i.gl = sext i32 %.2152.i to i64                ; 4 uses
  %i.gm = add nsw i64 %i.gl, 2
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.gj, i64 %i.gl
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !34
  %smax = call i64 @llvm.smax.i64(i64 %invariant.op212.i, i64 %i.gl)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %i.gn = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.gp, %bb.k ] ; 2 uses
  %indvars.iv170.i = phi i64 [ %i.gl, %.lr.ph.preheader.i ], [ %indvars.iv.next171.i, %bb.k ] ; 3 uses
  %indvars.iv168.i = phi i64 [ %i.gm, %.lr.ph.preheader.i ], [ %indvars.iv.next169.i, %bb.k ] ; 2 uses
  %indvars.iv.next171.i = add nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv.next171.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !34  ; 2 uses
  %i.gq = icmp eq i8 %i.gn, %i.gp
  br i1 %i.gq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.gr = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv168.i
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !34
  %i.gt = icmp eq i8 %i.gn, %i.gs
  br i1 %i.gt, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.next169.i = add nsw i64 %indvars.iv168.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv170.i, %smax
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !194

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.j
  %i.gu = trunc nsw i64 %indvars.iv170.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit.i, %.preheader129.i
  %spec.select.i = phi i32 [ %0, %.preheader129.i ], [ %i.gu, %._crit_edge.loopexit.split.loop.exit.i ], [ %0, %bb.k ] ; 5 uses
  %i.gv = icmp slt i32 %.2152.i, %spec.select.i
  br i1 %i.gv, label %.lr.ph145.i, label %._crit_edge146.i

.lr.ph145.i:                                      ; preds = %._crit_edge.i, %.lr.ph145.i
  %.3143.i = phi i32 [ %i.ha, %.lr.ph145.i ], [ %.2152.i, %._crit_edge.i ] ; 3 uses
  %i.gw = sub nsw i32 %spec.select.i, %.3143.i
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %i.gw, i32 128) ; 3 uses
  %i.gx = sext i32 %.3143.i to i64
  %i.gy = getelementptr inbounds i8, ptr %i.gj, i64 %i.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.gz = trunc nuw i32 %spec.store.select.i to i8
  store i8 %i.gz, ptr %i.c, align 1, !tbaa !34
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !195
  call void %.0.val(ptr noundef %.8.val, ptr noundef %i.gy, i32 noundef %spec.store.select.i), !inline_history !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.ha = add nsw i32 %spec.store.select.i, %.3143.i ; 3 uses
  %i.hb = icmp slt i32 %i.ha, %spec.select.i
  br i1 %i.hb, label %.lr.ph145.i, label %._crit_edge146.i, !llvm.loop !196

._crit_edge146.i:                                 ; preds = %.lr.ph145.i, %._crit_edge.i
  %.3.lcssa.i = phi i32 [ %.2152.i, %._crit_edge.i ], [ %i.ha, %.lr.ph145.i ] ; 5 uses
  %i.hc = icmp slt i32 %spec.select.i, %invariant.op.i
  br i1 %i.hc, label %.preheader128.i, label %.loopexit127.i

.preheader128.i:                                  ; preds = %._crit_edge146.i
  %i.hd = sext i32 %.3.lcssa.i to i64
  %i.he = getelementptr inbounds i8, ptr %i.gj, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !34
  %i.hg = sext i32 %spec.select.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.preheader128.i
  %indvars.iv175.i = phi i64 [ %i.hg, %.preheader128.i ], [ %indvars.iv.next176.i, %bb.m ] ; 3 uses
  %i.hh = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv175.i
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !34
  %i.hj = icmp eq i8 %i.hi, %i.hf
  br i1 %i.hj, label %bb.m, label %.critedge.split.loop.exit213.i

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next176.i = add nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next176.i, %i.x
  br i1 %exitcond178.not.i, label %.critedge.i, label %bb.l, !llvm.loop !197

.critedge.split.loop.exit213.i:                   ; preds = %bb.l
  %i.hk = trunc nsw i64 %indvars.iv175.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %.critedge.split.loop.exit213.i
  %.2109.lcssa.i = phi i32 [ %i.hk, %.critedge.split.loop.exit213.i ], [ %0, %bb.m ] ; 3 uses
  %i.hl = icmp slt i32 %.3.lcssa.i, %.2109.lcssa.i
  br i1 %i.hl, label %.lr.ph150.i, label %.loopexit127.i

.lr.ph150.i:                                      ; preds = %.critedge.i, %.lr.ph150.i
  %.4149.i = phi i32 [ %i.hs, %.lr.ph150.i ], [ %.3.lcssa.i, %.critedge.i ] ; 3 uses
  %i.hm = sub nsw i32 %.2109.lcssa.i, %.4149.i
  %spec.store.select2.i = call i32 @llvm.smin.i32(i32 %i.hm, i32 127) ; 2 uses
  %i.hn = sext i32 %.4149.i to i64
  %i.ho = getelementptr inbounds i8, ptr %i.gj, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.hp, ptr %i.a, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.hq = trunc nuw i32 %spec.store.select2.i to i8
  %i.hr = or disjoint i8 %i.hq, -128
end_hunk_0
