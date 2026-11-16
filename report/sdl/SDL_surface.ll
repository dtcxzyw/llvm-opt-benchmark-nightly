Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_surface?download=true
inline.NumInlined: 117
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_PremultiplyAlphaPixelsAndColorspace:bb.a
  %i.cb = and i32 %i.bw, 255
  %i.cc = lshr i32 %i.bw, 24                      ; 3 uses
  %i.cd = mul nuw nsw i32 %i.by, %i.cc
  %.lhs.trunc.i = trunc nuw i32 %i.cd to i16
  %i.ce = udiv i16 %.lhs.trunc.i, 255
  %.zext.i = zext nneg i16 %i.ce to i32
  %i.cf = mul nuw nsw i32 %i.ca, %i.cc
  %.lhs.trunc33.i = trunc nuw i32 %i.cf to i16
  %i.cg = udiv i16 %.lhs.trunc33.i, 255
  %.zext34.i = zext nneg i16 %i.cg to i32
  %i.ch = mul nuw nsw i32 %i.cc, %i.cb
  %.lhs.trunc35.i = trunc nuw i32 %i.ch to i16
  %i.ci = udiv i16 %.lhs.trunc35.i, 255
  %.zext36.i = zext nneg i16 %i.ci to i32
  %i.cj = and i32 %i.bw, -16777216
  %i.ck = shl nuw nsw i32 %.zext.i, 16
  %i.cl = shl nuw nsw i32 %.zext34.i, 8
  %i.cm = or disjoint i32 %i.cj, %.zext36.i
  %i.cn = or i32 %i.cm, %i.ck
  %i.co = or i32 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %.040.i, i64 4
  store i32 %i.co, ptr %.040.i, align 4
  %i.cq = add nsw i32 %.02838.i, -1               ; 2 uses
  %.not32.i = icmp eq i32 %i.cq, 0
  br i1 %.not32.i, label %._crit_edge.i, label %scalar.ph247, !llvm.loop !36

._crit_edge.i:                                    ; preds = %scalar.ph247, %middle.block263
  %i.cr = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.03142.i, i64 %i.z
  %i.ct = getelementptr inbounds i8, ptr %.03043.i, i64 %i.aa
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %SDL_PremultiplyAlpha_AXYZ8888.exit, label %.preheader.i, !llvm.loop !37

bb.w:                                             ; preds = %bb.u, %bb.u
  %.not41.i166 = icmp eq i32 %1, 0
  br i1 %.not41.i166, label %SDL_PremultiplyAlpha_AXYZ8888.exit, label %.preheader.lr.ph.i167

.preheader.lr.ph.i167:                            ; preds = %bb.w
  %.not3237.i168 = icmp eq i32 %0, 0
  %i.cu = sext i32 %.0112 to i64                  ; 2 uses
  %i.cv = sext i32 %.0109 to i64                  ; 2 uses
  br i1 %.not3237.i168, label %SDL_PremultiplyAlpha_AXYZ8888.exit, label %.preheader.i169.preheader

.preheader.i169.preheader:                        ; preds = %.preheader.lr.ph.i167
  %i.cw = add i32 %1, -1
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = mul nsw i64 %i.cu, %i.cx
  %i.cz = add i32 %0, -1
  %i.da = zext i32 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 2                ; 2 uses
  %i.dc = getelementptr i8, ptr %.0111, i64 %i.cy
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.db
  %scevgep = getelementptr i8, ptr %i.dd, i64 4
  %i.de = mul nsw i64 %i.cv, %i.cx
  %i.df = getelementptr i8, ptr %.0110, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.db
  %scevgep232 = getelementptr i8, ptr %i.dg, i64 4
  %i.dh = zext i32 %0 to i64                      ; 2 uses
  %min.iters.check = icmp ult i32 %0, 4
  %bound0 = icmp ult ptr %.0110, %scevgep
  %bound1 = icmp ult ptr %.0111, %scevgep232
  %found.conflict = and i1 %bound0, %bound1
  %i.di = or i32 %.0112, %.0109
  %i.dj = icmp slt i32 %i.di, 0
  %i.dk = or i1 %found.conflict, %i.dj
  %n.vec = and i64 %i.dh, 4294967292              ; 4 uses
  %i.dl = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.dm = trunc nuw i64 %n.vec to i32
  %i.dn = sub i32 %0, %i.dm
  %cmp.n = icmp eq i64 %n.vec, %i.dh
  br label %.preheader.i169

.preheader.i169:                                  ; preds = %.preheader.i169.preheader, %._crit_edge.i183
  %.in.i170 = phi i32 [ %i.fm, %._crit_edge.i183 ], [ %1, %.preheader.i169.preheader ]
  %.03043.i171 = phi ptr [ %i.fo, %._crit_edge.i183 ], [ %.0110, %.preheader.i169.preheader ] ; 4 uses
  %.03142.i172 = phi ptr [ %i.fn, %._crit_edge.i183 ], [ %.0111, %.preheader.i169.preheader ] ; 4 uses
  %brmerge270 = select i1 %min.iters.check, i1 true, i1 %i.dk
  br i1 %brmerge270, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i169
  %i.do = getelementptr i8, ptr %.03043.i171, i64 %i.dl
  %i.dp = getelementptr i8, ptr %.03142.i172, i64 %i.dl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03043.i171, i64 %i.dq
  %next.gep234 = getelementptr i8, ptr %.03142.i172, i64 %i.dq
  %wide.load = load <4 x i32>, ptr %next.gep234, align 4, !alias.scope !48 ; 4 uses
  %i.dr = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.ds = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.dt = and <4 x i32> %i.ds, splat (i32 255)
  %i.du = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.dv = and <4 x i32> %i.du, splat (i32 255)
  %i.dw = and <4 x i32> %wide.load, splat (i32 255) ; 4 uses
  %i.dx = mul nuw nsw <4 x i32> %i.dw, %i.dr
  %i.dy = trunc nuw <4 x i32> %i.dx to <4 x i16>
  %i.dz = udiv <4 x i16> %i.dy, splat (i16 255)
  %i.ea = zext nneg <4 x i16> %i.dz to <4 x i32>
  %i.eb = mul nuw nsw <4 x i32> %i.dt, %i.dw
  %i.ec = trunc nuw <4 x i32> %i.eb to <4 x i16>
  %i.ed = udiv <4 x i16> %i.ec, splat (i16 255)
  %i.ee = zext nneg <4 x i16> %i.ed to <4 x i32>
  %i.ef = mul nuw nsw <4 x i32> %i.dv, %i.dw
  %i.eg = trunc nuw <4 x i32> %i.ef to <4 x i16>
  %i.eh = udiv <4 x i16> %i.eg, splat (i16 255)
  %i.ei = zext nneg <4 x i16> %i.eh to <4 x i32>
  %i.ej = shl nuw <4 x i32> %i.ea, splat (i32 24)
  %i.ek = shl nuw nsw <4 x i32> %i.ee, splat (i32 16)
  %i.el = shl nuw nsw <4 x i32> %i.ei, splat (i32 8)
  %i.em = or <4 x i32> %i.ej, %i.ek
  %i.en = or <4 x i32> %i.em, %i.el
  %i.eo = or disjoint <4 x i32> %i.en, %i.dw
  store <4 x i32> %i.eo, ptr %next.gep, align 4, !alias.scope !49, !noalias !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i183, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i169, %middle.block
  %.040.i173.ph = phi ptr [ %i.do, %middle.block ], [ %.03043.i171, %.preheader.i169 ]
  %.02739.i174.ph = phi ptr [ %i.dp, %middle.block ], [ %.03142.i172, %.preheader.i169 ]
  %.02838.i175.ph = phi i32 [ %i.dn, %middle.block ], [ %0, %.preheader.i169 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.040.i173 = phi ptr [ %i.fk, %scalar.ph ], [ %.040.i173.ph, %scalar.ph.preheader ] ; 2 uses
  %.02739.i174 = phi ptr [ %i.eq, %scalar.ph ], [ %.02739.i174.ph, %scalar.ph.preheader ] ; 2 uses
  %.02838.i175 = phi i32 [ %i.fl, %scalar.ph ], [ %.02838.i175.ph, %scalar.ph.preheader ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.02739.i174, i64 4
  %i.er = load i32, ptr %.02739.i174, align 4     ; 4 uses
  %i.es = lshr i32 %i.er, 24
  %i.et = lshr i32 %i.er, 16
  %i.eu = and i32 %i.et, 255
  %i.ev = lshr i32 %i.er, 8
  %i.ew = and i32 %i.ev, 255
  %i.ex = and i32 %i.er, 255                      ; 4 uses
  %i.ey = mul nuw nsw i32 %i.ex, %i.es
  %.lhs.trunc.i176 = trunc nuw i32 %i.ey to i16
  %i.ez = udiv i16 %.lhs.trunc.i176, 255
  %.zext.i177 = zext nneg i16 %i.ez to i32
  %i.fa = mul nuw nsw i32 %i.eu, %i.ex
  %.lhs.trunc33.i178 = trunc nuw i32 %i.fa to i16
  %i.fb = udiv i16 %.lhs.trunc33.i178, 255
  %.zext34.i179 = zext nneg i16 %i.fb to i32
  %i.fc = mul nuw nsw i32 %i.ew, %i.ex
  %.lhs.trunc35.i180 = trunc nuw i32 %i.fc to i16
  %i.fd = udiv i16 %.lhs.trunc35.i180, 255
  %.zext36.i181 = zext nneg i16 %i.fd to i32
  %i.fe = shl nuw i32 %.zext.i177, 24
  %i.ff = shl nuw nsw i32 %.zext34.i179, 16
  %i.fg = shl nuw nsw i32 %.zext36.i181, 8
  %i.fh = or i32 %i.fe, %i.ff
  %i.fi = or i32 %i.fh, %i.fg
  %i.fj = or disjoint i32 %i.fi, %i.ex
  %i.fk = getelementptr inbounds nuw i8, ptr %.040.i173, i64 4
  store i32 %i.fj, ptr %.040.i173, align 4
  %i.fl = add nsw i32 %.02838.i175, -1            ; 2 uses
  %.not32.i182 = icmp eq i32 %i.fl, 0
  br i1 %.not32.i182, label %._crit_edge.i183, label %scalar.ph, !llvm.loop !42

._crit_edge.i183:                                 ; preds = %scalar.ph, %middle.block
  %i.fm = add nsw i32 %.in.i170, -1               ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %.03142.i172, i64 %i.cu
  %i.fo = getelementptr inbounds i8, ptr %.03043.i171, i64 %i.cv
  %.not.i184 = icmp eq i32 %i.fm, 0
  br i1 %.not.i184, label %SDL_PremultiplyAlpha_AXYZ8888.exit, label %.preheader.i169, !llvm.loop !43

bb.x:                                             ; preds = %bb.u, %bb.u
  %.not37.i = icmp eq i32 %1, 0
  br i1 %.not37.i, label %SDL_PremultiplyAlpha_AXYZ8888.exit, label %.preheader.lr.ph.i185

.preheader.lr.ph.i185:                            ; preds = %bb.x
  %.not3233.i = icmp eq i32 %0, 0
  %i.fp = sext i32 %.0112 to i64
  %i.fq = sext i32 %.0109 to i64
  br i1 %.not3233.i, label %SDL_PremultiplyAlpha_AXYZ8888.exit, label %.preheader.i186.preheader

.preheader.i186.preheader:                        ; preds = %.preheader.lr.ph.i185
  %xtraiter = and i32 %0, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.fr = add nsw i32 %0, -1
  %i.fs = icmp eq i32 %0, 1
  br label %.preheader.i186

.preheader.i186:                                  ; preds = %.preheader.i186.preheader, %._crit_edge.i189
  %.in.i187 = phi i32 [ %i.hb, %._crit_edge.i189 ], [ %1, %.preheader.i186.preheader ]
  %.03039.i = phi ptr [ %i.hd, %._crit_edge.i189 ], [ %.0110, %.preheader.i186.preheader ] ; 4 uses
  %.03138.i = phi ptr [ %i.hc, %._crit_edge.i189 ], [ %.0111, %.preheader.i186.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.i186
  %i.ft = getelementptr inbounds nuw i8, ptr %.03138.i, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.03138.i, i64 8
  %i.fv = load float, ptr %i.ft, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %.03138.i, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %.03039.i, i64 16
  %i.fy = load float, ptr %.03138.i, align 4      ; 2 uses
  %i.fz = load <2 x float>, ptr %i.fu, align 4
  %i.ga = insertelement <4 x float> poison, float %i.fy, i64 0
  %13 = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.gb = insertelement <4 x float> poison, float %i.fv, i64 1
  %i.gc = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %14 = shufflevector <4 x float> %i.gb, <4 x float> %i.gc, <4 x i32> <i32 poison, i32 1, i32 4, i32 5>
  %i.gd = fmul <4 x float> %13, %14
  %15 = insertelement <4 x float> %i.gd, float %i.fy, i64 0
  store <4 x float> %15, ptr %.03039.i, align 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.i186
  %.036.i.unr = phi ptr [ %.03039.i, %.preheader.i186 ], [ %i.fx, %.prol.loopexit.unr-lcssa ]
  %.02735.i.unr = phi ptr [ %.03138.i, %.preheader.i186 ], [ %i.fw, %.prol.loopexit.unr-lcssa ]
  %.02834.i.unr = phi i32 [ %0, %.preheader.i186 ], [ %i.fr, %.prol.loopexit.unr-lcssa ]
  br i1 %i.fs, label %._crit_edge.i189, label %.preheader.i186.new

.preheader.i186.new:                              ; preds = %.prol.loopexit, %.preheader.i186.new
  %.036.i = phi ptr [ %i.gt, %.preheader.i186.new ], [ %.036.i.unr, %.prol.loopexit ] ; 3 uses
  %.02735.i = phi ptr [ %i.gs, %.preheader.i186.new ], [ %.02735.i.unr, %.prol.loopexit ] ; 7 uses
  %.02834.i = phi i32 [ %i.ha, %.preheader.i186.new ], [ %.02834.i.unr, %.prol.loopexit ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.02735.i, i64 4
  %i.gf = getelementptr inbounds nuw i8, ptr %.02735.i, i64 8
  %i.gg = load float, ptr %i.ge, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.02735.i, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.036.i, i64 16
  %i.gj = load float, ptr %.02735.i, align 4      ; 2 uses
  %i.gk = load <2 x float>, ptr %i.gf, align 4
  %i.gl = insertelement <4 x float> poison, float %i.gj, i64 0
  %16 = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.gm = insertelement <4 x float> poison, float %i.gg, i64 1
  %i.gn = shufflevector <2 x float> %i.gk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %i.gm, <4 x float> %i.gn, <4 x i32> <i32 poison, i32 1, i32 4, i32 5>
  %i.go = fmul <4 x float> %16, %17
  %18 = insertelement <4 x float> %i.go, float %i.gj, i64 0
  store <4 x float> %18, ptr %.036.i, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.02735.i, i64 20
  %i.gq = getelementptr inbounds nuw i8, ptr %.02735.i, i64 24
  %i.gr = load float, ptr %i.gp, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %.02735.i, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %.036.i, i64 32
  %i.gu = load float, ptr %i.gh, align 4          ; 2 uses
  %i.gv = load <2 x float>, ptr %i.gq, align 4
  %i.gw = insertelement <4 x float> poison, float %i.gu, i64 0
  %19 = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.gx = insertelement <4 x float> poison, float %i.gr, i64 1
  %i.gy = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %i.gx, <4 x float> %i.gy, <4 x i32> <i32 poison, i32 1, i32 4, i32 5>
  %i.gz = fmul <4 x float> %19, %20
  %21 = insertelement <4 x float> %i.gz, float %i.gu, i64 0
  store <4 x float> %21, ptr %i.gi, align 4
  %i.ha = add nsw i32 %.02834.i, -2               ; 2 uses
  %.not32.i188.1 = icmp eq i32 %i.ha, 0
  br i1 %.not32.i188.1, label %._crit_edge.i189, label %.preheader.i186.new, !llvm.loop !44

._crit_edge.i189:                                 ; preds = %.preheader.i186.new, %.prol.loopexit
  %i.hb = add nsw i32 %.in.i187, -1               ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %.03138.i, i64 %i.fp
  %i.hd = getelementptr inbounds i8, ptr %.03039.i, i64 %i.fq
  %.not.i190 = icmp eq i32 %i.hb, 0
  br i1 %.not.i190, label %SDL_PremultiplyAlpha_AXYZ8888.exit, label %.preheader.i186, !llvm.loop !45

bb.y:                                             ; preds = %bb.u
  %i.he = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.37) #10 ; 0 uses
  br label %bb.aa

SDL_PremultiplyAlpha_AXYZ8888.exit:               ; preds = %._crit_edge.i189, %._crit_edge.i183, %._crit_edge.i, %.preheader.lr.ph.i185, %bb.x, %.preheader.lr.ph.i167, %bb.w, %.preheader.lr.ph.i, %bb.v
  %.not143 = icmp eq ptr %.0110, %10
  br i1 %.not143, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %SDL_PremultiplyAlpha_AXYZ8888.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %.0107, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.0107, i64 16
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = tail call zeroext i1 @SDL_ConvertPixelsAndColorspace_REAL(i32 noundef %0, i32 noundef %1, i32 noundef %.0106, i32 noundef %., i32 noundef 0, ptr noundef %i.hg, i32 noundef %i.hi, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef nonnull %10, i32 noundef %11)
  br label %.thread195

bb.aa:                                            ; preds = %SDL_PremultiplyAlpha_AXYZ8888.exit, %bb.y
  %.0 = phi i1 [ false, %bb.y ], [ true, %SDL_PremultiplyAlpha_AXYZ8888.exit ] ; 2 uses
  %.not144 = icmp eq ptr %.0107, null
  br i1 %.not144, label %.thread, label %.thread195

.thread195:                                       ; preds = %bb.z, %bb.p, %bb.aa
  %.0200 = phi i1 [ %.0, %bb.aa ], [ %i.hj, %bb.z ], [ false, %bb.p ]
  %.1199 = phi ptr [ %.0107, %bb.aa ], [ %.0107, %bb.z ], [ %i.m, %bb.p ]
  tail call void @SDL_DestroySurface_REAL(ptr noundef nonnull %.1199)
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.o, %bb.aa, %.thread195, %bb.h, %bb.f, %bb.d, %bb.b
  %.0108 = phi i1 [ %i.a, %bb.b ], [ %i.d, %bb.h ], [ %i.c, %bb.f ], [ %i.b, %bb.d ], [ %.0200, %.thread195 ], [ %.0, %bb.aa ], [ false, %bb.o ], [ false, %bb.s ]
  ret i1 %.0108
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_PremultiplySurfaceAlpha_REAL(ptr nofree noundef readonly captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_SurfaceValid.exit.thread, label %SDL_SurfaceValid.exit

SDL_SurfaceValid.exit:                            ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @SDL_surface_magic
  br i1 %i.c, label %bb.b, label %SDL_SurfaceValid.exit.thread

SDL_SurfaceValid.exit.thread:                     ; preds = %bb.a, %SDL_SurfaceValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  br label %bb.c

bb.b:                                             ; preds = %SDL_SurfaceValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = tail call fastcc zeroext i1 @SDL_PremultiplyAlphaPixelsAndColorspace(i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.f, i32 noundef %i.n, ptr noundef %i.p, i32 noundef %i.r, i32 noundef %i.l, i32 noundef %i.f, i32 noundef %i.n, ptr noundef %i.p, i32 noundef %i.r, i1 noundef zeroext %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %SDL_SurfaceValid.exit.thread
  %.0 = phi i1 [ %i.s, %bb.b ], [ %i.d, %SDL_SurfaceValid.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ClearSurface_REAL(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.SDL_Rect, align 4           ; 6 uses
  %6 = alloca %struct.SDL_Rect, align 4           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_SurfaceValid.exit.thread, label %SDL_SurfaceValid.exit

SDL_SurfaceValid.exit:                            ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @SDL_surface_magic
  br i1 %i.c, label %SDL_SetSurfaceClipRect_REAL.exit, label %SDL_SurfaceValid.exit.thread

SDL_SurfaceValid.exit.thread:                     ; preds = %bb.a, %SDL_SurfaceValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  br label %bb.s

SDL_SetSurfaceClipRect_REAL.exit:                 ; preds = %SDL_SurfaceValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.g, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load <2 x i32>, ptr %i.f, align 8
  store <2 x i32> %i.h, ptr %.sroa.5.0..sroa_idx, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %.not = icmp eq i32 %i.j, 0
  %.mask = and i32 %i.j, -268435456
  %.not82 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not82
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %SDL_SetSurfaceClipRect_REAL.exit
  %i.k = and i32 %i.j, 255
  %i.l = icmp samesign ult i32 %i.k, 5
  br i1 %i.l, label %.critedge, label %bb.o

.critedge:                                        ; preds = %bb.b
  %i.m = fcmp olt float %1, 0.000000e+00
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.n = fcmp ogt float %1, 1.000000e+00
  %i.o = select i1 %i.n, float 1.000000e+00, float %1
  %i.p = fmul float %i.o, 2.550000e+02
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.q = phi float [ %i.p, %bb.c ], [ 0.000000e+00, %.critedge ]
  %i.r = tail call float @SDL_roundf_REAL(float noundef %i.q) #10
  %i.s = fptoui float %i.r to i8
  %i.t = fcmp olt float %2, 0.000000e+00
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = fcmp ogt float %2, 1.000000e+00
  %i.v = select i1 %i.u, float 1.000000e+00, float %2
  %i.w = fmul float %i.v, 2.550000e+02
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = phi float [ %i.w, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.y = tail call float @SDL_roundf_REAL(float noundef %i.x) #10
  %i.z = fptoui float %i.y to i8
  %i.aa = fcmp olt float %3, 0.000000e+00
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = fcmp ogt float %3, 1.000000e+00
  %i.ac = select i1 %i.ab, float 1.000000e+00, float %3
  %i.ad = fmul float %i.ac, 2.550000e+02
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ae = phi float [ %i.ad, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.af = tail call float @SDL_roundf_REAL(float noundef %i.ae) #10
  %i.ag = fptoui float %i.af to i8
  %i.ah = fcmp olt float %4, 0.000000e+00
  br i1 %i.ah, label %SDL_SurfaceValid.exit.i100, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = fcmp ogt float %4, 1.000000e+00
  %i.aj = select i1 %i.ai, float 1.000000e+00, float %4
  %i.ak = fmul float %i.aj, 2.550000e+02
  br label %SDL_SurfaceValid.exit.i100

SDL_SurfaceValid.exit.i100:                       ; preds = %bb.i, %bb.h
  %i.al = phi float [ %i.ak, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.am = tail call float @SDL_roundf_REAL(float noundef %i.al) #10
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = icmp eq ptr %i.an, @SDL_surface_magic
  br i1 %i.ao, label %bb.j, label %SDL_SurfaceValid.exit.thread.i101

SDL_SurfaceValid.exit.thread.i101:                ; preds = %SDL_SurfaceValid.exit.i100
  %i.ap = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %SDL_MapSurfaceRGBA_REAL.exit

bb.j:                                             ; preds = %SDL_SurfaceValid.exit.i100
  %i.aq = fptoui float %i.am to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 @SDL_MapRGBA_REAL(ptr noundef %i.as, ptr noundef %i.au, i8 noundef zeroext %i.s, i8 noundef zeroext %i.z, i8 noundef zeroext %i.ag, i8 noundef zeroext %i.aq) #10
  br label %SDL_MapSurfaceRGBA_REAL.exit

SDL_MapSurfaceRGBA_REAL.exit:                     ; preds = %SDL_SurfaceValid.exit.thread.i101, %bb.j
  %.0.i102 = phi i32 [ %i.av, %bb.j ], [ 1, %SDL_SurfaceValid.exit.thread.i101 ]
  %i.aw = tail call zeroext i1 @SDL_FillSurfaceRect_REAL(ptr noundef nonnull %0, ptr noundef null, i32 noundef %.0.i102) #10
  br label %SDL_SurfaceValid.exit.i113

bb.k:                                             ; preds = %SDL_SetSurfaceClipRect_REAL.exit
end_hunk_0
