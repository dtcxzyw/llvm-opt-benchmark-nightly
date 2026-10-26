Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-iup?download=true
inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a

bb.ag:                                            ; preds = %bb.af
  %i.gv = sub nsw i32 %.076..077.i.i, %.077..076.i.i
  %i.gw = call i32 @llvm.abs.i32(i32 %i.gv, i1 true)
  %i.gx = uitofp nneg i32 %i.gw to double
  %i.gy = fcmp olt double %5, %i.gx
  br i1 %i.gy, label %bb.aq, label %.critedge.i.i

bb.ah:                                            ; preds = %bb.af
  %.080..079.i.i = select i1 %i.gt, double %.080.i.i, double %.079.i.i
  %i.gz = fcmp ugt double %.079..080.i.i, %.081.i.i
  %i.ha = fcmp ult double %.080..079.i.i, %.081.i.i
  %or.cond.i.i = or i1 %i.gz, %i.ha
  br i1 %or.cond.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.speculated104.i.i = call i32 @llvm.smin.i32(i32 %.076.i.i, i32 %.077.i.i)
  %i.hb = sitofp i32 %.sroa.speculated104.i.i to double
  %i.hc = fsub double %i.hb, %5
  %i.hd = sitofp i32 %.078.i.i to double          ; 2 uses
  %i.he = fcmp ugt double %i.hc, %i.hd
  br i1 %i.he, label %.critedge97.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.speculated.i.i88 = call i32 @llvm.smax.i32(i32 %.076.i.i, i32 %.077.i.i)
  %i.hf = sitofp i32 %.sroa.speculated.i.i88 to double
  %i.hg = fadd double %5, %i.hf
  %i.hh = fcmp ult double %i.hg, %i.hd
  br i1 %i.hh, label %.critedge97.i.i, label %.critedge.i.i

bb.ak:                                            ; preds = %bb.ah
  %.not.i.i92 = icmp eq i32 %.076.i.i, %.077.i.i
  br i1 %.not.i.i92, label %.critedge.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hi = fcmp ogt double %.079..080.i.i, %.081.i.i
  %i.hj = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.hk = uitofp nneg i32 %i.hj to double
  %i.hl = fcmp olt double %5, %i.hk               ; 2 uses
  br i1 %i.hi, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  br i1 %i.hl, label %bb.an, label %.critedge.i.i

bb.an:                                            ; preds = %bb.am
  %i.hm = sub nsw i32 %.078.i.i, %.076..077.i.i
  %i.hn = call i32 @llvm.abs.i32(i32 %i.hm, i1 true)
  %i.ho = uitofp nneg i32 %i.hn to double
  %i.hp = fcmp olt double %5, %i.ho
  br i1 %i.hp, label %.split.i.i, label %.critedge.i.i

.split.i.i:                                       ; preds = %bb.an
  %i.hq = sitofp i32 %.078.i.i to double
  %i.hr = fsub double %i.hq, %5
  %i.hs = sitofp i32 %.076..077.i.i to double
  %i.ht = fcmp olt double %i.hr, %i.hs
  %i.hu = icmp slt i32 %.076..077.i.i, %.077..076.i.i
  %not..not92.i.i = xor i1 %i.hu, %i.ht
  br i1 %not..not92.i.i, label %.critedge97.i.i, label %.critedge.i.i

bb.ao:                                            ; preds = %bb.al
  br i1 %i.hl, label %bb.ap, label %.critedge.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hv = sub nsw i32 %.078.i.i, %.077..076.i.i
  %i.hw = call i32 @llvm.abs.i32(i32 %i.hv, i1 true)
  %i.hx = uitofp nneg i32 %i.hw to double
  %i.hy = fcmp olt double %5, %i.hx
  br i1 %i.hy, label %.split116.i.i, label %.critedge.i.i

.split116.i.i:                                    ; preds = %bb.ap
  %i.hz = sitofp i32 %.077..076.i.i to double
  %i.ia = sitofp i32 %.078.i.i to double
  %i.ib = fadd double %5, %i.ia
  %i.ic = fcmp ogt double %i.ib, %i.hz
  %i.id = icmp slt i32 %.076..077.i.i, %.077..076.i.i
  %not..not91.i.i = xor i1 %i.id, %i.ic
  br i1 %not..not91.i.i, label %.critedge97.i.i, label %.critedge.i.i

bb.aq:                                            ; preds = %bb.ag
  %i.ie = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.if = uitofp nneg i32 %i.ie to double
  %i.ig = fcmp olt double %5, %i.if
  br i1 %i.ig, label %.critedge97.i.i, label %.critedge.i.i

.critedge97.i.i:                                  ; preds = %bb.bb, %.split.1.i.i, %.split116.1.i.i, %bb.at, %bb.as, %bb.aq, %.split116.i.i, %.split.i.i, %bb.aj, %bb.ai
  %i.ih = and i64 %indvars.iv.i.i, 63
  %i.ii = shl nuw i64 1, %i.ih
  %i.ij = lshr i64 %indvars.iv.i.i, 6
  %i.ik = and i64 %i.ij, 7
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ik ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !37
  %i.in = or i64 %i.im, %i.ii
  store i64 %i.in, ptr %i.il, align 8, !tbaa !37
  br label %.loopexit.i.i

.critedge.i.i:                                    ; preds = %bb.aq, %.split116.i.i, %bb.ap, %bb.ao, %.split.i.i, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ag
  %.076.1.i.i = load i32, ptr %i.gq, align 4, !tbaa !31 ; 5 uses
  %.077.1.i.i = load i32, ptr %i.gn, align 4, !tbaa !31 ; 5 uses
  %.078.1.i.i = load i32, ptr %i.gj, align 4, !tbaa !31 ; 7 uses
  %.079.in.1.i.i = load float, ptr %i.gp, align 4, !tbaa !38 ; 3 uses
  %.079.1.i.i = fpext float %.079.in.1.i.i to double ; 2 uses
  %.080.in.1.i.i = load float, ptr %i.gm, align 4, !tbaa !38 ; 3 uses
  %.080.1.i.i = fpext float %.080.in.1.i.i to double ; 2 uses
  %.081.in.1.i.i = load float, ptr %i.gi, align 4, !tbaa !38
  %.081.1.i.i = fpext float %.081.in.1.i.i to double ; 3 uses
  %i.io = fcmp ugt float %.080.in.1.i.i, %.079.in.1.i.i ; 4 uses
  %.076..077.1.i.i = select i1 %i.io, i32 %.076.1.i.i, i32 %.077.1.i.i ; 5 uses
  %.077..076.1.i.i = select i1 %i.io, i32 %.077.1.i.i, i32 %.076.1.i.i ; 5 uses
  %.079..080.1.i.i = select i1 %i.io, double %.079.1.i.i, double %.080.1.i.i ; 2 uses
  %i.ip = fcmp oeq float %.079.in.1.i.i, %.080.in.1.i.i
  br i1 %i.ip, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %.critedge.i.i
  %.080..079.1.i.i = select i1 %i.io, double %.080.1.i.i, double %.079.1.i.i
  %i.iq = fcmp ugt double %.079..080.1.i.i, %.081.1.i.i
  %i.ir = fcmp ult double %.080..079.1.i.i, %.081.1.i.i
  %or.cond.1.i.i = or i1 %i.iq, %i.ir
  br i1 %or.cond.1.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.speculated104.1.i.i = call i32 @llvm.smin.i32(i32 %.076.1.i.i, i32 %.077.1.i.i)
  %i.is = sitofp i32 %.sroa.speculated104.1.i.i to double
  %i.it = fsub double %i.is, %5
  %i.iu = sitofp i32 %.078.1.i.i to double        ; 2 uses
  %i.iv = fcmp ugt double %i.it, %i.iu
  br i1 %i.iv, label %.critedge97.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.speculated.1.i.i = call i32 @llvm.smax.i32(i32 %.076.1.i.i, i32 %.077.1.i.i)
  %i.iw = sitofp i32 %.sroa.speculated.1.i.i to double
  %i.ix = fadd double %5, %i.iw
  %i.iy = fcmp ult double %i.ix, %i.iu
  br i1 %i.iy, label %.critedge97.i.i, label %.loopexit.i.i

bb.au:                                            ; preds = %bb.ar
  %.not.1.i.i = icmp eq i32 %.076.1.i.i, %.077.1.i.i
  br i1 %.not.1.i.i, label %.loopexit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iz = fcmp ogt double %.079..080.1.i.i, %.081.1.i.i
  %i.ja = call i32 @llvm.abs.i32(i32 %.078.1.i.i, i1 true)
  %i.jb = uitofp nneg i32 %i.ja to double
  %i.jc = fcmp olt double %5, %i.jb               ; 2 uses
  br i1 %i.iz, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.jc, label %bb.ax, label %.loopexit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.jd = sub nsw i32 %.078.1.i.i, %.077..076.1.i.i
  %i.je = call i32 @llvm.abs.i32(i32 %i.jd, i1 true)
  %i.jf = uitofp nneg i32 %i.je to double
  %i.jg = fcmp olt double %5, %i.jf
  br i1 %i.jg, label %.split116.1.i.i, label %.loopexit.i.i

.split116.1.i.i:                                  ; preds = %bb.ax
  %i.jh = sitofp i32 %.077..076.1.i.i to double
  %i.ji = sitofp i32 %.078.1.i.i to double
  %i.jj = fadd double %5, %i.ji
  %i.jk = fcmp ogt double %i.jj, %i.jh
  %i.jl = icmp slt i32 %.076..077.1.i.i, %.077..076.1.i.i
  %not..not91.1.i.i = xor i1 %i.jl, %i.jk
  br i1 %not..not91.1.i.i, label %.critedge97.i.i, label %.loopexit.i.i

bb.ay:                                            ; preds = %bb.av
  br i1 %i.jc, label %bb.az, label %.loopexit.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jm = sub nsw i32 %.078.1.i.i, %.076..077.1.i.i
  %i.jn = call i32 @llvm.abs.i32(i32 %i.jm, i1 true)
  %i.jo = uitofp nneg i32 %i.jn to double
  %i.jp = fcmp olt double %5, %i.jo
  br i1 %i.jp, label %.split.1.i.i, label %.loopexit.i.i

.split.1.i.i:                                     ; preds = %bb.az
  %i.jq = sitofp i32 %.078.1.i.i to double
  %i.jr = fsub double %i.jq, %5
  %i.js = sitofp i32 %.076..077.1.i.i to double
  %i.jt = fcmp olt double %i.jr, %i.js
  %i.ju = icmp slt i32 %.076..077.1.i.i, %.077..076.1.i.i
  %not..not92.1.i.i = xor i1 %i.ju, %i.jt
  br i1 %not..not92.1.i.i, label %.critedge97.i.i, label %.loopexit.i.i

bb.ba:                                            ; preds = %.critedge.i.i
  %i.jv = sub nsw i32 %.076..077.1.i.i, %.077..076.1.i.i
  %i.jw = call i32 @llvm.abs.i32(i32 %i.jv, i1 true)
  %i.jx = uitofp nneg i32 %i.jw to double
  %i.jy = fcmp olt double %5, %i.jx
  br i1 %i.jy, label %bb.bb, label %.loopexit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.jz = call i32 @llvm.abs.i32(i32 %.078.1.i.i, i1 true)
  %i.ka = uitofp nneg i32 %i.jz to double
  %i.kb = fcmp olt double %5, %i.ka
  br i1 %i.kb, label %.critedge97.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bb, %bb.ba, %.split.1.i.i, %bb.az, %bb.ay, %.split116.1.i.i, %bb.ax, %bb.aw, %bb.au, %bb.at, %.critedge97.i.i
  %i.kc = phi i32 [ %i.gd, %bb.bb ], [ %i.gd, %bb.ba ], [ %i.gd, %.split.1.i.i ], [ %i.gd, %bb.az ], [ %i.gd, %bb.ay ], [ %i.gd, %.split116.1.i.i ], [ %i.gd, %bb.ax ], [ %i.gd, %bb.aw ], [ %i.gd, %bb.au ], [ %i.gd, %bb.at ], [ -1, %.critedge97.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %16 = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %16, label %bb.af, label %_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i, !llvm.loop !61

_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i: ; preds = %.loopexit.i.i
  store i32 %i.kc, ptr %6, align 8
  %i.kd = load i32, ptr %i.dj, align 8, !tbaa !26 ; 2 uses
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.bc, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i, !prof !16

bb.bc:                                            ; preds = %_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i
  %i.kf = xor i32 %i.kd, -1
  store i32 %i.kf, ptr %i.dj, align 8, !tbaa !26
  br label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i:           ; preds = %bb.bc, %_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i
  store i32 0, ptr %i.dk, align 4, !tbaa !27
  %i.kg = load i32, ptr %i.dl, align 8, !tbaa !39 ; 2 uses
  %i.kh = icmp slt i32 %i.kg, 0
  br i1 %i.kh, label %bb.bd, label %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i, !prof !16

bb.bd:                                            ; preds = %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i
  %i.ki = xor i32 %i.kg, -1
  store i32 %i.ki, ptr %i.dl, align 8, !tbaa !39
  br label %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i

_ZN11hb_vector_tIiLb0EE5resetEv.exit.i:           ; preds = %bb.bd, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i
  store i32 0, ptr %i.dm, align 4, !tbaa !34
  %i.kj = icmp eq i32 %i.kc, -1
  br i1 %i.kj, label %bb.be, label %bb.bw

bb.be:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i
  %i.kk = load i64, ptr %i.di, align 8, !tbaa !37 ; 2 uses
  %.not.not.i.i.i = icmp ne i64 %i.kk, 0          ; 2 uses
  %i.kl = load i64, ptr %i.dn, align 8            ; 2 uses
  %.not.1.not.i.i.i = icmp ne i64 %i.kl, 0        ; 2 uses
  %or.cond.not27.i.i.i = select i1 %.not.not.i.i.i, i1 true, i1 %.not.1.not.i.i.i
  %i.km = load i64, ptr %i.do, align 8            ; 2 uses
  %.not.2.not.i.i.i = icmp ne i64 %i.km, 0        ; 4 uses
  %or.cond12.not26.i.i.i = select i1 %or.cond.not27.i.i.i, i1 true, i1 %.not.2.not.i.i.i
  %i.kn = load i64, ptr %i.dp, align 8            ; 2 uses
  %.not.3.not.i.i.i = icmp ne i64 %i.kn, 0        ; 2 uses
  %or.cond14.not25.i.i.i = select i1 %or.cond12.not26.i.i.i, i1 true, i1 %.not.3.not.i.i.i
  %i.ko = load i64, ptr %i.dq, align 8            ; 2 uses
  %.not.4.not.i.i.i = icmp ne i64 %i.ko, 0        ; 4 uses
  %or.cond16.not24.i.i.i = select i1 %or.cond14.not25.i.i.i, i1 true, i1 %.not.4.not.i.i.i
  %i.kp = load i64, ptr %i.dr, align 8            ; 2 uses
  %.not.5.not.i.i.i = icmp ne i64 %i.kp, 0        ; 2 uses
  %or.cond18.not23.i.i.i = select i1 %or.cond16.not24.i.i.i, i1 true, i1 %.not.5.not.i.i.i
  %i.kq = load i64, ptr %i.ds, align 8            ; 2 uses
  %.not.6.not.i.i.i = icmp ne i64 %i.kq, 0        ; 4 uses
  %or.cond20.not.i.i.i = select i1 %or.cond18.not23.i.i.i, i1 true, i1 %.not.6.not.i.i.i
  %i.kr = load i64, ptr %i.dt, align 8            ; 2 uses
  %.not.7.not.i.i.i = icmp ne i64 %i.kr, 0        ; 4 uses
  %or.cond22.i.i.i = select i1 %or.cond20.not.i.i.i, i1 true, i1 %.not.7.not.i.i.i
  br i1 %or.cond22.i.i.i, label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i, label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i

_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i:     ; preds = %bb.be
  store i32 0, ptr %6, align 8, !tbaa !42
  br label %bb.bw

_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i:   ; preds = %bb.be
  %brmerge = select i1 %.not.7.not.i.i.i, i1 true, i1 %.not.6.not.i.i.i
  %brmerge217 = select i1 %brmerge, i1 true, i1 %.not.5.not.i.i.i ; 3 uses
  %.mux = select i1 %.not.6.not.i.i.i, i64 %i.kq, i64 %i.kp
  %.mux.mux = select i1 %.not.7.not.i.i.i, i64 %i.kr, i64 %.mux
  %.mux216 = select i1 %.not.6.not.i.i.i, i32 384, i32 320
  %.mux216.mux = select i1 %.not.7.not.i.i.i, i32 448, i32 %.mux216
  %brmerge218 = select i1 %brmerge217, i1 true, i1 %.not.4.not.i.i.i
  %brmerge219 = select i1 %brmerge218, i1 true, i1 %.not.3.not.i.i.i ; 3 uses
  %.mux.mux.mux = select i1 %.not.4.not.i.i.i, i64 %i.ko, i64 %i.kn
  %.mux.mux.mux.mux = select i1 %brmerge217, i64 %.mux.mux, i64 %.mux.mux.mux
  %.mux216.mux.mux = select i1 %.not.4.not.i.i.i, i32 256, i32 192
  %.mux216.mux.mux.mux = select i1 %brmerge217, i32 %.mux216.mux, i32 %.mux216.mux.mux
  %brmerge220 = select i1 %brmerge219, i1 true, i1 %.not.2.not.i.i.i
  %brmerge221 = select i1 %brmerge220, i1 true, i1 %.not.1.not.i.i.i ; 3 uses
  %.mux.mux.mux.mux.mux = select i1 %.not.2.not.i.i.i, i64 %i.km, i64 %i.kl
  %.mux.mux.mux.mux.mux.mux = select i1 %brmerge219, i64 %.mux.mux.mux.mux, i64 %.mux.mux.mux.mux.mux
  %.mux216.mux.mux.mux.mux = select i1 %.not.2.not.i.i.i, i32 128, i32 64
  %.mux216.mux.mux.mux.mux.mux = select i1 %brmerge219, i32 %.mux216.mux.mux.mux, i32 %.mux216.mux.mux.mux.mux
  %brmerge222 = or i1 %brmerge221, %.not.not.i.i.i
  %.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge221, i64 %.mux.mux.mux.mux.mux.mux, i64 %i.kk
  %.mux216.mux.mux.mux.mux.mux.mux = select i1 %brmerge221, i32 %.mux216.mux.mux.mux.mux.mux, i32 0
  %i.ks = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.mux.mux.mux.mux.mux.mux.mux, i1 true)
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = or disjoint i32 %.mux216.mux.mux.mux.mux.mux.mux, %i.kt
  %i.kv = xor i32 %i.ku, 63
  %i.kw = select i1 %brmerge222, i32 %i.kv, i32 0
  %i.kx = sub nsw i32 %.084118.i.i, %i.kw         ; 6 uses
  %i.ky = icmp slt i32 %i.kx, 0
  br i1 %i.ky, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116, label %bb.bf

bb.bf:                                            ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i
  %i.kz = load i32, ptr %i.eg, align 8, !tbaa !39 ; 2 uses
  %i.la = icmp slt i32 %i.kz, 0
  br i1 %i.la, label %bb.bg, label %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i, !prof !16

bb.bg:                                            ; preds = %bb.bf
  %i.lb = xor i32 %i.kz, -1
  store i32 %i.lb, ptr %i.eg, align 8, !tbaa !39
  br label %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i

_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i:        ; preds = %bb.bg, %bb.bf
  store i32 0, ptr %i.eh, align 4, !tbaa !34
  %i.lc = load i32, ptr %i.ei, align 8, !tbaa !39 ; 2 uses
  %i.ld = icmp slt i32 %i.lc, 0
  br i1 %i.ld, label %bb.bh, label %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i, !prof !16

bb.bh:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i
  %i.le = xor i32 %i.lc, -1
  store i32 %i.le, ptr %i.ei, align 8, !tbaa !39
  br label %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i

_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i:        ; preds = %bb.bh, %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i
  store i32 0, ptr %i.ej, align 4, !tbaa !34
  %i.lf = load i32, ptr %i.ek, align 8, !tbaa !43 ; 2 uses
  %i.lg = icmp slt i32 %i.lf, 0
  br i1 %i.lg, label %bb.bi, label %bb.bj, !prof !16

bb.bi:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i
  %i.lh = xor i32 %i.lf, -1
  store i32 %i.lh, ptr %i.ek, align 8, !tbaa !43
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i, %bb.bi
  store i32 0, ptr %i.el, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.em, i8 0, i64 64, i1 false), !tbaa !37
  store i32 0, ptr %7, align 8, !tbaa !42
  %i.li = call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %.sroa.speculated.i.i, i1 noundef zeroext false)
  br i1 %i.li, label %bb.bk, label %.critedge170.critedge.i, !prof !44

bb.bk:                                            ; preds = %bb.bj
  store i32 %.sroa.speculated.i.i, ptr %i.el, align 4, !tbaa !15
  %i.lj = urem i32 %i.kx, %.sroa.speculated.i.i   ; 4 uses
  %i.lk = zext nneg i32 %i.lj to i64              ; 2 uses
  %.not.i.i96 = icmp eq i32 %i.lj, 0
  br i1 %.not.i.i96, label %_ZL9hb_memcpyPvPKvm.exit.i, label %bb.bl, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.ll = mul nuw nsw i32 %i.lj, 12
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %.sroa.3.8.insert.ext.i.i84
  %i.lo = sub nsw i64 0, %i.lk
  %i.lp = getelementptr inbounds [12 x i8], ptr %i.ln, i64 %i.lo
  %i.lq = load ptr, ptr %i.en, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lq, ptr nonnull readonly align 1 %i.lp, i64 range(i64 0, 51539607541) %i.lm, i1 false), !alias.scope !103
  br label %_ZL9hb_memcpyPvPKvm.exit.i

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.bk, %bb.bl
  %i.lr = sub nuw nsw i32 %.sroa.speculated.i.i, %i.lj
  %i.ls = mul nuw nsw i32 %i.lr, 12
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = load ptr, ptr %i.en, align 8, !tbaa !28
  %i.lv = getelementptr inbounds nuw [12 x i8], ptr %i.lu, i64 %i.lk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lv, ptr nonnull readonly align 4 %i.fa, i64 range(i64 0, 51539607541) %i.lt, i1 false), !alias.scope !104
  %i.lw = call fastcc noundef zeroext i1 @_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nonnull readonly %i.fd, i32 %.sroa.speculated.i.i, i32 noundef %i.kx, ptr noundef nonnull align 8 dereferenceable(16) %i.eg)
  br i1 %i.lw, label %bb.bm, label %.critedge170.critedge.i

bb.bm:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i
  %i.lx = call fastcc noundef zeroext i1 @_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr readonly %i.fg, i32 %.sroa.speculated.i.i, i32 noundef %i.kx, ptr noundef nonnull align 8 dereferenceable(16) %i.ei)
  br i1 %i.lx, label %bb.bn, label %.critedge170.critedge.i

bb.bn:                                            ; preds = %bb.bm
  %i.ly = call fastcc noundef zeroext i1 @_ZL10rotate_setRK13hb_bit_page_tijRS_(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.kx, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(72) %7)
  br i1 %i.ly, label %bb.bo, label %.critedge170.critedge.i

bb.bo:                                            ; preds = %bb.bn
  %i.lz = call fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(72) %7, double noundef %i.dh, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
  br i1 %i.lz, label %bb.bp, label %.critedge170.critedge.i

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eo, i8 0, i64 64, i1 false), !tbaa !37
  store i32 -1, ptr %8, align 8, !tbaa !42
  %i.ma = load ptr, ptr %i.ee, align 8, !tbaa !33
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %.015351.i = phi i32 [ %.084118.i.i, %bb.bp ], [ %i.mm, %bb.bq ] ; 3 uses
  %i.mb = and i32 %.015351.i, 63
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = shl nuw i64 1, %i.mc
  %i.me = lshr i32 %.015351.i, 6
  %i.mf = and i32 %i.me, 7
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.mg ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !37
  %i.mj = or i64 %i.md, %i.mi
  store i64 %i.mj, ptr %i.mh, align 8, !tbaa !37
  %i.mk = sext i32 %.015351.i to i64
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !31 ; 2 uses
  %.not166.i = icmp eq i32 %i.mm, -1
  br i1 %.not166.i, label %bb.br, label %bb.bq, !llvm.loop !68

bb.br:                                            ; preds = %bb.bq
  %i.mn = call noundef zeroext i1 @_ZNK13hb_bit_page_t8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
  br i1 %i.mn, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mo = call noundef i32 @_ZNK13hb_bit_page_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
  %i.mp = call noundef i32 @_ZNK13hb_bit_page_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
end_hunk_0
begin_hunk_1_@_ZN11hb_vector_tIjLb0EE5allocEjb:bb.a

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK13hb_bit_page_t8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !42     ; 2 uses
  %.not3 = icmp eq i32 %i.a, -1
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37
  %.not.not.i = icmp ne i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %.not.1.not.i = icmp ne i64 %i.e, 0
  %or.cond.not27.i = select i1 %.not.not.i, i1 true, i1 %.not.1.not.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %.not.2.not.i = icmp ne i64 %i.g, 0
  %or.cond12.not26.i = select i1 %or.cond.not27.i, i1 true, i1 %.not.2.not.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %.not.3.not.i = icmp ne i64 %i.i, 0
  %or.cond14.not25.i = select i1 %or.cond12.not26.i, i1 true, i1 %.not.3.not.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %.not.4.not.i = icmp ne i64 %i.k, 0
  %or.cond16.not24.i = select i1 %or.cond14.not25.i, i1 true, i1 %.not.4.not.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8
  %.not.5.not.i = icmp ne i64 %i.m, 0
  %or.cond18.not23.i = select i1 %or.cond16.not24.i, i1 true, i1 %.not.5.not.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8
  %.not.6.not.i = icmp ne i64 %i.o, 0
  %or.cond20.not.i = select i1 %or.cond18.not23.i, i1 true, i1 %.not.6.not.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8
  %.not.7.not.i = icmp ne i64 %i.q, 0
  %or.cond22.i = select i1 %or.cond20.not.i, i1 true, i1 %.not.7.not.i
  br i1 %or.cond22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %0, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %.not, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nofree readonly captures(none) %.0.val, i32 %.8.val, i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %.8.val, 0
  br i1 %.not, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %.8.val, 0
  br i1 %i.a, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.8.val, i1 noundef zeroext false)
  br i1 %i.b, label %bb.d, label %_ZL9hb_memcpyPvPKvm.exit26, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.8.val, ptr %i.c, align 4, !tbaa !34
  %i.d = urem i32 %0, %.8.val                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = shl i32 %i.d, 2                          ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.h = zext i32 %i.g to i64
  %i.i = zext nneg i32 %.8.val to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.i
  %i.k = sub nsw i64 0, %i.f
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull readonly align 1 %i.l, i64 range(i64 0, 51539607541) %i.h, i1 false), !alias.scope !126
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.d, %bb.e
  %i.n = sub nuw nsw i32 %.8.val, %i.d
  %i.o = shl i32 %i.n, 2                          ; 2 uses
  %.not.i25 = icmp eq i32 %i.o, 0
  br i1 %.not.i25, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.f, !prof !16

bb.f:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr readonly align 1 %.0.val, i64 range(i64 0, 51539607541) %i.p, i1 false), !alias.scope !127
  br label %_ZL9hb_memcpyPvPKvm.exit26

_ZL9hb_memcpyPvPKvm.exit26:                       ; preds = %bb.c, %bb.b, %bb.f, %_ZL9hb_memcpyPvPKvm.exit, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ true, %_ZL9hb_memcpyPvPKvm.exit ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL10rotate_setRK13hb_bit_page_tijRS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef range(i32 0, 513) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp ne i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = urem i32 %1, %2                          ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !54
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %.not.1.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.1.i.i.i.i.i, label %bb.f, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %.not.2.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.2.i.i.i.i.i, label %bb.g, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %.not.3.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.3.i.i.i.i.i, label %bb.h, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %.not.4.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.4.i.i.i.i.i, label %bb.i, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %.not.5.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.5.i.i.i.i.i, label %bb.j, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  %.not.6.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.6.i.i.i.i.i, label %bb.k, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %.not.7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.7.i.i.i.i.i, label %.loopexit, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0712.lcssa.wide.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ 64, %bb.e ], [ 128, %bb.f ], [ 192, %bb.g ], [ 256, %bb.h ], [ 320, %bb.i ], [ 384, %bb.j ], [ 448, %bb.k ]
  %.lcssa.i.i.i.i.i = phi i64 [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.i, %bb.f ], [ %i.k, %bb.g ], [ %i.m, %bb.h ], [ %i.o, %bb.i ], [ %i.q, %bb.j ], [ %i.s, %bb.k ]
  %i.t = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i.i, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %.0712.lcssa.wide.i.i.i.i.i, %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 -1, ptr %3, align 8, !tbaa !42
  %i.x = add nuw nsw i32 %i.v, %i.b
  %4 = urem i32 %i.x, %2                          ; 2 uses
  %i.y = and i32 %4, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = lshr i32 %4, 6
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.af = or i64 %i.aa, %i.ae
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !37
  %i.ag = add nuw nsw i32 %i.v, 1                 ; 2 uses
  %i.ah = and i32 %i.ag, 511                      ; 2 uses
  %.not.i.i.i56 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i56, label %.loopexit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit
  %i.ai = phi i32 [ %i.bo, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit ], [ %i.ah, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit ]
  %i.aj = phi i32 [ %i.bn, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit ], [ %i.ag, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit ] ; 2 uses
  %i.ak = lshr i32 %i.ai, 6                       ; 2 uses
  %i.al = and i32 %i.aj, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !37
  %i.ap = zext nneg i32 %i.al to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.ap
  %i.aq = and i64 %i.ao, %notmask.i.i.i
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !37
  %i.ar = lshr i32 %i.aj, 6
  %i.as = and i32 %i.ar, 7                        ; 2 uses
  %i.at = zext nneg i32 %i.as to i64
  %i.au = or disjoint i32 %i.as, 8
  %i.av = sub nuw nsw i32 %i.au, %i.ak
  %wide.trip.count.i.i.i = zext nneg i32 %i.av to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.at, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 2 uses
  %.027.i.i.i = phi ptr [ %i.a, %.lr.ph.preheader.i.i.i ], [ %i.ax, %bb.l ]
  %i.aw = load i64, ptr %.027.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not20.not.i.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not20.not.i.not.i.i, label %bb.l, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit: ; preds = %.lr.ph.i.i.i
  %i.ay = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.az = shl nuw nsw i32 %i.ay, 6
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aw, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = add nuw i32 %i.bc, %i.b
  %i.be = urem i32 %i.bd, %2                      ; 2 uses
  %i.bf = and i32 %i.be, 63
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = lshr i32 %i.be, 6
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !37
  %i.bm = or i64 %i.bh, %i.bl
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !37
  %i.bn = add nuw i32 %i.bc, 1                    ; 2 uses
  %i.bo = and i32 %i.bn, 511                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.preheader.i.i.i

.loopexit:                                        ; preds = %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit, %bb.k, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49, %bb.c, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, double noundef %4, i32 noundef range(i32 0, 513) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 8 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.d, label %bb.c, label %.thread, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.b, ptr %i.e, align 4, !tbaa !27
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.b, ptr %i.g, align 4, !tbaa !34
  %.sroa.speculated133 = tail call i32 @llvm.umin.i32(i32 %5, i32 8)
  %.not172 = icmp eq i32 %i.b, 0
  br i1 %.not172, label %.thread, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = add nsw i32 %i.b, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph171, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next, %.loopexit ] ; 11 uses
  %i.s = icmp eq i64 %indvars.iv, 0
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !30   ; 3 uses
  br i1 %i.s, label %.thread140, label %bb.f

.thread140:                                       ; preds = %bb.e
  store i32 1, ptr %i.t, align 4, !tbaa !31
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !33
  store i32 -1, ptr %i.u, align 4, !tbaa !31
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31
  %i.y = add i32 %i.x, 1                          ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  store i32 %i.y, ptr %i.z, align 4, !tbaa !31
  %i.aa = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !31
  %i.ae = lshr i32 %i.ab, 6
  %i.af = and i32 %i.ae, 7
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.aj = and i32 %i.ab, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = and i64 %i.ai, %i.al
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.thread140, %bb.f
  %.pre-phi = phi i32 [ 0, %.thread140 ], [ %i.aa, %bb.f ] ; 3 uses
  %i.an = phi i32 [ 1, %.thread140 ], [ %i.y, %bb.f ]
  %i.ao = sub nsw i32 %.pre-phi, %.sroa.speculated133
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 -2) ; 3 uses
  %i.aq = add nsw i32 %.pre-phi, -2               ; 2 uses
  %.not81.not165 = icmp sgt i32 %i.aq, %i.ap
  br i1 %.not81.not165, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.backedge
  %.077167 = phi i32 [ %.1, %.lr.ph.backedge ], [ %i.an, %bb.g ] ; 10 uses
  %.078166 = phi i32 [ %.078166.be, %.lr.ph.backedge ], [ %i.aq, %bb.g ] ; 11 uses
  %i.ar = icmp eq i32 %.078166, -1                ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.at = zext nneg i32 %.078166 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !31
  %i.aw = add i32 %i.av, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.ax = phi i32 [ %i.aw, %bb.h ], [ 1, %.lr.ph ] ; 3 uses
  %i.ay = icmp ult i32 %i.ax, %.077167
  br i1 %i.ay, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.az = select i1 %i.ar, i32 %i.k, i32 %.078166
  %i.ba = xor i32 %.078166, -1
  %i.bb = add i32 %.pre-phi, %i.ba
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !28  ; 3 uses
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !15
  %i.be = add nsw i32 %.078166, 1                 ; 2 uses
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.bd, i32 %i.be)
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.bb)
  %i.bf = zext nneg i32 %i.be to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %.sroa.speculated.i.i.fr = freeze i32 %.sroa.speculated.i.i ; 12 uses
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i.fr to i64 ; 10 uses
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !33  ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf ; 2 uses
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !33  ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bf ; 2 uses
  %i.bl = zext i32 %i.az to i64                   ; 3 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bl
end_hunk_1
begin_hunk_2_@_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_:bb.a
  br i1 %.not9.i.i.i120, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = shl nuw i32 %i.cb, 3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = tail call ptr @hb_malloc(i64 noundef %i.cg) #9 ; 4 uses
  %.not10.i.i.i121 = icmp eq ptr %i.ch, null
  br i1 %.not10.i.i.i121, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, label %bb.p, !prof !16

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !147 ; 2 uses
  %.not.i.i.i.i122 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i122, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124, label %bb.q, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !146
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr readonly align 1 %i.cl, i64 range(i64 0, 51539607541) %i.ck, i1 false), !alias.scope !148
  br label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111: ; preds = %bb.n, %bb.m
  %i.cm = phi ptr [ null, %bb.n ], [ %i.ce, %bb.m ]
  %i.cn = shl nuw i32 %i.cb, 3
  %i.co = zext i32 %i.cn to i64
  %i.cp = tail call ptr @hb_realloc(ptr noundef %i.cm, i64 noundef %i.co) #9 ; 2 uses
  %.not22.i112 = icmp eq ptr %i.cp, null
  br i1 %.not22.i112, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124, !prof !52

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111, %bb.o
  %i.cq = load i32, ptr %8, align 8, !tbaa !145   ; 2 uses
  %.not23.i119 = icmp ugt i32 %i.cb, %i.cq
  br i1 %.not23.i119, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, !prof !149

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, %.thread.i108
  %.sink.i116.ph.in = phi i32 [ %i.bx, %.thread.i108 ], [ %i.cq, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118 ]
  %.sink.i116.ph = xor i32 %.sink.i116.ph.in, -1
  store i32 %.sink.i116.ph, ptr %8, align 8, !tbaa !145
  br label %.critedge

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124:         ; preds = %bb.p, %bb.q, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111
  %.1.i.i42.i114 = phi ptr [ %i.cp, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i111 ], [ %i.ch, %bb.q ], [ %i.ch, %bb.p ]
  store ptr %.1.i.i42.i114, ptr %i.o, align 8, !tbaa !146
  store i32 %i.cb, ptr %8, align 8, !tbaa !145
  br label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread

_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread:  ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i118, %bb.l, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124
  store i32 %.sroa.speculated.i.i.fr, ptr %i.p, align 4, !tbaa !147
  %i.cr = load i32, ptr %9, align 8, !tbaa !145   ; 5 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %.critedge, label %bb.r, !prof !16

bb.r:                                             ; preds = %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread
  %.not.i103 = icmp samesign ugt i32 %.sroa.speculated.i.i.fr, %i.cr
  br i1 %.not.i103, label %.preheader.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i, !prof !16

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %.043.i = phi i32 [ %i.cv, %.preheader.i ], [ %i.cr, %bb.r ] ; 2 uses
  %i.ct = lshr i32 %.043.i, 1
  %i.cu = add nuw i32 %.043.i, 8
  %i.cv = add nuw i32 %i.cu, %i.ct                ; 7 uses
  %i.cw = icmp ugt i32 %.sroa.speculated.i.i.fr, %i.cv
  br i1 %i.cw, label %.preheader.i, label %.thread.i, !llvm.loop !128

.thread.i:                                        ; preds = %.preheader.i
  %i.cx = icmp ugt i32 %i.cv, 536870911
  br i1 %i.cx, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, label %bb.s, !prof !16

bb.s:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.cr, 0
  %i.cy = load ptr, ptr %i.r, align 8, !tbaa !146 ; 2 uses
  br i1 %.not49.i, label %bb.t, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i

bb.t:                                             ; preds = %bb.s
  %.not9.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = shl nuw i32 %i.cv, 3
  %i.da = zext i32 %i.cz to i64
  %i.db = tail call ptr @hb_malloc(i64 noundef %i.da) #9 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, label %bb.v, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.dc = load i32, ptr %i.q, align 4, !tbaa !147 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread, label %bb.w, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.dd = zext i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !146
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr readonly align 1 %i.df, i64 range(i64 0, 51539607541) %i.de, i1 false), !alias.scope !150
  br label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i: ; preds = %bb.t, %bb.s
  %i.dg = phi ptr [ null, %bb.t ], [ %i.cy, %bb.s ]
  %i.dh = shl nuw i32 %i.cv, 3
  %i.di = zext i32 %i.dh to i64
  %i.dj = tail call ptr @hb_realloc(ptr noundef %i.dg, i64 noundef %i.di) #9 ; 2 uses
  %.not22.i = icmp eq ptr %i.dj, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread, !prof !52

_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, %bb.u
  %i.dk = load i32, ptr %9, align 8, !tbaa !145   ; 2 uses
  %.not23.i = icmp ugt i32 %i.cv, %i.dk
  br i1 %.not23.i, label %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, label %.sink.split

_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152:  ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.cr, %.thread.i ], [ %i.dk, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %9, align 8, !tbaa !145
  br label %.critedge

_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread: ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i, %bb.w, %bb.v
  %.1.i.i42.i = phi ptr [ %i.dj, %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.i ], [ %i.db, %bb.w ], [ %i.db, %bb.v ]
  store ptr %.1.i.i42.i, ptr %i.r, align 8, !tbaa !146
  store i32 %i.cv, ptr %9, align 8, !tbaa !145
  br label %.sink.split

_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i: ; preds = %bb.r
  store i32 %.sroa.speculated.i.i.fr, ptr %i.q, align 4, !tbaa !147
  %.not104.not.i.i = icmp eq i32 %.sroa.speculated.i.i.fr, 0
  br i1 %.not104.not.i.i, label %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit, label %bb.x

.sink.split:                                      ; preds = %_ZN11hb_vector_tIdLb0EE14realloc_vectorIdTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPdj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i.thread
  store i32 %.sroa.speculated.i.i.fr, ptr %i.q, align 4, !tbaa !147
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.dn = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 3 ; 2 uses
  %.090.us.i.i = sitofp i32 %i.br to double       ; 3 uses
  %.091.us.i.i = sitofp i32 %i.bp to double       ; 5 uses
  %.093.in.us.i.i = load float, ptr %i.bn, align 4, !tbaa !38 ; 3 uses
  %.093.us.i.i = fpext float %.093.in.us.i.i to double ; 2 uses
  %.095.in.us.i.i = load float, ptr %i.bm, align 4, !tbaa !38 ; 3 uses
  %.095.us.i.i = fpext float %.095.in.us.i.i to double ; 2 uses
  %.058.us.i.i = load ptr, ptr %i.o, align 8, !tbaa !146 ; 5 uses
  %i.do = fcmp oeq float %.095.in.us.i.i, %.093.in.us.i.i
  br i1 %i.do, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = fcmp ogt float %.095.in.us.i.i, %.093.in.us.i.i
  br i1 %i.dp, label %bb.z, label %.lr.ph.us.i.i

bb.z:                                             ; preds = %bb.y
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %bb.z, %bb.y
  %.196.us.i.i = phi double [ %.093.us.i.i, %bb.z ], [ %.095.us.i.i, %bb.y ] ; 3 uses
  %.194.us.i.i = phi double [ %.095.us.i.i, %bb.z ], [ %.093.us.i.i, %bb.y ] ; 2 uses
  %.192.us.i.i = phi double [ %.090.us.i.i, %bb.z ], [ %.091.us.i.i, %bb.y ] ; 3 uses
  %.1.us.i.i = phi double [ %.091.us.i.i, %bb.z ], [ %.090.us.i.i, %bb.y ] ; 2 uses
  %i.dq = fsub double %.1.us.i.i, %.192.us.i.i
  %i.dr = fsub double %.194.us.i.i, %.196.us.i.i
  %i.ds = fdiv double %i.dq, %i.dr
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ae
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.us.i.i, label %bb.ab, !llvm.loop !135

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next.i.i, %bb.aa ] ; 4 uses
  %gep.us.i.i = getelementptr inbounds nuw [12 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.dt = load float, ptr %gep.us.i.i, align 4, !tbaa !38
  %i.du = fpext float %i.dt to double             ; 3 uses
  %i.dv = fcmp ult double %.196.us.i.i, %i.du
  br i1 %i.dv, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dw = fcmp ugt double %.194.us.i.i, %i.du
  br i1 %i.dw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dx = fsub double %i.du, %.196.us.i.i
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.ds, double %.192.us.i.i)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0.us.i.i = phi double [ %i.dy, %bb.ad ], [ %.192.us.i.i, %bb.ab ], [ %.1.us.i.i, %bb.ac ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv.i.i
  store double %.0.us.i.i, ptr %i.dz, align 8, !tbaa !152
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !31
  %i.ec = sitofp i32 %i.eb to double
  %i.ed = fsub double %.0.us.i.i, %i.ec           ; 2 uses
  %i.ee = fmul double %i.ed, %i.ed
  %i.ef = fcmp ule double %i.ee, %4
  br i1 %i.ef, label %bb.aa, label %.critedge

bb.af:                                            ; preds = %bb.x
  %i.eg = fcmp oeq double %.091.us.i.i, %.090.us.i.i
  br i1 %i.eg, label %.lr.ph109.us.i.i.preheader, label %.lr.ph107.us.preheader.i.i

.lr.ph109.us.i.i.preheader:                       ; preds = %bb.af
  %min.iters.check209 = icmp ult i32 %.sroa.speculated.i.i.fr, 4
  br i1 %min.iters.check209, label %.lr.ph109.us.i.i.preheader223, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph109.us.i.i.preheader
  %n.vec211 = and i64 %.sroa.3.8.insert.ext.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert212 = insertelement <2 x double> poison, double %.091.us.i.i, i64 0
  %broadcast.splat213 = shufflevector <2 x double> %broadcast.splatinsert212, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph210
  %index215 = phi i64 [ 0, %vector.ph210 ], [ %index.next216, %vector.body214 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %index215 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x double> %broadcast.splat213, ptr %i.eh, align 8, !tbaa !152
  store <2 x double> %broadcast.splat213, ptr %i.ei, align 8, !tbaa !152
  %index.next216 = add nuw i64 %index215, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.ej, label %middle.block217, label %vector.body214, !llvm.loop !136

middle.block217:                                  ; preds = %vector.body214
  %cmp.n218 = icmp eq i64 %n.vec211, %.sroa.3.8.insert.ext.i.i
  br i1 %cmp.n218, label %.loopexit.us.i.i, label %.lr.ph109.us.i.i.preheader223

.lr.ph109.us.i.i.preheader223:                    ; preds = %.lr.ph109.us.i.i.preheader, %middle.block217
  %indvars.iv172.i.i.ph = phi i64 [ 0, %.lr.ph109.us.i.i.preheader ], [ %n.vec211, %middle.block217 ]
  br label %.lr.ph109.us.i.i

.lr.ph109.us.i.i:                                 ; preds = %.lr.ph109.us.i.i.preheader223, %.lr.ph109.us.i.i
  %indvars.iv172.i.i = phi i64 [ %indvars.iv.next173.i.i, %.lr.ph109.us.i.i ], [ %indvars.iv172.i.i.ph, %.lr.ph109.us.i.i.preheader223 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv172.i.i
  store double %.091.us.i.i, ptr %i.ek, align 8, !tbaa !152
  %indvars.iv.next173.i.i = add nuw nsw i64 %indvars.iv172.i.i, 1 ; 2 uses
  %exitcond176.not.i.i = icmp eq i64 %indvars.iv.next173.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond176.not.i.i, label %.loopexit.us.i.i, label %.lr.ph109.us.i.i, !llvm.loop !137

.loopexit.us.i.i:                                 ; preds = %bb.aa, %.lr.ph109.us.i.i, %middle.block217, %.lr.ph107.us.preheader.i.i
  %.090.us.1.i.i = sitofp i32 %i.bv to double     ; 3 uses
  %.091.us.1.i.i = sitofp i32 %i.bt to double     ; 5 uses
  %.093.in.us.1.i.i = load float, ptr %i.dm, align 4, !tbaa !38 ; 3 uses
  %.093.us.1.i.i = fpext float %.093.in.us.1.i.i to double ; 2 uses
  %.095.in.us.1.i.i = load float, ptr %i.dl, align 4, !tbaa !38 ; 3 uses
  %.095.us.1.i.i = fpext float %.095.in.us.1.i.i to double ; 2 uses
  %.058.us.1.i.i = load ptr, ptr %i.r, align 8, !tbaa !146 ; 5 uses
  %i.el = fcmp oeq float %.095.in.us.1.i.i, %.093.in.us.1.i.i
  br i1 %i.el, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.us.i.i
  %i.em = fcmp ogt float %.095.in.us.1.i.i, %.093.in.us.1.i.i
  br i1 %i.em, label %bb.ah, label %.lr.ph.us.1.i.i

bb.ah:                                            ; preds = %bb.ag
  br label %.lr.ph.us.1.i.i

.lr.ph.us.1.i.i:                                  ; preds = %bb.ah, %bb.ag
  %.196.us.1.i.i = phi double [ %.093.us.1.i.i, %bb.ah ], [ %.095.us.1.i.i, %bb.ag ] ; 3 uses
  %.194.us.1.i.i = phi double [ %.095.us.1.i.i, %bb.ah ], [ %.093.us.1.i.i, %bb.ag ] ; 2 uses
  %.192.us.1.i.i = phi double [ %.090.us.1.i.i, %bb.ah ], [ %.091.us.1.i.i, %bb.ag ] ; 3 uses
  %.1.us.1.i.i = phi double [ %.091.us.1.i.i, %bb.ah ], [ %.090.us.1.i.i, %bb.ag ] ; 2 uses
  %i.en = fsub double %.1.us.1.i.i, %.192.us.1.i.i
  %i.eo = fsub double %.194.us.1.i.i, %.196.us.1.i.i
  %i.ep = fdiv double %i.en, %i.eo
  %invariant.gep.us.1.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %.lr.ph.us.1.i.i
  %indvars.iv.1.i.i = phi i64 [ 0, %.lr.ph.us.1.i.i ], [ %indvars.iv.next.1.i.i, %bb.am ] ; 4 uses
  %gep.us.1.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.us.1.i.i, i64 %indvars.iv.1.i.i
  %i.eq = load float, ptr %gep.us.1.i.i, align 4, !tbaa !38
  %i.er = fpext float %i.eq to double             ; 3 uses
  %i.es = fcmp ult double %.196.us.1.i.i, %i.er
  br i1 %i.es, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.et = fcmp ugt double %.194.us.1.i.i, %i.er
  br i1 %i.et, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eu = fsub double %i.er, %.196.us.1.i.i
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.ep, double %.192.us.1.i.i)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.us.1.i.i = phi double [ %i.ev, %bb.ak ], [ %.192.us.1.i.i, %bb.ai ], [ %.1.us.1.i.i, %bb.aj ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv.1.i.i
  store double %.0.us.1.i.i, ptr %i.ew, align 8, !tbaa !152
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.1.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !31
  %i.ez = sitofp i32 %i.ey to double
  %i.fa = fsub double %.0.us.1.i.i, %i.ez         ; 2 uses
  %i.fb = fmul double %i.fa, %i.fa
  %i.fc = fcmp ule double %i.fb, %4
  br i1 %i.fc, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.1.not.i.i, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %bb.ai, !llvm.loop !135

bb.an:                                            ; preds = %.loopexit.us.i.i
  %i.fd = fcmp oeq double %.091.us.1.i.i, %.090.us.1.i.i
  br i1 %i.fd, label %.lr.ph109.us.1.i.i.preheader, label %.lr.ph107.us.preheader.1.i.i

.lr.ph109.us.1.i.i.preheader:                     ; preds = %bb.an
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i.fr, 4
  br i1 %min.iters.check, label %.lr.ph109.us.1.i.i.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph109.us.1.i.i.preheader
  %n.vec = and i64 %.sroa.3.8.insert.ext.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.091.us.1.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x double> %broadcast.splat, ptr %i.fe, align 8, !tbaa !152
  store <2 x double> %broadcast.splat, ptr %i.ff, align 8, !tbaa !152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %.sroa.3.8.insert.ext.i.i
  br i1 %cmp.n, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %.lr.ph109.us.1.i.i.preheader220

.lr.ph109.us.1.i.i.preheader220:                  ; preds = %.lr.ph109.us.1.i.i.preheader, %middle.block
  %indvars.iv172.1.i.i.ph = phi i64 [ 0, %.lr.ph109.us.1.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph109.us.1.i.i

.lr.ph107.us.preheader.1.i.i:                     ; preds = %bb.an
  tail call void @llvm.memset.p0.i64(ptr align 8 %.058.us.1.i.i, i8 0, i64 %i.dn, i1 false), !tbaa !152
  br label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader

_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader: ; preds = %bb.am, %.lr.ph109.us.1.i.i, %middle.block, %.lr.ph107.us.preheader.1.i.i
  br label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i

.lr.ph109.us.1.i.i:                               ; preds = %.lr.ph109.us.1.i.i.preheader220, %.lr.ph109.us.1.i.i
  %indvars.iv172.1.i.i = phi i64 [ %indvars.iv.next173.1.i.i, %.lr.ph109.us.1.i.i ], [ %indvars.iv172.1.i.i.ph, %.lr.ph109.us.1.i.i.preheader220 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv172.1.i.i
  store double %.091.us.1.i.i, ptr %i.fh, align 8, !tbaa !152
  %indvars.iv.next173.1.i.i = add nuw nsw i64 %indvars.iv172.1.i.i, 1 ; 2 uses
  %exitcond176.1.not.i.i = icmp eq i64 %indvars.iv.next173.1.i.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond176.1.not.i.i, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, label %.lr.ph109.us.1.i.i, !llvm.loop !139

.lr.ph107.us.preheader.i.i:                       ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr align 8 %.058.us.i.i, i8 0, i64 %i.dn, i1 false), !tbaa !152
  br label %.loopexit.us.i.i

bb.ao:                                            ; preds = %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.3.8.insert.ext.i.i
  br i1 %exitcond.not.i, label %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit, label %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i, !llvm.loop !140

_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i: ; preds = %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader, %bb.ao
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 0, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i.preheader ] ; 5 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !31
  %i.fk = sitofp i32 %i.fj to double
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.058.us.i.i, i64 %indvars.iv.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !152
  %i.fn = fsub double %i.fk, %i.fm                ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !31
  %i.fq = sitofp i32 %i.fp to double
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.058.us.1.i.i, i64 %indvars.iv.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !152
  %i.ft = fsub double %i.fq, %i.fs                ; 2 uses
  %i.fu = fmul double %i.ft, %i.ft
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fu)
  %i.fw = fcmp ule double %i.fv, %4
  br i1 %i.fw, label %bb.ao, label %.critedge

_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit: ; preds = %bb.ao, %_ZN11hb_vector_tIdLb0EE12resize_dirtyEi.exit72.i.i
  %i.fx = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv
  store i32 %i.ax, ptr %i.fy, align 4, !tbaa !31
  %i.fz = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv
  store i32 %.078166, ptr %i.ga, align 4, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.al, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread, %bb.k, %bb.j, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145, %bb.i, %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit
  %.1 = phi i32 [ %i.ax, %_ZL19_can_iup_in_between10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit ], [ %.077167, %bb.i ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit124.thread145 ], [ %.077167, %_ZN11hb_vector_tIdLb0EE5allocEjb.exit.thread152 ], [ %.077167, %bb.j ], [ %.077167, %_ZL12_iup_segment10hb_array_tIK15contour_point_tES_IKiES4_RS1_S5_iiiidR11hb_vector_tIdLb0EES8_.exit.i ], [ %.077167, %bb.al ], [ %.077167, %bb.k ], [ %.077167, %bb.ae ]
  %i.gb = icmp sgt i32 %.078166, 0
  br i1 %i.gb, label %bb.ap, label %.critedge83

bb.ap:                                            ; preds = %.critedge
  %i.gc = lshr i32 %.078166, 6
  %i.gd = and i32 %i.gc, 7
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !37
  %i.gh = and i32 %.078166, 63
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gg, %i.gj
  %.not159 = icmp eq i64 %i.gk, 0
  %i.gl = add nsw i32 %.078166, -1                ; 2 uses
  %.not81.not = icmp sgt i32 %i.gl, %i.ap
  %or.cond = select i1 %.not159, i1 %.not81.not, i1 false
end_hunk_2
