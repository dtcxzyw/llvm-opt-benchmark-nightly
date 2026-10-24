Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_packlibs?download=true
inline.NumInlined: 20
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@unmew:bb.a
bb.t:                                             ; preds = %bb.s
  %i.bg = load i8, ptr %.2341, align 1, !tbaa !8  ; 2 uses
  %i.bh = shl i8 %i.bg, 1
  %i.bi = or disjoint i8 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.2341, i64 1
  br label %doubledl.exit281

doubledl.exit281:                                 ; preds = %.preheader404, %bb.t
  %.15 = phi ptr [ %i.bj, %bb.t ], [ %.2341, %.preheader404 ] ; 5 uses
  %.016.i276 = phi i8 [ %i.bi, %bb.t ], [ %i.bd, %.preheader404 ] ; 3 uses
  %.0.i277 = phi i8 [ %i.bg, %bb.t ], [ %.2349, %.preheader404 ]
  %i.bk = lshr i8 %.0.i277, 7
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = shl i32 %.0176, 1
  %i.bn = or disjoint i32 %i.bm, %i.bl            ; 2 uses
  %i.bo = shl i8 %.016.i276, 1
  %i.bp = and i8 %.016.i276, 127
  %.not.i282 = icmp eq i8 %i.bp, 0
  br i1 %.not.i282, label %bb.u, label %doubledl.exit288

bb.u:                                             ; preds = %doubledl.exit281
  %i.bq = icmp uge ptr %.15, %0
  %.not20.i286 = icmp ult ptr %.15, %i.f
  %or.cond.i287 = select i1 %i.bq, i1 %.not20.i286, i1 false
  br i1 %or.cond.i287, label %bb.v, label %doubledl.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.br = load i8, ptr %.15, align 1, !tbaa !8    ; 2 uses
  %i.bs = shl i8 %i.br, 1
  %i.bt = or disjoint i8 %i.bs, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.15, i64 1
  br label %doubledl.exit288

doubledl.exit288:                                 ; preds = %doubledl.exit281, %bb.v
  %.17 = phi ptr [ %i.bu, %bb.v ], [ %.15, %doubledl.exit281 ] ; 5 uses
  %.016.i283 = phi i8 [ %i.bt, %bb.v ], [ %i.bo, %doubledl.exit281 ] ; 3 uses
  %.0.i284 = phi i8 [ %i.br, %bb.v ], [ %.016.i276, %doubledl.exit281 ]
  %cond395 = icmp sgt i8 %.0.i284, -1
  br i1 %cond395, label %bb.w, label %.preheader404

bb.w:                                             ; preds = %doubledl.exit288
  %i.bv = add i32 %i.bn, %.0                      ; 2 uses
  %.not219 = icmp eq i32 %i.bv, 0
  br i1 %.not219, label %.preheader401, label %bb.ab

.preheader401:                                    ; preds = %bb.w, %doubledl.exit302
  %.3350 = phi i8 [ %.016.i297, %doubledl.exit302 ], [ %.016.i283, %bb.w ] ; 3 uses
  %.3342 = phi ptr [ %.21, %doubledl.exit302 ], [ %.17, %bb.w ] ; 5 uses
  %.1177 = phi i32 [ %i.cg, %doubledl.exit302 ], [ 1, %bb.w ]
  %i.bw = shl i8 %.3350, 1
  %i.bx = and i8 %.3350, 127
  %.not.i289 = icmp eq i8 %i.bx, 0
  br i1 %.not.i289, label %bb.x, label %doubledl.exit295

bb.x:                                             ; preds = %.preheader401
  %i.by = icmp uge ptr %.3342, %0
  %.not20.i293 = icmp ult ptr %.3342, %i.f
  %or.cond.i294 = select i1 %i.by, i1 %.not20.i293, i1 false
  br i1 %or.cond.i294, label %bb.y, label %doubledl.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bz = load i8, ptr %.3342, align 1, !tbaa !8  ; 2 uses
  %i.ca = shl i8 %i.bz, 1
  %i.cb = or disjoint i8 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.3342, i64 1
  br label %doubledl.exit295

doubledl.exit295:                                 ; preds = %.preheader401, %bb.y
  %.19 = phi ptr [ %i.cc, %bb.y ], [ %.3342, %.preheader401 ] ; 5 uses
  %.016.i290 = phi i8 [ %i.cb, %bb.y ], [ %i.bw, %.preheader401 ] ; 3 uses
  %.0.i291 = phi i8 [ %i.bz, %bb.y ], [ %.3350, %.preheader401 ]
  %i.cd = lshr i8 %.0.i291, 7
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = shl i32 %.1177, 1
  %i.cg = or disjoint i32 %i.cf, %i.ce            ; 2 uses
  %i.ch = shl i8 %.016.i290, 1
  %i.ci = and i8 %.016.i290, 127
  %.not.i296 = icmp eq i8 %i.ci, 0
  br i1 %.not.i296, label %bb.z, label %doubledl.exit302

bb.z:                                             ; preds = %doubledl.exit295
  %i.cj = icmp uge ptr %.19, %0
  %.not20.i300 = icmp ult ptr %.19, %i.f
  %or.cond.i301 = select i1 %i.cj, i1 %.not20.i300, i1 false
  br i1 %or.cond.i301, label %bb.aa, label %doubledl.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %.19, align 1, !tbaa !8    ; 2 uses
  %i.cl = shl i8 %i.ck, 1
  %i.cm = or disjoint i8 %i.cl, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.19, i64 1
  br label %doubledl.exit302

doubledl.exit302:                                 ; preds = %doubledl.exit295, %bb.aa
  %.21 = phi ptr [ %i.cn, %bb.aa ], [ %.19, %doubledl.exit295 ] ; 2 uses
  %.016.i297 = phi i8 [ %i.cm, %bb.aa ], [ %i.ch, %doubledl.exit295 ] ; 2 uses
  %.0.i298 = phi i8 [ %i.ck, %bb.aa ], [ %.016.i290, %doubledl.exit295 ]
  %cond396 = icmp sgt i8 %.0.i298, -1
  br i1 %cond396, label %.loopexit402, label %.preheader401

bb.ab:                                            ; preds = %bb.w
  %.not221 = icmp ult ptr %.17, %i.j
  br i1 %.not221, label %bb.ac, label %doubledl.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.co = load i8, ptr %.17, align 1, !tbaa !8
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl i32 %i.bv, 8
  %i.cr = add i32 %i.cq, -256                     ; 3 uses
  %i.cs = or disjoint i32 %i.cr, %i.cp            ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.17, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %doubledl.exit316, %bb.ac
  %.4351 = phi i8 [ %.016.i283, %bb.ac ], [ %.016.i311, %doubledl.exit316 ] ; 3 uses
  %.4343 = phi ptr [ %i.ct, %bb.ac ], [ %.25, %doubledl.exit316 ] ; 5 uses
  %.2178 = phi i32 [ 1, %bb.ac ], [ %i.de, %doubledl.exit316 ]
  %i.cu = shl i8 %.4351, 1
  %i.cv = and i8 %.4351, 127
  %.not.i303 = icmp eq i8 %i.cv, 0
  br i1 %.not.i303, label %bb.ae, label %doubledl.exit309

bb.ae:                                            ; preds = %bb.ad
  %i.cw = icmp uge ptr %.4343, %0
  %.not20.i307 = icmp ult ptr %.4343, %i.f
  %or.cond.i308 = select i1 %i.cw, i1 %.not20.i307, i1 false
  br i1 %or.cond.i308, label %bb.af, label %doubledl.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.cx = load i8, ptr %.4343, align 1, !tbaa !8  ; 2 uses
  %i.cy = shl i8 %i.cx, 1
  %i.cz = or disjoint i8 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %.4343, i64 1
  br label %doubledl.exit309

doubledl.exit309:                                 ; preds = %bb.ad, %bb.af
  %.23 = phi ptr [ %i.da, %bb.af ], [ %.4343, %bb.ad ] ; 5 uses
  %.016.i304 = phi i8 [ %i.cz, %bb.af ], [ %i.cu, %bb.ad ] ; 3 uses
  %.0.i305 = phi i8 [ %i.cx, %bb.af ], [ %.4351, %bb.ad ]
  %i.db = lshr i8 %.0.i305, 7
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = shl i32 %.2178, 1
  %i.de = or disjoint i32 %i.dd, %i.dc            ; 2 uses
  %i.df = shl i8 %.016.i304, 1
  %i.dg = and i8 %.016.i304, 127
  %.not.i310 = icmp eq i8 %i.dg, 0
  br i1 %.not.i310, label %bb.ag, label %doubledl.exit316

bb.ag:                                            ; preds = %doubledl.exit309
  %i.dh = icmp uge ptr %.23, %0
  %.not20.i314 = icmp ult ptr %.23, %i.f
  %or.cond.i315 = select i1 %i.dh, i1 %.not20.i314, i1 false
  br i1 %or.cond.i315, label %bb.ah, label %doubledl.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.di = load i8, ptr %.23, align 1, !tbaa !8    ; 2 uses
  %i.dj = shl i8 %i.di, 1
  %i.dk = or disjoint i8 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.23, i64 1
  br label %doubledl.exit316

doubledl.exit316:                                 ; preds = %doubledl.exit309, %bb.ah
  %.25 = phi ptr [ %i.dl, %bb.ah ], [ %.23, %doubledl.exit309 ] ; 2 uses
  %.016.i311 = phi i8 [ %i.dk, %bb.ah ], [ %i.df, %doubledl.exit309 ] ; 2 uses
  %.0.i312 = phi i8 [ %i.di, %bb.ah ], [ %.016.i304, %doubledl.exit309 ]
  %cond397 = icmp sgt i8 %.0.i312, -1
  br i1 %cond397, label %bb.ai, label %bb.ad

bb.ai:                                            ; preds = %doubledl.exit316
  %i.dm = icmp ugt i32 %i.cr, 31999
  %i.dn = zext i1 %i.dm to i32
  %i.do = icmp ugt i32 %i.cr, 1279
  %i.dp = zext i1 %i.do to i32
  %spec.select = add nuw nsw i32 %i.dp, %i.dn
  %.4 = add i32 %spec.select, %i.de               ; 2 uses
  %i.dq = icmp ult i32 %i.cs, 128
  %i.dr = add i32 %.4, 2
  %.5 = select i1 %i.dq, i32 %i.dr, i32 %.4
  br label %.loopexit402

.loopexit402:                                     ; preds = %bb.m, %doubledl.exit302, %bb.ai, %bb.r
  %.5352 = phi i8 [ %.016.i297, %doubledl.exit302 ], [ %.016.i262, %bb.r ], [ %.016.i311, %bb.ai ], [ %.016.i269, %bb.m ]
  %.5344 = phi ptr [ %.21, %doubledl.exit302 ], [ %i.ba, %bb.r ], [ %.25, %bb.ai ], [ %.13, %bb.m ]
  %.2182 = phi i32 [ %.0173.ph.ph, %doubledl.exit302 ], [ %i.az, %bb.r ], [ %i.cs, %bb.ai ], [ %i.av, %bb.m ] ; 3 uses
  %.7 = phi i32 [ %i.cg, %doubledl.exit302 ], [ %i.bc, %bb.r ], [ %.5, %bb.ai ], [ 1, %bb.m ] ; 10 uses
  %.2175 = phi i32 [ %.0173.ph.ph, %doubledl.exit302 ], [ %i.az, %bb.r ], [ %i.cs, %bb.ai ], [ %.0173.ph.ph, %bb.m ]
  %.1 = phi i32 [ 0, %doubledl.exit302 ], [ 0, %bb.r ], [ 0, %bb.ai ], [ 1, %bb.m ]
  %i.ds = add i32 %.7, -1
  %i.dt = icmp uge i32 %i.ds, %3
  %or.cond240 = select i1 %i.k, i1 true, i1 %i.dt ; 2 uses
  %.not229 = icmp ult ptr %.0170, %1
  %or.cond241 = select i1 %or.cond240, i1 true, i1 %.not229
  br i1 %or.cond241, label %.loopexit409, label %bb.aj

bb.aj:                                            ; preds = %.loopexit402
  %i.du = zext nneg i32 %.7 to i64                ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0170, i64 %i.du ; 2 uses
  %.not230 = icmp ule ptr %i.dv, %i.m             ; 2 uses
  %i.dw = icmp ugt ptr %i.dv, %1                  ; 2 uses
  %or.cond242 = and i1 %.not230, %i.dw
  br i1 %or.cond242, label %bb.ak, label %6

bb.ak:                                            ; preds = %bb.aj
  %i.dx = zext i32 %.2182 to i64
  %i.dy = sub nsw i64 0, %i.dx                    ; 12 uses
  %i.dz = getelementptr inbounds i8, ptr %.0170, i64 %i.dy ; 2 uses
  %.not231 = icmp ult ptr %i.dz, %1
  br i1 %.not231, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.du ; 2 uses
  %.not232 = icmp ule ptr %i.ea, %i.m
  %i.eb = icmp ugt ptr %i.ea, %1
  %or.cond243 = and i1 %.not232, %i.eb
  br i1 %or.cond243, label %iter.check, label %bb.am

iter.check:                                       ; preds = %bb.al
  %min.iters.check = icmp ult i32 %.7, 4
  %i.ec = add i32 %.2182, -1
  %diff.check = icmp ult i32 %i.ec, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check620 = icmp ult i32 %.7, 32
  br i1 %min.iters.check620, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ed = and i64 %i.du, 28
  %n.vec = and i64 %i.du, 2147483616              ; 5 uses
  %i.ee = getelementptr i8, ptr %.0170, i64 %n.vec ; 2 uses
  %i.ef = trunc nuw nsw i64 %n.vec to i32
  %i.eg = sub i32 %.7, %i.ef
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.0170, i64 %index ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %next.gep, i64 %i.dy ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load = load <16 x i8>, ptr %i.eh, align 1, !tbaa !8
  %wide.load621 = load <16 x i8>, ptr %i.ei, align 1, !tbaa !8
  %i.ej = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !8
  store <16 x i8> %wide.load621, ptr %i.ej, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.du
  br i1 %cmp.n, label %.outer.outer.backedge, label %vec.epilog.iter.check

.outer.outer.backedge:                            ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block
  %.0170.ph.ph.be = phi ptr [ %i.ee, %middle.block ], [ %i.el, %vec.epilog.middle.block ], [ %.lcssa671.unr, %.lr.ph.prol.loopexit ], [ %i.gc, %.lr.ph ]
  br label %.outer.outer

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec622 = and i64 %i.du, 2147483644           ; 4 uses
  %i.el = getelementptr i8, ptr %.0170, i64 %n.vec622 ; 2 uses
  %i.em = trunc nuw nsw i64 %n.vec622 to i32
  %i.en = sub i32 %.7, %i.em
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index623 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next626, %vec.epilog.vector.body ] ; 2 uses
  %next.gep624 = getelementptr i8, ptr %.0170, i64 %index623 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %next.gep624, i64 %i.dy
  %wide.load625 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !8
  store <4 x i8> %wide.load625, ptr %next.gep624, align 1, !tbaa !8
  %index.next626 = add nuw i64 %index623, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next626, %n.vec622
  br i1 %i.ep, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n627 = icmp eq i64 %n.vec622, %i.du
  br i1 %cmp.n627, label %.outer.outer.backedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1171462.ph = phi ptr [ %.0170, %iter.check ], [ %i.ee, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ] ; 2 uses
  %.8461.ph = phi i32 [ %.7, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ] ; 4 uses
  %i.eq = add i32 %.8461.ph, -1
  %xtraiter = and i32 %.8461.ph, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.1171462.prol = phi ptr [ %i.eu, %.lr.ph.prol ], [ %.1171462.ph, %.lr.ph.preheader ] ; 3 uses
  %.8461.prol = phi i32 [ %i.er, %.lr.ph.prol ], [ %.8461.ph, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.er = add i32 %.8461.prol, -1                 ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.1171462.prol, i64 %i.dy
  %i.et = load i8, ptr %i.es, align 1, !tbaa !8
  store i8 %i.et, ptr %.1171462.prol, align 1, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %.1171462.prol, i64 1 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !25

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa671.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.eu, %.lr.ph.prol ]
  %.1171462.unr = phi ptr [ %.1171462.ph, %.lr.ph.preheader ], [ %i.eu, %.lr.ph.prol ]
  %.8461.unr = phi i32 [ %.8461.ph, %.lr.ph.preheader ], [ %i.er, %.lr.ph.prol ]
  %i.ev = icmp ult i32 %i.eq, 7
  br i1 %i.ev, label %.outer.outer.backedge, label %.lr.ph

6:                                                ; preds = %bb.aj
  br i1 %.not230, label %bb.am, label %.loopexit409

bb.am:                                            ; preds = %bb.ak, %bb.al, %6
  %spec.select629 = zext i1 %i.dw to i32
  br label %.loopexit409

.loopexit409:                                     ; preds = %.loopexit402, %bb.am, %6
  %7 = phi i32 [ 0, %6 ], [ %spec.select629, %bb.am ], [ 0, %.loopexit402 ]
  %i.ew = zext i32 %.2182 to i64
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = getelementptr inbounds i8, ptr %.0170, i64 %i.ex ; 3 uses
  %.not237 = icmp ult ptr %i.ey, %1
  %or.cond249 = select i1 %or.cond240, i1 true, i1 %.not237
  br i1 %or.cond249, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.loopexit409
  %i.ez = zext nneg i32 %.7 to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez ; 2 uses
  %.not238 = icmp ugt ptr %i.fa, %i.m
  br i1 %.not238, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = icmp ugt ptr %i.fa, %1
  %i.fc = zext i1 %i.fb to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.loopexit409
  %i.fd = phi i32 [ 0, %bb.an ], [ %i.fc, %bb.ao ], [ 0, %.loopexit409 ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, ptr noundef nonnull %1, i32 noundef %3, ptr noundef %.0170, i32 noundef %.7, i32 noundef %7, ptr noundef nonnull %1, i32 noundef %3, ptr noundef %i.ey, i32 noundef %.7, i32 noundef %i.fd) #3
  br label %doubledl.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.1171462 = phi ptr [ %i.gc, %.lr.ph ], [ %.1171462.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %.8461 = phi i32 [ %i.fz, %.lr.ph ], [ %.8461.unr, %.lr.ph.prol.loopexit ]
  %i.fe = getelementptr inbounds i8, ptr %.1171462, i64 %i.dy
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !8
  store i8 %i.ff, ptr %.1171462, align 1, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %.1171462, i64 1 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.dy
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !8
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !8
  %i.fj = getelementptr inbounds nuw i8, ptr %.1171462, i64 2 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.dy
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !8
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %.1171462, i64 3 ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.dy
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !8
  store i8 %i.fo, ptr %i.fm, align 1, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %.1171462, i64 4 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.dy
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !8
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !8
  %i.fs = getelementptr inbounds nuw i8, ptr %.1171462, i64 5 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.dy
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !8
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %.1171462, i64 6 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.dy
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !8
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %.1171462, i64 7 ; 2 uses
  %i.fz = add i32 %.8461, -8                      ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 %i.dy
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !8
  store i8 %i.gb, ptr %i.fy, align 1, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %.1171462, i64 8 ; 2 uses
  %.not239.7 = icmp eq i32 %i.fz, 0
  br i1 %.not239.7, label %.outer.outer.backedge, label %.lr.ph, !llvm.loop !26

bb.aq:                                            ; preds = %doubledl.exit
  %i.gd = icmp uge ptr %.0170, %1
  %.not215 = icmp ult ptr %.0170, %i.h
  %or.cond251 = select i1 %i.gd, i1 %.not215, i1 false
  br i1 %or.cond251, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ge = icmp uge ptr %.7345, %0
  %.not216 = icmp ult ptr %.7345, %i.j
  %or.cond253 = select i1 %i.ge, i1 %.not216, i1 false
  br i1 %or.cond253, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull %.0170, ptr noundef nonnull %1, i32 noundef %3, ptr noundef nonnull %i.h, ptr noundef %.7345, ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.j) #3
  br label %doubledl.exit.thread

bb.at:                                            ; preds = %bb.ar
  %i.gf = getelementptr inbounds nuw i8, ptr %.7345, i64 1
  %i.gg = load i8, ptr %.7345, align 1, !tbaa !8
  %i.gh = getelementptr inbounds nuw i8, ptr %.0170, i64 1
  store i8 %i.gg, ptr %.0170, align 1, !tbaa !8
  br label %.outer

bb.au:                                            ; preds = %bb.q
  store ptr %i.ba, ptr %4, align 8, !tbaa !16
  store ptr %.0170, ptr %5, align 8, !tbaa !16
  br label %doubledl.exit.thread

doubledl.exit.thread:                             ; preds = %bb.ab, %bb.p, %bb.i, %bb.f, %bb.c, %bb.n, %bb.u, %bb.s, %bb.ag, %bb.ae, %bb.z, %bb.x, %bb.k, %bb.au, %bb.as, %bb.ap
  %.0183 = phi i32 [ -1, %bb.as ], [ 0, %bb.au ], [ -1, %bb.i ], [ -1, %bb.u ], [ -1, %bb.ap ], [ -1, %bb.k ], [ -1, %bb.z ], [ -1, %bb.ag ], [ -1, %bb.x ], [ -1, %bb.ae ], [ -1, %bb.s ], [ -1, %bb.n ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.p ], [ -1, %bb.ab ]
  ret i32 %.0183
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 4, i32 28}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9, !10, !11}
!19 = distinct !{!19, !9, !10, !11}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !9, !10}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9, !10, !11}
!24 = distinct !{!24, !9, !10, !11}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !9, !10}
end_hunk_0
