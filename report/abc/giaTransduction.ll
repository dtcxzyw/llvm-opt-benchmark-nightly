Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTransduction?download=true
inline.NumInlined: 6915
inline.NumDeleted: 1086
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE11CostCompareEii:bb.a
bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !134 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.dd, %i.dc
  br i1 %.not5.i.i.i, label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit, label %.lr.ph.i.i.i36

.lr.ph.i.i.i36:                                   ; preds = %bb.w, %bb.x
  %.sroa.03.06.i.i.i = phi ptr [ %i.dh, %bb.x ], [ %i.dd, %bb.w ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.df = load i32, ptr %i.de, align 4, !tbaa !164
  %i.dg = icmp eq i32 %i.df, %i.a
  br i1 %i.dg, label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i36
  %i.dh = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !134 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dh, %i.dc
  br i1 %.not.i.i.i, label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit, label %.lr.ph.i.i.i36, !llvm.loop !29

_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit: ; preds = %.lr.ph.i.i.i36, %bb.x, %bb.w
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %i.dd, %bb.w ], [ %.sroa.03.06.i.i.i, %.lr.ph.i.i.i36 ], [ %i.dh, %bb.x ] ; 2 uses
  %.not5.i.i.i37 = icmp eq ptr %.sroa.03.0.lcssa.i.i.i, %i.dc
  br i1 %.not5.i.i.i37, label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit42, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit, %bb.y
  %.sroa.03.06.i.i.i39 = phi ptr [ %i.dl, %bb.y ], [ %.sroa.03.0.lcssa.i.i.i, %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i39, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !164
  %i.dk = icmp eq i32 %i.dj, %i.b
  br i1 %i.dk, label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit42.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i38
  %i.dl = load ptr, ptr %.sroa.03.06.i.i.i39, align 8, !tbaa !134 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.dl, %i.dc
  br i1 %.not.i.i.i40, label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit42.loopexit, label %.lr.ph.i.i.i38, !llvm.loop !29

_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit42.loopexit: ; preds = %bb.y, %.lr.ph.i.i.i38
  %.sroa.03.0.lcssa.i.i.i41.ph = phi ptr [ %i.dc, %bb.y ], [ %.sroa.03.06.i.i.i39, %.lr.ph.i.i.i38 ]
  %i.dm = icmp eq ptr %.sroa.03.0.lcssa.i.i.i41.ph, %i.dc
  br label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit42

bb.z:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %0, align 8, !tbaa !236   ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !163 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.d
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !164 ; 2 uses
  %i.ds = xor i32 %i.dr, %1                       ; 2 uses
  %i.dt = lshr i32 %i.dr, 1                       ; 2 uses
  %i.du = load i32, ptr %i.dn, align 8, !tbaa !309 ; 5 uses
  %i.dv = icmp sgt i32 %i.du, 6
  br i1 %i.dv, label %.preheader.i, label %bb.aa

.preheader.i:                                     ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !310 ; 12 uses
  %.not.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i, label %.preheader.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dz = zext nneg i32 %i.dt to i64
  %i.ea = mul i64 %i.dx, %i.dz
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !244
  %i.ec = getelementptr [8 x i8], ptr %i.eb, i64 %i.ea ; 2 uses
  %min.iters.check260 = icmp ult i64 %i.dx, 4
  br i1 %min.iters.check260, label %scalar.ph259.preheader, label %vector.ph261

vector.ph261:                                     ; preds = %.lr.ph.i
  %n.vec262 = and i64 %i.dx, -4                   ; 3 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next269, %vector.body263 ] ; 2 uses
  %vec.phi265 = phi <2 x i64> [ zeroinitializer, %vector.ph261 ], [ %i.eh, %vector.body263 ]
  %vec.phi266 = phi <2 x i64> [ zeroinitializer, %vector.ph261 ], [ %i.ei, %vector.body263 ]
  %i.ed = getelementptr [8 x i8], ptr %i.ec, i64 %index264 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  %wide.load267 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !315
  %wide.load268 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !315
  %i.ef = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load267)
  %i.eg = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load268)
  %i.eh = add <2 x i64> %i.ef, %vec.phi265        ; 2 uses
  %i.ei = add <2 x i64> %i.eg, %vec.phi266        ; 2 uses
  %index.next269 = add nuw i64 %index264, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next269, %n.vec262
  br i1 %i.ej, label %middle.block270, label %vector.body263, !llvm.loop !1067

middle.block270:                                  ; preds = %vector.body263
  %bin.rdx271 = add <2 x i64> %i.ei, %i.eh
  %i.ek = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx271) ; 2 uses
  %cmp.n272 = icmp eq i64 %i.dx, %n.vec262
  br i1 %cmp.n272, label %.preheader.i44, label %scalar.ph259.preheader

scalar.ph259.preheader:                           ; preds = %.lr.ph.i, %middle.block270
  %.013.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec262, %middle.block270 ]
  %.01012.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.ek, %middle.block270 ]
  br label %scalar.ph259

scalar.ph259:                                     ; preds = %scalar.ph259.preheader, %scalar.ph259
  %.013.i = phi i64 [ %i.ep, %scalar.ph259 ], [ %.013.i.ph, %scalar.ph259.preheader ] ; 2 uses
  %.01012.i = phi i64 [ %i.eo, %scalar.ph259 ], [ %.01012.i.ph, %scalar.ph259.preheader ]
  %i.el = getelementptr [8 x i8], ptr %i.ec, i64 %.013.i
  %i.em = load i64, ptr %i.el, align 8, !tbaa !315
  %i.en = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.em)
  %i.eo = add i64 %i.en, %.01012.i                ; 2 uses
  %i.ep = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ep, %i.dx
  br i1 %exitcond.not.i, label %.preheader.i44, label %scalar.ph259, !llvm.loop !1068

.preheader.i44:                                   ; preds = %scalar.ph259, %middle.block270, %.preheader.i
  %.1.i.ph = phi i64 [ 0, %.preheader.i ], [ %i.ek, %middle.block270 ], [ %i.eo, %scalar.ph259 ] ; 2 uses
  %i.eq = trunc i32 %i.ds to i1
  %i.er = zext nneg i32 %i.du to i64
  %i.es = shl nuw i64 1, %i.er                    ; 4 uses
  %i.et = sub i64 %i.es, %.1.i.ph
  %i.eu = select i1 %i.eq, i64 %i.et, i64 %.1.i.ph ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.k
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !164 ; 4 uses
  %.not.i45 = icmp eq i64 %i.dx, 0
  br i1 %.not.i45, label %_ZNK5NewTt3Man8OneCountEj.exit50, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.preheader.i44
  %i.ex = lshr i32 %i.ew, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.ez = zext nneg i32 %i.ex to i64
  %i.fa = mul i64 %i.dx, %i.ez
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !244
  %i.fc = getelementptr [8 x i8], ptr %i.fb, i64 %i.fa ; 2 uses
  %min.iters.check276 = icmp ult i64 %i.dx, 4
  br i1 %min.iters.check276, label %scalar.ph275.preheader, label %vector.ph277

vector.ph277:                                     ; preds = %.lr.ph.i46
  %n.vec278 = and i64 %i.dx, -4                   ; 3 uses
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next285, %vector.body279 ] ; 2 uses
  %vec.phi281 = phi <2 x i64> [ zeroinitializer, %vector.ph277 ], [ %i.fh, %vector.body279 ]
  %vec.phi282 = phi <2 x i64> [ zeroinitializer, %vector.ph277 ], [ %i.fi, %vector.body279 ]
  %i.fd = getelementptr [8 x i8], ptr %i.fc, i64 %index280 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  %wide.load283 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !315
  %wide.load284 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !315
  %i.ff = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load283)
  %i.fg = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load284)
  %i.fh = add <2 x i64> %i.ff, %vec.phi281        ; 2 uses
  %i.fi = add <2 x i64> %i.fg, %vec.phi282        ; 2 uses
  %index.next285 = add nuw i64 %index280, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next285, %n.vec278
  br i1 %i.fj, label %middle.block286, label %vector.body279, !llvm.loop !1069

middle.block286:                                  ; preds = %vector.body279
  %bin.rdx287 = add <2 x i64> %i.fi, %i.fh
  %i.fk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx287) ; 2 uses
  %cmp.n288 = icmp eq i64 %i.dx, %n.vec278
  br i1 %cmp.n288, label %_ZNK5NewTt3Man8OneCountEj.exit50, label %scalar.ph275.preheader

scalar.ph275.preheader:                           ; preds = %.lr.ph.i46, %middle.block286
  %.013.i47.ph = phi i64 [ 0, %.lr.ph.i46 ], [ %n.vec278, %middle.block286 ]
  %.01012.i48.ph = phi i64 [ 0, %.lr.ph.i46 ], [ %i.fk, %middle.block286 ]
  br label %scalar.ph275

scalar.ph275:                                     ; preds = %scalar.ph275.preheader, %scalar.ph275
  %.013.i47 = phi i64 [ %i.fp, %scalar.ph275 ], [ %.013.i47.ph, %scalar.ph275.preheader ] ; 2 uses
  %.01012.i48 = phi i64 [ %i.fo, %scalar.ph275 ], [ %.01012.i48.ph, %scalar.ph275.preheader ]
  %i.fl = getelementptr [8 x i8], ptr %i.fc, i64 %.013.i47
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !315
  %i.fn = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fm)
  %i.fo = add i64 %i.fn, %.01012.i48              ; 2 uses
  %i.fp = add nuw i64 %.013.i47, 1                ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %i.fp, %i.dx
  br i1 %exitcond.not.i49, label %_ZNK5NewTt3Man8OneCountEj.exit50, label %scalar.ph275, !llvm.loop !1070

bb.aa:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !310 ; 2 uses
  %i.ft = zext nneg i32 %i.dt to i64
  %i.fu = mul i64 %i.fs, %i.ft
  %i.fv = load ptr, ptr %i.fq, align 8, !tbaa !244
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fu
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !315
  %i.fy = sext i32 %i.du to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr @_ZZN5NewTt3Man4onesEiE4ones, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !315
  %i.gb = trunc i32 %i.ds to i1
  %i.gc = zext nneg i32 %i.du to i64
  %i.gd = shl nuw i64 1, %i.gc                    ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.k
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !164 ; 2 uses
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.gi = zext nneg i32 %i.gg to i64
  %i.gj = mul i64 %i.fs, %i.gi
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !244
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gj
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !315
  %i.gn = sext i32 %i.du to i64
  %i.go = getelementptr inbounds [8 x i8], ptr @_ZZN5NewTt3Man4onesEiE4ones, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !315
  %i.gq = and i64 %i.ga, %i.fx
  %i.gr = and i64 %i.gp, %i.gm
  %i.gs = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %i.gt = insertelement <2 x i64> %i.gs, i64 %i.gr, i64 1
  %i.gu = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gt) ; 2 uses
  %i.gv = extractelement <2 x i64> %i.gu, i64 0   ; 2 uses
  %i.gw = sub i64 %i.gd, %i.gv
  %i.gx = select i1 %i.gb, i64 %i.gw, i64 %i.gv
  %i.gy = extractelement <2 x i64> %i.gu, i64 1
  br label %_ZNK5NewTt3Man8OneCountEj.exit50

_ZNK5NewTt3Man8OneCountEj.exit50:                 ; preds = %scalar.ph275, %middle.block286, %.preheader.i44, %bb.aa
  %.pn = phi i32 [ %i.gf, %bb.aa ], [ %i.ew, %.preheader.i44 ], [ %i.ew, %middle.block286 ], [ %i.ew, %scalar.ph275 ]
  %i.gz = phi i64 [ %i.gx, %bb.aa ], [ %i.eu, %.preheader.i44 ], [ %i.eu, %middle.block286 ], [ %i.eu, %scalar.ph275 ]
  %i.ha = phi i64 [ %i.gd, %bb.aa ], [ %i.es, %.preheader.i44 ], [ %i.es, %middle.block286 ], [ %i.es, %scalar.ph275 ]
  %.1.i43 = phi i64 [ %i.gy, %bb.aa ], [ 0, %.preheader.i44 ], [ %i.fk, %middle.block286 ], [ %i.fo, %scalar.ph275 ] ; 2 uses
  %i.hb = xor i32 %.pn, %2
  %i.hc = trunc i32 %i.hb to i1
  %i.hd = sub i64 %i.ha, %.1.i43
  %i.he = select i1 %i.hc, i64 %i.hd, i64 %.1.i43
  %i.hf = icmp ult i64 %i.gz, %i.he
  br label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit42

bb.ab:                                            ; preds = %bb.v
  %i.hg = load ptr, ptr %0, align 8, !tbaa !236   ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !163 ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.d
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !164 ; 4 uses
  %i.hl = lshr i32 %i.hk, 1                       ; 2 uses
  %i.hm = load i32, ptr %i.hg, align 8, !tbaa !309 ; 5 uses
  %i.hn = icmp sgt i32 %i.hm, 6
  br i1 %i.hn, label %.preheader.i52, label %bb.ac

.preheader.i52:                                   ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !310 ; 11 uses
  %.not.i53 = icmp eq i64 %i.hp, 0
  br i1 %.not.i53, label %.preheader.i60.thread, label %.lr.ph.i54

.preheader.i60.thread:                            ; preds = %.preheader.i52
  %i.hq = trunc i32 %i.hk to i1
  %i.hr = zext nneg i32 %i.hm to i64
  %i.hs = shl nuw i64 1, %i.hr                    ; 2 uses
  %i.ht = select i1 %i.hq, i64 %i.hs, i64 0
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.k
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !164
  br label %_ZNK5NewTt3Man8OneCountEj.exit66

.lr.ph.i54:                                       ; preds = %.preheader.i52
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hx = zext nneg i32 %i.hl to i64
  %i.hy = mul i64 %i.hp, %i.hx
  %i.hz = load ptr, ptr %i.hw, align 8, !tbaa !244
  %i.ia = getelementptr [8 x i8], ptr %i.hz, i64 %i.hy ; 2 uses
  %min.iters.check228 = icmp ult i64 %i.hp, 4
  br i1 %min.iters.check228, label %scalar.ph227.preheader, label %vector.ph229

vector.ph229:                                     ; preds = %.lr.ph.i54
  %n.vec230 = and i64 %i.hp, -4                   ; 3 uses
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next237, %vector.body231 ] ; 2 uses
  %vec.phi233 = phi <2 x i64> [ zeroinitializer, %vector.ph229 ], [ %i.if, %vector.body231 ]
  %vec.phi234 = phi <2 x i64> [ zeroinitializer, %vector.ph229 ], [ %i.ig, %vector.body231 ]
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %index232 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 16
  %wide.load235 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !315
  %wide.load236 = load <2 x i64>, ptr %i.ic, align 8, !tbaa !315
  %i.id = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load235)
  %i.ie = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load236)
  %i.if = add <2 x i64> %i.id, %vec.phi233        ; 2 uses
  %i.ig = add <2 x i64> %i.ie, %vec.phi234        ; 2 uses
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.ih, label %middle.block238, label %vector.body231, !llvm.loop !1071

middle.block238:                                  ; preds = %vector.body231
  %bin.rdx239 = add <2 x i64> %i.ig, %i.if
  %i.ii = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx239) ; 2 uses
  %cmp.n240 = icmp eq i64 %i.hp, %n.vec230
  br i1 %cmp.n240, label %.lr.ph.i62, label %scalar.ph227.preheader

scalar.ph227.preheader:                           ; preds = %.lr.ph.i54, %middle.block238
  %.013.i55.ph = phi i64 [ 0, %.lr.ph.i54 ], [ %n.vec230, %middle.block238 ]
  %.01012.i56.ph = phi i64 [ 0, %.lr.ph.i54 ], [ %i.ii, %middle.block238 ]
  br label %scalar.ph227

scalar.ph227:                                     ; preds = %scalar.ph227.preheader, %scalar.ph227
  %.013.i55 = phi i64 [ %i.in, %scalar.ph227 ], [ %.013.i55.ph, %scalar.ph227.preheader ] ; 2 uses
  %.01012.i56 = phi i64 [ %i.im, %scalar.ph227 ], [ %.01012.i56.ph, %scalar.ph227.preheader ]
  %i.ij = getelementptr [8 x i8], ptr %i.ia, i64 %.013.i55
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !315
  %i.il = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ik)
  %i.im = add i64 %i.il, %.01012.i56              ; 2 uses
  %i.in = add nuw i64 %.013.i55, 1                ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %i.in, %i.hp
  br i1 %exitcond.not.i57, label %.lr.ph.i62, label %scalar.ph227, !llvm.loop !1072

.lr.ph.i62:                                       ; preds = %scalar.ph227, %middle.block238
  %.lcssa206 = phi i64 [ %i.ii, %middle.block238 ], [ %i.im, %scalar.ph227 ] ; 2 uses
  %i.io = trunc i32 %i.hk to i1
  %i.ip = zext nneg i32 %i.hm to i64
  %i.iq = shl nuw i64 1, %i.ip                    ; 3 uses
  %i.ir = sub i64 %i.iq, %.lcssa206
  %i.is = select i1 %i.io, i64 %i.ir, i64 %.lcssa206 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.k
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !164 ; 3 uses
  %i.iv = lshr i32 %i.iu, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.ix = zext nneg i32 %i.iv to i64
  %i.iy = mul i64 %i.hp, %i.ix
  %i.iz = load ptr, ptr %i.iw, align 8, !tbaa !244
  %i.ja = getelementptr [8 x i8], ptr %i.iz, i64 %i.iy ; 2 uses
  %min.iters.check244 = icmp ult i64 %i.hp, 4
  br i1 %min.iters.check244, label %scalar.ph243.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %.lr.ph.i62
  %n.vec246 = and i64 %i.hp, -4                   ; 3 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next253, %vector.body247 ] ; 2 uses
  %vec.phi249 = phi <2 x i64> [ zeroinitializer, %vector.ph245 ], [ %i.jf, %vector.body247 ]
  %vec.phi250 = phi <2 x i64> [ zeroinitializer, %vector.ph245 ], [ %i.jg, %vector.body247 ]
  %i.jb = getelementptr [8 x i8], ptr %i.ja, i64 %index248 ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 16
  %wide.load251 = load <2 x i64>, ptr %i.jb, align 8, !tbaa !315
  %wide.load252 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !315
  %i.jd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load251)
  %i.je = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load252)
  %i.jf = add <2 x i64> %i.jd, %vec.phi249        ; 2 uses
  %i.jg = add <2 x i64> %i.je, %vec.phi250        ; 2 uses
  %index.next253 = add nuw i64 %index248, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.jh, label %middle.block254, label %vector.body247, !llvm.loop !1073

middle.block254:                                  ; preds = %vector.body247
  %bin.rdx255 = add <2 x i64> %i.jg, %i.jf
  %i.ji = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx255) ; 2 uses
  %cmp.n256 = icmp eq i64 %i.hp, %n.vec246
  br i1 %cmp.n256, label %_ZNK5NewTt3Man8OneCountEj.exit66, label %scalar.ph243.preheader

scalar.ph243.preheader:                           ; preds = %.lr.ph.i62, %middle.block254
  %.013.i63.ph = phi i64 [ 0, %.lr.ph.i62 ], [ %n.vec246, %middle.block254 ]
  %.01012.i64.ph = phi i64 [ 0, %.lr.ph.i62 ], [ %i.ji, %middle.block254 ]
  br label %scalar.ph243

scalar.ph243:                                     ; preds = %scalar.ph243.preheader, %scalar.ph243
  %.013.i63 = phi i64 [ %i.jn, %scalar.ph243 ], [ %.013.i63.ph, %scalar.ph243.preheader ] ; 2 uses
  %.01012.i64 = phi i64 [ %i.jm, %scalar.ph243 ], [ %.01012.i64.ph, %scalar.ph243.preheader ]
  %i.jj = getelementptr [8 x i8], ptr %i.ja, i64 %.013.i63
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !315
  %i.jl = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jk)
  %i.jm = add i64 %i.jl, %.01012.i64              ; 2 uses
  %i.jn = add nuw i64 %.013.i63, 1                ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %i.jn, %i.hp
  br i1 %exitcond.not.i65, label %_ZNK5NewTt3Man8OneCountEj.exit66, label %scalar.ph243, !llvm.loop !1074

bb.ac:                                            ; preds = %bb.ab
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !310 ; 2 uses
  %i.jr = zext nneg i32 %i.hl to i64
  %i.js = mul i64 %i.jq, %i.jr
  %i.jt = load ptr, ptr %i.jo, align 8, !tbaa !244 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.js
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !315
  %i.jw = sext i32 %i.hm to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr @_ZZN5NewTt3Man4onesEiE4ones, i64 %i.jw
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !315
  %i.jz = trunc i32 %i.hk to i1
  %i.ka = zext nneg i32 %i.hm to i64
  %i.kb = shl nuw i64 1, %i.ka                    ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.k
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !164 ; 2 uses
  %i.ke = lshr i32 %i.kd, 1
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = mul i64 %i.jq, %i.kf
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !315
  %i.kj = insertelement <2 x i64> poison, i64 %i.jy, i64 0
  %i.kk = shufflevector <2 x i64> %i.kj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.kl = insertelement <2 x i64> poison, i64 %i.jv, i64 0
  %i.km = insertelement <2 x i64> %i.kl, i64 %i.ki, i64 1
  %i.kn = and <2 x i64> %i.kk, %i.km
  %i.ko = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.kn) ; 2 uses
  %i.kp = extractelement <2 x i64> %i.ko, i64 0   ; 2 uses
  %i.kq = sub i64 %i.kb, %i.kp
  %i.kr = select i1 %i.jz, i64 %i.kq, i64 %i.kp
  %i.ks = extractelement <2 x i64> %i.ko, i64 1
  br label %_ZNK5NewTt3Man8OneCountEj.exit66

_ZNK5NewTt3Man8OneCountEj.exit66:                 ; preds = %scalar.ph243, %middle.block254, %.preheader.i60.thread, %bb.ac
  %i.kt = phi i32 [ %i.kd, %bb.ac ], [ %i.hv, %.preheader.i60.thread ], [ %i.iu, %middle.block254 ], [ %i.iu, %scalar.ph243 ]
  %i.ku = phi i64 [ %i.kr, %bb.ac ], [ %i.ht, %.preheader.i60.thread ], [ %i.is, %middle.block254 ], [ %i.is, %scalar.ph243 ]
  %i.kv = phi i64 [ %i.kb, %bb.ac ], [ %i.hs, %.preheader.i60.thread ], [ %i.iq, %middle.block254 ], [ %i.iq, %scalar.ph243 ]
  %.1.i59 = phi i64 [ %i.ks, %bb.ac ], [ 0, %.preheader.i60.thread ], [ %i.ji, %middle.block254 ], [ %i.jm, %scalar.ph243 ] ; 2 uses
  %i.kw = trunc i32 %i.kt to i1
  %i.kx = sub i64 %i.kv, %.1.i59
  %i.ky = select i1 %i.kw, i64 %i.kx, i64 %.1.i59
  %i.kz = icmp ult i64 %i.ku, %i.ky
  br label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit42
end_hunk_0
