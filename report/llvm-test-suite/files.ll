inline.NumInlined: 14
begin_hunk_0_@openfiles:bb.a
  %.125.i70 = phi i32 [ %i.em, %.lr.ph27.i69 ], [ %.125.i70.unr, %.lr.ph27.i69.prol.loopexit ]
  %.01524.i71 = phi ptr [ %i.ej, %.lr.ph27.i69 ], [ %.01524.i71.unr, %.lr.ph27.i69.prol.loopexit ] ; 9 uses
  %.11823.i72 = phi ptr [ %i.el, %.lr.ph27.i69 ], [ %.11823.i72.unr, %.lr.ph27.i69.prol.loopexit ] ; 9 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01524.i71, i64 1
  %i.dp = load i8, ptr %.01524.i71, align 1, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %.11823.i72, i64 1
  store i8 %i.dp, ptr %.11823.i72, align 1, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %.01524.i71, i64 2
  %i.ds = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %.11823.i72, i64 2
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %.01524.i71, i64 3
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %.11823.i72, i64 3
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %.01524.i71, i64 4
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %.11823.i72, i64 4
  store i8 %i.dy, ptr %i.dw, align 1, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %.01524.i71, i64 5
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %.11823.i72, i64 5
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !8
  %i.ed = getelementptr inbounds nuw i8, ptr %.01524.i71, i64 6
  %i.ee = load i8, ptr %i.ea, align 1, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %.11823.i72, i64 6
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %.01524.i71, i64 7
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %.11823.i72, i64 7
  store i8 %i.eh, ptr %i.ef, align 1, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %.01524.i71, i64 8
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %.11823.i72, i64 8 ; 2 uses
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !8
  %i.em = add nuw nsw i32 %.125.i70, 8            ; 2 uses
  %exitcond.not.i73.7 = icmp eq i32 %i.em, %.042
  br i1 %exitcond.not.i73.7, label %.preheader.i64, label %.lr.ph27.i69, !llvm.loop !32

bb.k:                                             ; preds = %.preheader.i64, %tryopen.exit
  %i.en = load i32, ptr @definesflag, align 4, !tbaa !4
  %.not59 = icmp eq i32 %i.en, 0
  br i1 %.not59, label %.lr.ph27.i88, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eo = add i32 %.245, 3
  %i.ep = tail call ptr (i32, ...) @mallocate(i32 noundef %i.eo) #12 ; 8 uses
  %i.eq = icmp sgt i32 %.245, 0
  br i1 %i.eq, label %iter.check282, label %.preheader.i76

iter.check282:                                    ; preds = %bb.l
  %i.er = ptrtoaddr ptr %i.ep to i64
  %i.es = zext nneg i32 %.245 to i64              ; 5 uses
  %min.iters.check264 = icmp ult i32 %.245, 4
  %i.et = sub i64 %i.er, %.2224
  %diff.check263 = icmp ult i64 %i.et, 32
  %or.cond415 = select i1 %min.iters.check264, i1 true, i1 %diff.check263
  br i1 %or.cond415, label %.lr.ph27.i81.preheader, label %vector.main.loop.iter.check265

vector.main.loop.iter.check265:                   ; preds = %iter.check282
  %min.iters.check266 = icmp ult i32 %.245, 32
  br i1 %min.iters.check266, label %vec.epilog.ph286, label %vector.ph267

vector.ph267:                                     ; preds = %vector.main.loop.iter.check265
  %n.mod.vf268 = and i64 %i.es, 28
  %n.vec269 = and i64 %i.es, 2147483616           ; 6 uses
  %i.eu = trunc nuw nsw i64 %n.vec269 to i32
  %i.ev = getelementptr i8, ptr %.2, i64 %n.vec269
  %i.ew = getelementptr i8, ptr %i.ep, i64 %n.vec269 ; 2 uses
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph267
  %index271 = phi i64 [ 0, %vector.ph267 ], [ %index.next276, %vector.body270 ] ; 3 uses
  %next.gep272 = getelementptr i8, ptr %.2, i64 %index271 ; 2 uses
  %next.gep273 = getelementptr i8, ptr %i.ep, i64 %index271 ; 2 uses
  %i.ex = getelementptr i8, ptr %next.gep272, i64 16
  %wide.load274 = load <16 x i8>, ptr %next.gep272, align 1, !tbaa !8
  %wide.load275 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !8
  %i.ey = getelementptr i8, ptr %next.gep273, i64 16
  store <16 x i8> %wide.load274, ptr %next.gep273, align 1, !tbaa !8
  store <16 x i8> %wide.load275, ptr %i.ey, align 1, !tbaa !8
  %index.next276 = add nuw i64 %index271, 32      ; 2 uses
  %i.ez = icmp eq i64 %index.next276, %n.vec269
  br i1 %i.ez, label %middle.block277, label %vector.body270, !llvm.loop !33

middle.block277:                                  ; preds = %vector.body270
  %cmp.n278 = icmp eq i64 %n.vec269, %i.es
  br i1 %cmp.n278, label %.preheader.i76, label %vec.epilog.iter.check284

vec.epilog.iter.check284:                         ; preds = %middle.block277
  %min.epilog.iters.check285 = icmp eq i64 %n.mod.vf268, 0
  br i1 %min.epilog.iters.check285, label %.lr.ph27.i81.preheader, label %vec.epilog.ph286, !prof !13

vec.epilog.ph286:                                 ; preds = %vector.main.loop.iter.check265, %vec.epilog.iter.check284
  %vec.epilog.resume.val279 = phi i64 [ %n.vec269, %vec.epilog.iter.check284 ], [ 0, %vector.main.loop.iter.check265 ]
  %n.vec288 = and i64 %i.es, 2147483644           ; 5 uses
  %i.fa = trunc nuw nsw i64 %n.vec288 to i32
  %i.fb = getelementptr i8, ptr %.2, i64 %n.vec288
  %i.fc = getelementptr i8, ptr %i.ep, i64 %n.vec288 ; 2 uses
  br label %vec.epilog.vector.body289

vec.epilog.vector.body289:                        ; preds = %vec.epilog.vector.body289, %vec.epilog.ph286
  %index290 = phi i64 [ %vec.epilog.resume.val279, %vec.epilog.ph286 ], [ %index.next294, %vec.epilog.vector.body289 ] ; 3 uses
  %next.gep291 = getelementptr i8, ptr %.2, i64 %index290
  %next.gep292 = getelementptr i8, ptr %i.ep, i64 %index290
  %wide.load293 = load <4 x i8>, ptr %next.gep291, align 1, !tbaa !8
  store <4 x i8> %wide.load293, ptr %next.gep292, align 1, !tbaa !8
  %index.next294 = add nuw i64 %index290, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next294, %n.vec288
  br i1 %i.fd, label %vec.epilog.middle.block295, label %vec.epilog.vector.body289, !llvm.loop !34

vec.epilog.middle.block295:                       ; preds = %vec.epilog.vector.body289
  %cmp.n296 = icmp eq i64 %n.vec288, %i.es
  br i1 %cmp.n296, label %.preheader.i76, label %.lr.ph27.i81.preheader

.lr.ph27.i81.preheader:                           ; preds = %iter.check282, %vec.epilog.iter.check284, %vec.epilog.middle.block295
  %.125.i82.ph = phi i32 [ 0, %iter.check282 ], [ %i.eu, %vec.epilog.iter.check284 ], [ %i.fa, %vec.epilog.middle.block295 ] ; 4 uses
  %.01524.i83.ph = phi ptr [ %.2, %iter.check282 ], [ %i.ev, %vec.epilog.iter.check284 ], [ %i.fb, %vec.epilog.middle.block295 ] ; 2 uses
  %.11823.i84.ph = phi ptr [ %i.ep, %iter.check282 ], [ %i.ew, %vec.epilog.iter.check284 ], [ %i.fc, %vec.epilog.middle.block295 ] ; 2 uses
  %i.fe = sub i32 %.245, %.125.i82.ph
  %xtraiter427 = and i32 %i.fe, 7                 ; 2 uses
  %lcmp.mod428.not = icmp eq i32 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %.lr.ph27.i81.prol.loopexit, label %.lr.ph27.i81.prol

.lr.ph27.i81.prol:                                ; preds = %.lr.ph27.i81.preheader, %.lr.ph27.i81.prol
  %.125.i82.prol = phi i32 [ %i.fi, %.lr.ph27.i81.prol ], [ %.125.i82.ph, %.lr.ph27.i81.preheader ]
  %.01524.i83.prol = phi ptr [ %i.ff, %.lr.ph27.i81.prol ], [ %.01524.i83.ph, %.lr.ph27.i81.preheader ] ; 2 uses
  %.11823.i84.prol = phi ptr [ %i.fh, %.lr.ph27.i81.prol ], [ %.11823.i84.ph, %.lr.ph27.i81.preheader ] ; 2 uses
  %prol.iter429 = phi i32 [ %prol.iter429.next, %.lr.ph27.i81.prol ], [ 0, %.lr.ph27.i81.preheader ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.01524.i83.prol, i64 1 ; 2 uses
  %i.fg = load i8, ptr %.01524.i83.prol, align 1, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %.11823.i84.prol, i64 1 ; 3 uses
  store i8 %i.fg, ptr %.11823.i84.prol, align 1, !tbaa !8
  %i.fi = add nuw nsw i32 %.125.i82.prol, 1       ; 2 uses
  %prol.iter429.next = add i32 %prol.iter429, 1   ; 2 uses
  %prol.iter429.cmp.not = icmp eq i32 %prol.iter429.next, %xtraiter427
  br i1 %prol.iter429.cmp.not, label %.lr.ph27.i81.prol.loopexit, label %.lr.ph27.i81.prol, !llvm.loop !35

.lr.ph27.i81.prol.loopexit:                       ; preds = %.lr.ph27.i81.prol, %.lr.ph27.i81.preheader
  %.lcssa421.unr = phi ptr [ poison, %.lr.ph27.i81.preheader ], [ %i.fh, %.lr.ph27.i81.prol ]
  %.125.i82.unr = phi i32 [ %.125.i82.ph, %.lr.ph27.i81.preheader ], [ %i.fi, %.lr.ph27.i81.prol ]
  %.01524.i83.unr = phi ptr [ %.01524.i83.ph, %.lr.ph27.i81.preheader ], [ %i.ff, %.lr.ph27.i81.prol ]
  %.11823.i84.unr = phi ptr [ %.11823.i84.ph, %.lr.ph27.i81.preheader ], [ %i.fh, %.lr.ph27.i81.prol ]
  %i.fj = sub i32 %.125.i82.ph, %.245
  %i.fk = icmp ugt i32 %i.fj, -8
  br i1 %i.fk, label %.preheader.i76, label %.lr.ph27.i81

.preheader.i76:                                   ; preds = %.lr.ph27.i81.prol.loopexit, %.lr.ph27.i81, %middle.block277, %vec.epilog.middle.block295, %bb.l
  %.118.lcssa.i77 = phi ptr [ %i.ep, %bb.l ], [ %i.fc, %vec.epilog.middle.block295 ], [ %i.ew, %middle.block277 ], [ %.lcssa421.unr, %.lr.ph27.i81.prol.loopexit ], [ %i.gl, %.lr.ph27.i81 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.118.lcssa.i77, i64 1
  store i8 46, ptr %.118.lcssa.i77, align 1, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %.118.lcssa.i77, i64 2
  store i8 104, ptr %i.fl, align 1, !tbaa !8
  store i8 0, ptr %i.fm, align 1, !tbaa !8
  store ptr %i.ep, ptr @defsfile, align 8, !tbaa !19
  %i.fn = load ptr, ptr @stdout, align 8, !tbaa !27
  store ptr %i.fn, ptr @fdefines, align 8, !tbaa !27
  br label %.lr.ph27.i88

.lr.ph27.i81:                                     ; preds = %.lr.ph27.i81.prol.loopexit, %.lr.ph27.i81
  %.125.i82 = phi i32 [ %i.gm, %.lr.ph27.i81 ], [ %.125.i82.unr, %.lr.ph27.i81.prol.loopexit ]
  %.01524.i83 = phi ptr [ %i.gj, %.lr.ph27.i81 ], [ %.01524.i83.unr, %.lr.ph27.i81.prol.loopexit ] ; 9 uses
  %.11823.i84 = phi ptr [ %i.gl, %.lr.ph27.i81 ], [ %.11823.i84.unr, %.lr.ph27.i81.prol.loopexit ] ; 9 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.01524.i83, i64 1
  %i.fp = load i8, ptr %.01524.i83, align 1, !tbaa !8
  %i.fq = getelementptr inbounds nuw i8, ptr %.11823.i84, i64 1
  store i8 %i.fp, ptr %.11823.i84, align 1, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %.01524.i83, i64 2
  %i.fs = load i8, ptr %i.fo, align 1, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %.11823.i84, i64 2
  store i8 %i.fs, ptr %i.fq, align 1, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %.01524.i83, i64 3
  %i.fv = load i8, ptr %i.fr, align 1, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %.11823.i84, i64 3
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %.01524.i83, i64 4
  %i.fy = load i8, ptr %i.fu, align 1, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %.11823.i84, i64 4
  store i8 %i.fy, ptr %i.fw, align 1, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %.01524.i83, i64 5
  %i.gb = load i8, ptr %i.fx, align 1, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %.11823.i84, i64 5
  store i8 %i.gb, ptr %i.fz, align 1, !tbaa !8
  %i.gd = getelementptr inbounds nuw i8, ptr %.01524.i83, i64 6
  %i.ge = load i8, ptr %i.ga, align 1, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %.11823.i84, i64 6
  store i8 %i.ge, ptr %i.gc, align 1, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %.01524.i83, i64 7
  %i.gh = load i8, ptr %i.gd, align 1, !tbaa !8
  %i.gi = getelementptr inbounds nuw i8, ptr %.11823.i84, i64 7
  store i8 %i.gh, ptr %i.gf, align 1, !tbaa !8
  %i.gj = getelementptr inbounds nuw i8, ptr %.01524.i83, i64 8
  %i.gk = load i8, ptr %i.gg, align 1, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %.11823.i84, i64 8 ; 2 uses
  store i8 %i.gk, ptr %i.gi, align 1, !tbaa !8
  %i.gm = add nuw nsw i32 %.125.i82, 8            ; 2 uses
  %exitcond.not.i85.7 = icmp eq i32 %i.gm, %.245
  br i1 %exitcond.not.i85.7, label %.preheader.i76, label %.lr.ph27.i81, !llvm.loop !36

.lr.ph27.i88:                                     ; preds = %.preheader.i76, %bb.k
  %i.gn = tail call ptr (i32, ...) @mallocate(i32 noundef 18) #12 ; 7 uses
  %0 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store <8 x i8> <i8 47, i8 116, i8 109, i8 112, i8 47, i8 98, i8 46, i8 97>, ptr %i.gn, align 1, !tbaa !8
  %1 = getelementptr inbounds nuw i8, ptr %i.gn, i64 9
  store i8 99, ptr %0, align 1, !tbaa !8
  %2 = getelementptr inbounds nuw i8, ptr %i.gn, i64 10
  store i8 116, ptr %1, align 1, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 11
  store i8 46, ptr %2, align 1, !tbaa !8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.go, i8 88, i64 6, i1 false)
  store i8 0, ptr %i.gp, align 1, !tbaa !8
  %i.gq = tail call ptr @mktemp(ptr noundef nonnull %i.gn) #12
  store ptr %i.gq, ptr @actfile, align 8, !tbaa !19
  %i.gr = load ptr, ptr @stdout, align 8, !tbaa !27
  store ptr %i.gr, ptr @faction, align 8, !tbaa !27
  %i.gs = tail call ptr (i32, ...) @mallocate(i32 noundef 20) #12 ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store <8 x i8> <i8 47, i8 116, i8 109, i8 112, i8 47, i8 98, i8 46, i8 97>, ptr %i.gs, align 1, !tbaa !8
  %4 = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store <4 x i8> <i8 116, i8 116, i8 114, i8 115>, ptr %3, align 1, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 13
  store i8 46, ptr %4, align 1, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gt, i8 88, i64 6, i1 false)
  store i8 0, ptr %i.gu, align 1, !tbaa !8
  %i.gv = tail call ptr @mktemp(ptr noundef nonnull %i.gs) #12
  store ptr %i.gv, ptr @tmpattrsfile, align 8, !tbaa !19
  %i.gw = load ptr, ptr @stdout, align 8, !tbaa !27
  store ptr %i.gw, ptr @fattrs, align 8, !tbaa !27
  %i.gx = tail call ptr (i32, ...) @mallocate(i32 noundef 18) #12 ; 7 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store <8 x i8> <i8 47, i8 116, i8 109, i8 112, i8 47, i8 98, i8 46, i8 116>, ptr %i.gx, align 1, !tbaa !8
  %6 = getelementptr inbounds nuw i8, ptr %i.gx, i64 9
  store i8 97, ptr %5, align 1, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %i.gx, i64 10
  store i8 98, ptr %6, align 1, !tbaa !8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 11
  store i8 46, ptr %7, align 1, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gy, i8 88, i64 6, i1 false)
  store i8 0, ptr %i.gz, align 1, !tbaa !8
  %i.ha = tail call ptr @mktemp(ptr noundef nonnull %i.gx) #12
  store ptr %i.ha, ptr @tmptabfile, align 8, !tbaa !19
  %i.hb = load ptr, ptr @stdout, align 8, !tbaa !27
  store ptr %i.hb, ptr @ftable, align 8, !tbaa !27
  %i.hc = load ptr, ptr @spec_outfile, align 8, !tbaa !19 ; 2 uses
  %.not60 = icmp eq ptr %i.hc, null
  br i1 %.not60, label %bb.m, label %stringappend.exit134

bb.m:                                             ; preds = %.lr.ph27.i88
  %i.hd = add i32 %.245, 3
  %i.he = tail call ptr (i32, ...) @mallocate(i32 noundef %i.hd) #12 ; 8 uses
  %i.hf = icmp sgt i32 %.245, 0
  br i1 %i.hf, label %iter.check320, label %.preheader.i124

iter.check320:                                    ; preds = %bb.m
  %i.hg = ptrtoaddr ptr %i.he to i64
  %i.hh = zext nneg i32 %.245 to i64              ; 5 uses
  %min.iters.check302 = icmp ult i32 %.245, 4
  %i.hi = sub i64 %i.hg, %.2224
  %diff.check301 = icmp ult i64 %i.hi, 32
  %or.cond416 = select i1 %min.iters.check302, i1 true, i1 %diff.check301
  br i1 %or.cond416, label %.lr.ph27.i129.preheader, label %vector.main.loop.iter.check303

vector.main.loop.iter.check303:                   ; preds = %iter.check320
  %min.iters.check304 = icmp ult i32 %.245, 32
  br i1 %min.iters.check304, label %vec.epilog.ph324, label %vector.ph305

vector.ph305:                                     ; preds = %vector.main.loop.iter.check303
  %n.mod.vf306 = and i64 %i.hh, 28
  %n.vec307 = and i64 %i.hh, 2147483616           ; 6 uses
  %i.hj = trunc nuw nsw i64 %n.vec307 to i32
  %i.hk = getelementptr i8, ptr %.2, i64 %n.vec307
  %i.hl = getelementptr i8, ptr %i.he, i64 %n.vec307 ; 2 uses
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph305
  %index309 = phi i64 [ 0, %vector.ph305 ], [ %index.next314, %vector.body308 ] ; 3 uses
  %next.gep310 = getelementptr i8, ptr %.2, i64 %index309 ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.he, i64 %index309 ; 2 uses
  %i.hm = getelementptr i8, ptr %next.gep310, i64 16
  %wide.load312 = load <16 x i8>, ptr %next.gep310, align 1, !tbaa !8
  %wide.load313 = load <16 x i8>, ptr %i.hm, align 1, !tbaa !8
  %i.hn = getelementptr i8, ptr %next.gep311, i64 16
  store <16 x i8> %wide.load312, ptr %next.gep311, align 1, !tbaa !8
  store <16 x i8> %wide.load313, ptr %i.hn, align 1, !tbaa !8
  %index.next314 = add nuw i64 %index309, 32      ; 2 uses
  %i.ho = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.ho, label %middle.block315, label %vector.body308, !llvm.loop !37

middle.block315:                                  ; preds = %vector.body308
  %cmp.n316 = icmp eq i64 %n.vec307, %i.hh
  br i1 %cmp.n316, label %.preheader.i124, label %vec.epilog.iter.check322

vec.epilog.iter.check322:                         ; preds = %middle.block315
  %min.epilog.iters.check323 = icmp eq i64 %n.mod.vf306, 0
  br i1 %min.epilog.iters.check323, label %.lr.ph27.i129.preheader, label %vec.epilog.ph324, !prof !13

vec.epilog.ph324:                                 ; preds = %vector.main.loop.iter.check303, %vec.epilog.iter.check322
  %vec.epilog.resume.val317 = phi i64 [ %n.vec307, %vec.epilog.iter.check322 ], [ 0, %vector.main.loop.iter.check303 ]
  %n.vec326 = and i64 %i.hh, 2147483644           ; 5 uses
  %i.hp = trunc nuw nsw i64 %n.vec326 to i32
  %i.hq = getelementptr i8, ptr %.2, i64 %n.vec326
  %i.hr = getelementptr i8, ptr %i.he, i64 %n.vec326 ; 2 uses
  br label %vec.epilog.vector.body327

vec.epilog.vector.body327:                        ; preds = %vec.epilog.vector.body327, %vec.epilog.ph324
  %index328 = phi i64 [ %vec.epilog.resume.val317, %vec.epilog.ph324 ], [ %index.next332, %vec.epilog.vector.body327 ] ; 3 uses
  %next.gep329 = getelementptr i8, ptr %.2, i64 %index328
  %next.gep330 = getelementptr i8, ptr %i.he, i64 %index328
  %wide.load331 = load <4 x i8>, ptr %next.gep329, align 1, !tbaa !8
  store <4 x i8> %wide.load331, ptr %next.gep330, align 1, !tbaa !8
  %index.next332 = add nuw i64 %index328, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next332, %n.vec326
  br i1 %i.hs, label %vec.epilog.middle.block333, label %vec.epilog.vector.body327, !llvm.loop !38

vec.epilog.middle.block333:                       ; preds = %vec.epilog.vector.body327
  %cmp.n334 = icmp eq i64 %n.vec326, %i.hh
  br i1 %cmp.n334, label %.preheader.i124, label %.lr.ph27.i129.preheader

.lr.ph27.i129.preheader:                          ; preds = %iter.check320, %vec.epilog.iter.check322, %vec.epilog.middle.block333
  %.125.i130.ph = phi i32 [ 0, %iter.check320 ], [ %i.hj, %vec.epilog.iter.check322 ], [ %i.hp, %vec.epilog.middle.block333 ] ; 4 uses
  %.01524.i131.ph = phi ptr [ %.2, %iter.check320 ], [ %i.hk, %vec.epilog.iter.check322 ], [ %i.hq, %vec.epilog.middle.block333 ] ; 2 uses
  %.11823.i132.ph = phi ptr [ %i.he, %iter.check320 ], [ %i.hl, %vec.epilog.iter.check322 ], [ %i.hr, %vec.epilog.middle.block333 ] ; 2 uses
  %i.ht = sub i32 %.245, %.125.i130.ph
  %xtraiter430 = and i32 %i.ht, 7                 ; 2 uses
  %lcmp.mod431.not = icmp eq i32 %xtraiter430, 0
  br i1 %lcmp.mod431.not, label %.lr.ph27.i129.prol.loopexit, label %.lr.ph27.i129.prol

.lr.ph27.i129.prol:                               ; preds = %.lr.ph27.i129.preheader, %.lr.ph27.i129.prol
  %.125.i130.prol = phi i32 [ %i.hx, %.lr.ph27.i129.prol ], [ %.125.i130.ph, %.lr.ph27.i129.preheader ]
  %.01524.i131.prol = phi ptr [ %i.hu, %.lr.ph27.i129.prol ], [ %.01524.i131.ph, %.lr.ph27.i129.preheader ] ; 2 uses
  %.11823.i132.prol = phi ptr [ %i.hw, %.lr.ph27.i129.prol ], [ %.11823.i132.ph, %.lr.ph27.i129.preheader ] ; 2 uses
  %prol.iter432 = phi i32 [ %prol.iter432.next, %.lr.ph27.i129.prol ], [ 0, %.lr.ph27.i129.preheader ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.01524.i131.prol, i64 1 ; 2 uses
  %i.hv = load i8, ptr %.01524.i131.prol, align 1, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %.11823.i132.prol, i64 1 ; 3 uses
  store i8 %i.hv, ptr %.11823.i132.prol, align 1, !tbaa !8
  %i.hx = add nuw nsw i32 %.125.i130.prol, 1      ; 2 uses
  %prol.iter432.next = add i32 %prol.iter432, 1   ; 2 uses
  %prol.iter432.cmp.not = icmp eq i32 %prol.iter432.next, %xtraiter430
  br i1 %prol.iter432.cmp.not, label %.lr.ph27.i129.prol.loopexit, label %.lr.ph27.i129.prol, !llvm.loop !39

.lr.ph27.i129.prol.loopexit:                      ; preds = %.lr.ph27.i129.prol, %.lr.ph27.i129.preheader
  %.lcssa420.unr = phi ptr [ poison, %.lr.ph27.i129.preheader ], [ %i.hw, %.lr.ph27.i129.prol ]
  %.125.i130.unr = phi i32 [ %.125.i130.ph, %.lr.ph27.i129.preheader ], [ %i.hx, %.lr.ph27.i129.prol ]
  %.01524.i131.unr = phi ptr [ %.01524.i131.ph, %.lr.ph27.i129.preheader ], [ %i.hu, %.lr.ph27.i129.prol ]
  %.11823.i132.unr = phi ptr [ %.11823.i132.ph, %.lr.ph27.i129.preheader ], [ %i.hw, %.lr.ph27.i129.prol ]
  %i.hy = sub i32 %.125.i130.ph, %.245
  %i.hz = icmp ugt i32 %i.hy, -8
  br i1 %i.hz, label %.preheader.i124, label %.lr.ph27.i129

.preheader.i124:                                  ; preds = %.lr.ph27.i129.prol.loopexit, %.lr.ph27.i129, %middle.block315, %vec.epilog.middle.block333, %bb.m
  %.118.lcssa.i125 = phi ptr [ %i.he, %bb.m ], [ %i.hr, %vec.epilog.middle.block333 ], [ %i.hl, %middle.block315 ], [ %.lcssa420.unr, %.lr.ph27.i129.prol.loopexit ], [ %i.iz, %.lr.ph27.i129 ] ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.118.lcssa.i125, i64 1
  store i8 46, ptr %.118.lcssa.i125, align 1, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %.118.lcssa.i125, i64 2
  store i8 99, ptr %i.ia, align 1, !tbaa !8
  store i8 0, ptr %i.ib, align 1, !tbaa !8
  br label %stringappend.exit134

.lr.ph27.i129:                                    ; preds = %.lr.ph27.i129.prol.loopexit, %.lr.ph27.i129
  %.125.i130 = phi i32 [ %i.ja, %.lr.ph27.i129 ], [ %.125.i130.unr, %.lr.ph27.i129.prol.loopexit ]
  %.01524.i131 = phi ptr [ %i.ix, %.lr.ph27.i129 ], [ %.01524.i131.unr, %.lr.ph27.i129.prol.loopexit ] ; 9 uses
  %.11823.i132 = phi ptr [ %i.iz, %.lr.ph27.i129 ], [ %.11823.i132.unr, %.lr.ph27.i129.prol.loopexit ] ; 9 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.01524.i131, i64 1
  %i.id = load i8, ptr %.01524.i131, align 1, !tbaa !8
  %i.ie = getelementptr inbounds nuw i8, ptr %.11823.i132, i64 1
  store i8 %i.id, ptr %.11823.i132, align 1, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %.01524.i131, i64 2
  %i.ig = load i8, ptr %i.ic, align 1, !tbaa !8
  %i.ih = getelementptr inbounds nuw i8, ptr %.11823.i132, i64 2
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !8
  %i.ii = getelementptr inbounds nuw i8, ptr %.01524.i131, i64 3
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %.11823.i132, i64 3
  store i8 %i.ij, ptr %i.ih, align 1, !tbaa !8
  %i.il = getelementptr inbounds nuw i8, ptr %.01524.i131, i64 4
  %i.im = load i8, ptr %i.ii, align 1, !tbaa !8
  %i.in = getelementptr inbounds nuw i8, ptr %.11823.i132, i64 4
  store i8 %i.im, ptr %i.ik, align 1, !tbaa !8
  %i.io = getelementptr inbounds nuw i8, ptr %.01524.i131, i64 5
  %i.ip = load i8, ptr %i.il, align 1, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %.11823.i132, i64 5
  store i8 %i.ip, ptr %i.in, align 1, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %.01524.i131, i64 6
  %i.is = load i8, ptr %i.io, align 1, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %.11823.i132, i64 6
  store i8 %i.is, ptr %i.iq, align 1, !tbaa !8
  %i.iu = getelementptr inbounds nuw i8, ptr %.01524.i131, i64 7
  %i.iv = load i8, ptr %i.ir, align 1, !tbaa !8
  %i.iw = getelementptr inbounds nuw i8, ptr %.11823.i132, i64 7
  store i8 %i.iv, ptr %i.it, align 1, !tbaa !8
  %i.ix = getelementptr inbounds nuw i8, ptr %.01524.i131, i64 8
  %i.iy = load i8, ptr %i.iu, align 1, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %.11823.i132, i64 8 ; 2 uses
  store i8 %i.iy, ptr %i.iw, align 1, !tbaa !8
  %i.ja = add nuw nsw i32 %.125.i130, 8           ; 2 uses
  %exitcond.not.i133.7 = icmp eq i32 %i.ja, %.245
  br i1 %exitcond.not.i133.7, label %.preheader.i124, label %.lr.ph27.i129, !llvm.loop !40

stringappend.exit134:                             ; preds = %.preheader.i124, %.lr.ph27.i88
  %storemerge = phi ptr [ %i.hc, %.lr.ph27.i88 ], [ %i.he, %.preheader.i124 ]
  store ptr %storemerge, ptr @tabfile, align 8, !tbaa !19
  %i.jb = add i32 %.042, 9                        ; 2 uses
  %i.jc = tail call ptr (i32, ...) @mallocate(i32 noundef %i.jb) #12 ; 8 uses
  %i.jd = icmp sgt i32 %.042, 0                   ; 2 uses
  br i1 %i.jd, label %iter.check358, label %.preheader.i136

iter.check358:                                    ; preds = %stringappend.exit134
  %i.je = ptrtoaddr ptr %i.jc to i64
  %i.jf = zext nneg i32 %.042 to i64              ; 5 uses
  %min.iters.check340 = icmp ult i32 %.042, 4
  %i.jg = sub i64 %i.je, %.2224
  %diff.check339 = icmp ult i64 %i.jg, 32
  %or.cond417 = select i1 %min.iters.check340, i1 true, i1 %diff.check339
  br i1 %or.cond417, label %.lr.ph27.i141.preheader, label %vector.main.loop.iter.check341

vector.main.loop.iter.check341:                   ; preds = %iter.check358
  %min.iters.check342 = icmp ult i32 %.042, 32
  br i1 %min.iters.check342, label %vec.epilog.ph362, label %vector.ph343

vector.ph343:                                     ; preds = %vector.main.loop.iter.check341
  %n.mod.vf344 = and i64 %i.jf, 28
  %n.vec345 = and i64 %i.jf, 2147483616           ; 6 uses
  %i.jh = trunc nuw nsw i64 %n.vec345 to i32
  %i.ji = getelementptr i8, ptr %.2, i64 %n.vec345
  %i.jj = getelementptr i8, ptr %i.jc, i64 %n.vec345 ; 2 uses
  br label %vector.body346

vector.body346:                                   ; preds = %vector.body346, %vector.ph343
  %index347 = phi i64 [ 0, %vector.ph343 ], [ %index.next352, %vector.body346 ] ; 3 uses
  %next.gep348 = getelementptr i8, ptr %.2, i64 %index347 ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.jc, i64 %index347 ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep348, i64 16
  %wide.load350 = load <16 x i8>, ptr %next.gep348, align 1, !tbaa !8
  %wide.load351 = load <16 x i8>, ptr %i.jk, align 1, !tbaa !8
  %i.jl = getelementptr i8, ptr %next.gep349, i64 16
end_hunk_0
