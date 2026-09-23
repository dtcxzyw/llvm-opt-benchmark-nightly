Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@pcmpxstrx:bb.a
  br i1 %i.ki, label %middle.block469, label %vector.body456, !llvm.loop !54

middle.block469:                                  ; preds = %vector.body456
  %bin.rdx470 = or <4 x i1> %i.kh, %i.kg
  %bin.rdx470.fr = freeze <4 x i1> %bin.rdx470
  %i.kj = bitcast <4 x i1> %bin.rdx470.fr to i4
  %.not582 = icmp eq i4 %i.kj, 0
  %rdx.select471 = zext i1 %.not582 to i32        ; 2 uses
  %cmp.n472 = icmp eq i64 %i.io, %n.vec455
  br i1 %cmp.n472, label %._crit_edge, label %pcmp_val.exit161.us209.preheader610

pcmp_val.exit161.us209.preheader610:              ; preds = %vector.scevcheck449, %pcmp_val.exit161.us209.preheader, %middle.block469
  %indvars.iv325.ph = phi i64 [ %smin330, %vector.scevcheck449 ], [ %smin330, %pcmp_val.exit161.us209.preheader ], [ %i.jr, %middle.block469 ]
  %.0124197.us207.ph = phi i32 [ 1, %vector.scevcheck449 ], [ 1, %pcmp_val.exit161.us209.preheader ], [ %rdx.select471, %middle.block469 ]
  br label %pcmp_val.exit161.us209

pcmp_val.exit161.us201.preheader:                 ; preds = %.lr.ph
  %min.iters.check427 = icmp ult i64 %i.io, 16
  br i1 %min.iters.check427, label %pcmp_val.exit161.us201.preheader608, label %vector.scevcheck422

vector.scevcheck422:                              ; preds = %pcmp_val.exit161.us201.preheader
  %i.kk = zext i32 %i.in to i33
  %mul.overflow = icmp slt i32 %i.in, 0
  %i.kl = sub i33 %i.id, %i.kk
  %i.km = shl i33 %i.kl, 1
  %i.kn = icmp sgt i33 %i.km, %i.ie
  %i.ko = or i1 %i.kn, %mul.overflow
  br i1 %i.ko, label %pcmp_val.exit161.us201.preheader608, label %vector.ph428

vector.ph428:                                     ; preds = %vector.scevcheck422
  %n.vec429 = and i64 %i.io, 4294967288           ; 3 uses
  %i.kp = sub nsw i64 %smin330, %n.vec429
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next442, %vector.body430 ] ; 2 uses
  %vec.phi432 = phi <4 x i1> [ zeroinitializer, %vector.ph428 ], [ %i.le, %vector.body430 ]
  %vec.phi433 = phi <4 x i1> [ zeroinitializer, %vector.ph428 ], [ %i.lf, %vector.body430 ]
  %i.kq = sub i64 %smin330, %index431             ; 2 uses
  %i.kr = add nuw i64 %i.kq, %indvars.iv333
  %i.ks = shl i64 %i.kr, 32
  %i.kt = ashr exact i64 %i.ks, 31
  %i.ku = getelementptr inbounds i8, ptr %2, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 -6
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 -14
  %wide.load434 = load <4 x i16>, ptr %i.kv, align 2
  %wide.load435 = load <4 x i16>, ptr %i.kw, align 2
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.kq ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -6
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 -14
  %wide.load438 = load <4 x i16>, ptr %i.ky, align 2
  %wide.load439 = load <4 x i16>, ptr %i.kz, align 2
  %i.la = icmp ne <4 x i16> %wide.load434, %wide.load438
  %i.lb = shufflevector <4 x i1> %i.la, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lc = icmp ne <4 x i16> %wide.load435, %wide.load439
  %i.ld = shufflevector <4 x i1> %i.lc, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.le = or <4 x i1> %vec.phi432, %i.lb          ; 2 uses
  %i.lf = or <4 x i1> %vec.phi433, %i.ld          ; 2 uses
  %index.next442 = add nuw i64 %index431, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next442, %n.vec429
  br i1 %i.lg, label %middle.block443, label %vector.body430, !llvm.loop !55

middle.block443:                                  ; preds = %vector.body430
  %bin.rdx444 = or <4 x i1> %i.lf, %i.le
  %bin.rdx444.fr = freeze <4 x i1> %bin.rdx444
  %i.lh = bitcast <4 x i1> %bin.rdx444.fr to i4
  %.not583 = icmp eq i4 %i.lh, 0
  %rdx.select445 = zext i1 %.not583 to i32        ; 2 uses
  %cmp.n446 = icmp eq i64 %i.io, %n.vec429
  br i1 %cmp.n446, label %._crit_edge, label %pcmp_val.exit161.us201.preheader608

pcmp_val.exit161.us201.preheader608:              ; preds = %vector.scevcheck422, %pcmp_val.exit161.us201.preheader, %middle.block443
  %indvars.iv328.ph = phi i64 [ %smin330, %vector.scevcheck422 ], [ %smin330, %pcmp_val.exit161.us201.preheader ], [ %i.kp, %middle.block443 ]
  %.0124197.us199.ph = phi i32 [ 1, %vector.scevcheck422 ], [ 1, %pcmp_val.exit161.us201.preheader ], [ %rdx.select445, %middle.block443 ]
  br label %pcmp_val.exit161.us201

pcmp_val.exit161.us.preheader:                    ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.io, 8
  br i1 %min.iters.check, label %pcmp_val.exit161.us.preheader607, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %pcmp_val.exit161.us.preheader
  %i.li = sub i32 %i.ih, %i.in
  %i.lj = icmp sgt i32 %i.li, %i.ih
  %i.lk = icmp slt i32 %i.in, 0
  %i.ll = or i1 %i.lj, %i.lk
  br i1 %i.ll, label %pcmp_val.exit161.us.preheader607, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.io, 4294967288              ; 3 uses
  %i.lm = sub nsw i64 %smin330, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.mb, %vector.body ]
  %vec.phi415 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.mc, %vector.body ]
  %i.ln = sub i64 %smin330, %index                ; 2 uses
  %i.lo = add nuw i64 %i.ln, %indvars.iv333
  %i.lp = shl i64 %i.lo, 32
  %i.lq = ashr exact i64 %i.lp, 32
  %i.lr = getelementptr inbounds i8, ptr %2, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 -3
  %i.lt = getelementptr inbounds i8, ptr %i.lr, i64 -7
  %wide.load = load <4 x i8>, ptr %i.ls, align 1
  %wide.load416 = load <4 x i8>, ptr %i.lt, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ln ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -3
  %i.lw = getelementptr inbounds i8, ptr %i.lu, i64 -7
  %wide.load418 = load <4 x i8>, ptr %i.lv, align 1
  %wide.load419 = load <4 x i8>, ptr %i.lw, align 1
  %i.lx = icmp ne <4 x i8> %wide.load, %wide.load418
  %i.ly = shufflevector <4 x i1> %i.lx, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lz = icmp ne <4 x i8> %wide.load416, %wide.load419
  %i.ma = shufflevector <4 x i1> %i.lz, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.mb = or <4 x i1> %vec.phi, %i.ly             ; 2 uses
  %i.mc = or <4 x i1> %vec.phi415, %i.ma          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.mc, %i.mb
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.me = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not584 = icmp eq i4 %i.me, 0
  %rdx.select = zext i1 %.not584 to i32           ; 2 uses
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %pcmp_val.exit161.us.preheader607

pcmp_val.exit161.us.preheader607:                 ; preds = %vector.scevcheck, %pcmp_val.exit161.us.preheader, %middle.block
  %indvars.iv331.ph = phi i64 [ %smin330, %vector.scevcheck ], [ %smin330, %pcmp_val.exit161.us.preheader ], [ %i.lm, %middle.block ]
  %.0124197.us.ph = phi i32 [ 1, %vector.scevcheck ], [ 1, %pcmp_val.exit161.us.preheader ], [ %rdx.select, %middle.block ]
  br label %pcmp_val.exit161.us

pcmp_val.exit161.us:                              ; preds = %pcmp_val.exit161.us.preheader607, %pcmp_val.exit161.us
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %pcmp_val.exit161.us ], [ %indvars.iv331.ph, %pcmp_val.exit161.us.preheader607 ] ; 4 uses
  %.0124197.us = phi i32 [ %i.mm, %pcmp_val.exit161.us ], [ %.0124197.us.ph, %pcmp_val.exit161.us.preheader607 ]
  %i.mf = add nuw i64 %indvars.iv331, %indvars.iv333
  %sext366 = shl i64 %i.mf, 32
  %i.mg = ashr exact i64 %sext366, 32
  %i.mh = getelementptr inbounds i8, ptr %2, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv331
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = icmp eq i8 %i.mi, %i.mk
  %i.mm = select i1 %i.ml, i32 %.0124197.us, i32 0 ; 2 uses
  %indvars.iv.next332 = add nsw i64 %indvars.iv331, -1
  %i.mn = icmp sgt i64 %indvars.iv331, 0
  br i1 %i.mn, label %pcmp_val.exit161.us, label %._crit_edge, !llvm.loop !57

pcmp_val.exit161.us201:                           ; preds = %pcmp_val.exit161.us201.preheader608, %pcmp_val.exit161.us201
  %indvars.iv328 = phi i64 [ %indvars.iv.next329, %pcmp_val.exit161.us201 ], [ %indvars.iv328.ph, %pcmp_val.exit161.us201.preheader608 ] ; 4 uses
  %.0124197.us199 = phi i32 [ %i.mv, %pcmp_val.exit161.us201 ], [ %.0124197.us199.ph, %pcmp_val.exit161.us201.preheader608 ]
  %i.mo = add nuw i64 %indvars.iv328, %indvars.iv333
  %sext365 = shl i64 %i.mo, 32
  %i.mp = ashr exact i64 %sext365, 31
  %i.mq = getelementptr inbounds i8, ptr %2, i64 %i.mp
  %i.mr = load i16, ptr %i.mq, align 2
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv328
  %i.mt = load i16, ptr %i.ms, align 2
  %i.mu = icmp eq i16 %i.mr, %i.mt
  %i.mv = select i1 %i.mu, i32 %.0124197.us199, i32 0 ; 2 uses
  %indvars.iv.next329 = add nsw i64 %indvars.iv328, -1
  %i.mw = icmp sgt i64 %indvars.iv328, 0
  br i1 %i.mw, label %pcmp_val.exit161.us201, label %._crit_edge, !llvm.loop !58

pcmp_val.exit161.us209:                           ; preds = %pcmp_val.exit161.us209.preheader610, %pcmp_val.exit161.us209
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %pcmp_val.exit161.us209 ], [ %indvars.iv325.ph, %pcmp_val.exit161.us209.preheader610 ] ; 4 uses
  %.0124197.us207 = phi i32 [ %i.ne, %pcmp_val.exit161.us209 ], [ %.0124197.us207.ph, %pcmp_val.exit161.us209.preheader610 ]
  %i.mx = add nuw i64 %indvars.iv325, %indvars.iv333
  %sext364 = shl i64 %i.mx, 32
  %i.my = ashr exact i64 %sext364, 32
  %i.mz = getelementptr inbounds i8, ptr %2, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = icmp eq i8 %i.na, %i.nc
  %i.ne = select i1 %i.nd, i32 %.0124197.us207, i32 0 ; 2 uses
  %indvars.iv.next326 = add nsw i64 %indvars.iv325, -1
  %i.nf = icmp sgt i64 %indvars.iv325, 0
  br i1 %i.nf, label %pcmp_val.exit161.us209, label %._crit_edge, !llvm.loop !59

pcmp_val.exit161.us217:                           ; preds = %pcmp_val.exit161.us217.preheader612, %pcmp_val.exit161.us217
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %pcmp_val.exit161.us217 ], [ %indvars.iv322.ph, %pcmp_val.exit161.us217.preheader612 ] ; 4 uses
  %.0124197.us215 = phi i32 [ %i.nn, %pcmp_val.exit161.us217 ], [ %.0124197.us215.ph, %pcmp_val.exit161.us217.preheader612 ]
  %i.ng = add nuw i64 %indvars.iv322, %indvars.iv333
  %sext = shl i64 %i.ng, 32
  %i.nh = ashr exact i64 %sext, 31
  %i.ni = getelementptr inbounds i8, ptr %2, i64 %i.nh
  %i.nj = load i16, ptr %i.ni, align 2
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv322
  %i.nl = load i16, ptr %i.nk, align 2
  %i.nm = icmp eq i16 %i.nj, %i.nl
  %i.nn = select i1 %i.nm, i32 %.0124197.us215, i32 0 ; 2 uses
  %indvars.iv.next323 = add nsw i64 %indvars.iv322, -1
  %i.no = icmp sgt i64 %indvars.iv322, 0
  br i1 %i.no, label %pcmp_val.exit161.us217, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %pcmp_val.exit161.us217, %pcmp_val.exit161.us209, %pcmp_val.exit161.us201, %pcmp_val.exit161.us, %middle.block497, %middle.block469, %middle.block443, %middle.block, %bb.ae
  %.0124.lcssa = phi i32 [ 1, %bb.ae ], [ %i.mv, %pcmp_val.exit161.us201 ], [ %i.ne, %pcmp_val.exit161.us209 ], [ %i.mm, %pcmp_val.exit161.us ], [ %rdx.select, %middle.block ], [ %rdx.select445, %middle.block443 ], [ %rdx.select471, %middle.block469 ], [ %rdx.select499, %middle.block497 ], [ %i.nn, %pcmp_val.exit161.us217 ]
  %6 = or i32 %.0124.lcssa, %i.ii                 ; 2 uses
  %indvars.iv.next334 = add nsw i64 %indvars.iv333, -1
  %i.np = icmp sgt i64 %indvars.iv333, 0
  %indvars.iv.next = add i32 %indvars.iv, 1
  %indvar.next = add i32 %indvar, 1
  %indvar.next424 = add i33 %indvar423, 1
  br i1 %i.np, label %bb.ae, label %.loopexit, !llvm.loop !61

.unreachabledefault391:                           ; preds = %bb.q
  unreachable

.lr.ph267.unreachabledefault:                     ; preds = %.lr.ph267
  unreachable

.unreachabledefault:                              ; preds = %bb.f
  unreachable

.unreachabledefault390:                           ; preds = %bb.k
  unreachable

.lr.ph244.split.us.split.split.us.unreachabledefault: ; preds = %.lr.ph244.split.us.split.split.us
  unreachable

.unreachabledefault392:                           ; preds = %bb.w
  unreachable

.lr.ph.unreachabledefault:                        ; preds = %.lr.ph
  unreachable

default.unreachable363:                           ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %._crit_edge, %pcmp_val.exit155, %._crit_edge240.us.us, %._crit_edge268, %.lr.ph244, %bb.ad, %bb.v, %.preheader181, %.preheader, %bb.ac
  %.6 = phi i32 [ %i.bk, %._crit_edge240.us.us ], [ %i.hd, %pcmp_val.exit155 ], [ 0, %.lr.ph244 ], [ %i.hh, %bb.ac ], [ 0, %.preheader ], [ 0, %.preheader181 ], [ 0, %bb.ad ], [ %.1.lcssa, %._crit_edge268 ], [ %i.fy, %bb.v ], [ %6, %._crit_edge ] ; 3 uses
  %i.nq = lshr i32 %i.a, 4
  %i.nr = and i32 %i.nq, 3
  switch i32 %i.nr, label %bb.ah [
    i32 1, label %bb.af
    i32 3, label %bb.ag
  ]

bb.af:                                            ; preds = %.loopexit
  %i.ns = shl nuw nsw i32 2, %i.c
  %i.nt = add nsw i32 %i.ns, -1
  %i.nu = xor i32 %.6, %i.nt
  br label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  %notmask135 = shl nsw i32 -1, %4
  %i.nv = xor i32 %notmask135, %.6
  %i.nw = xor i32 %i.nv, -1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.loopexit
  %.7 = phi i32 [ %.6, %.loopexit ], [ %i.nu, %bb.af ], [ %i.nw, %bb.ag ] ; 3 uses
  %.not136 = icmp eq i32 %.7, 0
  br i1 %.not136, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nx = or disjoint i64 %i.j, 1
  store i64 %i.nx, ptr %i.k, align 8
  %i.ny = and i32 %.7, 1
  %.not137 = icmp eq i32 %i.ny, 0
  br i1 %.not137, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.nz = or disjoint i64 %i.j, 2049
  store i64 %i.nz, ptr %i.k, align 8
  br label %.thread

.thread:                                          ; preds = %bb.ah, %bb.aj, %bb.ai
  ret i32 %.7
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pcmpestrm_xmm(ptr nofree noundef captures(none) initializes((280, 288), (296, 300), (960, 976)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = trunc i32 %3 to i8
  %.not.i = icmp ult i32 %3, 256                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext.i, 32
  %.012.i = select i1 %.not.i, i64 %i.d, i64 %i.c ; 3 uses
  %i.e = and i32 %3, 1
  %.not14.i = icmp eq i32 %i.e, 0                 ; 3 uses
  %..neg.i = select i1 %.not14.i, i64 -16, i64 -8 ; 2 uses
  %..i = select i1 %.not14.i, i64 16, i64 8       ; 3 uses
  %i.f = icmp sgt i64 %.012.i, %..i
  %i.g = icmp slt i64 %.012.i, %..neg.i
  %or.cond.i = or i1 %i.f, %i.g
  %i.h = trunc nuw nsw i64 %..i to i32            ; 2 uses
  %i.i = trunc nsw i64 %.012.i to i32
  %.0.i.i = tail call range(i32 0, 256) i32 @llvm.abs.i32(i32 range(i32 -255, 256) %i.i, i1 true)
  %.013.i = select i1 %or.cond.i, i32 %i.h, i32 %.0.i.i
  %i.j = load i64, ptr %0, align 8                ; 2 uses
  %sext.i30 = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext.i30, 32
  %.012.i31 = select i1 %.not.i, i64 %i.k, i64 %i.j ; 3 uses
  %i.l = icmp sgt i64 %.012.i31, %..i
  %i.m = icmp slt i64 %.012.i31, %..neg.i
  %or.cond.i35 = or i1 %i.l, %i.m
  %i.n = trunc nsw i64 %.012.i31 to i32
  %.0.i.i36 = tail call range(i32 0, 256) i32 @llvm.abs.i32(i32 range(i32 -255, 256) %i.n, i1 true)
  %.013.i37 = select i1 %or.cond.i35, i32 %i.h, i32 %.0.i.i36
  %i.o = tail call fastcc i32 @pcmpxstrx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.a, i32 noundef %.013.i, i32 noundef %.013.i37) ; 10 uses
  %i.p = and i32 %3, 64
  %.not = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not27 = trunc i32 %i.o to i1                  ; 2 uses
  %i.r = shl i32 %i.o, 30
  %sext53 = ashr i32 %i.r, 31                     ; 2 uses
  %i.s = shl i32 %i.o, 29
  %sext54 = ashr i32 %i.s, 31                     ; 2 uses
  %i.t = shl i32 %i.o, 28
  %sext55 = ashr i32 %i.t, 31                     ; 2 uses
  %i.u = shl i32 %i.o, 27
  %sext56 = ashr i32 %i.u, 31                     ; 2 uses
  %i.v = shl i32 %i.o, 26
  %sext57 = ashr i32 %i.v, 31                     ; 2 uses
  %i.w = shl i32 %i.o, 25
  %sext58 = ashr i32 %i.w, 31                     ; 2 uses
  %i.x = shl i32 %i.o, 24
  %sext59 = ashr i32 %i.x, 31                     ; 2 uses
  br i1 %.not14.i, label %.preheader, label %.preheader38

.preheader38:                                     ; preds = %bb.b
  %i.y = sext i1 %.not27 to i16
  store i16 %i.y, ptr %i.q, align 8
  %i.z = trunc nsw i32 %sext53 to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 962
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = trunc nsw i32 %sext54 to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 964
  store i16 %i.ab, ptr %i.ac, align 4
  %i.ad = trunc nsw i32 %sext55 to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 966
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = trunc nsw i32 %sext56 to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i16 %i.af, ptr %i.ag, align 8
  %i.ah = trunc nsw i32 %sext57 to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 970
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = trunc nsw i32 %sext58 to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i16 %i.aj, ptr %i.ak, align 4
  %i.al = trunc nsw i32 %sext59 to i16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 974
  store i16 %i.al, ptr %i.am, align 2
  br label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.an = sext i1 %.not27 to i8
  store i8 %i.an, ptr %i.q, align 8
  %i.ao = trunc nsw i32 %sext53 to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 961
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = trunc nsw i32 %sext54 to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 962
  store i8 %i.aq, ptr %i.ar, align 2
  %i.as = trunc nsw i32 %sext55 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 963
  store i8 %i.as, ptr %i.at, align 1
  %i.au = trunc nsw i32 %sext56 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 964
  store i8 %i.au, ptr %i.av, align 4
  %i.aw = trunc nsw i32 %sext57 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 965
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = trunc nsw i32 %sext58 to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 966
  store i8 %i.ay, ptr %i.az, align 2
  %i.ba = trunc nsw i32 %sext59 to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 967
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %i.bd = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.be = shl <8 x i32> %i.bd, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bg = ashr <8 x i32> %i.be, splat (i32 31)
  %i.bh = trunc nsw <8 x i32> %i.bg to <8 x i8>
  store <8 x i8> %i.bh, ptr %i.bf, align 8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i64 0, ptr %i.bi, align 8
  %i.bj = zext i32 %i.o to i64
  store i64 %i.bj, ptr %i.q, align 16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader38, %.preheader, %bb.c
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pcmpistri_xmm(ptr nofree noundef writeonly captures(none) initializes((8, 16), (280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
end_hunk_0
