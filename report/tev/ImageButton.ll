Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageButton?download=true
inline.NumInlined: 3207
inline.NumDeleted: 1029
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3tev11ImageButton4drawEP10NVGcontext:bb.a
  store ptr %i.du, ptr %i.cx, align 8, !tbaa !100
  %.not.i5.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i5.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.dx to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ef) #32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i, %bb.x
  %.0.i = phi ptr [ %i.de, %bb.x ], [ %i.dv, %_ZNSt3__114__split_bufferImRNS_9allocatorImEEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.dv, %bb.ab ] ; 4 uses
  store ptr %.0.i, ptr %i.cw, align 8, !tbaa !106
  %i.eg = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.eh = trunc i8 %i.eg to i1                    ; 2 uses
  %i.ei = load ptr, ptr %i.cy, align 8
  %.pn.i = select i1 %i.eh, ptr %i.ei, ptr %i.cz
  %.0.i94 = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %storemerge201
  %i.ej = load i8, ptr %.0.i94, align 1, !tbaa !12
  %i.ek = zext i8 %i.ej to i32                    ; 3 uses
  %i.el = and i32 %i.ek, 248
  %i.em = icmp eq i32 %i.el, 240
  br i1 %i.em, label %_ZN3tev15codePointLengthEc.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = and i32 %i.ek, 240
  %i.eo = icmp eq i32 %i.en, 224
  br i1 %i.eo, label %_ZN3tev15codePointLengthEc.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ep = and i32 %i.ek, 224
  %i.eq = icmp eq i32 %i.ep, 192
  %..i = select i1 %i.eq, i64 2, i64 1
  br label %_ZN3tev15codePointLengthEc.exit

_ZN3tev15codePointLengthEc.exit:                  ; preds = %bb.ac, %bb.ad, %bb.ae
  %.0.i95 = phi i64 [ 3, %bb.ad ], [ 4, %bb.ac ], [ %..i, %bb.ae ]
  %i.er = add i64 %.0.i95, %storemerge201         ; 2 uses
  %i.es = load i64, ptr %i.co, align 16
  %i.et = lshr i8 %i.eg, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = select i1 %i.eh, i64 %i.es, i64 %i.eu
  %i.ew = icmp ult i64 %i.er, %i.ev
  br i1 %i.ew, label %bb.w, label %._crit_edge, !llvm.loop !118

.loopexit200:                                     ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.z, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

._crit_edge:                                      ; preds = %_ZN3tev15codePointLengthEc.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !102   ; 4 uses
  %i.ex = load i32, ptr %i.bn, align 16, !tbaa !75
  %i.ey = add nsw i32 %i.ex, -25
  %i.ez = sitofp i32 %i.ey to float
  %i.fa = fsub float %i.ez, %i.cm
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not6.i.i = icmp eq ptr %.0.i, %.pre
  br i1 %.not6.i.i, label %.loopexit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge
  %i.fc = ptrtoint ptr %.pre to i64
  %i.fd = ptrtoint ptr %.0.i to i64
  %i.fe = sub i64 %i.fd, %i.fc
  %i.ff = ashr exact i64 %i.fe, 3
  br label %bb.af

bb.af:                                            ; preds = %.noexc98, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.ff, %.lr.ph.i.i ], [ %.1.i.i, %.noexc98 ] ; 2 uses
  %.sroa.4.07.i.i = phi ptr [ %.pre, %.lr.ph.i.i ], [ %.sroa.4.1.i.i, %.noexc98 ] ; 2 uses
  %i.fg = lshr i64 %.08.i.i, 1                    ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.07.i.i, i64 %i.fg ; 2 uses
  %.val13.val.i.i = load i64, ptr %i.fh, align 8, !tbaa !81
  %i.fi = invoke noundef float @_ZNK3tev11ImageButton15getCaptionWidthEP10NVGcontextm(ptr noundef nonnull align 16 dereferenceable(400) %0, ptr noundef %1, i64 noundef %.val13.val.i.i)
          to label %.noexc98 unwind label %bb.ai

.noexc98:                                         ; preds = %bb.af
  %i.fj = fcmp ogt float %i.fi, %i.fa             ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.neg.i.i = xor i64 %i.fg, -1
  %i.fl = add i64 %.08.i.i, %.neg.i.i
  %.sroa.4.1.i.i = select i1 %i.fj, ptr %i.fk, ptr %.sroa.4.07.i.i ; 4 uses
  %.1.i.i = select i1 %i.fj, i64 %i.fl, i64 %i.fg ; 2 uses
  %.not.i.i96 = icmp eq i64 %.1.i.i, 0
  br i1 %.not.i.i96, label %.loopexit, label %bb.af, !llvm.loop !119

.loopexit:                                        ; preds = %.noexc98
  %.pre211 = load ptr, ptr %i.fb, align 8, !tbaa !106 ; 2 uses
  %.pre212.pre = load ptr, ptr %3, align 8, !tbaa !102 ; 6 uses
  %i.fm = icmp eq ptr %.sroa.4.1.i.i, %.pre211
  br i1 %i.fm, label %.loopexit.thread, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.fn = icmp eq ptr %.pre212.pre, %.sroa.4.1.i.i
  %i.fo = ptrtoaddr ptr %.sroa.4.1.i.i to i64
  %i.fp = ptrtoaddr ptr %.pre212.pre to i64
  %reass.sub.i = add i64 %i.fo, -8
  %i.fq = sub i64 %reass.sub.i, %i.fp
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = add nuw nsw i64 %i.fr, 1
  %.0.lcssa.i.i = select i1 %i.fn, i64 0, i64 %i.fs ; 2 uses
  %i.ft = ptrtoint ptr %.pre211 to i64
  %i.fu = ptrtoint ptr %.pre212.pre to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 3
  %.not.i = icmp ult i64 %.0.lcssa.i.i, %i.fw
  br i1 %.not.i, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNKSt3__16vectorImNS_9allocatorImEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #29
          to label %.noexc101 unwind label %bb.aj

.noexc101:                                        ; preds = %bb.ah
  unreachable

.thread:                                          ; preds = %bb.ag
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.pre212.pre, i64 %.0.lcssa.i.i
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !81
  store i64 %i.fy, ptr %i.bv, align 8, !tbaa !99
  %i.fz = load i64, ptr %i.bn, align 16, !tbaa !12
  store i64 %i.fz, ptr %i.bo, align 16, !tbaa !12
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.thread:                                 ; preds = %._crit_edge, %.loopexit
  %.pre212239 = phi ptr [ %.pre212.pre, %.loopexit ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.gc = load i64, ptr %i.bn, align 16, !tbaa !12
  store i64 %i.gc, ptr %i.bo, align 16, !tbaa !12
  %.not.i.i102 = icmp eq ptr %.pre212239, null
  br i1 %.not.i.i102, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %.thread, %.loopexit.thread
  %.pre212239242 = phi ptr [ %.pre212.pre, %.thread ], [ %.pre212239, %.loopexit.thread ] ; 3 uses
  store ptr %.pre212239242, ptr %i.fb, align 8, !tbaa !106
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !100
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %.pre212239242 to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %.pre212239242, i64 noundef %i.gh) #32
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit

_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit: ; preds = %.loopexit.thread.thread, %.loopexit.thread, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.an

bb.al:                                            ; preds = %bb.aj, %bb.ai, %.loopexit200, %.loopexit.split-lp
  %.pn74 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit200 ], [ %i.ga, %bb.ai ], [ %i.gb, %bb.aj ]
  %i.gi = load ptr, ptr %3, align 8, !tbaa !102   ; 4 uses
  %.not.i.i103 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i103, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit104, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !106
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !100
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gi to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.go) #32
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit104

_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit104: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.cg

bb.an:                                            ; preds = %bb.n, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit, %bb.q
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gq = load <4 x i32>, ptr %i.gp, align 8, !tbaa !75
  %i.gr = sitofp <4 x i32> %i.gq to <4 x float>   ; 2 uses
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.gt = fmul nnan <2 x float> %i.gs, <float 5.000000e-01, float 1.000000e+00>
  %i.gu = shufflevector <4 x float> %i.gr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.gv = fadd <2 x float> %i.gt, %i.gu           ; 2 uses
  %i.gw = extractelement <2 x float> %i.gv, i64 1
  %i.gx = fadd float %i.gw, -5.000000e+00         ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !76 ; 2 uses
  %i.ha = add nsw i32 %i.gz, 1
  %i.hb = sitofp i32 %i.ha to float
  %i.hc = extractelement <2 x float> %i.gv, i64 0
  %i.hd = call float @llvm.fmuladd.f32(float %i.hb, float 5.000000e-01, float %i.hc) ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !13, !range !83, !noundef !84
  %i.hg = trunc nuw i8 %i.hf to i1                ; 2 uses
  %.sroa.8.0 = select i1 %i.hg, <2 x float> <float f0x3F169697, float 1.000000e+00>, <2 x float> <float f0x3F3EBEBF, float 1.000000e+00>
  %.sroa.0149.0 = select i1 %i.hg, <2 x float> splat (float f0x3F169697), <2 x float> splat (float f0x3F3EBEBF)
  %i.hh = load i8, ptr %i.p, align 16, !tbaa !52, !range !83, !noundef !84
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hj = load i8, ptr %i.f, align 1, !tbaa !50, !range !83, !noundef !84
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !96, !range !83, !noundef !84
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.021.sroa.0.0 = phi <2 x float> [ splat (float 1.000000e+00), %bb.aq ], [ %.sroa.0149.0, %bb.ap ] ; 3 uses
  %.sroa.622.sroa.0.0 = phi <2 x float> [ splat (float 1.000000e+00), %bb.aq ], [ splat (float f0x3F3EBEBF), %bb.ap ]
  %.sroa.018.sroa.0.0 = phi <2 x float> [ splat (float 1.000000e+00), %bb.aq ], [ <float f0x3F3EBEBF, float 1.000000e+00>, %bb.ap ]
  %.sroa.7.sroa.0.0 = phi <2 x float> [ splat (float 1.000000e+00), %bb.aq ], [ %.sroa.8.0, %bb.ap ] ; 3 uses
  %i.ho = sitofp i32 %i.gz to float
  invoke void @nvgFontSize(ptr noundef %1, float noundef %i.ho)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @nvgTextAlign(ptr noundef %1, i32 noundef 36)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !99 ; 8 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hs = load i8, ptr %i.hr, align 8, !noalias !120 ; 2 uses
  %i.ht = trunc i8 %i.hs to i1                    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hv = load i64, ptr %i.hu, align 16, !noalias !120
  %i.hw = lshr i8 %i.hs, 1
  %i.hx = zext nneg i8 %i.hw to i64
  %i.hy = select i1 %i.ht, i64 %i.hv, i64 %i.hx   ; 4 uses
  %i.hz = icmp ugt i64 %i.hq, %i.hy
  br i1 %i.hz, label %.invoke, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB8ne180100Emm.exit.i

_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB8ne180100Emm.exit.i: ; preds = %bb.at
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !120
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.id = select i1 %i.ht, ptr %i.ib, ptr %i.ic   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hq ; 4 uses
  %i.if = sub nuw i64 %i.hy, %i.hq                ; 4 uses
  %i.ig = load i64, ptr %i.bb, align 8, !tbaa !81, !noalias !120 ; 2 uses
  %i.ih = call i64 @llvm.usub.sat.i64(i64 %i.ig, i64 %i.hq) ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ij = load i64, ptr %i.ii, align 16, !tbaa !81, !noalias !120
  %i.ik = call i64 @llvm.usub.sat.i64(i64 %i.ij, i64 %i.hq) ; 4 uses
  %i.il = icmp ugt i64 %i.ik, %i.if
  br i1 %i.il, label %.invoke, label %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB8ne180100Emm.exit9.i

_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB8ne180100Emm.exit9.i: ; preds = %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB8ne180100Emm.exit.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ik ; 2 uses
  %i.in = icmp ugt i64 %i.ih, %i.if
  br i1 %i.in, label %.invoke, label %_ZNK3tev11ImageButton16getCaptionPiecesEm.exit

.invoke:                                          ; preds = %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB8ne180100Emm.exit9.i, %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB8ne180100Emm.exit.i, %bb.at
  invoke void @_ZNSt3__120__throw_out_of_rangeB8ne180100EPKc(ptr noundef nonnull @.str.8) #29
          to label %.cont unwind label %bb.av

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK3tev11ImageButton16getCaptionPiecesEm.exit:   ; preds = %_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB8ne180100Emm.exit9.i
  %i.io = sub i64 %i.ik, %i.ih
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ih ; 5 uses
  %i.iq = sub nuw i64 %i.if, %i.ih
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.iq, i64 %i.io) ; 2 uses
  %.not.i118 = icmp eq i64 %i.hq, 0
  %i.ir = icmp uge i64 %i.hq, %i.hy
  %or.cond.i.not = or i1 %.not.i118, %i.ir
  %i.is = icmp eq i64 %i.if, %i.ik
  br i1 %i.is, label %bb.bb, label %bb.aw

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.av:                                            ; preds = %.invoke
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.aw:                                            ; preds = %_ZNK3tev11ImageButton16getCaptionPiecesEm.exit
  invoke void @nvgFontFace(ptr noundef %1, ptr noundef nonnull @.str.5)
          to label %bb.ax unwind label %bb.bt

bb.ax:                                            ; preds = %bb.aw
  invoke void @nvgFillColor(ptr noundef %1, <2 x float> %.sroa.021.sroa.0.0, <2 x float> %.sroa.7.sroa.0.0)
          to label %bb.ay unwind label %bb.bt

bb.ay:                                            ; preds = %bb.ax
  %i.iv = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hy ; 2 uses
  %i.iw = invoke float @nvgText(ptr noundef %1, float noundef %i.gx, float noundef %i.hd, ptr noundef nonnull %i.im, ptr noundef nonnull %i.iv)
          to label %bb.az unwind label %bb.bt     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.ix = invoke float @nvgTextBounds(ptr noundef %1, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %i.im, ptr noundef nonnull %i.iv, ptr noundef null)
          to label %bb.ba unwind label %bb.bt

bb.ba:                                            ; preds = %bb.az
  %i.iy = fsub float %i.gx, %i.ix
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK3tev11ImageButton16getCaptionPiecesEm.exit, %bb.ba
  %.sroa.0168.1 = phi float [ %i.gx, %_ZNK3tev11ImageButton16getCaptionPiecesEm.exit ], [ %i.iy, %bb.ba ] ; 3 uses
  %i.iz = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.iz, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @nvgFontFace(ptr noundef %1, ptr noundef nonnull @.str)
          to label %bb.bd unwind label %bb.bt

bb.bd:                                            ; preds = %bb.bc
  invoke void @nvgFillColor(ptr noundef %1, <2 x float> %.sroa.622.sroa.0.0, <2 x float> %.sroa.018.sroa.0.0)
          to label %bb.be unwind label %bb.bt

bb.be:                                            ; preds = %bb.bd
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.sroa.speculated.i.i ; 2 uses
  %i.jb = invoke float @nvgText(ptr noundef %1, float noundef %.sroa.0168.1, float noundef %i.hd, ptr noundef nonnull %i.ip, ptr noundef nonnull %i.ja)
          to label %bb.bf unwind label %bb.bt     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.jc = invoke float @nvgTextBounds(ptr noundef %1, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %i.ip, ptr noundef nonnull %i.ja, ptr noundef null)
          to label %bb.bg unwind label %bb.bt

bb.bg:                                            ; preds = %bb.bf
  %i.jd = fsub float %.sroa.0168.1, %i.jc
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb
  %.sroa.0168.1.1 = phi float [ %.sroa.0168.1, %bb.bb ], [ %i.jd, %bb.bg ] ; 3 uses
  %.not233 = icmp ugt i64 %i.ig, %i.hq
  br i1 %.not233, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  invoke void @nvgFontFace(ptr noundef %1, ptr noundef nonnull @.str.5)
          to label %bb.bj unwind label %bb.bt

bb.bj:                                            ; preds = %bb.bi
  invoke void @nvgFillColor(ptr noundef %1, <2 x float> %.sroa.021.sroa.0.0, <2 x float> %.sroa.7.sroa.0.0)
          to label %bb.bk unwind label %bb.bt

bb.bk:                                            ; preds = %bb.bj
  %i.je = invoke float @nvgText(ptr noundef %1, float noundef %.sroa.0168.1.1, float noundef %i.hd, ptr noundef nonnull %i.ie, ptr noundef nonnull %i.ip)
          to label %bb.bl unwind label %bb.bt     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.jf = invoke float @nvgTextBounds(ptr noundef %1, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %i.ie, ptr noundef nonnull %i.ip, ptr noundef null)
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %bb.bl
  %i.jg = fsub float %.sroa.0168.1.1, %i.jf
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  %.sroa.0168.1.2 = phi float [ %.sroa.0168.1.1, %bb.bh ], [ %i.jg, %bb.bm ]
  br i1 %or.cond.i.not, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @nvgFontFace(ptr noundef %1, ptr noundef nonnull @.str.5)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  invoke void @nvgFillColor(ptr noundef %1, <2 x float> %.sroa.021.sroa.0.0, <2 x float> %.sroa.7.sroa.0.0)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.jh = invoke float @nvgText(ptr noundef %1, float noundef %.sroa.0168.1.2, float noundef %i.hd, ptr noundef nonnull @.str.3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 3))
          to label %bb.br unwind label %bb.bt     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.ji = invoke float @nvgTextBounds(ptr noundef %1, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 3), ptr noundef null)
          to label %bb.bs unwind label %bb.bt     ; 0 uses

bb.bs:                                            ; preds = %bb.br, %bb.bn
  %i.jj = load i8, ptr %i.p, align 16, !tbaa !52, !range !83, !noundef !84
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.bw, label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bu:                                            ; preds = %bb.bs
  %i.jm = load i8, ptr %i.f, align 1, !tbaa !50, !range !83, !noundef !84
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !96, !range !83, !noundef !84
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bs, %bb.bu, %bb.bv
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.6.0 = phi <2 x float> [ splat (float 1.000000e+00), %bb.bw ], [ <float f0x3F48C8C9, float 1.000000e+00>, %bb.bv ]
  %.sroa.01.0 = phi <2 x float> [ splat (float 1.000000e+00), %bb.bw ], [ splat (float f0x3F48C8C9), %bb.bv ]
  %i.jr = load i32, ptr %i.gy, align 8, !tbaa !76
  %i.js = add nsw i32 %i.jr, 2
  %i.jt = sitofp i32 %i.js to float
  invoke void @nvgFontSize(ptr noundef %1, float noundef %i.jt)
          to label %bb.by unwind label %bb.cf

bb.by:                                            ; preds = %bb.bx
  invoke void @nvgFontFace(ptr noundef %1, ptr noundef nonnull @.str)
          to label %bb.bz unwind label %bb.cf

bb.bz:                                            ; preds = %bb.by
  invoke void @nvgTextAlign(ptr noundef %1, i32 noundef 33)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  invoke void @nvgFillColor(ptr noundef %1, <2 x float> %.sroa.01.0, <2 x float> %.sroa.6.0)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  %i.ju = load i32, ptr %i.gp, align 8, !tbaa !75
  %i.jv = add nsw i32 %i.ju, 5
  %i.jw = sitofp i32 %i.jv to float
  %i.jx = load i8, ptr %2, align 8                ; 2 uses
  %i.jy = trunc i8 %i.jx to i1                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.kc = select i1 %i.jy, ptr %i.ka, ptr %i.kb   ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = lshr i8 %i.jx, 1
  %i.kg = zext nneg i8 %i.kf to i64
  %i.kh = select i1 %i.jy, i64 %i.ke, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kh
  %i.kj = invoke float @nvgText(ptr noundef %1, float noundef %i.jw, float noundef %i.hd, ptr noundef %i.kc, ptr noundef %i.ki)
          to label %bb.cc unwind label %bb.cf     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.kk = load i8, ptr %2, align 8
  %i.kl = trunc i8 %i.kk to i1
  br i1 %i.kl, label %bb.cd, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.cd:                                            ; preds = %bb.cc
  %i.km = load ptr, ptr %i.jz, align 8, !tbaa !12
  %i.kn = load i64, ptr %2, align 8
  %i.ko = and i64 %i.kn, -2
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.ko) #32
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.ce

bb.ce:                                            ; preds = %bb.a, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void

bb.cf:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %bb.av, %bb.bt, %bb.cf, %bb.au, %bb.v, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit104, %bb.p, %bb.o
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.v ], [ %i.bm, %bb.p ], [ %i.bl, %bb.o ], [ %.pn74, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit104 ], [ %i.it, %bb.au ], [ %i.jl, %bb.bt ], [ %i.iu, %bb.av ], [ %i.kp, %bb.cf ]
  %i.kq = load i8, ptr %2, align 8
  %i.kr = trunc i8 %i.kq to i1
  br i1 %i.kr, label %bb.ch, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit128

bb.ch:                                            ; preds = %bb.cg
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !12
  %i.ku = load i64, ptr %2, align 8
  %i.kv = and i64 %i.ku, -2
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kv) #32
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit128

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit128: ; preds = %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn.pn
}

declare void @_ZN7nanogui6Widget4drawEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

declare void @nvgBeginPath(ptr noundef) local_unnamed_addr #1

declare void @nvgRect(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @nvgFillColor(ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #1

declare void @nvgFill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @nvgTextAlign(ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @nvgText(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageButton17setHighlightRangeEmm(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(400) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = trunc i8 %i.b to i1                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16
  %i.f = lshr i8 %i.b, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 4 uses
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.k = load i8, ptr %i.a, align 8               ; 2 uses
  %i.l = trunc i8 %i.k to i1
  %i.m = load i64, ptr %i.d, align 16
  %i.n = lshr i8 %i.k, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = select i1 %i.l, i64 %i.m, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !123
  store i64 %2, ptr %3, align 16, !tbaa !12, !noalias !123
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.p, ptr %i.q, align 16, !tbaa !12, !noalias !123
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr nonnull @.str.6, i64 53, i64 68, ptr nonnull %3)
          to label %bb.c unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !123
  invoke void @_ZNSt11logic_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt16invalid_argument, i64 16), ptr %i.j, align 8, !tbaa !10
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #29
          to label %bb.l unwind label %bb.e

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.t = load i8, ptr %4, align 8
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = load i64, ptr %4, align 8
  %i.y = and i64 %i.x, -2
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.e
end_hunk_0
