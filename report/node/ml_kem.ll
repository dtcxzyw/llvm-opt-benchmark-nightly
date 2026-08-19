inline.NumInlined: 100
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@scalar_ntt:bb.a
  %i.fu = or <8 x i16> %i.fs, %i.ft               ; 2 uses
  %i.fv = sub <8 x i16> %wide.load72, %i.fu       ; 3 uses
  %i.fw = add <8 x i16> %i.fv, splat (i16 3329)
  %i.fx = icmp slt <8 x i16> %i.fv, zeroinitializer
  %i.fy = select <8 x i1> %i.fx, <8 x i16> %i.fw, <8 x i16> zeroinitializer
  %i.fz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fv, <8 x i16> zeroinitializer)
  %i.ga = or <8 x i16> %i.fy, %i.fz
  store <8 x i16> %i.ga, ptr %i.fg, align 2, !tbaa !39
  %i.gb = add <8 x i16> %i.fu, %wide.load72       ; 2 uses
  %i.gc = add <8 x i16> %i.gb, splat (i16 -3329)  ; 2 uses
  %i.gd = icmp slt <8 x i16> %i.gc, zeroinitializer
  %i.ge = select <8 x i1> %i.gd, <8 x i16> %i.gb, <8 x i16> zeroinitializer
  %i.gf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.gc, <8 x i16> zeroinitializer)
  %i.gg = or <8 x i16> %i.ge, %i.gf
  store <8 x i16> %i.gg, ptr %next.gep71, align 2, !tbaa !39
  %index.next74 = add nuw i64 %index70, 8         ; 2 uses
  %i.gh = icmp eq i64 %index.next74, %n.vec66
  br i1 %i.gh, label %middle.block75, label %vector.body69, !llvm.loop !106

middle.block75:                                   ; preds = %vector.body69
  %ind.escape76 = add i64 %i.fd, -2
  %cmp.n77 = icmp eq i64 %i.fa, %n.vec66
  br i1 %cmp.n77, label %.loopexit136, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %.preheader37, %middle.block75
  %.1.2.ph = phi ptr [ %.019.ptr.2, %.preheader37 ], [ %i.fc, %middle.block75 ]
  %.0.idx.2.ph = phi i64 [ %.019.add.2, %.preheader37 ], [ %i.fd, %middle.block75 ]
  br label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.preheader, %scalar.ph63
  %.1.2 = phi ptr [ %i.hg, %scalar.ph63 ], [ %.1.2.ph, %scalar.ph63.preheader ] ; 3 uses
  %.0.idx.2 = phi i64 [ %.0.add.2, %scalar.ph63 ], [ %.0.idx.2.ph, %scalar.ph63.preheader ] ; 3 uses
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx.2 ; 2 uses
  %i.gi = load i16, ptr %.1.2, align 2, !tbaa !39 ; 2 uses
  %i.gj = load i16, ptr %.0.ptr.2, align 2, !tbaa !39
  %i.gk = zext i16 %i.gj to i32
  %i.gl = mul nuw i32 %i.gk, %i.er                ; 2 uses
  %i.gm = zext i32 %i.gl to i64
  %i.gn = mul nuw nsw i64 %i.gm, 5039
  %i.go = lshr i64 %i.gn, 24
  %i.gp = trunc nuw nsw i64 %i.go to i32
  %.neg.i.2 = mul i32 %i.gp, 62207
  %i.gq = add i32 %.neg.i.2, %i.gl
  %i.gr = trunc i32 %i.gq to i16                  ; 2 uses
  %i.gs = add i16 %i.gr, -3329                    ; 2 uses
  %isneg.i.i.2 = icmp slt i16 %i.gs, 0
  %i.gt = select i1 %isneg.i.i.2, i16 %i.gr, i16 0
  %i.gu = tail call i16 @llvm.smax.i16(i16 %i.gs, i16 0)
  %i.gv = or i16 %i.gt, %i.gu                     ; 2 uses
  %i.gw = sub i16 %i.gi, %i.gv                    ; 3 uses
  %i.gx = add i16 %i.gw, 3329
  %isneg.i.2 = icmp slt i16 %i.gw, 0
  %i.gy = select i1 %isneg.i.2, i16 %i.gx, i16 0
  %i.gz = tail call i16 @llvm.smax.i16(i16 %i.gw, i16 0)
  %i.ha = or i16 %i.gy, %i.gz
  %.0.add.2 = add nuw nsw i64 %.0.idx.2, 2        ; 2 uses
  store i16 %i.ha, ptr %.0.ptr.2, align 2, !tbaa !39
  %i.hb = add i16 %i.gv, %i.gi                    ; 2 uses
  %i.hc = add i16 %i.hb, -3329                    ; 2 uses
  %isneg.i26.2 = icmp slt i16 %i.hc, 0
  %i.hd = select i1 %isneg.i26.2, i16 %i.hb, i16 0
  %i.he = tail call i16 @llvm.smax.i16(i16 %i.hc, i16 0)
  %i.hf = or i16 %i.hd, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %.1.2, i64 2 ; 2 uses
  store i16 %i.hf, ptr %.1.2, align 2, !tbaa !39
  %i.hh = icmp ult ptr %i.hg, %.ptr25.2
  br i1 %i.hh, label %scalar.ph63, label %.loopexit136, !llvm.loop !107

.loopexit136:                                     ; preds = %scalar.ph63, %middle.block75
  %.0.idx.2.lcssa = phi i64 [ %ind.escape76, %middle.block75 ], [ %.0.idx.2, %scalar.ph63 ]
  %.0.add.2.lcssa = phi i64 [ %i.fd, %middle.block75 ], [ %.0.add.2, %scalar.ph63 ]
  %i.hi = icmp slt i64 %.0.idx.2.lcssa, 510
  br i1 %i.hi, label %.preheader37, label %.preheader36, !llvm.loop !103

.preheader36:                                     ; preds = %.loopexit136, %.loopexit135
  %.122.3 = phi ptr [ %i.hj, %.loopexit135 ], [ %i.ep, %.loopexit136 ] ; 4 uses
  %.019.idx.3 = phi i64 [ %.0.add.3.lcssa, %.loopexit135 ], [ 0, %.loopexit136 ] ; 4 uses
  %.019.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx.3 ; 3 uses
  %.019.add.3 = add nuw nsw i64 %.019.idx.3, 32   ; 4 uses
  %.ptr25.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.019.add.3
  %i.hj = getelementptr inbounds nuw i8, ptr %.122.3, i64 2 ; 4 uses
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !39
  %i.hl = zext i16 %i.hk to i32                   ; 2 uses
  %i.hm = add i64 %.019.idx.3, %i.a               ; 2 uses
  %i.hn = add i64 %i.hm, 32
  %i.ho = add i64 %i.hm, 2
  %i.hp = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 %i.ho)
  %i.hq = xor i64 %.019.idx.3, -1
  %i.hr = add i64 %i.hp, %i.hq
  %i.hs = sub i64 %i.hr, %i.a                     ; 2 uses
  %i.ht = lshr i64 %i.hs, 1
  %i.hu = add nuw i64 %i.ht, 1                    ; 2 uses
  %min.iters.check81 = icmp ult i64 %i.hs, 14
  br i1 %min.iters.check81, label %scalar.ph80.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %.preheader36
  %n.vec83 = and i64 %i.hu, -8                    ; 3 uses
  %i.hv = shl i64 %n.vec83, 1                     ; 2 uses
  %i.hw = getelementptr i8, ptr %.019.ptr.3, i64 %i.hv
  %i.hx = add i64 %.019.add.3, %i.hv              ; 3 uses
  %broadcast.splatinsert84 = insertelement <8 x i32> poison, i32 %i.hl, i64 0
  %broadcast.splat85 = shufflevector <8 x i32> %broadcast.splatinsert84, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 %.019.add.3
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph82
  %index87 = phi i64 [ 0, %vector.ph82 ], [ %index.next91, %vector.body86 ] ; 2 uses
  %i.hz = shl i64 %index87, 1                     ; 2 uses
  %next.gep88 = getelementptr i8, ptr %.019.ptr.3, i64 %i.hz ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hz ; 2 uses
  %wide.load89 = load <8 x i16>, ptr %next.gep88, align 2, !tbaa !39 ; 2 uses
  %wide.load90 = load <8 x i16>, ptr %i.ia, align 2, !tbaa !39
  %i.ib = zext <8 x i16> %wide.load90 to <8 x i32>
  %i.ic = mul nuw <8 x i32> %broadcast.splat85, %i.ib ; 2 uses
  %i.id = zext <8 x i32> %i.ic to <8 x i64>
  %i.ie = mul nuw nsw <8 x i64> %i.id, splat (i64 5039)
  %i.if = lshr <8 x i64> %i.ie, splat (i64 24)
  %i.ig = trunc nuw nsw <8 x i64> %i.if to <8 x i32>
  %i.ih = mul <8 x i32> %i.ig, splat (i32 62207)
  %i.ii = add <8 x i32> %i.ih, %i.ic
  %i.ij = trunc <8 x i32> %i.ii to <8 x i16>      ; 2 uses
  %i.ik = add <8 x i16> %i.ij, splat (i16 -3329)  ; 2 uses
  %i.il = icmp slt <8 x i16> %i.ik, zeroinitializer
  %i.im = select <8 x i1> %i.il, <8 x i16> %i.ij, <8 x i16> zeroinitializer
  %i.in = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ik, <8 x i16> zeroinitializer)
  %i.io = or <8 x i16> %i.im, %i.in               ; 2 uses
  %i.ip = sub <8 x i16> %wide.load89, %i.io       ; 3 uses
  %i.iq = add <8 x i16> %i.ip, splat (i16 3329)
  %i.ir = icmp slt <8 x i16> %i.ip, zeroinitializer
  %i.is = select <8 x i1> %i.ir, <8 x i16> %i.iq, <8 x i16> zeroinitializer
  %i.it = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ip, <8 x i16> zeroinitializer)
  %i.iu = or <8 x i16> %i.is, %i.it
  store <8 x i16> %i.iu, ptr %i.ia, align 2, !tbaa !39
  %i.iv = add <8 x i16> %i.io, %wide.load89       ; 2 uses
  %i.iw = add <8 x i16> %i.iv, splat (i16 -3329)  ; 2 uses
  %i.ix = icmp slt <8 x i16> %i.iw, zeroinitializer
  %i.iy = select <8 x i1> %i.ix, <8 x i16> %i.iv, <8 x i16> zeroinitializer
  %i.iz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.iw, <8 x i16> zeroinitializer)
  %i.ja = or <8 x i16> %i.iy, %i.iz
  store <8 x i16> %i.ja, ptr %next.gep88, align 2, !tbaa !39
  %index.next91 = add nuw i64 %index87, 8         ; 2 uses
  %i.jb = icmp eq i64 %index.next91, %n.vec83
  br i1 %i.jb, label %middle.block92, label %vector.body86, !llvm.loop !108

middle.block92:                                   ; preds = %vector.body86
  %ind.escape93 = add i64 %i.hx, -2
  %cmp.n94 = icmp eq i64 %i.hu, %n.vec83
  br i1 %cmp.n94, label %.loopexit135, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %.preheader36, %middle.block92
  %.1.3.ph = phi ptr [ %.019.ptr.3, %.preheader36 ], [ %i.hw, %middle.block92 ]
  %.0.idx.3.ph = phi i64 [ %.019.add.3, %.preheader36 ], [ %i.hx, %middle.block92 ]
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %.1.3 = phi ptr [ %i.ka, %scalar.ph80 ], [ %.1.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.0.idx.3 = phi i64 [ %.0.add.3, %scalar.ph80 ], [ %.0.idx.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx.3 ; 2 uses
  %i.jc = load i16, ptr %.1.3, align 2, !tbaa !39 ; 2 uses
  %i.jd = load i16, ptr %.0.ptr.3, align 2, !tbaa !39
  %i.je = zext i16 %i.jd to i32
  %i.jf = mul nuw i32 %i.je, %i.hl                ; 2 uses
  %i.jg = zext i32 %i.jf to i64
  %i.jh = mul nuw nsw i64 %i.jg, 5039
  %i.ji = lshr i64 %i.jh, 24
  %i.jj = trunc nuw nsw i64 %i.ji to i32
  %.neg.i.3 = mul i32 %i.jj, 62207
  %i.jk = add i32 %.neg.i.3, %i.jf
  %i.jl = trunc i32 %i.jk to i16                  ; 2 uses
  %i.jm = add i16 %i.jl, -3329                    ; 2 uses
  %isneg.i.i.3 = icmp slt i16 %i.jm, 0
  %i.jn = select i1 %isneg.i.i.3, i16 %i.jl, i16 0
  %i.jo = tail call i16 @llvm.smax.i16(i16 %i.jm, i16 0)
  %i.jp = or i16 %i.jn, %i.jo                     ; 2 uses
  %i.jq = sub i16 %i.jc, %i.jp                    ; 3 uses
  %i.jr = add i16 %i.jq, 3329
  %isneg.i.3 = icmp slt i16 %i.jq, 0
  %i.js = select i1 %isneg.i.3, i16 %i.jr, i16 0
  %i.jt = tail call i16 @llvm.smax.i16(i16 %i.jq, i16 0)
  %i.ju = or i16 %i.js, %i.jt
  %.0.add.3 = add nuw nsw i64 %.0.idx.3, 2        ; 2 uses
  store i16 %i.ju, ptr %.0.ptr.3, align 2, !tbaa !39
  %i.jv = add i16 %i.jp, %i.jc                    ; 2 uses
  %i.jw = add i16 %i.jv, -3329                    ; 2 uses
  %isneg.i26.3 = icmp slt i16 %i.jw, 0
  %i.jx = select i1 %isneg.i26.3, i16 %i.jv, i16 0
  %i.jy = tail call i16 @llvm.smax.i16(i16 %i.jw, i16 0)
  %i.jz = or i16 %i.jx, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %.1.3, i64 2 ; 2 uses
  store i16 %i.jz, ptr %.1.3, align 2, !tbaa !39
  %i.kb = icmp ult ptr %i.ka, %.ptr25.3
  br i1 %i.kb, label %scalar.ph80, label %.loopexit135, !llvm.loop !109

.loopexit135:                                     ; preds = %scalar.ph80, %middle.block92
  %.0.idx.3.lcssa = phi i64 [ %ind.escape93, %middle.block92 ], [ %.0.idx.3, %scalar.ph80 ]
  %.0.add.3.lcssa = phi i64 [ %i.hx, %middle.block92 ], [ %.0.add.3, %scalar.ph80 ]
  %i.kc = icmp slt i64 %.0.idx.3.lcssa, 510
  br i1 %i.kc, label %.preheader36, label %vector.memcheck, !llvm.loop !103

vector.memcheck:                                  ; preds = %.loopexit135
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 3 uses
  %i.kd = getelementptr i8, ptr %.122.3, i64 4
  %i.ke = getelementptr i8, ptr %.122.3, i64 36
  %bound0 = icmp ult ptr %0, %i.ke
  %bound1 = icmp ult ptr %i.kd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph97, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck
  %i.kf = getelementptr i8, ptr %.122.3, i64 34
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph98
  %index100 = phi i64 [ 0, %vector.ph98 ], [ %index.next103, %vector.body99 ] ; 3 uses
  %i.kg = shl i64 %index100, 1
  %next.gep101 = getelementptr i8, ptr %i.hj, i64 %i.kg
  %i.kh = shl nuw i64 %index100, 5                ; 8 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 %i.kh ; 17 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 %i.kh ; 16 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 %i.kh ; 16 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 64 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %i.kh ; 16 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 96 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 %i.kh ; 16 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 128 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 %i.kh ; 16 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 160 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 %i.kh ; 16 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 192 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 %i.kh ; 16 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 224 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kj, i64 48 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 80 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kn, i64 112 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 144 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kr, i64 176 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 208 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kv, i64 240 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %next.gep101, i64 2
  %wide.load102 = load <8 x i16>, ptr %i.lf, align 2, !tbaa !39, !alias.scope !110
  %i.lg = zext <8 x i16> %wide.load102 to <8 x i32> ; 8 uses
  %i.lh = load i16, ptr %i.ki, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.li = load i16, ptr %i.kk, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.lj = load i16, ptr %i.km, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.lk = load i16, ptr %i.ko, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ll = load i16, ptr %i.kq, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.lm = load i16, ptr %i.ks, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ln = load i16, ptr %i.ku, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.lo = load i16, ptr %i.kw, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.lp = insertelement <8 x i16> poison, i16 %i.lh, i64 0
  %i.lq = insertelement <8 x i16> %i.lp, i16 %i.li, i64 1
  %i.lr = insertelement <8 x i16> %i.lq, i16 %i.lj, i64 2
  %i.ls = insertelement <8 x i16> %i.lr, i16 %i.lk, i64 3
  %i.lt = insertelement <8 x i16> %i.ls, i16 %i.ll, i64 4
  %i.lu = insertelement <8 x i16> %i.lt, i16 %i.lm, i64 5
  %i.lv = insertelement <8 x i16> %i.lu, i16 %i.ln, i64 6
  %i.lw = insertelement <8 x i16> %i.lv, i16 %i.lo, i64 7 ; 2 uses
  %i.lx = load i16, ptr %i.kx, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ly = load i16, ptr %i.ky, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.lz = load i16, ptr %i.kz, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ma = load i16, ptr %i.la, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.mb = load i16, ptr %i.lb, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.mc = load i16, ptr %i.lc, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.md = load i16, ptr %i.ld, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.me = load i16, ptr %i.le, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.mf = insertelement <8 x i16> poison, i16 %i.lx, i64 0
  %i.mg = insertelement <8 x i16> %i.mf, i16 %i.ly, i64 1
  %i.mh = insertelement <8 x i16> %i.mg, i16 %i.lz, i64 2
  %i.mi = insertelement <8 x i16> %i.mh, i16 %i.ma, i64 3
  %i.mj = insertelement <8 x i16> %i.mi, i16 %i.mb, i64 4
  %i.mk = insertelement <8 x i16> %i.mj, i16 %i.mc, i64 5
  %i.ml = insertelement <8 x i16> %i.mk, i16 %i.md, i64 6
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 7
  %i.mn = zext <8 x i16> %i.mm to <8 x i32>
  %i.mo = mul nuw <8 x i32> %i.mn, %i.lg          ; 2 uses
  %i.mp = zext <8 x i32> %i.mo to <8 x i64>
  %i.mq = mul nuw nsw <8 x i64> %i.mp, splat (i64 5039)
  %i.mr = lshr <8 x i64> %i.mq, splat (i64 24)
  %i.ms = trunc nuw nsw <8 x i64> %i.mr to <8 x i32>
  %i.mt = mul <8 x i32> %i.ms, splat (i32 62207)
  %i.mu = add <8 x i32> %i.mt, %i.mo
  %i.mv = trunc <8 x i32> %i.mu to <8 x i16>      ; 2 uses
  %i.mw = add <8 x i16> %i.mv, splat (i16 -3329)  ; 2 uses
  %i.mx = icmp slt <8 x i16> %i.mw, zeroinitializer
  %i.my = select <8 x i1> %i.mx, <8 x i16> %i.mv, <8 x i16> zeroinitializer
  %i.mz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mw, <8 x i16> zeroinitializer)
  %i.na = or <8 x i16> %i.my, %i.mz               ; 2 uses
  %i.nb = sub <8 x i16> %i.lw, %i.na              ; 3 uses
  %i.nc = add <8 x i16> %i.nb, splat (i16 3329)
  %i.nd = icmp slt <8 x i16> %i.nb, zeroinitializer
  %i.ne = select <8 x i1> %i.nd, <8 x i16> %i.nc, <8 x i16> zeroinitializer
  %i.nf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nb, <8 x i16> zeroinitializer)
  %i.ng = or <8 x i16> %i.ne, %i.nf               ; 8 uses
  %i.nh = extractelement <8 x i16> %i.ng, i64 4
  store i16 %i.nh, ptr %i.lb, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ni = extractelement <8 x i16> %i.ng, i64 5
  store i16 %i.ni, ptr %i.lc, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.nj = extractelement <8 x i16> %i.ng, i64 6
  store i16 %i.nj, ptr %i.ld, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.nk = extractelement <8 x i16> %i.ng, i64 7
  store i16 %i.nk, ptr %i.le, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.nl = add <8 x i16> %i.na, %i.lw              ; 2 uses
  %i.nm = add <8 x i16> %i.nl, splat (i16 -3329)  ; 2 uses
  %i.nn = icmp slt <8 x i16> %i.nm, zeroinitializer
  %i.no = select <8 x i1> %i.nn, <8 x i16> %i.nl, <8 x i16> zeroinitializer
  %i.np = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nm, <8 x i16> zeroinitializer)
  %i.nq = or <8 x i16> %i.no, %i.np               ; 8 uses
  %i.nr = extractelement <8 x i16> %i.nq, i64 4
  store i16 %i.nr, ptr %i.kq, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ns = extractelement <8 x i16> %i.nq, i64 5
  store i16 %i.ns, ptr %i.ks, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.nt = extractelement <8 x i16> %i.nq, i64 6
  store i16 %i.nt, ptr %i.ku, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.nu = extractelement <8 x i16> %i.nq, i64 7
  store i16 %i.nu, ptr %i.kw, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ki, i64 2
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kj, i64 34
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kl, i64 66
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kn, i64 98
  %i.nz = getelementptr inbounds nuw i8, ptr %i.kp, i64 130 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kr, i64 162 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kt, i64 194 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kv, i64 226 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ki, i64 18
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kj, i64 50
  %i.of = getelementptr inbounds nuw i8, ptr %i.kl, i64 82
  %i.og = getelementptr inbounds nuw i8, ptr %i.kn, i64 114
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kp, i64 146 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kr, i64 178 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kt, i64 210 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kv, i64 242 ; 2 uses
  %i.ol = load i16, ptr %i.nv, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.om = load i16, ptr %i.nw, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.on = load i16, ptr %i.nx, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.oo = load i16, ptr %i.ny, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.op = load i16, ptr %i.nz, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.oq = load i16, ptr %i.oa, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.or = load i16, ptr %i.ob, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.os = load i16, ptr %i.oc, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ot = insertelement <8 x i16> poison, i16 %i.ol, i64 0
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 1
  %i.ov = insertelement <8 x i16> %i.ou, i16 %i.on, i64 2
  %i.ow = insertelement <8 x i16> %i.ov, i16 %i.oo, i64 3
  %i.ox = insertelement <8 x i16> %i.ow, i16 %i.op, i64 4
  %i.oy = insertelement <8 x i16> %i.ox, i16 %i.oq, i64 5
  %i.oz = insertelement <8 x i16> %i.oy, i16 %i.or, i64 6
  %i.pa = insertelement <8 x i16> %i.oz, i16 %i.os, i64 7 ; 2 uses
  %i.pb = load i16, ptr %i.od, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.pc = load i16, ptr %i.oe, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.pd = load i16, ptr %i.of, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.pe = load i16, ptr %i.og, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.pf = load i16, ptr %i.oh, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.pg = load i16, ptr %i.oi, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ph = load i16, ptr %i.oj, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.pi = load i16, ptr %i.ok, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.pj = insertelement <8 x i16> poison, i16 %i.pb, i64 0
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 1
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 2
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 3
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 4
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 5
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 6
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 7
  %i.pr = zext <8 x i16> %i.pq to <8 x i32>
  %i.ps = mul nuw <8 x i32> %i.pr, %i.lg          ; 2 uses
  %i.pt = zext <8 x i32> %i.ps to <8 x i64>
  %i.pu = mul nuw nsw <8 x i64> %i.pt, splat (i64 5039)
  %i.pv = lshr <8 x i64> %i.pu, splat (i64 24)
  %i.pw = trunc nuw nsw <8 x i64> %i.pv to <8 x i32>
  %i.px = mul <8 x i32> %i.pw, splat (i32 62207)
  %i.py = add <8 x i32> %i.px, %i.ps
  %i.pz = trunc <8 x i32> %i.py to <8 x i16>      ; 2 uses
  %i.qa = add <8 x i16> %i.pz, splat (i16 -3329)  ; 2 uses
  %i.qb = icmp slt <8 x i16> %i.qa, zeroinitializer
  %i.qc = select <8 x i1> %i.qb, <8 x i16> %i.pz, <8 x i16> zeroinitializer
  %i.qd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qa, <8 x i16> zeroinitializer)
  %i.qe = or <8 x i16> %i.qc, %i.qd               ; 2 uses
  %i.qf = sub <8 x i16> %i.pa, %i.qe              ; 3 uses
  %i.qg = add <8 x i16> %i.qf, splat (i16 3329)
  %i.qh = icmp slt <8 x i16> %i.qf, zeroinitializer
  %i.qi = select <8 x i1> %i.qh, <8 x i16> %i.qg, <8 x i16> zeroinitializer
  %i.qj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qf, <8 x i16> zeroinitializer)
  %i.qk = or <8 x i16> %i.qi, %i.qj               ; 8 uses
  %i.ql = extractelement <8 x i16> %i.qk, i64 4
  store i16 %i.ql, ptr %i.oh, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.qm = extractelement <8 x i16> %i.qk, i64 5
  store i16 %i.qm, ptr %i.oi, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.qn = extractelement <8 x i16> %i.qk, i64 6
  store i16 %i.qn, ptr %i.oj, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.qo = extractelement <8 x i16> %i.qk, i64 7
  store i16 %i.qo, ptr %i.ok, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.qp = add <8 x i16> %i.qe, %i.pa              ; 2 uses
  %i.qq = add <8 x i16> %i.qp, splat (i16 -3329)  ; 2 uses
  %i.qr = icmp slt <8 x i16> %i.qq, zeroinitializer
  %i.qs = select <8 x i1> %i.qr, <8 x i16> %i.qp, <8 x i16> zeroinitializer
  %i.qt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qq, <8 x i16> zeroinitializer)
  %i.qu = or <8 x i16> %i.qs, %i.qt               ; 8 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.kj, i64 36
end_hunk_0
begin_hunk_1_@scalar_ntt:bb.a
  %i.aia = select <8 x i1> %i.ahz, <8 x i16> %i.ahx, <8 x i16> zeroinitializer
  %i.aib = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ahy, <8 x i16> zeroinitializer)
  %i.aic = or <8 x i16> %i.aia, %i.aib            ; 8 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ki, i64 14
  %i.aie = getelementptr inbounds nuw i8, ptr %i.kj, i64 46
  %i.aif = getelementptr inbounds nuw i8, ptr %i.kl, i64 78
  %i.aig = getelementptr inbounds nuw i8, ptr %i.kn, i64 110
  %i.aih = getelementptr inbounds nuw i8, ptr %i.kp, i64 142 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.kr, i64 174 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.kt, i64 206 ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.kv, i64 238 ; 2 uses
  %i.ail = extractelement <8 x i16> %i.aic, i64 4
  store i16 %i.ail, ptr %i.afd, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.aim = extractelement <8 x i16> %i.aic, i64 5
  store i16 %i.aim, ptr %i.afe, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ain = extractelement <8 x i16> %i.aic, i64 6
  store i16 %i.ain, ptr %i.aff, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.aio = extractelement <8 x i16> %i.aic, i64 7
  store i16 %i.aio, ptr %i.afg, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ki, i64 30
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.kj, i64 62
  %i.air = getelementptr inbounds nuw i8, ptr %i.kl, i64 94
  %i.ais = getelementptr inbounds nuw i8, ptr %i.kn, i64 126
  %i.ait = getelementptr inbounds nuw i8, ptr %i.kp, i64 158 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.kr, i64 190 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.kt, i64 222 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.kv, i64 254 ; 2 uses
  %i.aix = load i16, ptr %i.aid, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.aiy = load i16, ptr %i.aie, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.aiz = load i16, ptr %i.aif, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.aja = load i16, ptr %i.aig, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajb = load i16, ptr %i.aih, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajc = load i16, ptr %i.aii, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajd = load i16, ptr %i.aij, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.aje = load i16, ptr %i.aik, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajf = insertelement <8 x i16> poison, i16 %i.aix, i64 0
  %i.ajg = insertelement <8 x i16> %i.ajf, i16 %i.aiy, i64 1
  %i.ajh = insertelement <8 x i16> %i.ajg, i16 %i.aiz, i64 2
  %i.aji = insertelement <8 x i16> %i.ajh, i16 %i.aja, i64 3
  %i.ajj = insertelement <8 x i16> %i.aji, i16 %i.ajb, i64 4
  %i.ajk = insertelement <8 x i16> %i.ajj, i16 %i.ajc, i64 5
  %i.ajl = insertelement <8 x i16> %i.ajk, i16 %i.ajd, i64 6
  %i.ajm = insertelement <8 x i16> %i.ajl, i16 %i.aje, i64 7 ; 2 uses
  %i.ajn = load i16, ptr %i.aip, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajo = load i16, ptr %i.aiq, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajp = load i16, ptr %i.air, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajq = load i16, ptr %i.ais, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajr = load i16, ptr %i.ait, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajs = load i16, ptr %i.aiu, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajt = load i16, ptr %i.aiv, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.aju = load i16, ptr %i.aiw, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.ajv = insertelement <8 x i16> poison, i16 %i.ajn, i64 0
  %i.ajw = insertelement <8 x i16> %i.ajv, i16 %i.ajo, i64 1
  %i.ajx = insertelement <8 x i16> %i.ajw, i16 %i.ajp, i64 2
  %i.ajy = insertelement <8 x i16> %i.ajx, i16 %i.ajq, i64 3
  %i.ajz = insertelement <8 x i16> %i.ajy, i16 %i.ajr, i64 4
  %i.aka = insertelement <8 x i16> %i.ajz, i16 %i.ajs, i64 5
  %i.akb = insertelement <8 x i16> %i.aka, i16 %i.ajt, i64 6
  %i.akc = insertelement <8 x i16> %i.akb, i16 %i.aju, i64 7
  %i.akd = zext <8 x i16> %i.akc to <8 x i32>
  %i.ake = mul nuw <8 x i32> %i.akd, %i.lg        ; 2 uses
  %i.akf = zext <8 x i32> %i.ake to <8 x i64>
  %i.akg = mul nuw nsw <8 x i64> %i.akf, splat (i64 5039)
  %i.akh = lshr <8 x i64> %i.akg, splat (i64 24)
  %i.aki = trunc nuw nsw <8 x i64> %i.akh to <8 x i32>
  %i.akj = mul <8 x i32> %i.aki, splat (i32 62207)
  %i.akk = add <8 x i32> %i.akj, %i.ake
  %i.akl = trunc <8 x i32> %i.akk to <8 x i16>    ; 2 uses
  %i.akm = add <8 x i16> %i.akl, splat (i16 -3329) ; 2 uses
  %i.akn = icmp slt <8 x i16> %i.akm, zeroinitializer
  %i.ako = select <8 x i1> %i.akn, <8 x i16> %i.akl, <8 x i16> zeroinitializer
  %i.akp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.akm, <8 x i16> zeroinitializer)
  %i.akq = or <8 x i16> %i.ako, %i.akp            ; 2 uses
  %i.akr = sub <8 x i16> %i.ajm, %i.akq           ; 3 uses
  %i.aks = add <8 x i16> %i.akr, splat (i16 3329)
  %i.akt = icmp slt <8 x i16> %i.akr, zeroinitializer
  %i.aku = select <8 x i1> %i.akt, <8 x i16> %i.aks, <8 x i16> zeroinitializer
  %i.akv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.akr, <8 x i16> zeroinitializer)
  %i.akw = or <8 x i16> %i.aku, %i.akv            ; 8 uses
  %i.akx = shufflevector <8 x i16> %i.abk, <8 x i16> %i.aeo, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.aky = shufflevector <8 x i16> %i.ahs, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.akz = shufflevector <4 x i16> %i.akx, <4 x i16> %i.aky, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ala = shufflevector <8 x i16> %i.akw, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.alb = shufflevector <4 x i16> %i.akz, <4 x i16> %i.ala, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.alb, ptr %i.zd, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.alc = shufflevector <8 x i16> %i.abk, <8 x i16> %i.aeo, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.ald = shufflevector <8 x i16> %i.ahs, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ale = shufflevector <4 x i16> %i.alc, <4 x i16> %i.ald, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.alf = shufflevector <8 x i16> %i.akw, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.alg = shufflevector <4 x i16> %i.ale, <4 x i16> %i.alf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.alg, ptr %i.ze, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.alh = shufflevector <8 x i16> %i.abk, <8 x i16> %i.aeo, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.ali = shufflevector <8 x i16> %i.ahs, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.alj = shufflevector <4 x i16> %i.alh, <4 x i16> %i.ali, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.alk = shufflevector <8 x i16> %i.akw, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.all = shufflevector <4 x i16> %i.alj, <4 x i16> %i.alk, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.all, ptr %i.zf, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.alm = shufflevector <8 x i16> %i.abk, <8 x i16> %i.aeo, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.aln = shufflevector <8 x i16> %i.ahs, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.alo = shufflevector <4 x i16> %i.alm, <4 x i16> %i.aln, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.alp = shufflevector <8 x i16> %i.akw, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.alq = shufflevector <4 x i16> %i.alo, <4 x i16> %i.alp, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.alq, ptr %i.zg, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.alr = extractelement <8 x i16> %i.akw, i64 4
  store i16 %i.alr, ptr %i.ait, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.als = extractelement <8 x i16> %i.akw, i64 5
  store i16 %i.als, ptr %i.aiu, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.alt = extractelement <8 x i16> %i.akw, i64 6
  store i16 %i.alt, ptr %i.aiv, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.alu = extractelement <8 x i16> %i.akw, i64 7
  store i16 %i.alu, ptr %i.aiw, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.alv = add <8 x i16> %i.akq, %i.ajm           ; 2 uses
  %i.alw = add <8 x i16> %i.alv, splat (i16 -3329) ; 2 uses
  %i.alx = icmp slt <8 x i16> %i.alw, zeroinitializer
  %i.aly = select <8 x i1> %i.alx, <8 x i16> %i.alv, <8 x i16> zeroinitializer
  %i.alz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.alw, <8 x i16> zeroinitializer)
  %i.ama = or <8 x i16> %i.aly, %i.alz            ; 8 uses
  %i.amb = shufflevector <8 x i16> %i.abu, <8 x i16> %i.aey, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.amc = shufflevector <8 x i16> %i.aic, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.amd = shufflevector <4 x i16> %i.amb, <4 x i16> %i.amc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ame = shufflevector <8 x i16> %i.ama, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.amf = shufflevector <4 x i16> %i.amd, <4 x i16> %i.ame, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.amf, ptr %i.xx, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.amg = shufflevector <8 x i16> %i.abu, <8 x i16> %i.aey, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.amh = shufflevector <8 x i16> %i.aic, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ami = shufflevector <4 x i16> %i.amg, <4 x i16> %i.amh, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.amj = shufflevector <8 x i16> %i.ama, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.amk = shufflevector <4 x i16> %i.ami, <4 x i16> %i.amj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.amk, ptr %i.xy, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.aml = shufflevector <8 x i16> %i.abu, <8 x i16> %i.aey, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.amm = shufflevector <8 x i16> %i.aic, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.amn = shufflevector <4 x i16> %i.aml, <4 x i16> %i.amm, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.amo = shufflevector <8 x i16> %i.ama, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.amp = shufflevector <4 x i16> %i.amn, <4 x i16> %i.amo, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.amp, ptr %i.xz, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.amq = shufflevector <8 x i16> %i.abu, <8 x i16> %i.aey, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.amr = shufflevector <8 x i16> %i.aic, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.ams = shufflevector <4 x i16> %i.amq, <4 x i16> %i.amr, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.amt = shufflevector <8 x i16> %i.ama, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.amu = shufflevector <4 x i16> %i.ams, <4 x i16> %i.amt, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.amu, ptr %i.ya, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.amv = extractelement <8 x i16> %i.ama, i64 4
  store i16 %i.amv, ptr %i.aih, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.amw = extractelement <8 x i16> %i.ama, i64 5
  store i16 %i.amw, ptr %i.aii, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.amx = extractelement <8 x i16> %i.ama, i64 6
  store i16 %i.amx, ptr %i.aij, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %i.amy = extractelement <8 x i16> %i.ama, i64 7
  store i16 %i.amy, ptr %i.aik, align 2, !tbaa !39, !alias.scope !113, !noalias !110
  %index.next103 = add nuw i64 %index100, 8       ; 2 uses
  %i.amz = icmp eq i64 %index.next103, 16
  br i1 %i.amz, label %vector.memcheck105, label %vector.body99, !llvm.loop !115

scalar.ph97:                                      ; preds = %vector.memcheck, %scalar.ph97
  %.122.4 = phi ptr [ %i.anb, %scalar.ph97 ], [ %i.hj, %vector.memcheck ]
  %.019.idx.4 = phi i64 [ %.0.add.4.7, %scalar.ph97 ], [ 0, %vector.memcheck ] ; 4 uses
  %.019.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx.4 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx.4
  %.ptr25.4 = getelementptr inbounds nuw i8, ptr %i.ana, i64 16 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %.122.4, i64 2 ; 3 uses
  %i.anc = load i16, ptr %i.anb, align 2, !tbaa !39
  %i.and = zext i16 %i.anc to i32
  %.0.add.4.7 = add nuw nsw i64 %.019.idx.4, 32
  %i.ane = load <8 x i16>, ptr %.ptr25.4, align 2, !tbaa !39
  %i.anf = zext <8 x i16> %i.ane to <8 x i32>
  %i.ang = insertelement <8 x i32> poison, i32 %i.and, i64 0
  %i.anh = shufflevector <8 x i32> %i.ang, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ani = mul nuw <8 x i32> %i.anh, %i.anf       ; 2 uses
  %i.anj = load <8 x i16>, ptr %.019.ptr.4, align 2, !tbaa !39 ; 2 uses
  %i.ank = zext <8 x i32> %i.ani to <8 x i64>
  %i.anl = mul nuw nsw <8 x i64> %i.ank, splat (i64 5039)
  %i.anm = lshr <8 x i64> %i.anl, splat (i64 24)
  %i.ann = trunc nuw nsw <8 x i64> %i.anm to <8 x i32>
  %i.ano = mul <8 x i32> %i.ann, splat (i32 62207)
  %i.anp = add <8 x i32> %i.ano, %i.ani
  %i.anq = trunc <8 x i32> %i.anp to <8 x i16>    ; 2 uses
  %i.anr = add <8 x i16> %i.anq, splat (i16 -3329) ; 2 uses
  %i.ans = icmp slt <8 x i16> %i.anr, zeroinitializer
  %i.ant = select <8 x i1> %i.ans, <8 x i16> %i.anq, <8 x i16> zeroinitializer
  %i.anu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.anr, <8 x i16> zeroinitializer)
  %i.anv = or <8 x i16> %i.ant, %i.anu            ; 2 uses
  %i.anw = sub <8 x i16> %i.anj, %i.anv           ; 3 uses
  %i.anx = add <8 x i16> %i.anw, splat (i16 3329)
  %i.any = icmp slt <8 x i16> %i.anw, zeroinitializer
  %i.anz = select <8 x i1> %i.any, <8 x i16> %i.anx, <8 x i16> zeroinitializer
  %i.aoa = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.anw, <8 x i16> zeroinitializer)
  %i.aob = or <8 x i16> %i.anz, %i.aoa
  store <8 x i16> %i.aob, ptr %.ptr25.4, align 2, !tbaa !39
  %i.aoc = add <8 x i16> %i.anv, %i.anj           ; 2 uses
  %i.aod = add <8 x i16> %i.aoc, splat (i16 -3329) ; 2 uses
  %i.aoe = icmp slt <8 x i16> %i.aod, zeroinitializer
  %i.aof = select <8 x i1> %i.aoe, <8 x i16> %i.aoc, <8 x i16> zeroinitializer
  %i.aog = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aod, <8 x i16> zeroinitializer)
  %i.aoh = or <8 x i16> %i.aof, %i.aog
  store <8 x i16> %i.aoh, ptr %.019.ptr.4, align 2, !tbaa !39
  %i.aoi = icmp samesign ult i64 %.019.idx.4, 480
  br i1 %i.aoi, label %scalar.ph97, label %vector.memcheck105, !llvm.loop !116

vector.memcheck105:                               ; preds = %vector.body99, %scalar.ph97
  %.lcssa39 = phi ptr [ %i.anb, %scalar.ph97 ], [ %i.kf, %vector.body99 ] ; 5 uses
  %scevgep107.a = getelementptr nuw i8, ptr %.lcssa39, i64 2
  %scevgep108 = getelementptr i8, ptr %.lcssa39, i64 66
  %bound0109 = icmp ult ptr %0, %scevgep108
  %bound1110 = icmp ult ptr %scevgep107.a, %scevgep
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %scalar.ph112, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck105
  %i.aoj = getelementptr i8, ptr %.lcssa39, i64 64
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph113
  %index115 = phi i64 [ 0, %vector.ph113 ], [ %index.next118, %vector.body114 ] ; 3 uses
  %i.aok = shl i64 %index115, 1
  %next.gep116 = getelementptr i8, ptr %.lcssa39, i64 %i.aok
  %i.aol = shl nuw i64 %index115, 4               ; 8 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %0, i64 %i.aol ; 9 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 %i.aol ; 8 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 16
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 %i.aol ; 8 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 32
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 %i.aol ; 8 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 48
  %i.aot = getelementptr inbounds nuw i8, ptr %0, i64 %i.aol ; 8 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 64
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 %i.aol ; 8 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 80
  %i.aox = getelementptr inbounds nuw i8, ptr %0, i64 %i.aol ; 8 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 96
  %i.aoz = getelementptr inbounds nuw i8, ptr %0, i64 %i.aol ; 8 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 112
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aon, i64 24
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aop, i64 40
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aor, i64 56
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aot, i64 72
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aov, i64 88
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aox, i64 104
  %i.api = getelementptr inbounds nuw i8, ptr %i.aoz, i64 120
  %i.apj = getelementptr inbounds nuw i8, ptr %next.gep116, i64 2
  %wide.load117 = load <8 x i16>, ptr %i.apj, align 2, !tbaa !39, !alias.scope !117
  %i.apk = zext <8 x i16> %wide.load117 to <8 x i32> ; 4 uses
  %i.apl = load i16, ptr %i.aom, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.apm = load i16, ptr %i.aoo, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.apn = load i16, ptr %i.aoq, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.apo = load i16, ptr %i.aos, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.app = load i16, ptr %i.aou, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.apq = load i16, ptr %i.aow, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.apr = load i16, ptr %i.aoy, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aps = load i16, ptr %i.apa, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.apt = insertelement <8 x i16> poison, i16 %i.apl, i64 0
  %i.apu = insertelement <8 x i16> %i.apt, i16 %i.apm, i64 1
  %i.apv = insertelement <8 x i16> %i.apu, i16 %i.apn, i64 2
  %i.apw = insertelement <8 x i16> %i.apv, i16 %i.apo, i64 3
  %i.apx = insertelement <8 x i16> %i.apw, i16 %i.app, i64 4
  %i.apy = insertelement <8 x i16> %i.apx, i16 %i.apq, i64 5
  %i.apz = insertelement <8 x i16> %i.apy, i16 %i.apr, i64 6
  %i.aqa = insertelement <8 x i16> %i.apz, i16 %i.aps, i64 7 ; 2 uses
  %i.aqb = load i16, ptr %i.apb, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aqc = load i16, ptr %i.apc, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aqd = load i16, ptr %i.apd, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aqe = load i16, ptr %i.ape, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aqf = load i16, ptr %i.apf, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aqg = load i16, ptr %i.apg, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aqh = load i16, ptr %i.aph, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aqi = load i16, ptr %i.api, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aqj = insertelement <8 x i16> poison, i16 %i.aqb, i64 0
  %i.aqk = insertelement <8 x i16> %i.aqj, i16 %i.aqc, i64 1
  %i.aql = insertelement <8 x i16> %i.aqk, i16 %i.aqd, i64 2
  %i.aqm = insertelement <8 x i16> %i.aql, i16 %i.aqe, i64 3
  %i.aqn = insertelement <8 x i16> %i.aqm, i16 %i.aqf, i64 4
  %i.aqo = insertelement <8 x i16> %i.aqn, i16 %i.aqg, i64 5
  %i.aqp = insertelement <8 x i16> %i.aqo, i16 %i.aqh, i64 6
  %i.aqq = insertelement <8 x i16> %i.aqp, i16 %i.aqi, i64 7
  %i.aqr = zext <8 x i16> %i.aqq to <8 x i32>
  %i.aqs = mul nuw <8 x i32> %i.aqr, %i.apk       ; 2 uses
  %i.aqt = zext <8 x i32> %i.aqs to <8 x i64>
  %i.aqu = mul nuw nsw <8 x i64> %i.aqt, splat (i64 5039)
  %i.aqv = lshr <8 x i64> %i.aqu, splat (i64 24)
  %i.aqw = trunc nuw nsw <8 x i64> %i.aqv to <8 x i32>
  %i.aqx = mul <8 x i32> %i.aqw, splat (i32 62207)
  %i.aqy = add <8 x i32> %i.aqx, %i.aqs
  %i.aqz = trunc <8 x i32> %i.aqy to <8 x i16>    ; 2 uses
  %i.ara = add <8 x i16> %i.aqz, splat (i16 -3329) ; 2 uses
  %i.arb = icmp slt <8 x i16> %i.ara, zeroinitializer
  %i.arc = select <8 x i1> %i.arb, <8 x i16> %i.aqz, <8 x i16> zeroinitializer
  %i.ard = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ara, <8 x i16> zeroinitializer)
  %i.are = or <8 x i16> %i.arc, %i.ard            ; 2 uses
  %i.arf = sub <8 x i16> %i.aqa, %i.are           ; 3 uses
  %i.arg = add <8 x i16> %i.are, %i.aqa           ; 2 uses
  %i.arh = add <8 x i16> %i.arg, splat (i16 -3329) ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aom, i64 2
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aon, i64 18
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aop, i64 34
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aor, i64 50
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aot, i64 66
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aov, i64 82
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aox, i64 98
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aoz, i64 114
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aom, i64 10
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aon, i64 26
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aop, i64 42
  %i.art = getelementptr inbounds nuw i8, ptr %i.aor, i64 58
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aot, i64 74
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aov, i64 90
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aox, i64 106
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aoz, i64 122
  %i.ary = load i16, ptr %i.ari, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.arz = load i16, ptr %i.arj, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asa = load i16, ptr %i.ark, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asb = load i16, ptr %i.arl, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asc = load i16, ptr %i.arm, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asd = load i16, ptr %i.arn, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.ase = load i16, ptr %i.aro, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asf = load i16, ptr %i.arp, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asg = insertelement <8 x i16> poison, i16 %i.ary, i64 0
  %i.ash = insertelement <8 x i16> %i.asg, i16 %i.arz, i64 1
  %i.asi = insertelement <8 x i16> %i.ash, i16 %i.asa, i64 2
  %i.asj = insertelement <8 x i16> %i.asi, i16 %i.asb, i64 3
  %i.ask = insertelement <8 x i16> %i.asj, i16 %i.asc, i64 4
  %i.asl = insertelement <8 x i16> %i.ask, i16 %i.asd, i64 5
  %i.asm = insertelement <8 x i16> %i.asl, i16 %i.ase, i64 6
  %i.asn = insertelement <8 x i16> %i.asm, i16 %i.asf, i64 7 ; 2 uses
  %i.aso = load i16, ptr %i.arq, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asp = load i16, ptr %i.arr, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asq = load i16, ptr %i.ars, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asr = load i16, ptr %i.art, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.ass = load i16, ptr %i.aru, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.ast = load i16, ptr %i.arv, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asu = load i16, ptr %i.arw, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asv = load i16, ptr %i.arx, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.asw = insertelement <8 x i16> poison, i16 %i.aso, i64 0
  %i.asx = insertelement <8 x i16> %i.asw, i16 %i.asp, i64 1
  %i.asy = insertelement <8 x i16> %i.asx, i16 %i.asq, i64 2
  %i.asz = insertelement <8 x i16> %i.asy, i16 %i.asr, i64 3
  %i.ata = insertelement <8 x i16> %i.asz, i16 %i.ass, i64 4
  %i.atb = insertelement <8 x i16> %i.ata, i16 %i.ast, i64 5
  %i.atc = insertelement <8 x i16> %i.atb, i16 %i.asu, i64 6
  %i.atd = insertelement <8 x i16> %i.atc, i16 %i.asv, i64 7
  %i.ate = zext <8 x i16> %i.atd to <8 x i32>
  %i.atf = mul nuw <8 x i32> %i.ate, %i.apk       ; 2 uses
  %i.atg = zext <8 x i32> %i.atf to <8 x i64>
  %i.ath = mul nuw nsw <8 x i64> %i.atg, splat (i64 5039)
  %i.ati = lshr <8 x i64> %i.ath, splat (i64 24)
  %i.atj = trunc nuw nsw <8 x i64> %i.ati to <8 x i32>
  %i.atk = mul <8 x i32> %i.atj, splat (i32 62207)
  %i.atl = add <8 x i32> %i.atk, %i.atf
  %i.atm = trunc <8 x i32> %i.atl to <8 x i16>    ; 2 uses
  %i.atn = add <8 x i16> %i.atm, splat (i16 -3329) ; 2 uses
  %i.ato = icmp slt <8 x i16> %i.atn, zeroinitializer
  %i.atp = select <8 x i1> %i.ato, <8 x i16> %i.atm, <8 x i16> zeroinitializer
  %i.atq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.atn, <8 x i16> zeroinitializer)
  %i.atr = or <8 x i16> %i.atp, %i.atq            ; 2 uses
  %i.ats = sub <8 x i16> %i.asn, %i.atr           ; 3 uses
  %i.att = add <8 x i16> %i.atr, %i.asn           ; 2 uses
  %i.atu = add <8 x i16> %i.att, splat (i16 -3329) ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.aom, i64 4
  %i.atw = getelementptr inbounds nuw i8, ptr %i.aon, i64 20
  %i.atx = getelementptr inbounds nuw i8, ptr %i.aop, i64 36
  %i.aty = getelementptr inbounds nuw i8, ptr %i.aor, i64 52
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aot, i64 68
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aov, i64 84
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aox, i64 100
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aoz, i64 116
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aom, i64 12
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aon, i64 28
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aop, i64 44
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aor, i64 60
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aot, i64 76
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aov, i64 92
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aox, i64 108
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aoz, i64 124
  %i.aul = load i16, ptr %i.atv, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aum = load i16, ptr %i.atw, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aun = load i16, ptr %i.atx, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.auo = load i16, ptr %i.aty, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aup = load i16, ptr %i.atz, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.auq = load i16, ptr %i.aua, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aur = load i16, ptr %i.aub, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aus = load i16, ptr %i.auc, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.aut = insertelement <8 x i16> poison, i16 %i.aul, i64 0
  %i.auu = insertelement <8 x i16> %i.aut, i16 %i.aum, i64 1
  %i.auv = insertelement <8 x i16> %i.auu, i16 %i.aun, i64 2
  %i.auw = insertelement <8 x i16> %i.auv, i16 %i.auo, i64 3
  %i.aux = insertelement <8 x i16> %i.auw, i16 %i.aup, i64 4
  %i.auy = insertelement <8 x i16> %i.aux, i16 %i.auq, i64 5
  %i.auz = insertelement <8 x i16> %i.auy, i16 %i.aur, i64 6
  %i.ava = insertelement <8 x i16> %i.auz, i16 %i.aus, i64 7 ; 2 uses
  %i.avb = load i16, ptr %i.aud, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avc = load i16, ptr %i.aue, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avd = load i16, ptr %i.auf, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.ave = load i16, ptr %i.aug, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avf = load i16, ptr %i.auh, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avg = load i16, ptr %i.aui, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avh = load i16, ptr %i.auj, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avi = load i16, ptr %i.auk, align 2, !tbaa !39, !alias.scope !120, !noalias !117
  %i.avj = insertelement <8 x i16> poison, i16 %i.avb, i64 0
  %i.avk = insertelement <8 x i16> %i.avj, i16 %i.avc, i64 1
  %i.avl = insertelement <8 x i16> %i.avk, i16 %i.avd, i64 2
  %i.avm = insertelement <8 x i16> %i.avl, i16 %i.ave, i64 3
  %i.avn = insertelement <8 x i16> %i.avm, i16 %i.avf, i64 4
  %i.avo = insertelement <8 x i16> %i.avn, i16 %i.avg, i64 5
  %i.avp = insertelement <8 x i16> %i.avo, i16 %i.avh, i64 6
  %i.avq = insertelement <8 x i16> %i.avp, i16 %i.avi, i64 7
end_hunk_1
