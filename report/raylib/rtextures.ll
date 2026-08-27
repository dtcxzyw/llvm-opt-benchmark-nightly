Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 119
begin_hunk_0_@stbi_write_tga_core:bb.a
  %i.ee = load i32, ptr %i.y, align 8             ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = add nsw i64 %i.ef, 3
  %i.eh = icmp ult i64 %i.eg, 65
  br i1 %i.eh, label %stbiw__write3.exit36.i125.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = load ptr, ptr %i.z, align 8
  tail call void %i.ei(ptr noundef %i.ej, ptr noundef nonnull %i.aa, i32 noundef %i.ee) #52, !inline_history !36
  br label %stbiw__write3.exit36.i125.us

stbiw__write3.exit36.i125.us:                     ; preds = %bb.v, %bb.u
  %i.ek = phi i32 [ 0, %bb.v ], [ %i.ee, %bb.u ]  ; 2 uses
  %i.el = add nsw i32 %i.ek, 3
  store i32 %i.el, ptr %i.y, align 8
  %i.em = sext i32 %i.ek to i64
  %i.en = getelementptr inbounds i8, ptr %i.aa, i64 %i.em ; 3 uses
  store i8 %i.ea, ptr %i.en, align 1
  %i.eo = getelementptr i8, ptr %i.en, i64 1
  store i8 %i.ec, ptr %i.eo, align 1
  %i.ep = getelementptr i8, ptr %i.en, i64 2
  store i8 %i.ed, ptr %i.ep, align 1
  br label %bb.y

bb.w:                                             ; preds = %stbiw__write1.exit124.us, %stbiw__write1.exit124.us
  %i.eq = load i8, ptr %i.al, align 1
  %i.er = load i32, ptr %i.y, align 8             ; 3 uses
  %i.es = sext i32 %i.er to i64
  %i.et = add nsw i64 %i.es, 1
  %i.eu = icmp ult i64 %i.et, 65
  br i1 %i.eu, label %stbiw__write1.exit.i140.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = load ptr, ptr %0, align 8
  %i.ew = load ptr, ptr %i.z, align 8
  tail call void %i.ev(ptr noundef %i.ew, ptr noundef nonnull %i.aa, i32 noundef %i.er) #52, !inline_history !37
  br label %stbiw__write1.exit.i140.us

stbiw__write1.exit.i140.us:                       ; preds = %bb.x, %bb.w
  %i.ex = phi i32 [ 0, %bb.x ], [ %i.er, %bb.w ]  ; 2 uses
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.y, align 8
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds i8, ptr %i.aa, i64 %i.ez
  store i8 %i.eq, ptr %i.fa, align 1
  br label %bb.y

bb.y:                                             ; preds = %stbiw__write1.exit.i140.us, %stbiw__write3.exit36.i125.us
  switch i32 %3, label %stbiw__write_pixel.exit141.us [
    i32 4, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.fb = getelementptr i8, ptr %i.al, i64 %i.ab
  %i.fc = getelementptr i8, ptr %i.fb, i64 -1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = load i32, ptr %i.y, align 8             ; 3 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = add nsw i64 %i.ff, 1
  %i.fh = icmp ult i64 %i.fg, 65
  br i1 %i.fh, label %stbiw__write1.exit37.i127.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fi = load ptr, ptr %0, align 8
  %i.fj = load ptr, ptr %i.z, align 8
  tail call void %i.fi(ptr noundef %i.fj, ptr noundef nonnull %i.aa, i32 noundef %i.fe) #52, !inline_history !37
  br label %stbiw__write1.exit37.i127.us

stbiw__write1.exit37.i127.us:                     ; preds = %bb.aa, %bb.z
  %i.fk = phi i32 [ 0, %bb.aa ], [ %i.fe, %bb.z ] ; 2 uses
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.y, align 8
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds i8, ptr %i.aa, i64 %i.fm
  store i8 %i.fd, ptr %i.fn, align 1
  br label %stbiw__write_pixel.exit141.us

stbiw__write_pixel.exit141.us:                    ; preds = %stbiw__write_pixel.exit.us, %stbiw__write1.exit.us, %stbiw__write1.exit37.i127.us, %bb.y, %stbiw__write1.exit124.us
  %.3146.us = phi i32 [ %.2.lcssa.us, %stbiw__write1.exit124.us ], [ %.2.lcssa.us, %stbiw__write1.exit37.i127.us ], [ %.2.lcssa.us, %bb.y ], [ %.3.ph.us, %stbiw__write1.exit.us ], [ %.3.ph.us, %stbiw__write_pixel.exit.us ]
  %i.fo = add nsw i32 %.3146.us, %.0111159.us     ; 2 uses
  %i.fp = icmp slt i32 %i.fo, %1
  br i1 %i.fp, label %bb.e, label %._crit_edge163.us

._crit_edge163.us:                                ; preds = %stbiw__write_pixel.exit141.us
  %indvars.iv.next179 = add i64 %indvars.iv178, %i.ae ; 2 uses
  %i.fq = trunc i64 %indvars.iv.next179 to i32
  %.not117.us = icmp eq i32 %.0105, %i.fq
  br i1 %.not117.us, label %._crit_edge168, label %.lr.ph162.us

.lr.ph167.split:                                  ; preds = %.lr.ph167, %.lr.ph167.split
  %.1110165 = phi i32 [ %i.fr, %.lr.ph167.split ], [ %.0109, %.lr.ph167 ]
  %i.fr = add nsw i32 %.1110165, %.0104           ; 2 uses
  %.not117 = icmp eq i32 %i.fr, %.0105
  br i1 %.not117, label %._crit_edge168, label %.lr.ph167.split

._crit_edge168:                                   ; preds = %.lr.ph167.split, %._crit_edge163.us, %bb.d
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8            ; 2 uses
  %.not.i142 = icmp eq i32 %i.ft, 0
  br i1 %.not.i142, label %stbiw__write_flush.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge168
  %i.fu = load ptr, ptr %0, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.fu(ptr noundef %i.fw, ptr noundef nonnull %i.fx, i32 noundef %i.ft) #52, !inline_history !38
  store i32 0, ptr %i.fs, align 8
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %bb.ab, %._crit_edge168, %bb.a, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 1, %._crit_edge168 ], [ 1, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_tga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 2 uses
  store ptr @stbi__stdio_write, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @stbi_write_tga_core(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_hdr_to_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @stbi_write_hdr_core(ptr %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi_write_hdr_core(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 10 uses
  %i.g = alloca [4 x i8], align 1                 ; 13 uses
  %i.h = alloca [128 x i8], align 16              ; 4 uses
  %i.i = alloca [66 x i8], align 16               ; 4 uses
  %i.j = icmp slt i32 %1, 1
  %i.k = icmp slt i32 %0, 1
  %or.cond = or i1 %i.k, %i.j
  %i.l = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.l
  br i1 %or.cond3, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl nsw i32 %0, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #53 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.i, ptr noundef nonnull align 16 dereferenceable(66) @__const.stbi_write_hdr_core.header, i64 66, i1 false)
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.i, i32 noundef 65) #52
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.142, i32 noundef %1, i32 noundef %0) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.h, i32 noundef %i.p) #52
  %i.q = mul nsw i32 %2, %0                       ; 3 uses
  %i.r = lshr i32 %0, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.u = trunc i32 %0 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.w = add nsw i32 %0, -32768
  %or.cond.i = icmp ult i32 %i.w, -32760
  %.off.i = add i32 %2, -3
  %switch.i = icmp ult i32 %.off.i, 2             ; 2 uses
  %i.x = shl nuw nsw i32 %0, 1
  %i.y = mul nuw nsw i32 %0, 3
  %i.z = zext nneg i32 %0 to i64                  ; 8 uses
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = sext i32 %2 to i64                      ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z ; 2 uses
  %invariant.gep200.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa ; 2 uses
  %invariant.gep202.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab ; 2 uses
  %i.ad = zext nneg i32 %2 to i64
  %invariant.op.i = add nsw i32 %0, -2            ; 2 uses
  %invariant.op212.i = add nsw i64 %i.z, -3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.split.us, label %.preheader131.i

.split.us:                                        ; preds = %bb.b
  br i1 %switch.i, label %.preheader.i.us.us, label %.preheader.i.us

.preheader.i.us.us:                               ; preds = %.split.us, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us
  %.06.us.us = phi i32 [ %i.bn, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us ], [ 0, %.split.us ] ; 3 uses
  %i.ah = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not.us.us = icmp eq i32 %i.ah, 0
  %i.ai = xor i32 %.06.us.us, -1
  %i.aj = add nsw i32 %1, %i.ai
  %i.ak = select i1 %.not.us.us, i32 %.06.us.us, i32 %i.aj
  %i.al = mul nsw i32 %i.q, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %3, i64 %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  br label %bb.c

bb.c:                                             ; preds = %stbiw__linear_to_rgbe.exit.i.us.us.us, %.preheader.i.us.us
  %indvars.iv183.i.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %indvars.iv.next184.i.us.us.us, %stbiw__linear_to_rgbe.exit.i.us.us.us ] ; 2 uses
  %i.ao = mul nuw nsw i64 %indvars.iv183.i.us.us.us, %i.ac
  %i.ap = getelementptr [4 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load float, ptr %i.aq, align 4          ; 3 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %i.at = load float, ptr %i.as, align 4          ; 3 uses
  %i.au = load float, ptr %i.ap, align 4          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #52
  %i.av = fcmp ogt float %i.at, %i.ar
  %..i.i.us.us.us = select i1 %i.av, float %i.at, float %i.ar ; 2 uses
  %i.aw = fcmp ogt float %i.au, %..i.i.us.us.us
  %i.ax = select i1 %i.aw, float %i.au, float %..i.i.us.us.us ; 3 uses
  %i.ay = fcmp olt float %i.ax, 1.000000e-32
  br i1 %i.ay, label %stbiw__linear_to_rgbe.exit.i.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = fpext float %i.ax to double
  %i.ba = call double @frexp(double noundef %i.az, ptr noundef nonnull %i.e) #52
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fmul float %i.bb, 2.560000e+02
  %i.bd = fdiv float %i.bc, %i.ax                 ; 3 uses
  %i.be = fmul float %i.au, %i.bd
  %i.bf = fptoui float %i.be to i8
  %i.bg = fmul float %i.at, %i.bd
  %i.bh = fptoui float %i.bg to i8
  %i.bi = fmul float %i.ar, %i.bd
  %i.bj = fptoui float %i.bi to i8
  %i.bk = load i32, ptr %i.e, align 4
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = xor i8 %i.bl, -128
  br label %stbiw__linear_to_rgbe.exit.i.us.us.us

stbiw__linear_to_rgbe.exit.i.us.us.us:            ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ %i.bh, %bb.d ], [ 0, %bb.c ]
  %.sink.i.us.us.us = phi i8 [ %i.bf, %bb.d ], [ 0, %bb.c ]
  %.sink32.i.i.us.us.us = phi i8 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.sink.i.i.us.us.us = phi i8 [ %i.bj, %bb.d ], [ 0, %bb.c ]
  store i8 %.sink, ptr %i.ag, align 1
  store i8 %.sink.i.us.us.us, ptr %i.g, align 1
  store i8 %.sink32.i.i.us.us.us, ptr %i.ae, align 1
  store i8 %.sink.i.i.us.us.us, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 4) #52, !inline_history !39
  %indvars.iv.next184.i.us.us.us = add nuw nsw i64 %indvars.iv183.i.us.us.us, 1 ; 2 uses
  %exitcond187.not.i.us.us.us = icmp eq i64 %indvars.iv.next184.i.us.us.us, %i.z
  br i1 %exitcond187.not.i.us.us.us, label %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us, label %bb.c

stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us: ; preds = %stbiw__linear_to_rgbe.exit.i.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #52
  %i.bn = add nuw nsw i32 %.06.us.us, 1           ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bn, %1
  br i1 %exitcond17.not, label %.split8.us, label %.preheader.i.us.us

.preheader.i.us:                                  ; preds = %.split.us, %stbiw__write_hdr_scanline.exit.loopexit.us.split
  %.06.us = phi i32 [ %i.cj, %stbiw__write_hdr_scanline.exit.loopexit.us.split ], [ 0, %.split.us ] ; 3 uses
  %i.bo = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not.us = icmp eq i32 %i.bo, 0
  %i.bp = xor i32 %.06.us, -1
  %i.bq = add nsw i32 %1, %i.bp
  %i.br = select i1 %.not.us, i32 %.06.us, i32 %i.bq
  %i.bs = mul nsw i32 %i.q, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  br label %bb.e

bb.e:                                             ; preds = %stbiw__linear_to_rgbe.exit.i.us, %.preheader.i.us
  %indvars.iv183.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next184.i.us, %stbiw__linear_to_rgbe.exit.i.us ] ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv183.i.us, %i.ac
  %i.bw = getelementptr [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #52
  %i.by = fcmp olt float %i.bx, 1.000000e-32
  br i1 %i.by, label %stbiw__linear_to_rgbe.exit.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = fpext float %i.bx to double
  %i.ca = call double @frexp(double noundef %i.bz, ptr noundef nonnull %i.e) #52
  %i.cb = fptrunc double %i.ca to float
  %i.cc = fmul float %i.cb, 2.560000e+02
  %i.cd = fdiv float %i.cc, %i.bx
  %i.ce = fmul float %i.bx, %i.cd
  %i.cf = fptoui float %i.ce to i8
  %i.cg = load i32, ptr %i.e, align 4
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = xor i8 %i.ch, -128
  br label %stbiw__linear_to_rgbe.exit.i.us

stbiw__linear_to_rgbe.exit.i.us:                  ; preds = %bb.e, %bb.f
  %.sink18 = phi i8 [ %i.cf, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sink32.i.i.us = phi i8 [ %i.ci, %bb.f ], [ 0, %bb.e ]
  store i8 %.sink18, ptr %i.ag, align 1
  store i8 %.sink18, ptr %i.g, align 1
  store i8 %.sink32.i.i.us, ptr %i.ae, align 1
  store i8 %.sink18, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 4) #52, !inline_history !39
  %indvars.iv.next184.i.us = add nuw nsw i64 %indvars.iv183.i.us, 1 ; 2 uses
  %exitcond187.not.i.us = icmp eq i64 %indvars.iv.next184.i.us, %i.z
  br i1 %exitcond187.not.i.us, label %stbiw__write_hdr_scanline.exit.loopexit.us.split, label %bb.e

stbiw__write_hdr_scanline.exit.loopexit.us.split: ; preds = %stbiw__linear_to_rgbe.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #52
  %i.cj = add nuw nsw i32 %.06.us, 1              ; 2 uses
  %exitcond16.not = icmp eq i32 %i.cj, %1
  br i1 %exitcond16.not, label %.split8.us, label %.preheader.i.us

.preheader131.i:                                  ; preds = %bb.b, %stbiw__write_hdr_scanline.exit.loopexit1
  %.06 = phi i32 [ %i.fw, %stbiw__write_hdr_scanline.exit.loopexit1 ], [ 0, %bb.b ] ; 3 uses
  %i.ck = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not = icmp eq i32 %i.ck, 0
  %i.cl = xor i32 %.06, -1
  %i.cm = add nsw i32 %1, %i.cl
  %i.cn = select i1 %.not, i32 %.06, i32 %i.cm
  %i.co = mul nsw i32 %i.q, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  store i32 514, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  store i8 %i.s, ptr %i.t, align 2
  store i8 %i.u, ptr %i.v, align 1
  br i1 %switch.i, label %.preheader131.split.us.i, label %.preheader131.split.i

.preheader131.split.us.i:                         ; preds = %.preheader131.i, %stbiw__linear_to_rgbe.exit119.us.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %stbiw__linear_to_rgbe.exit119.us.i ], [ 0, %.preheader131.i ] ; 6 uses
  %i.cr = mul nuw nsw i64 %indvars.iv163.i, %i.ad
  %i.cs = getelementptr [4 x i8], ptr %i.cq, i64 %i.cr ; 3 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = load float, ptr %i.ct, align 4          ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cs, i64 4
  %i.cw = load float, ptr %i.cv, align 4          ; 3 uses
  %i.cx = load float, ptr %i.cs, align 4          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #52
  %i.cy = fcmp ogt float %i.cw, %i.cu
  %..i116.us.i = select i1 %i.cy, float %i.cw, float %i.cu ; 2 uses
  %i.cz = fcmp ogt float %i.cx, %..i116.us.i
  %i.da = select i1 %i.cz, float %i.cx, float %..i116.us.i ; 3 uses
  %i.db = fcmp olt float %i.da, 1.000000e-32
  br i1 %i.db, label %stbiw__linear_to_rgbe.exit119.us.i, label %bb.g

bb.g:                                             ; preds = %.preheader131.split.us.i
  %i.dc = fpext float %i.da to double
  %i.dd = call double @frexp(double noundef %i.dc, ptr noundef nonnull %i.d) #52
  %i.de = fptrunc double %i.dd to float
  %i.df = fmul float %i.de, 2.560000e+02
  %i.dg = fdiv float %i.df, %i.da                 ; 3 uses
  %i.dh = fmul float %i.cx, %i.dg
  %i.di = fptoui float %i.dh to i8
  %i.dj = fmul float %i.cw, %i.dg
  %i.dk = fptoui float %i.dj to i8
  %i.dl = fmul float %i.cu, %i.dg
  %i.dm = fptoui float %i.dl to i8
  %i.dn = load i32, ptr %i.d, align 4
  %i.do = trunc i32 %i.dn to i8
  %i.dp = xor i8 %i.do, -128
  br label %stbiw__linear_to_rgbe.exit119.us.i

stbiw__linear_to_rgbe.exit119.us.i:               ; preds = %bb.g, %.preheader131.split.us.i
  %i.dq = phi i8 [ %i.dk, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %i.dr = phi i8 [ %i.di, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %.sink32.i117.us.i = phi i8 [ %i.dp, %bb.g ], [ 0, %.preheader131.split.us.i ]
  %.sink.i118.us.i = phi i8 [ %i.dm, %bb.g ], [ 0, %.preheader131.split.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #52
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv163.i
  store i8 %i.dr, ptr %i.ds, align 1
  %gep205.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv163.i
  store i8 %i.dq, ptr %gep205.i, align 1
  %gep207.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv163.i
  store i8 %.sink.i118.us.i, ptr %gep207.i, align 1
  %gep209.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv163.i
  store i8 %.sink32.i117.us.i, ptr %gep209.i, align 1
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %i.z
  br i1 %exitcond167.not.i, label %.split.us.i, label %.preheader131.split.us.i

.preheader131.split.i:                            ; preds = %.preheader131.i, %stbiw__linear_to_rgbe.exit119.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %stbiw__linear_to_rgbe.exit119.i ], [ 0, %.preheader131.i ] ; 6 uses
  %i.dt = mul nsw i64 %indvars.iv.i, %i.ac
  %i.du = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #52
  %i.dw = fcmp olt float %i.dv, 1.000000e-32
  br i1 %i.dw, label %stbiw__linear_to_rgbe.exit119.i, label %bb.h

bb.h:                                             ; preds = %.preheader131.split.i
  %i.dx = fpext float %i.dv to double
  %i.dy = call double @frexp(double noundef %i.dx, ptr noundef nonnull %i.d) #52
  %i.dz = fptrunc double %i.dy to float
  %i.ea = fmul float %i.dz, 2.560000e+02
  %i.eb = fdiv float %i.ea, %i.dv
  %i.ec = fmul float %i.dv, %i.eb
  %i.ed = fptoui float %i.ec to i8
  %i.ee = load i32, ptr %i.d, align 4
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = xor i8 %i.ef, -128
  br label %stbiw__linear_to_rgbe.exit119.i

stbiw__linear_to_rgbe.exit119.i:                  ; preds = %bb.h, %.preheader131.split.i
  %i.eh = phi i8 [ %i.ed, %bb.h ], [ 0, %.preheader131.split.i ] ; 3 uses
  %.sink32.i117.i = phi i8 [ %i.eg, %bb.h ], [ 0, %.preheader131.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #52
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i
  store i8 %i.eh, ptr %i.ei, align 1
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  store i8 %i.eh, ptr %gep.i, align 1
  %gep201.i = getelementptr inbounds nuw i8, ptr %invariant.gep200.i, i64 %indvars.iv.i
  store i8 %i.eh, ptr %gep201.i, align 1
  %gep203.i = getelementptr inbounds nuw i8, ptr %invariant.gep202.i, i64 %indvars.iv.i
  store i8 %.sink32.i117.i, ptr %gep203.i, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.z
  br i1 %exitcond.not.i, label %.split.us.i, label %.preheader131.split.i

.split.us.i:                                      ; preds = %stbiw__linear_to_rgbe.exit119.i, %stbiw__linear_to_rgbe.exit119.us.i
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.f, i32 noundef 4) #52, !inline_history !39
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.split.us.i
  %indvars.iv179.i = phi i64 [ 0, %.split.us.i ], [ %indvars.iv.next180.i, %bb.n ] ; 2 uses
  %i.ej = mul nuw nsw i64 %indvars.iv179.i, %i.z
  %i.ek = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ej ; 7 uses
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %.loopexit127.i, %bb.i
  %.2152.i = phi i32 [ 0, %bb.i ], [ %.5.i, %.loopexit127.i ] ; 5 uses
  %i.el = icmp slt i32 %.2152.i, %invariant.op.i
  br i1 %i.el, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader129.i
  %i.em = sext i32 %.2152.i to i64                ; 4 uses
  %i.en = add nsw i64 %i.em, 2
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.ek, i64 %i.em
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  %smax = call i64 @llvm.smax.i64(i64 %invariant.op212.i, i64 %i.em)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %i.eo = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.eq, %bb.k ] ; 2 uses
  %indvars.iv170.i = phi i64 [ %i.em, %.lr.ph.preheader.i ], [ %indvars.iv.next171.i, %bb.k ] ; 3 uses
  %indvars.iv168.i = phi i64 [ %i.en, %.lr.ph.preheader.i ], [ %indvars.iv.next169.i, %bb.k ] ; 2 uses
  %indvars.iv.next171.i = add nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.ek, i64 %indvars.iv.next171.i
  %i.eq = load i8, ptr %i.ep, align 1             ; 2 uses
  %i.er = icmp eq i8 %i.eo, %i.eq
  br i1 %i.er, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.es = getelementptr inbounds i8, ptr %i.ek, i64 %indvars.iv168.i
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = icmp eq i8 %i.eo, %i.et
  br i1 %i.eu, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.next169.i = add nsw i64 %indvars.iv168.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv170.i, %smax
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.j
  %i.ev = trunc nsw i64 %indvars.iv170.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit.i, %.preheader129.i
  %spec.select.i = phi i32 [ %0, %.preheader129.i ], [ %i.ev, %._crit_edge.loopexit.split.loop.exit.i ], [ %0, %bb.k ] ; 5 uses
  %i.ew = icmp slt i32 %.2152.i, %spec.select.i
  br i1 %i.ew, label %.lr.ph145.i, label %._crit_edge146.i

.lr.ph145.i:                                      ; preds = %._crit_edge.i, %.lr.ph145.i
  %.3143.i = phi i32 [ %i.fb, %.lr.ph145.i ], [ %.2152.i, %._crit_edge.i ] ; 3 uses
  %i.ex = sub nsw i32 %spec.select.i, %.3143.i
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %i.ex, i32 128) ; 3 uses
  %i.ey = sext i32 %.3143.i to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ek, i64 %i.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #52
  %i.fa = trunc nuw i32 %spec.store.select.i to i8
  store i8 %i.fa, ptr %i.c, align 1
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.c, i32 noundef 1) #52, !inline_history !40
  call void %.0.val(ptr noundef %.8.val, ptr noundef %i.ez, i32 noundef %spec.store.select.i) #52, !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  %i.fb = add nsw i32 %spec.store.select.i, %.3143.i ; 3 uses
  %i.fc = icmp slt i32 %i.fb, %spec.select.i
  br i1 %i.fc, label %.lr.ph145.i, label %._crit_edge146.i

._crit_edge146.i:                                 ; preds = %.lr.ph145.i, %._crit_edge.i
  %.3.lcssa.i = phi i32 [ %.2152.i, %._crit_edge.i ], [ %i.fb, %.lr.ph145.i ] ; 5 uses
  %i.fd = icmp slt i32 %spec.select.i, %invariant.op.i
  br i1 %i.fd, label %.preheader128.i, label %.loopexit127.i

.preheader128.i:                                  ; preds = %._crit_edge146.i
  %i.fe = sext i32 %.3.lcssa.i to i64
  %i.ff = getelementptr inbounds i8, ptr %i.ek, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = sext i32 %spec.select.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.preheader128.i
  %indvars.iv175.i = phi i64 [ %i.fh, %.preheader128.i ], [ %indvars.iv.next176.i, %bb.m ] ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %i.ek, i64 %indvars.iv175.i
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = icmp eq i8 %i.fj, %i.fg
  br i1 %i.fk, label %bb.m, label %.critedge.split.loop.exit213.i

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next176.i = add nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next176.i, %i.z
  br i1 %exitcond178.not.i, label %.critedge.i, label %bb.l

.critedge.split.loop.exit213.i:                   ; preds = %bb.l
  %i.fl = trunc nsw i64 %indvars.iv175.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %.critedge.split.loop.exit213.i
  %.2109.lcssa.i = phi i32 [ %i.fl, %.critedge.split.loop.exit213.i ], [ %0, %bb.m ] ; 3 uses
  %i.fm = icmp slt i32 %.3.lcssa.i, %.2109.lcssa.i
  br i1 %i.fm, label %.lr.ph150.i, label %.loopexit127.i

.lr.ph150.i:                                      ; preds = %.critedge.i, %.lr.ph150.i
  %.4149.i = phi i32 [ %i.ft, %.lr.ph150.i ], [ %.3.lcssa.i, %.critedge.i ] ; 3 uses
  %i.fn = sub nsw i32 %.2109.lcssa.i, %.4149.i
  %spec.store.select2.i = call i32 @llvm.smin.i32(i32 %i.fn, i32 127) ; 2 uses
  %i.fo = sext i32 %.4149.i to i64
  %i.fp = getelementptr inbounds i8, ptr %i.ek, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.fq, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  %i.fr = trunc nuw i32 %spec.store.select2.i to i8
  %i.fs = or disjoint i8 %i.fr, -128
  store i8 %i.fs, ptr %i.b, align 1
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.b, i32 noundef 1) #52, !inline_history !41
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.a, i32 noundef 1) #52, !inline_history !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ft = add nsw i32 %spec.store.select2.i, %.4149.i ; 3 uses
  %i.fu = icmp slt i32 %i.ft, %.2109.lcssa.i
  br i1 %i.fu, label %.lr.ph150.i, label %.loopexit127.i

.loopexit127.i:                                   ; preds = %.lr.ph150.i, %.critedge.i, %._crit_edge146.i
  %.5.i = phi i32 [ %.3.lcssa.i, %._crit_edge146.i ], [ %.3.lcssa.i, %.critedge.i ], [ %i.ft, %.lr.ph150.i ] ; 2 uses
  %i.fv = icmp slt i32 %.5.i, %0
  br i1 %i.fv, label %.preheader129.i, label %bb.n

bb.n:                                             ; preds = %.loopexit127.i
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 2 uses
  %exitcond182.not.i = icmp eq i64 %indvars.iv.next180.i, 4
  br i1 %exitcond182.not.i, label %stbiw__write_hdr_scanline.exit.loopexit1, label %bb.i

stbiw__write_hdr_scanline.exit.loopexit1:         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #52
  %i.fw = add nuw nsw i32 %.06, 1                 ; 2 uses
  %exitcond15.not = icmp eq i32 %i.fw, %1
  br i1 %exitcond15.not, label %.split8.us, label %.preheader131.i

.split8.us:                                       ; preds = %stbiw__write_hdr_scanline.exit.loopexit1, %stbiw__write_hdr_scanline.exit.loopexit.us.split, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us
  call void @free(ptr noundef %i.o) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #52
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.split8.us
  %.028 = phi i32 [ 1, %.split8.us ], [ 0, %bb.a ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_hdr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 3 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @stbi_write_hdr_core(ptr nonnull @stbi__stdio_write, ptr nonnull %i.a, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %i.c = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden ptr @stbi_zlib_compress(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #53 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %3, i32 5) ; 4 uses
  %malloc = tail call dereferenceable_or_null(10) ptr @malloc(i64 10) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %malloc) ]
  %i.c = getelementptr inbounds nuw i8, ptr %malloc, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %malloc, i64 8 ; 2 uses
  store i32 2, ptr %malloc, align 4
  store i32 1, ptr %i.c, align 4
  store i8 120, ptr %i.d, align 4
  %i.e = tail call dereferenceable_or_null(13) ptr @realloc(ptr noundef nonnull %malloc, i64 noundef 13) #54 ; 3 uses
  %.not18.i253 = icmp eq ptr %i.e, null
  br i1 %.not18.i253, label %stbiw__zlib_flushf.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 5, ptr %i.e, align 4
  br label %stbiw__zlib_flushf.exit.thread

stbiw__zlib_flushf.exit.thread:                   ; preds = %bb.b, %bb.c
  %.1629 = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.1629, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds i8, ptr %.1629, i64 %i.j
  store i8 94, ptr %i.k, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.a, i8 0, i64 131072, i1 false)
  %i.l = add nsw i32 %1, -3
  %i.m = icmp sgt i32 %1, 3
  br i1 %i.m, label %.lr.ph762, label %.preheader709

.lr.ph762:                                        ; preds = %stbiw__zlib_flushf.exit.thread
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = shl nuw nsw i32 %spec.store.select, 1
  %i.p = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  br label %bb.d

.preheader709:                                    ; preds = %stbiw__zlib_flushf.exit354, %stbiw__zlib_flushf.exit.thread
  %.0663.lcssa = phi i32 [ 3, %stbiw__zlib_flushf.exit.thread ], [ %.4667, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %.0634.lcssa = phi i32 [ 3, %stbiw__zlib_flushf.exit.thread ], [ %.4638, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %.2630.lcssa = phi ptr [ %.1629, %stbiw__zlib_flushf.exit.thread ], [ %.5632, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %.1193.lcssa = phi i32 [ 0, %stbiw__zlib_flushf.exit.thread ], [ %.2194, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %i.r = icmp slt i32 %.1193.lcssa, %1
  br i1 %i.r, label %.lr.ph771.preheader, label %.preheader707

.lr.ph771.preheader:                              ; preds = %.preheader709
  %i.s = sext i32 %.1193.lcssa to i64
  %wide.trip.count856 = sext i32 %1 to i64
  br label %.lr.ph771

bb.d:                                             ; preds = %.lr.ph762, %stbiw__zlib_flushf.exit354
  %.1193761 = phi i32 [ 0, %.lr.ph762 ], [ %.2194, %stbiw__zlib_flushf.exit354 ] ; 6 uses
  %.2630760 = phi ptr [ %.1629, %.lr.ph762 ], [ %.5632, %stbiw__zlib_flushf.exit354 ] ; 8 uses
  %.0634759 = phi i32 [ 3, %.lr.ph762 ], [ %.4638, %stbiw__zlib_flushf.exit354 ] ; 12 uses
  %.0663758 = phi i32 [ 3, %.lr.ph762 ], [ %.4667, %stbiw__zlib_flushf.exit354 ] ; 4 uses
  %i.t = sext i32 %.1193761 to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t ; 8 uses
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = or disjoint i32 %i.aa, %i.w             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.ab, 3
end_hunk_0
begin_hunk_1_@stbir__vertical_scatter_with_8_coeffs_cont:bb.a
  %i.ew = fmul <4 x float> %i.z, %i.ah
  %i.ex = fadd <4 x float> %i.ew, %i.ep
  %i.ey = fmul <4 x float> %i.z, %i.aj
  %i.ez = fadd <4 x float> %i.ey, %i.er
  %i.fa = fmul <4 x float> %i.z, %i.al
  %i.fb = fadd <4 x float> %i.fa, %i.et
  store <4 x float> %i.ev, ptr %.0344356, align 1
  store <4 x float> %i.ex, ptr %i.eo, align 1
  store <4 x float> %i.ez, ptr %i.eq, align 1
  store <4 x float> %i.fb, ptr %i.es, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.0362, i64 64 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0329361, i64 64 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0332360, i64 64 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0335359, i64 64 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0338358, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0341357, i64 64 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0350354, i64 64 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0347355, i64 64 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0344356, i64 64 ; 2 uses
  %i.fl = ptrtoint ptr %i.fc to i64
  %i.fm = sub i64 %i.aa, %i.fl                    ; 2 uses
  %i.fn = icmp sgt i64 %i.fm, 63
  br i1 %i.fn, label %.lr.ph, label %.preheader353, !llvm.loop !1040

.preheader:                                       ; preds = %.lr.ph381, %.preheader353
  %.1351.lcssa = phi ptr [ %.0350.lcssa, %.preheader353 ], [ %i.gu, %.lr.ph381 ]
  %.1348.lcssa = phi ptr [ %.0347.lcssa, %.preheader353 ], [ %i.gv, %.lr.ph381 ]
  %.1345.lcssa = phi ptr [ %.0344.lcssa, %.preheader353 ], [ %i.gw, %.lr.ph381 ]
  %.1342.lcssa = phi ptr [ %.0341.lcssa, %.preheader353 ], [ %i.gt, %.lr.ph381 ]
  %.1339.lcssa = phi ptr [ %.0338.lcssa, %.preheader353 ], [ %i.gs, %.lr.ph381 ]
  %.1336.lcssa = phi ptr [ %.0335.lcssa, %.preheader353 ], [ %i.gr, %.lr.ph381 ]
  %.1333.lcssa = phi ptr [ %.0332.lcssa, %.preheader353 ], [ %i.gq, %.lr.ph381 ]
  %.1330.lcssa = phi ptr [ %.0329.lcssa, %.preheader353 ], [ %i.gp, %.lr.ph381 ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader353 ], [ %i.go, %.lr.ph381 ] ; 2 uses
  %i.fo = icmp ult ptr %.1.lcssa, %3
  br i1 %i.fo, label %.lr.ph400, label %._crit_edge

.lr.ph381:                                        ; preds = %.preheader353, %.lr.ph381
  %.1380 = phi ptr [ %i.go, %.lr.ph381 ], [ %.0.lcssa, %.preheader353 ] ; 2 uses
  %.1330379 = phi ptr [ %i.gp, %.lr.ph381 ], [ %.0329.lcssa, %.preheader353 ] ; 4 uses
  %.1333378 = phi ptr [ %i.gq, %.lr.ph381 ], [ %.0332.lcssa, %.preheader353 ] ; 3 uses
  %.1336377 = phi ptr [ %i.gr, %.lr.ph381 ], [ %.0335.lcssa, %.preheader353 ] ; 3 uses
  %.1339376 = phi ptr [ %i.gs, %.lr.ph381 ], [ %.0338.lcssa, %.preheader353 ] ; 3 uses
  %.1342375 = phi ptr [ %i.gt, %.lr.ph381 ], [ %.0341.lcssa, %.preheader353 ] ; 3 uses
  %.1345374 = phi ptr [ %i.gw, %.lr.ph381 ], [ %.0344.lcssa, %.preheader353 ] ; 3 uses
  %.1348373 = phi ptr [ %i.gv, %.lr.ph381 ], [ %.0347.lcssa, %.preheader353 ] ; 3 uses
  %.1351372 = phi ptr [ %i.gu, %.lr.ph381 ], [ %.0350.lcssa, %.preheader353 ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1330379) #52, !srcloc !1041
  %i.fp = load <4 x float>, ptr %.1380, align 1   ; 8 uses
  %i.fq = load <4 x float>, ptr %.1330379, align 1
  %i.fr = fmul <4 x float> %i.s, %i.fp
  %i.fs = fadd <4 x float> %i.fq, %i.fr
  store <4 x float> %i.fs, ptr %.1330379, align 1
  %i.ft = load <4 x float>, ptr %.1333378, align 1
  %i.fu = fmul <4 x float> %i.t, %i.fp
  %i.fv = fadd <4 x float> %i.fu, %i.ft
  store <4 x float> %i.fv, ptr %.1333378, align 1
  %i.fw = load <4 x float>, ptr %.1336377, align 1
  %i.fx = fmul <4 x float> %i.u, %i.fp
  %i.fy = fadd <4 x float> %i.fx, %i.fw
  store <4 x float> %i.fy, ptr %.1336377, align 1
  %i.fz = load <4 x float>, ptr %.1339376, align 1
  %i.ga = fmul <4 x float> %i.v, %i.fp
  %i.gb = fadd <4 x float> %i.ga, %i.fz
  store <4 x float> %i.gb, ptr %.1339376, align 1
  %i.gc = load <4 x float>, ptr %.1342375, align 1
  %i.gd = fmul <4 x float> %i.w, %i.fp
  %i.ge = fadd <4 x float> %i.gd, %i.gc
  store <4 x float> %i.ge, ptr %.1342375, align 1
  %i.gf = load <4 x float>, ptr %.1351372, align 1
  %i.gg = fmul <4 x float> %i.x, %i.fp
  %i.gh = fadd <4 x float> %i.gg, %i.gf
  store <4 x float> %i.gh, ptr %.1351372, align 1
  %i.gi = load <4 x float>, ptr %.1348373, align 1
  %i.gj = fmul <4 x float> %i.y, %i.fp
  %i.gk = fadd <4 x float> %i.gj, %i.gi
  store <4 x float> %i.gk, ptr %.1348373, align 1
  %i.gl = load <4 x float>, ptr %.1345374, align 1
  %i.gm = fmul <4 x float> %i.z, %i.fp
  %i.gn = fadd <4 x float> %i.gm, %i.gl
  store <4 x float> %i.gn, ptr %.1345374, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %.1380, i64 16 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.1330379, i64 16 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1333378, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.1336377, i64 16 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1339376, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.1342375, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1351372, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.1348373, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1345374, i64 16 ; 2 uses
  %i.gx = ptrtoint ptr %i.go to i64
  %i.gy = sub i64 %i.aa, %i.gx
  %i.gz = icmp sgt i64 %i.gy, 15
  br i1 %i.gz, label %.lr.ph381, label %.preheader, !llvm.loop !1042

.lr.ph400:                                        ; preds = %.preheader, %.lr.ph400
  %.2399 = phi ptr [ %i.id, %.lr.ph400 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.2331398 = phi ptr [ %i.ie, %.lr.ph400 ], [ %.1330.lcssa, %.preheader ] ; 4 uses
  %.2334397 = phi ptr [ %i.if, %.lr.ph400 ], [ %.1333.lcssa, %.preheader ] ; 3 uses
  %.2337396 = phi ptr [ %i.ig, %.lr.ph400 ], [ %.1336.lcssa, %.preheader ] ; 3 uses
  %.2340395 = phi ptr [ %i.ih, %.lr.ph400 ], [ %.1339.lcssa, %.preheader ] ; 3 uses
  %.2343394 = phi ptr [ %i.ii, %.lr.ph400 ], [ %.1342.lcssa, %.preheader ] ; 3 uses
  %.2346393 = phi ptr [ %i.il, %.lr.ph400 ], [ %.1345.lcssa, %.preheader ] ; 3 uses
  %.2349392 = phi ptr [ %i.ik, %.lr.ph400 ], [ %.1348.lcssa, %.preheader ] ; 3 uses
  %.2352391 = phi ptr [ %i.ij, %.lr.ph400 ], [ %.1351.lcssa, %.preheader ] ; 3 uses
  %i.ha = load float, ptr %.2399, align 4
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2331398) #52, !srcloc !1043
  %i.hb = load float, ptr %.2331398, align 4
  %i.hc = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.he = fmul <4 x float> %i.h, %i.hd            ; 4 uses
  %i.hf = extractelement <4 x float> %i.he, i64 0
  %i.hg = fadd float %i.hf, %i.hb
  store float %i.hg, ptr %.2331398, align 4
  %i.hh = load float, ptr %.2334397, align 4
  %i.hi = extractelement <4 x float> %i.he, i64 1
  %i.hj = fadd float %i.hi, %i.hh
  store float %i.hj, ptr %.2334397, align 4
  %i.hk = load float, ptr %.2337396, align 4
  %i.hl = extractelement <4 x float> %i.he, i64 2
  %i.hm = fadd float %i.hl, %i.hk
  store float %i.hm, ptr %.2337396, align 4
  %i.hn = load float, ptr %.2340395, align 4
  %i.ho = extractelement <4 x float> %i.he, i64 3
  %i.hp = fadd float %i.ho, %i.hn
  store float %i.hp, ptr %.2340395, align 4
  %i.hq = load float, ptr %.2343394, align 4
  %i.hr = fmul <4 x float> %i.r, %i.hd            ; 4 uses
  %i.hs = extractelement <4 x float> %i.hr, i64 0
  %i.ht = fadd float %i.hs, %i.hq
  store float %i.ht, ptr %.2343394, align 4
  %i.hu = load float, ptr %.2352391, align 4
  %i.hv = extractelement <4 x float> %i.hr, i64 1
  %i.hw = fadd float %i.hv, %i.hu
  store float %i.hw, ptr %.2352391, align 4
  %i.hx = load float, ptr %.2349392, align 4
  %i.hy = extractelement <4 x float> %i.hr, i64 2
  %i.hz = fadd float %i.hy, %i.hx
  store float %i.hz, ptr %.2349392, align 4
  %i.ia = load float, ptr %.2346393, align 4
  %i.ib = extractelement <4 x float> %i.hr, i64 3
  %i.ic = fadd float %i.ib, %i.ia
  store float %i.ic, ptr %.2346393, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %.2399, i64 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.2331398, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.2334397, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %.2337396, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.2340395, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.2343394, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.2352391, i64 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.2349392, i64 4
  %i.il = getelementptr inbounds nuw i8, ptr %.2346393, i64 4
  %i.im = icmp ult ptr %i.id, %3
  br i1 %i.im, label %.lr.ph400, label %._crit_edge, !llvm.loop !1044

._crit_edge:                                      ; preds = %.lr.ph400, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #17

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.bitreverse.i4(i4) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i7 @llvm.bitreverse.i7(i7) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.fshl.v8i16(<8 x i16>, <8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.fshl.v4i16(<4 x i16>, <4 x i16>, <4 x i16>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fabs.v16f32(<16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.minnum.v16f32(<16 x float>, <16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nosync nounwind willreturn }
attributes #46 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #48 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #52 = { nounwind }
attributes #53 = { nounwind allocsize(0) }
attributes #54 = { nounwind allocsize(1) }
attributes #55 = { nounwind willreturn memory(read) }
attributes #56 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = distinct !{ptr @stbi_load_from_file, null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{!"branch_weights", i32 4, i32 12}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !7, !6}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !7, !6}
!14 = distinct !{ptr @stbi_load_from_file_16, null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !6}
!19 = distinct !{ptr @stbi_loadf_from_file, null, null, null}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !6, !7}
!23 = !{!"branch_weights", i32 4, i32 28}
!24 = distinct !{!24, !6, !7}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !6}
!27 = distinct !{ptr @stbi_info_from_file, null, null, null}
!28 = distinct !{!28, !6, !7}
!29 = distinct !{!29, !6, !7}
!30 = distinct !{!30, !7, !6}
end_hunk_1
