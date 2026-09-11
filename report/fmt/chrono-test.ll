Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.em = icmp samesign ult i64 %indvars.iv.next.i.2, %i.do
  br i1 %i.em, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.en = and i64 %i.eg, 4294967232
  %i.eo = mul nuw nsw i64 %i.en, 100              ; 2 uses
  %i.ep = lshr i64 %i.eo, 32                      ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next.i.2
  %i.er = shl nuw nsw i64 %i.ep, 1
  %i.es = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2
  store i16 %i.et, ptr %i.eq, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i
  %.lcssa286 = phi i64 [ %i.dq, %.lr.ph.i ], [ %i.dy, %bb.aa ], [ %i.eg, %bb.ab ], [ %i.eo, %bb.ac ]
  %.lcssa285 = phi i64 [ %i.dr, %.lr.ph.i ], [ %i.dz, %bb.aa ], [ %i.eh, %bb.ab ], [ %i.ep, %bb.ac ] ; 2 uses
  %i.eu = icmp samesign ult i32 %.0187, 10
  br i1 %i.eu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ae, label %.thread265

.thread265:                                       ; preds = %bb.z, %bb.ad
  %.2210262271 = phi i64 [ %.lcssa286, %bb.ad ], [ %.0208, %bb.z ]
  %.1205264270.in = phi i64 [ %.lcssa285, %bb.ad ], [ %.0204.in, %bb.z ]
  %i.ev = trunc i64 %.2210262271 to i32           ; 2 uses
  %i.ew = sub nuw nsw i32 8, %i.cw
  %i.ex = zext nneg i32 %i.ew to i64              ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr @.str.1275, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !5642
  %i.fa = zext i16 %i.ez to i32
  %i.fb = shl nuw i32 %i.fa, 16
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr @.str.1276, i64 %i.ex
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !5642
  %i.fe = zext i16 %i.fd to i32
  %i.ff = or disjoint i32 %i.fb, %i.fe
  %.not130 = icmp ugt i32 %i.ff, %i.ev
  br i1 %.not130, label %bb.an, label %.critedge134

bb.ae:                                            ; preds = %bb.ad
  %i.fg = icmp ugt i64 %i.cv, 5000000000
  br i1 %i.fg, label %.critedge134.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = icmp eq i64 %i.cv, 5000000000
  %i.fi = trunc i64 %.lcssa285 to i1
  %i.fj = or i1 %i.bp, %i.fi
  %or.cond223 = select i1 %i.fh, i1 %i.fj, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.ag:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %i.fk = zext i64 %i.cv to i128
  %i.fl = mul nuw nsw i128 %i.fk, 1844674407370955162
  %i.fm = lshr i128 %i.fl, 64                     ; 2 uses
  %i.fn = trunc i128 %i.fm to i32
  %i.fo = trunc i64 %i.cv to i32
  %.neg127 = mul i32 %i.fn, -10
  %i.fp = add i32 %.neg127, %i.fo                 ; 3 uses
  %i.fq = add nsw i32 %.0187, -9                  ; 3 uses
  %i.fr = load ptr, ptr %4, align 8, !tbaa !338
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 9 ; 3 uses
  %i.ft = and i32 %i.fq, 1
  %.not.i142 = icmp eq i32 %i.ft, 0
  %i.fu = trunc nuw nsw i128 %i.fm to i64
  %i.fv = and i64 %i.fu, 4294967295               ; 2 uses
  br i1 %.not.i142, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fw = mul nuw nsw i64 %i.fv, 720575941
  %i.fx = lshr i64 %i.fw, 24
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %i.fz = lshr i64 %i.fy, 32                      ; 2 uses
  %i.ga = trunc nuw nsw i64 %i.fz to i8
  %i.gb = add nuw nsw i8 %i.ga, 48
  store i8 %i.gb, ptr %i.fs, align 1, !tbaa !232
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gc = mul nuw nsw i64 %i.fv, 450359963
  %i.gd = lshr i64 %i.gc, 20
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %i.gf = lshr i64 %i.ge, 32                      ; 2 uses
  %i.gg = shl nuw nsw i64 %i.gf, 1
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2
  store i16 %i.gi, ptr %i.fs, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3211 = phi i64 [ %i.ge, %bb.ai ], [ %i.fy, %bb.ah ] ; 2 uses
  %.2206.in = phi i64 [ %i.gf, %bb.ai ], [ %i.fz, %bb.ah ]
  %.0.i143 = phi i32 [ 2, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.gj = icmp samesign ult i32 %.0.i143, %i.fq
  br i1 %i.gj, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.aj
  %i.gk = zext nneg i32 %.0.i143 to i64
  %i.gl = zext nneg i32 %i.fq to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.gn, %bb.ak ]
  %indvars.iv.i145 = phi i64 [ %i.gk, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.ak ] ; 2 uses
  %i.gm = and i64 %.4, 4294967295
  %i.gn = mul nuw nsw i64 %i.gm, 100              ; 3 uses
  %i.go = lshr i64 %i.gn, 32                      ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.i145
  %i.gq = shl nuw nsw i64 %i.go, 1
  %i.gr = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2
  store i16 %i.gs, ptr %i.gp, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.gt = icmp samesign ult i64 %indvars.iv.next.i146, %i.gl
  br i1 %i.gt, label %bb.ak, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !5638

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.ak
  %i.gu = icmp samesign ult i32 %.0187, 18
  br i1 %i.gu, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.al

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.aj, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.go, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.aj ]
  %.5214 = phi i64 [ %i.gn, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.aj ]
  %i.gv = trunc i64 %.5214 to i32                 ; 2 uses
  %i.gw = sub nuw nsw i32 17, %.0187
  %i.gx = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr @.str.1275, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !5642
  %i.ha = zext i16 %i.gz to i32
  %i.hb = shl nuw i32 %i.ha, 16
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr @.str.1276, i64 %i.gx
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !5642
  %i.he = zext i16 %i.hd to i32
  %i.hf = or disjoint i32 %i.hb, %i.he
  %.not128 = icmp ugt i32 %i.hf, %i.gv
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.hg = lshr i32 %i.gv, 31
  %i.hh = icmp ne i32 %i.fp, 0
  %i.hi = or i1 %i.hh, %i.bp
  %i.hj = zext i1 %i.hi to i32
  %i.hk = or i32 %i.hj, %.3207215
  %i.hl = and i32 %i.hg, %i.hk
  %i.hm = trunc nuw i32 %i.hl to i1
  br i1 %i.hm, label %.critedge134.thread, label %.critedge136

bb.al:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.hn = icmp ugt i32 %i.fp, 5
  br i1 %i.hn, label %.critedge134.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ho = icmp eq i32 %i.fp, 5
  %i.hp = trunc i64 %i.go to i1
  %i.hq = or i1 %i.bp, %i.hp
  %or.cond225 = select i1 %i.ho, i1 %i.hq, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.an:                                            ; preds = %.thread265
  %.1205264270 = trunc nsw i64 %.1205264270.in to i32
  %i.hr = lshr i32 %i.ev, 31
  %i.hs = or i64 %i.cv, %i.bm
  %i.ht = icmp ne i64 %i.hs, 0
  %i.hu = zext i1 %i.ht to i32
  %i.hv = or i32 %.1205264270, %i.hu
  %i.hw = and i32 %i.hv, %i.hr
  %i.hx = trunc nuw i32 %i.hw to i1
  br i1 %i.hx, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.am, %bb.af, %.split217, %bb.ae, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.al
  %i.hy = load ptr, ptr %4, align 8, !tbaa !338
  %i.hz = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hy, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.ia, i64 -1     ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !232
  %i.id = add i8 %i.ic, 1
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !232
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread265, %bb.an
  %i.ie = load ptr, ptr %4, align 8, !tbaa !338
  %i.if = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.ig = getelementptr i8, ptr %i.ie, i64 %i.if
  %i.ih = getelementptr i8, ptr %i.ig, i64 -1     ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !232
  %i.ij = add i8 %i.ii, 1
  store i8 %i.ij, ptr %i.ih, align 1, !tbaa !232
  %.not240 = icmp eq i32 %.0187, 1
  br i1 %.not240, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.ik = phi i64 [ %i.hz, %.critedge134.thread ], [ %i.if, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.ik, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.il = load ptr, ptr %4, align 8, !tbaa !338
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.next ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !232
  %i.io = icmp sgt i8 %i.in, 57
  br i1 %i.io, label %bb.ao, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ao, %.critedge134
  %i.ip = phi i64 [ 1, %.critedge134 ], [ %i.ik, %bb.ao ], [ %i.ik, %.lr.ph ]
  %i.iq = load ptr, ptr %4, align 8, !tbaa !338   ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !232
  %i.is = icmp sgt i8 %i.ir, 57
  br i1 %i.is, label %bb.ap, label %.critedge136

bb.ao:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.im, align 1, !tbaa !232
  %i.it = load ptr, ptr %4, align 8, !tbaa !338
  %i.iu = getelementptr i8, ptr %i.it, i64 %indvars.iv
  %i.iv = getelementptr i8, ptr %i.iu, i64 -2     ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !232
  %i.ix = add i8 %i.iw, 1
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !232
  %6 = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %6, label %.lr.ph, label %.critedge, !llvm.loop !5639

bb.ap:                                            ; preds = %.critedge
  store i8 49, ptr %i.iq, align 1, !tbaa !232
  br i1 %i.d, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.iy = add nuw nsw i32 %.0187, 1
  %i.iz = load ptr, ptr %4, align 8, !tbaa !338
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ip
  store i8 48, ptr %i.ja, align 1, !tbaa !232
  br label %.critedge136

bb.ar:                                            ; preds = %bb.ap
  %i.jb = add nsw i32 %i.cr, 1
  store i32 %i.jb, ptr %i.a, align 4, !tbaa !239
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.am, %bb.af, %.critedge, %bb.ar, %bb.aq, %bb.an
  %.1188 = phi i32 [ %i.iy, %bb.aq ], [ %.0187, %bb.ar ], [ %.0187, %.critedge ], [ %.0187, %bb.an ], [ 9, %bb.af ], [ 18, %bb.am ], [ %.0187, %.split217 ]
  %i.jc = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !339 ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jc
  br i1 %i.jf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge136
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !260
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.jc), !inline_history !5637
  %.pre.i148 = load i64, ptr %i.jd, align 8, !tbaa !339
  br label %bb.at

.thread219:                                       ; preds = %bb.o
  %i.ji = add nsw i32 %.0106, -1
  %i.jj = add nsw i32 %i.ji, %.neg125
  store i32 %i.jj, ptr %i.a, align 4, !tbaa !239
  br i1 %3, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.as, %.critedge136
  %i.jk = phi i64 [ %i.je, %.critedge136 ], [ %.pre.i148, %bb.as ]
  %i.jl = tail call noundef i64 @llvm.umin.i64(i64 %i.jc, i64 %i.jk)
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !354
  br label %.thread

bb.au:                                            ; preds = %.thread219
  %i.jn = fptrunc double %0 to float
  %i.jo = bitcast float %i.jn to i32              ; 2 uses
  %i.jp = and i32 %i.jo, 8388607                  ; 2 uses
  %i.jq = zext nneg i32 %i.jp to i128             ; 2 uses
  %i.jr = and i32 %i.jo, 2139095040               ; 3 uses
  %i.js = icmp eq i32 %i.jr, 0                    ; 2 uses
  %i.jt = lshr exact i32 %i.jr, 23
  %i.ju = or disjoint i128 %i.jq, 8388608
  %i.jv = add nsw i32 %i.jt, -150
  %storemerge.i = select i1 %i.js, i128 %i.jq, i128 %i.ju
  %.0.i150 = select i1 %i.js, i32 -149, i32 %i.jv
  %i.jw = icmp eq i32 %i.jp, 0
  %i.jx = icmp samesign ugt i32 %i.jr, 16777215
  %i.jy = and i1 %i.jw, %i.jx
  br label %bb.aw

bb.av:                                            ; preds = %.thread219
  %i.jz = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.ka = or disjoint i128 %i.jz, 4503599627370496
  %i.kb = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.jz, i128 %i.ka
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.kb
  %i.kc = icmp eq i64 %i.ad, 0
  %i.kd = icmp samesign ugt i64 %i.ae, 9007199254740991
  %i.ke = and i1 %i.kc, %i.kd
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.au ], [ %storemerge.i151, %bb.av ]
  %.sroa.6.0 = phi i32 [ %.0.i150, %bb.au ], [ %.0.i152, %bb.av ]
  %i.kf = phi i1 [ %i.jy, %bb.au ], [ %i.ke, %bb.av ]
  %spec.select = zext i1 %i.kf to i32             ; 2 uses
  %i.kg = or disjoint i32 %spec.select, 4
  %.1111 = select i1 %i.d, i32 %i.kg, i32 %spec.select
  %i.kh = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !5643
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !239
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp.320") align 16 %5, i32 noundef %.1111, i32 noundef %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.r, %bb.v, %bb.u, %bb.aw
  br i1 %i.d, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %.thread
  %i.ki = load i32, ptr %2, align 4, !tbaa !317
  %i.kj = and i32 %i.ki, 8192
  %.not227 = icmp eq i32 %i.kj, 0
  br i1 %.not227, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !354 ; 2 uses
  %.not132235 = icmp eq i64 %i.kl, 0
  br i1 %.not132235, label %.critedge3.thread, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.ay
  %.promoted = load i32, ptr %i.a, align 4
  %i.km = load ptr, ptr %4, align 8, !tbaa !338
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph237, %bb.ba
  %.0236 = phi i64 [ %i.kl, %.lr.ph237 ], [ %i.ko, %bb.ba ] ; 5 uses
  %i.kn = phi i32 [ %.promoted, %.lr.ph237 ], [ %i.ks, %bb.ba ]
  %i.ko = add i64 %.0236, -1                      ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !232
  %i.kr = icmp eq i8 %i.kq, 48
  br i1 %i.kr, label %bb.ba, label %.critedge3

bb.ba:                                            ; preds = %bb.az
  %i.ks = add nsw i32 %i.kn, 1                    ; 2 uses
  store i32 %i.ks, ptr %i.a, align 4, !tbaa !239
  %.not132 = icmp eq i64 %i.ko, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.az, !llvm.loop !5640

.critedge3.thread:                                ; preds = %bb.ba, %bb.ay
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !339
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.az
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !339 ; 2 uses
  %i.kx = icmp ugt i64 %.0236, %i.kw
  br i1 %i.kx, label %bb.bb, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.bb:                                            ; preds = %.critedge3
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !260
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0236), !inline_history !5637
  %.pre.i153 = load i64, ptr %i.kv, align 8, !tbaa !339
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.bb
  %.0.lcssa274 = phi i64 [ %.0236, %.critedge3 ], [ %.0236, %bb.bb ], [ 0, %.critedge3.thread ]
  %i.la = phi i64 [ %i.kw, %.critedge3 ], [ %.pre.i153, %bb.bb ], [ %i.ku, %.critedge3.thread ]
  %i.lb = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa274, i64 %i.la)
  store i64 %i.lb, ptr %i.kk, align 8, !tbaa !354
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154, %bb.ax, %.thread
  %i.lc = load i32, ptr %i.a, align 4, !tbaa !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.0105 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.lc, %bb.bc ]
  ret i32 %.0105
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !358
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !317    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.1122, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !232
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !354
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !339
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !260
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !8
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %xtraiter1504 = and i64 %i.ahl, 1
  %i.ahn = icmp eq i64 %i.ahl, 1
  br i1 %i.ahn, label %.epil.preheader1503, label %.lr.ph.i.i444.new

.lr.ph.i.i444.new:                                ; preds = %.lr.ph.i.i444
  %unroll_iter1508 = and i64 %i.ahl, -2
  br label %bb.eb

._crit_edge.i.i448.unr-lcssa:                     ; preds = %bb.eb
  %lcmp.mod1505.not = icmp eq i64 %xtraiter1504, 0
  br i1 %lcmp.mod1505.not, label %._crit_edge.i.i448, label %.epil.preheader1503

.epil.preheader1503:                              ; preds = %._crit_edge.i.i448.unr-lcssa, %.lr.ph.i.i444
  %.013.i.i445.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.ail, %._crit_edge.i.i448.unr-lcssa ]
  %.01112.i.i446.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.aik, %._crit_edge.i.i448.unr-lcssa ]
  %lcmp.mod1507 = trunc i64 %i.ahl to i1
  call void @llvm.assume(i1 %lcmp.mod1507)
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %.013.i.i445.epil.init ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !239
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = mul nuw nsw i64 %i.ahq, 10
  %i.ahs = add nuw nsw i64 %i.ahr, %.01112.i.i446.epil.init ; 2 uses
  %i.aht = trunc i64 %i.ahs to i32
  store i32 %i.aht, ptr %i.aho, align 4, !tbaa !239
  %i.ahu = lshr i64 %i.ahs, 32
  br label %._crit_edge.i.i448

._crit_edge.i.i448:                               ; preds = %._crit_edge.i.i448.unr-lcssa, %.epil.preheader1503
  %.lcssa1461 = phi i64 [ %i.aik, %._crit_edge.i.i448.unr-lcssa ], [ %i.ahu, %.epil.preheader1503 ] ; 2 uses
  %i.ahv = trunc nuw nsw i64 %.lcssa1461 to i32
  %.not.i.i449 = icmp eq i64 %.lcssa1461, 0
  br i1 %.not.i.i449, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456, label %bb.ec

bb.eb:                                            ; preds = %bb.eb, %.lr.ph.i.i444.new
  %.013.i.i445 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.ail, %bb.eb ] ; 3 uses
  %.01112.i.i446 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.aik, %bb.eb ]
  %niter1509 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %niter1509.next.1, %bb.eb ]
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %.013.i.i445 ; 2 uses
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !239
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = mul nuw nsw i64 %i.ahy, 10
  %i.aia = add nuw nsw i64 %i.ahz, %.01112.i.i446 ; 2 uses
  %i.aib = trunc i64 %i.aia to i32
  store i32 %i.aib, ptr %i.ahw, align 4, !tbaa !239
  %i.aic = lshr i64 %i.aia, 32
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %.013.i.i445
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 4 ; 2 uses
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !239
  %i.aig = zext i32 %i.aif to i64
  %i.aih = mul nuw nsw i64 %i.aig, 10
  %i.aii = add nuw nsw i64 %i.aih, %i.aic         ; 2 uses
  %i.aij = trunc i64 %i.aii to i32
  store i32 %i.aij, ptr %i.aie, align 4, !tbaa !239
  %i.aik = lshr i64 %i.aii, 32                    ; 3 uses
  %i.ail = add nuw i64 %.013.i.i445, 2            ; 2 uses
  %niter1509.next.1 = add nuw i64 %niter1509, 2   ; 2 uses
  %niter1509.ncmp.1 = icmp eq i64 %niter1509.next.1, %unroll_iter1508
  br i1 %niter1509.ncmp.1, label %._crit_edge.i.i448.unr-lcssa, label %bb.eb, !llvm.loop !102

bb.ec:                                            ; preds = %._crit_edge.i.i448
  %i.aim = add i64 %i.ahl, 1                      ; 3 uses
  %i.ain = load i64, ptr %i.a, align 8, !tbaa !533
  %i.aio = icmp ugt i64 %i.aim, %i.ain
  br i1 %i.aio, label %bb.ed, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450

bb.ed:                                            ; preds = %bb.ec
  %i.aip = load ptr, ptr %i.b, align 8, !tbaa !531
  invoke void %i.aip(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.aim)
          to label %.noexc455 unwind label %bb.ee, !inline_history !5717

.noexc455:                                        ; preds = %bb.ed
  %.pre.i.i.i452 = load i64, ptr %i.c, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i.i453 = add i64 %.pre.i.i.i452, 1
  %.pre.i454 = load ptr, ptr %5, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450: ; preds = %.noexc455, %bb.ec
  %i.aiq = phi ptr [ %i.ahm, %bb.ec ], [ %.pre.i454, %.noexc455 ]
  %.pre-phi.i.i.i451 = phi i64 [ %i.aim, %bb.ec ], [ %.pre2.i.i.i453, %.noexc455 ]
  %i.air = phi i64 [ %i.ahl, %bb.ec ], [ %.pre.i.i.i452, %.noexc455 ]
  store i64 %.pre-phi.i.i.i451, ptr %i.c, align 8, !tbaa !538
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %i.air
  store i32 %i.ahv, ptr %i.ais, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450, %._crit_edge.i.i448, %bb.ea
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5721

bb.ee:                                            ; preds = %bb.ed, %.lr.ph
  %i.ait = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ef:                                            ; preds = %._crit_edge
  %i.aiu = load i64, ptr %i.c, align 8, !tbaa !538
  %i.aiv = trunc i64 %i.aiu to i32
  %i.aiw = load i32, ptr %i.e, align 8, !tbaa !537 ; 3 uses
  %i.aix = add nsw i32 %i.aiw, %i.aiv             ; 3 uses
  %i.aiy = load i64, ptr %i.h, align 8, !tbaa !538 ; 2 uses
  %i.aiz = trunc i64 %i.aiy to i32
  %i.aja = load i32, ptr %i.j, align 8, !tbaa !537 ; 3 uses
  %i.ajb = add nsw i32 %i.aja, %i.aiz             ; 3 uses
  %i.ajc = add nsw i32 %i.aix, 1
  %i.ajd = icmp slt i32 %i.ajc, %i.ajb
  br i1 %i.ajd, label %.thread552, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aje = icmp sgt i32 %i.aix, %i.ajb
  br i1 %i.aje, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ajf = call noundef i32 @llvm.smin.i32(i32 %i.aiw, i32 %i.aja) ; 2 uses
  %.not.not.not53.i457 = icmp sgt i32 %i.ajb, %i.ajf
  br i1 %.not.not.not53.i457, label %.lr.ph.i459, label %bb.en

.lr.ph.i459:                                      ; preds = %bb.eh
  %i.ajg = load ptr, ptr %5, align 8
  %i.ajh = load ptr, ptr %6, align 8
  %i.aji = sext i32 %i.aja to i64                 ; 3 uses
  %sext.i460 = shl i64 %i.aiy, 32
  %i.ajj = ashr exact i64 %sext.i460, 32
  %i.ajk = add nsw i64 %i.ajj, %i.aji
  %i.ajl = sext i32 %i.aix to i64
  %i.ajm = sext i32 %i.aiw to i64                 ; 2 uses
  %i.ajn = sext i32 %i.ajf to i64
  br label %bb.ei

bb.ei:                                            ; preds = %bb.em, %.lr.ph.i459
  %indvars.iv.i461 = phi i64 [ %i.ajk, %.lr.ph.i459 ], [ %indvars.iv.next.i463, %bb.em ] ; 4 uses
  %.03254.i462 = phi i64 [ 0, %.lr.ph.i459 ], [ %i.ake, %bb.em ] ; 2 uses
  %indvars.iv.next.i463 = add nsw i64 %indvars.iv.i461, -1 ; 4 uses
  %.not.i.i464 = icmp sgt i64 %indvars.iv.i461, %i.ajm
  %i.ajo = icmp sle i64 %indvars.iv.i461, %i.ajl
  %or.cond.i465 = and i1 %.not.i.i464, %i.ajo
  br i1 %or.cond.i465, label %bb.ej, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469

bb.ej:                                            ; preds = %bb.ei
  %i.ajp = sub nsw i64 %indvars.iv.next.i463, %i.ajm
  %i.ajq = getelementptr inbounds [4 x i8], ptr %i.ajg, i64 %i.ajp
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !239
  %i.ajs = zext i32 %i.ajr to i64
  %i.ajt = shl nuw nsw i64 %i.ajs, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469: ; preds = %bb.ei, %bb.ej
  %i.aju = phi i64 [ %i.ajt, %bb.ej ], [ 0, %bb.ei ] ; 3 uses
  %.not.i45.i470 = icmp sgt i64 %indvars.iv.i461, %i.aji
  br i1 %.not.i45.i470, label %bb.ek, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471

bb.ek:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469
  %i.ajv = sub nsw i64 %indvars.iv.next.i463, %i.aji
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.ajh, i64 %i.ajv
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !239
  %i.ajy = zext i32 %i.ajx to i64
  %i.ajz = or disjoint i64 %.03254.i462, %i.ajy
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471: ; preds = %bb.ek, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469
  %i.aka = phi i64 [ %i.ajz, %bb.ek ], [ %.03254.i462, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469 ] ; 3 uses
  %i.akb = icmp ugt i64 %i.aju, %i.aka
  br i1 %i.akb, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.el

bb.el:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471
  %i.akc = sub nuw nsw i64 %i.aka, %i.aju         ; 2 uses
  %i.akd = icmp ugt i64 %i.akc, 1
  br i1 %i.akd, label %.thread552, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ake = shl nuw nsw i64 %i.akc, 32
  %.not.not.not.i472 = icmp sgt i64 %indvars.iv.next.i463, %i.ajn
  br i1 %.not.not.not.i472, label %bb.ei, label %.thread.loopexit.i473, !llvm.loop !5716

.thread.loopexit.i473:                            ; preds = %bb.em
  %i.akf = icmp ne i64 %i.aka, %i.aju
  br label %bb.en

bb.en:                                            ; preds = %bb.eh, %.thread.loopexit.i473
  %.4.i458.ph = phi i1 [ false, %bb.eh ], [ %i.akf, %.thread.loopexit.i473 ]
  %i.akg = and i32 %i.ahf, 1
  %.not100 = icmp eq i32 %i.akg, 0
  %or.cond115 = or i1 %.not100, %.4.i458.ph
  br i1 %or.cond115, label %.thread552, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474: ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471, %bb.eg, %bb.en
  %i.akh = icmp eq i32 %i.ahf, 9
  br i1 %i.akh, label %bb.eo, label %bb.ex

bb.eo:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.aki = load ptr, ptr %3, align 8, !tbaa !338
  %i.akj = sext i32 %i.adm to i64
  %i.akk = getelementptr inbounds i8, ptr %i.aki, i64 %i.akj
  store i8 58, ptr %i.akk, align 1, !tbaa !232
  br i1 %.not619, label %.critedge, label %.lr.ph617

.lr.ph617:                                        ; preds = %bb.eo, %bb.eq
  %indvars.iv666 = phi i64 [ %indvars.iv.next667, %bb.eq ], [ %i.agw, %bb.eo ] ; 3 uses
  %indvars.iv.next667 = add nsw i64 %indvars.iv666, -1 ; 2 uses
  %i.akl = load ptr, ptr %3, align 8, !tbaa !338
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 %indvars.iv.next667 ; 2 uses
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !232
  %i.ako = icmp eq i8 %i.akn, 58
  br i1 %i.ako, label %bb.eq, label %.critedge

.critedge:                                        ; preds = %.lr.ph617, %bb.eq, %bb.eo
  %i.akp = load ptr, ptr %3, align 8, !tbaa !338  ; 2 uses
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !232
  %i.akr = icmp eq i8 %i.akq, 58
  br i1 %i.akr, label %bb.er, label %.loopexit

bb.ep:                                            ; preds = %._crit_edge
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eq:                                            ; preds = %.lr.ph617
  store i8 48, ptr %i.akm, align 1, !tbaa !232
  %i.akt = load ptr, ptr %3, align 8, !tbaa !338
  %i.aku = getelementptr i8, ptr %i.akt, i64 %indvars.iv666
  %i.akv = getelementptr i8, ptr %i.aku, i64 -2   ; 2 uses
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !232
  %i.akx = add i8 %i.akw, 1
  store i8 %i.akx, ptr %i.akv, align 1, !tbaa !232
  %9 = icmp samesign ugt i64 %indvars.iv666, 2
  br i1 %9, label %.lr.ph617, label %.critedge, !llvm.loop !5722

bb.er:                                            ; preds = %.critedge
  store i8 49, ptr %i.akp, align 1, !tbaa !232
  %i.aky = and i32 %1, 4
  %.not101 = icmp eq i32 %i.aky, 0
  br i1 %.not101, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.akz = load i64, ptr %i.ahe, align 8, !tbaa !354 ; 2 uses
  %i.ala = add i64 %i.akz, 1                      ; 3 uses
  %i.alb = load i64, ptr %i.agx, align 8, !tbaa !339
  %i.alc = icmp ugt i64 %i.ala, %i.alb
  br i1 %i.alc, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ald = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !260
  invoke void %i.ale(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ala)
          to label %.noexc478 unwind label %bb.ev, !inline_history !5720

.noexc478:                                        ; preds = %bb.et
  %.pre.i476 = load i64, ptr %i.ahe, align 8, !tbaa !354 ; 2 uses
  %.pre2.i477 = add i64 %.pre.i476, 1
  br label %bb.eu

bb.eu:                                            ; preds = %.noexc478, %bb.es
  %.pre-phi.i475 = phi i64 [ %i.ala, %bb.es ], [ %.pre2.i477, %.noexc478 ]
  %i.alf = phi i64 [ %i.akz, %bb.es ], [ %.pre.i476, %.noexc478 ]
  %i.alg = load ptr, ptr %3, align 8, !tbaa !338
  store i64 %.pre-phi.i475, ptr %i.ahe, align 8, !tbaa !354
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.alf
  store i8 48, ptr %i.alh, align 1, !tbaa !232
  br label %.loopexit

bb.ev:                                            ; preds = %bb.et
  %i.ali = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ew:                                            ; preds = %bb.er
  %i.alj = load i32, ptr %4, align 4, !tbaa !239
  %i.alk = add nsw i32 %i.alj, 1
  store i32 %i.alk, ptr %4, align 4, !tbaa !239
  br label %.loopexit

bb.ex:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.all = add nsw i32 %i.ahf, 1
  br label %.thread552

.thread552:                                       ; preds = %bb.el, %bb.ef, %bb.ex, %bb.en
  %.076 = phi i32 [ %i.all, %bb.ex ], [ %i.ahf, %bb.en ], [ %i.ahf, %bb.ef ], [ %i.ahf, %bb.el ]
  %i.alm = trunc i32 %.076 to i8
  %i.aln = add i8 %i.alm, 48
  %i.alo = load ptr, ptr %3, align 8, !tbaa !338
  %i.alp = sext i32 %i.adm to i64
  %i.alq = getelementptr inbounds i8, ptr %i.alo, i64 %i.alp
  store i8 %i.aln, ptr %i.alq, align 1, !tbaa !232
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread552, %bb.eu, %bb.ew, %.critedge, %bb.dx
  %i.alr = load ptr, ptr %8, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.alr, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail6bigintD2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.alr) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit

_ZN3fmt3v126detail6bigintD2Ev.exit:               ; preds = %.loopexit, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.als = load ptr, ptr %7, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.als, %i.n
  br i1 %.not.i.i.i480, label %_ZN3fmt3v126detail6bigintD2Ev.exit481, label %bb.ez

bb.ez:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit
  call void @free(ptr noundef %i.als) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit481

_ZN3fmt3v126detail6bigintD2Ev.exit481:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.alt = load ptr, ptr %6, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i482 = icmp eq ptr %i.alt, %i.i
  br i1 %.not.i.i.i482, label %_ZN3fmt3v126detail6bigintD2Ev.exit483, label %bb.fa

bb.fa:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit481
  call void @free(ptr noundef %i.alt) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit483

_ZN3fmt3v126detail6bigintD2Ev.exit483:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit481, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.alu = load ptr, ptr %5, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i484 = icmp eq ptr %i.alu, %i.d
  br i1 %.not.i.i.i484, label %_ZN3fmt3v126detail6bigintD2Ev.exit485, label %bb.fb

bb.fb:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit483
  call void @free(ptr noundef %i.alu) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit485

_ZN3fmt3v126detail6bigintD2Ev.exit485:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit483, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

.body:                                            ; preds = %.loopexit897, %.loopexit.split-lp898, %.loopexit566, %.loopexit.split-lp, %bb.bs, %bb.bw, %bb.dv, %bb.ee, %bb.cn, %bb.ev, %bb.ep
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %i.ali, %bb.ev ], [ %i.tx, %bb.bs ], [ %i.agk, %bb.dv ], [ %i.ait, %bb.ee ], [ %i.ue, %bb.bw ], [ %i.xq, %bb.cn ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.aks, %bb.ep ], [ %lpad.loopexit, %.loopexit566 ], [ %lpad.loopexit899, %.loopexit897 ], [ %lpad.loopexit.split-lp900, %.loopexit.split-lp898 ]
  %i.alv = load ptr, ptr %8, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i486 = icmp eq ptr %i.alv, %i.s
  br i1 %.not.i.i.i486, label %_ZN3fmt3v126detail6bigintD2Ev.exit487, label %bb.fc

bb.fc:                                            ; preds = %.body
  call void @free(ptr noundef %i.alv) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit487

_ZN3fmt3v126detail6bigintD2Ev.exit487:            ; preds = %bb.fc, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.alw = load ptr, ptr %7, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i488 = icmp eq ptr %i.alw, %i.n
  br i1 %.not.i.i.i488, label %_ZN3fmt3v126detail6bigintD2Ev.exit489, label %bb.fd

bb.fd:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit487
  call void @free(ptr noundef %i.alw) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit489

_ZN3fmt3v126detail6bigintD2Ev.exit489:            ; preds = %bb.fd, %_ZN3fmt3v126detail6bigintD2Ev.exit487
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.alx = load ptr, ptr %6, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.alx, %i.i
  br i1 %.not.i.i.i490, label %_ZN3fmt3v126detail6bigintD2Ev.exit491, label %bb.fe

bb.fe:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit489
  call void @free(ptr noundef %i.alx) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit491

_ZN3fmt3v126detail6bigintD2Ev.exit491:            ; preds = %bb.fe, %_ZN3fmt3v126detail6bigintD2Ev.exit489
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.aly = load ptr, ptr %5, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.aly, %i.d
  br i1 %.not.i.i.i492, label %_ZN3fmt3v126detail6bigintD2Ev.exit493, label %bb.ff

bb.ff:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491
  call void @free(ptr noundef %i.aly) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit493

_ZN3fmt3v126detail6bigintD2Ev.exit493:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn105.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #25

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !532
  store i32 1, ptr %i.b, align 4, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !533
  %.not8.i.i.not = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !531
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !5726
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !533
  %i.g = icmp ne i64 %.pre.i.i.i.i, 0
  %i.h = zext i1 %i.g to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit:          ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !538
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.k, align 8, !tbaa !537
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !532
  store i32 5, ptr %i.n, align 4, !tbaa !239
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !533
  %.not8.i.i14.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i14.not, label %bb.e, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !531
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !5726
  %.pre.i.i.i.i15 = load i64, ptr %i.o, align 8, !tbaa !533
  %i.s = icmp ne i64 %.pre.i.i.i.i15, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.z, -2
  br label %bb.h

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ay, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod41 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i.epil.init ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !239
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 5
  %i.ag = add nuw nsw i64 %i.af, %.01112.i.i.epil.init ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !239
  %i.ai = lshr i64 %i.ag, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa39 = phi i64 [ %i.ay, %._crit_edge.i.i.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %.lcssa39 to i32
  %.not.i.i17 = icmp eq i64 %.lcssa39, 0
  br i1 %.not.i.i17, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.az, %bb.h ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ay, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !239
  %i.am = zext i32 %i.al to i64
  %i.an = mul nuw nsw i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, %.01112.i.i      ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !239
  %i.aq = lshr i64 %i.ao, 32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !239
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw nsw i64 %i.au, 5
  %i.aw = add nuw nsw i64 %i.av, %i.aq            ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !239
  %i.ay = lshr i64 %i.aw, 32                      ; 3 uses
  %i.az = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.h, !llvm.loop !102

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ba = add i64 %i.z, 1                         ; 3 uses
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !533
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !531
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ba), !inline_history !5727
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.aa, %bb.i ], [ %.pre.i, %bb.j ]
  %.pre-phi.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %.pre2.i.i.i, %bb.j ]
  %i.bf = phi i64 [ %i.z, %bb.i ], [ %.pre.i.i.i, %bb.j ]
  store i64 %.pre-phi.i.i.i, ptr %i.v, align 8, !tbaa !538
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %i.aj, ptr %i.bg, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.g, %bb.f
  %.0 = ashr i32 %.021, 1                         ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !5728

._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !537
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !537
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !538 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !532   ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !239 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !239 ; 2 uses
  %i.br = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bs = lshr <4 x i32> %wide.load36, %broadcast.splat ; 3 uses
  %i.bt = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = shl <4 x i32> %wide.load, %broadcast.splat35
  %i.bw = shl <4 x i32> %wide.load36, %broadcast.splat35
  %i.bx = add <4 x i32> %i.bv, %i.bt
  %i.by = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !239
  store <4 x i32> %i.by, ptr %i.bq, align 4, !tbaa !239
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !5729

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.bs, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cc, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cf, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cc, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !239 ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.bo                   ; 2 uses
  %i.cd = shl i32 %i.cb, %i.bk
  %i.ce = add i32 %i.cd, %.017.i
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !239
  %i.cf = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !5730

bb.l:                                             ; preds = %._crit_edge.i
  %i.cg = add i64 %i.bm, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !533
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !531
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cg), !inline_history !5731
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cg, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cm = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !538
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !538  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !537  ; 3 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !538  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !537  ; 2 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i91 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i91, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !103

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i92 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i93, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i92, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !239  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !239  ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.y = sub nsw i32 %i.e, %i.k                   ; 5 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = add nsw i32 %i.y, %i.c
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !533 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !531
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ab), !inline_history !5732
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !533
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !538
  %i.aj = icmp sgt i32 %i.c, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !532 ; 13 uses
  br i1 %i.aj, label %.lr.ph.i, label %.lr.ph.preheader.i.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add i32 %i.y, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 5 uses
  %i.an = zext i32 %i.ak to i64                   ; 5 uses
  %i.ao = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ap = sub nsw i64 %i.an, %i.am
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.as = sub nsw i64 %i.an, %n.vec
  %i.at = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = sub i64 %i.an, %index
  %i.av = sub i64 %i.am, %index
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !239
  %wide.load106 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !239
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !239
  store <4 x i32> %wide.load106, ptr %i.bb, align 4, !tbaa !239
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !5733

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.as, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.at, %middle.block ] ; 2 uses
  %i.bd = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !239
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !239
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5734

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bh = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bi = zext nneg i32 %i.y to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.pre.i, i8 0, i64 %i.bj, i1 false), !tbaa !239
  %i.bk = load i32, ptr %i.d, align 8, !tbaa !537
  %i.bl = sub nsw i32 %i.bk, %i.y                 ; 2 uses
  store i32 %i.bl, ptr %i.d, align 8, !tbaa !537
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !538
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !239
  %i.bo = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !239
  %i.bp = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !239
  %i.bs = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !239
  %i.bu = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !239
  %i.bx = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !239
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !239
  %i.cb = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cc = getelementptr i8, ptr %i.cb, i64 -12
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !239
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !5735

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cd = phi i32 [ %i.e, %select.unfold ], [ %i.bl, %.lr.ph.preheader.i.i ]
  %i.ce = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ch = phi i32 [ %i.cd, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.ci = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ew, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 5 uses
  %i.cj = phi i64 [ %i.ce, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.er, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.es, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.ck = trunc i64 %i.cj to i32
  %.not21.i = icmp eq i64 %i.ci, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.cl = load i32, ptr %i.j, align 8, !tbaa !537
  %i.cm = sub i32 %i.cl, %i.ch
  %i.cn = load ptr, ptr %1, align 8, !tbaa !532   ; 3 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !532   ; 4 uses
  %i.cp = sext i32 %i.cm to i64                   ; 2 uses
  %xtraiter121 = and i64 %i.ci, 1
  %i.cq = icmp eq i64 %i.ci, 1
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.ci, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cp, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dx, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dw, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod125 = trunc i64 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.024.i.epil.init
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !239
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !239
  %i.cv = zext i32 %i.cu to i64
  %i.cw = zext i32 %i.cs to i64
  %i.cx = add nuw nsw i64 %.01822.i.epil.init, %i.cw
  %i.cy = sub nsw i64 %i.cv, %i.cx                ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.ct, align 4, !tbaa !239
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.du, %._crit_edge.i.unr-lcssa ], [ %i.cy, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.da = icmp sgt i64 %.lcssa, -1
  br i1 %i.da, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cp, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dx, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dw, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.024.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !239
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv.i15 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !239
  %i.df = zext i32 %i.de to i64
  %i.dg = zext i32 %i.dc to i64
  %i.dh = add nuw nsw i64 %.01822.i, %i.dg
  %i.di = sub nsw i64 %i.df, %i.dh                ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.dd, align 4, !tbaa !239
  %i.dk = lshr i64 %i.di, 63
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.024.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !239
  %i.do = getelementptr [4 x i8], ptr %i.co, i64 %indvars.iv.i15
  %i.dp = getelementptr i8, ptr %i.do, i64 4      ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !239
  %i.dr = zext i32 %i.dq to i64
  %i.ds = zext i32 %i.dn to i64
  %i.dt = add nuw nsw i64 %i.dk, %i.ds
  %i.du = sub nsw i64 %i.dr, %i.dt                ; 3 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dp, align 4, !tbaa !239
  %i.dw = lshr i64 %i.du, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.dx = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !5736

bb.h:                                             ; preds = %._crit_edge.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv.next.i16.lcssa ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !239
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !239
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.eb = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 1) ; 2 uses
  %i.ec = trunc i64 %i.cj to i32                  ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 1
  br i1 %i.ed, label %.lr.ph95, label %.critedge.i.i

.lr.ph95:                                         ; preds = %._crit_edge.thread.i
  %i.ee = and i64 %i.cj, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ef = trunc nuw i64 %i.ei to i32              ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.j, label %.critedge.i.i, !llvm.loop !104

bb.j:                                             ; preds = %.lr.ph95, %bb.i
  %i.eh = phi i32 [ %i.ec, %.lr.ph95 ], [ %i.ef, %bb.i ]
  %indvars.iv.i14.i94 = phi i64 [ %i.ee, %.lr.ph95 ], [ %i.ei, %bb.i ]
  %i.ei = add nsw i64 %indvars.iv.i14.i94, -1     ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !239
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !104

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !104

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.eh, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.em = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.en = load i64, ptr %i.cf, align 8, !tbaa !533 ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  br i1 %i.eo, label %bb.k, label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.ep = load ptr, ptr %i.cg, align 8, !tbaa !531
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.em), !inline_history !5737
  %.pre.i.i.i.i = load i64, ptr %i.cf, align 8, !tbaa !533
  br label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.eq = phi i64 [ %i.en, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.er = tail call noundef i64 @llvm.umin.i64(i64 %i.em, i64 %i.eq) ; 4 uses
  store i64 %i.er, ptr %i.a, align 8, !tbaa !538
  %i.es = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.et = trunc nuw i64 %i.er to i32              ; 2 uses
  %i.eu = load i32, ptr %i.d, align 8, !tbaa !537 ; 2 uses
  %i.ev = add nsw i32 %i.eu, %i.et                ; 2 uses
  %i.ew = load i64, ptr %i.g, align 8, !tbaa !538 ; 3 uses
  %i.ex = trunc i64 %i.ew to i32                  ; 2 uses
  %i.ey = load i32, ptr %i.j, align 8, !tbaa !537
  %i.ez = add nsw i32 %i.ey, %i.ex                ; 2 uses
  %.not.i18 = icmp eq i32 %i.ev, %i.ez
  br i1 %.not.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fa = icmp sgt i32 %i.ev, %i.ez
  br i1 %i.fa, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fb = sub nsw i32 %i.et, %i.ex
end_hunk_2
