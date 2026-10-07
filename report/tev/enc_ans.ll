Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ans?download=true
inline.NumInlined: 3179
inline.NumDeleted: 1812
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZZN3jxl24BuildAndEncodeHistogramsEP22JxlMemoryManagerStructRKNS_15HistogramParamsEmRNSt3__16vectorINS6_INS_5TokenENS5_9allocatorIS7_EEEENS8_ISA_EEEEPNS_19EntropyEncodingDataEPNS_9BitWriterENS_9LayerTypeEPNS_6AuxOutEENK3$_0clEv":bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !304, !nonnull !78, !align !196 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !149 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !150 ; 2 uses
  %.not135161 = icmp eq ptr %i.dl, %i.dn
  %i.do = lshr i64 %.sroa.4.0.i, 32
  %i.dp = trunc nuw nsw i64 %i.do to i32          ; 4 uses
  %i.dq = trunc i64 %.sroa.4.0.i to i32           ; 2 uses
  %i.dr = trunc i64 %.sroa.7.8.insert.insert.i to i32 ; 3 uses
  %i.ds = lshr i64 %.sroa.7.8.insert.insert.i, 32
  %i.dt = trunc nuw nsw i64 %i.ds to i32          ; 4 uses
  br i1 %.not135161, label %._crit_edge, label %.lr.ph164

.lr.ph164:                                        ; preds = %_ZNK3jxl15HistogramParams10UintConfigEv.exit
  %i.du = or disjoint i32 %i.dt, %i.dr            ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.dt
  %i.dv = xor i32 %notmask.i, -1                  ; 2 uses
  br label %bb.s

._crit_edge.loopexit:                             ; preds = %.loopexit145
  %.pre = load ptr, ptr %i.de, align 8, !tbaa !305
  %i.dw = icmp ult i64 %.4, 100
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK3jxl15HistogramParams10UintConfigEv.exit
  %i.dx = phi ptr [ %i.df, %_ZNK3jxl15HistogramParams10UintConfigEv.exit ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.050.lcssa = phi i1 [ true, %_ZNK3jxl15HistogramParams10UintConfigEv.exit ], [ %i.dw, %._crit_edge.loopexit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 51
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !197, !range !77, !noundef !78
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %.preheader144, label %.loopexit

.preheader144:                                    ; preds = %._crit_edge
  %i.eb = load ptr, ptr %i.cr, align 8, !tbaa !302, !nonnull !78, !align !196
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !49
  %.not172 = icmp eq i64 %i.ec, 0
  br i1 %.not172, label %.loopexit, label %.preheader143.preheader

.preheader143.preheader:                          ; preds = %.preheader144
  %.pre180.pre = load ptr, ptr %1, align 8, !tbaa !143
  br label %.preheader143

bb.s:                                             ; preds = %.lr.ph164, %.loopexit145
  %.050163 = phi i64 [ 0, %.lr.ph164 ], [ %.4, %.loopexit145 ] ; 6 uses
  %.sroa.0110.0162 = phi ptr [ %i.dl, %.lr.ph164 ], [ %i.kg, %.loopexit145 ] ; 5 uses
  %i.ed = load ptr, ptr %i.ac, align 8, !tbaa !298
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !173
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !138, !range !77, !noundef !78
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.ei = load ptr, ptr %.sroa.0110.0162, align 8, !tbaa !155 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0110.0162, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !156 ; 2 uses
  %.not139156 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not139156, label %.loopexit145, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.t, %_ZN3jxl9Histogram3AddEm.exit
  %.151158 = phi i64 [ %i.el, %_ZN3jxl9Histogram3AddEm.exit ], [ %.050163, %bb.t ]
  %.sroa.0106.0157 = phi ptr [ %i.gv, %_ZN3jxl9Histogram3AddEm.exit ], [ %i.ei, %bb.t ] ; 3 uses
  %i.el = add i64 %.151158, 1                     ; 2 uses
  %i.em = load i32, ptr %.sroa.0106.0157, align 4 ; 2 uses
  %i.en = and i32 %i.em, 1
  %.not63 = icmp eq i32 %i.en, 0                  ; 2 uses
  br i1 %.not63, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph159
  %i.eo = load ptr, ptr %i.ac, align 8, !tbaa !298
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !173
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 84
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph159, %bb.u
  %i.er = phi ptr [ %i.eq, %bb.u ], [ %2, %.lr.ph159 ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0106.0157, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !158 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !160, !noalias !306 ; 2 uses
  %i.ew = icmp ult i32 %i.et, %i.ev
  br i1 %i.ew, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit75, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.et, i1 true) ; 2 uses
  %i.ey = xor i32 %i.ex, 31                       ; 2 uses
  %.neg.i71 = ashr exact i32 -2147483648, %i.ex
  %i.ez = add i32 %.neg.i71, %i.et                ; 2 uses
  %i.fa = load i32, ptr %i.er, align 4, !tbaa !162, !noalias !306
  %i.fb = sub i32 %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !163, !noalias !306 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !161, !noalias !306 ; 3 uses
  %i.fg = add i32 %i.ff, %i.fd
  %i.fh = shl i32 %i.fb, %i.fg
  %i.fi = add i32 %i.fh, %i.ev
  %i.fj = sub i32 %i.ey, %i.fd
  %i.fk = lshr i32 %i.ez, %i.fj
  %i.fl = shl i32 %i.fk, %i.ff
  %i.fm = add i32 %i.fi, %i.fl
  %notmask.i72 = shl nsw i32 -1, %i.ff
  %i.fn = xor i32 %notmask.i72, -1
  %i.fo = and i32 %i.ez, %i.fn
  %i.fp = add i32 %i.fm, %i.fo
  br label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit75

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit75: ; preds = %bb.v, %bb.w
  %.0132 = phi i32 [ %i.fp, %bb.w ], [ %i.et, %bb.v ]
  br i1 %.not63, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit75
  %i.fq = load ptr, ptr %i.ac, align 8, !tbaa !298
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !173
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 76
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !159
  br label %bb.y

bb.y:                                             ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit75, %bb.x
  %i.fu = phi i32 [ %i.ft, %bb.x ], [ 0, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit75 ]
  %i.fv = add i32 %i.fu, %.0132
  %i.fw = lshr i32 %i.em, 1
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = load ptr, ptr %1, align 8, !tbaa !143
  %i.fz = getelementptr inbounds nuw [40 x i8], ptr %i.fy, i64 %i.fx ; 5 uses
  %i.ga = zext i32 %i.fv to i64                   ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !28
  %i.gd = load ptr, ptr %i.fz, align 8, !tbaa !29 ; 5 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 2                 ; 4 uses
  %.not.i79 = icmp ugt i64 %i.gh, %i.ga
  br i1 %.not.i79, label %_ZN3jxl9Histogram3AddEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gi = and i64 %i.ga, 4294967288
  %i.gj = add nuw nsw i64 %i.gi, 8                ; 4 uses
  %i.gk = icmp samesign ult i64 %i.gh, %i.gj
  br i1 %i.gk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gl = sub nuw nsw i64 %i.gj, %i.gh
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(36) %i.fz, i64 noundef %i.gl) #23
  %.pre.i = load ptr, ptr %i.fz, align 8, !tbaa !29
  br label %_ZN3jxl9Histogram3AddEm.exit

bb.ab:                                            ; preds = %bb.z
  %i.gm = icmp samesign ugt i64 %i.gh, %i.gj
  br i1 %i.gm, label %bb.ac, label %_ZN3jxl9Histogram3AddEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gj
  store ptr %i.gn, ptr %i.gb, align 8, !tbaa !28
  br label %_ZN3jxl9Histogram3AddEm.exit

_ZN3jxl9Histogram3AddEm.exit:                     ; preds = %bb.y, %bb.aa, %bb.ab, %bb.ac
  %i.go = phi ptr [ %i.gd, %bb.ac ], [ %i.gd, %bb.ab ], [ %.pre.i, %bb.aa ], [ %i.gd, %bb.y ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.ga ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !23
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !23
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !46
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !46
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0106.0157, i64 8 ; 2 uses
  %.not139 = icmp eq ptr %i.gv, %i.ek
  br i1 %.not139, label %.loopexit145, label %.lr.ph159

bb.ad:                                            ; preds = %bb.s
  %i.gw = load ptr, ptr %i.cr, align 8, !tbaa !302, !nonnull !78, !align !196
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !49
  %i.gy = icmp eq i64 %i.gx, 1
  %i.gz = load ptr, ptr %.sroa.0110.0162, align 8, !tbaa !155 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0110.0162, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !156 ; 3 uses
  %.not138151 = icmp eq ptr %i.gz, %i.hb          ; 2 uses
  br i1 %i.gy, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not138151, label %.loopexit145, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.ae, %_ZN3jxl9Histogram3AddEm.exit82
  %.252153 = phi i64 [ %i.hc, %_ZN3jxl9Histogram3AddEm.exit82 ], [ %.050163, %bb.ae ]
  %.sroa.0100.0152 = phi ptr [ %i.io, %_ZN3jxl9Histogram3AddEm.exit82 ], [ %i.gz, %bb.ae ] ; 2 uses
  %i.hc = add i64 %.252153, 1                     ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0100.0152, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !158 ; 4 uses
  %i.hf = icmp ult i32 %i.he, %i.dp
  br i1 %i.hf, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit70, label %bb.af

bb.af:                                            ; preds = %.lr.ph154
  %i.hg = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.he, i1 true) ; 2 uses
  %i.hh = xor i32 %i.hg, 31                       ; 2 uses
  %.neg.i66 = ashr exact i32 -2147483648, %i.hg
  %i.hi = add i32 %.neg.i66, %i.he                ; 2 uses
  %i.hj = sub nsw i32 %i.hh, %i.dq
  %i.hk = shl i32 %i.hj, %i.du
  %i.hl = add i32 %i.hk, %i.dp
  %i.hm = sub nsw i32 %i.hh, %i.dr
  %i.hn = lshr i32 %i.hi, %i.hm
  %i.ho = shl i32 %i.hn, %i.dt
  %i.hp = add i32 %i.hl, %i.ho
  %i.hq = and i32 %i.hi, %i.dv
  %i.hr = add i32 %i.hp, %i.hq
  br label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit70

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit70: ; preds = %.lr.ph154, %bb.af
  %.0131 = phi i32 [ %i.hr, %bb.af ], [ %i.he, %.lr.ph154 ]
  %i.hs = load ptr, ptr %1, align 8, !tbaa !143   ; 5 uses
  %i.ht = zext i32 %.0131 to i64                  ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !28
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !29 ; 5 uses
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 2                 ; 4 uses
  %.not.i80 = icmp ugt i64 %i.ia, %i.ht
  br i1 %.not.i80, label %_ZN3jxl9Histogram3AddEm.exit82, label %bb.ag

bb.ag:                                            ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit70
  %i.ib = and i64 %i.ht, 4294967288
  %i.ic = add nuw nsw i64 %i.ib, 8                ; 4 uses
  %i.id = icmp samesign ult i64 %i.ia, %i.ic
  br i1 %i.id, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ie = sub nuw nsw i64 %i.ic, %i.ia
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(36) %i.hs, i64 noundef %i.ie) #23
  %.pre.i81 = load ptr, ptr %i.hs, align 8, !tbaa !29
  br label %_ZN3jxl9Histogram3AddEm.exit82

bb.ai:                                            ; preds = %bb.ag
  %i.if = icmp samesign ugt i64 %i.ia, %i.ic
  br i1 %i.if, label %bb.aj, label %_ZN3jxl9Histogram3AddEm.exit82

bb.aj:                                            ; preds = %bb.ai
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ic
  store ptr %i.ig, ptr %i.hu, align 8, !tbaa !28
  br label %_ZN3jxl9Histogram3AddEm.exit82

_ZN3jxl9Histogram3AddEm.exit82:                   ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit70, %bb.ah, %bb.ai, %bb.aj
  %i.ih = phi ptr [ %i.hw, %bb.aj ], [ %i.hw, %bb.ai ], [ %.pre.i81, %bb.ah ], [ %i.hw, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit70 ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ht ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !23
  %i.ik = add nsw i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !23
  %i.il = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !46
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.il, align 8, !tbaa !46
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0100.0152, i64 8 ; 2 uses
  %.not138 = icmp eq ptr %i.io, %i.hb
  br i1 %.not138, label %.loopexit145, label %.lr.ph154

bb.ak:                                            ; preds = %bb.ad
  br i1 %.not138151, label %.loopexit145, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak, %_ZN3jxl9Histogram3AddEm.exit85
  %.3150 = phi i64 [ %i.ip, %_ZN3jxl9Histogram3AddEm.exit85 ], [ %.050163, %bb.ak ]
  %.sroa.095.0149 = phi ptr [ %i.kf, %_ZN3jxl9Histogram3AddEm.exit85 ], [ %i.gz, %bb.ak ] ; 3 uses
  %i.ip = add i64 %.3150, 1                       ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.095.0149, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !158 ; 4 uses
  %i.is = icmp ult i32 %i.ir, %i.dp
  br i1 %i.is, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.it = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ir, i1 true) ; 2 uses
  %i.iu = xor i32 %i.it, 31                       ; 2 uses
  %.neg.i = ashr exact i32 -2147483648, %i.it
  %i.iv = add i32 %.neg.i, %i.ir                  ; 2 uses
  %i.iw = sub nsw i32 %i.iu, %i.dq
  %i.ix = shl i32 %i.iw, %i.du
  %i.iy = add i32 %i.ix, %i.dp
  %i.iz = sub nsw i32 %i.iu, %i.dr
  %i.ja = lshr i32 %i.iv, %i.iz
  %i.jb = shl i32 %i.ja, %i.dt
  %i.jc = add i32 %i.iy, %i.jb
  %i.jd = and i32 %i.iv, %i.dv
  %i.je = add i32 %i.jc, %i.jd
  br label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit: ; preds = %.lr.ph, %bb.al
  %.0130 = phi i32 [ %i.je, %bb.al ], [ %i.ir, %.lr.ph ]
  %i.jf = load i32, ptr %.sroa.095.0149, align 4
  %i.jg = lshr i32 %i.jf, 1
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = load ptr, ptr %1, align 8, !tbaa !143
  %i.jj = getelementptr inbounds nuw [40 x i8], ptr %i.ji, i64 %i.jh ; 5 uses
  %i.jk = zext i32 %.0130 to i64                  ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !28
  %i.jn = load ptr, ptr %i.jj, align 8, !tbaa !29 ; 5 uses
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = ashr exact i64 %i.jq, 2                 ; 4 uses
  %.not.i83 = icmp ugt i64 %i.jr, %i.jk
  br i1 %.not.i83, label %_ZN3jxl9Histogram3AddEm.exit85, label %bb.am

bb.am:                                            ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit
  %i.js = and i64 %i.jk, 4294967288
  %i.jt = add nuw nsw i64 %i.js, 8                ; 4 uses
  %i.ju = icmp samesign ult i64 %i.jr, %i.jt
  br i1 %i.ju, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jv = sub nuw nsw i64 %i.jt, %i.jr
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(36) %i.jj, i64 noundef %i.jv) #23
  %.pre.i84 = load ptr, ptr %i.jj, align 8, !tbaa !29
  br label %_ZN3jxl9Histogram3AddEm.exit85

bb.ao:                                            ; preds = %bb.am
  %i.jw = icmp samesign ugt i64 %i.jr, %i.jt
  br i1 %i.jw, label %bb.ap, label %_ZN3jxl9Histogram3AddEm.exit85

bb.ap:                                            ; preds = %bb.ao
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jt
  store ptr %i.jx, ptr %i.jl, align 8, !tbaa !28
  br label %_ZN3jxl9Histogram3AddEm.exit85

_ZN3jxl9Histogram3AddEm.exit85:                   ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit, %bb.an, %bb.ao, %bb.ap
  %i.jy = phi ptr [ %i.jn, %bb.ap ], [ %i.jn, %bb.ao ], [ %.pre.i84, %bb.an ], [ %i.jn, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.jk ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !23
  %i.kb = add nsw i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !23
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !46
  %i.ke = add i64 %i.kd, 1
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !46
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.095.0149, i64 8 ; 2 uses
  %.not137 = icmp eq ptr %i.kf, %i.hb
  br i1 %.not137, label %.loopexit145, label %.lr.ph

.loopexit145:                                     ; preds = %_ZN3jxl9Histogram3AddEm.exit85, %_ZN3jxl9Histogram3AddEm.exit82, %_ZN3jxl9Histogram3AddEm.exit, %bb.ak, %bb.ae, %bb.t
  %.4 = phi i64 [ %i.hc, %_ZN3jxl9Histogram3AddEm.exit82 ], [ %i.el, %_ZN3jxl9Histogram3AddEm.exit ], [ %.050163, %bb.t ], [ %.050163, %bb.ae ], [ %.050163, %bb.ak ], [ %i.ip, %_ZN3jxl9Histogram3AddEm.exit85 ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0110.0162, i64 24 ; 2 uses
  %.not135 = icmp eq ptr %i.kg, %i.dn
  br i1 %.not135, label %._crit_edge.loopexit, label %bb.s

.preheader143:                                    ; preds = %.preheader143.preheader, %bb.aq
  %.pre180 = phi ptr [ %.pre180186, %bb.aq ], [ %.pre180.pre, %.preheader143.preheader ] ; 2 uses
  %.059167 = phi i64 [ %i.kh, %bb.aq ], [ 0, %.preheader143.preheader ] ; 2 uses
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN3jxl9Histogram3AddEm.exit88
  %i.kh = add nuw i64 %.059167, 1                 ; 2 uses
  %i.ki = load ptr, ptr %i.cr, align 8, !tbaa !302, !nonnull !78, !align !196
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !49
  %i.kk = icmp ult i64 %i.kh, %i.kj
  br i1 %i.kk, label %.preheader143, label %.loopexit.loopexit, !llvm.loop !293

bb.ar:                                            ; preds = %.preheader143, %_ZN3jxl9Histogram3AddEm.exit88
  %.pre180187 = phi ptr [ %.pre180, %.preheader143 ], [ %.pre180186, %_ZN3jxl9Histogram3AddEm.exit88 ] ; 3 uses
  %i.kl = phi ptr [ %.pre180, %.preheader143 ], [ %i.la, %_ZN3jxl9Histogram3AddEm.exit88 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader143 ], [ %indvars.iv.next, %_ZN3jxl9Histogram3AddEm.exit88 ] ; 4 uses
  %i.km = getelementptr inbounds nuw [40 x i8], ptr %i.kl, i64 %.059167 ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !28
  %i.kp = load ptr, ptr %i.km, align 8, !tbaa !29 ; 5 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ashr exact i64 %i.ks, 2                 ; 4 uses
  %.not.i86 = icmp ugt i64 %i.kt, %indvars.iv
  br i1 %.not.i86, label %_ZN3jxl9Histogram3AddEm.exit88, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ku = and i64 %indvars.iv, 248
  %i.kv = add nuw nsw i64 %i.ku, 8                ; 4 uses
  %i.kw = icmp samesign ult i64 %i.kt, %i.kv
  br i1 %i.kw, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kx = sub nuw nsw i64 %i.kv, %i.kt
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(36) %i.km, i64 noundef %i.kx) #23
  %.pre.i87 = load ptr, ptr %i.km, align 8, !tbaa !29
  %.pre179 = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
  br label %_ZN3jxl9Histogram3AddEm.exit88

bb.au:                                            ; preds = %bb.as
  %i.ky = icmp samesign ugt i64 %i.kt, %i.kv
  br i1 %i.ky, label %bb.av, label %_ZN3jxl9Histogram3AddEm.exit88

bb.av:                                            ; preds = %bb.au
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kv
  store ptr %i.kz, ptr %i.kn, align 8, !tbaa !28
  br label %_ZN3jxl9Histogram3AddEm.exit88

_ZN3jxl9Histogram3AddEm.exit88:                   ; preds = %bb.ar, %bb.at, %bb.au, %bb.av
  %.pre180186 = phi ptr [ %.pre180187, %bb.av ], [ %.pre180187, %bb.au ], [ %.pre179, %bb.at ], [ %.pre180187, %bb.ar ] ; 2 uses
  %i.la = phi ptr [ %i.kl, %bb.av ], [ %i.kl, %bb.au ], [ %.pre179, %bb.at ], [ %i.kl, %bb.ar ]
  %i.lb = phi ptr [ %i.kp, %bb.av ], [ %i.kp, %bb.au ], [ %.pre.i87, %bb.at ], [ %i.kp, %bb.ar ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !23
  %i.le = add nsw i32 %i.ld, 1
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !23
  %i.lf = getelementptr inbounds nuw i8, ptr %i.km, i64 24 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !46
  %i.lh = add i64 %i.lg, 1
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.aq, label %bb.ar, !llvm.loop !294

.loopexit.loopexit:                               ; preds = %bb.aq
  %.pre181 = load ptr, ptr %i.de, align 8, !tbaa !305
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader144, %._crit_edge
  %i.li = phi ptr [ %.pre181, %.loopexit.loopexit ], [ %i.dx, %.preheader144 ], [ %i.dx, %._crit_edge ] ; 7 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 49
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !198, !range !77, !noundef !78
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %bb.aw, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre184.pre = load ptr, ptr %i.ac, align 8, !tbaa !298
  br label %bb.ay

bb.aw:                                            ; preds = %.loopexit
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  %i.ln = load i8, ptr %i.lm, align 8, !tbaa !191, !range !77, !noundef !78
  %i.lo = trunc nuw i8 %i.ln to i1
  %or.cond = select i1 %i.lo, i1 true, i1 %.050.lcssa
  br i1 %or.cond, label %.thread134, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lp = load i32, ptr %i.li, align 8, !tbaa !199
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %.thread134, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %i.lr = load ptr, ptr %i.cr, align 8, !tbaa !302, !nonnull !78, !align !196
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !49
  %.not173 = icmp eq i64 %i.ls, 0
  br i1 %.not173, label %.thread134, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader, %.lr.ph170
  %.053169 = phi i64 [ %i.ly, %.lr.ph170 ], [ 0, %.preheader ] ; 2 uses
  %.054168 = phi i8 [ %spec.select65, %.lr.ph170 ], [ 1, %.preheader ]
  %i.lt = load ptr, ptr %1, align 8, !tbaa !143
  %i.lu = getelementptr inbounds nuw [40 x i8], ptr %i.lt, i64 %.053169
  %i.lv = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %i.lu) #21
  %i.lw = fpext float %i.lv to double
  %i.lx = fcmp ult double %i.lw, 1.000000e-05
  %spec.select65 = select i1 %i.lx, i8 %.054168, i8 0 ; 2 uses
  %i.ly = add nuw i64 %.053169, 1                 ; 2 uses
  %i.lz = load ptr, ptr %i.cr, align 8, !tbaa !302, !nonnull !78, !align !196
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !49
  %i.mb = icmp ult i64 %i.ly, %i.ma
  br i1 %i.mb, label %.lr.ph170, label %.thread134.loopexit, !llvm.loop !295

.thread134.loopexit:                              ; preds = %.lr.ph170
  %.pre182.pre = load ptr, ptr %i.de, align 8, !tbaa !305
  br label %.thread134

.thread134:                                       ; preds = %.thread134.loopexit, %.preheader, %bb.aw, %bb.ax
  %.pre182 = phi ptr [ %i.li, %bb.ax ], [ %i.li, %bb.aw ], [ %i.li, %.preheader ], [ %.pre182.pre, %.thread134.loopexit ]
  %.157 = phi i8 [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %.preheader ], [ %spec.select65, %.thread134.loopexit ]
  %i.mc = load ptr, ptr %i.ac, align 8, !tbaa !298 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !173
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  store i8 %.157, ptr %i.me, align 8, !tbaa !76
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit._crit_edge, %.thread134
  %.pre184 = phi ptr [ %i.mc, %.thread134 ], [ %.pre184.pre, %.loopexit._crit_edge ] ; 2 uses
  %i.mf = phi ptr [ %.pre182, %.thread134 ], [ %i.li, %.loopexit._crit_edge ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 52
  %i.mh = load i8, ptr %i.mg, align 4, !tbaa !200, !range !77, !noundef !78
  %i.mi = trunc nuw i8 %i.mh to i1
end_hunk_0
