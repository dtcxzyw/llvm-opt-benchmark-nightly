Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/string?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@php_addslashes_sse42:bb.a
  %i.ch = sext i32 %i.cf to i64                   ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %.3, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !32  ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 0
  %. = select i1 %i.ck, i8 48, i8 %i.cj
  %.2122 = getelementptr inbounds nuw i8, ptr %.1121.lcssa, i64 2 ; 9 uses
  store i8 %., ptr %i.cg, align 1, !tbaa !32
  %i.cl = add nsw i32 %i.cf, 1
  %i.cm = add nuw nsw i32 %i.ap, 1
  %i.cn = lshr i32 %.2129, %i.cm                  ; 2 uses
  %.not145 = icmp eq i32 %i.cn, 0
  br i1 %.not145, label %.preheader153, label %.preheader154, !llvm.loop !236

.preheader153:                                    ; preds = %._crit_edge170
  %.1121.lcssa285.le = ptrtoaddr ptr %.1121.lcssa to i64
  %i.co = icmp slt i32 %i.cf, 15
  br i1 %i.co, label %iter.check, label %._crit_edge174

iter.check:                                       ; preds = %.preheader153
  %i.cp = add nsw i64 %i.ch, 1                    ; 7 uses
  %i.cq = add nuw nsw i32 %i.ap, 2
  %i.cr = add i32 %i.cq, %.0115
  %i.cs = zext i32 %i.cr to i64
  %i.ct = sub nsw i64 17, %i.cs                   ; 7 uses
  %min.iters.check287 = icmp ult i64 %i.ct, 4
  br i1 %min.iters.check287, label %.lr.ph173.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cu = add nuw nsw i32 %i.ap, 2
  %i.cv = add i32 %i.cu, %.0115                   ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = sub nsw i64 16, %i.cw                   ; 2 uses
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = xor i32 %i.cv, -1
  %i.da = icmp ult i32 %i.cz, %i.cy
  %i.db = icmp ugt i64 %i.cx, 4294967295
  %i.dc = or i1 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph173.preheader, label %vector.memcheck288

vector.memcheck288:                               ; preds = %vector.scevcheck
  %i.dd = add i64 %i.ab, %i.ch
  %i.de = sub i64 %.1121.lcssa285.le, %i.dd
  %diff.check289 = icmp ult i64 %i.de, 31
  br i1 %diff.check289, label %.lr.ph173.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck288
  %min.iters.check290 = icmp ult i64 %i.ct, 32
  br i1 %min.iters.check290, label %vec.epilog.ph, label %vector.ph291

vector.ph291:                                     ; preds = %vector.main.loop.iter.check
  %i.df = and i64 %i.ct, 28
  %n.vec292 = and i64 %i.ct, -32                  ; 5 uses
  %i.dg = add nsw i64 %i.cp, %n.vec292
  %i.dh = getelementptr i8, ptr %.2122, i64 %n.vec292 ; 2 uses
  %i.di = getelementptr i8, ptr %.3, i64 %i.cp
  br label %vector.body293

vector.body293:                                   ; preds = %vector.ph291, %vector.body293
  %index294 = phi i64 [ 0, %vector.ph291 ], [ %index.next298, %vector.body293 ] ; 3 uses
  %next.gep295 = getelementptr i8, ptr %.2122, i64 %index294 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 %index294 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load296 = load <16 x i8>, ptr %i.dj, align 1, !tbaa !32
  %wide.load297 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !32
  %i.dl = getelementptr i8, ptr %next.gep295, i64 16
  store <16 x i8> %wide.load296, ptr %next.gep295, align 1, !tbaa !32
  store <16 x i8> %wide.load297, ptr %i.dl, align 1, !tbaa !32
  %index.next298 = add nuw i64 %index294, 32      ; 2 uses
  %i.dm = icmp eq i64 %index.next298, %n.vec292
  br i1 %i.dm, label %middle.block299, label %vector.body293, !llvm.loop !237

middle.block299:                                  ; preds = %vector.body293
  %cmp.n300 = icmp eq i64 %i.ct, %n.vec292
  br i1 %cmp.n300, label %._crit_edge174, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block299
  %min.epilog.iters.check = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check, label %.lr.ph173.preheader, label %vec.epilog.ph, !prof !248

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec292, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec301 = and i64 %i.ct, -4                   ; 4 uses
  %i.dn = add nsw i64 %i.cp, %n.vec301
  %i.do = getelementptr i8, ptr %.2122, i64 %n.vec301 ; 2 uses
  %i.dp = getelementptr i8, ptr %.3, i64 %i.cp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index302 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next305, %vec.epilog.vector.body ] ; 3 uses
  %next.gep303 = getelementptr i8, ptr %.2122, i64 %index302
  %i.dq = getelementptr i8, ptr %i.dp, i64 %index302
  %wide.load304 = load <4 x i8>, ptr %i.dq, align 1, !tbaa !32
  store <4 x i8> %wide.load304, ptr %next.gep303, align 1, !tbaa !32
  %index.next305 = add nuw i64 %index302, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next305, %n.vec301
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !238

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n306 = icmp eq i64 %i.ct, %n.vec301
  br i1 %cmp.n306, label %._crit_edge174, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %iter.check, %vector.scevcheck, %vector.memcheck288, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv219.ph = phi i64 [ %i.cp, %iter.check ], [ %i.cp, %vector.scevcheck ], [ %i.cp, %vector.memcheck288 ], [ %i.dg, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ]
  %.3123171.ph = phi ptr [ %.2122, %iter.check ], [ %.2122, %vector.scevcheck ], [ %.2122, %vector.memcheck288 ], [ %i.dh, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ]
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %.lr.ph173
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %.lr.ph173 ], [ %indvars.iv219.ph, %.lr.ph173.preheader ] ; 2 uses
  %.3123171 = phi ptr [ %i.du, %.lr.ph173 ], [ %.3123171.ph, %.lr.ph173.preheader ] ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.3, i64 %indvars.iv219
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !32
  %i.du = getelementptr inbounds nuw i8, ptr %.3123171, i64 1 ; 2 uses
  store i8 %i.dt, ptr %.3123171, align 1, !tbaa !32
  %indvars.iv.next220 = add nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.dv = and i64 %indvars.iv.next220, 4294967295
  %exitcond222.not = icmp eq i64 %i.dv, 16
  br i1 %exitcond222.not, label %._crit_edge174, label %.lr.ph173, !llvm.loop !239

._crit_edge174:                                   ; preds = %.lr.ph173, %middle.block299, %vec.epilog.middle.block, %.preheader153
  %.3123.lcssa = phi ptr [ %.2122, %.preheader153 ], [ %i.do, %vec.epilog.middle.block ], [ %i.dh, %middle.block299 ], [ %i.du, %.lr.ph173 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %.pre239 = ptrtoint ptr %i.dw to i64
  br label %bb.h

bb.h:                                             ; preds = %.loopexit155, %._crit_edge174
  %.pre-phi = phi i64 [ %i.ab, %.loopexit155 ], [ %.pre239, %._crit_edge174 ]
  %.4124 = phi ptr [ %i.ao, %.loopexit155 ], [ %.3123.lcssa, %._crit_edge174 ] ; 2 uses
  %.4 = phi ptr [ %.3, %.loopexit155 ], [ %i.dw, %._crit_edge174 ] ; 3 uses
  %i.dx = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.dy = sub i64 %i.dx, %.pre-phi
  %i.dz = icmp sgt i64 %i.dy, 15
  br i1 %i.dz, label %.lr.ph189.preheader, label %.preheader

.lr.ph189.preheader:                              ; preds = %bb.h
  %.4311 = ptrtoaddr ptr %.4 to i64               ; 2 uses
  %invariant.op403 = sub i64 1, %.4311
  br label %.lr.ph189

.preheader:                                       ; preds = %.loopexit, %bb.h
  %.5125.lcssa = phi ptr [ %.4124, %bb.h ], [ %.10, %.loopexit ] ; 8 uses
  %.5.lcssa = phi ptr [ %.4, %bb.h ], [ %i.ia, %.loopexit ] ; 7 uses
  %i.ea = icmp ult ptr %.5.lcssa, %i.f
  br i1 %i.ea, label %.lr.ph194.preheader, label %._crit_edge195

.lr.ph194.preheader:                              ; preds = %.preheader
  %.5.lcssa236 = ptrtoaddr ptr %.5.lcssa to i64   ; 2 uses
  %i.eb = add i64 %i.e, %i.a                      ; 2 uses
  %i.ec = add i64 %i.eb, 24
  %i.ed = sub i64 %i.ec, %.5.lcssa236             ; 2 uses
  %scevgep237 = getelementptr i8, ptr %.5.lcssa, i64 %i.ed
  %i.ee = add i64 %i.eb, 23
  %xtraiter382 = and i64 %i.ed, 1
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph194.prol.loopexit, label %.lr.ph194.prol

.lr.ph194.prol:                                   ; preds = %.lr.ph194.preheader
  %i.ef = load i8, ptr %.5.lcssa, align 1, !tbaa !32 ; 2 uses
  switch i8 %i.ef, label %bb.k [
    i8 0, label %bb.j
    i8 39, label %bb.i
    i8 34, label %bb.i
    i8 92, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph194.prol, %.lr.ph194.prol, %.lr.ph194.prol
  %i.eg = getelementptr inbounds nuw i8, ptr %.5125.lcssa, i64 1
  store i8 92, ptr %.5125.lcssa, align 1, !tbaa !32
  %.pre.prol = load i8, ptr %.5.lcssa, align 1, !tbaa !32
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph194.prol
  %i.eh = getelementptr inbounds nuw i8, ptr %.5125.lcssa, i64 1
  store i8 92, ptr %.5125.lcssa, align 1, !tbaa !32
  %i.ei = getelementptr inbounds nuw i8, ptr %.5125.lcssa, i64 2
  store i8 48, ptr %i.eh, align 1, !tbaa !32
  br label %.lr.ph194.prol.loopexit.unr-lcssa

bb.k:                                             ; preds = %bb.i, %.lr.ph194.prol
  %i.ej = phi i8 [ %i.ef, %.lr.ph194.prol ], [ %.pre.prol, %bb.i ]
  %.12.prol = phi ptr [ %.5125.lcssa, %.lr.ph194.prol ], [ %i.eg, %bb.i ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.12.prol, i64 1
  store i8 %i.ej, ptr %.12.prol, align 1, !tbaa !32
  br label %.lr.ph194.prol.loopexit.unr-lcssa

.lr.ph194.prol.loopexit.unr-lcssa:                ; preds = %bb.k, %bb.j
  %.13.prol = phi ptr [ %i.ek, %bb.k ], [ %i.ei, %bb.j ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 1
  br label %.lr.ph194.prol.loopexit

.lr.ph194.prol.loopexit:                          ; preds = %.lr.ph194.prol.loopexit.unr-lcssa, %.lr.ph194.preheader
  %.13.lcssa.unr = phi ptr [ poison, %.lr.ph194.preheader ], [ %.13.prol, %.lr.ph194.prol.loopexit.unr-lcssa ]
  %.6193.unr = phi ptr [ %.5.lcssa, %.lr.ph194.preheader ], [ %i.el, %.lr.ph194.prol.loopexit.unr-lcssa ]
  %.11192.unr = phi ptr [ %.5125.lcssa, %.lr.ph194.preheader ], [ %.13.prol, %.lr.ph194.prol.loopexit.unr-lcssa ]
  %i.em = icmp eq i64 %i.ee, %.5.lcssa236
  br i1 %i.em, label %._crit_edge195, label %.lr.ph194

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph189.preheader ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.5187 = phi ptr [ %.4, %.lr.ph189.preheader ], [ %i.ia, %.loopexit ] ; 7 uses
  %.5125186 = phi ptr [ %.4124, %.lr.ph189.preheader ], [ %.10, %.loopexit ] ; 3 uses
  %1 = mul nsw i64 %indvar, -16
  %.reass404 = add i64 %1, %invariant.op403
  %i.en = load <2 x i64>, ptr %.5187, align 1, !tbaa !32 ; 2 uses
  %i.eo = bitcast <2 x i64> %i.en to <16 x i8>
  %i.ep = tail call <16 x i8> @llvm.x86.sse42.pcmpestrm128(<16 x i8> <i8 39, i8 34, i8 92, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i32 4, <16 x i8> %i.eo, i32 16, i8 0)
  %i.eq = bitcast <16 x i8> %i.ep to <4 x i32>
  %i.er = extractelement <4 x i32> %i.eq, i64 0   ; 2 uses
  %.not146 = icmp eq i32 %i.er, 0
  br i1 %.not146, label %bb.l, label %.preheader152.preheader

.preheader152.preheader:                          ; preds = %.lr.ph189
  %i.es = shl i64 %indvar, 4
  %invariant.op = add i64 %.4311, %i.es
  br label %.preheader152

.preheader152:                                    ; preds = %.preheader152.preheader, %._crit_edge180
  %.3130 = phi i32 [ %i.gq, %._crit_edge180 ], [ %i.er, %.preheader152.preheader ] ; 2 uses
  %.6126 = phi ptr [ %.8, %._crit_edge180 ], [ %.5125186, %.preheader152.preheader ] ; 11 uses
  %.0113 = phi i32 [ %i.go, %._crit_edge180 ], [ 0, %.preheader152.preheader ] ; 4 uses
  %.6126345 = ptrtoaddr ptr %.6126 to i64
  %i.et = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.3130, i1 true) ; 7 uses
  %.not198 = icmp eq i32 %i.et, 0
  br i1 %.not198, label %._crit_edge180, label %.lr.ph179.preheader

.lr.ph179.preheader:                              ; preds = %.preheader152
  %i.eu = sext i32 %.0113 to i64                  ; 2 uses
  %wide.trip.count227 = zext nneg i32 %i.et to i64 ; 5 uses
  %invariant.gep263 = getelementptr i8, ptr %.5187, i64 %i.eu ; 15 uses
  %min.iters.check348 = icmp samesign ult i32 %i.et, 8
  br i1 %min.iters.check348, label %.lr.ph179.preheader361, label %vector.memcheck344

vector.memcheck344:                               ; preds = %.lr.ph179.preheader
  %.reass = add i64 %i.eu, %invariant.op
  %i.ev = sub i64 %.reass, %.6126345
  %diff.check346 = icmp ugt i64 %i.ev, -8
  br i1 %diff.check346, label %.lr.ph179.preheader361, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck344
  %n.vec350 = and i64 %wide.trip.count227, 24     ; 5 uses
  %i.ew = getelementptr i8, ptr %.6126, i64 %n.vec350 ; 2 uses
  %i.ex = getelementptr i8, ptr %invariant.gep263, i64 4
  %wide.load354 = load <4 x i8>, ptr %invariant.gep263, align 1, !tbaa !32
  %wide.load355 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !32
  %i.ey = getelementptr i8, ptr %.6126, i64 4
  store <4 x i8> %wide.load354, ptr %.6126, align 1, !tbaa !32
  store <4 x i8> %wide.load355, ptr %i.ey, align 1, !tbaa !32
  %i.ez = icmp eq i64 %n.vec350, 8
  br i1 %i.ez, label %middle.block357, label %vector.body351.1

vector.body351.1:                                 ; preds = %vector.ph349
  %next.gep353.1 = getelementptr i8, ptr %.6126, i64 8
  %i.fa = getelementptr i8, ptr %invariant.gep263, i64 8
  %i.fb = getelementptr i8, ptr %invariant.gep263, i64 12
  %wide.load354.1 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !32
  %wide.load355.1 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !32
  %i.fc = getelementptr i8, ptr %.6126, i64 12
  store <4 x i8> %wide.load354.1, ptr %next.gep353.1, align 1, !tbaa !32
  store <4 x i8> %wide.load355.1, ptr %i.fc, align 1, !tbaa !32
  %i.fd = icmp eq i64 %n.vec350, 16
  br i1 %i.fd, label %middle.block357, label %vector.body351.2

vector.body351.2:                                 ; preds = %vector.body351.1
  %next.gep353.2 = getelementptr i8, ptr %.6126, i64 16
  %i.fe = getelementptr i8, ptr %invariant.gep263, i64 16
  %i.ff = getelementptr i8, ptr %invariant.gep263, i64 20
  %wide.load354.2 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !32
  %wide.load355.2 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !32
  %i.fg = getelementptr i8, ptr %.6126, i64 20
  store <4 x i8> %wide.load354.2, ptr %next.gep353.2, align 1, !tbaa !32
  store <4 x i8> %wide.load355.2, ptr %i.fg, align 1, !tbaa !32
  br label %middle.block357

middle.block357:                                  ; preds = %vector.body351.2, %vector.body351.1, %vector.ph349
  %cmp.n358 = icmp eq i64 %n.vec350, %wide.trip.count227
  br i1 %cmp.n358, label %._crit_edge180, label %.lr.ph179.preheader361

.lr.ph179.preheader361:                           ; preds = %vector.memcheck344, %.lr.ph179.preheader, %middle.block357
  %indvars.iv224.ph = phi i64 [ 0, %vector.memcheck344 ], [ 0, %.lr.ph179.preheader ], [ %n.vec350, %middle.block357 ] ; 3 uses
  %.7176.ph = phi ptr [ %.6126, %vector.memcheck344 ], [ %.6126, %.lr.ph179.preheader ], [ %i.ew, %middle.block357 ] ; 2 uses
  %xtraiter379 = and i64 %wide.trip.count227, 7   ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %.lr.ph179.prol.loopexit, label %.lr.ph179.prol

.lr.ph179.prol:                                   ; preds = %.lr.ph179.preheader361, %.lr.ph179.prol
  %indvars.iv224.prol = phi i64 [ %indvars.iv.next225.prol, %.lr.ph179.prol ], [ %indvars.iv224.ph, %.lr.ph179.preheader361 ] ; 2 uses
  %.7176.prol = phi ptr [ %i.fi, %.lr.ph179.prol ], [ %.7176.ph, %.lr.ph179.preheader361 ] ; 2 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %.lr.ph179.prol ], [ 0, %.lr.ph179.preheader361 ]
  %gep264.prol = getelementptr i8, ptr %invariant.gep263, i64 %indvars.iv224.prol
  %i.fh = load i8, ptr %gep264.prol, align 1, !tbaa !32
  %i.fi = getelementptr inbounds nuw i8, ptr %.7176.prol, i64 1 ; 3 uses
  store i8 %i.fh, ptr %.7176.prol, align 1, !tbaa !32
  %indvars.iv.next225.prol = add nuw nsw i64 %indvars.iv224.prol, 1 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %.lr.ph179.prol.loopexit, label %.lr.ph179.prol, !llvm.loop !240

.lr.ph179.prol.loopexit:                          ; preds = %.lr.ph179.prol, %.lr.ph179.preheader361
  %.lcssa.unr = phi ptr [ poison, %.lr.ph179.preheader361 ], [ %i.fi, %.lr.ph179.prol ]
  %indvars.iv224.unr = phi i64 [ %indvars.iv224.ph, %.lr.ph179.preheader361 ], [ %indvars.iv.next225.prol, %.lr.ph179.prol ]
  %.7176.unr = phi ptr [ %.7176.ph, %.lr.ph179.preheader361 ], [ %i.fi, %.lr.ph179.prol ]
  %i.fj = sub nsw i64 %indvars.iv224.ph, %wide.trip.count227
  %i.fk = icmp ugt i64 %i.fj, -8
  br i1 %i.fk, label %._crit_edge180, label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.prol.loopexit, %.lr.ph179
  %indvars.iv224 = phi i64 [ %indvars.iv.next225.7, %.lr.ph179 ], [ %indvars.iv224.unr, %.lr.ph179.prol.loopexit ] ; 9 uses
  %.7176 = phi ptr [ %i.gh, %.lr.ph179 ], [ %.7176.unr, %.lr.ph179.prol.loopexit ] ; 9 uses
  %gep264 = getelementptr i8, ptr %invariant.gep263, i64 %indvars.iv224
  %i.fl = load i8, ptr %gep264, align 1, !tbaa !32
  %i.fm = getelementptr inbounds nuw i8, ptr %.7176, i64 1
  store i8 %i.fl, ptr %.7176, align 1, !tbaa !32
  %i.fn = getelementptr i8, ptr %invariant.gep263, i64 %indvars.iv224
  %gep264.1 = getelementptr i8, ptr %i.fn, i64 1
  %i.fo = load i8, ptr %gep264.1, align 1, !tbaa !32
  %i.fp = getelementptr inbounds nuw i8, ptr %.7176, i64 2
  store i8 %i.fo, ptr %i.fm, align 1, !tbaa !32
  %i.fq = getelementptr i8, ptr %invariant.gep263, i64 %indvars.iv224
  %gep264.2 = getelementptr i8, ptr %i.fq, i64 2
  %i.fr = load i8, ptr %gep264.2, align 1, !tbaa !32
  %i.fs = getelementptr inbounds nuw i8, ptr %.7176, i64 3
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !32
  %i.ft = getelementptr i8, ptr %invariant.gep263, i64 %indvars.iv224
  %gep264.3 = getelementptr i8, ptr %i.ft, i64 3
  %i.fu = load i8, ptr %gep264.3, align 1, !tbaa !32
  %i.fv = getelementptr inbounds nuw i8, ptr %.7176, i64 4
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !32
  %i.fw = getelementptr i8, ptr %invariant.gep263, i64 %indvars.iv224
  %gep264.4 = getelementptr i8, ptr %i.fw, i64 4
  %i.fx = load i8, ptr %gep264.4, align 1, !tbaa !32
  %i.fy = getelementptr inbounds nuw i8, ptr %.7176, i64 5
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !32
  %i.fz = getelementptr i8, ptr %invariant.gep263, i64 %indvars.iv224
  %gep264.5 = getelementptr i8, ptr %i.fz, i64 5
  %i.ga = load i8, ptr %gep264.5, align 1, !tbaa !32
  %i.gb = getelementptr inbounds nuw i8, ptr %.7176, i64 6
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !32
  %i.gc = getelementptr i8, ptr %invariant.gep263, i64 %indvars.iv224
  %gep264.6 = getelementptr i8, ptr %i.gc, i64 6
  %i.gd = load i8, ptr %gep264.6, align 1, !tbaa !32
  %i.ge = getelementptr inbounds nuw i8, ptr %.7176, i64 7
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !32
  %i.gf = getelementptr i8, ptr %invariant.gep263, i64 %indvars.iv224
  %gep264.7 = getelementptr i8, ptr %i.gf, i64 7
  %i.gg = load i8, ptr %gep264.7, align 1, !tbaa !32
  %i.gh = getelementptr inbounds nuw i8, ptr %.7176, i64 8 ; 2 uses
  store i8 %i.gg, ptr %i.ge, align 1, !tbaa !32
  %indvars.iv.next225.7 = add nuw nsw i64 %indvars.iv224, 8 ; 2 uses
  %exitcond228.not.7 = icmp eq i64 %indvars.iv.next225.7, %wide.trip.count227
  br i1 %exitcond228.not.7, label %._crit_edge180, label %.lr.ph179, !llvm.loop !241

._crit_edge180:                                   ; preds = %.lr.ph179.prol.loopexit, %.lr.ph179, %middle.block357, %.preheader152
  %.7.lcssa = phi ptr [ %.6126, %.preheader152 ], [ %i.ew, %middle.block357 ], [ %.lcssa.unr, %.lr.ph179.prol.loopexit ], [ %i.gh, %.lr.ph179 ] ; 4 uses
  %i.gi = add nsw i32 %.0113, %i.et               ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 1
  store i8 92, ptr %.7.lcssa, align 1, !tbaa !32
  %i.gk = sext i32 %i.gi to i64                   ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %.5187, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !32  ; 2 uses
  %i.gn = icmp eq i8 %i.gm, 0
  %.149 = select i1 %i.gn, i8 48, i8 %i.gm
  %.8 = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 2 ; 9 uses
  store i8 %.149, ptr %i.gj, align 1, !tbaa !32
  %i.go = add nsw i32 %i.gi, 1
  %i.gp = add nuw nsw i32 %i.et, 1
  %i.gq = lshr i32 %.3130, %i.gp                  ; 2 uses
  %.not148 = icmp eq i32 %i.gq, 0
  br i1 %.not148, label %.preheader151, label %.preheader152, !llvm.loop !242

.preheader151:                                    ; preds = %._crit_edge180
  %.7.lcssa312.le = ptrtoaddr ptr %.7.lcssa to i64
  %i.gr = icmp slt i32 %i.gi, 15
  br i1 %i.gr, label %iter.check328, label %.loopexit

iter.check328:                                    ; preds = %.preheader151
  %i.gs = add nsw i64 %i.gk, 1                    ; 7 uses
  %i.gt = add nuw nsw i32 %i.et, 2
  %i.gu = add i32 %i.gt, %.0113
  %i.gv = zext i32 %i.gu to i64
  %i.gw = sub nsw i64 17, %i.gv                   ; 7 uses
  %min.iters.check315 = icmp ult i64 %i.gw, 4
  br i1 %min.iters.check315, label %.lr.ph184.preheader, label %vector.scevcheck309

vector.scevcheck309:                              ; preds = %iter.check328
  %i.gx = add nuw nsw i32 %i.et, 2
  %i.gy = add i32 %i.gx, %.0113                   ; 2 uses
  %i.gz = zext i32 %i.gy to i64
  %i.ha = sub nsw i64 16, %i.gz                   ; 2 uses
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = xor i32 %i.gy, -1
  %i.hd = icmp ult i32 %i.hc, %i.hb
  %i.he = icmp ugt i64 %i.ha, 4294967295
  %i.hf = or i1 %i.hd, %i.he
  br i1 %i.hf, label %.lr.ph184.preheader, label %vector.memcheck310

vector.memcheck310:                               ; preds = %vector.scevcheck309
  %i.hg = add i64 %.reass404, %.7.lcssa312.le
  %i.hh = sub i64 %i.gk, %i.hg
  %diff.check313 = icmp ugt i64 %i.hh, -32
  br i1 %diff.check313, label %.lr.ph184.preheader, label %vector.main.loop.iter.check316

vector.main.loop.iter.check316:                   ; preds = %vector.memcheck310
  %min.iters.check317 = icmp ult i64 %i.gw, 32
  br i1 %min.iters.check317, label %vec.epilog.ph332, label %vector.ph318

vector.ph318:                                     ; preds = %vector.main.loop.iter.check316
  %i.hi = and i64 %i.gw, 28
  %n.vec319 = and i64 %i.gw, -32                  ; 5 uses
  %i.hj = add nsw i64 %i.gs, %n.vec319
  %i.hk = getelementptr i8, ptr %.8, i64 %n.vec319 ; 2 uses
  %i.hl = getelementptr i8, ptr %.5187, i64 %i.gs
  br label %vector.body320

vector.body320:                                   ; preds = %vector.ph318, %vector.body320
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next325, %vector.body320 ] ; 3 uses
  %next.gep322 = getelementptr i8, ptr %.8, i64 %index321 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 %index321 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load323 = load <16 x i8>, ptr %i.hm, align 1, !tbaa !32
  %wide.load324 = load <16 x i8>, ptr %i.hn, align 1, !tbaa !32
  %i.ho = getelementptr i8, ptr %next.gep322, i64 16
  store <16 x i8> %wide.load323, ptr %next.gep322, align 1, !tbaa !32
  store <16 x i8> %wide.load324, ptr %i.ho, align 1, !tbaa !32
  %index.next325 = add nuw i64 %index321, 32      ; 2 uses
  %i.hp = icmp eq i64 %index.next325, %n.vec319
  br i1 %i.hp, label %middle.block326, label %vector.body320, !llvm.loop !243

middle.block326:                                  ; preds = %vector.body320
  %cmp.n327 = icmp eq i64 %i.gw, %n.vec319
  br i1 %cmp.n327, label %.loopexit, label %vec.epilog.iter.check329

vec.epilog.iter.check329:                         ; preds = %middle.block326
  %min.epilog.iters.check331 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check331, label %.lr.ph184.preheader, label %vec.epilog.ph332, !prof !248

vec.epilog.ph332:                                 ; preds = %vector.main.loop.iter.check316, %vec.epilog.iter.check329
  %vec.epilog.resume.val333 = phi i64 [ %n.vec319, %vec.epilog.iter.check329 ], [ 0, %vector.main.loop.iter.check316 ]
  %n.vec334 = and i64 %i.gw, -4                   ; 4 uses
  %i.hq = add nsw i64 %i.gs, %n.vec334
  %i.hr = getelementptr i8, ptr %.8, i64 %n.vec334 ; 2 uses
  %i.hs = getelementptr i8, ptr %.5187, i64 %i.gs
  br label %vec.epilog.vector.body335

vec.epilog.vector.body335:                        ; preds = %vec.epilog.vector.body335, %vec.epilog.ph332
  %index336 = phi i64 [ %vec.epilog.resume.val333, %vec.epilog.ph332 ], [ %index.next339, %vec.epilog.vector.body335 ] ; 3 uses
  %next.gep337 = getelementptr i8, ptr %.8, i64 %index336
  %i.ht = getelementptr i8, ptr %i.hs, i64 %index336
  %wide.load338 = load <4 x i8>, ptr %i.ht, align 1, !tbaa !32
  store <4 x i8> %wide.load338, ptr %next.gep337, align 1, !tbaa !32
  %index.next339 = add nuw i64 %index336, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.hu, label %vec.epilog.middle.block340, label %vec.epilog.vector.body335, !llvm.loop !244

vec.epilog.middle.block340:                       ; preds = %vec.epilog.vector.body335
  %cmp.n341 = icmp eq i64 %i.gw, %n.vec334
  br i1 %cmp.n341, label %.loopexit, label %.lr.ph184.preheader

.lr.ph184.preheader:                              ; preds = %iter.check328, %vector.scevcheck309, %vector.memcheck310, %vec.epilog.iter.check329, %vec.epilog.middle.block340
  %indvars.iv231.ph = phi i64 [ %i.gs, %iter.check328 ], [ %i.gs, %vector.scevcheck309 ], [ %i.gs, %vector.memcheck310 ], [ %i.hj, %vec.epilog.iter.check329 ], [ %i.hq, %vec.epilog.middle.block340 ]
  %.9182.ph = phi ptr [ %.8, %iter.check328 ], [ %.8, %vector.scevcheck309 ], [ %.8, %vector.memcheck310 ], [ %i.hk, %vec.epilog.iter.check329 ], [ %i.hr, %vec.epilog.middle.block340 ]
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %.lr.ph184
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %.lr.ph184 ], [ %indvars.iv231.ph, %.lr.ph184.preheader ] ; 2 uses
  %.9182 = phi ptr [ %i.hx, %.lr.ph184 ], [ %.9182.ph, %.lr.ph184.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %.5187, i64 %indvars.iv231
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !32
  %i.hx = getelementptr inbounds nuw i8, ptr %.9182, i64 1 ; 2 uses
  store i8 %i.hw, ptr %.9182, align 1, !tbaa !32
  %indvars.iv.next232 = add nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.hy = and i64 %indvars.iv.next232, 4294967295
  %exitcond235.not = icmp eq i64 %i.hy, 16
  br i1 %exitcond235.not, label %.loopexit, label %.lr.ph184, !llvm.loop !245

bb.l:                                             ; preds = %.lr.ph189
  store <2 x i64> %i.en, ptr %.5125186, align 1, !tbaa !32
  %i.hz = getelementptr inbounds nuw i8, ptr %.5125186, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph184, %middle.block326, %vec.epilog.middle.block340, %.preheader151, %bb.l
  %.10 = phi ptr [ %i.hz, %bb.l ], [ %.8, %.preheader151 ], [ %i.hr, %vec.epilog.middle.block340 ], [ %i.hk, %middle.block326 ], [ %i.hx, %.lr.ph184 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.5187, i64 16 ; 3 uses
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = sub i64 %i.dx, %i.ib
  %i.id = icmp sgt i64 %i.ic, 15
  %indvar.next = add i64 %indvar, 1
  br i1 %i.id, label %.lr.ph189, label %.preheader, !llvm.loop !246

.lr.ph194:                                        ; preds = %.lr.ph194.prol.loopexit, %bb.s
  %.6193 = phi ptr [ %i.ir, %bb.s ], [ %.6193.unr, %.lr.ph194.prol.loopexit ] ; 4 uses
  %.11192 = phi ptr [ %.13.1, %bb.s ], [ %.11192.unr, %.lr.ph194.prol.loopexit ] ; 6 uses
  %i.ie = load i8, ptr %.6193, align 1, !tbaa !32 ; 2 uses
  switch i8 %i.ie, label %bb.o [
    i8 0, label %bb.m
    i8 39, label %bb.n
    i8 34, label %bb.n
    i8 92, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph194
  %i.if = getelementptr inbounds nuw i8, ptr %.11192, i64 1
  store i8 92, ptr %.11192, align 1, !tbaa !32
  %i.ig = getelementptr inbounds nuw i8, ptr %.11192, i64 2
  store i8 48, ptr %i.if, align 1, !tbaa !32
  br label %.lr.ph194.1

bb.n:                                             ; preds = %.lr.ph194, %.lr.ph194, %.lr.ph194
  %i.ih = getelementptr inbounds nuw i8, ptr %.11192, i64 1
  store i8 92, ptr %.11192, align 1, !tbaa !32
  %.pre = load i8, ptr %.6193, align 1, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph194
  %i.ii = phi i8 [ %i.ie, %.lr.ph194 ], [ %.pre, %bb.n ]
  %.12 = phi ptr [ %.11192, %.lr.ph194 ], [ %i.ih, %bb.n ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.12, i64 1
  store i8 %i.ii, ptr %.12, align 1, !tbaa !32
  br label %.lr.ph194.1

.lr.ph194.1:                                      ; preds = %bb.o, %bb.m
  %.13 = phi ptr [ %i.ij, %bb.o ], [ %i.ig, %bb.m ] ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.6193, i64 1 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !32  ; 2 uses
  switch i8 %i.il, label %bb.r [
    i8 0, label %bb.q
    i8 39, label %bb.p
    i8 34, label %bb.p
    i8 92, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph194.1, %.lr.ph194.1, %.lr.ph194.1
  %i.im = getelementptr inbounds nuw i8, ptr %.13, i64 1
  store i8 92, ptr %.13, align 1, !tbaa !32
  %.pre.1 = load i8, ptr %i.ik, align 1, !tbaa !32
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph194.1
  %i.in = getelementptr inbounds nuw i8, ptr %.13, i64 1
  store i8 92, ptr %.13, align 1, !tbaa !32
  %i.io = getelementptr inbounds nuw i8, ptr %.13, i64 2
  store i8 48, ptr %i.in, align 1, !tbaa !32
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %.lr.ph194.1
  %i.ip = phi i8 [ %i.il, %.lr.ph194.1 ], [ %.pre.1, %bb.p ]
  %.12.1 = phi ptr [ %.13, %.lr.ph194.1 ], [ %i.im, %bb.p ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.12.1, i64 1
  store i8 %i.ip, ptr %.12.1, align 1, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.13.1 = phi ptr [ %i.iq, %bb.r ], [ %i.io, %bb.q ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.6193, i64 2 ; 2 uses
  %exitcond238.not.1 = icmp eq ptr %i.ir, %scevgep237
  br i1 %exitcond238.not.1, label %._crit_edge195, label %.lr.ph194, !llvm.loop !247

._crit_edge195:                                   ; preds = %.lr.ph194.prol.loopexit, %bb.s, %.preheader
  %.11.lcssa = phi ptr [ %.5125.lcssa, %.preheader ], [ %.13.lcssa.unr, %.lr.ph194.prol.loopexit ], [ %.13.1, %bb.s ] ; 2 uses
  store i8 0, ptr %.11.lcssa, align 1, !tbaa !32
  %i.is = load i64, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %i.it = ptrtoint ptr %.11.lcssa to i64
  %i.iu = ptrtoint ptr %i.an to i64
  %i.iv = sub i64 %i.it, %i.iu                    ; 8 uses
  %i.iw = sub i64 %i.is, %i.iv
  %i.ix = icmp ugt i64 %i.iw, 16
  br i1 %i.ix, label %bb.t, label %bb.x

bb.t:                                             ; preds = %._crit_edge195
  %i.iy = icmp ule i64 %i.iv, %i.is
  tail call void @llvm.assume(i1 %i.iy)
  %i.iz = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ja = and i32 %i.iz, 64
  %.not.i = icmp eq i32 %i.ja, 0
  br i1 %.not.i, label %bb.u, label %zend_string_alloc.exit

bb.u:                                             ; preds = %bb.t
  %i.jb = load i32, ptr %i.ah, align 8, !tbaa !42
  %i.jc = icmp eq i32 %i.jb, 1
  br i1 %i.jc, label %bb.v, label %zend_string_alloc.exit, !prof !34

bb.v:                                             ; preds = %bb.u
  %i.jd = and i64 %i.iv, -8
  %i.je = add i64 %i.jd, 32
  %i.jf = tail call ptr @_erealloc(ptr noundef nonnull %i.ah, i64 noundef %i.je) #29 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store i64 %i.iv, ptr %i.jg, align 8, !tbaa !41
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i64 0, ptr %i.jh, align 8, !tbaa !43
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 4 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !32
  %i.jk = and i32 %i.jj, -513
  store i32 %i.jk, ptr %i.ji, align 4, !tbaa !32
  br label %zend_string_copy.exit

zend_string_alloc.exit:                           ; preds = %bb.t, %bb.u
  %i.jl = and i64 %i.iv, -8
  %i.jm = add i64 %i.jl, 32
end_hunk_0
begin_hunk_1_@_php_str_replace_common:bb.a
    i8 10, label %bb.h
  ], !prof !253

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %.06692, align 8, !tbaa !32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.x = phi i8 [ %.pre, %bb.h ], [ %i.u, %bb.g ]
  %.064 = phi ptr [ %i.w, %bb.h ], [ %.06692, %bb.g ] ; 2 uses
  %i.y = icmp eq i8 %i.x, 6
  br i1 %i.y, label %zval_get_tmp_string.exit.thread, label %zval_get_tmp_string.exit, !prof !34

zval_get_tmp_string.exit.thread:                  ; preds = %bb.i
  %i.z = load ptr, ptr %.064, align 8, !tbaa !32
  %i.aa = call fastcc i64 @php_str_replace_in_subject(ptr noundef %2, ptr noundef %1, ptr noundef %4, ptr noundef %3, ptr noundef %i.z, ptr noundef nonnull %9, i1 noundef zeroext %8)
  br label %zend_tmp_string_release.exit

zval_get_tmp_string.exit:                         ; preds = %bb.i
  %i.ab = call ptr @zval_get_string_func(ptr noundef nonnull %.064) #26 ; 6 uses
  %i.ac = call fastcc i64 @php_str_replace_in_subject(ptr noundef %2, ptr noundef %1, ptr noundef %4, ptr noundef %3, ptr noundef %i.ab, ptr noundef nonnull %9, i1 noundef zeroext %8) ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %zend_tmp_string_release.exit, label %bb.j, !prof !37

bb.j:                                             ; preds = %zval_get_tmp_string.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = and i32 %i.ae, 64
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.k, label %zend_tmp_string_release.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !42 ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ab, align 4, !tbaa !42
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %zend_tmp_string_release.exit

bb.l:                                             ; preds = %bb.k
  call void @_efree(ptr noundef nonnull %i.ab) #26
  br label %zend_tmp_string_release.exit

zend_tmp_string_release.exit:                     ; preds = %bb.j, %bb.k, %bb.l, %zval_get_tmp_string.exit.thread, %zval_get_tmp_string.exit
  %.pn = phi i64 [ %i.aa, %zval_get_tmp_string.exit.thread ], [ %i.ac, %zval_get_tmp_string.exit ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ]
  %i.ak = add nsw i64 %.pn, %.07389               ; 2 uses
  %.not81 = icmp eq ptr %.170, null
  %i.al = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %.not81, label %bb.n, label %bb.m

bb.m:                                             ; preds = %zend_tmp_string_release.exit
  %i.am = call ptr @zend_hash_add_new(ptr noundef %i.al, ptr noundef nonnull %.170, ptr noundef nonnull %9) #26 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %zend_tmp_string_release.exit
  %i.an = call ptr @zend_hash_index_add_new(ptr noundef %i.al, i64 noundef %.071, ptr noundef nonnull %9) #26 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.m, %bb.n
  %.174 = phi i64 [ %.07389, %bb.g ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ] ; 2 uses
  %i.ao = add i32 %.06593, -1                     ; 2 uses
  %.not77 = icmp eq i32 %i.ao, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph, !llvm.loop !252

bb.p:                                             ; preds = %bb.c
  %i.ap = tail call fastcc i64 @php_str_replace_in_subject(ptr noundef %2, ptr noundef %1, ptr noundef %4, ptr noundef %3, ptr noundef %6, ptr noundef %0, i1 noundef zeroext %8)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.d, %bb.p
  %.2 = phi i64 [ %i.ap, %bb.p ], [ 0, %bb.d ], [ %.174, %bb.o ] ; 2 uses
  %.not78 = icmp eq ptr %7, null
  br i1 %.not78, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.aq = load ptr, ptr %7, align 8, !tbaa !32    ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32
  %.not79 = icmp eq ptr %i.as, null
  br i1 %.not79, label %bb.s, label %bb.r, !prof !34

bb.r:                                             ; preds = %bb.q
  %i.at = call i32 @zend_try_assign_typed_ref_long(ptr noundef nonnull %i.aq, i64 noundef %.2) #26 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.au) #26
  store i64 %.2, ptr %i.au, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 4, ptr %i.av, align 8, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.loopexit, %bb.s, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_str_ireplace(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @php_str_replace_common(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_hebrev(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 2 uses
  %i.e = add i32 %i.d, -3
  %or.cond263 = icmp ult i32 %i.e, -2
  br i1 %or.cond263, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #26
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !32
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_str_ex.exit.i, !prof !34

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.c
  %i.j = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef range(i32 1, 0) 1) #26
  br i1 %i.j, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_string.exit, !prof !56

zend_parse_arg_string.exit:                       ; preds = %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

zend_parse_arg_str_ex.exit.i.thread:              ; preds = %zend_parse_arg_str_ex.exit.i, %bb.c
  %.in = phi ptr [ %i.f, %bb.c ], [ %i.a, %zend_parse_arg_str_ex.exit.i ]
  %i.k = load ptr, ptr %.in, align 8              ; 5 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41
  %.fr = freeze i64 %i.o                          ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.p = icmp eq i32 %i.d, 1
  br i1 %i.p, label %.critedge266, label %bb.d, !prof !45

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.i.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !32
  %i.t = icmp eq i8 %i.s, 4
  br i1 %i.t, label %.thread312, label %zend_parse_arg_long_ex.exit, !prof !34

.thread312:                                       ; preds = %bb.d
  %i.u = load i64, ptr %i.q, align 8, !tbaa !32
  store i64 %i.u, ptr %i.b, align 8, !tbaa !46
  br label %.critedge266

zend_parse_arg_long_ex.exit:                      ; preds = %bb.d
  %i.v = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, i32 noundef 2) #26
  br i1 %i.v, label %.critedge266, label %.thread, !prof !54

.thread:                                          ; preds = %zend_parse_arg_long_ex.exit, %zend_parse_arg_string.exit, %bb.b
  %.0206311 = phi i32 [ 9, %zend_parse_arg_long_ex.exit ], [ 1, %bb.b ], [ 9, %zend_parse_arg_string.exit ]
  %.0207310 = phi i32 [ 0, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ], [ 4, %zend_parse_arg_string.exit ]
  %.0208309 = phi ptr [ %i.q, %zend_parse_arg_long_ex.exit ], [ null, %bb.b ], [ %i.f, %zend_parse_arg_string.exit ]
  %.0209308 = phi i32 [ 2, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ], [ 1, %zend_parse_arg_string.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.0206311, i32 noundef %.0209308, ptr noundef null, i32 noundef %.0207310, ptr noundef %.0208309) #26
  br label %bb.af

.critedge266:                                     ; preds = %zend_parse_arg_long_ex.exit, %.thread312, %zend_parse_arg_str_ex.exit.i.thread
  %i.w = icmp eq i64 %.fr, 0
  br i1 %i.w, label %bb.e, label %select.unfold.preheader

bb.e:                                             ; preds = %.critedge266
  %i.x = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  store ptr %i.x, ptr %1, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 6, ptr %i.y, align 8, !tbaa !32
  br label %bb.af

select.unfold.preheader:                          ; preds = %.critedge266
  %i.z = add i64 %.fr, 1
  %i.aa = call noalias ptr @_emalloc(i64 noundef %i.z) #27 ; 13 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.fr ; 2 uses
  store i8 0, ptr %i.ac, align 1, !tbaa !32
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.m, align 8, !tbaa !32
  %i.af = add i8 %i.ae, 32
  %or.cond267 = icmp ult i8 %i.af, 27
  %i.ag = add i64 %.fr, -1                        ; 4 uses
  %spec.select = select i1 %or.cond267, i64 2, i64 1
  %scevgep475 = getelementptr i8, ptr %i.k, i64 24
  %scevgep477 = getelementptr i8, ptr %i.k, i64 23
  %2 = add i64 %i.l, 24
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.preheader, %.loopexit
  %.0228 = phi i64 [ %.4232, %.loopexit ], [ 0, %select.unfold.preheader ] ; 4 uses
  %.1226 = phi i64 [ %.2227, %.loopexit ], [ %spec.select, %select.unfold.preheader ]
  %.0204 = phi i64 [ %.pre-phi, %.loopexit ], [ 0, %select.unfold.preheader ] ; 14 uses
  %.0199 = phi ptr [ %.4203, %.loopexit ], [ %i.m, %select.unfold.preheader ] ; 2 uses
  %.0 = phi ptr [ %.3, %.loopexit ], [ %i.ad, %select.unfold.preheader ] ; 30 uses
  %.0535 = ptrtoaddr ptr %.0 to i64
  %i.ah = icmp eq i64 %.1226, 2
  br i1 %i.ah, label %.preheader334, label %.preheader336

.preheader334:                                    ; preds = %select.unfold, %bb.i
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %select.unfold ] ; 3 uses
  %.1229 = phi i64 [ %i.at, %bb.i ], [ %.0228, %select.unfold ] ; 7 uses
  %.1200 = phi ptr [ %i.ai, %bb.i ], [ %.0199, %select.unfold ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1200, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32  ; 4 uses
  %i.ak = add i8 %i.aj, 32
  %or.cond268 = icmp ult i8 %i.ak, 27
  br i1 %or.cond268, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.preheader334
  switch i8 %i.aj, label %bb.g [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.al = tail call ptr @__ctype_b_loc() #31
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !97
  %i.an = zext i8 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !99
  %i.aq = and i16 %i.ap, 4
  %.not255 = icmp ne i16 %i.aq, 0
  %i.ar = icmp eq i8 %i.aj, 10
  %or.cond269 = or i1 %i.ar, %.not255
  %i.as = icmp ult i64 %.1229, %i.ag
  %or.cond324 = select i1 %or.cond269, i1 %i.as, i1 false
  br i1 %or.cond324, label %bb.i, label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.f, %.preheader334
  %.old323 = icmp ult i64 %.1229, %i.ag
  br i1 %.old323, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.at = add nuw i64 %.1229, 1
  %indvar.next = add i64 %indvar, 1
  br label %.preheader334, !llvm.loop !254

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.au = add i64 %.1229, 1                       ; 5 uses
  %.0221348 = add i64 %.0204, 1                   ; 4 uses
  %.not256349 = icmp ugt i64 %.0221348, %i.au
  br i1 %.not256349, label %.loopexit, label %.lr.ph353.preheader

.lr.ph353.preheader:                              ; preds = %.critedge
  %i.av = add i64 %.0228, 2
  %i.aw = add i64 %i.av, %indvar
  %i.ax = add i64 %.0204, 2
  %i.ay = call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.ax)
  %i.az = xor i64 %.0204, -1
  %i.ba = add i64 %i.ay, %i.az                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ba, 16
  br i1 %min.iters.check, label %.lr.ph353.preheader603, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph353.preheader
  %scevgep = getelementptr i8, ptr %.0, i64 2
  %scevgep472 = getelementptr i8, ptr %scevgep, i64 %.0204
  %3 = add i64 %.0228, 2
  %4 = add i64 %3, %indvar
  %5 = add i64 %.0204, 2
  %umax = call i64 @llvm.umax.i64(i64 %4, i64 %5) ; 2 uses
  %6 = sub i64 0, %umax
  %scevgep473 = getelementptr i8, ptr %scevgep472, i64 %6
  %scevgep474 = getelementptr i8, ptr %.0, i64 1
  %scevgep476 = getelementptr i8, ptr %scevgep475, i64 %.0204
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %umax
  %bound0 = icmp ult ptr %scevgep473, %scevgep478
  %bound1 = icmp ult ptr %scevgep476, %scevgep474
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph353.preheader603, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, -16                     ; 5 uses
  %i.bb = add i64 %.0221348, %n.vec
  %i.bc = sub i64 0, %n.vec
  %i.bd = getelementptr i8, ptr %.0, i64 %i.bc    ; 2 uses
  %i.be = add i64 %.0204, %n.vec
  %i.bf = getelementptr i8, ptr %i.m, i64 %.0204
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue531, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue531 ] ; 18 uses
  %i.bg = sub i64 0, %index
  %i.bh = xor i64 %index, -1
  %i.bi = sub nuw nsw i64 -2, %index
  %i.bj = sub nuw nsw i64 -3, %index
  %i.bk = sub nuw nsw i64 -4, %index
  %i.bl = sub nuw nsw i64 -5, %index
  %i.bm = sub nuw nsw i64 -6, %index
  %i.bn = sub nuw nsw i64 -7, %index
  %i.bo = sub nuw nsw i64 -8, %index
  %i.bp = sub nuw nsw i64 -9, %index
  %i.bq = sub nuw nsw i64 -10, %index
  %i.br = sub nuw nsw i64 -11, %index
  %i.bs = sub nuw nsw i64 -12, %index
  %i.bt = sub nuw nsw i64 -13, %index
  %i.bu = sub nuw nsw i64 -14, %index
  %i.bv = sub nuw nsw i64 -15, %index
  %next.gep = getelementptr i8, ptr %.0, i64 %i.bg ; 2 uses
  %next.gep479 = getelementptr i8, ptr %.0, i64 %i.bh
  %next.gep480 = getelementptr i8, ptr %.0, i64 %i.bi
  %next.gep481 = getelementptr i8, ptr %.0, i64 %i.bj
  %next.gep482 = getelementptr i8, ptr %.0, i64 %i.bk
  %next.gep483 = getelementptr i8, ptr %.0, i64 %i.bl
  %next.gep484 = getelementptr i8, ptr %.0, i64 %i.bm
  %next.gep485 = getelementptr i8, ptr %.0, i64 %i.bn
  %next.gep486 = getelementptr i8, ptr %.0, i64 %i.bo
  %next.gep487 = getelementptr i8, ptr %.0, i64 %i.bp
  %next.gep488 = getelementptr i8, ptr %.0, i64 %i.bq
  %next.gep489 = getelementptr i8, ptr %.0, i64 %i.br
  %next.gep490 = getelementptr i8, ptr %.0, i64 %i.bs
  %next.gep491 = getelementptr i8, ptr %.0, i64 %i.bt
  %next.gep492 = getelementptr i8, ptr %.0, i64 %i.bu
  %next.gep493 = getelementptr i8, ptr %.0, i64 %i.bv
  %i.bw = getelementptr i8, ptr %i.bf, i64 %index
  %wide.load = load <16 x i8>, ptr %i.bw, align 1, !tbaa !32, !alias.scope !273 ; 11 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 -15
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.bx, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  %i.by = icmp eq <16 x i8> %wide.load, splat (i8 41)
  %i.bz = icmp eq <16 x i8> %wide.load, splat (i8 91) ; 2 uses
  %i.ca = icmp eq <16 x i8> %wide.load, splat (i8 93) ; 2 uses
  %i.cb = icmp eq <16 x i8> %wide.load, splat (i8 123) ; 2 uses
  %i.cc = icmp eq <16 x i8> %wide.load, splat (i8 125) ; 2 uses
  %i.cd = icmp eq <16 x i8> %wide.load, splat (i8 60) ; 2 uses
  %i.ce = icmp eq <16 x i8> %wide.load, splat (i8 62) ; 2 uses
  %i.cf = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 2 uses
  %i.cg = icmp eq <16 x i8> %wide.load, splat (i8 47) ; 2 uses
  %i.ch = and <16 x i8> %wide.load, splat (i8 -2)
  %i.ci = icmp eq <16 x i8> %i.ch, splat (i8 40)
  %i.cj = or <16 x i1> %i.ci, %i.bz
  %i.ck = or <16 x i1> %i.cj, %i.ca
  %i.cl = or <16 x i1> %i.ck, %i.cb
  %i.cm = or <16 x i1> %i.cl, %i.cc
  %i.cn = or <16 x i1> %i.cm, %i.cd
  %i.co = or <16 x i1> %i.cn, %i.ce
  %i.cp = or <16 x i1> %i.co, %i.cf
  %i.cq = or <16 x i1> %i.cp, %i.cg               ; 16 uses
  %predphi = select <16 x i1> %i.by, <16 x i8> splat (i8 40), <16 x i8> splat (i8 41)
  %predphi494 = select <16 x i1> %i.bz, <16 x i8> splat (i8 93), <16 x i8> %predphi
  %predphi495 = select <16 x i1> %i.ca, <16 x i8> splat (i8 91), <16 x i8> %predphi494
  %predphi496 = select <16 x i1> %i.cb, <16 x i8> splat (i8 125), <16 x i8> %predphi495
  %predphi497 = select <16 x i1> %i.cc, <16 x i8> splat (i8 123), <16 x i8> %predphi496
  %predphi498 = select <16 x i1> %i.cd, <16 x i8> splat (i8 62), <16 x i8> %predphi497
  %predphi499 = select <16 x i1> %i.ce, <16 x i8> splat (i8 60), <16 x i8> %predphi498
  %predphi500 = select <16 x i1> %i.cf, <16 x i8> splat (i8 47), <16 x i8> %predphi499
  %predphi501 = select <16 x i1> %i.cg, <16 x i8> splat (i8 92), <16 x i8> %predphi500 ; 16 uses
  %i.cr = extractelement <16 x i1> %i.cq, i64 0
  br i1 %i.cr, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cs = extractelement <16 x i8> %predphi501, i64 0
  store i8 %i.cs, ptr %next.gep, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ct = extractelement <16 x i1> %i.cq, i64 1
  br i1 %i.ct, label %pred.store.if502, label %pred.store.continue503

pred.store.if502:                                 ; preds = %pred.store.continue
  %i.cu = extractelement <16 x i8> %predphi501, i64 1
  store i8 %i.cu, ptr %next.gep479, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue503

pred.store.continue503:                           ; preds = %pred.store.if502, %pred.store.continue
  %i.cv = extractelement <16 x i1> %i.cq, i64 2
  br i1 %i.cv, label %pred.store.if504, label %pred.store.continue505

pred.store.if504:                                 ; preds = %pred.store.continue503
  %i.cw = extractelement <16 x i8> %predphi501, i64 2
  store i8 %i.cw, ptr %next.gep480, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue505

pred.store.continue505:                           ; preds = %pred.store.if504, %pred.store.continue503
  %i.cx = extractelement <16 x i1> %i.cq, i64 3
  br i1 %i.cx, label %pred.store.if506, label %pred.store.continue507

pred.store.if506:                                 ; preds = %pred.store.continue505
  %i.cy = extractelement <16 x i8> %predphi501, i64 3
  store i8 %i.cy, ptr %next.gep481, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue507

pred.store.continue507:                           ; preds = %pred.store.if506, %pred.store.continue505
  %i.cz = extractelement <16 x i1> %i.cq, i64 4
  br i1 %i.cz, label %pred.store.if508, label %pred.store.continue509

pred.store.if508:                                 ; preds = %pred.store.continue507
  %i.da = extractelement <16 x i8> %predphi501, i64 4
  store i8 %i.da, ptr %next.gep482, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue509

pred.store.continue509:                           ; preds = %pred.store.if508, %pred.store.continue507
  %i.db = extractelement <16 x i1> %i.cq, i64 5
  br i1 %i.db, label %pred.store.if510, label %pred.store.continue511

pred.store.if510:                                 ; preds = %pred.store.continue509
  %i.dc = extractelement <16 x i8> %predphi501, i64 5
  store i8 %i.dc, ptr %next.gep483, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue511

pred.store.continue511:                           ; preds = %pred.store.if510, %pred.store.continue509
  %i.dd = extractelement <16 x i1> %i.cq, i64 6
  br i1 %i.dd, label %pred.store.if512, label %pred.store.continue513

pred.store.if512:                                 ; preds = %pred.store.continue511
  %i.de = extractelement <16 x i8> %predphi501, i64 6
  store i8 %i.de, ptr %next.gep484, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue513

pred.store.continue513:                           ; preds = %pred.store.if512, %pred.store.continue511
  %i.df = extractelement <16 x i1> %i.cq, i64 7
  br i1 %i.df, label %pred.store.if514, label %pred.store.continue515

pred.store.if514:                                 ; preds = %pred.store.continue513
  %i.dg = extractelement <16 x i8> %predphi501, i64 7
  store i8 %i.dg, ptr %next.gep485, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue515

pred.store.continue515:                           ; preds = %pred.store.if514, %pred.store.continue513
  %i.dh = extractelement <16 x i1> %i.cq, i64 8
  br i1 %i.dh, label %pred.store.if516, label %pred.store.continue517

pred.store.if516:                                 ; preds = %pred.store.continue515
  %i.di = extractelement <16 x i8> %predphi501, i64 8
  store i8 %i.di, ptr %next.gep486, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue517

pred.store.continue517:                           ; preds = %pred.store.if516, %pred.store.continue515
  %i.dj = extractelement <16 x i1> %i.cq, i64 9
  br i1 %i.dj, label %pred.store.if518, label %pred.store.continue519

pred.store.if518:                                 ; preds = %pred.store.continue517
  %i.dk = extractelement <16 x i8> %predphi501, i64 9
  store i8 %i.dk, ptr %next.gep487, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.if518, %pred.store.continue517
  %i.dl = extractelement <16 x i1> %i.cq, i64 10
  br i1 %i.dl, label %pred.store.if520, label %pred.store.continue521

pred.store.if520:                                 ; preds = %pred.store.continue519
  %i.dm = extractelement <16 x i8> %predphi501, i64 10
  store i8 %i.dm, ptr %next.gep488, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.if520, %pred.store.continue519
  %i.dn = extractelement <16 x i1> %i.cq, i64 11
  br i1 %i.dn, label %pred.store.if522, label %pred.store.continue523

pred.store.if522:                                 ; preds = %pred.store.continue521
  %i.do = extractelement <16 x i8> %predphi501, i64 11
  store i8 %i.do, ptr %next.gep489, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue521
  %i.dp = extractelement <16 x i1> %i.cq, i64 12
  br i1 %i.dp, label %pred.store.if524, label %pred.store.continue525

pred.store.if524:                                 ; preds = %pred.store.continue523
  %i.dq = extractelement <16 x i8> %predphi501, i64 12
  store i8 %i.dq, ptr %next.gep490, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue525

pred.store.continue525:                           ; preds = %pred.store.if524, %pred.store.continue523
  %i.dr = extractelement <16 x i1> %i.cq, i64 13
  br i1 %i.dr, label %pred.store.if526, label %pred.store.continue527

pred.store.if526:                                 ; preds = %pred.store.continue525
  %i.ds = extractelement <16 x i8> %predphi501, i64 13
  store i8 %i.ds, ptr %next.gep491, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue527

pred.store.continue527:                           ; preds = %pred.store.if526, %pred.store.continue525
  %i.dt = extractelement <16 x i1> %i.cq, i64 14
  br i1 %i.dt, label %pred.store.if528, label %pred.store.continue529

pred.store.if528:                                 ; preds = %pred.store.continue527
  %i.du = extractelement <16 x i8> %predphi501, i64 14
  store i8 %i.du, ptr %next.gep492, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue529

pred.store.continue529:                           ; preds = %pred.store.if528, %pred.store.continue527
  %i.dv = extractelement <16 x i1> %i.cq, i64 15
  br i1 %i.dv, label %pred.store.if530, label %pred.store.continue531

pred.store.if530:                                 ; preds = %pred.store.continue529
  %i.dw = extractelement <16 x i8> %predphi501, i64 15
  store i8 %i.dw, ptr %next.gep493, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %pred.store.continue531

pred.store.continue531:                           ; preds = %pred.store.if530, %pred.store.continue529
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %pred.store.continue531
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph353.preheader603

.lr.ph353.preheader603:                           ; preds = %vector.memcheck, %.lr.ph353.preheader, %middle.block
  %.0221352.ph = phi i64 [ %.0221348, %vector.memcheck ], [ %.0221348, %.lr.ph353.preheader ], [ %i.bb, %middle.block ]
  %.1351.ph = phi ptr [ %.0, %vector.memcheck ], [ %.0, %.lr.ph353.preheader ], [ %i.bd, %middle.block ]
  %.0221.in350.ph = phi i64 [ %.0204, %vector.memcheck ], [ %.0204, %.lr.ph353.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph353

.lr.ph353:                                        ; preds = %.lr.ph353.preheader603, %bb.s
  %.0221352 = phi i64 [ %.0221, %bb.s ], [ %.0221352.ph, %.lr.ph353.preheader603 ] ; 2 uses
  %.1351 = phi ptr [ %i.ea, %bb.s ], [ %.1351.ph, %.lr.ph353.preheader603 ] ; 3 uses
  %.0221.in350 = phi i64 [ %.0221352, %bb.s ], [ %.0221.in350.ph, %.lr.ph353.preheader603 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0221.in350
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !32  ; 2 uses
  store i8 %i.dz, ptr %.1351, align 1, !tbaa !32
  switch i8 %i.dz, label %bb.s [
    i8 40, label %.sink.split
    i8 41, label %bb.j
    i8 91, label %bb.k
    i8 93, label %bb.l
    i8 123, label %bb.m
    i8 125, label %bb.n
    i8 60, label %bb.o
    i8 62, label %bb.p
    i8 92, label %bb.q
    i8 47, label %bb.r
  ]

bb.j:                                             ; preds = %.lr.ph353
  br label %.sink.split

bb.k:                                             ; preds = %.lr.ph353
  br label %.sink.split

bb.l:                                             ; preds = %.lr.ph353
  br label %.sink.split

bb.m:                                             ; preds = %.lr.ph353
  br label %.sink.split

bb.n:                                             ; preds = %.lr.ph353
  br label %.sink.split

bb.o:                                             ; preds = %.lr.ph353
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph353
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph353
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph353
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph353, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.sink = phi i8 [ 92, %bb.r ], [ 47, %bb.q ], [ 60, %bb.p ], [ 62, %bb.o ], [ 123, %bb.n ], [ 125, %bb.m ], [ 91, %bb.l ], [ 93, %bb.k ], [ 40, %bb.j ], [ 41, %.lr.ph353 ]
  store i8 %.sink, ptr %.1351, align 1, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %.lr.ph353
  %i.ea = getelementptr inbounds i8, ptr %.1351, i64 -1 ; 2 uses
  %.0221 = add i64 %.0221352, 1                   ; 2 uses
  %.not256 = icmp ugt i64 %.0221, %i.au
  br i1 %.not256, label %.loopexit, label %.lr.ph353, !llvm.loop !259

.preheader336:                                    ; preds = %select.unfold, %.preheader336
  %.2230 = phi i64 [ %i.ef, %.preheader336 ], [ %.0228, %select.unfold ] ; 4 uses
  %.2201 = phi ptr [ %i.eb, %.preheader336 ], [ %.0199, %select.unfold ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.2201, i64 1 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !32  ; 2 uses
  %i.ed = add i8 %i.ec, 5
  %or.cond270 = icmp ult i8 %i.ed, -27
  %.not250 = icmp ne i8 %i.ec, 10
  %or.cond325.not329 = and i1 %.not250, %or.cond270
  %i.ee = icmp ult i64 %.2230, %i.ag
  %or.cond328 = select i1 %or.cond325.not329, i1 %i.ee, i1 false
  %i.ef = add nuw i64 %.2230, 1
  br i1 %or.cond328, label %.preheader336, label %.critedge2.preheader, !llvm.loop !260

.critedge2.preheader:                             ; preds = %.preheader336
  %umin = call i64 @llvm.umin.i64(i64 %.0204, i64 %.2230)
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.preheader, %bb.w
  %.3231 = phi i64 [ %i.ep, %bb.w ], [ %.2230, %.critedge2.preheader ] ; 5 uses
  %.3202 = phi ptr [ %i.eo, %bb.w ], [ %.2201, %.critedge2.preheader ] ; 6 uses
  %i.eg = load i8, ptr %.3202, align 1, !tbaa !32 ; 3 uses
  switch i8 %i.eg, label %bb.t [
    i8 9, label %bb.v
    i8 32, label %bb.v
  ]

bb.t:                                             ; preds = %.critedge2
  %i.eh = tail call ptr @__ctype_b_loc() #31
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97
  %i.ej = zext i8 %i.eg to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !99
  %i.em = and i16 %i.el, 4
  %.not251 = icmp eq i16 %i.em, 0
  br i1 %.not251, label %.critedge4, label %bb.u

bb.u:                                             ; preds = %bb.t
  switch i8 %i.eg, label %bb.v [
    i8 47, label %.critedge4
    i8 45, label %.critedge4
  ]

bb.v:                                             ; preds = %.critedge2, %.critedge2, %bb.u
  %i.en = icmp ugt i64 %.3231, %.0204
  br i1 %i.en, label %bb.w, label %.critedge4

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds i8, ptr %.3202, i64 -1
  %i.ep = add i64 %.3231, -1
  br label %.critedge2, !llvm.loop !261

.critedge4:                                       ; preds = %bb.u, %bb.u, %bb.t, %bb.v
  %.3231.lcssa = phi i64 [ %.3231, %bb.u ], [ %.3231, %bb.u ], [ %.3231, %bb.t ], [ %umin, %bb.v ] ; 7 uses
  %i.eq = add i64 %.3231.lcssa, 1                 ; 11 uses
  %i.er = add i64 %.0204, 1                       ; 2 uses
  %.not254345 = icmp ult i64 %i.eq, %i.er
  br i1 %.not254345, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.critedge4
  %i.es = call i64 @llvm.usub.sat.i64(i64 %.3231.lcssa, i64 %.0204)
  %i.et = add i64 %i.es, 1                        ; 7 uses
  %min.iters.check538 = icmp ult i64 %i.et, 8
  br i1 %min.iters.check538, label %.lr.ph.preheader, label %vector.memcheck534

vector.memcheck534:                               ; preds = %iter.check
  %i.eu = add i64 %2, %.3231.lcssa
  %i.ev = sub i64 %.0535, %i.eu
  %diff.check = icmp ugt i64 %i.ev, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck534
  %min.iters.check539 = icmp ult i64 %i.et, 32
  br i1 %min.iters.check539, label %vec.epilog.ph, label %vector.ph540

vector.ph540:                                     ; preds = %vector.main.loop.iter.check
  %i.ew = and i64 %i.et, 24
  %n.vec541 = and i64 %i.et, -32                  ; 5 uses
  %i.ex = sub i64 0, %n.vec541
  %i.ey = getelementptr i8, ptr %.0, i64 %i.ex    ; 2 uses
  %i.ez = sub i64 %i.eq, %n.vec541
  br label %vector.body542

vector.body542:                                   ; preds = %vector.ph540, %vector.body542
  %index543 = phi i64 [ 0, %vector.ph540 ], [ %index.next547, %vector.body542 ] ; 3 uses
  %i.fa = sub i64 0, %index543
  %next.gep544 = getelementptr i8, ptr %.0, i64 %i.fa ; 2 uses
  %i.fb = sub i64 %i.eq, %index543
  %i.fc = getelementptr i8, ptr %i.m, i64 %i.fb   ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 -16
  %i.fe = getelementptr i8, ptr %i.fc, i64 -32
  %wide.load545 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !32
  %wide.load546 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !32
  %i.ff = getelementptr i8, ptr %next.gep544, i64 -15
  %i.fg = getelementptr i8, ptr %next.gep544, i64 -31
  store <16 x i8> %wide.load545, ptr %i.ff, align 1, !tbaa !32
  store <16 x i8> %wide.load546, ptr %i.fg, align 1, !tbaa !32
  %index.next547 = add nuw i64 %index543, 32      ; 2 uses
  %i.fh = icmp eq i64 %index.next547, %n.vec541
  br i1 %i.fh, label %middle.block548, label %vector.body542, !llvm.loop !262

middle.block548:                                  ; preds = %vector.body542
  %cmp.n549 = icmp eq i64 %i.et, %n.vec541
  br i1 %cmp.n549, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block548
  %min.epilog.iters.check = icmp eq i64 %i.ew, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec541, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec550 = and i64 %i.et, -8                   ; 4 uses
  %i.fi = sub i64 0, %n.vec550
  %i.fj = getelementptr i8, ptr %.0, i64 %i.fi    ; 2 uses
  %i.fk = sub i64 %i.eq, %n.vec550
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index551 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next554, %vec.epilog.vector.body ] ; 3 uses
  %i.fl = sub i64 0, %index551
  %next.gep552 = getelementptr i8, ptr %.0, i64 %i.fl
  %i.fm = sub i64 %i.eq, %index551
  %i.fn = getelementptr i8, ptr %i.m, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %wide.load553 = load <8 x i8>, ptr %i.fo, align 1, !tbaa !32
  %i.fp = getelementptr i8, ptr %next.gep552, i64 -7
  store <8 x i8> %wide.load553, ptr %i.fp, align 1, !tbaa !32
  %index.next554 = add nuw i64 %index551, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next554, %n.vec550
  br i1 %i.fq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !263

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n555 = icmp eq i64 %i.et, %n.vec550
  br i1 %cmp.n555, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck534, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2347.ph = phi ptr [ %.0, %iter.check ], [ %.0, %vector.memcheck534 ], [ %i.ey, %vec.epilog.iter.check ], [ %i.fj, %vec.epilog.middle.block ]
  %.1222346.ph = phi i64 [ %i.eq, %iter.check ], [ %i.eq, %vector.memcheck534 ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fk, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.2347 = phi ptr [ %i.fu, %.lr.ph ], [ %.2347.ph, %.lr.ph.preheader ] ; 2 uses
  %.1222346 = phi i64 [ %i.fv, %.lr.ph ], [ %.1222346.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fr = getelementptr i8, ptr %i.m, i64 %.1222346
  %i.fs = getelementptr i8, ptr %i.fr, i64 -1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !32
  store i8 %i.ft, ptr %.2347, align 1, !tbaa !32
  %i.fu = getelementptr inbounds i8, ptr %.2347, i64 -1 ; 2 uses
  %i.fv = add i64 %.1222346, -1                   ; 2 uses
  %.not254 = icmp ult i64 %i.fv, %i.er
  br i1 %.not254, label %.loopexit, label %.lr.ph, !llvm.loop !264

.loopexit:                                        ; preds = %.lr.ph, %bb.s, %middle.block548, %vec.epilog.middle.block, %middle.block, %.critedge4, %.critedge
  %.pre-phi = phi i64 [ %i.au, %middle.block ], [ %i.au, %.critedge ], [ %i.eq, %.critedge4 ], [ %i.eq, %middle.block548 ], [ %i.au, %bb.s ], [ %i.eq, %vec.epilog.middle.block ], [ %i.eq, %.lr.ph ]
  %.4232 = phi i64 [ %.1229, %middle.block ], [ %.1229, %.critedge ], [ %.3231.lcssa, %.critedge4 ], [ %.3231.lcssa, %middle.block548 ], [ %.1229, %bb.s ], [ %.3231.lcssa, %vec.epilog.middle.block ], [ %.3231.lcssa, %.lr.ph ] ; 2 uses
  %.2227 = phi i64 [ 1, %middle.block ], [ 1, %.critedge ], [ 2, %.critedge4 ], [ 2, %middle.block548 ], [ 1, %bb.s ], [ 2, %vec.epilog.middle.block ], [ 2, %.lr.ph ]
  %.4203 = phi ptr [ %.1200, %middle.block ], [ %.1200, %.critedge ], [ %.3202, %.critedge4 ], [ %.3202, %middle.block548 ], [ %.1200, %bb.s ], [ %.3202, %vec.epilog.middle.block ], [ %.3202, %.lr.ph ]
  %.3 = phi ptr [ %i.bd, %middle.block ], [ %.0, %.critedge ], [ %.0, %.critedge4 ], [ %i.ey, %middle.block548 ], [ %i.ea, %bb.s ], [ %i.fj, %vec.epilog.middle.block ], [ %i.fu, %.lr.ph ]
  %i.fw = icmp ult i64 %.4232, %i.ag
  br i1 %i.fw, label %select.unfold, label %zend_string_alloc.exit, !llvm.loop !265

zend_string_alloc.exit:                           ; preds = %.loopexit
  %i.fx = and i64 %.fr, -8
  %i.fy = add i64 %i.fx, 32
  %i.fz = call noalias ptr @_emalloc(i64 noundef %i.fy) #27 ; 6 uses
  store i32 1, ptr %i.fz, align 4, !tbaa !42
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 22, ptr %i.ga, align 4, !tbaa !32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 0, ptr %i.gb, align 8, !tbaa !43
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %.fr, ptr %i.gc, align 8, !tbaa !41
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  br label %bb.x

bb.x:                                             ; preds = %.critedge12, %zend_string_alloc.exit
  %.0210.in = phi i64 [ %.fr, %zend_string_alloc.exit ], [ %.5216, %.critedge12 ] ; 2 uses
  %.4 = phi ptr [ %i.gd, %zend_string_alloc.exit ], [ %.6.lcssa, %.critedge12 ] ; 8 uses
  %.4559 = ptrtoaddr ptr %.4 to i64
  %.0210 = add i64 %.0210.in, -1                  ; 14 uses
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !46  ; 6 uses
  %.not257 = icmp eq i64 %i.ge, 0
  br i1 %.not257, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.x
  %.old13.not.us468 = icmp eq i64 %.0210, 0
  br i1 %.old13.not.us468, label %.critedge8, label %.lr.ph471

.split.us:                                        ; preds = %.lr.ph471
  %.old13.not.us = icmp eq i64 %i.gg, 0
  br i1 %.old13.not.us, label %.critedge8, label %.lr.ph471

.lr.ph471:                                        ; preds = %.split.us.preheader, %.split.us
  %.1212.us470 = phi i64 [ %i.gg, %.split.us ], [ %.0210, %.split.us.preheader ]
  %.0218.us469 = phi i64 [ %i.gf, %.split.us ], [ 0, %.split.us.preheader ]
  %i.gf = add nuw nsw i64 %.0218.us469, 1         ; 3 uses
  %i.gg = add i64 %.1212.us470, -1                ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !32
  switch i8 %i.gi, label %.split.us [
    i8 10, label %.split358.us
    i8 13, label %.split358.us
  ]

.split:                                           ; preds = %bb.x
  %i.gj = icmp sgt i64 %i.ge, 0
  br i1 %i.gj, label %.split.split.preheader, label %.critedge8.thread

.split.split.preheader:                           ; preds = %.split
  %umin427 = call i64 @llvm.umin.i64(i64 %.0210, i64 %i.ge) ; 3 uses
  %exitcond.not464 = icmp eq i64 %.0210, 0
  br i1 %exitcond.not464, label %.critedge8, label %.lr.ph467

.split.split:                                     ; preds = %.lr.ph467
  %exitcond.not = icmp eq i64 %i.gk, %umin427
  br i1 %exitcond.not, label %.critedge8, label %.lr.ph467

.lr.ph467:                                        ; preds = %.split.split.preheader, %.split.split
  %.1212466 = phi i64 [ %i.gl, %.split.split ], [ %.0210, %.split.split.preheader ]
  %.0218465 = phi i64 [ %i.gk, %.split.split ], [ 0, %.split.split.preheader ]
  %i.gk = add nuw i64 %.0218465, 1                ; 4 uses
  %i.gl = add i64 %.1212466, -1                   ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !32
  switch i8 %i.gn, label %.split.split [
    i8 10, label %.split358.us
    i8 13, label %.split358.us
  ]

.split358.us:                                     ; preds = %.lr.ph467, %.lr.ph467, %.lr.ph471, %.lr.ph471
  %.us-phi359 = phi i64 [ %i.gf, %.lr.ph471 ], [ %i.gf, %.lr.ph471 ], [ %i.gk, %.lr.ph467 ], [ %i.gk, %.lr.ph467 ] ; 3 uses
  %.us-phi360 = phi i64 [ %i.gg, %.lr.ph471 ], [ %i.gg, %.lr.ph471 ], [ %i.gl, %.lr.ph467 ], [ %i.gl, %.lr.ph467 ] ; 3 uses
  %.not258367 = icmp eq i64 %.us-phi360, 0
  br i1 %.not258367, label %.critedge8, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %.split358.us
  %i.go = add i64 %.us-phi359, %.us-phi360
  br label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.preheader, %bb.y
  %.2213369 = phi i64 [ %i.gs, %bb.y ], [ %.us-phi360, %.lr.ph370.preheader ] ; 3 uses
  %.1219368 = phi i64 [ %i.gt, %bb.y ], [ %.us-phi359, %.lr.ph370.preheader ] ; 2 uses
  %i.gp = getelementptr i8, ptr %i.aa, i64 %.2213369
  %i.gq = getelementptr i8, ptr %i.gp, i64 -1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !32
  switch i8 %i.gr, label %.critedge8 [
    i8 13, label %bb.y
    i8 10, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph370, %.lr.ph370
  %i.gs = add i64 %.2213369, -1                   ; 2 uses
  %i.gt = add nuw nsw i64 %.1219368, 1
  %.not258 = icmp eq i64 %i.gs, 0
  br i1 %.not258, label %.critedge8, label %.lr.ph370, !llvm.loop !266

.critedge8:                                       ; preds = %.split.split, %.split.us, %bb.y, %.lr.ph370, %.split.split.preheader, %.split.us.preheader, %.split358.us
  %.2220 = phi i64 [ %.0210, %.split.us.preheader ], [ %.us-phi359, %.split358.us ], [ %.1219368, %.lr.ph370 ], [ %umin427, %.split.split.preheader ], [ %.0210, %.split.us ], [ %i.go, %bb.y ], [ %umin427, %.split.split ] ; 2 uses
  %.3214 = phi i64 [ 0, %.split.us.preheader ], [ 0, %.split358.us ], [ %.2213369, %.lr.ph370 ], [ %.0210, %.split.split.preheader ], [ 0, %.split.us ], [ 0, %bb.y ], [ %i.gl, %.split.split ] ; 3 uses
  %i.gu = icmp slt i64 %i.ge, 0
  %i.gv = icmp ne i64 %.2220, %i.ge
  %.not259376 = icmp eq i64 %.2220, 0
  %i.gw = or i1 %i.gv, %.not259376
  %or.cond407 = select i1 %i.gu, i1 true, i1 %i.gw
  br i1 %or.cond407, label %.critedge8.thread, label %.lr.ph379

.lr.ph379:                                        ; preds = %.critedge8, %bb.z
  %.0197378 = phi i64 [ %i.gz, %bb.z ], [ %.3214, %.critedge8 ] ; 6 uses
  %.0198377 = phi i64 [ %i.ha, %bb.z ], [ %i.ge, %.critedge8 ]
end_hunk_1
