Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv:bb.a
  br i1 %i.eg, label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = load ptr, ptr %0, align 8, !tbaa !503
  %i.ei = load ptr, ptr %i.z, align 8, !tbaa !505
  tail call void %i.eh(ptr noundef %i.ei, ptr noundef nonnull %i.aa, i32 noundef %i.ed), !inline_history !516
  br label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us

_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us: ; preds = %bb.v, %bb.u
  %i.ej = phi i32 [ 0, %bb.v ], [ %i.ed, %bb.u ]  ; 2 uses
  %i.ek = add nsw i32 %i.ej, 3
  store i32 %i.ek, ptr %i.y, align 8, !tbaa !506
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds i8, ptr %i.aa, i64 %i.el ; 3 uses
  store i8 %i.dz, ptr %i.em, align 1, !tbaa !26
  %i.en = getelementptr i8, ptr %i.em, i64 1
  store i8 %i.eb, ptr %i.en, align 1, !tbaa !26
  %i.eo = getelementptr i8, ptr %i.em, i64 2
  store i8 %i.ec, ptr %i.eo, align 1, !tbaa !26
  br label %bb.y

bb.w:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %i.ep = load i8, ptr %i.ak, align 1, !tbaa !26
  %i.eq = load i32, ptr %i.y, align 8, !tbaa !506 ; 3 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = add nsw i64 %i.er, 1
  %i.et = icmp ult i64 %i.es, 65
  br i1 %i.et, label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = load ptr, ptr %0, align 8, !tbaa !503
  %i.ev = load ptr, ptr %i.z, align 8, !tbaa !505
  tail call void %i.eu(ptr noundef %i.ev, ptr noundef nonnull %i.aa, i32 noundef %i.eq), !inline_history !517
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us

_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us: ; preds = %bb.x, %bb.w
  %i.ew = phi i32 [ 0, %bb.x ], [ %i.eq, %bb.w ]  ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.y, align 8, !tbaa !506
  %i.ey = sext i32 %i.ew to i64
  %i.ez = getelementptr inbounds i8, ptr %i.aa, i64 %i.ey
  store i8 %i.ep, ptr %i.ez, align 1, !tbaa !26
  br label %bb.y

bb.y:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us, %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us [
    i32 4, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.fa = getelementptr i8, ptr %i.ak, i64 %i.ab
  %i.fb = getelementptr i8, ptr %i.fa, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !26
  %i.fd = load i32, ptr %i.y, align 8, !tbaa !506 ; 3 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = add nsw i64 %i.fe, 1
  %i.fg = icmp ult i64 %i.ff, 65
  br i1 %i.fg, label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %0, align 8, !tbaa !503
  %i.fi = load ptr, ptr %i.z, align 8, !tbaa !505
  tail call void %i.fh(ptr noundef %i.fi, ptr noundef nonnull %i.aa, i32 noundef %i.fd), !inline_history !517
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us

_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us: ; preds = %bb.aa, %bb.z
  %i.fj = phi i32 [ 0, %bb.aa ], [ %i.fd, %bb.z ] ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.y, align 8, !tbaa !506
  %i.fl = sext i32 %i.fj to i64
  %i.fm = getelementptr inbounds i8, ptr %i.aa, i64 %i.fl
  store i8 %i.fc, ptr %i.fm, align 1, !tbaa !26
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us: ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us, %bb.y, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %.3146.us = phi i32 [ %.2.lcssa.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us ], [ %.2.lcssa.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us ], [ %.2.lcssa.us, %bb.y ], [ %.3.ph.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit.us ], [ %.3.ph.us, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us ]
  %i.fn = add nsw i32 %.3146.us, %.0111159.us     ; 2 uses
  %i.fo = icmp slt i32 %i.fn, %1
  br i1 %i.fo, label %bb.e, label %._crit_edge163.us, !llvm.loop !520

._crit_edge163.us:                                ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us
  %indvars.iv.next179 = add i64 %indvars.iv178, %.0104 ; 2 uses
  %i.fp = trunc i64 %indvars.iv.next179 to i32
  %.not117.us = icmp eq i32 %.0105, %i.fp
  br i1 %.not117.us, label %._crit_edge168, label %.lr.ph162.us, !llvm.loop !521

._crit_edge168:                                   ; preds = %._crit_edge163.us, %.lr.ph167, %bb.d
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !506 ; 2 uses
  %.not.i142 = icmp eq i32 %i.fr, 0
  br i1 %.not.i142, label %_ZL18stbiw__write_flushP19stbi__write_context.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge168
  %i.fs = load ptr, ptr %0, align 8, !tbaa !503
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !505
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.fs(ptr noundef %i.fu, ptr noundef nonnull %i.fv, i32 noundef %i.fr), !inline_history !522
  store i32 0, ptr %i.fq, align 8, !tbaa !506
  br label %_ZL18stbiw__write_flushP19stbi__write_context.exit

_ZL18stbiw__write_flushP19stbi__write_context.exit: ; preds = %bb.ab, %._crit_edge168, %bb.a, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 1, %._crit_edge168 ], [ 1, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13stbiw__writefP19stbi__write_contextPKcz(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_tga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.84) ; 2 uses
  store ptr @_ZL17stbi__stdio_writePvS_i, ptr %5, align 8, !tbaa !503
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !505
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef i32 @_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
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
  %i.k = shl nsw i32 %0, 2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #36 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.g, ptr noundef nonnull align 16 dereferenceable(66) @__const._ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf.header, i64 66, i1 false)
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 65)
  %i.n = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %1, i32 noundef %0) #35
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
  %i.ab = zext nneg i32 %2 to i64
  %invariant.op.i = add nsw i32 %0, -2            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.split.us, label %.preheader131.i.preheader

.preheader131.i.preheader:                        ; preds = %bb.b
  %4 = add nsw i64 %i.x, -3
  %i.af = sub nsw i64 %i.y, %i.x                  ; 2 uses
  %i.ag = sub nsw i64 %i.z, %i.x                  ; 2 uses
  %i.ah = sub nsw i64 %i.z, %i.y                  ; 2 uses
  %ident.check.not = icmp eq i32 %2, 1            ; 2 uses
  %i.ai = add nsw i32 %0, -1
  %diff.check61 = icmp ult i32 %i.ai, 3
  %i.aj = add nsw i32 %i.v, -1
  %diff.check62 = icmp ult i32 %i.aj, 3
  %conflict.rdx63 = or i1 %diff.check61, %diff.check62
  %i.ak = add nsw i32 %i.w, -1
  %diff.check64 = icmp ult i32 %i.ak, 3
  %conflict.rdx65 = or i1 %conflict.rdx63, %diff.check64
  %i.al = add nsw i64 %i.af, -1
  %diff.check66 = icmp ult i64 %i.al, 3
  %conflict.rdx67 = or i1 %conflict.rdx65, %diff.check66
  %i.am = add nsw i64 %i.ag, -1
  %diff.check68 = icmp ult i64 %i.am, 3
  %conflict.rdx69 = or i1 %conflict.rdx67, %diff.check68
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
  %i.au = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !13
  %.not.us.us = icmp eq i32 %i.au, 0
  %i.av = xor i32 %.06.us.us, -1
  %i.aw = add nsw i32 %1, %i.av
  %i.ax = select i1 %.not.us.us, i32 %.06.us.us, i32 %i.aw
  %i.ay = mul nsw i32 %i.o, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  br label %bb.c

bb.c:                                             ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us, %.preheader.i.us.us
  %indvars.iv183.i.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %indvars.iv.next184.i.us.us.us, %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us ] ; 2 uses
  %i.bb = mul nuw nsw i64 %indvars.iv183.i.us.us.us, %i.aa
  %i.bc = getelementptr [4 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !473 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !473 ; 3 uses
  %i.bh = load float, ptr %i.bc, align 4, !tbaa !473 ; 3 uses
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
  store i8 %.sink, ptr %i.ae, align 1, !tbaa !26
  store i8 %.sink.i.us.us.us, ptr %i.e, align 1, !tbaa !26
  store i8 %.sink32.i.i.us.us.us, ptr %i.ac, align 1, !tbaa !26
  store i8 %.sink.i.i.us.us.us, ptr %i.ad, align 1, !tbaa !26
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !523
  %indvars.iv.next184.i.us.us.us = add nuw nsw i64 %indvars.iv183.i.us.us.us, 1 ; 2 uses
  %exitcond187.not.i.us.us.us = icmp eq i64 %indvars.iv.next184.i.us.us.us, %i.x
  br i1 %exitcond187.not.i.us.us.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us, label %bb.c, !llvm.loop !524

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.bz = add nuw nsw i32 %.06.us.us, 1           ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bz, %1
  br i1 %exitcond17.not, label %.split8.us, label %.preheader.i.us.us, !llvm.loop !525

.preheader.i.us:                                  ; preds = %.split.us, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split
  %.06.us = phi i32 [ %i.cu, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split ], [ 0, %.split.us ] ; 3 uses
  %i.ca = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !13
  %.not.us = icmp eq i32 %i.ca, 0
  %i.cb = xor i32 %.06.us, -1
  %i.cc = add nsw i32 %1, %i.cb
  %i.cd = select i1 %.not.us, i32 %.06.us, i32 %i.cc
  %i.ce = mul nsw i32 %i.o, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us, %.preheader.i.us
  %indvars.iv183.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next184.i.us, %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us ] ; 2 uses
  %i.ch = mul nsw i64 %indvars.iv183.i.us, %i.aa
  %i.ci = getelementptr [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !473 ; 4 uses
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
  store i8 %.sink18, ptr %i.ae, align 1, !tbaa !26
  store i8 %.sink18, ptr %i.e, align 1, !tbaa !26
  store i8 %.sink32.i.i.us, ptr %i.ac, align 1, !tbaa !26
  store i8 %.sink18, ptr %i.ad, align 1, !tbaa !26
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !523
  %indvars.iv.next184.i.us = add nuw nsw i64 %indvars.iv183.i.us, 1 ; 2 uses
  %exitcond187.not.i.us = icmp eq i64 %indvars.iv.next184.i.us, %i.x
  br i1 %exitcond187.not.i.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split, label %bb.e, !llvm.loop !524

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.cu = add nuw nsw i32 %.06.us, 1              ; 2 uses
  %exitcond16.not = icmp eq i32 %i.cu, %1
  br i1 %exitcond16.not, label %.split8.us, label %.preheader.i.us, !llvm.loop !525

.preheader131.i:                                  ; preds = %.preheader131.i.preheader, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1
  %.06 = phi i32 [ %i.hv, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1 ], [ 0, %.preheader131.i.preheader ] ; 3 uses
  %i.cv = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cv, 0
  %i.cw = xor i32 %.06, -1
  %i.cx = add nsw i32 %1, %i.cw
  %i.cy = select i1 %.not, i32 %.06, i32 %i.cx
  %i.cz = mul nsw i32 %i.o, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %3, i64 %i.da ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  store i32 514, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  store i8 %i.q, ptr %i.r, align 2, !tbaa !26
  store i8 %i.s, ptr %i.t, align 1, !tbaa !26
  br i1 %switch.i, label %vector.scevcheck, label %vector.scevcheck58

vector.scevcheck58:                               ; preds = %.preheader131.i
  %ident.check.not.not = xor i1 %ident.check.not, true
  %brmerge = select i1 %ident.check.not.not, i1 true, i1 %conflict.rdx71
  br i1 %brmerge, label %.preheader131.split.i.preheader, label %vector.body75

vector.body75:                                    ; preds = %vector.scevcheck58, %vector.body75
  %index76 = phi i64 [ %index.next80, %vector.body75 ], [ 0, %vector.scevcheck58 ] ; 6 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %index76
  %wide.load77 = load <4 x float>, ptr %i.dc, align 4, !tbaa !473 ; 4 uses
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
  store <4 x i8> %predphi78, ptr %i.dn, align 1, !tbaa !26
  %i.do = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index76
  store <4 x i8> %predphi78, ptr %i.do, align 1, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %index76
  store <4 x i8> %predphi78, ptr %i.dp, align 1, !tbaa !26
  %i.dq = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %index76
  store <4 x i8> %predphi79, ptr %i.dq, align 1, !tbaa !26
  %index.next80 = add nuw i64 %index76, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.dr, label %middle.block81, label %vector.body75, !llvm.loop !526

middle.block81:                                   ; preds = %vector.body75
  br i1 %cmp.n82, label %.split.us.i, label %.preheader131.split.i.preheader

.preheader131.split.i.preheader:                  ; preds = %vector.scevcheck58, %middle.block81
  %indvars.iv.i.ph = phi i64 [ %n.vec74, %middle.block81 ], [ 0, %vector.scevcheck58 ]
  br label %.preheader131.split.i

vector.scevcheck:                                 ; preds = %.preheader131.i
  %ident.check.not.not94 = xor i1 %ident.check.not, true
  %brmerge95 = select i1 %ident.check.not.not94, i1 true, i1 %conflict.rdx52
  br i1 %brmerge95, label %.preheader131.split.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 6 uses
  %i.ds = getelementptr [4 x i8], ptr %i.db, i64 %index ; 3 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %wide.load = load <4 x float>, ptr %i.dt, align 4, !tbaa !473 ; 3 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 4
  %wide.load53 = load <4 x float>, ptr %i.du, align 4, !tbaa !473 ; 3 uses
  %wide.load54 = load <4 x float>, ptr %i.ds, align 4, !tbaa !473 ; 3 uses
  %i.dv = fcmp ogt <4 x float> %wide.load53, %wide.load
  %i.dw = select <4 x i1> %i.dv, <4 x float> %wide.load53, <4 x float> %wide.load ; 2 uses
  %i.dx = fcmp ogt <4 x float> %wide.load54, %i.dw
  %i.dy = select <4 x i1> %i.dx, <4 x float> %wide.load54, <4 x float> %i.dw ; 3 uses
  %i.dz = fcmp olt <4 x float> %i.dy, splat (float 1.000000e-32) ; 4 uses
  %i.ea = call { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float> %i.dy) ; 2 uses
  %i.eb = extractvalue { <4 x float>, <4 x i32> } %i.ea, 1
  %i.ec = extractvalue { <4 x float>, <4 x i32> } %i.ea, 0
  %i.ed = fmul <4 x float> %i.ec, splat (float 2.560000e+02)
  %i.ee = fdiv <4 x float> %i.ed, %i.dy           ; 3 uses
  %i.ef = fmul <4 x float> %wide.load54, %i.ee
  %i.eg = fptoui <4 x float> %i.ef to <4 x i8>
  %i.eh = fmul <4 x float> %wide.load53, %i.ee
  %i.ei = fptoui <4 x float> %i.eh to <4 x i8>
  %i.ej = fmul <4 x float> %wide.load, %i.ee
  %i.ek = fptoui <4 x float> %i.ej to <4 x i8>
  %i.el = trunc <4 x i32> %i.eb to <4 x i8>
  %i.em = xor <4 x i8> %i.el, splat (i8 -128)
  %predphi = select <4 x i1> %i.dz, <4 x i8> zeroinitializer, <4 x i8> %i.ei
  %predphi55 = select <4 x i1> %i.dz, <4 x i8> zeroinitializer, <4 x i8> %i.eg
  %predphi56 = select <4 x i1> %i.dz, <4 x i8> zeroinitializer, <4 x i8> %i.em
  %predphi57 = select <4 x i1> %i.dz, <4 x i8> zeroinitializer, <4 x i8> %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 %index
  store <4 x i8> %predphi55, ptr %i.en, align 1, !tbaa !26
  %i.eo = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index
  store <4 x i8> %predphi, ptr %i.eo, align 1, !tbaa !26
  %i.ep = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %index
  store <4 x i8> %predphi57, ptr %i.ep, align 1, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %index
  store <4 x i8> %predphi56, ptr %i.eq, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !527

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.split.us.i, label %.preheader131.split.us.i.preheader

.preheader131.split.us.i.preheader:               ; preds = %vector.scevcheck, %middle.block
  %indvars.iv163.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.scevcheck ]
  br label %.preheader131.split.us.i

.preheader131.split.us.i:                         ; preds = %.preheader131.split.us.i.preheader, %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i ], [ %indvars.iv163.i.ph, %.preheader131.split.us.i.preheader ] ; 6 uses
  %i.es = mul nuw nsw i64 %indvars.iv163.i, %i.ab
  %i.et = getelementptr [4 x i8], ptr %i.db, i64 %i.es ; 3 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !473 ; 3 uses
  %i.ew = getelementptr i8, ptr %i.et, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !473 ; 3 uses
  %i.ey = load float, ptr %i.et, align 4, !tbaa !473 ; 3 uses
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
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !26
  %gep205.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv163.i
  store i8 %i.fq, ptr %gep205.i, align 1, !tbaa !26
  %gep207.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv163.i
  store i8 %.sink.i118.us.i, ptr %gep207.i, align 1, !tbaa !26
  %gep209.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv163.i
  store i8 %.sink32.i117.us.i, ptr %gep209.i, align 1, !tbaa !26
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %i.x
  br i1 %exitcond167.not.i, label %.split.us.i, label %.preheader131.split.us.i, !llvm.loop !528

.preheader131.split.i:                            ; preds = %.preheader131.split.i.preheader, %_ZL21stbiw__linear_to_rgbePhPf.exit119.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZL21stbiw__linear_to_rgbePhPf.exit119.i ], [ %indvars.iv.i.ph, %.preheader131.split.i.preheader ] ; 6 uses
  %i.ft = mul nsw i64 %indvars.iv.i, %i.aa
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !473 ; 4 uses
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
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !26
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  store i8 %i.gg, ptr %gep.i, align 1, !tbaa !26
  %gep201.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv.i
  store i8 %i.gg, ptr %gep201.i, align 1, !tbaa !26
  %gep203.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv.i
  store i8 %.sink32.i117.i, ptr %gep203.i, align 1, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %exitcond.not.i, label %.split.us.i, label %.preheader131.split.i, !llvm.loop !529

.split.us.i:                                      ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit119.i, %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i, %middle.block81, %middle.block
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.d, i32 noundef 4), !inline_history !523
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
  %i.gl = sext i32 %.2152.i to i64                ; 3 uses
  %i.gm = add nsw i64 %i.gl, 2
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.gj, i64 %i.gl
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !26
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %i.gn = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.gp, %bb.k ] ; 2 uses
  %indvars.iv170.i = phi i64 [ %i.gl, %.lr.ph.preheader.i ], [ %indvars.iv.next171.i, %bb.k ] ; 3 uses
  %indvars.iv168.i = phi i64 [ %i.gm, %.lr.ph.preheader.i ], [ %indvars.iv.next169.i, %bb.k ] ; 2 uses
  %indvars.iv.next171.i = add nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv.next171.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !26  ; 2 uses
  %i.gq = icmp eq i8 %i.gn, %i.gp
  br i1 %i.gq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.gr = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv168.i
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !26
  %i.gt = icmp eq i8 %i.gn, %i.gs
  br i1 %i.gt, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.next169.i = add nsw i64 %indvars.iv168.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv170.i, %4
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !530

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  %i.gz = trunc nuw i32 %spec.store.select.i to i8
  store i8 %i.gz, ptr %i.c, align 1, !tbaa !26
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !531
  call void %.0.val(ptr noundef %.8.val, ptr noundef %i.gy, i32 noundef %spec.store.select.i), !inline_history !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  %i.ha = add nsw i32 %spec.store.select.i, %.3143.i ; 3 uses
  %i.hb = icmp slt i32 %i.ha, %spec.select.i
  br i1 %i.hb, label %.lr.ph145.i, label %._crit_edge146.i, !llvm.loop !532

._crit_edge146.i:                                 ; preds = %.lr.ph145.i, %._crit_edge.i
  %.3.lcssa.i = phi i32 [ %.2152.i, %._crit_edge.i ], [ %i.ha, %.lr.ph145.i ] ; 5 uses
  %i.hc = icmp slt i32 %spec.select.i, %invariant.op.i
  br i1 %i.hc, label %.preheader128.i, label %.loopexit127.i

.preheader128.i:                                  ; preds = %._crit_edge146.i
  %i.hd = sext i32 %.3.lcssa.i to i64
  %i.he = getelementptr inbounds i8, ptr %i.gj, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !26
  %i.hg = sext i32 %spec.select.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.preheader128.i
  %indvars.iv175.i = phi i64 [ %i.hg, %.preheader128.i ], [ %indvars.iv.next176.i, %bb.m ] ; 3 uses
  %i.hh = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv175.i
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !26
  %i.hj = icmp eq i8 %i.hi, %i.hf
  br i1 %i.hj, label %bb.m, label %.critedge.split.loop.exit213.i

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next176.i = add nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next176.i, %i.x
  br i1 %exitcond178.not.i, label %.critedge.i, label %bb.l, !llvm.loop !533

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
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.hp, ptr %i.a, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.hq = trunc nuw i32 %spec.store.select2.i to i8
  %i.hr = or disjoint i8 %i.hq, -128
  store i8 %i.hr, ptr %i.b, align 1, !tbaa !26
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !534
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hs = add nsw i32 %spec.store.select2.i, %.4149.i ; 3 uses
  %i.ht = icmp slt i32 %i.hs, %.2109.lcssa.i
  br i1 %i.ht, label %.lr.ph150.i, label %.loopexit127.i, !llvm.loop !535

.loopexit127.i:                                   ; preds = %.lr.ph150.i, %.critedge.i, %._crit_edge146.i
  %.5.i = phi i32 [ %.3.lcssa.i, %._crit_edge146.i ], [ %.3.lcssa.i, %.critedge.i ], [ %i.hs, %.lr.ph150.i ] ; 2 uses
  %i.hu = icmp slt i32 %.5.i, %0
  br i1 %i.hu, label %.preheader129.i, label %bb.n, !llvm.loop !536

bb.n:                                             ; preds = %.loopexit127.i
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 2 uses
  %exitcond182.not.i = icmp eq i64 %indvars.iv.next180.i, 4
  br i1 %exitcond182.not.i, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1, label %bb.i, !llvm.loop !537

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.hv = add nuw nsw i32 %.06, 1                 ; 2 uses
  %exitcond15.not = icmp eq i32 %i.hv, %1
  br i1 %exitcond15.not, label %.split8.us, label %.preheader131.i, !llvm.loop !525

.split8.us:                                       ; preds = %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us
  call void @free(ptr noundef %i.m) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.split8.us
  %.028 = phi i32 [ 1, %.split8.us ], [ 0, %bb.a ]
  ret i32 %.028
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #27

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_hdr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.84) ; 3 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i32 @_ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf(ptr nonnull @_ZL17stbi__stdio_writePvS_i, ptr nonnull %i.a, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %i.c = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @stbi_zlib_compress(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #36 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %3, i32 5) ; 4 uses
  %malloc = tail call dereferenceable_or_null(10) ptr @malloc(i64 10) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %malloc) ]
  %i.c = getelementptr inbounds nuw i8, ptr %malloc, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %malloc, i64 8 ; 2 uses
  store i32 2, ptr %malloc, align 4, !tbaa !13
  store i32 1, ptr %i.c, align 4, !tbaa !13
  store i8 120, ptr %i.d, align 4, !tbaa !26
  %i.e = tail call dereferenceable_or_null(13) ptr @realloc(ptr noundef nonnull %malloc, i64 noundef 13) #37 ; 3 uses
  %.not18.i253 = icmp eq ptr %i.e, null
  br i1 %.not18.i253, label %_ZL18stbiw__zlib_flushfPhPjPi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 5, ptr %i.e, align 4, !tbaa !13
  br label %_ZL18stbiw__zlib_flushfPhPjPi.exit.thread

_ZL18stbiw__zlib_flushfPhPjPi.exit.thread:        ; preds = %bb.b, %bb.c
  %.1629 = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.1629, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !13
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds i8, ptr %.1629, i64 %i.j
  store i8 94, ptr %i.k, align 1, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.a, i8 0, i64 131072, i1 false), !tbaa !538
  %i.l = add nsw i32 %1, -3
  %i.m = icmp sgt i32 %1, 3
  br i1 %i.m, label %.lr.ph762, label %.preheader709

.lr.ph762:                                        ; preds = %_ZL18stbiw__zlib_flushfPhPjPi.exit.thread
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = shl nuw nsw i32 %spec.store.select, 1
  %i.p = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  br label %bb.d

.preheader709:                                    ; preds = %_ZL18stbiw__zlib_flushfPhPjPi.exit354, %_ZL18stbiw__zlib_flushfPhPjPi.exit.thread
  %.0663.lcssa = phi i32 [ 3, %_ZL18stbiw__zlib_flushfPhPjPi.exit.thread ], [ %.4667, %_ZL18stbiw__zlib_flushfPhPjPi.exit354 ] ; 2 uses
  %.0634.lcssa = phi i32 [ 3, %_ZL18stbiw__zlib_flushfPhPjPi.exit.thread ], [ %.4638, %_ZL18stbiw__zlib_flushfPhPjPi.exit354 ] ; 2 uses
  %.2630.lcssa = phi ptr [ %.1629, %_ZL18stbiw__zlib_flushfPhPjPi.exit.thread ], [ %.5632, %_ZL18stbiw__zlib_flushfPhPjPi.exit354 ] ; 2 uses
  %.1193.lcssa = phi i32 [ 0, %_ZL18stbiw__zlib_flushfPhPjPi.exit.thread ], [ %.2194, %_ZL18stbiw__zlib_flushfPhPjPi.exit354 ] ; 2 uses
  %i.r = icmp slt i32 %.1193.lcssa, %1
  br i1 %i.r, label %.lr.ph771.preheader, label %.preheader707

.lr.ph771.preheader:                              ; preds = %.preheader709
  %i.s = sext i32 %.1193.lcssa to i64
  %wide.trip.count856 = sext i32 %1 to i64
  br label %.lr.ph771

bb.d:                                             ; preds = %.lr.ph762, %_ZL18stbiw__zlib_flushfPhPjPi.exit354
  %.1193761 = phi i32 [ 0, %.lr.ph762 ], [ %.2194, %_ZL18stbiw__zlib_flushfPhPjPi.exit354 ] ; 6 uses
  %.2630760 = phi ptr [ %.1629, %.lr.ph762 ], [ %.5632, %_ZL18stbiw__zlib_flushfPhPjPi.exit354 ] ; 8 uses
  %.0634759 = phi i32 [ 3, %.lr.ph762 ], [ %.4638, %_ZL18stbiw__zlib_flushfPhPjPi.exit354 ] ; 12 uses
  %.0663758 = phi i32 [ 3, %.lr.ph762 ], [ %.4667, %_ZL18stbiw__zlib_flushfPhPjPi.exit354 ] ; 4 uses
  %i.t = sext i32 %.1193761 to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t ; 8 uses
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i32
end_hunk_0
begin_hunk_1_@_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_3MatERKSt6vectorIiSaIiEE:bb.a
  br label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53
  %bcmp.i57 = call i32 @bcmp(ptr nonnull %i.cf, ptr nonnull @.str.94, i64 %i.ce)
  %i.dk = icmp eq i32 %bcmp.i57, 0
  br i1 %i.dk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread132

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread132: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit55, %.loopexit148, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58
  %i.dl = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.95)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread132
  br i1 %i.dl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread, label %bb.o

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread: ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58
  %i.dm = load ptr, ptr %0, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.dn = call ptr @stbi_write_png_to_mem(ptr noundef nonnull readonly %.pre.i.i.i, i32 noundef 0, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.aa, ptr noundef nonnull %i.a) ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %stbi_write_png.exit, label %bb.m

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread
  %i.dp = call noalias noundef ptr @fopen(ptr noundef readonly %i.dm, ptr noundef nonnull @.str.84) ; 3 uses
  %.not.i59 = icmp eq ptr %i.dp, null
  br i1 %.not.i59, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !13
  %i.dr = sext i32 %i.dq to i64
  %i.ds = call i64 @fwrite(ptr noundef nonnull %i.dn, i64 noundef 1, i64 noundef %i.dr, ptr noundef nonnull %i.dp) ; 0 uses
  %i.dt = call i32 @fclose(ptr noundef nonnull %i.dp) ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.m
  %.0.ph.i = phi i32 [ 1, %bb.n ], [ 0, %bb.m ]
  call void @free(ptr noundef nonnull %i.dn) #35
  br label %stbi_write_png.exit

stbi_write_png.exit:                              ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread, %.sink.split.i
  %.0.i60 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread ], [ %.0.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.du = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.96)
          to label %bb.p unwind label %bb.g

bb.p:                                             ; preds = %bb.o
  br i1 %i.du, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.97)
          to label %bb.r unwind label %bb.g

bb.r:                                             ; preds = %bb.q
  br i1 %i.dv, label %bb.s, label %.thread139

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.dw = load ptr, ptr %0, align 8, !tbaa !603
  %i.dx = invoke i32 @stbi_write_bmp(ptr noundef %i.dw, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.aa, ptr noundef nonnull %.pre.i.i.i)
          to label %bb.t unwind label %bb.g

bb.t:                                             ; preds = %stbi_write_png.exit, %stbi_write_jpg.exit, %bb.s
  %.032.in = phi i32 [ %.0.i60, %stbi_write_png.exit ], [ %.0.i, %stbi_write_jpg.exit ], [ %i.dx, %bb.s ]
  %i.dy = trunc nuw i32 %.032.in to i1
  br label %.thread139

bb.u:                                             ; preds = %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.k ], [ %i.cu, %bb.g ]
  %i.dz = atomicrmw add ptr %i.ai, i32 -1 acq_rel, align 4
  %i.ea = icmp ne i32 %i.dz, 1
  %.not.i.i.i = icmp eq ptr %.pre.i.i.i, null
  %or.cond = or i1 %.not.i.i.i, %i.ea
  br i1 %or.cond, label %_ZN2cv3MatD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %.pre.i.i.i) #35
  br label %_ZN2cv3MatD2Ev.exit

.thread139:                                       ; preds = %bb.r, %bb.t, %_ZNK2cv3Mat5cloneEv.exit
  %.143146 = phi i1 [ false, %_ZNK2cv3Mat5cloneEv.exit ], [ false, %bb.r ], [ %i.dy, %bb.t ] ; 2 uses
  %i.eb = atomicrmw add ptr %i.ai, i32 -1 acq_rel, align 4
  %i.ec = icmp ne i32 %i.eb, 1
  %.not.i.i.i62 = icmp eq ptr %.pre.i.i.i, null
  %or.cond147 = or i1 %.not.i.i.i62, %i.ec
  br i1 %or.cond147, label %_ZN2cv3MatD2Ev.exit63, label %bb.w

bb.w:                                             ; preds = %.thread139
  call void @free(ptr noundef nonnull %.pre.i.i.i) #35
  br label %_ZN2cv3MatD2Ev.exit63

_ZN2cv3MatD2Ev.exit63:                            ; preds = %_ZNK2cv3Mat5emptyEv.exit.i, %bb.e, %.thread139, %bb.w
  %.143138 = phi i1 [ %.143146, %bb.w ], [ false, %bb.e ], [ %.143146, %.thread139 ], [ false, %_ZNK2cv3Mat5emptyEv.exit.i ]
  %i.ed = load ptr, ptr %4, align 8, !tbaa !603   ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.f
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2cv3MatD2Ev.exit63
  call void @_ZdlPv(ptr noundef %i.ed) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2cv3MatD2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.x

_ZN2cv3MatD2Ev.exit:                              ; preds = %bb.v, %bb.u
  %i.ef = load ptr, ptr %4, align 8, !tbaa !603   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.f
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZN2cv3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ef) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZN2cv3MatD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  resume { ptr, i32 } %.pn

bb.x:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.244 = phi i1 [ %.143138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.244
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #29

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !620  ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !603
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #29

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #30

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.bitreverse.i4(i4) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i7 @llvm.bitreverse.i7(i7) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #35 = { nounwind }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind allocsize(1) }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15}
!15 = !{!12, !12, i64 0}
!16 = !{!17, !12, i64 40}
!17 = !{!"_ZTS13stbi__context", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !18, i64 16, !12, i64 40, !7, i64 48, !7, i64 52, !8, i64 56, !7, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216}
!18 = !{!"_ZTS17stbi_io_callbacks", !12, i64 0, !12, i64 8, !12, i64 16}
!19 = !{!17, !7, i64 52}
!20 = !{!17, !7, i64 48}
!21 = !{!17, !7, i64 184}
!22 = !{!17, !11, i64 208}
!23 = !{!17, !11, i64 192}
!24 = !{!17, !12, i64 16}
!25 = distinct !{ptr @stbi_load_from_file, null, null, null}
!26 = !{!8, !8, i64 0}
!27 = !{!17, !11, i64 200}
!28 = !{!17, !11, i64 216}
!29 = distinct !{null, null, null}
!30 = !{!31, !7, i64 0}
!31 = !{!"_ZTS17stbi__result_info", !7, i64 0, !7, i64 4, !7, i64 8}
!32 = !{!33, !33, i64 0}
!33 = !{!"short", !8, i64 0}
!34 = distinct !{!34, !35, !36, !37}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 4, i32 12}
!39 = distinct !{!39, !35, !36, !37}
!40 = distinct !{!40, !35, !37, !36}
!41 = distinct !{!41, !35}
!42 = distinct !{!42, !35}
!43 = !{!31, !7, i64 8}
!44 = !{!31, !7, i64 4}
!45 = distinct !{null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!46 = !{!47, !12, i64 0}
!47 = !{!"_ZTS9stbi__png", !12, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32}
!48 = !{!47, !11, i64 24}
!49 = !{!47, !7, i64 32}
!50 = !{!17, !7, i64 12}
!51 = !{!17, !7, i64 0}
!52 = !{!17, !7, i64 4}
!53 = !{!17, !7, i64 8}
!54 = !{!47, !11, i64 16}
!55 = !{!47, !11, i64 8}
!56 = distinct !{null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!57 = !{!58, !7, i64 28}
!58 = !{!"_ZTS14stbi__bmp_data", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!59 = !{!58, !7, i64 12}
!60 = !{!58, !7, i64 16}
!61 = !{!58, !7, i64 20}
!62 = !{!58, !7, i64 24}
!63 = !{!58, !7, i64 8}
!64 = !{!58, !7, i64 0}
!65 = !{!58, !7, i64 4}
!66 = !{!58, !7, i64 32}
!67 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!68 = distinct !{!68, !35}
!69 = distinct !{!69, !35}
!70 = !{!17, !12, i64 24}
!71 = distinct !{null, ptr @_ZL10stbi__skipP13stbi__contexti}
!72 = distinct !{!72, !35}
!73 = distinct !{!73, !35}
!74 = distinct !{!74, !35}
!75 = distinct !{!75, !35}
!76 = distinct !{!76, !35}
!77 = distinct !{!77, !35}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !35}
!81 = !{!82}
!82 = distinct !{!82, !83}
!83 = distinct !{!83, !"LVerDomain"}
!84 = !{!85}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !35, !36, !37}
!87 = !{!"branch_weights", i32 4, i32 28}
!88 = distinct !{!88, !35, !36, !37}
!89 = distinct !{!89, !35, !36}
!90 = distinct !{!90, !35}
!91 = !{!92, !12, i64 0}
!92 = !{!"_ZTS10stbi__jpeg", !12, i64 0, !8, i64 8, !8, i64 6728, !8, i64 13448, !8, i64 13960, !7, i64 18056, !7, i64 18060, !7, i64 18064, !7, i64 18068, !7, i64 18072, !7, i64 18076, !8, i64 18080, !7, i64 18464, !7, i64 18468, !8, i64 18472, !7, i64 18476, !7, i64 18480, !7, i64 18484, !7, i64 18488, !7, i64 18492, !7, i64 18496, !7, i64 18500, !7, i64 18504, !7, i64 18508, !7, i64 18512, !7, i64 18516, !8, i64 18520, !7, i64 18536, !7, i64 18540, !12, i64 18544, !12, i64 18552, !12, i64 18560}
!93 = !{!92, !12, i64 18544}
!94 = !{!92, !12, i64 18552}
!95 = !{!92, !12, i64 18560}
!96 = !{!92, !7, i64 18508}
!97 = !{!92, !8, i64 18472}
!98 = !{!92, !7, i64 18536}
!99 = !{!92, !7, i64 18516}
!100 = distinct !{null, null, null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!101 = !{!102, !7, i64 0}
!102 = !{!"_ZTSN10stbi__jpegUt_E", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !11, i64 48, !12, i64 56, !12, i64 64, !11, i64 72, !103, i64 80, !7, i64 88, !7, i64 92}
!103 = !{!"p1 short", !12, i64 0}
!104 = distinct !{!104, !35}
!105 = !{!102, !7, i64 16}
!106 = !{!102, !7, i64 20}
!107 = distinct !{!107, !35}
!108 = !{!92, !7, i64 18484}
!109 = !{!92, !7, i64 18488}
!110 = !{!92, !7, i64 18492}
!111 = !{!92, !7, i64 18496}
!112 = !{!92, !7, i64 18480}
!113 = !{!92, !7, i64 18468}
!114 = !{!92, !7, i64 18464}
!115 = !{!92, !7, i64 18476}
!116 = !{!102, !7, i64 24}
!117 = !{!92, !7, i64 18540}
!118 = !{!92, !7, i64 18500}
!119 = !{!102, !7, i64 28}
end_hunk_1
