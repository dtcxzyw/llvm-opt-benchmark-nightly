Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_6?download=true
inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_llvh0x3A0x3ATwine0x3A0x3Astr0x280x290x20const:bb.a
  br label %bb.ac

bb.v:                                             ; preds = %bb.p
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.e
  %.0.copyload.i569 = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i569) #8, !srcloc !14
  %i.dv = zext i32 %.0.copyload.i569 to i64
  %.val544 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.val544, i64 %i.dv
  %.0.copyload.i570 = load i64, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i570) #8, !srcloc !33
  %.val535 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %.val535, i64 %i.cl
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i64 %.0.copyload.i570, ptr %i.dy, align 1
  br label %bb.ac

bb.w:                                             ; preds = %bb.p
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.e
  %.0.copyload.i571 = load i32, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i571) #8, !srcloc !14
  %i.ea = zext i32 %.0.copyload.i571 to i64
  %.val543 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %.val543, i64 %i.ea
  %.0.copyload.i572 = load i64, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i572) #8, !srcloc !33
  %.val534 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %.val534, i64 %i.cl
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store i64 %.0.copyload.i572, ptr %i.ed, align 1
  br label %bb.ac

bb.x:                                             ; preds = %bb.p, %bb.o
  %i.ee = zext i32 %i.ct to i64                   ; 8 uses
  %.val533 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %.val533, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 28
  store i64 4294967296, ptr %i.eg, align 1
  %.val532 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.val532, i64 %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  store i64 0, ptr %i.ei, align 1
  %.val518 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ej = getelementptr inbounds nuw i8, ptr %.val518, i64 %i.ee
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i32 261900, ptr %i.ek, align 1
  %.val517 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %.val517, i64 %i.ee
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 36
  store i32 %i.cr, ptr %i.em, align 1
  %i.en = add i32 %i.cs, -32                      ; 3 uses
  %i.eo = zext i32 %i.en to i64                   ; 8 uses
  %i.ep = add nuw nsw i64 %i.eo, 16               ; 2 uses
  %.val31.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %.val31.i, i64 %i.ep
  %.0.copyload.i.i573 = load i32, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i573) #8, !srcloc !14
  %.not.i574 = icmp eq i32 %.0.copyload.i.i573, 1
  br i1 %.not.i574, label %bb.y, label %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29.exit

bb.y:                                             ; preds = %bb.x
  %.val.i575 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i575, i64 %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.0.copyload.i36.i = load i32, ptr %i.es, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i36.i) #8, !srcloc !14
  %.not30.i = icmp eq i32 %.0.copyload.i36.i, 0
  br i1 %.not30.i, label %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i36.i) #8
  br label %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29.exit

w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29.exit: ; preds = %bb.x, %bb.y, %bb.z
  %.val35.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %.val35.i, i64 %i.ep
  store i32 0, ptr %i.et, align 1
  %.val34.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %.val34.i, i64 %i.eo
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 0, ptr %i.ev, align 1
  %.val33.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %i.eo
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 0, ptr %i.ex, align 1
  %.val32.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ey = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %i.eo
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 0, ptr %i.ez, align 1
  %.val491 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.e
  %.0.copyload.i576 = load i32, ptr %i.fa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i576) #8, !srcloc !14
  %.val516 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %.val516, i64 %i.ee
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 44
  store i32 %.0.copyload.i576, ptr %i.fc, align 1
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fd = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.h
  %.0.copyload.i577 = load i8, ptr %i.fd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i577) #8, !srcloc !13
  %i.fe = zext i8 %.0.copyload.i577 to i32
  %.val515 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %.val515, i64 %i.ee
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 %.0.copyload.i576, ptr %i.fg, align 1
  %i.fh = add i32 %i.cs, -36
  tail call void @w2c_hermes_llvh0x3A0x3ATwine0x3A0x3AprintOneChild0x28llvh0x3A0x3Araw_ostream0x260x2C0x20llvh0x3A0x3ATwine0x3A0x3AChild0x2C0x20llvh0x3A0x3ATwine0x3A0x3ANodeKind0x290x20const(ptr noundef nonnull %0, i32 noundef %i.en, i32 noundef %i.fh, i32 noundef %i.fe)
  %.val490 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.e
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %.0.copyload.i578 = load i32, ptr %i.fj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i578) #8, !srcloc !14
  %.val514 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %.val514, i64 %i.ee
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store i32 %.0.copyload.i578, ptr %i.fl, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %.0.copyload.i579 = load i8, ptr %i.fm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i579) #8, !srcloc !13
  %i.fn = zext i8 %.0.copyload.i579 to i32
  %.val513 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %.val513, i64 %i.ee
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i32 %.0.copyload.i578, ptr %i.fp, align 1
  %i.fq = add i32 %i.cs, -40
  tail call void @w2c_hermes_llvh0x3A0x3ATwine0x3A0x3AprintOneChild0x28llvh0x3A0x3Araw_ostream0x260x2C0x20llvh0x3A0x3ATwine0x3A0x3AChild0x2C0x20llvh0x3A0x3ATwine0x3A0x3ANodeKind0x290x20const(ptr noundef nonnull %0, i32 noundef %i.en, i32 noundef %i.fq, i32 noundef %i.fn)
  %.val22.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %.val22.i, i64 %i.eo
  store i32 261740, ptr %i.fr, align 1
  %.val21.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val21.i, i64 %i.eo
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %.0.copyload.i.i580 = load i32, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i580) #8, !srcloc !14
  %.not.i581 = icmp eq i32 %.0.copyload.i.i580, 1
  br i1 %.not.i581, label %bb.aa, label %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1.exit

bb.aa:                                            ; preds = %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29.exit
  %.val.i582 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i582, i64 %i.eo
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %.0.copyload.i23.i = load i32, ptr %i.fv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i23.i) #8, !srcloc !14
  %.not20.i = icmp eq i32 %.0.copyload.i23.i, 0
  br i1 %.not20.i, label %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i23.i) #8
  br label %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1.exit

w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1.exit: ; preds = %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29.exit, %bb.aa, %bb.ab
  %.val542 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.val542, i64 %i.cp
  %.0.copyload.i583 = load i64, ptr %i.fw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i583) #8, !srcloc !33
  %.val531 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %.val531, i64 %i.cl
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i64 %.0.copyload.i583, ptr %i.fy, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1.exit, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q
  store i32 %i.cs, ptr %i.a, align 8, !tbaa !20
  %.val489 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.cl
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %.0.copyload.i584 = load i32, ptr %i.ga, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i584) #8, !srcloc !14
  %.not476 = icmp eq i32 %.0.copyload.i584, 0
  br i1 %.not476, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gb = zext i32 %1 to i64                      ; 2 uses
  %.val530 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.val530, i64 %i.gb
  store i64 0, ptr %i.gc, align 1
  %.val512 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %.val512, i64 %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i32 0, ptr %i.ge, align 1
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac
  %.val488 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.cl
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %.0.copyload.i585 = load i32, ptr %i.gg, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i585) #8, !srcloc !14
  %i.gh = icmp ugt i32 %.0.copyload.i585, 2147483631
  br i1 %i.gh, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gi = icmp samesign ugt i32 %.0.copyload.i585, 10
  br i1 %i.gi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gj = or i32 %.0.copyload.i585, 15            ; 2 uses
  %i.gk = add nuw nsw i32 %i.gj, 1
  %i.gl = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gk) #8 ; 3 uses
  %3 = add nuw nsw i32 %i.gj, -2147483647
  %i.gm = zext i32 %1 to i64                      ; 3 uses
  %.val511 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %.val511, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %3, ptr %i.go, align 1
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gp = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.gm
  store i32 %i.gl, ptr %i.gp, align 1
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.gm
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i32 %.0.copyload.i585, ptr %i.gr, align 1
  %i.gs = add i32 %i.gl, %.0.copyload.i585
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gt = zext i32 %1 to i64
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gu = trunc nuw nsw i32 %.0.copyload.i585 to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.gt
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 11
  store i8 %i.gu, ptr %i.gw, align 1
  %i.gx = add i32 %.0.copyload.i585, %1           ; 2 uses
  %.not477 = icmp eq i32 %.0.copyload.i585, 0
  br i1 %.not477, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0464 = phi i32 [ %i.gl, %bb.ag ], [ %1, %bb.ah ]
  %.0 = phi i32 [ %i.gs, %bb.ag ], [ %i.gx, %bb.ah ]
  %i.gy = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0464, i32 noundef %.0.copyload.i584, i32 noundef %.0.copyload.i585) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.1 = phi i32 [ %.0, %bb.ai ], [ %i.gx, %bb.ah ]
  %i.gz = zext i32 %.1 to i64
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.gz
  store i8 0, ptr %i.ha, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  %.val487 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.cp
  %.0.copyload.i586 = load i32, ptr %i.hb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i586) #8, !srcloc !14
  %i.hc = icmp eq i32 %.0.copyload.i586, %i.co
  br i1 %i.hc, label %w2c_hermes_llvh0x3A0x3Araw_string_ostream0x3A0x3A0x7Eraw_string_ostream0x280x29.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i586) #8
  br label %w2c_hermes_llvh0x3A0x3Araw_string_ostream0x3A0x3A0x7Eraw_string_ostream0x280x29.exit

w2c_hermes_llvh0x3A0x3Araw_string_ostream0x3A0x3A0x7Eraw_string_ostream0x280x29.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.ak, %bb.al, %bb.d, %bb.c
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void

bb.am:                                            ; preds = %bb.ae
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable
}

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Finit_copy_ctor_external0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28llvh0x3A0x3Aformatv_object_base0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = add i32 %i.b, -144                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 128 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %.val1187 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val1187, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 549755813888, ptr %i.g, align 1
  %i.h = add i32 %i.b, -128                       ; 2 uses
  %i.i = add nuw nsw i64 %i.e, 4                  ; 2 uses
  %.val1176 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val1176, i64 %i.i
  store i32 %i.h, ptr %i.j, align 1
  %i.k = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.l = add i32 %i.k, -32                        ; 2 uses
  store i32 %i.l, ptr %i.a, align 8, !tbaa !20
  %i.m = zext i32 %2 to i64                       ; 4 uses
  %.val1160 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.0.copyload.i = load i32, ptr %i.o, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.val1159 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val1159, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.0.copyload.i1194 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1194) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, %.0.copyload.i1194
  br i1 %.not, label %.loopexit1339, label %.preheader1338

.preheader1338:                                   ; preds = %bb.a
  %i.r = zext i32 %1 to i64                       ; 24 uses
  %i.s = add nuw nsw i64 %i.r, 12                 ; 26 uses
  %i.t = zext i32 %i.l to i64                     ; 8 uses
  %i.u = add nuw nsw i64 %i.t, 28                 ; 5 uses
  %i.v = add nuw nsw i64 %i.t, 16                 ; 3 uses
  %i.w = add nuw nsw i64 %i.t, 20                 ; 2 uses
  %i.x = add nuw nsw i64 %i.t, 24                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 10 uses
  %i.aa = load ptr, ptr @w2c_hermes_t2, align 8   ; 31 uses
  %i.ab = icmp ne ptr %i.aa, null                 ; 10 uses
  %i.ac = add nuw nsw i64 %i.r, 8                 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader1338, %bb.bv
  %.0963 = phi i32 [ %i.sg, %bb.bv ], [ %.0.copyload.i, %.preheader1338 ] ; 2 uses
  %i.ad = zext i32 %.0963 to i64                  ; 7 uses
  %.val1158 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1158, i64 %i.ad
  %.0.copyload.i1195 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1195) #8, !srcloc !14
  switch i32 %.0.copyload.i1195, label %bb.g [
    i32 0, label %bb.bv
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %.val1193 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val1193, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.0.copyload.i1196 = load i64, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1196) #8, !srcloc !33
  %i.ah = trunc i64 %.0.copyload.i1196 to i32     ; 2 uses
  %i.ai = lshr i64 %.0.copyload.i1196, 32         ; 2 uses
  %i.aj = trunc nuw i64 %i.ai to i32              ; 4 uses
  %.val1157 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1157, i64 %i.r
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i1197 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1197) #8, !srcloc !14
  %.val1156 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %.val1156, i64 %i.s
  %.0.copyload.i1198 = load i32, ptr %i.am, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1198) #8, !srcloc !14
  %i.an = sub i32 %.0.copyload.i1197, %.0.copyload.i1198
  %i.ao = icmp ult i32 %i.an, %i.aj
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ah, i32 noundef %i.aj) ; 0 uses
  br label %bb.bv

bb.e:                                             ; preds = %bb.c
  %.not1013 = icmp eq i64 %i.ai, 0
  br i1 %.not1013, label %bb.bv, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1198, i32 noundef %i.ah, i32 noundef %i.aj) #8 ; 0 uses
  %.val1155 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1155, i64 %i.s
  %.0.copyload.i1199 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1199) #8, !srcloc !14
  %i.as = add i32 %.0.copyload.i1199, %i.aj
  %.val1175 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %.val1175, i64 %i.s
  store i32 %i.as, ptr %i.at, align 1
  br label %bb.bv

bb.g:                                             ; preds = %bb.b
  %.val1154 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %.val1154, i64 %i.ad
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %.0.copyload.i1200 = load i32, ptr %i.av, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1200) #8, !srcloc !14
  %.val1153 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1153, i64 %i.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %.0.copyload.i1201 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1201) #8, !srcloc !14
  %.val1152 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1152, i64 %i.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i1202 = load i32, ptr %i.az, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1202) #8, !srcloc !14
  %i.ba = sub i32 %.0.copyload.i1201, %.0.copyload.i1202
  %i.bb = ashr i32 %i.ba, 2
  %.not1014 = icmp ult i32 %.0.copyload.i1200, %i.bb
  br i1 %.not1014, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val1192 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1192, i64 %i.ad
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.0.copyload.i1203 = load i64, ptr %i.bd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1203) #8, !srcloc !33
  %i.be = trunc i64 %.0.copyload.i1203 to i32     ; 2 uses
  %i.bf = lshr i64 %.0.copyload.i1203, 32         ; 2 uses
  %i.bg = trunc nuw i64 %i.bf to i32              ; 4 uses
  %.val1151 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1151, i64 %i.r
end_hunk_0
begin_hunk_1_@w2c_hermes_llvh0x3A0x3ASourceMgr0x3A0x3APrintMessage0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ASourceMgr0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cllvh0x3A0x3ASMRange0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cllvh0x3A0x3ASMFixIt0x3E0x2C0x20bool0x290x20const:bb.a
  %.0.copyload.i4248 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4248) #8, !srcloc !14
  %.not3677 = icmp eq i32 %.0.copyload.i4248, 0
  br i1 %.not3677, label %bb.f, label %.preheader4611

bb.f:                                             ; preds = %.preheader4611
  %i.br = icmp eq i32 %i.bf, %i.bm
  br i1 %i.br, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val4094 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %.val4094, i64 %i.aq
  %.0.copyload.i4249 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4249) #8, !srcloc !14
  %i.bt = zext i32 %i.bm to i64
  %.val4093 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.val4093, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %.0.copyload.i4250 = load i32, ptr %i.bv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4250) #8, !srcloc !14
  %i.bw = mul i32 %.0.copyload.i4250, 12
  %i.bx = add i32 %.0.copyload.i4249, -12
  %i.by = add i32 %i.bx, %i.bw
  %i.bz = zext i32 %i.by to i64
  %.val4092 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %.val4092, i64 %i.bz
  %.0.copyload.i4251 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4251) #8, !srcloc !14
  %i.cb = zext i32 %.0.copyload.i4251 to i64
  %.val4091 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %.val4091, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.0.copyload.i4252 = load i32, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4252) #8, !srcloc !14
  %i.ce = icmp ugt i32 %.0.copyload.i4252, %2
  br i1 %i.ce, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val4170 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %.val4170, i64 %i.ar
  store i32 %.0.copyload.i4250, ptr %i.cf, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.h
  %.03555 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ %.0.copyload.i4250, %bb.h ], [ %.0.copyload.i4241, %bb.d ] ; 2 uses
  %i.cg = add i32 %i.ae, -16                      ; 4 uses
  %.val4090 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %.val4090, i64 %i.aq
  %.0.copyload.i4253 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4253) #8, !srcloc !14
  %i.ci = mul i32 %.03555, 12
  %i.cj = add i32 %i.ci, -12
  %i.ck = add i32 %i.cj, %.0.copyload.i4253
  %i.cl = zext i32 %i.ck to i64
  %.val4089 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %.val4089, i64 %i.cl
  %.0.copyload.i4254 = load i32, ptr %i.cm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4254) #8, !srcloc !14
  %i.cn = zext i32 %.0.copyload.i4254 to i64      ; 3 uses
  %.val4088 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %.val4088, i64 %i.cn
  %.0.copyload.i4255 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4255) #8, !srcloc !14
  %i.cp = zext i32 %.0.copyload.i4255 to i64
  %.val4087 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.val4087, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.0.copyload.i4256 = load i32, ptr %i.cr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4256) #8, !srcloc !14
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !21
  %i.cu = icmp ult i32 %.0.copyload.i4256, %i.ct
  br i1 %i.cu, label %bb.j, label %.critedge, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !23
  %i.cx = zext i32 %.0.copyload.i4256 to i64
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cx ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !25 ; 2 uses
  %.not3678 = icmp eq ptr %i.da, null
  br i1 %.not3678, label %.critedge, label %bb.k, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.db = load ptr, ptr @w2c_hermes_t0, align 8, !tbaa !27 ; 4 uses
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !28 ; 4 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %func_types_eq.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = icmp ne ptr %i.db, null
  %i.df = icmp ne ptr %i.dc, null
  %or.cond.i = and i1 %i.de, %i.df
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !29

func_types_eq.exit:                               ; preds = %bb.l
  %i.dg = load i128, ptr %i.db, align 1
  %i.dh = load i128, ptr %i.dc, align 1
  %i.di = xor i128 %i.dg, %i.dh
  %i.dj = getelementptr i8, ptr %i.db, i64 16
  %i.dk = getelementptr i8, ptr %i.dc, i64 16
  %i.dl = load i128, ptr %i.dj, align 1
  %i.dm = load i128, ptr %i.dk, align 1
  %i.dn = xor i128 %i.dl, %i.dm
  %i.do = or i128 %i.di, %i.dn
  %i.dp = icmp ne i128 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %.not.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !32

.critedge:                                        ; preds = %bb.l, %bb.j, %bb.i, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.k, %func_types_eq.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31
  tail call void %i.da(ptr noundef %i.ds, i32 noundef %i.cg, i32 noundef %.0.copyload.i4254) #8
  %i.dt = add nuw nsw i64 %i.ag, 148              ; 2 uses
  %.val4086 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %.val4086, i64 %i.dt
  %.0.copyload.i4257 = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4257) #8, !srcloc !14
  %i.dv = add nuw nsw i64 %i.ag, 144              ; 5 uses
  %.val4085 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.val4085, i64 %i.dv
  %.0.copyload.i4258 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4258) #8, !srcloc !14
  %.val4084 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %.val4084, i64 %i.cn
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %.0.copyload.i4259 = load i32, ptr %i.dy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4259) #8, !srcloc !14
  %i.dz = icmp eq i32 %.0.copyload.i4259, %2
  br i1 %i.dz, label %._crit_edge4721, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.ea = icmp eq i32 %.0.copyload.i4259, %i.eb
  br i1 %i.ea, label %._crit_edge4721, label %.lr.ph

.lr.ph:                                           ; preds = %func_types_eq.exit.thread, %bb.m
  %.135614720 = phi i32 [ %i.eb, %bb.m ], [ %2, %func_types_eq.exit.thread ] ; 3 uses
  %i.eb = add i32 %.135614720, -1                 ; 3 uses
  %i.ec = zext i32 %i.eb to i64
  %.val3858 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %.val3858, i64 %i.ec
  %.0.copyload.i4260 = load i8, ptr %i.ed, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4260) #8, !srcloc !13
  switch i8 %.0.copyload.i4260, label %bb.m [
    i8 10, label %._crit_edge4721
    i8 13, label %._crit_edge4721
  ]

._crit_edge4721:                                  ; preds = %.lr.ph, %.lr.ph, %bb.m, %func_types_eq.exit.thread
  %.03590 = phi i32 [ %.0.copyload.i4259, %func_types_eq.exit.thread ], [ %.135614720, %.lr.ph ], [ %.135614720, %.lr.ph ], [ %.0.copyload.i4259, %bb.m ] ; 8 uses
  %.val4083 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.val4083, i64 %i.cn
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.0.copyload.i4261 = load i32, ptr %i.ef, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4261) #8, !srcloc !14
  %i.eg = icmp eq i32 %2, %.0.copyload.i4261
  br i1 %i.eg, label %.loopexit4610, label %.preheader4609

.preheader4609:                                   ; preds = %._crit_edge4721, %bb.n
  %.03566 = phi i32 [ %i.ej, %bb.n ], [ %2, %._crit_edge4721 ] ; 4 uses
  %i.eh = zext i32 %.03566 to i64
  %.val3857 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %.val3857, i64 %i.eh
  %.0.copyload.i4262 = load i8, ptr %i.ei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4262) #8, !srcloc !13
  switch i8 %.0.copyload.i4262, label %bb.n [
    i8 10, label %.loopexit4610
    i8 13, label %.loopexit4610
  ]

bb.n:                                             ; preds = %.preheader4609
  %i.ej = add i32 %.03566, 1                      ; 2 uses
  %.not3680 = icmp eq i32 %i.ej, %.0.copyload.i4261
  br i1 %.not3680, label %.loopexit4610, label %.preheader4609

.loopexit4610:                                    ; preds = %bb.n, %.preheader4609, %.preheader4609, %._crit_edge4721
  %.13567 = phi i32 [ %2, %._crit_edge4721 ], [ %.0.copyload.i4261, %bb.n ], [ %.03566, %.preheader4609 ], [ %.03566, %.preheader4609 ] ; 6 uses
  %i.ek = sub i32 %.13567, %.03590                ; 6 uses
  %i.el = icmp ugt i32 %i.ek, 2147483631
  br i1 %i.el, label %bb.bu, label %bb.o

bb.o:                                             ; preds = %.loopexit4610
  %i.em = icmp samesign ult i32 %i.ek, 11
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val3893 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.en = trunc nuw nsw i32 %i.ek to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.val3893, i64 %i.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 155
  store i8 %i.en, ptr %i.ep, align 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.eq = or i32 %i.ek, 15                        ; 2 uses
  %i.er = add nuw nsw i32 %i.eq, 1
  %i.es = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.er) #8 ; 2 uses
  %8 = add nuw nsw i32 %i.eq, -2147483647
  %.val4169 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %.val4169, i64 %i.ag
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 152
  store i32 %8, ptr %i.eu, align 1
  %.val4168 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %.val4168, i64 %i.dv
  store i32 %i.es, ptr %i.ev, align 1
  %.val4167 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %.val4167, i64 %i.dt
  store i32 %i.ek, ptr %i.ew, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.23562 = phi i32 [ %i.cg, %bb.p ], [ %i.es, %bb.q ] ; 3 uses
  %i.ex = icmp eq i32 %.03590, %.13567
  br i1 %i.ex, label %.loopexit4606, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ey = and i32 %i.ek, 7                        ; 2 uses
  %.not3681 = icmp eq i32 %i.ey, 0
  br i1 %.not3681, label %.loopexit4608, label %.preheader4607

.preheader4607:                                   ; preds = %bb.s, %.preheader4607
  %.13577 = phi i32 [ %i.fe, %.preheader4607 ], [ %.03590, %bb.s ] ; 2 uses
  %.33563 = phi i32 [ %i.fd, %.preheader4607 ], [ %.23562, %bb.s ] ; 2 uses
  %.03553 = phi i32 [ %i.ff, %.preheader4607 ], [ 0, %bb.s ]
  %i.ez = zext i32 %.13577 to i64
  %.val3856 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %.val3856, i64 %i.ez
  %.0.copyload.i4263 = load i8, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4263) #8, !srcloc !13
  %i.fb = zext i32 %.33563 to i64
  %.val3892 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %.val3892, i64 %i.fb
  store i8 %.0.copyload.i4263, ptr %i.fc, align 1
  %i.fd = add i32 %.33563, 1                      ; 2 uses
  %i.fe = add i32 %.13577, 1                      ; 2 uses
  %i.ff = add nuw nsw i32 %.03553, 1              ; 2 uses
  %.not3682 = icmp eq i32 %i.ff, %i.ey
  br i1 %.not3682, label %.loopexit4608, label %.preheader4607

.loopexit4608:                                    ; preds = %.preheader4607, %bb.s
  %.23578 = phi i32 [ %.03590, %bb.s ], [ %i.fe, %.preheader4607 ]
  %.43564 = phi i32 [ %.23562, %bb.s ], [ %i.fd, %.preheader4607 ] ; 2 uses
  %i.fg = sub i32 %.03590, %.13567
  %i.fh = icmp ugt i32 %i.fg, -8
  br i1 %i.fh, label %.loopexit4606, label %.preheader4605

.preheader4605:                                   ; preds = %.loopexit4608, %.preheader4605
  %.33579 = phi i32 [ %i.gp, %.preheader4605 ], [ %.23578, %.loopexit4608 ] ; 2 uses
  %.53565 = phi i32 [ %i.go, %.preheader4605 ], [ %.43564, %.loopexit4608 ] ; 2 uses
  %i.fi = zext i32 %.33579 to i64                 ; 8 uses
  %.val3855 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.val3855, i64 %i.fi
  %.0.copyload.i4264 = load i8, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4264) #8, !srcloc !13
  %i.fk = zext i32 %.53565 to i64                 ; 8 uses
  %.val3891 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %.val3891, i64 %i.fk
  store i8 %.0.copyload.i4264, ptr %i.fl, align 1
  %.val3854 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %.val3854, i64 %i.fi
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %.0.copyload.i4265 = load i8, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4265) #8, !srcloc !13
  %.val3890 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %.val3890, i64 %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 %.0.copyload.i4265, ptr %i.fp, align 1
  %.val3853 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %.val3853, i64 %i.fi
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %.0.copyload.i4266 = load i8, ptr %i.fr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4266) #8, !srcloc !13
  %.val3889 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val3889, i64 %i.fk
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store i8 %.0.copyload.i4266, ptr %i.ft, align 1
  %.val3852 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fu = getelementptr inbounds nuw i8, ptr %.val3852, i64 %i.fi
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %.0.copyload.i4267 = load i8, ptr %i.fv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4267) #8, !srcloc !13
  %.val3888 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.val3888, i64 %i.fk
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 3
  store i8 %.0.copyload.i4267, ptr %i.fx, align 1
  %.val3851 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %.val3851, i64 %i.fi
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %.0.copyload.i4268 = load i8, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4268) #8, !srcloc !13
  %.val3887 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ga = getelementptr inbounds nuw i8, ptr %.val3887, i64 %i.fk
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i8 %.0.copyload.i4268, ptr %i.gb, align 1
  %.val3850 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.val3850, i64 %i.fi
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 5
  %.0.copyload.i4269 = load i8, ptr %i.gd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4269) #8, !srcloc !13
  %.val3886 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %.val3886, i64 %i.fk
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 5
  store i8 %.0.copyload.i4269, ptr %i.gf, align 1
  %.val3849 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %.val3849, i64 %i.fi
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 6
  %.0.copyload.i4270 = load i8, ptr %i.gh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4270) #8, !srcloc !13
  %.val3885 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %.val3885, i64 %i.fk
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 6
  store i8 %.0.copyload.i4270, ptr %i.gj, align 1
  %.val3848 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %.val3848, i64 %i.fi
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 7
  %.0.copyload.i4271 = load i8, ptr %i.gl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4271) #8, !srcloc !13
  %.val3884 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gm = getelementptr inbounds nuw i8, ptr %.val3884, i64 %i.fk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 7
  store i8 %.0.copyload.i4271, ptr %i.gn, align 1
  %i.go = add i32 %.53565, 8                      ; 2 uses
  %i.gp = add i32 %.33579, 8                      ; 2 uses
  %.not3683 = icmp eq i32 %i.gp, %.13567
  br i1 %.not3683, label %.loopexit4606, label %.preheader4605

.loopexit4606:                                    ; preds = %.preheader4605, %.loopexit4608, %bb.r
  %.6 = phi i32 [ %.23562, %bb.r ], [ %.43564, %.loopexit4608 ], [ %i.go, %.preheader4605 ]
  %i.gq = zext i32 %.6 to i64
  %.val3883 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %.val3883, i64 %i.gq
  store i8 0, ptr %i.gr, align 1
  %i.gs = add nuw nsw i64 %i.ag, 99               ; 2 uses
  %.val4234 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gt = getelementptr inbounds nuw i8, ptr %.val4234, i64 %i.gs
  %.0.copyload.i4272 = load i8, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4272) #8, !srcloc !34
  %i.gu = icmp slt i8 %.0.copyload.i4272, 0
  br i1 %i.gu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit4606
  %.val4082 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gv = getelementptr inbounds nuw i8, ptr %.val4082, i64 %i.ao
  %.0.copyload.i4273 = load i32, ptr %i.gv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4273) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4273) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit4606
  %i.gw = add nuw nsw i64 %i.ag, 152              ; 2 uses
  %.val4081 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gx = getelementptr inbounds nuw i8, ptr %.val4081, i64 %i.gw
  %.0.copyload.i4274 = load i32, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4274) #8, !srcloc !14
  %.val4166 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %.val4166, i64 %i.am
  store i32 %.0.copyload.i4274, ptr %i.gy, align 1
  %.val4212 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.gz = getelementptr inbounds nuw i8, ptr %.val4212, i64 %i.dv
  %.0.copyload.i4275 = load i64, ptr %i.gz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4275) #8, !srcloc !33
  %.val4192 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %.val4192, i64 %i.ao
  store i64 %.0.copyload.i4275, ptr %i.ha, align 1
  %.val4080 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %.val4080, i64 %i.u
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %.0.copyload.i4276 = load i32, ptr %i.hc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4276) #8, !srcloc !14
  %.not3684 = icmp eq i32 %.0.copyload.i4276, 0
  br i1 %.not3684, label %.loopexit4604, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val4079 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.hd = getelementptr inbounds nuw i8, ptr %.val4079, i64 %i.aa
  %.0.copyload.i4277 = load i32, ptr %i.hd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4277) #8, !srcloc !14
  %i.he = add i32 %i.ae, -60
  %i.hf = zext i32 %.0.copyload.i4276 to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ab ], [ 0, %bb.v ] ; 2 uses
  %i.hg = trunc nuw i64 %indvars.iv to i32
  %i.hh = shl i32 %i.hg, 3
  %i.hi = add i32 %i.hh, %.0.copyload.i4277
  %i.hj = zext i32 %i.hi to i64                   ; 2 uses
  %.val4078 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %.val4078, i64 %i.hj
  %.0.copyload.i4278 = load i32, ptr %i.hk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4278) #8, !srcloc !14
  %i.hl = add i32 %.0.copyload.i4278, -1
  %or.cond.not = icmp ult i32 %i.hl, %.13567
  br i1 %or.cond.not, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %.val4077 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %.val4077, i64 %i.hj
end_hunk_1
begin_hunk_2_@w2c_hermes_llvh0x3A0x3ASourceMgr0x3A0x3APrintMessage0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ASourceMgr0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cllvh0x3A0x3ASMRange0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cllvh0x3A0x3ASMFixIt0x3E0x2C0x20bool0x290x20const:bb.a
  %i.hy = tail call i32 @llvm.umin.i32(i32 %.13567, i32 %.0.copyload.i4279)
  %i.hz = sub i32 %i.hy, %.03590
  %i.ia = zext i32 %i.hz to i64
  %i.ib = shl nuw i64 %i.ia, 32
  %i.ic = or disjoint i64 %i.ib, %i.hx
  %i.id = zext i32 %i.hv to i64
  %.val4191 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ie = getelementptr inbounds nuw i8, ptr %.val4191, i64 %i.id
  store i64 %i.ic, ptr %i.ie, align 1
  %.val4072 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.if = getelementptr inbounds nuw i8, ptr %.val4072, i64 %i.ah
  %.0.copyload.i4284 = load i32, ptr %i.if, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4284) #8, !srcloc !14
  %i.ig = add i32 %.0.copyload.i4284, 1
  %.val4165 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ih = getelementptr inbounds nuw i8, ptr %.val4165, i64 %i.ah
  store i32 %i.ig, ptr %i.ih, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not3687 = icmp eq i64 %indvars.iv.next, %i.hf
  br i1 %.not3687, label %.loopexit4604, label %bb.w

.loopexit4604:                                    ; preds = %bb.ab, %bb.u
  tail call void @w2c_hermes_llvh0x3A0x3ASourceMgr0x3A0x3AFindLine0x28llvh0x3A0x3ASMLoc0x2C0x20unsigned0x20int0x290x20const(ptr noundef nonnull %0, i32 noundef %i.cg, i32 noundef %1, i32 noundef %2, i32 noundef %.03555)
  %.val4071 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %.val4071, i64 %i.dv
  %.0.copyload.i4285 = load i32, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4285) #8, !srcloc !14
  %i.ij = sub i32 %2, %.0.copyload.i4285
  %.val4070 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %.val4070, i64 %i.gw
  %.0.copyload.i4286 = load i32, ptr %i.ik, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4286) #8, !srcloc !14
  %.val4069 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %.val4069, i64 %i.ag
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 92
  %.0.copyload.i4287 = load i32, ptr %i.im, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4287) #8, !srcloc !14
  %.val3847 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %.val3847, i64 %i.gs
  %.0.copyload.i4288 = load i8, ptr %i.in, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4288) #8, !srcloc !13
  %i.io = zext i8 %.0.copyload.i4288 to i32
  %.val4068 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %.val4068, i64 %i.ao
  %.0.copyload.i4289 = load i32, ptr %i.ip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4289) #8, !srcloc !14
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %.loopexit4604
  %.pre-phi4632 = phi i64 [ %.pre4631, %._crit_edge ], [ %i.dv, %.loopexit4604 ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.cg, %.loopexit4604 ] ; 2 uses
  %.53581 = phi i32 [ 0, %._crit_edge ], [ %.0.copyload.i4287, %.loopexit4604 ]
  %.23568 = phi i32 [ 0, %._crit_edge ], [ %.0.copyload.i4286, %.loopexit4604 ]
  %.8 = phi i32 [ 0, %._crit_edge ], [ %i.io, %.loopexit4604 ] ; 2 uses
  %.13554 = phi i32 [ -1, %._crit_edge ], [ %i.ij, %.loopexit4604 ]
  %.03552 = phi i32 [ 59365, %._crit_edge ], [ %.0.copyload.i4258, %.loopexit4604 ]
  %.03551 = phi i32 [ 9, %._crit_edge ], [ %.0.copyload.i4257, %.loopexit4604 ]
  %.03547 = phi i32 [ 0, %._crit_edge ], [ %.0.copyload.i4289, %.loopexit4604 ]
  %.val4164 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.iq = getelementptr inbounds nuw i8, ptr %.val4164, i64 %i.ag
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 84
  store i32 %.03551, ptr %i.ir, align 1
  %i.is = add nuw nsw i64 %i.ag, 80               ; 2 uses
  %.val4163 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.it = getelementptr inbounds nuw i8, ptr %.val4163, i64 %i.is
  store i32 %.03552, ptr %i.it, align 1
  tail call void @w2c_hermes_llvh0x3A0x3ATwine0x3A0x3Astr0x280x290x20const(ptr noundef nonnull %0, i32 noundef %.pre-phi, i32 noundef %4)
  %.not3688 = icmp samesign ult i32 %.8, 128      ; 2 uses
  %i.iu = select i1 %.not3688, i32 %.8, i32 %.53581
  %.val4162 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.iv = getelementptr inbounds nuw i8, ptr %.val4162, i64 %i.ag
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 68
  store i32 %i.iu, ptr %i.iw, align 1
  %i.ix = add i32 %i.ae, -72
  %i.iy = select i1 %.not3688, i32 %i.ix, i32 %.03547
  %i.iz = add nuw nsw i64 %i.ag, 64               ; 2 uses
  %.val4161 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.val4161, i64 %i.iz
  store i32 %i.iy, ptr %i.ja, align 1
  %.val4211 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jb = getelementptr inbounds nuw i8, ptr %.val4211, i64 %i.ak
  %.0.copyload.i4290 = load i64, ptr %i.jb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4290) #8, !srcloc !33
  %.val4190 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %.val4190, i64 %i.ag
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  store i64 %.0.copyload.i4290, ptr %i.jd, align 1
  %.val4067 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.je = getelementptr inbounds nuw i8, ptr %.val4067, i64 %.pre-phi4632
  %.0.copyload.i4291 = load i32, ptr %i.je, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4291) #8, !srcloc !14
  %i.jf = add nuw nsw i64 %i.ag, 155              ; 2 uses
  %.val3846 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.val3846, i64 %i.jf
  %.0.copyload.i4292 = load i8, ptr %i.jg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4292) #8, !srcloc !13
  %i.jh = zext i8 %.0.copyload.i4292 to i32
  %.not3689 = icmp sgt i8 %.0.copyload.i4292, -1  ; 2 uses
  %i.ji = select i1 %.not3689, i32 %.pre-phi, i32 %.0.copyload.i4291
  %i.jj = add nuw nsw i64 %i.ag, 72               ; 2 uses
  %.val4160 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %.val4160, i64 %i.jj
  store i32 %i.ji, ptr %i.jk, align 1
  %.val4066 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jl = getelementptr inbounds nuw i8, ptr %.val4066, i64 %i.ag
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 148
  %.0.copyload.i4293 = load i32, ptr %i.jm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4293) #8, !srcloc !14
  %i.jn = select i1 %.not3689, i32 %i.jh, i32 %.0.copyload.i4293
  %.val4159 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jo = getelementptr inbounds nuw i8, ptr %.val4159, i64 %i.ag
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 76
  store i32 %i.jn, ptr %i.jp, align 1
  %.val4210 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jq = getelementptr inbounds nuw i8, ptr %.val4210, i64 %i.u
  %.0.copyload.i4294 = load i64, ptr %i.jq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4294) #8, !srcloc !33
  %i.jr = add nuw nsw i64 %i.ag, 8                ; 2 uses
  %.val4189 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.js = getelementptr inbounds nuw i8, ptr %.val4189, i64 %i.jr
  store i64 %.0.copyload.i4294, ptr %i.js, align 1
  %.val4188 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jt = getelementptr inbounds nuw i8, ptr %.val4188, i64 %i.ag
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  store i64 %.0.copyload.i4294, ptr %i.ju, align 1
  %.val4209 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jv = getelementptr inbounds nuw i8, ptr %.val4209, i64 %i.is
  %.0.copyload.i4295 = load i64, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4295) #8, !srcloc !33
  %i.jw = add nuw nsw i64 %i.ag, 40               ; 2 uses
  %.val4187 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jx = getelementptr inbounds nuw i8, ptr %.val4187, i64 %i.jw
  store i64 %.0.copyload.i4295, ptr %i.jx, align 1
  %.val4208 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.jy = getelementptr inbounds nuw i8, ptr %.val4208, i64 %i.jj
  %.0.copyload.i4296 = load i64, ptr %i.jy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4296) #8, !srcloc !33
  %i.jz = add nuw nsw i64 %i.ag, 32               ; 2 uses
  %.val4186 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ka = getelementptr inbounds nuw i8, ptr %.val4186, i64 %i.jz
  store i64 %.0.copyload.i4296, ptr %i.ka, align 1
  %.val4207 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.kb = getelementptr inbounds nuw i8, ptr %.val4207, i64 %i.iz
  %.0.copyload.i4297 = load i64, ptr %i.kb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4297) #8, !srcloc !33
  %i.kc = add nuw nsw i64 %i.ag, 24               ; 2 uses
  %.val4185 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.kd = getelementptr inbounds nuw i8, ptr %.val4185, i64 %i.kc
  store i64 %.0.copyload.i4297, ptr %i.kd, align 1
  %i.ke = add nuw nsw i64 %i.ag, 16               ; 2 uses
  %.val4184 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.kf = getelementptr inbounds nuw i8, ptr %.val4184, i64 %i.ke
  store i64 %.0.copyload.i4290, ptr %i.kf, align 1
  %i.kg = load i32, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  %i.kh = add i32 %i.kg, -16
  store i32 %i.kh, ptr %i.a, align 8, !tbaa !20
  %i.ki = zext i32 %i.ad to i64                   ; 34 uses
  %i.kj = add nuw nsw i64 %i.ki, 4                ; 3 uses
  %.val4158 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %.val4158, i64 %i.kj
  store i32 %2, ptr %i.kk, align 1
  %.val4157 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.kl = getelementptr inbounds nuw i8, ptr %.val4157, i64 %i.ki
  store i32 %1, ptr %i.kl, align 1
  %i.km = add i32 %i.r, -152                      ; 7 uses
  %.val4065 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.kn = getelementptr inbounds nuw i8, ptr %.val4065, i64 %i.jw
  %.0.copyload.i4298 = load i32, ptr %i.kn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4298) #8, !srcloc !14
  %.not3690 = icmp eq i32 %.0.copyload.i4298, 0
  br i1 %.not3690, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ko = zext i32 %i.km to i64                   ; 2 uses
  %.val4183 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.kp = getelementptr inbounds nuw i8, ptr %.val4183, i64 %i.ko
  store i64 0, ptr %i.kp, align 1
  %.val4156 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.kq = getelementptr inbounds nuw i8, ptr %.val4156, i64 %i.ko
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store i32 0, ptr %i.kr, align 1
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac
  %.val4064 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ks = getelementptr inbounds nuw i8, ptr %.val4064, i64 %i.ag
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 44
  %.0.copyload.i4299 = load i32, ptr %i.kt, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4299) #8, !srcloc !14
  %i.ku = icmp ugt i32 %.0.copyload.i4299, 2147483631
  br i1 %i.ku, label %bb.bn, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kv = icmp samesign ugt i32 %.0.copyload.i4299, 10
  br i1 %i.kv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kw = or i32 %.0.copyload.i4299, 15           ; 2 uses
  %i.kx = add nuw nsw i32 %i.kw, 1
  %i.ky = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.kx) #8 ; 3 uses
  %9 = add nuw nsw i32 %i.kw, -2147483647
  %.val4155 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.kz = getelementptr inbounds nuw i8, ptr %.val4155, i64 %i.ki
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store i32 %9, ptr %i.la, align 1
  %.val4154 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %.val4154, i64 %i.ki
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i32 %i.ky, ptr %i.lc, align 1
  %.val4153 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ld = getelementptr inbounds nuw i8, ptr %.val4153, i64 %i.ki
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  store i32 %.0.copyload.i4299, ptr %i.le, align 1
  %i.lf = add i32 %i.ky, %.0.copyload.i4299
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %.val3882 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.lg = trunc nuw nsw i32 %.0.copyload.i4299 to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %.val3882, i64 %i.ki
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 19
  store i8 %i.lg, ptr %i.li, align 1
  %i.lj = add i32 %.0.copyload.i4299, %i.km       ; 2 uses
  %.not3691 = icmp eq i32 %.0.copyload.i4299, 0
  br i1 %.not3691, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.13591 = phi i32 [ %i.ky, %bb.ag ], [ %i.km, %bb.ah ]
  %.03587 = phi i32 [ %i.lf, %bb.ag ], [ %i.lj, %bb.ah ]
  %i.lk = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.13591, i32 noundef %.0.copyload.i4298, i32 noundef %.0.copyload.i4299) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.13588 = phi i32 [ %.03587, %bb.ai ], [ %i.lj, %bb.ah ]
  %i.ll = zext i32 %.13588 to i64
  %.val3881 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.lm = getelementptr inbounds nuw i8, ptr %.val3881, i64 %i.ll
  store i8 0, ptr %i.lm, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  %i.ln = add nuw nsw i64 %i.ki, 28               ; 2 uses
  %.val4152 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.lo = getelementptr inbounds nuw i8, ptr %.val4152, i64 %i.ln
  store i32 %3, ptr %i.lo, align 1
  %i.lp = add nuw nsw i64 %i.ki, 24               ; 6 uses
  %.val4151 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %.val4151, i64 %i.lp
  store i32 %.13554, ptr %i.lq, align 1
  %i.lr = add nuw nsw i64 %i.ki, 20               ; 4 uses
  %.val4150 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ls = getelementptr inbounds nuw i8, ptr %.val4150, i64 %i.lr
  store i32 %.23568, ptr %i.ls, align 1
  %i.lt = add i32 %i.r, -128                      ; 5 uses
  %.val4063 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.lu = getelementptr inbounds nuw i8, ptr %.val4063, i64 %i.jz
  %.0.copyload.i4300 = load i32, ptr %i.lu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4300) #8, !srcloc !14
  %.not3692 = icmp eq i32 %.0.copyload.i4300, 0
  br i1 %.not3692, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.lv = zext i32 %i.lt to i64                   ; 2 uses
  %.val4182 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.lw = getelementptr inbounds nuw i8, ptr %.val4182, i64 %i.lv
  store i64 0, ptr %i.lw, align 1
  %.val4149 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.lx = getelementptr inbounds nuw i8, ptr %.val4149, i64 %i.lv
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i32 0, ptr %i.ly, align 1
  br label %bb.as

bb.am:                                            ; preds = %bb.ak
  %.val4062 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.lz = getelementptr inbounds nuw i8, ptr %.val4062, i64 %i.ag
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 36
  %.0.copyload.i4301 = load i32, ptr %i.ma, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4301) #8, !srcloc !14
  %i.mb = icmp ugt i32 %.0.copyload.i4301, 2147483631
  br i1 %i.mb, label %bb.bn, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mc = icmp samesign ugt i32 %.0.copyload.i4301, 10
  br i1 %i.mc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.md = or i32 %.0.copyload.i4301, 15           ; 2 uses
  %i.me = add nuw nsw i32 %i.md, 1
  %i.mf = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.me) #8 ; 3 uses
  %10 = add nuw nsw i32 %i.md, -2147483647
  %.val4148 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %.val4148, i64 %i.ki
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 40
  store i32 %10, ptr %i.mh, align 1
  %.val4147 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.mi = getelementptr inbounds nuw i8, ptr %.val4147, i64 %i.ki
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  store i32 %i.mf, ptr %i.mj, align 1
  %.val4146 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.mk = getelementptr inbounds nuw i8, ptr %.val4146, i64 %i.ki
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 36
  store i32 %.0.copyload.i4301, ptr %i.ml, align 1
  %i.mm = add i32 %i.mf, %.0.copyload.i4301
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %.val3880 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.mn = trunc nuw nsw i32 %.0.copyload.i4301 to i8
  %i.mo = getelementptr inbounds nuw i8, ptr %.val3880, i64 %i.ki
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 43
  store i8 %i.mn, ptr %i.mp, align 1
  %i.mq = add i32 %.0.copyload.i4301, %i.lt       ; 2 uses
  %.not3693 = icmp eq i32 %.0.copyload.i4301, 0
  br i1 %.not3693, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.23592 = phi i32 [ %i.mf, %bb.ao ], [ %i.lt, %bb.ap ]
  %.63582 = phi i32 [ %i.mm, %bb.ao ], [ %i.mq, %bb.ap ]
  %i.mr = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.23592, i32 noundef %.0.copyload.i4300, i32 noundef %.0.copyload.i4301) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.73583 = phi i32 [ %.63582, %bb.aq ], [ %i.mq, %bb.ap ]
  %i.ms = zext i32 %.73583 to i64
  %.val3879 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.mt = getelementptr inbounds nuw i8, ptr %.val3879, i64 %i.ms
  store i8 0, ptr %i.mt, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.al
  %i.mu = add i32 %i.r, -116                      ; 9 uses
  %.val4061 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.mv = getelementptr inbounds nuw i8, ptr %.val4061, i64 %i.kc
  %.0.copyload.i4302 = load i32, ptr %i.mv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4302) #8, !srcloc !14
  %.not3694 = icmp eq i32 %.0.copyload.i4302, 0
  br i1 %.not3694, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.mw = zext i32 %i.mu to i64                   ; 2 uses
  %.val4181 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.mx = getelementptr inbounds nuw i8, ptr %.val4181, i64 %i.mw
  store i64 0, ptr %i.mx, align 1
  %.val4145 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.my = getelementptr inbounds nuw i8, ptr %.val4145, i64 %i.mw
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i32 0, ptr %i.mz, align 1
  br label %bb.ba

bb.au:                                            ; preds = %bb.as
  %.val4060 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.na = getelementptr inbounds nuw i8, ptr %.val4060, i64 %i.ag
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 28
  %.0.copyload.i4303 = load i32, ptr %i.nb, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4303) #8, !srcloc !14
  %i.nc = icmp ugt i32 %.0.copyload.i4303, 2147483631
  br i1 %i.nc, label %bb.bn, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nd = icmp samesign ugt i32 %.0.copyload.i4303, 10
  br i1 %i.nd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ne = or i32 %.0.copyload.i4303, 15           ; 2 uses
  %i.nf = add nuw nsw i32 %i.ne, 1
  %i.ng = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.nf) #8 ; 3 uses
  %11 = add nuw nsw i32 %i.ne, -2147483647
  %.val4144 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.nh = getelementptr inbounds nuw i8, ptr %.val4144, i64 %i.ki
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 52
  store i32 %11, ptr %i.ni, align 1
  %.val4143 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.nj = getelementptr inbounds nuw i8, ptr %.val4143, i64 %i.ki
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 44
  store i32 %i.ng, ptr %i.nk, align 1
  %.val4142 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.nl = getelementptr inbounds nuw i8, ptr %.val4142, i64 %i.ki
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  store i32 %.0.copyload.i4303, ptr %i.nm, align 1
  %i.nn = add i32 %i.ng, %.0.copyload.i4303
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %.val3878 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.no = trunc nuw nsw i32 %.0.copyload.i4303 to i8
  %i.np = getelementptr inbounds nuw i8, ptr %.val3878, i64 %i.ki
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 55
  store i8 %i.no, ptr %i.nq, align 1
  %i.nr = add i32 %.0.copyload.i4303, %i.mu       ; 2 uses
  %.not3695 = icmp eq i32 %.0.copyload.i4303, 0
  br i1 %.not3695, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.33593 = phi i32 [ %i.ng, %bb.aw ], [ %i.mu, %bb.ax ]
  %.83584 = phi i32 [ %i.nn, %bb.aw ], [ %i.nr, %bb.ax ]
  %i.ns = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.33593, i32 noundef %.0.copyload.i4302, i32 noundef %.0.copyload.i4303) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.93585 = phi i32 [ %.83584, %bb.ay ], [ %i.nr, %bb.ax ]
  %i.nt = zext i32 %.93585 to i64
  %.val3877 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.nu = getelementptr inbounds nuw i8, ptr %.val3877, i64 %i.nt
  store i8 0, ptr %i.nu, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.at
  %.val4059 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.nv = getelementptr inbounds nuw i8, ptr %.val4059, i64 %i.ke
  %.0.copyload.i4304 = load i32, ptr %i.nv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4304) #8, !srcloc !14
  %.val4058 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.nw = getelementptr inbounds nuw i8, ptr %.val4058, i64 %i.ag
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 20
  %.0.copyload.i4305 = load i32, ptr %i.nx, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4305) #8, !srcloc !14
  %i.ny = add i32 %i.r, -96
  %i.nz = zext i32 %i.ny to i64
  %.val4141 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.oa = getelementptr inbounds nuw i8, ptr %.val4141, i64 %i.nz
  store i32 0, ptr %i.oa, align 1
  %i.ob = add nuw nsw i64 %i.ki, 56               ; 4 uses
  %.val4180 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.oc = getelementptr inbounds nuw i8, ptr %.val4180, i64 %i.ob
  store i64 0, ptr %i.oc, align 1
  %.not3696 = icmp eq i32 %.0.copyload.i4305, 0
  br i1 %.not3696, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.od = icmp slt i32 %.0.copyload.i4305, 0
  br i1 %i.od, label %bb.bn, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.oe = shl i32 %.0.copyload.i4305, 3           ; 4 uses
  %i.of = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.oe) #8 ; 3 uses
  %.val4140 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.og = getelementptr inbounds nuw i8, ptr %.val4140, i64 %i.ob
  store i32 %i.of, ptr %i.og, align 1
  %i.oh = add i32 %i.of, %i.oe
  %.val4139 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.oi = getelementptr inbounds nuw i8, ptr %.val4139, i64 %i.ki
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  store i32 %i.oh, ptr %i.oj, align 1
  %i.ok = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.of, i32 noundef %.0.copyload.i4304, i32 noundef %i.oe) #8
  %i.ol = add i32 %i.ok, %i.oe
  %.val4138 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.om = getelementptr inbounds nuw i8, ptr %.val4138, i64 %i.ki
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 60
  store i32 %i.ol, ptr %i.on, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.val4057 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.oo = getelementptr inbounds nuw i8, ptr %.val4057, i64 %i.jr
  %.0.copyload.i4306 = load i32, ptr %i.oo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4306) #8, !srcloc !14
  %.val4056 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.op = getelementptr inbounds nuw i8, ptr %.val4056, i64 %i.ag
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 12
  %.0.copyload.i4307 = load i32, ptr %i.oq, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4307) #8, !srcloc !14
  %i.or = add nuw nsw i64 %i.ki, 72               ; 5 uses
  %.val4179 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.os = getelementptr inbounds nuw i8, ptr %.val4179, i64 %i.or
  store i64 17179869184, ptr %i.os, align 1
  %i.ot = add i32 %i.r, -80                       ; 2 uses
  %i.ou = add nuw nsw i64 %i.ki, 68               ; 3 uses
  %.val4137 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ov = getelementptr inbounds nuw i8, ptr %.val4137, i64 %i.ou
  store i32 %i.ot, ptr %i.ov, align 1
  %i.ow = add i32 %i.r, -92                       ; 2 uses
  %i.ox = icmp ugt i32 %.0.copyload.i4307, 4
  br i1 %i.ox, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorTemplateBase0x3Cllvh0x3A0x3ASMFixIt0x2C0x20false0x3E0x3A0x3Agrow0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ow, i32 noundef %.0.copyload.i4307)
  %.val4055 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.oy = getelementptr inbounds nuw i8, ptr %.val4055, i64 %i.or
  %.0.copyload.i4308 = load i32, ptr %i.oy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4308) #8, !srcloc !14
  %i.oz = mul i32 %.0.copyload.i4308, 20
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %.not3697 = icmp eq i32 %.0.copyload.i4307, 0
  br i1 %.not3697, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.43594 = phi i32 [ %i.oz, %bb.be ], [ 0, %bb.bf ]
  %i.pa = mul i32 %.0.copyload.i4307, 20
  %i.pb = add i32 %i.pa, %.0.copyload.i4306
  %i.pc = zext i32 %i.ow to i64
  %.val4054 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pd = getelementptr inbounds nuw i8, ptr %.val4054, i64 %i.pc
  %.0.copyload.i4309 = load i32, ptr %i.pd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4309) #8, !srcloc !14
  %i.pe = add i32 %.0.copyload.i4309, %.43594
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %bb.bg
  %.53595 = phi i32 [ %i.pe, %bb.bg ], [ %i.px, %bb.bk ] ; 3 uses
  %.23589 = phi i32 [ %.0.copyload.i4306, %bb.bg ], [ %i.py, %bb.bk ] ; 2 uses
  %i.pf = zext i32 %.23589 to i64                 ; 5 uses
  %.val4206 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pg = getelementptr inbounds nuw i8, ptr %.val4206, i64 %i.pf
  %.0.copyload.i4310 = load i64, ptr %i.pg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4310) #8, !srcloc !33
  %i.ph = zext i32 %.53595 to i64
  %.val4178 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pi = getelementptr inbounds nuw i8, ptr %.val4178, i64 %i.ph
  store i64 %.0.copyload.i4310, ptr %i.pi, align 1
  %i.pj = add i32 %.53595, 8                      ; 2 uses
  %.val4233 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pk = getelementptr inbounds nuw i8, ptr %.val4233, i64 %i.pf
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 19
  %.0.copyload.i4311 = load i8, ptr %i.pl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4311) #8, !srcloc !34
  %i.pm = icmp sgt i8 %.0.copyload.i4311, -1
  %.val4205 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pn = getelementptr inbounds nuw i8, ptr %.val4205, i64 %i.pf
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 2 uses
  br i1 %i.pm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.0.copyload.i4312 = load i64, ptr %i.po, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4312) #8, !srcloc !33
  %i.pp = zext i32 %i.pj to i64                   ; 2 uses
  %.val4177 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pq = getelementptr inbounds nuw i8, ptr %.val4177, i64 %i.pp
  store i64 %.0.copyload.i4312, ptr %i.pq, align 1
  %.val4053 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pr = getelementptr inbounds nuw i8, ptr %.val4053, i64 %i.pf
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %.0.copyload.i4313 = load i32, ptr %i.ps, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4313) #8, !srcloc !14
  %.val4136 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pt = getelementptr inbounds nuw i8, ptr %.val4136, i64 %i.pp
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store i32 %.0.copyload.i4313, ptr %i.pu, align 1
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %.0.copyload.i4314 = load i32, ptr %i.po, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4314) #8, !srcloc !14
  %.val4051 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pv = getelementptr inbounds nuw i8, ptr %.val4051, i64 %i.pf
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 12
  %.0.copyload.i4315 = load i32, ptr %i.pw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4315) #8, !srcloc !14
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Finit_copy_ctor_external0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.pj, i32 noundef %.0.copyload.i4314, i32 noundef %.0.copyload.i4315) #8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.px = add i32 %.53595, 20
  %i.py = add i32 %.23589, 20                     ; 2 uses
  %.not3698 = icmp eq i32 %i.py, %i.pb
  br i1 %.not3698, label %bb.bl, label %bb.bh

bb.bl:                                            ; preds = %bb.bk
  %.val4050 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.pz = getelementptr inbounds nuw i8, ptr %.val4050, i64 %i.or
  %.0.copyload.i4316 = load i32, ptr %i.pz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4316) #8, !srcloc !14
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bf, %bb.bl
  %.0 = phi i32 [ %.0.copyload.i4316, %bb.bl ], [ 0, %bb.bf ]
end_hunk_2
begin_hunk_3_@w2c_hermes_llvh0x3A0x3ASourceMgr0x3A0x3APrintMessage0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ASourceMgr0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cllvh0x3A0x3ASMRange0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cllvh0x3A0x3ASMFixIt0x3E0x2C0x20bool0x290x20const:bb.a
  %.0.copyload.i4437 = load i32, ptr %i.aif, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4437) #8, !srcloc !14
  %.not3727 = icmp ult i32 %.0.copyload.i4436, %.0.copyload.i4437
  br i1 %.not3727, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %func_types_eq.exit4432.thread
  %i.aig = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28unsigned0x20char0x29(ptr noundef nonnull %0, i32 noundef 282944, i32 noundef 10) ; 0 uses
  br label %bb.fd

bb.fc:                                            ; preds = %func_types_eq.exit4432.thread
  %i.aih = add nuw i32 %.0.copyload.i4436, 1
  %.val4120 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aii = getelementptr inbounds nuw i8, ptr %.val4120, i64 282956
  store i32 %i.aih, ptr %i.aii, align 1
  %i.aij = zext i32 %.0.copyload.i4436 to i64
  %.val3873 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aik = getelementptr inbounds nuw i8, ptr %.val3873, i64 %i.aij
  store i8 10, ptr %i.aik, align 1
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fb, %bb.fc
  %.val3973 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ail = getelementptr inbounds nuw i8, ptr %.val3973, i64 282944
  %.0.copyload.i4438 = load i32, ptr %i.ail, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4438) #8, !srcloc !14
  %i.aim = zext i32 %.0.copyload.i4438 to i64
  %.val3972 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ain = getelementptr inbounds nuw i8, ptr %.val3972, i64 %i.aim
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 12
  %.0.copyload.i4439 = load i32, ptr %i.aio, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4439) #8, !srcloc !14
  %i.aip = load i32, ptr %i.ub, align 4, !tbaa !21
  %i.aiq = icmp ult i32 %.0.copyload.i4439, %i.aip
  br i1 %i.aiq, label %bb.fe, label %.critedge3806, !prof !22

bb.fe:                                            ; preds = %bb.fd
  %i.air = load ptr, ptr %i.ua, align 8, !tbaa !23
  %i.ais = zext i32 %.0.copyload.i4439 to i64
  %i.ait = getelementptr inbounds nuw [24 x i8], ptr %i.air, i64 %i.ais ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !25 ; 2 uses
  %.not3728 = icmp eq ptr %i.aiv, null
  br i1 %.not3728, label %.critedge3806, label %bb.ff, !prof !26

bb.ff:                                            ; preds = %bb.fe
  %i.aiw = load ptr, ptr %i.ait, align 8, !tbaa !28 ; 4 uses
  %i.aix = icmp eq ptr %i.uj, %i.aiw
  br i1 %i.aix, label %func_types_eq.exit4443.thread, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aiy = icmp ne ptr %i.uj, null
  %i.aiz = icmp ne ptr %i.aiw, null
  %or.cond.i4440 = and i1 %i.aiy, %i.aiz
  br i1 %or.cond.i4440, label %func_types_eq.exit4443, label %.critedge3806, !prof !29

func_types_eq.exit4443:                           ; preds = %bb.fg
  %i.aja = load i128, ptr %i.uj, align 1
  %i.ajb = load i128, ptr %i.aiw, align 1
  %i.ajc = xor i128 %i.aja, %i.ajb
  %i.ajd = getelementptr i8, ptr %i.uj, i64 16
  %i.aje = getelementptr i8, ptr %i.aiw, i64 16
  %i.ajf = load i128, ptr %i.ajd, align 1
  %i.ajg = load i128, ptr %i.aje, align 1
  %i.ajh = xor i128 %i.ajf, %i.ajg
  %i.aji = or i128 %i.ajc, %i.ajh
  %i.ajj = icmp ne i128 %i.aji, 0
  %i.ajk = zext i1 %i.ajj to i32
  %.not.i4442 = icmp eq i32 %i.ajk, 0
  br i1 %.not.i4442, label %func_types_eq.exit4443.thread, label %.critedge3806, !prof !32

.critedge3806:                                    ; preds = %bb.fg, %bb.fe, %bb.fd, %func_types_eq.exit4443
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit4443.thread:                    ; preds = %bb.ff, %func_types_eq.exit4443
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ait, i64 16
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !31
  %i.ajn = tail call i32 %i.aiv(ptr noundef %i.ajm, i32 noundef 282944) #8 ; 0 uses
  br label %bb.fk

bb.fh:                                            ; preds = %bb.et
  %i.ajo = getelementptr inbounds nuw i8, ptr %.val3971, i64 %i.ki
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 32
  %.0.copyload.i4444 = load i32, ptr %i.ajp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4444) #8, !srcloc !14
  %.val3841 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ajq = getelementptr inbounds nuw i8, ptr %.val3841, i64 %i.ki
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 43
  %.0.copyload.i4445 = load i8, ptr %i.ajr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4445) #8, !srcloc !13
  %i.ajs = zext i8 %.0.copyload.i4445 to i32
  %.not3722 = icmp sgt i8 %.0.copyload.i4445, -1  ; 2 uses
  %i.ajt = select i1 %.not3722, i32 %i.lt, i32 %.0.copyload.i4444
  %.val3970 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aju = getelementptr inbounds nuw i8, ptr %.val3970, i64 %i.ki
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 36
  %.0.copyload.i4446 = load i32, ptr %i.ajv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4446) #8, !srcloc !14
  %i.ajw = select i1 %.not3722, i32 %i.ajs, i32 %.0.copyload.i4446
  %i.ajx = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 282944, i32 noundef %i.ajt, i32 noundef %i.ajw) ; 0 uses
  %.val3969 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ajy = getelementptr inbounds nuw i8, ptr %.val3969, i64 282956
  %.0.copyload.i4447 = load i32, ptr %i.ajy, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4447) #8, !srcloc !14
  %.val3968 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ajz = getelementptr inbounds nuw i8, ptr %.val3968, i64 282952
  %.0.copyload.i4448 = load i32, ptr %i.ajz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4448) #8, !srcloc !14
  %.not3723 = icmp ult i32 %.0.copyload.i4447, %.0.copyload.i4448
  br i1 %.not3723, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aka = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28unsigned0x20char0x29(ptr noundef nonnull %0, i32 noundef 282944, i32 noundef 10) ; 0 uses
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.akb = add nuw i32 %.0.copyload.i4447, 1
  %.val4119 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.akc = getelementptr inbounds nuw i8, ptr %.val4119, i64 282956
  store i32 %i.akb, ptr %i.akc, align 1
  %i.akd = zext i32 %.0.copyload.i4447 to i64
  %.val3872 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ake = getelementptr inbounds nuw i8, ptr %.val3872, i64 %i.akd
  store i8 10, ptr %i.ake, align 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %func_types_eq.exit4443.thread
  %.val3967 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.akf = getelementptr inbounds nuw i8, ptr %.val3967, i64 %i.lr
  %.0.copyload.i4449 = load i32, ptr %i.akf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4449) #8, !srcloc !14
  %i.akg = icmp eq i32 %.0.copyload.i4449, -1
  br i1 %i.akg, label %bb.it, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.val3966 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.akh = getelementptr inbounds nuw i8, ptr %.val3966, i64 %i.lp
  %.0.copyload.i4450 = load i32, ptr %i.akh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4450) #8, !srcloc !14
  %i.aki = icmp eq i32 %.0.copyload.i4450, -1
  br i1 %i.aki, label %bb.it, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.akj = add nuw nsw i64 %i.ki, 44              ; 2 uses
  %.val3965 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.akk = getelementptr inbounds nuw i8, ptr %.val3965, i64 %i.akj
  %.0.copyload.i4451 = load i32, ptr %i.akk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4451) #8, !srcloc !14
  %i.akl = add nuw nsw i64 %i.ki, 55              ; 5 uses
  %.val3840 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.akm = getelementptr inbounds nuw i8, ptr %.val3840, i64 %i.akl
  %.0.copyload.i4452 = load i8, ptr %i.akm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4452) #8, !srcloc !13
  %i.akn = zext i8 %.0.copyload.i4452 to i32
  %.not3729 = icmp sgt i8 %.0.copyload.i4452, -1  ; 2 uses
  %i.ako = select i1 %.not3729, i32 %i.mu, i32 %.0.copyload.i4451 ; 4 uses
  %i.akp = add nuw nsw i64 %i.ki, 48              ; 5 uses
  %.val3964 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.akq = getelementptr inbounds nuw i8, ptr %.val3964, i64 %i.akp
  %.0.copyload.i4453 = load i32, ptr %i.akq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4453) #8, !srcloc !14
  %i.akr = select i1 %.not3729, i32 %i.akn, i32 %.0.copyload.i4453 ; 5 uses
  %i.aks = add i32 %i.akr, %i.ako                 ; 2 uses
  %.not3730 = icmp eq i32 %i.akr, 0
  br i1 %.not3730, label %.loopexit4601, label %.preheader4600

.preheader4600:                                   ; preds = %bb.fm, %bb.fn
  %.73597 = phi i32 [ %i.akw, %bb.fn ], [ %i.ako, %bb.fm ] ; 3 uses
  %i.akt = zext i32 %.73597 to i64
  %.val4230 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aku = getelementptr inbounds nuw i8, ptr %.val4230, i64 %i.akt
  %.0.copyload.i4454 = load i8, ptr %i.aku, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4454) #8, !srcloc !34
  %i.akv = icmp slt i8 %.0.copyload.i4454, 0
  br i1 %i.akv, label %.loopexit4601, label %bb.fn

bb.fn:                                            ; preds = %.preheader4600
  %i.akw = add i32 %.73597, 1                     ; 2 uses
  %.not3731 = icmp eq i32 %i.akw, %i.aks
  br i1 %.not3731, label %.loopexit4602, label %.preheader4600

.loopexit4601:                                    ; preds = %.preheader4600, %bb.fm
  %.83598 = phi i32 [ %i.ako, %bb.fm ], [ %.73597, %.preheader4600 ]
  %i.akx = icmp eq i32 %.83598, %i.aks
  br i1 %i.akx, label %.loopexit4602, label %bb.fo

bb.fo:                                            ; preds = %.loopexit4601
  tail call void @w2c_hermes_printSourceLine0x28llvh0x3A0x3Araw_ostream0x260x2C0x20llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef 282944, i32 noundef %i.ako, i32 noundef %i.akr) #8
  br label %bb.it

.loopexit4602:                                    ; preds = %bb.fn, %.loopexit4601
  %i.aky = add i32 %i.akr, 1                      ; 8 uses
  %i.akz = icmp ugt i32 %i.aky, 2147483631
  br i1 %i.akz, label %bb.iu, label %bb.fp

bb.fp:                                            ; preds = %.loopexit4602
  %i.ala = icmp samesign ugt i32 %i.aky, 10
  br i1 %i.ala, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.alb = or i32 %i.aky, 15                      ; 2 uses
  %i.alc = add nuw nsw i32 %i.alb, 1
  %i.ald = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.alc) #8 ; 2 uses
  %12 = add nuw nsw i32 %i.alb, -2147483647
  %i.ale = zext i32 %i.tv to i64                  ; 3 uses
  %.val4118 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.alf = getelementptr inbounds nuw i8, ptr %.val4118, i64 %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 28
  store i32 %12, ptr %i.alg, align 1
  %.val4117 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.alh = getelementptr inbounds nuw i8, ptr %.val4117, i64 %i.ale
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 20
  store i32 %i.ald, ptr %i.ali, align 1
  %.val4116 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.alj = getelementptr inbounds nuw i8, ptr %.val4116, i64 %i.ale
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 24
  store i32 %i.aky, ptr %i.alk, align 1
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %i.all = zext i32 %i.tv to i64
  %.val3871 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.alm = trunc nuw nsw i32 %i.aky to i8
  %i.aln = getelementptr inbounds nuw i8, ptr %.val3871, i64 %i.all
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 31
  store i8 %i.alm, ptr %i.alo, align 1
  %i.alp = add i32 %i.tu, -28                     ; 2 uses
  %.not3732 = icmp eq i32 %i.aky, 0
  br i1 %.not3732, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.43570 = phi i32 [ %i.ald, %bb.fq ], [ %i.alp, %bb.fr ] ; 2 uses
  %i.alq = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.43570, i32 noundef 32, i32 noundef %i.aky) #8 ; 0 uses
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %.53571 = phi i32 [ %.43570, %bb.fs ], [ %i.alp, %bb.fr ]
  %i.alr = add i32 %.53571, %i.aky
  %i.als = zext i32 %i.alr to i64
  %.val3870 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.alt = getelementptr inbounds nuw i8, ptr %.val3870, i64 %i.als
  store i8 0, ptr %i.alt, align 1
  %.val3963 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.alu = getelementptr inbounds nuw i8, ptr %.val3963, i64 %i.ki
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 60
  %.0.copyload.i4455 = load i32, ptr %i.alv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4455) #8, !srcloc !14
  %.val3962 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.alw = getelementptr inbounds nuw i8, ptr %.val3962, i64 %i.ob
  %.0.copyload.i4456 = load i32, ptr %i.alw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4456) #8, !srcloc !14
  %.not3733 = icmp eq i32 %.0.copyload.i4455, %.0.copyload.i4456
  br i1 %.not3733, label %..loopexit4599_crit_edge, label %bb.fu

..loopexit4599_crit_edge:                         ; preds = %bb.ft
  %.pre4633 = zext i32 %i.tv to i64
  br label %.loopexit4599

bb.fu:                                            ; preds = %bb.ft
  %i.alx = sub i32 %.0.copyload.i4455, %.0.copyload.i4456
  %i.aly = ashr i32 %i.alx, 3
  %i.alz = zext i32 %i.tv to i64                  ; 4 uses
  %i.ama = add i32 %i.tu, -28
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fx, %bb.fu
  %.93599 = phi i32 [ 0, %bb.fu ], [ %i.amw, %bb.fx ] ; 2 uses
  %.val3961 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.amb = getelementptr inbounds nuw i8, ptr %.val3961, i64 %i.alz
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 20
  %.0.copyload.i4457 = load i32, ptr %i.amc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4457) #8, !srcloc !14
  %.val3839 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.amd = getelementptr inbounds nuw i8, ptr %.val3839, i64 %i.alz
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 31
  %.0.copyload.i4458 = load i8, ptr %i.ame, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4458) #8, !srcloc !13
  %i.amf = zext i8 %.0.copyload.i4458 to i32
  %.not3734 = icmp sgt i8 %.0.copyload.i4458, -1  ; 2 uses
  %.val3960 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.amg = getelementptr inbounds nuw i8, ptr %.val3960, i64 %i.alz
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 24
  %.0.copyload.i4459 = load i32, ptr %i.amh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4459) #8, !srcloc !14
  %i.ami = select i1 %.not3734, i32 %i.amf, i32 %.0.copyload.i4459
  %.val3959 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.amj = getelementptr inbounds nuw i8, ptr %.val3959, i64 %i.ob
  %.0.copyload.i4460 = load i32, ptr %i.amj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4460) #8, !srcloc !14
  %i.amk = shl i32 %.93599, 3
  %i.aml = add i32 %.0.copyload.i4460, %i.amk
  %i.amm = zext i32 %i.aml to i64                 ; 2 uses
  %.val3958 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.amn = getelementptr inbounds nuw i8, ptr %.val3958, i64 %i.amm
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 4
  %.0.copyload.i4461 = load i32, ptr %i.amo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4461) #8, !srcloc !14
  %i.amp = tail call i32 @llvm.umin.i32(i32 %i.ami, i32 %.0.copyload.i4461)
  %.val3957 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.amq = getelementptr inbounds nuw i8, ptr %.val3957, i64 %i.amm
  %.0.copyload.i4462 = load i32, ptr %i.amq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4462) #8, !srcloc !14
  %i.amr = sub i32 %i.amp, %.0.copyload.i4462     ; 2 uses
  %i.ams = icmp sgt i32 %i.amr, 0
  br i1 %i.ams, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.amt = select i1 %.not3734, i32 %i.ama, i32 %.0.copyload.i4457
  %i.amu = add i32 %.0.copyload.i4462, %i.amt
  %i.amv = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.amu, i32 noundef 126, i32 noundef %i.amr) #8 ; 0 uses
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.amw = add i32 %.93599, 1                     ; 2 uses
  %.not3735 = icmp eq i32 %i.amw, %i.aly
  br i1 %.not3735, label %.loopexit4599, label %bb.fv

.loopexit4599:                                    ; preds = %bb.fx, %..loopexit4599_crit_edge
  %.pre-phi4634 = phi i64 [ %.pre4633, %..loopexit4599_crit_edge ], [ %i.alz, %bb.fx ] ; 16 uses
  %.val4115 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.amx = getelementptr inbounds nuw i8, ptr %.val4115, i64 %.pre-phi4634
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  store i32 0, ptr %i.amy, align 1
  %i.amz = add nuw nsw i64 %.pre-phi4634, 8       ; 6 uses
  %.val4174 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ana = getelementptr inbounds nuw i8, ptr %.val4174, i64 %i.amz
  store i64 0, ptr %i.ana, align 1
  %.val3956 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.anb = getelementptr inbounds nuw i8, ptr %.val3956, i64 %i.lp
  %.0.copyload.i4463 = load i32, ptr %i.anb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4463) #8, !srcloc !14
  %.val3955 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.anc = getelementptr inbounds nuw i8, ptr %.val3955, i64 %i.or
  %.0.copyload.i4464 = load i32, ptr %i.anc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4464) #8, !srcloc !14
  %.not3736 = icmp eq i32 %.0.copyload.i4464, 0
  br i1 %.not3736, label %.loopexit4599._crit_edge, label %bb.fy

.loopexit4599._crit_edge:                         ; preds = %.loopexit4599
  %.pre4635 = add i32 %i.tu, -28
  br label %bb.hb

bb.fy:                                            ; preds = %.loopexit4599
  %.val3954 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.and = getelementptr inbounds nuw i8, ptr %.val3954, i64 %i.kj
  %.0.copyload.i4465 = load i32, ptr %i.and, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4465) #8, !srcloc !14
  %i.ane = sub i32 %.0.copyload.i4465, %.0.copyload.i4463 ; 4 uses
  %.val3953 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.anf = getelementptr inbounds nuw i8, ptr %.val3953, i64 %i.akp
  %.0.copyload.i4466 = load i32, ptr %i.anf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4466) #8, !srcloc !14
  %.val3838 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ang = getelementptr inbounds nuw i8, ptr %.val3838, i64 %i.akl
  %.0.copyload.i4467 = load i8, ptr %i.ang, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4467) #8, !srcloc !13
  %i.anh = zext i8 %.0.copyload.i4467 to i32
  %.not37374591 = icmp slt i8 %.0.copyload.i4467, 0
  %i.ani = select i1 %.not37374591, i32 %.0.copyload.i4466, i32 %i.anh ; 2 uses
  %i.anj = add i32 %i.ani, %i.ane                 ; 2 uses
  %.val3952 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ank = getelementptr inbounds nuw i8, ptr %.val3952, i64 %i.ou
  %.0.copyload.i4468 = load i32, ptr %i.ank, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4468) #8, !srcloc !14
  %i.anl = mul i32 %.0.copyload.i4464, 20
  %i.anm = add i32 %.0.copyload.i4468, %i.anl
  %i.ann = add nuw nsw i64 %.pre-phi4634, 32      ; 2 uses
  %i.ano = add i32 %i.tu, -8
  %i.anp = add nuw nsw i64 %.pre-phi4634, 19      ; 2 uses
  %i.anq = add i32 %i.tu, -40                     ; 7 uses
  %i.anr = zext i32 %i.anq to i64                 ; 6 uses
  %i.ans = add nuw nsw i64 %i.anr, 11             ; 7 uses
  %i.ant = add i32 %i.tu, -28                     ; 2 uses
  br label %bb.fz

bb.fz:                                            ; preds = %bb.gz, %bb.fy
  %.103600 = phi i32 [ %.0.copyload.i4468, %bb.fy ], [ %i.arx, %bb.gz ] ; 3 uses
  %.11 = phi i32 [ 0, %bb.fy ], [ %.12, %bb.gz ]  ; 5 uses
  %i.anu = zext i32 %.103600 to i64               ; 5 uses
  %.val3951 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.anv = getelementptr inbounds nuw i8, ptr %.val3951, i64 %i.anu
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  %.0.copyload.i4469 = load i32, ptr %i.anw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4469) #8, !srcloc !14
  %i.anx = add i32 %.103600, 8                    ; 3 uses
  %i.any = add nuw nsw i64 %i.anu, 19             ; 3 uses
  %.val3837 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.anz = getelementptr inbounds nuw i8, ptr %.val3837, i64 %i.any
  %.0.copyload.i4470 = load i8, ptr %i.anz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4470) #8, !srcloc !13
  %i.aoa = zext i8 %.0.copyload.i4470 to i32
  %.not3738 = icmp sgt i8 %.0.copyload.i4470, -1  ; 2 uses
  %i.aob = select i1 %.not3738, i32 %i.anx, i32 %.0.copyload.i4469
  %.val4114 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aoc = getelementptr inbounds nuw i8, ptr %.val4114, i64 %.pre-phi4634
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 40
  store i32 %i.aob, ptr %i.aod, align 1
  %i.aoe = add nuw nsw i64 %i.anu, 12             ; 3 uses
  %.val3950 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aof = getelementptr inbounds nuw i8, ptr %.val3950, i64 %i.aoe
  %.0.copyload.i4471 = load i32, ptr %i.aof, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4471) #8, !srcloc !14
  %.val4113 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aog = getelementptr inbounds nuw i8, ptr %.val4113, i64 %.pre-phi4634
end_hunk_3
