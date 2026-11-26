Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv:bb.a
  store i8 %i.bs, ptr %i.ae, align 1, !tbaa !34
  call void %.val.i.us(ptr noundef %.val38.i.us, ptr noundef nonnull %i.b, i32 noundef 3), !inline_history !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph150.us, %.lr.ph150.us
  %i.bt = load ptr, ptr %0, align 8, !tbaa !76
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !77
  call void %i.bt(ptr noundef %i.bu, ptr noundef %i.bn, i32 noundef 1), !inline_history !183
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
  call void %i.bv(ptr noundef %i.bw, ptr noundef %i.by, i32 noundef 1), !inline_history !183
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us: ; preds = %bb.m, %bb.l, %.lr.ph150.us
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph150.us, !llvm.loop !184

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
  br i1 %i.cf, label %.lr.ph154.us, label %._crit_edge155.us, !llvm.loop !185

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
  call void %.val.i123.us(ptr noundef %.val38.i124.us, ptr noundef nonnull %i.a, i32 noundef 3), !inline_history !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge155.us, %._crit_edge155.us
  %i.cp = load ptr, ptr %0, align 8, !tbaa !76
  %i.cq = load ptr, ptr %i.ac, align 8, !tbaa !77
  call void %i.cp(ptr noundef %i.cq, ptr noundef %i.aq, i32 noundef 1), !inline_history !183
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
  call void %i.cr(ptr noundef %i.cs, ptr noundef %i.cu, i32 noundef 1), !inline_history !183
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us: ; preds = %bb.s, %bb.r, %._crit_edge155.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.t

bb.t:                                             ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us, %._crit_edge.us
  %.3143.us = phi i32 [ %.2.lcssa.us, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit139.us ], [ %.3.ph.us, %._crit_edge.us ]
  %i.cv = add nsw i32 %.3143.us, %.0109159.us     ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %1
  br i1 %i.cw, label %bb.e, label %._crit_edge163.us, !llvm.loop !186

._crit_edge163.us:                                ; preds = %bb.t
  %indvars.iv.next178 = add i64 %indvars.iv177, %.0102 ; 2 uses
  %i.cx = trunc i64 %indvars.iv.next178 to i32
  %.not116.us = icmp eq i32 %.0103, %i.cx
  br i1 %.not116.us, label %.loopexit144, label %.lr.ph162.us, !llvm.loop !187

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
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #34 ; 8 uses
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
  %i.v = shl nuw i32 %0, 1                        ; 2 uses
  %i.w = mul i32 %0, 3                            ; 2 uses
  %i.x = zext nneg i32 %0 to i64                  ; 11 uses
  %i.y = zext i32 %i.v to i64
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  %i.aa = sext i32 %2 to i64                      ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.x ; 3 uses
  %invariant.gep200.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y ; 3 uses
  %invariant.gep202.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z ; 3 uses
  %i.ab = zext nneg i32 %2 to i64
  %invariant.op.i = add nsw i32 %0, -2            ; 2 uses
  %invariant.op212.i = add nsw i64 %i.x, -3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.split.us, label %.preheader131.i.preheader

.preheader131.i.preheader:                        ; preds = %bb.b
  %ident.check.not = icmp eq i32 %2, 1
  %i.af = add nsw i32 %i.v, -1
  %diff.check53 = icmp ult i32 %i.af, 3
  %i.ag = add nsw i32 %i.w, -1
  %diff.check54 = icmp ult i32 %i.ag, 3
  %conflict.rdx57 = or i1 %diff.check53, %diff.check54
  %i.ah = sub nsw i64 %i.x, %i.z
  %diff.check60 = icmp ugt i64 %i.ah, -4
  %conflict.rdx61 = or i1 %conflict.rdx57, %diff.check60
  %n.vec = and i64 %i.x, 32764                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.preheader131.i

.split.us:                                        ; preds = %bb.b
  br i1 %switch.i, label %.preheader.i.us.us, label %.preheader.i.us

.preheader.i.us.us:                               ; preds = %.split.us, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us
  %.06.us.us = phi i32 [ %i.bn, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us ], [ 0, %.split.us ] ; 3 uses
  %i.ai = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !24
  %.not.us.us = icmp eq i32 %i.ai, 0
  %i.aj = xor i32 %.06.us.us, -1
  %i.ak = add nsw i32 %1, %i.aj
  %i.al = select i1 %.not.us.us, i32 %.06.us.us, i32 %i.ak
  %i.am = mul nsw i32 %i.o, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %3, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us, %.preheader.i.us.us
  %indvars.iv183.i.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %indvars.iv.next184.i.us.us.us, %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us ] ; 2 uses
  %i.ap = mul nuw nsw i64 %indvars.iv183.i.us.us.us, %i.aa
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !55 ; 3 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !55 ; 3 uses
  %i.av = load float, ptr %i.aq, align 4, !tbaa !55 ; 3 uses
  %i.aw = fcmp ogt float %i.au, %i.as
  %..i.i.us.us.us = select i1 %i.aw, float %i.au, float %i.as ; 2 uses
  %i.ax = fcmp ogt float %i.av, %..i.i.us.us.us
  %i.ay = select i1 %i.ax, float %i.av, float %..i.i.us.us.us ; 3 uses
  %i.az = fcmp olt float %i.ay, 1.000000e-32
  br i1 %i.az, label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = call { float, i32 } @llvm.frexp.f32.i32(float %i.ay) ; 2 uses
  %i.bb = extractvalue { float, i32 } %i.ba, 1
  %i.bc = extractvalue { float, i32 } %i.ba, 0
  %i.bd = fmul float %i.bc, 2.560000e+02
  %i.be = fdiv float %i.bd, %i.ay                 ; 3 uses
  %i.bf = fmul float %i.av, %i.be
  %i.bg = fptoui float %i.bf to i8
  %i.bh = fmul float %i.au, %i.be
  %i.bi = fptoui float %i.bh to i8
  %i.bj = fmul float %i.as, %i.be
  %i.bk = fptoui float %i.bj to i8
  %i.bl = trunc i32 %i.bb to i8
  %i.bm = xor i8 %i.bl, -128
  br label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us

_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us:   ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ %i.bi, %bb.d ], [ 0, %bb.c ]
  %.sink.i.us.us.us = phi i8 [ %i.bg, %bb.d ], [ 0, %bb.c ]
  %.sink32.i.i.us.us.us = phi i8 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.sink.i.i.us.us.us = phi i8 [ %i.bk, %bb.d ], [ 0, %bb.c ]
  store i8 %.sink, ptr %i.ae, align 1, !tbaa !34
  store i8 %.sink.i.us.us.us, ptr %i.e, align 1, !tbaa !34
  store i8 %.sink32.i.i.us.us.us, ptr %i.ac, align 1, !tbaa !34
  store i8 %.sink.i.i.us.us.us, ptr %i.ad, align 1, !tbaa !34
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !188
  %indvars.iv.next184.i.us.us.us = add nuw nsw i64 %indvars.iv183.i.us.us.us, 1 ; 2 uses
  %exitcond187.not.i.us.us.us = icmp eq i64 %indvars.iv.next184.i.us.us.us, %i.x
  br i1 %exitcond187.not.i.us.us.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us, label %bb.c, !llvm.loop !189

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.bn = add nuw nsw i32 %.06.us.us, 1           ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bn, %1
  br i1 %exitcond17.not, label %.split8.us, label %.preheader.i.us.us, !llvm.loop !190

.preheader.i.us:                                  ; preds = %.split.us, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split
  %.06.us = phi i32 [ %i.ci, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split ], [ 0, %.split.us ] ; 3 uses
  %i.bo = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !24
  %.not.us = icmp eq i32 %i.bo, 0
  %i.bp = xor i32 %.06.us, -1
  %i.bq = add nsw i32 %1, %i.bp
  %i.br = select i1 %.not.us, i32 %.06.us, i32 %i.bq
  %i.bs = mul nsw i32 %i.o, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  br label %bb.e

bb.e:                                             ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us, %.preheader.i.us
  %indvars.iv183.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next184.i.us, %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us ] ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv183.i.us, %i.aa
  %i.bw = getelementptr [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !55 ; 4 uses
  %i.by = fcmp olt float %i.bx, 1.000000e-32
  br i1 %i.by, label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = call { float, i32 } @llvm.frexp.f32.i32(float %i.bx) ; 2 uses
  %i.ca = extractvalue { float, i32 } %i.bz, 1
  %i.cb = extractvalue { float, i32 } %i.bz, 0
  %i.cc = fmul float %i.cb, 2.560000e+02
  %i.cd = fdiv float %i.cc, %i.bx
  %i.ce = fmul float %i.bx, %i.cd
  %i.cf = fptoui float %i.ce to i8
  %i.cg = trunc i32 %i.ca to i8
  %i.ch = xor i8 %i.cg, -128
  br label %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us

_ZL21stbiw__linear_to_rgbePhPf.exit.i.us:         ; preds = %bb.e, %bb.f
  %.sink18 = phi i8 [ %i.cf, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sink32.i.i.us = phi i8 [ %i.ch, %bb.f ], [ 0, %bb.e ]
  store i8 %.sink18, ptr %i.ae, align 1, !tbaa !34
  store i8 %.sink18, ptr %i.e, align 1, !tbaa !34
  store i8 %.sink32.i.i.us, ptr %i.ac, align 1, !tbaa !34
  store i8 %.sink18, ptr %i.ad, align 1, !tbaa !34
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !188
  %indvars.iv.next184.i.us = add nuw nsw i64 %indvars.iv183.i.us, 1 ; 2 uses
  %exitcond187.not.i.us = icmp eq i64 %indvars.iv.next184.i.us, %i.x
  br i1 %exitcond187.not.i.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split, label %bb.e, !llvm.loop !189

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.ci = add nuw nsw i32 %.06.us, 1              ; 2 uses
  %exitcond16.not = icmp eq i32 %i.ci, %1
  br i1 %exitcond16.not, label %.split8.us, label %.preheader.i.us, !llvm.loop !190

.preheader131.i:                                  ; preds = %.preheader131.i.preheader, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1
  %.06 = phi i32 [ %i.gt, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1 ], [ 0, %.preheader131.i.preheader ] ; 3 uses
  %i.cj = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !24
  %.not = icmp eq i32 %i.cj, 0
  %i.ck = xor i32 %.06, -1
  %i.cl = add nsw i32 %1, %i.ck
  %i.cm = select i1 %.not, i32 %.06, i32 %i.cl
  %i.cn = mul nsw i32 %i.o, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.co ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 514, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i8 %i.q, ptr %i.r, align 2, !tbaa !34
  store i8 %i.s, ptr %i.t, align 1, !tbaa !34
  br i1 %switch.i, label %vector.scevcheck, label %.preheader131.split.i

vector.scevcheck:                                 ; preds = %.preheader131.i
  %ident.check.not.not = xor i1 %ident.check.not, true
  %brmerge = select i1 %ident.check.not.not, i1 true, i1 %conflict.rdx61
  br i1 %brmerge, label %.preheader131.split.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 6 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %index ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %wide.load = load <4 x float>, ptr %i.cr, align 4, !tbaa !55 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 4
  %wide.load62 = load <4 x float>, ptr %i.cs, align 4, !tbaa !55 ; 3 uses
  %wide.load63 = load <4 x float>, ptr %i.cq, align 4, !tbaa !55 ; 3 uses
  %i.ct = fcmp ogt <4 x float> %wide.load62, %wide.load
  %i.cu = select <4 x i1> %i.ct, <4 x float> %wide.load62, <4 x float> %wide.load ; 2 uses
  %i.cv = fcmp ogt <4 x float> %wide.load63, %i.cu
  %i.cw = select <4 x i1> %i.cv, <4 x float> %wide.load63, <4 x float> %i.cu ; 3 uses
  %i.cx = fcmp olt <4 x float> %i.cw, splat (float 1.000000e-32) ; 4 uses
  %i.cy = call { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float> %i.cw) ; 2 uses
  %i.cz = extractvalue { <4 x float>, <4 x i32> } %i.cy, 1
  %i.da = extractvalue { <4 x float>, <4 x i32> } %i.cy, 0
  %i.db = fmul <4 x float> %i.da, splat (float 2.560000e+02)
  %i.dc = fdiv <4 x float> %i.db, %i.cw           ; 3 uses
  %i.dd = fmul <4 x float> %wide.load63, %i.dc
  %i.de = fptoui <4 x float> %i.dd to <4 x i8>
  %i.df = fmul <4 x float> %wide.load62, %i.dc
  %i.dg = fptoui <4 x float> %i.df to <4 x i8>
  %i.dh = fmul <4 x float> %wide.load, %i.dc
  %i.di = fptoui <4 x float> %i.dh to <4 x i8>
  %i.dj = trunc <4 x i32> %i.cz to <4 x i8>
  %i.dk = xor <4 x i8> %i.dj, splat (i8 -128)
  %predphi = select <4 x i1> %i.cx, <4 x i8> zeroinitializer, <4 x i8> %i.dg
  %predphi64 = select <4 x i1> %i.cx, <4 x i8> zeroinitializer, <4 x i8> %i.de
  %predphi65 = select <4 x i1> %i.cx, <4 x i8> zeroinitializer, <4 x i8> %i.dk
  %predphi66 = select <4 x i1> %i.cx, <4 x i8> zeroinitializer, <4 x i8> %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %index
  store <4 x i8> %predphi64, ptr %i.dl, align 1, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index
  store <4 x i8> %predphi, ptr %i.dm, align 1, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %index
  store <4 x i8> %predphi66, ptr %i.dn, align 1, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %index
  store <4 x i8> %predphi65, ptr %i.do, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.split.us.i, label %.preheader131.split.us.i.preheader

.preheader131.split.us.i.preheader:               ; preds = %vector.scevcheck, %middle.block
  %indvars.iv163.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.scevcheck ]
  br label %.preheader131.split.us.i

.preheader131.split.us.i:                         ; preds = %.preheader131.split.us.i.preheader, %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i ], [ %indvars.iv163.i.ph, %.preheader131.split.us.i.preheader ] ; 6 uses
end_hunk_0
