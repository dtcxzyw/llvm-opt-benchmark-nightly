Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.psk = load float, ptr %i.psj, align 4, !tbaa !12, !noalias !549
  %i.psl = fsub reassoc nsz arcp contract afn float %i.psk, %i.psi
  %i.psm = fmul reassoc nsz arcp contract afn float %i.psl, %i.psf
  %i.psn = fadd reassoc nsz arcp contract afn float %i.psm, %i.psi
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz, %.lr.ph1175.split.i
  %.1.i976.ph.i = phi float [ 1.000000e+00, %bb.pz ], [ 0.000000e+00, %.lr.ph1175.split.i ], [ %i.psn, %bb.qa ]
  %i.pso = fmul reassoc nsz arcp contract afn float %.1.i976.ph.i, %i.eh
  %i.psp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pso, float 0.000000e+00)
  store float %i.psp, ptr %.08761169.i, align 4, !tbaa !12, !alias.scope !549
  %i.psq = load float, ptr %.08741171.i, align 4, !tbaa !12, !noalias !549
  %i.psr = fmul reassoc nsz arcp contract afn float %i.psq, 6.553500e+04 ; 4 uses
  %i.pss = fcmp reassoc nsz arcp contract afn olt float %i.psr, 0.000000e+00
  br i1 %i.pss, label %bb.qe, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.pst = fcmp reassoc nsz arcp contract afn ogt float %i.psr, f0x477FFEFD
  br i1 %i.pst, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.psu = fptosi float %i.psr to i32             ; 2 uses
  %i.psv = sitofp reassoc nsz arcp contract afn i32 %i.psu to float
  %i.psw = fsub reassoc nsz arcp contract afn float %i.psr, %i.psv
  %i.psx = zext nneg i32 %i.psu to i64
  %i.psy = getelementptr inbounds nuw [4 x i8], ptr %i.orj, i64 %i.psx ; 2 uses
  %i.psz = load float, ptr %i.psy, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pta = getelementptr inbounds nuw i8, ptr %i.psy, i64 4
  %i.ptb = load float, ptr %i.pta, align 4, !tbaa !12, !noalias !549
  %i.ptc = fsub reassoc nsz arcp contract afn float %i.ptb, %i.psz
  %i.ptd = fmul reassoc nsz arcp contract afn float %i.ptc, %i.psw
  %i.pte = fadd reassoc nsz arcp contract afn float %i.ptd, %i.psz
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc, %bb.qb
  %.1.i978.ph.i = phi float [ 1.000000e+00, %bb.qc ], [ 0.000000e+00, %bb.qb ], [ %i.pte, %bb.qd ]
  %i.ptf = fmul reassoc nsz arcp contract afn float %.1.i978.ph.i, %i.eh
  %i.ptg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ptf, float 0.000000e+00)
  %i.pth = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 4
  store float %i.ptg, ptr %i.pth, align 4, !tbaa !12, !alias.scope !549
  %i.pti = load float, ptr %.08731172.i, align 4, !tbaa !12, !noalias !549
  %i.ptj = fmul reassoc nsz arcp contract afn float %i.pti, 6.553500e+04 ; 4 uses
  %i.ptk = fcmp reassoc nsz arcp contract afn olt float %i.ptj, 0.000000e+00
  br i1 %i.ptk, label %_calc_gamma.exit981.i, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.ptl = fcmp reassoc nsz arcp contract afn ogt float %i.ptj, f0x477FFEFD
  br i1 %i.ptl, label %_calc_gamma.exit981.i, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.ptm = fptosi float %i.ptj to i32             ; 2 uses
  %i.ptn = sitofp reassoc nsz arcp contract afn i32 %i.ptm to float
  %i.pto = fsub reassoc nsz arcp contract afn float %i.ptj, %i.ptn
  %i.ptp = zext nneg i32 %i.ptm to i64
  %i.ptq = getelementptr inbounds nuw [4 x i8], ptr %i.orj, i64 %i.ptp ; 2 uses
  %i.ptr = load float, ptr %i.ptq, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pts = getelementptr inbounds nuw i8, ptr %i.ptq, i64 4
  %i.ptt = load float, ptr %i.pts, align 4, !tbaa !12, !noalias !549
  %i.ptu = fsub reassoc nsz arcp contract afn float %i.ptt, %i.ptr
  %i.ptv = fmul reassoc nsz arcp contract afn float %i.ptu, %i.pto
  %i.ptw = fadd reassoc nsz arcp contract afn float %i.ptv, %i.ptr
  br label %_calc_gamma.exit981.i

_calc_gamma.exit981.i:                            ; preds = %bb.qg, %bb.qf, %bb.qe
  %.1.i980.i = phi nsz float [ 1.000000e+00, %bb.qf ], [ %i.ptw, %bb.qg ], [ 0.000000e+00, %bb.qe ]
  %i.ptx = fmul reassoc nsz arcp contract afn float %.1.i980.i, %i.eh
  %i.pty = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ptx, float 0.000000e+00)
  %i.ptz = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 8
  store float %i.pty, ptr %i.ptz, align 4, !tbaa !12, !alias.scope !549
  %i.pua = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 12
  store float 0.000000e+00, ptr %i.pua, align 4, !tbaa !12, !alias.scope !549
  %i.pub = add nuw nsw i32 %.01173.i, 1           ; 2 uses
  %i.puc = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 16
  %i.pud = getelementptr inbounds nuw i8, ptr %.08751170.i, i64 4
  %i.pue = getelementptr inbounds nuw i8, ptr %.08741171.i, i64 4
  %i.puf = getelementptr inbounds nuw i8, ptr %.08731172.i, i64 4
  %i.pug = icmp slt i32 %i.pub, %i.orh
  br i1 %i.pug, label %.lr.ph1175.split.i, label %._crit_edge1176.i, !llvm.loop !391

bb.qh:                                            ; preds = %bb.nx
  %i.puh = load float, ptr %i.aox, align 8, !tbaa !141
  tail call fastcc void @demosaic_ppg(ptr noundef %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef %.fr1070, float noundef %i.puh, i32 noundef 100000)
  br label %demosaic_box3.exit

bb.qi:                                            ; preds = %bb.nx
  tail call void @amaze_demosaic(ptr noundef %i.axo, ptr noundef nonnull %i.anw, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef %.fr1070, float noundef %i.ek) #27
  br label %demosaic_box3.exit

demosaic_box3.exit:                               ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %._crit_edge.i478, %._crit_edge.i, %bb.hy, %bb.hx, %bb.hh, %._crit_edge1190.split.i, %bb.oh, %._crit_edge942.split.i, %bb.ny, %xtrans_fdc_interpolate.exit, %bb.nt, %xtrans_markesteijn_interpolate.exit, %bb.hw, %bb.nw, %bb.nv, %bb.qi, %bb.qh
  br i1 %i.dv, label %bb.qj, label %_capture_sharpen.exit

bb.qj:                                            ; preds = %demosaic_box3.exit
  %i.pui = load i32, ptr %4, align 4, !tbaa !36
  %i.puj = load i32, ptr %i.aqq, align 4, !tbaa !37
  %i.puk = add nsw i32 %i.puj, %i.axc
  %.val452 = load ptr, ptr %i.r, align 8, !tbaa !446 ; 7 uses
  %.val453 = load ptr, ptr %i.y, align 16, !tbaa !56 ; 6 uses
  %i.pul = sext i32 %i.axe to i64                 ; 11 uses
  %i.pum = mul nsw i64 %i.pul, %i.aoc             ; 17 uses
  %i.pun = load ptr, ptr %i.aqr, align 16, !tbaa !583
  %i.puo = getelementptr i8, ptr %.val452, i64 644
  %.val.i576 = load i32, ptr %i.puo, align 4, !tbaa !454
  %i.pup = and i32 %.val.i576, 8
  %.not.i577 = icmp eq i32 %i.pup, 0
  br i1 %.not.i577, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.puq = getelementptr inbounds nuw i8, ptr %.val452, i64 544
  %i.pur = load i32, ptr %i.puq, align 16, !tbaa !584
  %i.pus = getelementptr inbounds nuw i8, ptr %.val452, i64 548
  %i.put = load i32, ptr %i.pus, align 4, !tbaa !585
  %i.puu = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.pur, i32 noundef %i.put) #27
  %i.puv = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.187) #27
  %i.puw = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.puv) #27
  %.not16.i = icmp ult i32 %i.puu, %i.puw
  br i1 %.not16.i, label %_capture_sharpen.exit, label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.qj
  %i.pux = getelementptr inbounds nuw i8, ptr %.val453, i64 144
  %i.puy = load i32, ptr %i.pux, align 8, !tbaa !83
  %i.puz = or i32 %.0389, %i.puy
  %or.cond3.not.i = icmp eq i32 %i.puz, 0
  br i1 %or.cond3.not.i, label %_capture_sharpen.exit, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.pva = getelementptr inbounds nuw i8, ptr %.val452, i64 240
  %i.pvb = load i32, ptr %i.pva, align 16, !tbaa !464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %.not184.i = icmp eq i32 %i.pvb, 0
  br i1 %.not184.i, label %.thread1.i, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.pvc = getelementptr inbounds nuw i8, ptr %.val452, i64 256
  %i.pvd = load <2 x float>, ptr %i.pvc, align 16, !tbaa !12
  %i.pve = fmul reassoc nsz arcp contract afn <2 x float> %i.pvd, splat (float f0x3F666666)
  %i.pvf = getelementptr inbounds nuw i8, ptr %.val452, i64 264
  %i.pvg = load float, ptr %i.pvf, align 8, !tbaa !12
  %i.pvh = fmul reassoc nsz arcp contract afn float %i.pvg, f0x3F666666
  br label %.thread1.i

.thread1.i:                                       ; preds = %bb.qm, %bb.qn
  %i.pvi = phi reassoc nsz arcp contract afn float [ %i.pvh, %bb.qn ], [ f0x3F666666, %bb.qm ]
  %i.pvj = phi <2 x float> [ %i.pve, %bb.qn ], [ splat (float f0x3F666666), %bb.qm ]
  store <2 x float> %i.pvj, ptr %i.a, align 16, !tbaa !12
  store float %i.pvi, ptr %i.aqs, align 8, !tbaa !12
  store float 0.000000e+00, ptr %i.aqt, align 4, !tbaa !12
  %i.pvk = mul i64 %i.aoe, %i.pul                 ; 4 uses
  %i.pvl = tail call ptr @dt_alloc_aligned(i64 noundef %i.pvk) #27 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pvl, i64 64) ]
  %i.pvm = tail call ptr @dt_alloc_aligned(i64 noundef %i.pvk) #27 ; 36 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pvm, i64 64) ]
  %i.pvn = tail call ptr @dt_alloc_aligned(i64 noundef %i.pvk) #27 ; 34 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pvn, i64 64) ]
  %i.pvo = tail call ptr @dt_alloc_aligned(i64 noundef %i.pvk) #27 ; 23 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pvo, i64 64) ]
  %i.pvp = icmp ne ptr %i.pvl, null
  %i.pvq = icmp ne ptr %i.pvm, null
  %or.cond5.i579 = select i1 %i.pvp, i1 %i.pvq, i1 false
  %i.pvr = icmp ne ptr %i.pvn, null
  %or.cond7.i580 = select i1 %or.cond5.i579, i1 %i.pvr, i1 false
  %i.pvs = icmp ne ptr %i.pvo, null
  %or.cond9.i = select i1 %or.cond7.i580, i1 %i.pvs, i1 false
  br i1 %or.cond9.i, label %bb.qo, label %bb.sa

bb.qo:                                            ; preds = %.thread1.i
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.pvm, float noundef 1.000000e+00, i64 noundef %i.aoc, i64 noundef %i.pul, i64 noundef 1) #27
  %.not122.i.i = icmp eq i32 %i.axe, 0
  br i1 %.not122.i.i, label %_modify_blend.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.qo
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.pvm, i64 %i.aoc
  %i.pvt = add nsw i32 %i.axe, -2
  %i.pvu = sext i32 %i.pvt to i64
  %invariant.gep115.i.i = getelementptr [4 x i8], ptr %i.pvm, i64 %i.aqw
  br i1 %.not123.i.i, label %_prepare_blend.exit.i, label %.preheader.i.i583.preheader

.preheader.i.i583.preheader:                      ; preds = %.preheader.lr.ph.i.i
  %scevgep1955 = getelementptr i8, ptr %i.pvn, i64 8 ; 2 uses
  %i.pvv = mul i64 %i.atx, %i.pul                 ; 2 uses
  %scevgep1956 = getelementptr i8, ptr %i.pvn, i64 %i.pvv ; 2 uses
  %scevgep1957 = getelementptr i8, ptr %i.pvm, i64 8 ; 2 uses
  %scevgep1958 = getelementptr i8, ptr %i.pvm, i64 %i.pvv ; 2 uses
  %i.pvw = mul i64 %i.aty, %i.pul
  %scevgep1961 = getelementptr i8, ptr %scevgep1960, i64 %i.pvw ; 2 uses
  %i.pvx = mul i64 %i.atz, %i.pul                 ; 2 uses
  %scevgep1993 = getelementptr i8, ptr %i.pvn, i64 %i.pvx ; 2 uses
  %scevgep1994 = getelementptr i8, ptr %i.pvm, i64 %i.pvx ; 2 uses
  %i.pvy = mul i64 %i.aua, %i.pul
  %scevgep1996 = getelementptr i8, ptr %scevgep1995, i64 %i.pvy ; 2 uses
  %bound01997.a = icmp ult ptr %i.pvn, %scevgep1994
  %bound11998.a = icmp ult ptr %i.pvm, %scevgep1993
  %found.conflict1999.a = and i1 %bound01997.a, %bound11998.a
  %bound02002.a = icmp ult ptr %i.pvn, %scevgep1996
  %bound12003.a = icmp ult ptr %i.anw, %scevgep1993
  %found.conflict2004.a = and i1 %bound02002.a, %bound12003.a
  %i.pvz = or i1 %found.conflict2004.a, %stride.check2005
  %conflict.rdx2007 = or i1 %found.conflict1999.a, %i.pvz
  %bound02008 = icmp ult ptr %i.pvm, %scevgep1996
  %bound12009 = icmp ult ptr %i.anw, %scevgep1994
  %found.conflict2010 = and i1 %bound02008, %bound12009
  %conflict.rdx2013 = or i1 %found.conflict2010, %conflict.rdx2007
  %bound01962 = icmp ult ptr %scevgep1955, %scevgep1958
  %bound11963 = icmp ult ptr %scevgep1957, %scevgep1956
  %found.conflict1964 = and i1 %bound01962, %bound11963
  %bound01967 = icmp ult ptr %scevgep1955, %scevgep1961
  %bound11968 = icmp ult ptr %scevgep1959, %scevgep1956
  %found.conflict1969 = and i1 %bound01967, %bound11968
  %i.pwa = or i1 %found.conflict1969, %stride.check1970
  %conflict.rdx1972 = or i1 %found.conflict1964, %i.pwa
  %bound01973 = icmp ult ptr %scevgep1957, %scevgep1961
  %bound11974 = icmp ult ptr %scevgep1959, %scevgep1958
  %found.conflict1975 = and i1 %bound01973, %bound11974
  %conflict.rdx1978 = or i1 %found.conflict1975, %conflict.rdx1972
  br label %.preheader.i.i583

.preheader.i.i583:                                ; preds = %.preheader.i.i583.preheader, %._crit_edge.i.i585
  %.0103117.i.i = phi i64 [ %i.qch, %._crit_edge.i.i585 ], [ 0, %.preheader.i.i583.preheader ] ; 5 uses
  %i.pwb = mul i64 %.0103117.i.i, %i.aoc          ; 13 uses
  %i.pwc = icmp ugt i64 %.0103117.i.i, 1
  %i.pwd = icmp ult i64 %.0103117.i.i, %i.pvu
  %i.pwe = trunc i64 %.0103117.i.i to i32         ; 2 uses
  %i.pwf = shl i32 %i.pwe, 1
  %i.pwg = and i32 %i.pwf, 14
  %i.pwh = add nsw i32 %i.pwe, 600
  %i.pwi = srem i32 %i.pwh, 6
  %i.pwj = sext i32 %i.pwi to i64
  %i.pwk = getelementptr inbounds [6 x i8], ptr %i.x, i64 %i.pwj
  br i1 %i.pwc, label %bb.qp, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.preheader.i.i583
  %brmerge4874 = select i1 %min.iters.check2015, i1 true, i1 %conflict.rdx2013
  br i1 %brmerge4874, label %.lr.ph.split.us.i.i.preheader4614, label %vector.body2018

.lr.ph.split.us.i.i.preheader4614:                ; preds = %.lr.ph.split.us.i.i.preheader, %vector.body2018
  %.0102113.us.i.i.ph = phi i64 [ %n.vec2017, %vector.body2018 ], [ 0, %.lr.ph.split.us.i.i.preheader ] ; 5 uses
  %i.pwl = sub nsw i64 %i.aoc, %.0102113.us.i.i.ph
  %xtraiter4769 = and i64 %i.pwl, 1
  %lcmp.mod4770.not = icmp eq i64 %xtraiter4769, 0
  br i1 %lcmp.mod4770.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader4614
  %i.pwm = add i64 %.0102113.us.i.i.ph, %i.pwb    ; 3 uses
  %.idx106.us.i.i.prol = shl i64 %i.pwm, 4
  %i.pwn = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx106.us.i.i.prol ; 3 uses
  %i.pwo = load float, ptr %i.pwn, align 4, !tbaa !12
  %i.pwp = fmul reassoc nsz arcp contract afn float %i.pwo, 2.126710e-01
  %i.pwq = getelementptr inbounds nuw i8, ptr %i.pwn, i64 4
  %i.pwr = load float, ptr %i.pwq, align 4, !tbaa !12
  %i.pws = fmul reassoc nsz arcp contract afn float %i.pwr, 7.151600e-01
  %i.pwt = getelementptr inbounds nuw i8, ptr %i.pwn, i64 8
  %i.pwu = load float, ptr %i.pwt, align 4, !tbaa !12
  %i.pwv = fmul reassoc nsz arcp contract afn float %i.pwu, 7.216900e-02
  %i.pww = fadd reassoc nsz arcp contract afn float %i.pws, %i.pwp
  %i.pwx = fadd reassoc nsz arcp contract afn float %i.pww, %i.pwv ; 2 uses
  %i.pwy = fcmp reassoc nsz arcp contract afn olt float %i.pwx, 0.000000e+00
  %spec.select.us.i.i.prol = select reassoc nsz arcp contract afn i1 %i.pwy, float 0.000000e+00, float %i.pwx
  %i.pwz = getelementptr inbounds nuw [4 x i8], ptr %i.pvn, i64 %i.pwm
  store float %spec.select.us.i.i.prol, ptr %i.pwz, align 4, !tbaa !12
  %i.pxa = getelementptr inbounds nuw [4 x i8], ptr %i.pvm, i64 %i.pwm
  store float 0.000000e+00, ptr %i.pxa, align 4, !tbaa !12
  %i.pxb = add nuw nsw i64 %.0102113.us.i.i.ph, 1
  br label %.lr.ph.split.us.i.i.prol.loopexit

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader4614
  %.0102113.us.i.i.unr = phi i64 [ %.0102113.us.i.i.ph, %.lr.ph.split.us.i.i.preheader4614 ], [ %i.pxb, %.lr.ph.split.us.i.i.prol ]
  %i.pxc = icmp eq i64 %.0102113.us.i.i.ph, %i.awp
  br i1 %i.pxc, label %._crit_edge.i.i585, label %.lr.ph.split.us.i.i.preheader4614.new

.lr.ph.split.us.i.i.preheader4614.new:            ; preds = %.lr.ph.split.us.i.i.prol.loopexit
  %invariant.op4864 = add i64 1, %i.pwb
  br label %.lr.ph.split.us.i.i

vector.body2018:                                  ; preds = %.lr.ph.split.us.i.i.preheader, %vector.body2018
  %index2019 = phi i64 [ %index.next2024, %vector.body2018 ], [ 0, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %i.pxd = add i64 %index2019, %i.pwb             ; 3 uses
  %i.pxe = shl i64 %i.pxd, 4
  %i.pxf = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.pxe
  %wide.vec2020 = load <32 x float>, ptr %i.pxf, align 4, !tbaa !12, !alias.scope !586 ; 3 uses
  %strided.vec2021 = shufflevector <32 x float> %wide.vec2020, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec2022 = shufflevector <32 x float> %wide.vec2020, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec2023 = shufflevector <32 x float> %wide.vec2020, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.pxg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec2021, splat (float 2.126710e-01)
  %i.pxh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec2022, splat (float 7.151600e-01)
  %i.pxi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec2023, splat (float 7.216900e-02)
  %i.pxj = fadd reassoc nsz arcp contract afn <8 x float> %i.pxh, %i.pxg
  %i.pxk = fadd reassoc nsz arcp contract afn <8 x float> %i.pxj, %i.pxi ; 2 uses
  %i.pxl = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.pxk, zeroinitializer
  %i.pxm = select reassoc nsz arcp contract afn <8 x i1> %i.pxl, <8 x float> zeroinitializer, <8 x float> %i.pxk
  %i.pxn = getelementptr inbounds nuw [4 x i8], ptr %i.pvn, i64 %i.pxd
  store <8 x float> %i.pxm, ptr %i.pxn, align 4, !tbaa !12, !alias.scope !587, !noalias !588
  %i.pxo = getelementptr inbounds nuw [4 x i8], ptr %i.pvm, i64 %i.pxd
  store <8 x float> zeroinitializer, ptr %i.pxo, align 4, !tbaa !12, !alias.scope !589, !noalias !586
  %index.next2024 = add nuw i64 %index2019, 8     ; 2 uses
  %i.pxp = icmp eq i64 %index.next2024, %n.vec2017
  br i1 %i.pxp, label %.lr.ph.split.us.i.i.preheader4614, label %vector.body2018, !llvm.loop !396

bb.qp:                                            ; preds = %.preheader.i.i583
  %.idx106.peel.i.i = shl i64 %i.pwb, 4
  %i.pxq = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx106.peel.i.i ; 3 uses
  %i.pxr = load float, ptr %i.pxq, align 4, !tbaa !12
  %i.pxs = fmul reassoc nsz arcp contract afn float %i.pxr, 2.126710e-01
  %i.pxt = getelementptr inbounds nuw i8, ptr %i.pxq, i64 4
  %i.pxu = load float, ptr %i.pxt, align 4, !tbaa !12
  %i.pxv = fmul reassoc nsz arcp contract afn float %i.pxu, 7.151600e-01
  %i.pxw = getelementptr inbounds nuw i8, ptr %i.pxq, i64 8
  %i.pxx = load float, ptr %i.pxw, align 4, !tbaa !12
  %i.pxy = fmul reassoc nsz arcp contract afn float %i.pxx, 7.216900e-02
  %i.pxz = fadd reassoc nsz arcp contract afn float %i.pxv, %i.pxs
  %i.pya = fadd reassoc nsz arcp contract afn float %i.pxz, %i.pxy ; 2 uses
  %i.pyb = fcmp reassoc nsz arcp contract afn olt float %i.pya, 0.000000e+00
  %spec.select.peel.i.i = select reassoc nsz arcp contract afn i1 %i.pyb, float 0.000000e+00, float %i.pya
  %i.pyc = getelementptr inbounds nuw [4 x i8], ptr %i.pvn, i64 %i.pwb
  store float %spec.select.peel.i.i, ptr %i.pyc, align 4, !tbaa !12
  %i.pyd = getelementptr inbounds nuw [4 x i8], ptr %i.pvm, i64 %i.pwb
  store float 0.000000e+00, ptr %i.pyd, align 4, !tbaa !12
  br i1 %exitcond129.peel.not.i.i, label %._crit_edge.i.i585, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.pye = add i64 %i.pwb, 1                      ; 3 uses
  %.idx106.peel132.i.i = shl i64 %i.pye, 4
  %i.pyf = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx106.peel132.i.i ; 3 uses
  %i.pyg = load float, ptr %i.pyf, align 4, !tbaa !12
  %i.pyh = fmul reassoc nsz arcp contract afn float %i.pyg, 2.126710e-01
  %i.pyi = getelementptr inbounds nuw i8, ptr %i.pyf, i64 4
  %i.pyj = load float, ptr %i.pyi, align 4, !tbaa !12
  %i.pyk = fmul reassoc nsz arcp contract afn float %i.pyj, 7.151600e-01
  %i.pyl = getelementptr inbounds nuw i8, ptr %i.pyf, i64 8
  %i.pym = load float, ptr %i.pyl, align 4, !tbaa !12
  %i.pyn = fmul reassoc nsz arcp contract afn float %i.pym, 7.216900e-02
  %i.pyo = fadd reassoc nsz arcp contract afn float %i.pyk, %i.pyh
  %i.pyp = fadd reassoc nsz arcp contract afn float %i.pyo, %i.pyn ; 2 uses
  %i.pyq = fcmp reassoc nsz arcp contract afn olt float %i.pyp, 0.000000e+00
  %spec.select.peel133.i.i = select reassoc nsz arcp contract afn i1 %i.pyq, float 0.000000e+00, float %i.pyp
  %i.pyr = getelementptr inbounds nuw [4 x i8], ptr %i.pvn, i64 %i.pye
  store float %spec.select.peel133.i.i, ptr %i.pyr, align 4, !tbaa !12
  %i.pys = getelementptr inbounds nuw [4 x i8], ptr %i.pvm, i64 %i.pye
  store float 0.000000e+00, ptr %i.pys, align 4, !tbaa !12
  br i1 %exitcond129.peel147.not.i.i, label %._crit_edge.i.i585, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %bb.qq
  %.fr.i608 = freeze i1 %i.pwd
  br i1 %.fr.i608, label %.lr.ph.split.i.i, label %.lr.ph.split.i.us.i.preheader

.lr.ph.split.i.us.i.preheader:                    ; preds = %.lr.ph.split.i.preheader.i
  %brmerge4875 = select i1 %min.iters.check1980, i1 true, i1 %conflict.rdx1978
  br i1 %brmerge4875, label %.lr.ph.split.i.us.i.preheader4612, label %vector.body1983

vector.body1983:                                  ; preds = %.lr.ph.split.i.us.i.preheader, %vector.body1983
  %index1984 = phi i64 [ %index.next1989, %vector.body1983 ], [ 0, %.lr.ph.split.i.us.i.preheader ] ; 2 uses
  %i.pyt = or disjoint i64 %index1984, 2
  %i.pyu = add i64 %i.pyt, %i.pwb                 ; 3 uses
  %i.pyv = shl i64 %i.pyu, 4
  %i.pyw = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.pyv
  %wide.vec1985 = load <32 x float>, ptr %i.pyw, align 4, !tbaa !12, !alias.scope !590 ; 3 uses
  %strided.vec1986 = shufflevector <32 x float> %wide.vec1985, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1987 = shufflevector <32 x float> %wide.vec1985, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1988 = shufflevector <32 x float> %wide.vec1985, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.pyx = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1986, splat (float 2.126710e-01)
  %i.pyy = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1987, splat (float 7.151600e-01)
  %i.pyz = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1988, splat (float 7.216900e-02)
  %i.pza = fadd reassoc nsz arcp contract afn <8 x float> %i.pyy, %i.pyx
  %i.pzb = fadd reassoc nsz arcp contract afn <8 x float> %i.pza, %i.pyz ; 2 uses
  %i.pzc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.pzb, zeroinitializer
  %i.pzd = select reassoc nsz arcp contract afn <8 x i1> %i.pzc, <8 x float> zeroinitializer, <8 x float> %i.pzb
  %i.pze = getelementptr inbounds nuw [4 x i8], ptr %i.pvn, i64 %i.pyu
  store <8 x float> %i.pzd, ptr %i.pze, align 4, !tbaa !12, !alias.scope !591, !noalias !592
  %i.pzf = getelementptr inbounds nuw [4 x i8], ptr %i.pvm, i64 %i.pyu
  store <8 x float> zeroinitializer, ptr %i.pzf, align 4, !tbaa !12, !alias.scope !593, !noalias !590
  %index.next1989 = add nuw i64 %index1984, 8     ; 2 uses
  %i.pzg = icmp eq i64 %index.next1989, %n.vec1982
  br i1 %i.pzg, label %.lr.ph.split.i.us.i.preheader4612, label %vector.body1983, !llvm.loop !401

.lr.ph.split.i.us.i.preheader4612:                ; preds = %vector.body1983, %.lr.ph.split.i.us.i.preheader
  %.0102113.i.us.i.ph = phi i64 [ 2, %.lr.ph.split.i.us.i.preheader ], [ %i.awu, %vector.body1983 ] ; 5 uses
  %i.pzh = sub nsw i64 %i.aoc, %.0102113.i.us.i.ph
  %xtraiter4772 = and i64 %i.pzh, 1
  %lcmp.mod4773.not = icmp eq i64 %xtraiter4772, 0
  br i1 %lcmp.mod4773.not, label %.lr.ph.split.i.us.i.prol.loopexit, label %.lr.ph.split.i.us.i.prol

.lr.ph.split.i.us.i.prol:                         ; preds = %.lr.ph.split.i.us.i.preheader4612
  %i.pzi = add i64 %.0102113.i.us.i.ph, %i.pwb    ; 3 uses
  %.idx106.i.us.i.prol = shl i64 %i.pzi, 4
  %i.pzj = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx106.i.us.i.prol ; 3 uses
  %i.pzk = load float, ptr %i.pzj, align 4, !tbaa !12
  %i.pzl = fmul reassoc nsz arcp contract afn float %i.pzk, 2.126710e-01
  %i.pzm = getelementptr inbounds nuw i8, ptr %i.pzj, i64 4
  %i.pzn = load float, ptr %i.pzm, align 4, !tbaa !12
  %i.pzo = fmul reassoc nsz arcp contract afn float %i.pzn, 7.151600e-01
  %i.pzp = getelementptr inbounds nuw i8, ptr %i.pzj, i64 8
  %i.pzq = load float, ptr %i.pzp, align 4, !tbaa !12
  %i.pzr = fmul reassoc nsz arcp contract afn float %i.pzq, 7.216900e-02
  %i.pzs = fadd reassoc nsz arcp contract afn float %i.pzo, %i.pzl
  %i.pzt = fadd reassoc nsz arcp contract afn float %i.pzs, %i.pzr ; 2 uses
  %i.pzu = fcmp reassoc nsz arcp contract afn olt float %i.pzt, 0.000000e+00
  %spec.select.i.us.i.prol = select reassoc nsz arcp contract afn i1 %i.pzu, float 0.000000e+00, float %i.pzt
  %i.pzv = getelementptr inbounds nuw [4 x i8], ptr %i.pvn, i64 %i.pzi
  store float %spec.select.i.us.i.prol, ptr %i.pzv, align 4, !tbaa !12
  %i.pzw = getelementptr inbounds nuw [4 x i8], ptr %i.pvm, i64 %i.pzi
  store float 0.000000e+00, ptr %i.pzw, align 4, !tbaa !12
  %i.pzx = add nuw nsw i64 %.0102113.i.us.i.ph, 1
  br label %.lr.ph.split.i.us.i.prol.loopexit

.lr.ph.split.i.us.i.prol.loopexit:                ; preds = %.lr.ph.split.i.us.i.prol, %.lr.ph.split.i.us.i.preheader4612
  %.0102113.i.us.i.unr = phi i64 [ %.0102113.i.us.i.ph, %.lr.ph.split.i.us.i.preheader4612 ], [ %i.pzx, %.lr.ph.split.i.us.i.prol ]
  %i.pzy = icmp eq i64 %.0102113.i.us.i.ph, %i.awv
  br i1 %i.pzy, label %._crit_edge.i.i585, label %.lr.ph.split.i.us.i.preheader4612.new

.lr.ph.split.i.us.i.preheader4612.new:            ; preds = %.lr.ph.split.i.us.i.prol.loopexit
  %invariant.op4866 = add i64 1, %i.pwb
  br label %.lr.ph.split.i.us.i

.lr.ph.split.i.us.i:                              ; preds = %.lr.ph.split.i.us.i, %.lr.ph.split.i.us.i.preheader4612.new
  %.0102113.i.us.i = phi i64 [ %.0102113.i.us.i.unr, %.lr.ph.split.i.us.i.preheader4612.new ], [ %i.qbc, %.lr.ph.split.i.us.i ] ; 3 uses
end_hunk_0
