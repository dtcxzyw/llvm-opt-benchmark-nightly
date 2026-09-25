Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv:bb.a
  %i.ef = add nsw i64 %i.ee, 3
  %i.eg = icmp ult i64 %i.ef, 65
  br i1 %i.eg, label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = load ptr, ptr %0, align 8, !tbaa !114
  %i.ei = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.eh(ptr noundef %i.ei, ptr noundef nonnull %i.aa, i32 noundef %i.ed), !inline_history !529
  br label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us

_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us: ; preds = %bb.v, %bb.u
  %i.ej = phi i32 [ 0, %bb.v ], [ %i.ed, %bb.u ]  ; 2 uses
  %i.ek = add nsw i32 %i.ej, 3
  store i32 %i.ek, ptr %i.y, align 8, !tbaa !116
  %i.el = sext i32 %i.ej to i64
  %i.em = getelementptr inbounds i8, ptr %i.aa, i64 %i.el ; 3 uses
  store i8 %i.dz, ptr %i.em, align 1, !tbaa !35
  %i.en = getelementptr i8, ptr %i.em, i64 1
  store i8 %i.eb, ptr %i.en, align 1, !tbaa !35
  %i.eo = getelementptr i8, ptr %i.em, i64 2
  store i8 %i.ec, ptr %i.eo, align 1, !tbaa !35
  br label %bb.y

bb.w:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %i.ep = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.eq = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = add nsw i64 %i.er, 1
  %i.et = icmp ult i64 %i.es, 65
  br i1 %i.et, label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = load ptr, ptr %0, align 8, !tbaa !114
  %i.ev = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.eu(ptr noundef %i.ev, ptr noundef nonnull %i.aa, i32 noundef %i.eq), !inline_history !530
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us

_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us: ; preds = %bb.x, %bb.w
  %i.ew = phi i32 [ 0, %bb.x ], [ %i.eq, %bb.w ]  ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.y, align 8, !tbaa !116
  %i.ey = sext i32 %i.ew to i64
  %i.ez = getelementptr inbounds i8, ptr %i.aa, i64 %i.ey
  store i8 %i.ep, ptr %i.ez, align 1, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit.i140.us, %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i125.us
  switch i32 %3, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us [
    i32 4, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.fa = getelementptr i8, ptr %i.ak, i64 %i.ab
  %i.fb = getelementptr i8, ptr %i.fa, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !35
  %i.fd = load i32, ptr %i.y, align 8, !tbaa !116 ; 3 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = add nsw i64 %i.fe, 1
  %i.fg = icmp ult i64 %i.ff, 65
  br i1 %i.fg, label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %0, align 8, !tbaa !114
  %i.fi = load ptr, ptr %i.z, align 8, !tbaa !115
  tail call void %i.fh(ptr noundef %i.fi, ptr noundef nonnull %i.aa, i32 noundef %i.fd), !inline_history !530
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us

_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us: ; preds = %bb.aa, %bb.z
  %i.fj = phi i32 [ 0, %bb.aa ], [ %i.fd, %bb.z ] ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.y, align 8, !tbaa !116
  %i.fl = sext i32 %i.fj to i64
  %i.fm = getelementptr inbounds i8, ptr %i.aa, i64 %i.fl
  store i8 %i.fc, ptr %i.fm, align 1, !tbaa !35
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us: ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us, %bb.y, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us
  %.3146.us = phi i32 [ %.2.lcssa.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit124.us ], [ %.2.lcssa.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i127.us ], [ %.2.lcssa.us, %bb.y ], [ %.3.ph.us, %_ZL13stbiw__write1P19stbi__write_contexth.exit.us ], [ %.3.ph.us, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us ]
  %i.fn = add nsw i32 %.3146.us, %.0111159.us     ; 2 uses
  %i.fo = icmp slt i32 %i.fn, %1
  br i1 %i.fo, label %bb.e, label %._crit_edge163.us, !llvm.loop !533

._crit_edge163.us:                                ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit141.us
  %indvars.iv.next179 = add i64 %indvars.iv178, %.0104 ; 2 uses
  %i.fp = trunc i64 %indvars.iv.next179 to i32
  %.not117.us = icmp eq i32 %.0105, %i.fp
  br i1 %.not117.us, label %._crit_edge168, label %.lr.ph162.us, !llvm.loop !534

._crit_edge168:                                   ; preds = %._crit_edge163.us, %.lr.ph167, %bb.d
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !116 ; 2 uses
  %.not.i142 = icmp eq i32 %i.fr, 0
  br i1 %.not.i142, label %_ZL18stbiw__write_flushP19stbi__write_context.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge168
  %i.fs = load ptr, ptr %0, align 8, !tbaa !114
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !115
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.fs(ptr noundef %i.fu, ptr noundef nonnull %i.fv, i32 noundef %i.fr), !inline_history !535
  store i32 0, ptr %i.fq, align 8, !tbaa !116
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
  store ptr @_ZL17stbi__stdio_writePvS_i, ptr %5, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !115
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef i32 @_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8, !tbaa !115
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
  %i.k = shl nuw nsw i32 %0, 2
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
  %i.au = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
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
  %i.be = load float, ptr %i.bd, align 4, !tbaa !112 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !112 ; 3 uses
  %i.bh = load float, ptr %i.bc, align 4, !tbaa !112 ; 3 uses
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
  store i8 %.sink, ptr %i.ae, align 1, !tbaa !35
  store i8 %.sink.i.us.us.us, ptr %i.e, align 1, !tbaa !35
  store i8 %.sink32.i.i.us.us.us, ptr %i.ac, align 1, !tbaa !35
  store i8 %.sink.i.i.us.us.us, ptr %i.ad, align 1, !tbaa !35
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !536
  %indvars.iv.next184.i.us.us.us = add nuw nsw i64 %indvars.iv183.i.us.us.us, 1 ; 2 uses
  %exitcond187.not.i.us.us.us = icmp eq i64 %indvars.iv.next184.i.us.us.us, %i.x
  br i1 %exitcond187.not.i.us.us.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us, label %bb.c, !llvm.loop !537

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split.us.us: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.bz = add nuw nsw i32 %.06.us.us, 1           ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bz, %1
  br i1 %exitcond17.not, label %.split8.us, label %.preheader.i.us.us, !llvm.loop !538

.preheader.i.us:                                  ; preds = %.split.us, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split
  %.06.us = phi i32 [ %i.cu, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split ], [ 0, %.split.us ] ; 3 uses
  %i.ca = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
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
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !112 ; 4 uses
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
  store i8 %.sink18, ptr %i.ae, align 1, !tbaa !35
  store i8 %.sink18, ptr %i.e, align 1, !tbaa !35
  store i8 %.sink32.i.i.us, ptr %i.ac, align 1, !tbaa !35
  store i8 %.sink18, ptr %i.ad, align 1, !tbaa !35
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !536
  %indvars.iv.next184.i.us = add nuw nsw i64 %indvars.iv183.i.us, 1 ; 2 uses
  %exitcond187.not.i.us = icmp eq i64 %indvars.iv.next184.i.us, %i.x
  br i1 %exitcond187.not.i.us, label %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split, label %bb.e, !llvm.loop !537

_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit.us.split: ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.cu = add nuw nsw i32 %.06.us, 1              ; 2 uses
  %exitcond16.not = icmp eq i32 %i.cu, %1
  br i1 %exitcond16.not, label %.split8.us, label %.preheader.i.us, !llvm.loop !538

.preheader131.i:                                  ; preds = %.preheader131.i.preheader, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1
  %.06 = phi i32 [ %i.hv, %_ZL25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf.exit.loopexit1 ], [ 0, %.preheader131.i.preheader ] ; 3 uses
  %i.cv = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  %.not = icmp eq i32 %i.cv, 0
  %i.cw = xor i32 %.06, -1
  %i.cx = add nsw i32 %1, %i.cw
  %i.cy = select i1 %.not, i32 %.06, i32 %i.cx
  %i.cz = mul nsw i32 %i.o, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %3, i64 %i.da ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  store i32 514, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  store i8 %i.q, ptr %i.r, align 2, !tbaa !35
  store i8 %i.s, ptr %i.t, align 1, !tbaa !35
  br i1 %switch.i, label %vector.scevcheck, label %vector.scevcheck58

vector.scevcheck58:                               ; preds = %.preheader131.i
  %ident.check.not.not = xor i1 %ident.check.not, true
  %brmerge = select i1 %ident.check.not.not, i1 true, i1 %conflict.rdx71
  br i1 %brmerge, label %.preheader131.split.i.preheader, label %vector.body75

vector.body75:                                    ; preds = %vector.scevcheck58, %vector.body75
  %index76 = phi i64 [ %index.next80, %vector.body75 ], [ 0, %vector.scevcheck58 ] ; 6 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %index76
  %wide.load77 = load <4 x float>, ptr %i.dc, align 4, !tbaa !112 ; 4 uses
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
  store <4 x i8> %predphi78, ptr %i.dn, align 1, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index76
  store <4 x i8> %predphi78, ptr %i.do, align 1, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %index76
  store <4 x i8> %predphi78, ptr %i.dp, align 1, !tbaa !35
  %i.dq = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %index76
  store <4 x i8> %predphi79, ptr %i.dq, align 1, !tbaa !35
  %index.next80 = add nuw i64 %index76, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.dr, label %middle.block81, label %vector.body75, !llvm.loop !539

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
  %18 = load float, ptr %14, align 4, !tbaa !112
  %19 = load float, ptr %15, align 4, !tbaa !112
  %20 = load float, ptr %16, align 4, !tbaa !112
  %21 = load float, ptr %17, align 4, !tbaa !112
  %22 = insertelement <4 x float> poison, float %18, i64 0
  %23 = insertelement <4 x float> %22, float %19, i64 1
  %24 = insertelement <4 x float> %23, float %20, i64 2
  %25 = insertelement <4 x float> %24, float %21, i64 3 ; 3 uses
  %26 = getelementptr i8, ptr %11, i64 4
  %i.dt = getelementptr i8, ptr %12, i64 4
  %27 = getelementptr i8, ptr %13, i64 4
  %i.du = getelementptr i8, ptr %i.ds, i64 4
  %28 = load float, ptr %26, align 4, !tbaa !112
  %29 = load float, ptr %i.dt, align 4, !tbaa !112
  %30 = load float, ptr %27, align 4, !tbaa !112
  %31 = load float, ptr %i.du, align 4, !tbaa !112
  %32 = insertelement <4 x float> poison, float %28, i64 0
  %33 = insertelement <4 x float> %32, float %29, i64 1
  %34 = insertelement <4 x float> %33, float %30, i64 2
  %35 = insertelement <4 x float> %34, float %31, i64 3 ; 3 uses
  %36 = load float, ptr %11, align 4, !tbaa !112
  %37 = load float, ptr %12, align 4, !tbaa !112
  %38 = load float, ptr %13, align 4, !tbaa !112
  %39 = load float, ptr %i.ds, align 4, !tbaa !112
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
  store <4 x i8> %predphi55.a, ptr %i.en, align 1, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index
  store <4 x i8> %predphi, ptr %i.eo, align 1, !tbaa !35
  %i.ep = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %index
  store <4 x i8> %predphi57, ptr %i.ep, align 1, !tbaa !35
  %i.eq = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %index
  store <4 x i8> %predphi56, ptr %i.eq, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !540

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
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !112 ; 3 uses
  %i.ew = getelementptr i8, ptr %i.et, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !112 ; 3 uses
  %i.ey = load float, ptr %i.et, align 4, !tbaa !112 ; 3 uses
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
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !35
  %gep205.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv163.i
  store i8 %i.fq, ptr %gep205.i, align 1, !tbaa !35
  %gep207.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv163.i
  store i8 %.sink.i118.us.i, ptr %gep207.i, align 1, !tbaa !35
  %gep209.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv163.i
  store i8 %.sink32.i117.us.i, ptr %gep209.i, align 1, !tbaa !35
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %i.x
  br i1 %exitcond167.not.i, label %.split.us.i, label %.preheader131.split.us.i, !llvm.loop !541

.preheader131.split.i:                            ; preds = %.preheader131.split.i.preheader, %_ZL21stbiw__linear_to_rgbePhPf.exit119.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZL21stbiw__linear_to_rgbePhPf.exit119.i ], [ %indvars.iv.i.ph, %.preheader131.split.i.preheader ] ; 6 uses
  %i.ft = mul nsw i64 %indvars.iv.i, %i.aa
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !112 ; 4 uses
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
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !35
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  store i8 %i.gg, ptr %gep.i, align 1, !tbaa !35
  %gep201.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv.i
  store i8 %i.gg, ptr %gep201.i, align 1, !tbaa !35
  %gep203.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv.i
  store i8 %.sink32.i117.i, ptr %gep203.i, align 1, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %exitcond.not.i, label %.split.us.i, label %.preheader131.split.i, !llvm.loop !542

.split.us.i:                                      ; preds = %_ZL21stbiw__linear_to_rgbePhPf.exit119.i, %_ZL21stbiw__linear_to_rgbePhPf.exit119.us.i, %middle.block81, %middle.block
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.d, i32 noundef 4), !inline_history !536
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
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !35
  %smax = call i64 @llvm.smax.i64(i64 %invariant.op212.i, i64 %i.gl)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %i.gn = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.gp, %bb.k ] ; 2 uses
  %indvars.iv170.i = phi i64 [ %i.gl, %.lr.ph.preheader.i ], [ %indvars.iv.next171.i, %bb.k ] ; 3 uses
  %indvars.iv168.i = phi i64 [ %i.gm, %.lr.ph.preheader.i ], [ %indvars.iv.next169.i, %bb.k ] ; 2 uses
  %indvars.iv.next171.i = add nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv.next171.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !35  ; 2 uses
  %i.gq = icmp eq i8 %i.gn, %i.gp
  br i1 %i.gq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.gr = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv168.i
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !35
  %i.gt = icmp eq i8 %i.gn, %i.gs
  br i1 %i.gt, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.next169.i = add nsw i64 %indvars.iv168.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv170.i, %smax
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !543

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
  store i8 %i.gz, ptr %i.c, align 1, !tbaa !35
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !544
  call void %.0.val(ptr noundef %.8.val, ptr noundef %i.gy, i32 noundef %spec.store.select.i), !inline_history !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  %i.ha = add nsw i32 %spec.store.select.i, %.3143.i ; 3 uses
  %i.hb = icmp slt i32 %i.ha, %spec.select.i
  br i1 %i.hb, label %.lr.ph145.i, label %._crit_edge146.i, !llvm.loop !545

._crit_edge146.i:                                 ; preds = %.lr.ph145.i, %._crit_edge.i
  %.3.lcssa.i = phi i32 [ %.2152.i, %._crit_edge.i ], [ %i.ha, %.lr.ph145.i ] ; 5 uses
  %i.hc = icmp slt i32 %spec.select.i, %invariant.op.i
  br i1 %i.hc, label %.preheader128.i, label %.loopexit127.i

.preheader128.i:                                  ; preds = %._crit_edge146.i
  %i.hd = sext i32 %.3.lcssa.i to i64
  %i.he = getelementptr inbounds i8, ptr %i.gj, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !35
  %i.hg = sext i32 %spec.select.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.preheader128.i
  %indvars.iv175.i = phi i64 [ %i.hg, %.preheader128.i ], [ %indvars.iv.next176.i, %bb.m ] ; 3 uses
  %i.hh = getelementptr inbounds i8, ptr %i.gj, i64 %indvars.iv175.i
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !35
  %i.hj = icmp eq i8 %i.hi, %i.hf
  br i1 %i.hj, label %bb.m, label %.critedge.split.loop.exit213.i

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next176.i = add nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next176.i, %i.x
  br i1 %exitcond178.not.i, label %.critedge.i, label %bb.l, !llvm.loop !546

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
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.hp, ptr %i.a, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.hq = trunc nuw i32 %spec.store.select2.i to i8
  %i.hr = or disjoint i8 %i.hq, -128
end_hunk_0
begin_hunk_1_@_ZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKvi:bb.a
  %i.bmt = insertelement <4 x float> poison, float %i.bmp, i64 0
  %i.bmu = insertelement <4 x float> %i.bmt, float %i.bmq, i64 1
  %i.bmv = insertelement <4 x float> %i.bmu, float %i.bmr, i64 2
  %i.bmw = insertelement <4 x float> %i.bmv, float %i.bms, i64 3
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bjk
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bjl
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bjm
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bjn
  %i.bnb = load float, ptr %i.bmx, align 4, !tbaa !112
  %i.bnc = load float, ptr %i.bmy, align 4, !tbaa !112
  %i.bnd = load float, ptr %i.bmz, align 4, !tbaa !112
  %i.bne = load float, ptr %i.bna, align 4, !tbaa !112
  %i.bnf = insertelement <4 x float> poison, float %i.bnb, i64 0
  %i.bng = insertelement <4 x float> %i.bnf, float %i.bnc, i64 1
  %i.bnh = insertelement <4 x float> %i.bng, float %i.bnd, i64 2
  %i.bni = insertelement <4 x float> %i.bnh, float %i.bne, i64 3
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bka
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkb
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkc
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkd
  %i.bnn = load float, ptr %i.bnj, align 8, !tbaa !112
  %i.bno = load float, ptr %i.bnk, align 8, !tbaa !112
  %i.bnp = load float, ptr %i.bnl, align 8, !tbaa !112
  %i.bnq = load float, ptr %i.bnm, align 8, !tbaa !112
  %i.bnr = insertelement <4 x float> poison, float %i.bnn, i64 0
  %i.bns = insertelement <4 x float> %i.bnr, float %i.bno, i64 1
  %i.bnt = insertelement <4 x float> %i.bns, float %i.bnp, i64 2
  %i.bnu = insertelement <4 x float> %i.bnt, float %i.bnq, i64 3
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkq
  %i.bnw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkr
  %i.bnx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bks
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bkt
  %i.bnz = load float, ptr %i.bnv, align 4, !tbaa !112
  %i.boa = load float, ptr %i.bnw, align 4, !tbaa !112
  %i.bob = load float, ptr %i.bnx, align 4, !tbaa !112
  %i.boc = load float, ptr %i.bny, align 4, !tbaa !112
  %i.bod = insertelement <4 x float> poison, float %i.bnz, i64 0
  %i.boe = insertelement <4 x float> %i.bod, float %i.boa, i64 1
  %i.bof = insertelement <4 x float> %i.boe, float %i.bob, i64 2
  %i.bog = insertelement <4 x float> %i.bof, float %i.boc, i64 3
  %i.boh = shufflevector <4 x float> %i.ahm, <4 x float> %i.alv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boi = shufflevector <4 x float> %i.aqd, <4 x float> %i.aul, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boj = shufflevector <8 x float> %i.boh, <8 x float> %i.boi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bok = shufflevector <4 x float> %i.ahy, <4 x float> %i.amh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bol = shufflevector <4 x float> %i.aqp, <4 x float> %i.aux, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bom = shufflevector <8 x float> %i.bok, <8 x float> %i.bol, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bon = fadd <16 x float> %i.boj, %i.bom
  %i.boo = shufflevector <4 x float> %i.aik, <4 x float> %i.amt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bop = shufflevector <4 x float> %i.arb, <4 x float> %i.avj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boq = shufflevector <8 x float> %i.boo, <8 x float> %i.bop, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bor = fadd <16 x float> %i.bon, %i.boq
  %i.bos = shufflevector <4 x float> %i.aiw, <4 x float> %i.anf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bot = shufflevector <4 x float> %i.arn, <4 x float> %i.avv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bou = shufflevector <8 x float> %i.bos, <8 x float> %i.bot, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bov = fadd <16 x float> %i.bor, %i.bou
  %i.bow = shufflevector <4 x float> %i.ayt, <4 x float> %i.bdb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.box = shufflevector <4 x float> %i.bhj, <4 x float> %i.bmw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boy = shufflevector <8 x float> %i.bow, <8 x float> %i.box, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.boz = shufflevector <4 x float> %i.azf, <4 x float> %i.bdn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpa = shufflevector <4 x float> %i.bhv, <4 x float> %i.bni, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpb = shufflevector <8 x float> %i.boz, <8 x float> %i.bpa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpc = fadd <16 x float> %i.boy, %i.bpb
  %i.bpd = shufflevector <4 x float> %i.azr, <4 x float> %i.bdz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpe = shufflevector <4 x float> %i.bih, <4 x float> %i.bnu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpf = shufflevector <8 x float> %i.bpd, <8 x float> %i.bpe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpg = fadd <16 x float> %i.bpc, %i.bpf
  %i.bph = shufflevector <4 x float> %i.bad, <4 x float> %i.bel, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpi = shufflevector <4 x float> %i.bit, <4 x float> %i.bog, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpj = shufflevector <8 x float> %i.bph, <8 x float> %i.bpi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpk = fadd <16 x float> %i.bpg, %i.bpj
  %i.bpl = shufflevector <16 x float> %i.bov, <16 x float> %i.bpk, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec436 = fmul <32 x float> %i.bpl, splat (float 2.500000e-01)
  store <32 x float> %interleaved.vec436, ptr %i.aix, align 16, !tbaa !112
  %index.next437 = add nuw i64 %index434, 4       ; 2 uses
  %i.bpm = icmp eq i64 %index.next437, 8
  br i1 %i.bpm, label %middle.block438, label %vector.body433, !llvm.loop !607

middle.block438:                                  ; preds = %vector.body433
  %i.bpn = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.s, i32 noundef 8, ptr noundef %i.j, i32 noundef %.1250322.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVAC_HT) ; 2 uses
  %i.bpo = call fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.t, i32 noundef 8, ptr noundef %i.j, i32 noundef %.1246323.us, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVDC_HT, ptr noundef nonnull @_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVAC_HT) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #35
  %i.bpp = add nuw nsw i32 %.0243324.us, 16       ; 2 uses
  %i.bpq = icmp slt i32 %i.bpp, %1
  br i1 %i.bpq, label %bb.h, label %._crit_edge.us332, !llvm.loop !608

._crit_edge.us332:                                ; preds = %middle.block438
  %i.bpr = add nuw nsw i32 %.0241330.us, 16       ; 2 uses
  %i.bps = icmp slt i32 %i.bpr, %2
  %indvars.iv.next390 = add i32 %indvars.iv389, 16
  br i1 %i.bps, label %.preheader278.us, label %.loopexit, !llvm.loop !609

.loopexit:                                        ; preds = %._crit_edge.us, %._crit_edge.us332, %.preheader278.lr.ph, %.preheader280.lr.ph, %.preheader281, %.preheader279
  %i.bpt = load i32, ptr %i.o, align 4, !tbaa !23 ; 3 uses
  %i.bpu = icmp sgt i32 %i.bpt, 0
  br i1 %i.bpu, label %.lr.ph.i.preheader, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.bpv = sub nsw i32 17, %i.bpt
  %i.bpw = shl i32 127, %i.bpv
  %i.bpx = load i32, ptr %i.n, align 4, !tbaa !23
  %i.bpy = or i32 %i.bpw, %i.bpx
  %i.bpz = add nuw nsw i32 %i.bpt, 7
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.m
  %.02.i = phi i32 [ %i.bqf, %bb.m ], [ %i.bpz, %.lr.ph.i.preheader ] ; 2 uses
  %.0181.i = phi i32 [ %i.bqe, %bb.m ], [ %i.bpy, %.lr.ph.i.preheader ] ; 3 uses
  %i.bqa = lshr i32 %.0181.i, 16
  %i.bqb = trunc i32 %i.bqa to i8
  %.val20.i = load ptr, ptr %0, align 8, !tbaa !114
  %.val21.i = load ptr, ptr %i.qi, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.bqb, ptr %i.d, align 1, !tbaa !35
  call void %.val20.i(ptr noundef %.val21.i, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bqc = and i32 %.0181.i, 16711680
  %i.bqd = icmp eq i32 %i.bqc, 16711680
  br i1 %i.bqd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %0, align 8, !tbaa !114
  %.val19.i = load ptr, ptr %i.qi, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !35
  call void %.val.i(ptr noundef %.val19.i, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bqe = shl i32 %.0181.i, 8
  %i.bqf = add nsw i32 %.02.i, -8
  %i.bqg = icmp sgt i32 %.02.i, 15
  br i1 %i.bqg, label %.lr.ph.i, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit, !llvm.loop !9

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit: ; preds = %bb.m, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #35
  %.val267 = load ptr, ptr %0, align 8, !tbaa !114
  %.val268 = load ptr, ptr %i.qi, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 1, !tbaa !35
  call void %.val267(ptr noundef %.val268, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %0, align 8, !tbaa !114
  %.val266 = load ptr, ptr %i.qi, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -39, ptr %i.a, align 1, !tbaa !35
  call void %.val(ptr noundef %.val266, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit
  %.0 = phi i32 [ 1, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #27

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 8, 17) %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #4 {
.lver.check:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca [64 x i32], align 16              ; 67 uses
  %i.r = load i16, ptr %8, align 2, !tbaa !41     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !41   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 960
  %i.v = load i16, ptr %i.u, align 2, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 962
  %i.x = load i16, ptr %i.w, align 2, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #35
  %i.y = shl nuw nsw i32 %4, 3
  %i.z = zext nneg i32 %4 to i64                  ; 9 uses
  %i.aa = zext nneg i32 %i.y to i64
  br label %9

vector.body:                                      ; preds = %9
  %i.ab = mul nuw nsw i32 %4, 7
  %i.ac = zext nneg i32 %i.ab to i64
  %invariant.gep356 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac ; 3 uses
  %i.ad = mul nuw nsw i32 %4, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %invariant.gep354 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ae ; 3 uses
  %i.af = mul nuw nsw i32 %4, 5
  %i.ag = zext nneg i32 %i.af to i64
  %invariant.gep352 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ag ; 3 uses
  %i.ah = shl nuw nsw i32 %4, 2
  %i.ai = zext nneg i32 %i.ah to i64
  %invariant.gep350 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai ; 3 uses
  %i.aj = mul nuw nsw i32 %4, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %invariant.gep348 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ak ; 3 uses
  %i.al = shl nuw nsw i32 %4, 1
  %i.am = zext nneg i32 %i.al to i64
  %invariant.gep346 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.am ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.z ; 3 uses
  %wide.load = load <4 x float>, ptr %3, align 4, !tbaa !112 ; 2 uses
  %wide.load376 = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !112 ; 2 uses
  %wide.load377 = load <4 x float>, ptr %invariant.gep346, align 4, !tbaa !112 ; 2 uses
  %wide.load378 = load <4 x float>, ptr %invariant.gep348, align 4, !tbaa !112 ; 2 uses
  %wide.load379 = load <4 x float>, ptr %invariant.gep350, align 4, !tbaa !112 ; 2 uses
  %wide.load380 = load <4 x float>, ptr %invariant.gep352, align 4, !tbaa !112 ; 2 uses
  %wide.load381 = load <4 x float>, ptr %invariant.gep354, align 4, !tbaa !112 ; 2 uses
  %wide.load382 = load <4 x float>, ptr %invariant.gep356, align 4, !tbaa !112 ; 2 uses
  %i.an = fadd <4 x float> %wide.load, %wide.load382 ; 2 uses
  %i.ao = fsub <4 x float> %wide.load, %wide.load382 ; 3 uses
  %i.ap = fadd <4 x float> %wide.load376, %wide.load381 ; 2 uses
  %i.aq = fsub <4 x float> %wide.load376, %wide.load381 ; 2 uses
  %i.ar = fadd <4 x float> %wide.load377, %wide.load380 ; 2 uses
  %i.as = fsub <4 x float> %wide.load377, %wide.load380 ; 2 uses
  %i.at = fadd <4 x float> %wide.load378, %wide.load379 ; 2 uses
  %i.au = fsub <4 x float> %wide.load378, %wide.load379
  %i.av = fadd <4 x float> %i.at, %i.an           ; 2 uses
  %i.aw = fsub <4 x float> %i.an, %i.at           ; 3 uses
  %i.ax = fadd <4 x float> %i.ar, %i.ap           ; 2 uses
  %i.ay = fsub <4 x float> %i.ap, %i.ar
  %i.az = fadd <4 x float> %i.ax, %i.av
  %i.ba = fsub <4 x float> %i.av, %i.ax
  %i.bb = fadd <4 x float> %i.ay, %i.aw
  %i.bc = fmul <4 x float> %i.bb, splat (float f0x3F3504F3) ; 2 uses
  %i.bd = fadd <4 x float> %i.aw, %i.bc
  %i.be = fsub <4 x float> %i.aw, %i.bc
  %i.bf = fadd <4 x float> %i.au, %i.as           ; 2 uses
  %i.bg = fadd <4 x float> %i.as, %i.aq
  %i.bh = fadd <4 x float> %i.aq, %i.ao           ; 2 uses
  %i.bi = fsub <4 x float> %i.bf, %i.bh
  %i.bj = fmul <4 x float> %i.bi, splat (float f0x3EC3EF15) ; 2 uses
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.bj) ; 2 uses
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.bj) ; 2 uses
  %i.bm = fmul <4 x float> %i.bg, splat (float f0x3F3504F3) ; 2 uses
  %i.bn = fadd <4 x float> %i.ao, %i.bm           ; 2 uses
  %i.bo = fsub <4 x float> %i.ao, %i.bm           ; 2 uses
  %i.bp = fadd <4 x float> %i.bo, %i.bk
  store <4 x float> %i.bp, ptr %invariant.gep352, align 4, !tbaa !112
  %i.bq = fsub <4 x float> %i.bo, %i.bk
  store <4 x float> %i.bq, ptr %invariant.gep348, align 4, !tbaa !112
  %i.br = fadd <4 x float> %i.bn, %i.bl
  store <4 x float> %i.br, ptr %invariant.gep, align 4, !tbaa !112
  %i.bs = fsub <4 x float> %i.bn, %i.bl
  store <4 x float> %i.bs, ptr %invariant.gep356, align 4, !tbaa !112
  store <4 x float> %i.az, ptr %3, align 4, !tbaa !112
  store <4 x float> %i.bd, ptr %invariant.gep346, align 4, !tbaa !112
  store <4 x float> %i.ba, ptr %invariant.gep350, align 4, !tbaa !112
  store <4 x float> %i.be, ptr %invariant.gep354, align 4, !tbaa !112
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %invariant.gep346, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %invariant.gep348, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %invariant.gep350, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %invariant.gep352, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %invariant.gep354, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %invariant.gep356, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.bt, align 4, !tbaa !112 ; 2 uses
  %wide.load376.1 = load <4 x float>, ptr %i.bu, align 4, !tbaa !112 ; 2 uses
  %wide.load377.1 = load <4 x float>, ptr %i.bv, align 4, !tbaa !112 ; 2 uses
  %wide.load378.1 = load <4 x float>, ptr %i.bw, align 4, !tbaa !112 ; 2 uses
  %wide.load379.1 = load <4 x float>, ptr %i.bx, align 4, !tbaa !112 ; 2 uses
  %wide.load380.1 = load <4 x float>, ptr %i.by, align 4, !tbaa !112 ; 2 uses
  %wide.load381.1 = load <4 x float>, ptr %i.bz, align 4, !tbaa !112 ; 2 uses
  %wide.load382.1 = load <4 x float>, ptr %i.ca, align 4, !tbaa !112 ; 2 uses
  %i.cb = fadd <4 x float> %wide.load.1, %wide.load382.1 ; 2 uses
  %i.cc = fsub <4 x float> %wide.load.1, %wide.load382.1 ; 3 uses
  %i.cd = fadd <4 x float> %wide.load376.1, %wide.load381.1 ; 2 uses
  %i.ce = fsub <4 x float> %wide.load376.1, %wide.load381.1 ; 2 uses
  %i.cf = fadd <4 x float> %wide.load377.1, %wide.load380.1 ; 2 uses
  %i.cg = fsub <4 x float> %wide.load377.1, %wide.load380.1 ; 2 uses
  %i.ch = fadd <4 x float> %wide.load378.1, %wide.load379.1 ; 2 uses
  %i.ci = fsub <4 x float> %wide.load378.1, %wide.load379.1
  %i.cj = fadd <4 x float> %i.ch, %i.cb           ; 2 uses
  %i.ck = fsub <4 x float> %i.cb, %i.ch           ; 3 uses
  %i.cl = fadd <4 x float> %i.cf, %i.cd           ; 2 uses
  %i.cm = fsub <4 x float> %i.cd, %i.cf
  %i.cn = fadd <4 x float> %i.cl, %i.cj
  %i.co = fsub <4 x float> %i.cj, %i.cl
  %i.cp = fadd <4 x float> %i.cm, %i.ck
  %i.cq = fmul <4 x float> %i.cp, splat (float f0x3F3504F3) ; 2 uses
  %i.cr = fadd <4 x float> %i.ck, %i.cq
  %i.cs = fsub <4 x float> %i.ck, %i.cq
  %i.ct = fadd <4 x float> %i.ci, %i.cg           ; 2 uses
  %i.cu = fadd <4 x float> %i.cg, %i.ce
  %i.cv = fadd <4 x float> %i.ce, %i.cc           ; 2 uses
  %i.cw = fsub <4 x float> %i.ct, %i.cv
  %i.cx = fmul <4 x float> %i.cw, splat (float f0x3EC3EF15) ; 2 uses
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.cx) ; 2 uses
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.cx) ; 2 uses
  %i.da = fmul <4 x float> %i.cu, splat (float f0x3F3504F3) ; 2 uses
  %i.db = fadd <4 x float> %i.cc, %i.da           ; 2 uses
  %i.dc = fsub <4 x float> %i.cc, %i.da           ; 2 uses
  %i.dd = fadd <4 x float> %i.dc, %i.cy
  store <4 x float> %i.dd, ptr %i.by, align 4, !tbaa !112
  %i.de = fsub <4 x float> %i.dc, %i.cy
  store <4 x float> %i.de, ptr %i.bw, align 4, !tbaa !112
  %i.df = fadd <4 x float> %i.db, %i.cz
  store <4 x float> %i.df, ptr %i.bu, align 4, !tbaa !112
  %i.dg = fsub <4 x float> %i.db, %i.cz
  store <4 x float> %i.dg, ptr %i.ca, align 4, !tbaa !112
  store <4 x float> %i.cn, ptr %i.bt, align 4, !tbaa !112
  store <4 x float> %i.cr, ptr %i.bv, align 4, !tbaa !112
  store <4 x float> %i.co, ptr %i.bx, align 4, !tbaa !112
  store <4 x float> %i.cs, ptr %i.bz, align 4, !tbaa !112
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 108
  %i.dn = load <8 x float>, ptr %3, align 4, !tbaa !112
  %i.do = load <8 x float>, ptr %5, align 4, !tbaa !112
  %i.dp = fmul <8 x float> %i.dn, %i.do           ; 3 uses
  %i.dq = fcmp olt <8 x float> %i.dp, zeroinitializer
  %i.dr = select <8 x i1> %i.dq, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.ds = shufflevector <8 x float> %i.dp, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = shufflevector <8 x float> %i.dr, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.du = fadd <4 x float> %i.ds, %i.dt           ; 4 uses
  %i.dv = extractelement <4 x float> %i.du, i64 0
  %i.dw = fptosi float %i.dv to i32               ; 4 uses
  store i32 %i.dw, ptr %i.q, align 16, !tbaa !23
  %i.dx = extractelement <4 x float> %i.du, i64 1
  %i.dy = fptosi float %i.dx to i32               ; 2 uses
  store i32 %i.dy, ptr %i.dh, align 4, !tbaa !23
  %i.dz = extractelement <4 x float> %i.du, i64 2
  %i.ea = fptosi float %i.dz to i32               ; 2 uses
  store i32 %i.ea, ptr %i.di, align 4, !tbaa !23
  %i.eb = extractelement <4 x float> %i.du, i64 3
  %i.ec = fptosi float %i.eb to i32               ; 2 uses
  store i32 %i.ec, ptr %i.dj, align 8, !tbaa !23
  %i.ed = shufflevector <8 x float> %i.dp, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ee = shufflevector <8 x float> %i.dr, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ef = fadd <4 x float> %i.ed, %i.ee           ; 4 uses
  %i.eg = extractelement <4 x float> %i.ef, i64 0
  %i.eh = fptosi float %i.eg to i32               ; 2 uses
  store i32 %i.eh, ptr %i.dk, align 8, !tbaa !23
  %i.ei = extractelement <4 x float> %i.ef, i64 1
  %i.ej = fptosi float %i.ei to i32               ; 2 uses
  store i32 %i.ej, ptr %i.dl, align 4, !tbaa !23
  %i.ek = extractelement <4 x float> %i.ef, i64 2
  %i.el = fptosi float %i.ek to i32               ; 2 uses
  store i32 %i.el, ptr %i.dm, align 4, !tbaa !23
  %i.em = extractelement <4 x float> %i.ef, i64 3
  %i.en = fptosi float %i.em to i32               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store i32 %i.en, ptr %i.eo, align 16, !tbaa !23
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.z
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.eu = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.ev = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 116
  %i.ey = load <8 x float>, ptr %i.ep, align 4, !tbaa !112
  %i.ez = load <8 x float>, ptr %i.eq, align 4, !tbaa !112
  %i.fa = fmul <8 x float> %i.ey, %i.ez           ; 3 uses
  %i.fb = fcmp olt <8 x float> %i.fa, zeroinitializer
  %i.fc = select <8 x i1> %i.fb, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.fd = shufflevector <8 x float> %i.fa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fe = shufflevector <8 x float> %i.fc, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ff = fadd <4 x float> %i.fd, %i.fe           ; 4 uses
  %i.fg = extractelement <4 x float> %i.ff, i64 0
  %i.fh = fptosi float %i.fg to i32               ; 2 uses
  store i32 %i.fh, ptr %i.er, align 8, !tbaa !23
  %i.fi = extractelement <4 x float> %i.ff, i64 1
  %i.fj = fptosi float %i.fi to i32               ; 2 uses
  store i32 %i.fj, ptr %i.es, align 16, !tbaa !23
  %i.fk = extractelement <4 x float> %i.ff, i64 2
  %i.fl = fptosi float %i.fk to i32               ; 2 uses
  store i32 %i.fl, ptr %i.et, align 4, !tbaa !23
  %i.fm = extractelement <4 x float> %i.ff, i64 3
  %i.fn = fptosi float %i.fm to i32               ; 2 uses
  store i32 %i.fn, ptr %i.eu, align 4, !tbaa !23
  %i.fo = shufflevector <8 x float> %i.fa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fp = shufflevector <8 x float> %i.fc, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fq = fadd <4 x float> %i.fo, %i.fp           ; 4 uses
  %i.fr = extractelement <4 x float> %i.fq, i64 0
  %i.fs = fptosi float %i.fr to i32               ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfiS2_iPA2_KtS5_:.lver.check
  %i.in = extractelement <4 x float> %i.im, i64 0
  %i.io = fptosi float %i.in to i32               ; 2 uses
  store i32 %i.io, ptr %i.hr, align 4, !tbaa !23
  %i.ip = extractelement <4 x float> %i.im, i64 1
  %i.iq = fptosi float %i.ip to i32               ; 2 uses
  store i32 %i.iq, ptr %i.hs, align 16, !tbaa !23
  %i.ir = extractelement <4 x float> %i.im, i64 2
  %i.is = fptosi float %i.ir to i32               ; 2 uses
  store i32 %i.is, ptr %i.ht, align 16, !tbaa !23
  %i.it = extractelement <4 x float> %i.im, i64 3
  %i.iu = fptosi float %i.it to i32               ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.q, i64 212
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !23
  %.idx411.a = shl nuw nsw i64 %i.z, 4
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx411.a
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.iy = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.iz = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.ja = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %i.jb = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.jc = getelementptr inbounds nuw i8, ptr %i.q, i64 156
  %i.jd = getelementptr inbounds nuw i8, ptr %i.q, i64 180
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.jf = load <8 x float>, ptr %i.iw, align 4, !tbaa !112
  %i.jg = load <8 x float>, ptr %i.ix, align 4, !tbaa !112
  %i.jh = fmul <8 x float> %i.jf, %i.jg           ; 3 uses
  %i.ji = fcmp olt <8 x float> %i.jh, zeroinitializer
  %i.jj = select <8 x i1> %i.ji, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.jk = shufflevector <8 x float> %i.jh, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jl = shufflevector <8 x float> %i.jj, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jm = fadd <4 x float> %i.jk, %i.jl           ; 4 uses
  %i.jn = extractelement <4 x float> %i.jm, i64 0
  %i.jo = fptosi float %i.jn to i32               ; 2 uses
  store i32 %i.jo, ptr %i.iy, align 8, !tbaa !23
  %i.jp = extractelement <4 x float> %i.jm, i64 1
  %i.jq = fptosi float %i.jp to i32               ; 2 uses
  store i32 %i.jq, ptr %i.iz, align 4, !tbaa !23
  %i.jr = extractelement <4 x float> %i.jm, i64 2
  %i.js = fptosi float %i.jr to i32               ; 2 uses
  store i32 %i.js, ptr %i.ja, align 4, !tbaa !23
  %i.jt = extractelement <4 x float> %i.jm, i64 3
  %i.ju = fptosi float %i.jt to i32               ; 2 uses
  store i32 %i.ju, ptr %i.jb, align 16, !tbaa !23
  %i.jv = shufflevector <8 x float> %i.jh, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jw = shufflevector <8 x float> %i.jj, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jx = fadd <4 x float> %i.jv, %i.jw           ; 4 uses
  %i.jy = extractelement <4 x float> %i.jx, i64 0
  %i.jz = fptosi float %i.jy to i32               ; 2 uses
  store i32 %i.jz, ptr %i.jc, align 4, !tbaa !23
  %i.ka = extractelement <4 x float> %i.jx, i64 1
  %i.kb = fptosi float %i.ka to i32               ; 2 uses
  store i32 %i.kb, ptr %i.jd, align 4, !tbaa !23
  %i.kc = extractelement <4 x float> %i.jx, i64 2
  %i.kd = fptosi float %i.kc to i32               ; 2 uses
  store i32 %i.kd, ptr %i.je, align 16, !tbaa !23
  %i.ke = extractelement <4 x float> %i.jx, i64 3
  %i.kf = fptosi float %i.ke to i32               ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  store i32 %i.kf, ptr %i.kg, align 8, !tbaa !23
  %.idx412.a = mul nuw nsw i64 %i.z, 20
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 %.idx412.a
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.kj = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.kk = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.kl = getelementptr inbounds nuw i8, ptr %i.q, i64 132
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.ko = getelementptr inbounds nuw i8, ptr %i.q, i64 204
  %i.kp = getelementptr inbounds nuw i8, ptr %i.q, i64 220
  %i.kq = load <8 x float>, ptr %i.kh, align 4, !tbaa !112
  %i.kr = load <8 x float>, ptr %i.ki, align 4, !tbaa !112
  %i.ks = fmul <8 x float> %i.kq, %i.kr           ; 3 uses
  %i.kt = fcmp olt <8 x float> %i.ks, zeroinitializer
  %i.ku = select <8 x i1> %i.kt, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.kv = shufflevector <8 x float> %i.ks, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kw = shufflevector <8 x float> %i.ku, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kx = fadd <4 x float> %i.kv, %i.kw           ; 4 uses
  %i.ky = extractelement <4 x float> %i.kx, i64 0
  %i.kz = fptosi float %i.ky to i32               ; 2 uses
  store i32 %i.kz, ptr %i.kj, align 16, !tbaa !23
  %i.la = extractelement <4 x float> %i.kx, i64 1
  %i.lb = fptosi float %i.la to i32               ; 2 uses
  store i32 %i.lb, ptr %i.kk, align 8, !tbaa !23
  %i.lc = extractelement <4 x float> %i.kx, i64 2
  %i.ld = fptosi float %i.lc to i32               ; 2 uses
  store i32 %i.ld, ptr %i.kl, align 4, !tbaa !23
  %i.le = extractelement <4 x float> %i.kx, i64 3
  %i.lf = fptosi float %i.le to i32               ; 2 uses
  store i32 %i.lf, ptr %i.km, align 8, !tbaa !23
  %i.lg = shufflevector <8 x float> %i.ks, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lh = shufflevector <8 x float> %i.ku, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.li = fadd <4 x float> %i.lg, %i.lh           ; 4 uses
  %i.lj = extractelement <4 x float> %i.li, i64 0
  %i.lk = fptosi float %i.lj to i32               ; 2 uses
  store i32 %i.lk, ptr %i.kn, align 8, !tbaa !23
  %i.ll = extractelement <4 x float> %i.li, i64 1
  %i.lm = fptosi float %i.ll to i32               ; 2 uses
  store i32 %i.lm, ptr %i.ko, align 4, !tbaa !23
  %i.ln = extractelement <4 x float> %i.li, i64 2
  %i.lo = fptosi float %i.ln to i32               ; 2 uses
  store i32 %i.lo, ptr %i.kp, align 4, !tbaa !23
  %i.lp = extractelement <4 x float> %i.li, i64 3
  %i.lq = fptosi float %i.lp to i32               ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  store i32 %i.lq, ptr %i.lr, align 16, !tbaa !23
  %.idx413.a = mul nuw nsw i64 %i.z, 24
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 %.idx413.a
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.lu = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %i.lv = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.lw = getelementptr inbounds nuw i8, ptr %i.q, i64 148
  %i.lx = getelementptr inbounds nuw i8, ptr %i.q, i64 188
  %i.ly = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.lz = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  %i.ma = getelementptr inbounds nuw i8, ptr %i.q, i64 236
  %i.mb = load <8 x float>, ptr %i.ls, align 4, !tbaa !112
  %i.mc = load <8 x float>, ptr %i.lt, align 4, !tbaa !112
  %i.md = fmul <8 x float> %i.mb, %i.mc           ; 3 uses
  %i.me = fcmp olt <8 x float> %i.md, zeroinitializer
  %i.mf = select <8 x i1> %i.me, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.mg = shufflevector <8 x float> %i.md, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mh = shufflevector <8 x float> %i.mf, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mi = fadd <4 x float> %i.mg, %i.mh           ; 4 uses
  %i.mj = extractelement <4 x float> %i.mi, i64 0
  %i.mk = fptosi float %i.mj to i32               ; 2 uses
  store i32 %i.mk, ptr %i.lu, align 4, !tbaa !23
  %i.ml = extractelement <4 x float> %i.mi, i64 1
  %i.mm = fptosi float %i.ml to i32               ; 2 uses
  store i32 %i.mm, ptr %i.lv, align 8, !tbaa !23
  %i.mn = extractelement <4 x float> %i.mi, i64 2
  %i.mo = fptosi float %i.mn to i32               ; 2 uses
  store i32 %i.mo, ptr %i.lw, align 4, !tbaa !23
  %i.mp = extractelement <4 x float> %i.mi, i64 3
  %i.mq = fptosi float %i.mp to i32               ; 2 uses
  store i32 %i.mq, ptr %i.lx, align 4, !tbaa !23
  %i.mr = shufflevector <8 x float> %i.md, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ms = shufflevector <8 x float> %i.mf, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mt = fadd <4 x float> %i.mr, %i.ms           ; 4 uses
  %i.mu = extractelement <4 x float> %i.mt, i64 0
  %i.mv = fptosi float %i.mu to i32               ; 2 uses
  store i32 %i.mv, ptr %i.ly, align 8, !tbaa !23
  %i.mw = extractelement <4 x float> %i.mt, i64 1
  %i.mx = fptosi float %i.mw to i32               ; 2 uses
  store i32 %i.mx, ptr %i.lz, align 16, !tbaa !23
  %i.my = extractelement <4 x float> %i.mt, i64 2
  %i.mz = fptosi float %i.my to i32               ; 2 uses
  store i32 %i.mz, ptr %i.ma, align 4, !tbaa !23
  %i.na = extractelement <4 x float> %i.mt, i64 3
  %i.nb = fptosi float %i.na to i32               ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.q, i64 244
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !23
  %.idx414 = mul nuw nsw i64 %i.z, 28
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 %.idx414
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.nf = getelementptr inbounds nuw i8, ptr %i.q, i64 140
  %i.ng = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.nh = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.ni = getelementptr inbounds nuw i8, ptr %i.q, i64 196
  %i.nj = getelementptr inbounds nuw i8, ptr %i.q, i64 228
  %i.nk = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.nl = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.nm = load <8 x float>, ptr %i.nd, align 4, !tbaa !112
  %i.nn = load <8 x float>, ptr %i.ne, align 4, !tbaa !112
  %i.no = fmul <8 x float> %i.nm, %i.nn           ; 3 uses
  %i.np = fcmp olt <8 x float> %i.no, zeroinitializer
  %i.nq = select <8 x i1> %i.np, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.nr = shufflevector <8 x float> %i.no, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ns = shufflevector <8 x float> %i.nq, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nt = fadd <4 x float> %i.nr, %i.ns           ; 4 uses
  %i.nu = extractelement <4 x float> %i.nt, i64 0
  %i.nv = fptosi float %i.nu to i32               ; 2 uses
  store i32 %i.nv, ptr %i.nf, align 4, !tbaa !23
  %i.nw = extractelement <4 x float> %i.nt, i64 1
  %i.nx = fptosi float %i.nw to i32               ; 2 uses
  store i32 %i.nx, ptr %i.ng, align 16, !tbaa !23
  %i.ny = extractelement <4 x float> %i.nt, i64 2
  %i.nz = fptosi float %i.ny to i32               ; 2 uses
  store i32 %i.nz, ptr %i.nh, align 16, !tbaa !23
  %i.oa = extractelement <4 x float> %i.nt, i64 3
  %i.ob = fptosi float %i.oa to i32               ; 2 uses
  store i32 %i.ob, ptr %i.ni, align 4, !tbaa !23
  %i.oc = shufflevector <8 x float> %i.no, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.od = shufflevector <8 x float> %i.nq, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.oe = fadd <4 x float> %i.oc, %i.od           ; 4 uses
  %i.of = extractelement <4 x float> %i.oe, i64 0
  %i.og = fptosi float %i.of to i32               ; 2 uses
  store i32 %i.og, ptr %i.nj, align 4, !tbaa !23
  %i.oh = extractelement <4 x float> %i.oe, i64 1
  %i.oi = fptosi float %i.oh to i32               ; 2 uses
  store i32 %i.oi, ptr %i.nk, align 8, !tbaa !23
  %i.oj = extractelement <4 x float> %i.oe, i64 2
  %i.ok = fptosi float %i.oj to i32               ; 2 uses
  store i32 %i.ok, ptr %i.nl, align 8, !tbaa !23
  %i.ol = extractelement <4 x float> %i.oe, i64 3
  %i.om = fptosi float %i.ol to i32               ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.q, i64 252
  store i32 %i.om, ptr %i.on, align 4, !tbaa !23
  %i.oo = icmp eq i32 %6, %i.dw
  br i1 %i.oo, label %bb.a, label %bb.e

9:                                                ; preds = %.lver.check, %9
  %indvars.iv = phi i64 [ 0, %.lver.check ], [ %indvars.iv.next, %9 ] ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 9 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 2 uses
  %18 = load float, ptr %10, align 4, !tbaa !112  ; 2 uses
  %19 = load float, ptr %17, align 4, !tbaa !112  ; 2 uses
  %20 = fadd float %18, %19                       ; 2 uses
  %21 = load <2 x float>, ptr %11, align 4, !tbaa !112
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %23 = load float, ptr %14, align 4, !tbaa !112  ; 2 uses
  %24 = load float, ptr %13, align 4, !tbaa !112  ; 2 uses
  %25 = load <2 x float>, ptr %15, align 4, !tbaa !112 ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %22, %25
  %26 = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop384 = fadd <2 x float> %22, %25
  %27 = extractelement <2 x float> %foldExtExtBinop384, i64 0 ; 2 uses
  %28 = fsub <2 x float> %22, %25                 ; 3 uses
  %29 = fadd float %24, %23                       ; 2 uses
  %30 = fsub float %18, %19                       ; 3 uses
  %31 = fsub float %24, %23
  %32 = fadd float %29, %20                       ; 2 uses
  %33 = fsub float %20, %29                       ; 3 uses
  %34 = fadd float %27, %26                       ; 2 uses
  %35 = fsub float %26, %27
  %36 = fadd float %34, %32
  %37 = fsub float %32, %34
  %38 = fadd float %35, %33
  %39 = fmul float %38, f0x3F3504F3               ; 2 uses
  %40 = fadd float %33, %39
  %41 = fsub float %33, %39
  %shift = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop386 = fadd <2 x float> %28, %shift
  %42 = extractelement <2 x float> %foldExtExtBinop386, i64 0
  %43 = insertelement <2 x float> poison, float %31, i64 0
  %44 = insertelement <2 x float> %43, float %30, i64 1
  %45 = fadd <2 x float> %28, %44                 ; 3 uses
  %shift388 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop389 = fsub <2 x float> %45, %shift388
  %46 = extractelement <2 x float> %foldExtExtBinop389, i64 0
  %47 = fmul float %46, f0x3EC3EF15
  %48 = insertelement <2 x float> poison, float %47, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %45, <2 x float> <float f0x3F0A8BD4, float f0x3FA73D75>, <2 x float> %49) ; 2 uses
  %51 = fmul float %42, f0x3F3504F3               ; 2 uses
  %52 = fadd float %30, %51                       ; 2 uses
  %53 = fsub float %30, %51                       ; 2 uses
  %54 = extractelement <2 x float> %50, i64 0     ; 2 uses
  %55 = fadd float %53, %54
  store float %55, ptr %15, align 4, !tbaa !112
  %56 = fsub float %53, %54
  store float %56, ptr %13, align 4, !tbaa !112
  %57 = extractelement <2 x float> %50, i64 1     ; 2 uses
  %58 = fadd float %52, %57
  store float %58, ptr %11, align 4, !tbaa !112
  %59 = fsub float %52, %57
  store float %59, ptr %17, align 4, !tbaa !112
  store float %36, ptr %10, align 4, !tbaa !112
  store float %40, ptr %12, align 4, !tbaa !112
  store float %37, ptr %14, align 4, !tbaa !112
  store float %41, ptr %16, align 4, !tbaa !112
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.z ; 2 uses
  %60 = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %60, label %9, label %vector.body, !llvm.loop !610

bb.a:                                             ; preds = %vector.body
  %.val147 = load i16, ptr %7, align 2, !tbaa !41
  %i.op = getelementptr i8, ptr %7, i64 2
  %.val148 = load i16, ptr %i.op, align 2, !tbaa !41
  %i.oq = load i32, ptr %1, align 4, !tbaa !23
  %i.or = load i32, ptr %2, align 4, !tbaa !23
  %i.os = zext i16 %.val148 to i32
  %i.ot = add nsw i32 %i.or, %i.os                ; 4 uses
  %i.ou = zext i16 %.val147 to i32
  %i.ov = sub nsw i32 24, %i.ot
  %i.ow = shl i32 %i.ou, %i.ov
  %i.ox = or i32 %i.ow, %i.oq                     ; 2 uses
  %i.oy = icmp sgt i32 %i.ot, 7
  br i1 %i.oy, label %.lr.ph.i, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.oz = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.02.i = phi i32 [ %i.ot, %.lr.ph.i ], [ %i.pf, %bb.d ] ; 2 uses
  %.0181.i = phi i32 [ %i.ox, %.lr.ph.i ], [ %i.pe, %bb.d ] ; 3 uses
  %i.pa = lshr i32 %.0181.i, 16
  %i.pb = trunc i32 %i.pa to i8
  %.val20.i = load ptr, ptr %0, align 8, !tbaa !114
  %.val21.i = load ptr, ptr %i.oz, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %i.pb, ptr %i.p, align 1, !tbaa !35
  call void %.val20.i(ptr noundef %.val21.i, ptr noundef nonnull %i.p, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.pc = and i32 %.0181.i, 16711680
  %i.pd = icmp eq i32 %i.pc, 16711680
  br i1 %i.pd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !tbaa !114
  %.val19.i = load ptr, ptr %i.oz, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 0, ptr %i.o, align 1, !tbaa !35
  call void %.val.i(ptr noundef %.val19.i, ptr noundef nonnull %i.o, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.pe = shl i32 %.0181.i, 8                     ; 2 uses
  %i.pf = add nsw i32 %.02.i, -8                  ; 2 uses
  %i.pg = icmp sgt i32 %.02.i, 15
  br i1 %i.pg, label %bb.b, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit, !llvm.loop !9

bb.e:                                             ; preds = %vector.body
  %i.ph = sub nsw i32 %i.dw, %6                   ; 3 uses
  %i.pi = tail call i32 @llvm.abs.i32(i32 %i.ph, i1 true)
  %i.pj = lshr i32 %i.pi, 1
  %i.pk = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.pj, i1 false)
  %i.pl = trunc nuw nsw i32 %i.pk to i16
  %i.pm = sub nuw nsw i16 33, %i.pl               ; 2 uses
  %.lobit.i = ashr i32 %i.ph, 31
  %i.pn = add nsw i32 %.lobit.i, %i.ph
  %i.po = zext nneg i16 %i.pm to i32              ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.po
  %i.pp = xor i32 %notmask.i, -1
  %i.pq = zext nneg i16 %i.pm to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.pq ; 2 uses
  %.val145 = load i16, ptr %i.pr, align 2, !tbaa !41
  %i.ps = getelementptr i8, ptr %i.pr, i64 2
  %.val146 = load i16, ptr %i.ps, align 2, !tbaa !41
  %i.pt = load i32, ptr %1, align 4, !tbaa !23
  %i.pu = load i32, ptr %2, align 4, !tbaa !23
  %i.pv = zext i16 %.val146 to i32
  %i.pw = add nsw i32 %i.pu, %i.pv                ; 4 uses
  %i.px = zext i16 %.val145 to i32
  %i.py = sub nsw i32 24, %i.pw
  %i.pz = shl i32 %i.px, %i.py
  %i.qa = or i32 %i.pz, %i.pt                     ; 2 uses
  %i.qb = icmp sgt i32 %i.pw, 7
  br i1 %i.qb, label %.lr.ph.i151, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit158

.lr.ph.i151:                                      ; preds = %bb.e
  %i.qc = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i151
  %.02.i152 = phi i32 [ %i.pw, %.lr.ph.i151 ], [ %i.qi, %bb.h ] ; 2 uses
  %.0181.i153 = phi i32 [ %i.qa, %.lr.ph.i151 ], [ %i.qh, %bb.h ] ; 3 uses
  %i.qd = lshr i32 %.0181.i153, 16
  %i.qe = trunc i32 %i.qd to i8
  %.val20.i154 = load ptr, ptr %0, align 8, !tbaa !114
  %.val21.i155 = load ptr, ptr %i.qc, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %i.qe, ptr %i.n, align 1, !tbaa !35
  call void %.val20.i154(ptr noundef %.val21.i155, ptr noundef nonnull %i.n, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.qf = and i32 %.0181.i153, 16711680
  %i.qg = icmp eq i32 %i.qf, 16711680
  br i1 %i.qg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val.i156 = load ptr, ptr %0, align 8, !tbaa !114
  %.val19.i157 = load ptr, ptr %i.qc, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 0, ptr %i.m, align 1, !tbaa !35
  call void %.val.i156(ptr noundef %.val19.i157, ptr noundef nonnull %i.m, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.qh = shl i32 %.0181.i153, 8                  ; 2 uses
  %i.qi = add nsw i32 %.02.i152, -8               ; 2 uses
  %i.qj = icmp sgt i32 %.02.i152, 15
  br i1 %i.qj, label %bb.f, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit158, !llvm.loop !9

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit158: ; preds = %bb.h, %bb.e
  %.018.lcssa.i149 = phi i32 [ %i.qa, %bb.e ], [ %i.qh, %bb.h ]
  %.0.lcssa.i150 = phi i32 [ %i.pw, %bb.e ], [ %i.qi, %bb.h ] ; 2 uses
  store i32 %.018.lcssa.i149, ptr %1, align 4, !tbaa !23
  store i32 %.0.lcssa.i150, ptr %2, align 4, !tbaa !23
  %i.qk = load i32, ptr %1, align 4, !tbaa !23
  %i.ql = add nsw i32 %.0.lcssa.i150, %i.po       ; 4 uses
  %i.qm = and i32 %i.pn, 65535
  %i.qn = and i32 %i.qm, %i.pp
  %i.qo = sub nsw i32 24, %i.ql
  %i.qp = shl i32 %i.qn, %i.qo
  %i.qq = or i32 %i.qp, %i.qk                     ; 2 uses
  %i.qr = icmp sgt i32 %i.ql, 7
  br i1 %i.qr, label %.lr.ph.i161, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.lr.ph.i161:                                      ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit158
  %i.qs = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i161
  %.02.i162 = phi i32 [ %i.ql, %.lr.ph.i161 ], [ %i.qy, %bb.k ] ; 2 uses
  %.0181.i163 = phi i32 [ %i.qq, %.lr.ph.i161 ], [ %i.qx, %bb.k ] ; 3 uses
  %i.qt = lshr i32 %.0181.i163, 16
  %i.qu = trunc i32 %i.qt to i8
  %.val20.i164 = load ptr, ptr %0, align 8, !tbaa !114
  %.val21.i165 = load ptr, ptr %i.qs, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %i.qu, ptr %i.l, align 1, !tbaa !35
  call void %.val20.i164(ptr noundef %.val21.i165, ptr noundef nonnull %i.l, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.qv = and i32 %.0181.i163, 16711680
  %i.qw = icmp eq i32 %i.qv, 16711680
  br i1 %i.qw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val.i166 = load ptr, ptr %0, align 8, !tbaa !114
  %.val19.i167 = load ptr, ptr %i.qs, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 0, ptr %i.k, align 1, !tbaa !35
  call void %.val.i166(ptr noundef %.val19.i167, ptr noundef nonnull %i.k, i32 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.qx = shl i32 %.0181.i163, 8                  ; 2 uses
  %i.qy = add nsw i32 %.02.i162, -8               ; 2 uses
  %i.qz = icmp sgt i32 %.02.i162, 15
  br i1 %i.qz, label %bb.i, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit, !llvm.loop !9

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit: ; preds = %bb.k, %bb.d, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit158, %bb.a
  %storemerge230 = phi i32 [ %i.pe, %bb.d ], [ %i.ox, %bb.a ], [ %i.qq, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit158 ], [ %i.qx, %bb.k ]
  %i.ra = phi i32 [ %i.pf, %bb.d ], [ %i.ot, %bb.a ], [ %i.ql, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit158 ], [ %i.qy, %bb.k ] ; 3 uses
  store i32 %storemerge230, ptr %1, align 4, !tbaa !23
  store i32 %i.ra, ptr %2, align 4, !tbaa !23
  %.not = icmp eq i32 %i.om, 0                    ; 2 uses
  br i1 %.not, label %bb.l, label %.preheader.lr.ph

bb.l:                                             ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit
  %i.rb = icmp eq i32 %i.ok, 0
  br i1 %i.rb, label %bb.m, label %.preheader.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.rc = icmp eq i32 %i.nb, 0
  br i1 %i.rc, label %bb.n, label %.preheader.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.rd = icmp eq i32 %i.lq, 0
  br i1 %i.rd, label %bb.o, label %.preheader.lr.ph

bb.o:                                             ; preds = %bb.n
  %i.re = icmp eq i32 %i.mz, 0
  br i1 %i.re, label %bb.p, label %.preheader.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.rf = icmp eq i32 %i.oi, 0
  br i1 %i.rf, label %bb.q, label %.preheader.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.rg = icmp eq i32 %i.og, 0
  br i1 %i.rg, label %bb.r, label %.preheader.lr.ph

bb.r:                                             ; preds = %bb.q
  %i.rh = icmp eq i32 %i.mx, 0
  br i1 %i.rh, label %bb.s, label %.preheader.lr.ph

bb.s:                                             ; preds = %bb.r
  %i.ri = icmp eq i32 %i.lo, 0
  br i1 %i.ri, label %bb.t, label %.preheader.lr.ph

end_hunk_2
