Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/from_chars?download=true
inline.NumInlined: 530
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5boost8charconv6detail10fast_float19from_chars_advancedIfcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE:bb.a

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.cu = and i64 %3, 3
  %or.cond173.i.not.not = icmp eq i64 %i.cu, 1
  br i1 %or.cond173.i.not.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.u
  %.3136.i = phi i64 [ %.0133.i, %bb.u ], [ %.0133.i, %bb.v ], [ %i.cs, %.thread ] ; 2 uses
  %.9.i = phi ptr [ %.4131.i, %bb.u ], [ %.4131.i, %bb.v ], [ %.6.i.lcssa.ph, %.thread ] ; 7 uses
  %.5.i = phi i64 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select172.i, %.thread ]
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.9.i, ptr %i.cv, align 8, !tbaa !47, !alias.scope !65
  store i8 1, ptr %i.e, align 1, !tbaa !48, !alias.scope !65
  %i.cw = icmp sgt i64 %.0140.i, 19
  br i1 %i.cw, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.w, %.critedge10.i
  %.0.i252 = phi ptr [ %i.db, %.critedge10.i ], [ %.0127.i, %bb.w ] ; 2 uses
  %.1141.i251 = phi i64 [ %spec.select175.i, %.critedge10.i ], [ %.0140.i, %bb.w ] ; 2 uses
  %i.cx = load i8, ptr %.0.i252, align 1, !tbaa !35, !noalias !65 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 48                    ; 2 uses
  %i.cz = icmp eq i8 %i.cx, %.sroa.2.0.extract.trunc.i
  %or.cond174.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond174.i, label %.critedge10.i, label %.critedge8.i

.critedge10.i:                                    ; preds = %.preheader
  %i.da = sext i1 %i.cy to i64
  %spec.select175.i = add nsw i64 %.1141.i251, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i252, i64 1 ; 2 uses
  %.not169.i = icmp eq ptr %i.db, %1
  br i1 %.not169.i, label %.critedge8.i, label %.preheader, !llvm.loop !4

.critedge8.i:                                     ; preds = %.preheader, %.critedge10.i
  %.1141.i.lcssa = phi i64 [ %.1141.i251, %.preheader ], [ %spec.select175.i, %.critedge10.i ]
  %i.dc = icmp sgt i64 %.1141.i.lcssa, 19
  br i1 %i.dc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.critedge8.i
  store i8 1, ptr %i.f, align 2, !tbaa !49, !alias.scope !65
  %i.dd = getelementptr inbounds nuw i8, ptr %.0127.i, i64 %i.bt
  %.not265 = icmp samesign eq i64 %i.bt, 0
  br i1 %.not265, label %._crit_edge.thread, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.x, %.lr.ph255
  %.10.i254 = phi ptr [ %i.dj, %.lr.ph255 ], [ %.0127.i, %bb.x ] ; 2 uses
  %.4147.i253 = phi i64 [ %i.di, %.lr.ph255 ], [ 0, %bb.x ]
  %i.de = mul nuw i64 %.4147.i253, 10
  %i.df = load i8, ptr %.10.i254, align 1, !tbaa !35
  %i.dg = sext i8 %i.df to i64
  %i.dh = add i64 %i.de, -48
  %i.di = add i64 %i.dh, %i.dg                    ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.10.i254, i64 1 ; 3 uses
  %i.dk = icmp ult i64 %i.di, 1000000000000000000
  %i.dl = icmp ne ptr %i.dj, %i.dd
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph255, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph255
  %i.dn = icmp ugt i64 %i.di, 999999999999999999
  br i1 %i.dn, label %bb.y, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.x, %._crit_edge
  %.4147.i.lcssa313 = phi i64 [ %i.di, %._crit_edge ], [ 0, %bb.x ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  %.not266 = icmp samesign eq i64 %i.br, 0
  br i1 %.not266, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %._crit_edge.thread, %.lr.ph261
  %.11.i259 = phi ptr [ %i.du, %.lr.ph261 ], [ %i.bs, %._crit_edge.thread ] ; 2 uses
  %.5148.i258 = phi i64 [ %i.dt, %.lr.ph261 ], [ %.4147.i.lcssa313, %._crit_edge.thread ]
  %i.dp = mul nuw i64 %.5148.i258, 10
  %i.dq = load i8, ptr %.11.i259, align 1, !tbaa !35
  %i.dr = sext i8 %i.dq to i64
  %i.ds = add i64 %i.dp, -48
  %i.dt = add i64 %i.ds, %i.dr                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.11.i259, i64 1 ; 3 uses
  %i.dv = icmp ult i64 %i.dt, 1000000000000000000
  %i.dw = icmp ne ptr %i.du, %i.do
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %.lr.ph261, label %._crit_edge262, !llvm.loop !6

._crit_edge262:                                   ; preds = %.lr.ph261, %._crit_edge.thread
  %.5148.i.lcssa = phi i64 [ %.4147.i.lcssa313, %._crit_edge.thread ], [ %i.dt, %.lr.ph261 ]
  %.11.i.lcssa = phi ptr [ %i.bs, %._crit_edge.thread ], [ %i.du, %.lr.ph261 ]
  %i.dy = ptrtoint ptr %i.bs to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %._crit_edge262
  %.11.i.lcssa.sink = phi ptr [ %.11.i.lcssa, %._crit_edge262 ], [ %i.dj, %._crit_edge ]
  %.sink = phi i64 [ %i.dy, %._crit_edge262 ], [ %i.bu, %._crit_edge ]
  %.6149.i = phi i64 [ %.5148.i.lcssa, %._crit_edge262 ], [ %i.di, %._crit_edge ]
  %i.dz = ptrtoint ptr %.11.i.lcssa.sink to i64
  %i.ea = sub i64 %.sink, %i.dz
  %.4137.i = add nsw i64 %i.ea, %.5.i
  br label %bb.aa

bb.z:                                             ; preds = %bb.d, %bb.c, %bb.l, %bb.u, %bb.v
  %i.eb = tail call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float6detail12parse_infnanIfcEENS0_19from_chars_result_tIT0_EEPKS6_S9_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #13 ; 2 uses
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  %i.ed = extractvalue { ptr, i32 } %i.eb, 1
  br label %bb.bc

bb.aa:                                            ; preds = %bb.y, %.critedge8.i, %bb.w
  %i.ee = phi i1 [ false, %bb.w ], [ true, %bb.y ], [ false, %.critedge8.i ] ; 2 uses
  %.8151.i = phi i64 [ %.3146.i, %bb.w ], [ %.6149.i, %bb.y ], [ %.3146.i, %.critedge8.i ] ; 18 uses
  %.6139.i = phi i64 [ %.3136.i, %bb.w ], [ %.4137.i, %bb.y ], [ %.3136.i, %.critedge8.i ] ; 16 uses
  store i64 %.6139.i, ptr %5, align 8, !tbaa !50, !alias.scope !65
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.8151.i, ptr %i.ef, align 8, !tbaa !51, !alias.scope !65
  %i.eg = add i64 %.6139.i, -11
  %i.eh = icmp ult i64 %i.eg, -21
  %or.cond328 = or i1 %i.eh, %i.ee
  br i1 %or.cond328, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = load volatile float, ptr @_ZZN5boost8charconv6detail10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !28 ; 2 uses
  %i.ej = fadd float %i.ei, 1.000000e+00
  %i.ek = fsub float 1.000000e+00, %i.ei
  %i.el = fcmp oeq float %i.ej, %i.ek
  br i1 %i.el, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %.not84 = icmp ugt i64 %.8151.i, 16777216
  br i1 %.not84, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = uitofp nneg i64 %.8151.i to float       ; 3 uses
  store float %i.em, ptr %2, align 4, !tbaa !28
  %i.en = icmp slt i64 %.6139.i, 0
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eo = sub nsw i64 0, %.6139.i
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !28
  %i.er = fdiv float %i.em, %i.eq
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE, i64 %.6139.i
  %i.et = load float, ptr %i.es, align 4, !tbaa !28
  %i.eu = fmul float %i.et, %i.em
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge = phi float [ %i.eu, %bb.af ], [ %i.er, %bb.ae ] ; 2 uses
  store float %storemerge, ptr %2, align 4, !tbaa !28
  br i1 %i.h, label %bb.ah, label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.ev = fneg float %storemerge
  store float %i.ev, ptr %2, align 4, !tbaa !28
  br label %bb.bc

bb.ai:                                            ; preds = %bb.ab
  %i.ew = icmp sgt i64 %.6139.i, -1
  br i1 %i.ew, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIfvE12max_mantissaE, i64 %.6139.i
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !24
  %.not83 = icmp ugt i64 %.8151.i, %i.ey
  br i1 %.not83, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = icmp eq i64 %.8151.i, 0
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = select i1 %i.h, float -0.000000e+00, float 0.000000e+00
  store float %i.fa, ptr %2, align 4, !tbaa !28
  br label %bb.bc

bb.am:                                            ; preds = %bb.ak
  %i.fb = uitofp i64 %.8151.i to float
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE, i64 %.6139.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !28
  %i.fe = fmul float %i.fd, %i.fb                 ; 2 uses
  store float %i.fe, ptr %2, align 4, !tbaa !28
  br i1 %i.h, label %bb.an, label %bb.bc

bb.an:                                            ; preds = %bb.am
  %i.ff = fneg float %i.fe
  store float %i.ff, ptr %2, align 4, !tbaa !28
  br label %bb.bc

bb.ao:                                            ; preds = %bb.ac, %bb.aj, %bb.ai, %bb.aa
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fh = icmp eq i64 %.8151.i, 0
  %i.fi = icmp slt i64 %.6139.i, -65              ; 2 uses
  %or.cond181 = or i1 %i.fi, %i.fh
  br i1 %or.cond181, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = icmp sgt i64 %.6139.i, 38
  br i1 %i.fj, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96, label %.noexc103

.noexc103:                                        ; preds = %bb.ap
  %i.fk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8151.i, i1 true) ; 2 uses
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = shl i64 %.8151.i, %i.fk
  %i.fn = trunc nsw i64 %.6139.i to i32           ; 2 uses
  %i.fo = shl nsw i32 %i.fn, 1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fp ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 5472
  %i.fs = load i64, ptr %i.fr, align 16, !tbaa !24
  %i.ft = zext i64 %i.fm to i128                  ; 2 uses
  %i.fu = zext i64 %i.fs to i128
  %i.fv = mul nuw i128 %i.fu, %i.ft               ; 2 uses
  %i.fw = trunc i128 %i.fv to i64                 ; 2 uses
  %i.fx = lshr i128 %i.fv, 64
  %i.fy = trunc nuw i128 %i.fx to i64             ; 3 uses
  %i.fz = and i64 %i.fy, 274877906943
  %i.ga = icmp eq i64 %i.fz, 274877906943
  br i1 %i.ga, label %.noexc104, label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit105

.noexc104:                                        ; preds = %.noexc103
  %i.gb = getelementptr i8, ptr %i.fq, i64 5480
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !24
  %6 = zext i64 %i.gc to i128
  %7 = mul nuw i128 %6, %i.ft
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64                   ; 2 uses
  %i.gd = add i64 %9, %i.fw                       ; 2 uses
  %10 = icmp ult i64 %i.gd, %9
  %i.ge = zext i1 %10 to i64
  %spec.select.i102 = add nuw i64 %i.ge, %i.fy
  br label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit105

_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit105: ; preds = %.noexc104, %.noexc103
  %.pn201 = phi i64 [ %i.gd, %.noexc104 ], [ %i.fw, %.noexc103 ]
  %spec.select.i102.pn = phi i64 [ %spec.select.i102, %.noexc104 ], [ %i.fy, %.noexc103 ] ; 3 uses
  %i.gf = lshr i64 %spec.select.i102.pn, 63       ; 2 uses
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = or disjoint i64 %i.gf, 38               ; 2 uses
  %i.gi = lshr i64 %spec.select.i102.pn, %i.gh    ; 5 uses
  %i.gj = mul nsw i32 %i.fn, 217706
  %i.gk = ashr i32 %i.gj, 16
  %i.gl = add nsw i32 %i.gk, 190
  %i.gm = sub nsw i32 %i.gl, %i.fl
  %i.gn = add nsw i32 %i.gm, %i.gg                ; 3 uses
  %i.go = icmp slt i32 %i.gn, 1
  br i1 %i.go, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit105
  %i.gp = sub nsw i32 1, %i.gn                    ; 2 uses
  %i.gq = icmp samesign ugt i32 %i.gp, 63
  br i1 %i.gq, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gr = zext nneg i32 %i.gp to i64
  %i.gs = lshr i64 %i.gi, %i.gr                   ; 2 uses
  %i.gt = and i64 %i.gs, 1
  %i.gu = add nuw nsw i64 %i.gt, %i.gs            ; 2 uses
  %i.gv = lshr i64 %i.gu, 1
  %i.gw = icmp samesign ugt i64 %i.gu, 16777215
  %i.gx = zext i1 %i.gw to i32
  br label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96

bb.as:                                            ; preds = %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit105
  %i.gy = icmp ult i64 %.pn201, 2
  %i.gz = add nsw i64 %.6139.i, 17
  %i.ha = icmp ult i64 %i.gz, 28
  %or.cond183.not204 = and i1 %i.ha, %i.gy
  %i.hb = and i64 %i.gi, 3
  %i.hc = icmp eq i64 %i.hb, 1
  %or.cond185 = select i1 %or.cond183.not204, i1 %i.hc, i1 false
  %i.hd = shl i64 %i.gi, %i.gh
  %i.he = icmp eq i64 %i.hd, %spec.select.i102.pn
  %or.cond187 = select i1 %or.cond185, i1 %i.he, i1 false
  %i.hf = and i64 %i.gi, 67108862
  %.sroa.0147.0 = select i1 %or.cond187, i64 %i.hf, i64 %i.gi ; 2 uses
  %i.hg = and i64 %.sroa.0147.0, 1
  %i.hh = add nuw nsw i64 %i.hg, %.sroa.0147.0    ; 2 uses
  %i.hi = lshr i64 %i.hh, 1
  %.not21.i86 = icmp samesign ugt i64 %i.hh, 33554431 ; 2 uses
  %i.hj = zext i1 %.not21.i86 to i32
  %.sroa.19153.0 = add nuw nsw i32 %i.gn, %i.hj   ; 2 uses
  %i.hk = and i64 %i.hi, 58720255
  %.not22.i87 = icmp samesign ugt i32 %.sroa.19153.0, 254 ; 2 uses
  %.not205 = select i1 %.not22.i87, i1 true, i1 %.not21.i86
  %spec.select196 = select i1 %.not205, i64 0, i64 %i.hk
  %spec.select197 = select i1 %.not22.i87, i32 255, i32 %.sroa.19153.0
  br label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96

_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96: ; preds = %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.ar
  %.sroa.0147.2 = phi i64 [ 0, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ %i.gv, %bb.ar ], [ %spec.select196, %bb.as ] ; 3 uses
  %.sroa.19153.1 = phi i32 [ 0, %bb.aq ], [ 0, %bb.ao ], [ 255, %bb.ap ], [ %i.gx, %bb.ar ], [ %spec.select197, %bb.as ] ; 3 uses
  br i1 %i.ee, label %bb.at, label %.thread177

bb.at:                                            ; preds = %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96
  %i.hl = add i64 %.8151.i, 1                     ; 3 uses
  %i.hm = icmp eq i64 %i.hl, 0
  %or.cond188 = or i1 %i.fi, %i.hm
  br i1 %or.cond188, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hn = icmp sgt i64 %.6139.i, 38
  br i1 %i.hn, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit, label %.noexc108

.noexc108:                                        ; preds = %bb.au
  %i.ho = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hl, i1 true) ; 2 uses
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %i.hq = shl i64 %i.hl, %i.ho
  %i.hr = trunc nsw i64 %.6139.i to i32           ; 2 uses
  %i.hs = shl nsw i32 %i.hr, 1
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.ht ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 5472
  %i.hw = load i64, ptr %i.hv, align 16, !tbaa !24
  %i.hx = zext i64 %i.hq to i128                  ; 2 uses
  %i.hy = zext i64 %i.hw to i128
  %i.hz = mul nuw i128 %i.hy, %i.hx               ; 2 uses
  %i.ia = trunc i128 %i.hz to i64                 ; 2 uses
  %i.ib = lshr i128 %i.hz, 64
  %i.ic = trunc nuw i128 %i.ib to i64             ; 3 uses
  %i.id = and i64 %i.ic, 274877906943
  %i.ie = icmp eq i64 %i.id, 274877906943
  br i1 %i.ie, label %.noexc109, label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit110

.noexc109:                                        ; preds = %.noexc108
  %i.if = getelementptr i8, ptr %i.hu, i64 5480
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !24
  %11 = zext i64 %i.ig to i128
  %12 = mul nuw i128 %11, %i.hx
  %13 = lshr i128 %12, 64
  %14 = trunc nuw i128 %13 to i64                 ; 2 uses
  %i.ih = add i64 %14, %i.ia                      ; 2 uses
  %15 = icmp ult i64 %i.ih, %14
  %i.ii = zext i1 %15 to i64
  %spec.select.i107 = add nuw i64 %i.ii, %i.ic
  br label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit110

_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit110: ; preds = %.noexc109, %.noexc108
  %.pn207 = phi i64 [ %i.ih, %.noexc109 ], [ %i.ia, %.noexc108 ]
  %spec.select.i107.pn = phi i64 [ %spec.select.i107, %.noexc109 ], [ %i.ic, %.noexc108 ] ; 3 uses
  %i.ij = lshr i64 %spec.select.i107.pn, 63       ; 2 uses
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = or disjoint i64 %i.ij, 38               ; 2 uses
  %i.im = lshr i64 %spec.select.i107.pn, %i.il    ; 5 uses
  %i.in = mul nsw i32 %i.hr, 217706
  %i.io = ashr i32 %i.in, 16
  %i.ip = add nsw i32 %i.io, 190
  %i.iq = sub nsw i32 %i.ip, %i.hp
  %i.ir = add nsw i32 %i.iq, %i.ik                ; 3 uses
  %i.is = icmp slt i32 %i.ir, 1
  br i1 %i.is, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit110
  %i.it = sub nsw i32 1, %i.ir                    ; 2 uses
  %i.iu = icmp samesign ugt i32 %i.it, 63
  br i1 %i.iu, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iv = zext nneg i32 %i.it to i64
  %i.iw = lshr i64 %i.im, %i.iv                   ; 2 uses
  %i.ix = and i64 %i.iw, 1
  %i.iy = add nuw nsw i64 %i.ix, %i.iw            ; 2 uses
  %i.iz = lshr i64 %i.iy, 1
  %i.ja = icmp samesign ugt i64 %i.iy, 16777215
  %i.jb = zext i1 %i.ja to i32
  br label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit

bb.ax:                                            ; preds = %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi26EEENS2_8value128Elm.exit110
  %i.jc = icmp ult i64 %.pn207, 2
  %i.jd = add nsw i64 %.6139.i, 17
  %i.je = icmp ult i64 %i.jd, 28
  %or.cond190.not210 = and i1 %i.je, %i.jc
  %i.jf = and i64 %i.im, 3
  %i.jg = icmp eq i64 %i.jf, 1
  %or.cond192 = select i1 %or.cond190.not210, i1 %i.jg, i1 false
  %i.jh = shl i64 %i.im, %i.il
  %i.ji = icmp eq i64 %i.jh, %spec.select.i107.pn
  %or.cond194 = select i1 %or.cond192, i1 %i.ji, i1 false
  %i.jj = and i64 %i.im, 67108862
  %.sroa.0139.0 = select i1 %or.cond194, i64 %i.jj, i64 %i.im ; 2 uses
  %i.jk = and i64 %.sroa.0139.0, 1
  %i.jl = add nuw nsw i64 %i.jk, %.sroa.0139.0    ; 2 uses
  %i.jm = lshr i64 %i.jl, 1
  %.not21.i = icmp samesign ugt i64 %i.jl, 33554431 ; 2 uses
  %i.jn = zext i1 %.not21.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.ir, %i.jn      ; 2 uses
  %i.jo = and i64 %i.jm, 58720255
  %.not22.i = icmp samesign ugt i32 %.sroa.19.0, 254 ; 2 uses
  %.not211 = select i1 %.not22.i, i1 true, i1 %.not21.i
  %spec.select198 = select i1 %.not211, i64 0, i64 %i.jo
  %spec.select199 = select i1 %.not22.i, i32 255, i32 %.sroa.19.0
  br label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit

_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit: ; preds = %bb.ax, %bb.av, %bb.au, %bb.at, %bb.aw
  %.sroa.0139.2 = phi i64 [ 0, %bb.av ], [ 0, %bb.at ], [ 0, %bb.au ], [ %i.iz, %bb.aw ], [ %spec.select198, %bb.ax ]
  %.sroa.19.1 = phi i32 [ 0, %bb.av ], [ 0, %bb.at ], [ 255, %bb.au ], [ %i.jb, %bb.aw ], [ %spec.select199, %bb.ax ]
  %.not.i126 = icmp ne i64 %.sroa.0147.2, %.sroa.0139.2
  %i.jp = icmp ne i32 %.sroa.19153.1, %.sroa.19.1
  %i.jq = select i1 %.not.i126, i1 true, i1 %i.jp
  br i1 %i.jq, label %.noexc, label %.thread177

.noexc:                                           ; preds = %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit
  %i.jr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8151.i, i1 true) ; 2 uses
  %i.js = trunc nuw nsw i64 %i.jr to i32
  %i.jt = shl i64 %.8151.i, %i.jr
  %i.ju = trunc i64 %.6139.i to i32               ; 4 uses
  %i.jv = shl i32 %i.ju, 1                        ; 2 uses
  %i.jw = add i32 %i.jv, 684
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 16, !tbaa !24
  %i.ka = zext i64 %i.jt to i128                  ; 2 uses
  %i.kb = zext i64 %i.jz to i128
  %i.kc = mul nuw i128 %i.kb, %i.ka               ; 2 uses
  %i.kd = lshr i128 %i.kc, 64
  %i.ke = trunc nuw i128 %i.kd to i64             ; 3 uses
  %i.kf = and i64 %i.ke, 274877906943
  %i.kg = icmp eq i64 %i.kf, 274877906943
  br i1 %i.kg, label %.noexc100, label %bb.ay

.noexc100:                                        ; preds = %.noexc
  %i.kh = trunc i128 %i.kc to i64
  %i.ki = add i32 %i.jv, 685
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !24
  %16 = zext i64 %i.kl to i128
  %17 = mul nuw i128 %16, %i.ka
  %18 = lshr i128 %17, 64
  %19 = trunc nuw i128 %18 to i64
  %i.km = xor i64 %19, -1
  %20 = icmp ult i64 %i.km, %i.kh
  %i.kn = zext i1 %20 to i64
  %spec.select.i99 = add nuw i64 %i.kn, %i.ke
  br label %bb.ay

bb.ay:                                            ; preds = %.noexc, %.noexc100
  %spec.select.i99.pn = phi i64 [ %spec.select.i99, %.noexc100 ], [ %i.ke, %.noexc ] ; 2 uses
  %i.ko = lshr i64 %spec.select.i99.pn, 63        ; 2 uses
  %i.kp = trunc nuw nsw i64 %i.ko to i32
  %i.kq = xor i64 %i.ko, 1
  %i.kr = shl i64 %spec.select.i99.pn, %i.kq      ; 2 uses
  %i.ks = mul nsw i32 %i.ju, 217706
  %i.kt = ashr i32 %i.ks, 16
  %reass.sub.neg = sub nsw i32 %i.kp, %i.js
  %i.ku = add nsw i32 %reass.sub.neg, %i.kt       ; 3 uses
  %i.kv = add nsw i32 %i.ku, -32618
  %i.kw = icmp slt i32 %i.ku, 32618
  br i1 %i.kw, label %bb.az, label %.thread177

bb.az:                                            ; preds = %bb.ay
  %i.kx = icmp ugt i64 %.8151.i, 9999
  br i1 %i.kx, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.az
  %.011.i.lcssa.i = phi i64 [ %.8151.i, %bb.az ], [ %i.kz, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.ju, %bb.az ], [ %i.la, %.lr.ph.i ] ; 2 uses
  %i.ky = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.ky, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.az, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.la, %.lr.ph.i ], [ %i.ju, %bb.az ]
  %.011.i19.i = phi i64 [ %i.kz, %.lr.ph.i ], [ %.8151.i, %bb.az ] ; 2 uses
  %i.kz = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.la = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.lb = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.lb, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.ld, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.le, %.lr.ph24.i ] ; 2 uses
  %i.lc = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.lc, label %.lr.ph29.i, label %_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.le, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.ld, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.ld = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.le = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.lf = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.lf, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !8

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.lh, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.lg, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.lg = udiv i64 %.213.i27.i, 10
  %i.lh = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.li = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.li, label %.lr.ph29.i, label %_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !9

_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.lh, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %4, i8 0, i64 504, i1 false)
  call void @_ZN5boost8charconv6detail10fast_float14parse_mantissaIcEEvRNS2_6bigintERNS2_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef 114, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #13
  %i.lj = add nsw i32 %.2.i.lcssa.i, 1
  %i.lk = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = sub i32 %i.lj, %i.ll                    ; 3 uses
  %i.ln = icmp sgt i32 %i.lm, -1
  br i1 %i.ln, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i
  %i.lo = call { i64, i32 } @_ZN5boost8charconv6detail10fast_float19positive_digit_compIfEENS2_17adjusted_mantissaERNS2_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %4, i32 noundef %i.lm) #13
  br label %_ZN5boost8charconv6detail10fast_float10digit_compIfcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit

bb.bb:                                            ; preds = %_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i
  %i.lp = add nsw i32 %i.ku, 150
  %i.lq = call { i64, i32 } @_ZN5boost8charconv6detail10fast_float19negative_digit_compIfEENS2_17adjusted_mantissaERNS2_6bigintES4_i(ptr noundef nonnull align 8 dereferenceable(504) %4, i64 %i.kr, i32 %i.lp, i32 noundef %i.lm) #13
  br label %_ZN5boost8charconv6detail10fast_float10digit_compIfcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit

_ZN5boost8charconv6detail10fast_float10digit_compIfcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit: ; preds = %bb.ba, %bb.bb
  %.pn.i127 = phi { i64, i32 } [ %i.lo, %bb.ba ], [ %i.lq, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i127, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i127, 1
  %.pre = load i8, ptr %i.i, align 8, !tbaa !45, !range !25
  %.pre284 = load i64, ptr %i.fg, align 8, !tbaa !51
  br label %.thread177

.thread177:                                       ; preds = %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit, %bb.ay, %_ZN5boost8charconv6detail10fast_float10digit_compIfcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit
  %i.lr = phi i64 [ %.pre284, %_ZN5boost8charconv6detail10fast_float10digit_compIfcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit ], [ %.8151.i, %bb.ay ], [ %.8151.i, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit ], [ %.8151.i, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96 ]
  %i.ls = phi i8 [ %.pre, %_ZN5boost8charconv6detail10fast_float10digit_compIfcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit ], [ %i.j, %bb.ay ], [ %i.j, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit ], [ %i.j, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96 ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN5boost8charconv6detail10fast_float10digit_compIfcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit ], [ %i.kv, %bb.ay ], [ %.sroa.19153.1, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit ], [ %.sroa.19153.1, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96 ] ; 3 uses
  %.sroa.0128.1 = phi i64 [ %.fca.0.extract, %_ZN5boost8charconv6detail10fast_float10digit_compIfcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit ], [ %i.kr, %bb.ay ], [ %.sroa.0147.2, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit ], [ %.sroa.0147.2, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIfEEEENS2_17adjusted_mantissaElm.exit96 ] ; 2 uses
  %i.lt = zext nneg i8 %i.ls to i32
  %i.lu = trunc i64 %.sroa.0128.1 to i32
  %i.lv = shl i32 %.sroa.9.1, 23
  %i.lw = or i32 %i.lv, %i.lu
  %i.lx = shl nuw i32 %i.lt, 31
  %i.ly = or i32 %i.lw, %i.lx
  store i32 %i.ly, ptr %2, align 4
  %i.lz = icmp ne i64 %i.lr, 0
  %i.ma = icmp eq i64 %.sroa.0128.1, 0
  %or.cond8 = select i1 %i.lz, i1 %i.ma, i1 false
  %i.mb = icmp eq i32 %.sroa.9.1, 0
  %or.cond11 = select i1 %or.cond8, i1 %i.mb, i1 false
  %i.mc = icmp eq i32 %.sroa.9.1, 255
  %or.cond195 = select i1 %or.cond11, i1 true, i1 %i.mc
  %spec.select = select i1 %or.cond195, i32 34, i32 0
  br label %bb.bc

bb.bc:                                            ; preds = %.thread177, %bb.am, %bb.an, %bb.ag, %bb.ah, %bb.al, %bb.z
  %.sroa.075.0 = phi ptr [ %.9.i, %bb.am ], [ %i.ec, %bb.z ], [ %.9.i, %bb.al ], [ %.9.i, %bb.ag ], [ %.9.i, %bb.ah ], [ %.9.i, %bb.an ], [ %.9.i, %.thread177 ]
  %.sroa.7.0 = phi i32 [ 0, %bb.am ], [ %i.ed, %bb.z ], [ 0, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.an ], [ %spec.select, %.thread177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.bc
  %.sroa.075.1 = phi ptr [ %.sroa.075.0, %bb.bc ], [ %0, %bb.a ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %bb.bc ], [ 22, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.075.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail10fast_float6detail12parse_infnanIfcEENS0_19from_chars_result_tIT0_EEPKS6_S9_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !35
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !35 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35    ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !35    ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, float -qnan, float +qnan
  store float %i.aa, ptr %2, align 4, !tbaa !28
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
end_hunk_0
begin_hunk_1_@_ZN5boost8charconv6detail23from_chars_integer_implIlmEENS0_19from_chars_result_tIcEEPKcS6_RT_i:bb.a
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.b, label %.thread123

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %3 to i64                  ; 8 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %0, align 1, !tbaa !35
  switch i8 %i.e, label %.thread [
    i8 45, label %bb.d
    i8 43, label %.thread123
    i8 32, label %.thread123
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.078114 = phi ptr [ %i.f, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ] ; 5 uses
  %.083113 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.g = phi i64 [ -9223372036854775808, %bb.d ], [ 9223372036854775807, %bb.c ], [ 9223372036854775807, %bb.b ] ; 2 uses
  %i.h = udiv i64 %i.g, %i.d                      ; 2 uses
  %i.i = urem i64 %i.g, %i.d
  %i.j = icmp eq ptr %.078114, %1
  br i1 %i.j, label %.thread123, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.078114 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = load i8, ptr %.078114, align 1, !tbaa !35
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !35
  %i.r = zext i8 %i.q to i64                      ; 3 uses
  %.not106 = icmp samesign ult i64 %i.r, %i.d
  br i1 %.not106, label %.preheader, label %.thread123

.preheader:                                       ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detailL11log_2_tableE, i64 %i.d
  %i.t = load double, ptr %i.s, align 8, !tbaa !30
  %i.u = fmul double %i.t, 6.300000e+01
  %i.v = fptosi double %i.u to i64
  %invariant.smin = tail call i64 @llvm.smin.i64(i64 %i.v, i64 %i.m) ; 4 uses
  %.179131 = getelementptr inbounds nuw i8, ptr %.078114, i64 1 ; 2 uses
  %i.w = icmp sgt i64 %invariant.smin, 1
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %.078114, i64 %invariant.smin
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.179134 = phi ptr [ %.179, %bb.f ], [ %.179131, %.lr.ph.preheader ] ; 3 uses
  %.0133 = phi i64 [ %i.ae, %bb.f ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.089132 = phi i64 [ %i.ad, %bb.f ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %i.x = load i8, ptr %.179134, align 1, !tbaa !35
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i64                    ; 2 uses
  %.not107 = icmp samesign ult i64 %i.ab, %i.d
  br i1 %.not107, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %i.ac = mul i64 %.089132, %i.d
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = add nuw nsw i64 %.0133, 1               ; 2 uses
  %.179 = getelementptr inbounds nuw i8, ptr %.179134, i64 1
  %exitcond.not = icmp eq i64 %i.ae, %invariant.smin
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %.preheader
  %.089.lcssa = phi i64 [ %i.r, %.preheader ], [ %.089132, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %.0.lcssa = phi i64 [ 1, %.preheader ], [ %.0133, %.lr.ph ], [ %invariant.smin, %bb.f ] ; 2 uses
  %.179.lcssa = phi ptr [ %.179131, %.preheader ], [ %.179134, %.lr.ph ], [ %scevgep, %bb.f ] ; 2 uses
  %i.af = icmp slt i64 %.0.lcssa, %i.m
  br i1 %i.af, label %.lr.ph146, label %._crit_edge147.thread

.lr.ph146:                                        ; preds = %._crit_edge, %bb.j
  %.1144 = phi i64 [ %i.aq, %bb.j ], [ %.0.lcssa, %._crit_edge ]
  %.076143 = phi i1 [ %.177, %bb.j ], [ false, %._crit_edge ] ; 2 uses
  %.482142 = phi ptr [ %i.ap, %bb.j ], [ %.179.lcssa, %._crit_edge ] ; 3 uses
  %.392141 = phi i64 [ %.493, %bb.j ], [ %.089.lcssa, %._crit_edge ] ; 5 uses
  %i.ag = load i8, ptr %.482142, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN5boost8charconv6detailL12uchar_valuesE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = zext i8 %i.aj to i64                    ; 3 uses
  %.not108 = icmp samesign ult i64 %i.ak, %i.d
  br i1 %.not108, label %bb.g, label %._crit_edge147

bb.g:                                             ; preds = %.lr.ph146
  %i.al = icmp ult i64 %.392141, %i.h
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp ne i64 %.392141, %i.h
  %.not109 = icmp samesign ult i64 %i.i, %i.ak
  %or.cond = select i1 %i.am, i1 true, i1 %.not109
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = mul i64 %.392141, %i.d
  %i.ao = add i64 %i.an, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.493 = phi i64 [ %i.ao, %bb.i ], [ %.392141, %bb.h ] ; 2 uses
  %.177 = phi i1 [ %.076143, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.482142, i64 1 ; 2 uses
  %i.aq = add nuw nsw i64 %.1144, 1               ; 2 uses
  %i.ar = icmp slt i64 %i.aq, %i.m
  br i1 %i.ar, label %.lr.ph146, label %._crit_edge147, !llvm.loop !101

._crit_edge147:                                   ; preds = %.lr.ph146, %bb.j
  %.392.lcssa = phi i64 [ %.493, %bb.j ], [ %.392141, %.lr.ph146 ]
  %.482.lcssa = phi ptr [ %i.ap, %bb.j ], [ %.482142, %.lr.ph146 ] ; 2 uses
  %.076.lcssa = phi i1 [ %.177, %bb.j ], [ %.076143, %.lr.ph146 ]
  br i1 %.076.lcssa, label %.thread123, label %._crit_edge147.thread

._crit_edge147.thread:                            ; preds = %._crit_edge, %._crit_edge147
  %.482.lcssa168 = phi ptr [ %.482.lcssa, %._crit_edge147 ], [ %.179.lcssa, %._crit_edge ]
  %.392.lcssa167 = phi i64 [ %.392.lcssa, %._crit_edge147 ], [ %.089.lcssa, %._crit_edge ] ; 2 uses
  %i.as = sub i64 0, %.392.lcssa167
  %spec.select = select i1 %.083113, i64 %i.as, i64 %.392.lcssa167
  store i64 %spec.select, ptr %2, align 8, !tbaa !24
  br label %.thread123

.thread123:                                       ; preds = %bb.e, %._crit_edge147, %bb.c, %bb.c, %.thread, %._crit_edge147.thread, %bb.a
  %.sroa.0.3 = phi ptr [ %0, %bb.a ], [ %0, %bb.c ], [ %0, %.thread ], [ %0, %bb.c ], [ %.482.lcssa, %._crit_edge147 ], [ %.482.lcssa168, %._crit_edge147.thread ], [ %0, %bb.e ]
  %.sroa.7.3 = phi i32 [ 22, %bb.a ], [ 22, %bb.c ], [ 22, %.thread ], [ 22, %bb.c ], [ 34, %._crit_edge147 ], [ 0, %._crit_edge147.thread ], [ 22, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZN5boost8charconv6detail15compute_float64ElmbRb(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add i64 %0, 22
  %or.cond = icmp ult i64 %i.a, 45
  %i.b = icmp ult i64 %1, 9007199254740992
  %or.cond3 = and i1 %or.cond, %i.b
  br i1 %or.cond3, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp nneg i64 %1 to double             ; 2 uses
  %i.d = icmp slt i64 %0, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i64 0, %0
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detailL13powers_of_tenE, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !30
  %i.h = fdiv double %i.c, %i.g
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detailL13powers_of_tenE, i64 %0
  %i.j = load double, ptr %i.i, align 8, !tbaa !30
  %i.k = fmul double %i.j, %i.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.077 = phi double [ %i.h, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = fneg double %.077
  %.178 = select i1 %2, double %i.l, double %.077
  store i8 1, ptr %3, align 1, !tbaa !22
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %1, 0
  %i.n = icmp slt i64 %0, -325
  %or.cond5 = or i1 %i.n, %i.m
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.p = icmp sgt i64 %0, 308
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = select i1 %2, double -inf, double +inf
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.r = add nsw i64 %0, 325                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail20significand_templateILb1EE14significand_64E, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24
  %i.u = mul nsw i64 %0, 217706
  %i.v = ashr i64 %i.u, 16
  %i.w = add nsw i64 %i.v, 1087                   ; 2 uses
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %i.y = shl i64 %1, %i.x                         ; 2 uses
  %i.z = zext i64 %i.y to i128                    ; 2 uses
  %i.aa = zext i64 %i.t to i128
  %i.ab = mul nuw i128 %i.aa, %i.z                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc nuw i128 %i.ac to i64             ; 4 uses
  %i.ae = trunc i128 %i.ab to i64                 ; 5 uses
  %i.af = and i64 %i.ad, 511                      ; 2 uses
  %i.ag = icmp eq i64 %i.af, 511
  br i1 %i.ag, label %bb.k, label %bb.m, !prof !102

bb.k:                                             ; preds = %bb.j
  %i.ah = xor i64 %i.ae, -1
  %i.ai = icmp ugt i64 %i.y, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail20significand_templateILb1EE15significand_128E, i64 %i.r
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %4 = zext i64 %i.ak to i128
  %5 = mul nuw i128 %4, %i.z
  %6 = lshr i128 %5, 64
  %7 = trunc nuw i128 %6 to i64
  %i.al = add i64 %7, %i.ae                       ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ae
  %i.an = zext i1 %i.am to i64
  %spec.select = add nuw i64 %i.an, %i.ad         ; 2 uses
  %.pre = and i64 %spec.select, 511
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pre-phi = phi i64 [ %.pre, %bb.l ], [ 511, %bb.k ], [ %i.af, %bb.j ]
  %.075 = phi i64 [ %i.al, %bb.l ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ]
  %.074 = phi i64 [ %spec.select, %bb.l ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ao = lshr i64 %.074, 63                      ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 9
  %i.aq = lshr i64 %.074, %i.ap                   ; 3 uses
  %i.ar = icmp eq i64 %.075, 0
  %i.as = icmp eq i64 %.pre-phi, 0
  %or.cond88 = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = and i64 %i.aq, 3
  %i.au = icmp eq i64 %i.at, 1
  %or.cond92 = select i1 %or.cond88, i1 %i.au, i1 false, !prof !103
  br i1 %or.cond92, label %bb.o, label %.critedge, !prof !103

.critedge:                                        ; preds = %bb.m
  %i.av = xor i64 %i.ao, 1
  %i.aw = add nuw nsw i64 %i.av, %i.x
  %i.ax = and i64 %i.aq, 1
  %i.ay = add nuw nsw i64 %i.ax, %i.aq            ; 2 uses
  %i.az = icmp samesign ugt i64 %i.ay, 18014398509481983 ; 2 uses
  %i.ba = sext i1 %i.az to i64
  %spec.select89 = add nsw i64 %i.aw, %i.ba       ; 2 uses
  %i.bb = sub nsw i64 %i.w, %spec.select89        ; 2 uses
  %i.bc = icmp eq i64 %i.w, %spec.select89
  %i.bd = icmp ugt i64 %i.bb, 2046
  %i.be = select i1 %i.bc, i1 true, i1 %i.bd, !prof !102
  br i1 %i.be, label %bb.o, label %bb.n, !prof !102

bb.n:                                             ; preds = %.critedge
  %i.bf = lshr i64 %i.ay, 1
  %i.bg = and i64 %i.bf, 67553994410557439
  %i.bh = select i1 %i.az, i64 0, i64 %i.bg
  %i.bi = shl nuw nsw i64 %i.bb, 52
  %i.bj = select i1 %2, i64 -9223372036854775808, i64 0
  %i.bk = or disjoint i64 %i.bh, %i.bj
  %i.bl = or i64 %i.bk, %i.bi
  %i.bm = bitcast i64 %i.bl to double
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.critedge
  %storemerge86 = phi i8 [ 0, %bb.m ], [ 1, %bb.n ], [ 0, %.critedge ]
  %.1 = phi double [ 0.000000e+00, %bb.m ], [ %i.bm, %bb.n ], [ 0.000000e+00, %.critedge ]
  store i8 %storemerge86, ptr %3, align 1, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i, %bb.g, %bb.e
  %.2 = phi double [ %.178, %bb.e ], [ %i.o, %bb.g ], [ %i.q, %bb.i ], [ %.1, %bb.o ]
  ret double %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare float @strtof(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.boost::charconv::detail::fast_float::bigint", align 8 ; 6 uses
  %5 = alloca %"struct.boost::charconv::detail::fast_float::parsed_number_string_t", align 8 ; 16 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %.sroa.0.0.extract.trunc.i = trunc i64 %3 to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %3, 32
  %.sroa.2.0.extract.trunc.i = trunc i64 %.sroa.2.0.extract.shift.i to i8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %5, i8 0, i64 27, i1 false)
  %i.g = load i8, ptr %0, align 1, !tbaa !35, !noalias !106
  %i.h = icmp eq i8 %i.g, 45                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.j = zext i1 %i.h to i8                       ; 4 uses
  store i8 %i.j, ptr %i.i, align 8, !tbaa !45, !alias.scope !106
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.k, align 1, !tbaa !35, !noalias !106 ; 2 uses
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  %.not.i = icmp eq i8 %i.m, %.sroa.2.0.extract.trunc.i
  %or.cond171 = select i1 %i.o, i1 true, i1 %.not.i
  br i1 %or.cond171, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0127.i = phi ptr [ %i.k, %bb.d ], [ %0, %bb.b ] ; 10 uses
  %.0127.i270 = ptrtoaddr ptr %.0127.i to i64
  %i.p = sub i64 %i.a, %.0127.i270
  %scevgep = getelementptr i8, ptr %.0127.i, i64 %i.p
  br label %bb.f

.critedge.i.thread:                               ; preds = %bb.g
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %.0127.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  store ptr %.0127.i, ptr %i.d, align 8, !tbaa !46
  %.sroa.4129.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.s, ptr %.sroa.4129.0..sroa_idx162, align 8, !tbaa !24
  br label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.g
  %.1128.i217 = phi ptr [ %.0127.i, %bb.e ], [ %i.aa, %bb.g ] ; 5 uses
  %.0143.i216 = phi i64 [ 0, %bb.e ], [ %i.z, %bb.g ] ; 4 uses
  %i.t = load i8, ptr %.1128.i217, align 1, !tbaa !35, !noalias !106 ; 3 uses
  %i.u = add i8 %i.t, -48
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = mul i64 %.0143.i216, 10
  %i.x = zext nneg i8 %i.t to i64
  %i.y = add i64 %i.w, -48
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1128.i217, i64 1 ; 2 uses
  %.not161.i = icmp eq ptr %i.aa, %1
  br i1 %.not161.i, label %.critedge.i.thread, label %bb.f, !llvm.loop !0

bb.h:                                             ; preds = %bb.f
  %i.ab = ptrtoint ptr %.1128.i217 to i64         ; 3 uses
  %i.ac = ptrtoint ptr %.0127.i to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  store ptr %.0127.i, ptr %i.d, align 8, !tbaa !46
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.ad, ptr %.sroa.4129.0..sroa_idx, align 8, !tbaa !24
  %i.ae = icmp eq i8 %i.t, %.sroa.2.0.extract.trunc.i
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.1128.i217, i64 1 ; 5 uses
  %i.ag = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp sgt i64 %i.ai, 7
  br i1 %i.aj, label %.lr.ph, label %.critedge2.i

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.2129.i219 = phi ptr [ %i.ba, %bb.j ], [ %i.af, %bb.i ] ; 3 uses
  %.1144.i218 = phi i64 [ %i.az, %bb.j ], [ %.0143.i216, %bb.i ] ; 2 uses
  %.0.copyload.i86 = load i64, ptr %.2129.i219, align 1 ; 2 uses
  %i.ak = add i64 %.0.copyload.i86, 5063812098665367110
  %i.al = add i64 %.0.copyload.i86, -3472328296227680304 ; 3 uses
  %i.am = or i64 %i.ak, %i.al
  %i.an = and i64 %i.am, -9187201950435737472
  %.not.i85 = icmp eq i64 %i.an, 0
  br i1 %.not.i85, label %bb.j, label %.critedge2.i

bb.j:                                             ; preds = %.lr.ph
  %i.ao = mul i64 %.1144.i218, 100000000
  %i.ap = mul i64 %i.al, 10
  %i.aq = lshr i64 %i.al, 8
  %i.ar = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = and i64 %i.ar, 1095216660735
  %i.at = mul i64 %i.as, 4294967296000100
  %i.au = lshr i64 %i.ar, 16
  %i.av = and i64 %i.au, 1095216660735
  %i.aw = mul i64 %i.av, 42949672960001
  %i.ax = add i64 %i.aw, %i.at
  %i.ay = lshr i64 %i.ax, 32
  %i.az = add i64 %i.ay, %i.ao                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.2129.i219, i64 8 ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.ag, %i.bb
  %i.bd = icmp sgt i64 %i.bc, 7
  br i1 %i.bd, label %.lr.ph, label %.critedge2.i, !llvm.loop !1

.critedge2.i:                                     ; preds = %bb.j, %.lr.ph, %bb.i
  %.1144.i.lcssa = phi i64 [ %.0143.i216, %bb.i ], [ %.1144.i218, %.lr.ph ], [ %i.az, %bb.j ] ; 2 uses
  %.2129.i.lcssa = phi ptr [ %i.af, %bb.i ], [ %.2129.i219, %.lr.ph ], [ %i.ba, %bb.j ] ; 5 uses
  %.not162.i224 = icmp eq ptr %.2129.i.lcssa, %1
  br i1 %.not162.i224, label %.critedge4.i, label %.lr.ph227.preheader

end_hunk_1
begin_hunk_2_@_ZN5boost8charconv6detail10fast_float19from_chars_advancedIdcEENS0_19from_chars_result_tIT0_EEPKS5_S8_RT_NS2_15parse_options_tIS5_EE:bb.a

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.cu = and i64 %3, 3
  %or.cond173.i.not.not = icmp eq i64 %i.cu, 1
  br i1 %or.cond173.i.not.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.u
  %.3136.i = phi i64 [ %.0133.i, %bb.u ], [ %.0133.i, %bb.v ], [ %i.cs, %.thread ] ; 2 uses
  %.9.i = phi ptr [ %.4131.i, %bb.u ], [ %.4131.i, %bb.v ], [ %.6.i.lcssa.ph, %.thread ] ; 7 uses
  %.5.i = phi i64 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select172.i, %.thread ]
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.9.i, ptr %i.cv, align 8, !tbaa !47, !alias.scope !106
  store i8 1, ptr %i.e, align 1, !tbaa !48, !alias.scope !106
  %i.cw = icmp sgt i64 %.0140.i, 19
  br i1 %i.cw, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.w, %.critedge10.i
  %.0.i243 = phi ptr [ %i.db, %.critedge10.i ], [ %.0127.i, %bb.w ] ; 2 uses
  %.1141.i242 = phi i64 [ %spec.select175.i, %.critedge10.i ], [ %.0140.i, %bb.w ] ; 2 uses
  %i.cx = load i8, ptr %.0.i243, align 1, !tbaa !35, !noalias !106 ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 48                    ; 2 uses
  %i.cz = icmp eq i8 %i.cx, %.sroa.2.0.extract.trunc.i
  %or.cond174.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond174.i, label %.critedge10.i, label %.critedge8.i

.critedge10.i:                                    ; preds = %.preheader
  %i.da = sext i1 %i.cy to i64
  %spec.select175.i = add nsw i64 %.1141.i242, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i243, i64 1 ; 2 uses
  %.not169.i = icmp eq ptr %i.db, %1
  br i1 %.not169.i, label %.critedge8.i, label %.preheader, !llvm.loop !4

.critedge8.i:                                     ; preds = %.preheader, %.critedge10.i
  %.1141.i.lcssa = phi i64 [ %.1141.i242, %.preheader ], [ %spec.select175.i, %.critedge10.i ]
  %i.dc = icmp sgt i64 %.1141.i.lcssa, 19
  br i1 %i.dc, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.critedge8.i
  store i8 1, ptr %i.f, align 2, !tbaa !49, !alias.scope !106
  %i.dd = getelementptr inbounds nuw i8, ptr %.0127.i, i64 %i.bt
  %.not256 = icmp samesign eq i64 %i.bt, 0
  br i1 %.not256, label %._crit_edge.thread, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.x, %.lr.ph246
  %.10.i245 = phi ptr [ %i.dj, %.lr.ph246 ], [ %.0127.i, %bb.x ] ; 2 uses
  %.4147.i244 = phi i64 [ %i.di, %.lr.ph246 ], [ 0, %bb.x ]
  %i.de = mul nuw i64 %.4147.i244, 10
  %i.df = load i8, ptr %.10.i245, align 1, !tbaa !35
  %i.dg = sext i8 %i.df to i64
  %i.dh = add i64 %i.de, -48
  %i.di = add i64 %i.dh, %i.dg                    ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.10.i245, i64 1 ; 3 uses
  %i.dk = icmp ult i64 %i.di, 1000000000000000000
  %i.dl = icmp ne ptr %i.dj, %i.dd
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph246, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph246
  %i.dn = icmp ugt i64 %i.di, 999999999999999999
  br i1 %i.dn, label %bb.y, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.x, %._crit_edge
  %.4147.i.lcssa304 = phi i64 [ %i.di, %._crit_edge ], [ 0, %bb.x ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  %.not257 = icmp samesign eq i64 %i.br, 0
  br i1 %.not257, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %._crit_edge.thread, %.lr.ph252
  %.11.i250 = phi ptr [ %i.du, %.lr.ph252 ], [ %i.bs, %._crit_edge.thread ] ; 2 uses
  %.5148.i249 = phi i64 [ %i.dt, %.lr.ph252 ], [ %.4147.i.lcssa304, %._crit_edge.thread ]
  %i.dp = mul nuw i64 %.5148.i249, 10
  %i.dq = load i8, ptr %.11.i250, align 1, !tbaa !35
  %i.dr = sext i8 %i.dq to i64
  %i.ds = add i64 %i.dp, -48
  %i.dt = add i64 %i.ds, %i.dr                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.11.i250, i64 1 ; 3 uses
  %i.dv = icmp ult i64 %i.dt, 1000000000000000000
  %i.dw = icmp ne ptr %i.du, %i.do
  %i.dx = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %i.dx, label %.lr.ph252, label %._crit_edge253, !llvm.loop !6

._crit_edge253:                                   ; preds = %.lr.ph252, %._crit_edge.thread
  %.5148.i.lcssa = phi i64 [ %.4147.i.lcssa304, %._crit_edge.thread ], [ %i.dt, %.lr.ph252 ]
  %.11.i.lcssa = phi ptr [ %i.bs, %._crit_edge.thread ], [ %i.du, %.lr.ph252 ]
  %i.dy = ptrtoint ptr %i.bs to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %._crit_edge253
  %.11.i.lcssa.sink = phi ptr [ %.11.i.lcssa, %._crit_edge253 ], [ %i.dj, %._crit_edge ]
  %.sink = phi i64 [ %i.dy, %._crit_edge253 ], [ %i.bu, %._crit_edge ]
  %.6149.i = phi i64 [ %.5148.i.lcssa, %._crit_edge253 ], [ %i.di, %._crit_edge ]
  %i.dz = ptrtoint ptr %.11.i.lcssa.sink to i64
  %i.ea = sub i64 %.sink, %i.dz
  %.4137.i = add nsw i64 %i.ea, %.5.i
  br label %bb.aa

bb.z:                                             ; preds = %bb.d, %bb.c, %bb.l, %bb.u, %bb.v
  %i.eb = tail call { ptr, i32 } @_ZN5boost8charconv6detail10fast_float6detail12parse_infnanIdcEENS0_19from_chars_result_tIT0_EEPKS6_S9_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 ; 2 uses
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  %i.ed = extractvalue { ptr, i32 } %i.eb, 1
  br label %bb.bi

bb.aa:                                            ; preds = %bb.y, %.critedge8.i, %bb.w
  %i.ee = phi i1 [ false, %bb.w ], [ true, %bb.y ], [ false, %.critedge8.i ] ; 2 uses
  %.8151.i = phi i64 [ %.3146.i, %bb.w ], [ %.6149.i, %bb.y ], [ %.3146.i, %.critedge8.i ] ; 18 uses
  %.6139.i = phi i64 [ %.3136.i, %bb.w ], [ %.4137.i, %bb.y ], [ %.3136.i, %.critedge8.i ] ; 16 uses
  store i64 %.6139.i, ptr %5, align 8, !tbaa !50, !alias.scope !106
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.8151.i, ptr %i.ef, align 8, !tbaa !51, !alias.scope !106
  %i.eg = add i64 %.6139.i, -23
  %i.eh = icmp ult i64 %i.eg, -45
  %or.cond319 = or i1 %i.eh, %i.ee
  br i1 %or.cond319, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = load volatile float, ptr @_ZZN5boost8charconv6detail10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !28 ; 2 uses
  %i.ej = fadd float %i.ei, 1.000000e+00
  %i.ek = fsub float 1.000000e+00, %i.ei
  %i.el = fcmp oeq float %i.ej, %i.ek
  br i1 %i.el, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %.not84 = icmp ugt i64 %.8151.i, 9007199254740992
  br i1 %.not84, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = uitofp nneg i64 %.8151.i to double      ; 3 uses
  store double %i.em, ptr %2, align 8, !tbaa !30
  %i.en = icmp slt i64 %.6139.i, 0
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eo = sub nsw i64 0, %.6139.i
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !30
  %i.er = fdiv double %i.em, %i.eq
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %.6139.i
  %i.et = load double, ptr %i.es, align 8, !tbaa !30
  %i.eu = fmul double %i.et, %i.em
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge = phi double [ %i.eu, %bb.af ], [ %i.er, %bb.ae ] ; 2 uses
  store double %storemerge, ptr %2, align 8, !tbaa !30
  br i1 %i.h, label %bb.ah, label %bb.bi

bb.ah:                                            ; preds = %bb.ag
  %i.ev = fneg double %storemerge
  store double %i.ev, ptr %2, align 8, !tbaa !30
  br label %bb.bi

bb.ai:                                            ; preds = %bb.ab
  %i.ew = icmp sgt i64 %.6139.i, -1
  br i1 %i.ew, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE, i64 %.6139.i
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !24
  %.not83 = icmp ugt i64 %.8151.i, %i.ey
  br i1 %.not83, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = icmp eq i64 %.8151.i, 0
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = select i1 %i.h, double -0.000000e+00, double 0.000000e+00
  store double %i.fa, ptr %2, align 8, !tbaa !30
  br label %bb.bi

bb.am:                                            ; preds = %bb.ak
  %i.fb = uitofp i64 %.8151.i to double
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 %.6139.i
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !30
  %i.fe = fmul double %i.fd, %i.fb                ; 2 uses
  store double %i.fe, ptr %2, align 8, !tbaa !30
  br i1 %i.h, label %bb.an, label %bb.bi

bb.an:                                            ; preds = %bb.am
  %i.ff = fneg double %i.fe
  store double %i.ff, ptr %2, align 8, !tbaa !30
  br label %bb.bi

bb.ao:                                            ; preds = %bb.ac, %bb.aj, %bb.ai, %bb.aa
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fh = icmp eq i64 %.8151.i, 0
  %i.fi = icmp slt i64 %.6139.i, -342             ; 2 uses
  %or.cond172 = or i1 %i.fi, %i.fh
  br i1 %or.cond172, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = icmp sgt i64 %.6139.i, 308
  br i1 %i.fj, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8151.i, i1 true) ; 2 uses
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = shl i64 %.8151.i, %i.fk
  %i.fn = trunc nsw i64 %.6139.i to i32           ; 2 uses
  %i.fo = shl nsw i32 %i.fn, 1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.fp ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 5472
  %i.fs = load i64, ptr %i.fr, align 16, !tbaa !24
  %i.ft = zext i64 %i.fm to i128                  ; 2 uses
  %i.fu = zext i64 %i.fs to i128
  %i.fv = mul nuw i128 %i.fu, %i.ft               ; 2 uses
  %i.fw = trunc i128 %i.fv to i64                 ; 2 uses
  %i.fx = lshr i128 %i.fv, 64
  %i.fy = trunc nuw i128 %i.fx to i64             ; 3 uses
  %i.fz = and i64 %i.fy, 511
  %i.ga = icmp eq i64 %i.fz, 511
  br i1 %i.ga, label %bb.ar, label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit106

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr i8, ptr %i.fq, i64 5480
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !24
  %6 = zext i64 %i.gc to i128
  %7 = mul nuw i128 %6, %i.ft
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64                   ; 2 uses
  %i.gd = add i64 %9, %i.fw                       ; 2 uses
  %10 = icmp ult i64 %i.gd, %9
  %i.ge = zext i1 %10 to i64
  %spec.select.i105 = add nuw i64 %i.ge, %i.fy
  br label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit106

_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit106: ; preds = %bb.ar, %bb.aq
  %.pn192 = phi i64 [ %i.gd, %bb.ar ], [ %i.fw, %bb.aq ]
  %spec.select.i105.pn = phi i64 [ %spec.select.i105, %bb.ar ], [ %i.fy, %bb.aq ] ; 3 uses
  %i.gf = lshr i64 %spec.select.i105.pn, 63       ; 2 uses
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = add nuw nsw i64 %i.gf, 9                ; 2 uses
  %i.gi = lshr i64 %spec.select.i105.pn, %i.gh    ; 5 uses
  %i.gj = mul nsw i32 %i.fn, 217706
  %i.gk = ashr i32 %i.gj, 16
  %i.gl = add nsw i32 %i.gk, 1086
  %i.gm = sub nsw i32 %i.gl, %i.fl
  %i.gn = add nsw i32 %i.gm, %i.gg                ; 3 uses
  %i.go = icmp slt i32 %i.gn, 1
  br i1 %i.go, label %bb.as, label %bb.au

bb.as:                                            ; preds = %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit106
  %i.gp = sub nsw i32 1, %i.gn                    ; 2 uses
  %i.gq = icmp samesign ugt i32 %i.gp, 63
  br i1 %i.gq, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gr = zext nneg i32 %i.gp to i64
  %i.gs = lshr i64 %i.gi, %i.gr                   ; 2 uses
  %i.gt = and i64 %i.gs, 1
  %i.gu = add nuw nsw i64 %i.gt, %i.gs            ; 2 uses
  %i.gv = lshr i64 %i.gu, 1
  %i.gw = icmp samesign ugt i64 %i.gu, 9007199254740991
  %i.gx = zext i1 %i.gw to i32
  br label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98

bb.au:                                            ; preds = %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit106
  %i.gy = icmp ult i64 %.pn192, 2
  %i.gz = add nsw i64 %.6139.i, 4
  %i.ha = icmp ult i64 %i.gz, 28
  %or.cond174.not195 = and i1 %i.ha, %i.gy
  %i.hb = and i64 %i.gi, 3
  %i.hc = icmp eq i64 %i.hb, 1
  %or.cond176 = select i1 %or.cond174.not195, i1 %i.hc, i1 false
  %i.hd = shl i64 %i.gi, %i.gh
  %i.he = icmp eq i64 %i.hd, %spec.select.i105.pn
  %or.cond178 = select i1 %or.cond176, i1 %i.he, i1 false
  %i.hf = and i64 %i.gi, 72057594037927934
  %.sroa.0138.0 = select i1 %or.cond178, i64 %i.hf, i64 %i.gi ; 2 uses
  %i.hg = and i64 %.sroa.0138.0, 1
  %i.hh = add nuw nsw i64 %i.hg, %.sroa.0138.0    ; 2 uses
  %i.hi = lshr i64 %i.hh, 1
  %.not21.i88 = icmp samesign ugt i64 %i.hh, 18014398509481983 ; 2 uses
  %i.hj = zext i1 %.not21.i88 to i32
  %.sroa.19144.0 = add nuw nsw i32 %i.gn, %i.hj   ; 2 uses
  %i.hk = and i64 %i.hi, 9218868437227405311
  %.not22.i89 = icmp samesign ugt i32 %.sroa.19144.0, 2046 ; 2 uses
  %.not196 = select i1 %.not22.i89, i1 true, i1 %.not21.i88
  %spec.select187 = select i1 %.not196, i64 0, i64 %i.hk
  %spec.select188 = select i1 %.not22.i89, i32 2047, i32 %.sroa.19144.0
  br label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98

_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98: ; preds = %bb.au, %bb.as, %bb.ap, %bb.ao, %bb.at
  %.sroa.0138.2 = phi i64 [ 0, %bb.as ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ %i.gv, %bb.at ], [ %spec.select187, %bb.au ] ; 3 uses
  %.sroa.19144.1 = phi i32 [ 0, %bb.as ], [ 0, %bb.ao ], [ 2047, %bb.ap ], [ %i.gx, %bb.at ], [ %spec.select188, %bb.au ] ; 3 uses
  br i1 %i.ee, label %bb.av, label %.thread168

bb.av:                                            ; preds = %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98
  %i.hl = add i64 %.8151.i, 1                     ; 3 uses
  %i.hm = icmp eq i64 %i.hl, 0
  %or.cond179 = or i1 %i.fi, %i.hm
  br i1 %or.cond179, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hn = icmp sgt i64 %.6139.i, 308
  br i1 %i.hn, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ho = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hl, i1 true) ; 2 uses
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %i.hq = shl i64 %i.hl, %i.ho
  %i.hr = trunc nsw i64 %.6139.i to i32           ; 2 uses
  %i.hs = shl nsw i32 %i.hr, 1
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.ht ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 5472
  %i.hw = load i64, ptr %i.hv, align 16, !tbaa !24
  %i.hx = zext i64 %i.hq to i128                  ; 2 uses
  %i.hy = zext i64 %i.hw to i128
  %i.hz = mul nuw i128 %i.hy, %i.hx               ; 2 uses
  %i.ia = trunc i128 %i.hz to i64                 ; 2 uses
  %i.ib = lshr i128 %i.hz, 64
  %i.ic = trunc nuw i128 %i.ib to i64             ; 3 uses
  %i.id = and i64 %i.ic, 511
  %i.ie = icmp eq i64 %i.id, 511
  br i1 %i.ie, label %bb.ay, label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit113

bb.ay:                                            ; preds = %bb.ax
  %i.if = getelementptr i8, ptr %i.hu, i64 5480
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !24
  %11 = zext i64 %i.ig to i128
  %12 = mul nuw i128 %11, %i.hx
  %13 = lshr i128 %12, 64
  %14 = trunc nuw i128 %13 to i64                 ; 2 uses
  %i.ih = add i64 %14, %i.ia                      ; 2 uses
  %15 = icmp ult i64 %i.ih, %14
  %i.ii = zext i1 %15 to i64
  %spec.select.i112 = add nuw i64 %i.ii, %i.ic
  br label %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit113

_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit113: ; preds = %bb.ay, %bb.ax
  %.pn198 = phi i64 [ %i.ih, %bb.ay ], [ %i.ia, %bb.ax ]
  %spec.select.i112.pn = phi i64 [ %spec.select.i112, %bb.ay ], [ %i.ic, %bb.ax ] ; 3 uses
  %i.ij = lshr i64 %spec.select.i112.pn, 63       ; 2 uses
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = add nuw nsw i64 %i.ij, 9                ; 2 uses
  %i.im = lshr i64 %spec.select.i112.pn, %i.il    ; 5 uses
  %i.in = mul nsw i32 %i.hr, 217706
  %i.io = ashr i32 %i.in, 16
  %i.ip = add nsw i32 %i.io, 1086
  %i.iq = sub nsw i32 %i.ip, %i.hp
  %i.ir = add nsw i32 %i.iq, %i.ik                ; 3 uses
  %i.is = icmp slt i32 %i.ir, 1
  br i1 %i.is, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit113
  %i.it = sub nsw i32 1, %i.ir                    ; 2 uses
  %i.iu = icmp samesign ugt i32 %i.it, 63
  br i1 %i.iu, label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iv = zext nneg i32 %i.it to i64
  %i.iw = lshr i64 %i.im, %i.iv                   ; 2 uses
  %i.ix = and i64 %i.iw, 1
  %i.iy = add nuw nsw i64 %i.ix, %i.iw            ; 2 uses
  %i.iz = lshr i64 %i.iy, 1
  %i.ja = icmp samesign ugt i64 %i.iy, 9007199254740991
  %i.jb = zext i1 %i.ja to i32
  br label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit

bb.bb:                                            ; preds = %_ZN5boost8charconv6detail10fast_float29compute_product_approximationILi55EEENS2_8value128Elm.exit113
  %i.jc = icmp ult i64 %.pn198, 2
  %i.jd = add nsw i64 %.6139.i, 4
  %i.je = icmp ult i64 %i.jd, 28
  %or.cond181.not201 = and i1 %i.je, %i.jc
  %i.jf = and i64 %i.im, 3
  %i.jg = icmp eq i64 %i.jf, 1
  %or.cond183 = select i1 %or.cond181.not201, i1 %i.jg, i1 false
  %i.jh = shl i64 %i.im, %i.il
  %i.ji = icmp eq i64 %i.jh, %spec.select.i112.pn
  %or.cond185 = select i1 %or.cond183, i1 %i.ji, i1 false
  %i.jj = and i64 %i.im, 72057594037927934
  %.sroa.0130.0 = select i1 %or.cond185, i64 %i.jj, i64 %i.im ; 2 uses
  %i.jk = and i64 %.sroa.0130.0, 1
  %i.jl = add nuw nsw i64 %i.jk, %.sroa.0130.0    ; 2 uses
  %i.jm = lshr i64 %i.jl, 1
  %.not21.i = icmp samesign ugt i64 %i.jl, 18014398509481983 ; 2 uses
  %i.jn = zext i1 %.not21.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.ir, %i.jn      ; 2 uses
  %i.jo = and i64 %i.jm, 9218868437227405311
  %.not22.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not202 = select i1 %.not22.i, i1 true, i1 %.not21.i
  %spec.select189 = select i1 %.not202, i64 0, i64 %i.jo
  %spec.select190 = select i1 %.not22.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit

_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit: ; preds = %bb.bb, %bb.az, %bb.aw, %bb.av, %bb.ba
  %.sroa.0130.2 = phi i64 [ 0, %bb.az ], [ 0, %bb.av ], [ 0, %bb.aw ], [ %i.iz, %bb.ba ], [ %spec.select189, %bb.bb ]
  %.sroa.19.1 = phi i32 [ 0, %bb.az ], [ 0, %bb.av ], [ 2047, %bb.aw ], [ %i.jb, %bb.ba ], [ %spec.select190, %bb.bb ]
  %.not.i117 = icmp ne i64 %.sroa.0138.2, %.sroa.0130.2
  %i.jp = icmp ne i32 %.sroa.19144.1, %.sroa.19.1
  %i.jq = select i1 %.not.i117, i1 true, i1 %i.jp
  br i1 %i.jq, label %bb.bc, label %.thread168

bb.bc:                                            ; preds = %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit
  %i.jr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8151.i, i1 true) ; 2 uses
  %i.js = trunc nuw nsw i64 %i.jr to i32
  %i.jt = shl i64 %.8151.i, %i.jr
  %i.ju = trunc i64 %.6139.i to i32               ; 4 uses
  %i.jv = shl i32 %i.ju, 1                        ; 2 uses
  %i.jw = add i32 %i.jv, 684
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 16, !tbaa !24
  %i.ka = zext i64 %i.jt to i128                  ; 2 uses
  %i.kb = zext i64 %i.jz to i128
  %i.kc = mul nuw i128 %i.kb, %i.ka               ; 2 uses
  %i.kd = lshr i128 %i.kc, 64
  %i.ke = trunc nuw i128 %i.kd to i64             ; 3 uses
  %i.kf = and i64 %i.ke, 511
  %i.kg = icmp eq i64 %i.kf, 511
  br i1 %i.kg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kh = trunc i128 %i.kc to i64
  %i.ki = add i32 %i.jv, 685
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr @_ZN5boost8charconv6detail10fast_float15powers_templateIvE17power_of_five_128E, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !24
  %16 = zext i64 %i.kl to i128
  %17 = mul nuw i128 %16, %i.ka
  %18 = lshr i128 %17, 64
  %19 = trunc nuw i128 %18 to i64
  %i.km = xor i64 %19, -1
  %20 = icmp ult i64 %i.km, %i.kh
  %i.kn = zext i1 %20 to i64
  %spec.select.i99 = add nuw i64 %i.kn, %i.ke
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %spec.select.i99.pn = phi i64 [ %spec.select.i99, %bb.bd ], [ %i.ke, %bb.bc ] ; 2 uses
  %i.ko = lshr i64 %spec.select.i99.pn, 63        ; 2 uses
  %i.kp = trunc nuw nsw i64 %i.ko to i32
  %i.kq = xor i64 %i.ko, 1
  %i.kr = shl i64 %spec.select.i99.pn, %i.kq      ; 2 uses
  %i.ks = mul nsw i32 %i.ju, 217706
  %i.kt = ashr i32 %i.ks, 16
  %reass.sub.neg = sub nsw i32 %i.kp, %i.js
  %i.ku = add nsw i32 %reass.sub.neg, %i.kt       ; 3 uses
  %i.kv = add nsw i32 %i.ku, -31693
  %i.kw = icmp slt i32 %i.ku, 31693
  br i1 %i.kw, label %bb.bf, label %.thread168

bb.bf:                                            ; preds = %bb.be
  %i.kx = icmp ugt i64 %.8151.i, 9999
  br i1 %i.kx, label %.lr.ph.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %.lr.ph.i, %bb.bf
  %.011.i.lcssa.i = phi i64 [ %.8151.i, %bb.bf ], [ %i.kz, %.lr.ph.i ] ; 3 uses
  %.0.i.lcssa.i = phi i32 [ %i.ju, %bb.bf ], [ %i.la, %.lr.ph.i ] ; 2 uses
  %i.ky = icmp samesign ugt i64 %.011.i.lcssa.i, 99
  br i1 %i.ky, label %.lr.ph24.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.bf, %.lr.ph.i
  %.0.i20.i = phi i32 [ %i.la, %.lr.ph.i ], [ %i.ju, %bb.bf ]
  %.011.i19.i = phi i64 [ %i.kz, %.lr.ph.i ], [ %.8151.i, %bb.bf ] ; 2 uses
  %i.kz = udiv i64 %.011.i19.i, 10000             ; 2 uses
  %i.la = add nsw i32 %.0.i20.i, 4                ; 2 uses
  %i.lb = icmp ugt i64 %.011.i19.i, 99999999
  br i1 %i.lb, label %.lr.ph.i, label %.preheader18.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph24.i, %.preheader18.i
  %.112.i.lcssa.i = phi i64 [ %.011.i.lcssa.i, %.preheader18.i ], [ %i.ld, %.lr.ph24.i ] ; 2 uses
  %.1.i.lcssa.i = phi i32 [ %.0.i.lcssa.i, %.preheader18.i ], [ %i.le, %.lr.ph24.i ] ; 2 uses
  %i.lc = icmp samesign ugt i64 %.112.i.lcssa.i, 9
  br i1 %i.lc, label %.lr.ph29.i, label %_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i

.lr.ph24.i:                                       ; preds = %.preheader18.i, %.lr.ph24.i
  %.1.i23.i = phi i32 [ %i.le, %.lr.ph24.i ], [ %.0.i.lcssa.i, %.preheader18.i ]
  %.112.i22.i = phi i64 [ %i.ld, %.lr.ph24.i ], [ %.011.i.lcssa.i, %.preheader18.i ] ; 2 uses
  %i.ld = udiv i64 %.112.i22.i, 100               ; 2 uses
  %i.le = add nsw i32 %.1.i23.i, 2                ; 2 uses
  %i.lf = icmp samesign ugt i64 %.112.i22.i, 9999
  br i1 %i.lf, label %.lr.ph24.i, label %.preheader.i, !llvm.loop !8

.lr.ph29.i:                                       ; preds = %.preheader.i, %.lr.ph29.i
  %.2.i28.i = phi i32 [ %i.lh, %.lr.ph29.i ], [ %.1.i.lcssa.i, %.preheader.i ]
  %.213.i27.i = phi i64 [ %i.lg, %.lr.ph29.i ], [ %.112.i.lcssa.i, %.preheader.i ] ; 2 uses
  %i.lg = udiv i64 %.213.i27.i, 10
  %i.lh = add nsw i32 %.2.i28.i, 1                ; 2 uses
  %i.li = icmp samesign ugt i64 %.213.i27.i, 99
  br i1 %i.li, label %.lr.ph29.i, label %_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i, !llvm.loop !9

_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i: ; preds = %.lr.ph29.i, %.preheader.i
  %.2.i.lcssa.i = phi i32 [ %.1.i.lcssa.i, %.preheader.i ], [ %i.lh, %.lr.ph29.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %4, i8 0, i64 504, i1 false)
  call void @_ZN5boost8charconv6detail10fast_float14parse_mantissaIcEEvRNS2_6bigintERNS2_22parsed_number_string_tIT_EEmRm(ptr noundef nonnull align 8 dereferenceable(504) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef 769, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #13
  %i.lj = add nsw i32 %.2.i.lcssa.i, 1
  %i.lk = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = sub i32 %i.lj, %i.ll                    ; 3 uses
  %i.ln = icmp sgt i32 %i.lm, -1
  br i1 %i.ln, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i
  %i.lo = call { i64, i32 } @_ZN5boost8charconv6detail10fast_float19positive_digit_compIdEENS2_17adjusted_mantissaERNS2_6bigintEi(ptr noundef nonnull align 8 dereferenceable(504) %4, i32 noundef %i.lm) #13
  br label %_ZN5boost8charconv6detail10fast_float10digit_compIdcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit

bb.bh:                                            ; preds = %_ZN5boost8charconv6detail10fast_float19scientific_exponentIcEEiRNS2_22parsed_number_string_tIT_EE.exit.i
  %i.lp = add nsw i32 %i.ku, 1075
  %i.lq = call { i64, i32 } @_ZN5boost8charconv6detail10fast_float19negative_digit_compIdEENS2_17adjusted_mantissaERNS2_6bigintES4_i(ptr noundef nonnull align 8 dereferenceable(504) %4, i64 %i.kr, i32 %i.lp, i32 noundef %i.lm) #13
  br label %_ZN5boost8charconv6detail10fast_float10digit_compIdcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit

_ZN5boost8charconv6detail10fast_float10digit_compIdcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit: ; preds = %bb.bg, %bb.bh
  %.pn.i118 = phi { i64, i32 } [ %i.lo, %bb.bg ], [ %i.lq, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.fca.0.extract = extractvalue { i64, i32 } %.pn.i118, 0
  %.fca.1.extract = extractvalue { i64, i32 } %.pn.i118, 1
  %.pre = load i8, ptr %i.i, align 8, !tbaa !45, !range !25
  %.pre275 = load i64, ptr %i.fg, align 8, !tbaa !51
  br label %.thread168

.thread168:                                       ; preds = %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit, %bb.be, %_ZN5boost8charconv6detail10fast_float10digit_compIdcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit
  %i.lr = phi i64 [ %.pre275, %_ZN5boost8charconv6detail10fast_float10digit_compIdcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit ], [ %.8151.i, %bb.be ], [ %.8151.i, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit ], [ %.8151.i, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98 ]
  %i.ls = phi i8 [ %.pre, %_ZN5boost8charconv6detail10fast_float10digit_compIdcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit ], [ %i.j, %bb.be ], [ %i.j, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit ], [ %i.j, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98 ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract, %_ZN5boost8charconv6detail10fast_float10digit_compIdcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit ], [ %i.kv, %bb.be ], [ %.sroa.19144.1, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit ], [ %.sroa.19144.1, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98 ] ; 3 uses
  %.sroa.0119.1 = phi i64 [ %.fca.0.extract, %_ZN5boost8charconv6detail10fast_float10digit_compIdcEENS2_17adjusted_mantissaERNS2_22parsed_number_string_tIT0_EES4_.exit ], [ %i.kr, %bb.be ], [ %.sroa.0138.2, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit ], [ %.sroa.0138.2, %_ZN5boost8charconv6detail10fast_float13compute_floatINS2_13binary_formatIdEEEENS2_17adjusted_mantissaElm.exit98 ] ; 2 uses
  %i.lt = zext nneg i8 %i.ls to i64
  %i.lu = zext i32 %.sroa.9.1 to i64
  %i.lv = shl i64 %i.lu, 52
  %i.lw = shl nuw i64 %i.lt, 63
  %i.lx = or i64 %i.lv, %i.lw
  %i.ly = or i64 %i.lx, %.sroa.0119.1
  store i64 %i.ly, ptr %2, align 8
  %i.lz = icmp ne i64 %i.lr, 0
  %i.ma = icmp eq i64 %.sroa.0119.1, 0
  %or.cond8 = select i1 %i.lz, i1 %i.ma, i1 false
  %i.mb = icmp eq i32 %.sroa.9.1, 0
  %or.cond11 = select i1 %or.cond8, i1 %i.mb, i1 false
  %i.mc = icmp eq i32 %.sroa.9.1, 2047
  %or.cond186 = select i1 %or.cond11, i1 true, i1 %i.mc
  %spec.select = select i1 %or.cond186, i32 34, i32 0
  br label %bb.bi

bb.bi:                                            ; preds = %.thread168, %bb.am, %bb.an, %bb.ag, %bb.ah, %bb.al, %bb.z
  %.sroa.075.0 = phi ptr [ %.9.i, %bb.am ], [ %i.ec, %bb.z ], [ %.9.i, %bb.al ], [ %.9.i, %bb.ag ], [ %.9.i, %bb.ah ], [ %.9.i, %bb.an ], [ %.9.i, %.thread168 ]
  %.sroa.7.0 = phi i32 [ 0, %bb.am ], [ %i.ed, %bb.z ], [ 0, %bb.al ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.an ], [ %spec.select, %.thread168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %bb.bi
  %.sroa.075.1 = phi ptr [ %.sroa.075.0, %bb.bi ], [ %0, %bb.a ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %bb.bi ], [ 22, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.075.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5boost8charconv6detail10fast_float6detail12parse_infnanIdcEENS0_19from_chars_result_tIT0_EEPKS6_S9_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !35
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !35 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35    ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !35    ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, double -qnan, double +qnan
  store double %i.aa, ptr %2, align 8, !tbaa !30
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
end_hunk_2
begin_hunk_3_@_ZN5boost8charconv6detail19from_chars_dispatchEPKcS3_Roi:bb.a
  store i128 %.382.lcssa158.i.i, ptr %2, align 16, !tbaa !32
  br label %_ZN5boost8charconv6detail13from_chars128IoEENS0_19from_chars_result_tIcEEPKcS6_RT_i.exit

_ZN5boost8charconv6detail13from_chars128IoEENS0_19from_chars_result_tIcEEPKcS6_RT_i.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.c, %bb.c, %bb.d, %._crit_edge138.i.i, %._crit_edge138.thread.i.i
  %.sroa.0.3.i.i = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ %.374.lcssa.i.i, %._crit_edge138.i.i ], [ %.374.lcssa159.i.i, %._crit_edge138.thread.i.i ], [ %0, %bb.d ]
  %.sroa.7.3.i.i = phi i32 [ 22, %bb.a ], [ 22, %bb.b ], [ 22, %bb.c ], [ 22, %bb.c ], [ 22, %bb.c ], [ 34, %._crit_edge138.i.i ], [ 0, %._crit_edge138.thread.i.i ], [ 22, %bb.d ]
  %.fca.0.insert.i.i = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i32 } %.fca.0.insert.i.i, i32 %.sroa.7.3.i.i, 1
  ret { ptr, i32 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost8charconv6detail10num_digitsEo(i128 noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ugt i128 %0, 99999999999999999999999999999999999999
  br i1 %i.a, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i128 %0, 9999999999999999999999999999999999999
  br i1 %i.b, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i128 %0, 999999999999999999999999999999999999
  br i1 %i.c, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ugt i128 %0, 99999999999999999999999999999999999
  br i1 %i.d, label %bb.an, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ugt i128 %0, 9999999999999999999999999999999999
  br i1 %i.e, label %bb.an, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ugt i128 %0, 999999999999999999999999999999999
  br i1 %i.f, label %bb.an, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ugt i128 %0, 99999999999999999999999999999999
  br i1 %i.g, label %bb.an, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp samesign ugt i128 %0, 9999999999999999999999999999999
  br i1 %i.h, label %bb.an, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ugt i128 %0, 999999999999999999999999999999
  br i1 %i.i, label %bb.an, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ugt i128 %0, 99999999999999999999999999999
  br i1 %i.j, label %bb.an, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = icmp samesign ugt i128 %0, 9999999999999999999999999999
  br i1 %i.k, label %bb.an, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = icmp samesign ugt i128 %0, 999999999999999999999999999
  br i1 %i.l, label %bb.an, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = icmp samesign ugt i128 %0, 99999999999999999999999999
  br i1 %i.m, label %bb.an, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = icmp samesign ugt i128 %0, 9999999999999999999999999
  br i1 %i.n, label %bb.an, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = icmp samesign ugt i128 %0, 999999999999999999999999
  br i1 %i.o, label %bb.an, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = icmp samesign ugt i128 %0, 99999999999999999999999
  br i1 %i.p, label %bb.an, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = icmp samesign ugt i128 %0, 9999999999999999999999
  br i1 %i.q, label %bb.an, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = icmp samesign ugt i128 %0, 999999999999999999999
  br i1 %i.r, label %bb.an, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = icmp samesign ugt i128 %0, 99999999999999999999
  br i1 %i.s, label %bb.an, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not = icmp samesign ult i128 %0, 10000000000000000000
  br i1 %.not, label %bb.u, label %bb.an

bb.u:                                             ; preds = %bb.t
  %.not39 = icmp samesign ult i128 %0, 1000000000000000000
  br i1 %.not39, label %bb.v, label %bb.an

bb.v:                                             ; preds = %bb.u
  %.not40 = icmp samesign ult i128 %0, 100000000000000000
  br i1 %.not40, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  %.not41 = icmp samesign ult i128 %0, 10000000000000000
  br i1 %.not41, label %bb.x, label %bb.an

bb.x:                                             ; preds = %bb.w
  %.not42 = icmp samesign ult i128 %0, 1000000000000000
  br i1 %.not42, label %bb.y, label %bb.an

bb.y:                                             ; preds = %bb.x
  %.not43 = icmp samesign ult i128 %0, 100000000000000
  br i1 %.not43, label %bb.z, label %bb.an

bb.z:                                             ; preds = %bb.y
  %.not44 = icmp samesign ult i128 %0, 10000000000000
  br i1 %.not44, label %bb.aa, label %bb.an

bb.aa:                                            ; preds = %bb.z
  %.not45 = icmp samesign ult i128 %0, 1000000000000
  br i1 %.not45, label %bb.ab, label %bb.an

bb.ab:                                            ; preds = %bb.aa
  %.not46 = icmp samesign ult i128 %0, 100000000000
  br i1 %.not46, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %bb.ab
  %.not47 = icmp samesign ult i128 %0, 10000000000
  br i1 %.not47, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %.not48 = icmp samesign ult i128 %0, 1000000000
  br i1 %.not48, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %.not49 = icmp samesign ult i128 %0, 100000000
  br i1 %.not49, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %.not50 = icmp samesign ult i128 %0, 10000000
  br i1 %.not50, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %.not51 = icmp samesign ult i128 %0, 1000000
  br i1 %.not51, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %.not52 = icmp samesign ult i128 %0, 100000
  br i1 %.not52, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %.not53 = icmp samesign ult i128 %0, 10000
  br i1 %.not53, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %.not54 = icmp samesign ult i128 %0, 1000
  br i1 %.not54, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %.not55 = icmp samesign ult i128 %0, 100
  br i1 %.not55, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.not56 = icmp samesign ult i128 %0, 10
  br i1 %.not56, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.not57 = icmp ne i128 %0, 0
  %i.t = zext i1 %.not57 to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %i.u = phi i32 [ 39, %bb.a ], [ 38, %bb.b ], [ 37, %bb.c ], [ 36, %bb.d ], [ 35, %bb.e ], [ 34, %bb.f ], [ 33, %bb.g ], [ 32, %bb.h ], [ 31, %bb.i ], [ 30, %bb.j ], [ 29, %bb.k ], [ 28, %bb.l ], [ 27, %bb.m ], [ 26, %bb.n ], [ 25, %bb.o ], [ 24, %bb.p ], [ 23, %bb.q ], [ 22, %bb.r ], [ 21, %bb.s ], [ 20, %bb.t ], [ 19, %bb.u ], [ 18, %bb.v ], [ 17, %bb.w ], [ 16, %bb.x ], [ 15, %bb.y ], [ 14, %bb.z ], [ 13, %bb.aa ], [ 12, %bb.ab ], [ 11, %bb.ac ], [ 10, %bb.ad ], [ 9, %bb.ae ], [ 8, %bb.af ], [ 7, %bb.ag ], [ 6, %bb.ah ], [ 5, %bb.ai ], [ 4, %bb.aj ], [ 3, %bb.ak ], [ %i.t, %bb.am ], [ 2, %bb.al ]
  ret i32 %i.u
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare x86_fp80 @strtold(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = distinct !{!4, !36}
!5 = distinct !{!5, !36}
!6 = distinct !{!6, !36}
!7 = distinct !{!7, !36}
!8 = distinct !{!8, !36}
!9 = distinct !{!9, !36}
!10 = distinct !{!10, !36}
!11 = distinct !{!11, !36}
!12 = distinct !{!12, !36}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"bool", !17, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"long", !17, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!"float", !17, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"double", !17, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"__int128", !17, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"long double", !17, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!17, !17, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{ptr @_ZN5boost8charconv6detail11is_hex_charEc, ptr @_ZN5boost8charconv6detail15is_integer_charEc}
!38 = !{!"llvm.loop.peeled.count", i32 1}
!39 = !{!"any pointer", !17, i64 0}
!40 = !{!"p1 omnipotent char", !39, i64 0}
!41 = !{!"_ZTS5lconv", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !17, i64 80, !17, i64 81, !17, i64 82, !17, i64 83, !17, i64 84, !17, i64 85, !17, i64 86, !17, i64 87, !17, i64 88, !17, i64 89, !17, i64 90, !17, i64 91, !17, i64 92, !17, i64 93}
!42 = !{!41, !40, i64 0}
!43 = !{!"_ZTSN5boost8charconv6detail10fast_float4spanIKcEE", !40, i64 0, !23, i64 8}
!44 = !{!"_ZTSN5boost8charconv6detail10fast_float22parsed_number_string_tIcEE", !23, i64 0, !23, i64 8, !40, i64 16, !21, i64 24, !21, i64 25, !21, i64 26, !43, i64 32, !43, i64 48}
!45 = !{!44, !21, i64 24}
!46 = !{!40, !40, i64 0}
!47 = !{!44, !40, i64 16}
!48 = !{!44, !21, i64 25}
!49 = !{!44, !21, i64 26}
!50 = !{!44, !23, i64 0}
!51 = !{!44, !23, i64 8}
!52 = !{!"short", !17, i64 0}
!53 = !{!"_ZTSN5boost8charconv6detail10fast_float8stackvecILt62EEE", !17, i64 0, !52, i64 496}
!54 = !{!53, !52, i64 496}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = distinct !{!58, !36}
!59 = distinct !{!59, !36, !38}
!60 = distinct !{!60, !36}
!61 = distinct !{!61, !36}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !"_ZN5boost8charconv6detail10fast_float19parse_number_stringIcEENS2_22parsed_number_string_tIT_EEPKS5_S8_NS2_15parse_options_tIS5_EE"}
!64 = distinct !{!64, !63, !"_ZN5boost8charconv6detail10fast_float19parse_number_stringIcEENS2_22parsed_number_string_tIT_EEPKS5_S8_NS2_15parse_options_tIS5_EE: argument 0"}
!65 = !{!64}
!66 = distinct !{!66, !36}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !36}
!69 = distinct !{!69, !36}
!70 = distinct !{!70, !36, !38}
!71 = distinct !{!71, !36}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !36}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = !{!44, !40, i64 32}
!77 = !{!43, !23, i64 8}
!78 = !{!44, !40, i64 48}
!79 = distinct !{!79, !36, !55, !56}
!80 = distinct !{!80, !36, !56, !55}
!81 = distinct !{!81, !36, !55, !56}
!82 = distinct !{!82, !36, !56, !55}
!83 = distinct !{!83, !36, !55, !56}
!84 = distinct !{!84, !36, !56, !55}
!85 = distinct !{!85, !36}
!86 = distinct !{!86, !36, !87}
!87 = !{!"llvm.loop.unswitch.partial.disable"}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !36}
!91 = distinct !{!91, !36}
!92 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36, !38}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !36}
!102 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!103 = !{!"branch_weights", i32 1, i32 4001}
!104 = distinct !{!104, !"_ZN5boost8charconv6detail10fast_float19parse_number_stringIcEENS2_22parsed_number_string_tIT_EEPKS5_S8_NS2_15parse_options_tIS5_EE"}
!105 = distinct !{!105, !104, !"_ZN5boost8charconv6detail10fast_float19parse_number_stringIcEENS2_22parsed_number_string_tIT_EEPKS5_S8_NS2_15parse_options_tIS5_EE: argument 0"}
!106 = !{!105}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36, !55, !56}
!109 = distinct !{!109, !36, !56, !55}
!110 = distinct !{!110, !36, !55, !56}
!111 = distinct !{!111, !36, !56, !55}
!112 = distinct !{!112, !36, !55, !56}
!113 = distinct !{!113, !36, !56, !55}
!114 = distinct !{!114, !36}
!115 = distinct !{!115, !36}
end_hunk_3
