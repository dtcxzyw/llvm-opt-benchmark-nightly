Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/rdppm-8?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@get_gray_rgb_row:bb.a
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !33
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.bu
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !33
  %i.cp = getelementptr inbounds i8, ptr %i.ck, i64 %i.bv
  store i8 %i.cm, ptr %i.cp, align 1, !tbaa !33
  %i.cq = getelementptr inbounds i8, ptr %i.ck, i64 %i.bw
  %i.cr = add i32 %.1106, -2                      ; 2 uses
  %.not89.1 = icmp eq i32 %i.cr, 0
  br i1 %.not89.1, label %.loopexit, label %.lr.ph107.new, !llvm.loop !89

bb.g:                                             ; preds = %bb.c
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %.not90108, label %.loopexit, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.h
  %i.cs = sext i32 %i.m to i64
  %i.ct = sext i32 %i.k to i64
  %i.cu = sext i32 %i.i to i64
  %i.cv = zext nneg i32 %i.o to i64
  %i.cw = sext i32 %i.q to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph102, %bb.i
  %.2101 = phi i32 [ %i.ao, %.lr.ph102 ], [ %i.dk, %bb.i ]
  %.278100 = phi ptr [ %i.ag, %.lr.ph102 ], [ %i.cx, %bb.i ] ; 2 uses
  %.28299 = phi ptr [ %i.af, %.lr.ph102 ], [ %i.dj, %bb.i ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.278100, i64 1
  %i.cy = load i8, ptr %.278100, align 1, !tbaa !33
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !33  ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.28299, i64 %i.cs
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !33
  %i.dd = getelementptr inbounds i8, ptr %.28299, i64 %i.ct
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !33
  %i.de = getelementptr inbounds i8, ptr %.28299, i64 %i.cu
  store i8 %i.db, ptr %i.de, align 1, !tbaa !33
  %i.df = load i32, ptr %i.ah, align 8, !tbaa !26
  %notmask88 = shl nsw i32 -1, %i.df
  %i.dg = trunc i32 %notmask88 to i8
  %i.dh = xor i8 %i.dg, -1
  %i.di = getelementptr inbounds nuw i8, ptr %.28299, i64 %i.cv
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !33
  %i.dj = getelementptr inbounds i8, ptr %.28299, i64 %i.cw
  %i.dk = add i32 %.2101, -1                      ; 2 uses
  %.not87 = icmp eq i32 %i.dk, 0
  br i1 %.not87, label %.loopexit, label %bb.i, !llvm.loop !90

bb.j:                                             ; preds = %bb.g
  br i1 %.not90108, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.dl = sext i32 %i.m to i64                    ; 3 uses
  %i.dm = sext i32 %i.k to i64                    ; 3 uses
  %i.dn = sext i32 %i.i to i64                    ; 3 uses
  %i.do = sext i32 %i.q to i64                    ; 3 uses
  %xtraiter = and i32 %i.ao, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.dq = load i8, ptr %i.ag, align 1, !tbaa !33
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !33  ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %i.af, i64 %i.dl
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !33
  %i.dv = getelementptr inbounds i8, ptr %i.af, i64 %i.dm
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !33
  %i.dw = getelementptr inbounds i8, ptr %i.af, i64 %i.dn
  store i8 %i.dt, ptr %i.dw, align 1, !tbaa !33
  %i.dx = getelementptr inbounds i8, ptr %i.af, i64 %i.do
  %i.dy = add nsw i32 %i.ao, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.397.unr = phi i32 [ %i.ao, %.lr.ph ], [ %i.dy, %.prol.loopexit.unr-lcssa ]
  %.37996.unr = phi ptr [ %i.ag, %.lr.ph ], [ %i.dp, %.prol.loopexit.unr-lcssa ]
  %.38395.unr = phi ptr [ %i.af, %.lr.ph ], [ %i.dx, %.prol.loopexit.unr-lcssa ]
  %i.dz = icmp eq i32 %i.ao, 1
  br i1 %i.dz, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.397 = phi i32 [ %i.es, %.lr.ph.new ], [ %.397.unr, %.prol.loopexit ]
  %.37996 = phi ptr [ %i.ej, %.lr.ph.new ], [ %.37996.unr, %.prol.loopexit ] ; 3 uses
  %.38395 = phi ptr [ %i.er, %.lr.ph.new ], [ %.38395.unr, %.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.37996, i64 1
  %i.eb = load i8, ptr %.37996, align 1, !tbaa !33
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !33  ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.38395, i64 %i.dl
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !33
  %i.eg = getelementptr inbounds i8, ptr %.38395, i64 %i.dm
  store i8 %i.ee, ptr %i.eg, align 1, !tbaa !33
  %i.eh = getelementptr inbounds i8, ptr %.38395, i64 %i.dn
  store i8 %i.ee, ptr %i.eh, align 1, !tbaa !33
  %i.ei = getelementptr inbounds i8, ptr %.38395, i64 %i.do ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.37996, i64 2
  %i.ek = load i8, ptr %i.ea, align 1, !tbaa !33
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !33  ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %i.ei, i64 %i.dl
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !33
  %i.ep = getelementptr inbounds i8, ptr %i.ei, i64 %i.dm
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !33
  %i.eq = getelementptr inbounds i8, ptr %i.ei, i64 %i.dn
  store i8 %i.en, ptr %i.eq, align 1, !tbaa !33
  %i.er = getelementptr inbounds i8, ptr %i.ei, i64 %i.do
  %i.es = add i32 %.397, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.es, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !91

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.i, %.prol.loopexit129, %.lr.ph107.new, %.prol.loopexit133, %.lr.ph112.new, %bb.j, %bb.h, %bb.f, %bb.e
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_gray_cmyk_row(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = tail call i64 @fread(ptr noundef %i.f, i64 noundef 1, i64 noundef %i.h, ptr noundef %i.j)
  %i.l = load i64, ptr %i.g, align 8, !tbaa !48
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 43, ptr %i.o, align 8, !tbaa !32
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !34
  tail call void %i.p(ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 7 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !49   ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26
  %notmask = shl nsw i32 -1, %i.v
  %i.w = xor i32 %notmask, %i.d
  %i.x = icmp eq i32 %i.w, -1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !44   ; 9 uses
  %.not4657 = icmp eq i32 %i.z, 0                 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not4657, label %.loopexit, label %rgb_to_cmyk.exit51.lr.ph

rgb_to_cmyk.exit51.lr.ph:                         ; preds = %bb.d
  %i.aa = sitofp i32 %i.d to double               ; 3 uses
  %i.ab = zext i32 %i.z to i64                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 4
  br i1 %min.iters.check, label %rgb_to_cmyk.exit51.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %rgb_to_cmyk.exit51.lr.ph
  %i.ac = add i32 %i.z, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = getelementptr i8, ptr %i.s, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = zext i32 %i.z to i64
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah
  %bound0 = icmp ult ptr %i.s, %i.ai
  %bound1 = icmp ult ptr %i.t, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %rgb_to_cmyk.exit51.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4294967292              ; 5 uses
  %i.aj = shl nuw nsw i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %i.s, i64 %i.aj
  %i.al = trunc nuw i64 %n.vec to i32
  %i.am = sub i32 %i.z, %i.al
  %i.an = getelementptr i8, ptr %i.t, i64 %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ao
  %next.gep67 = getelementptr i8, ptr %i.t, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep67, align 1, !tbaa !33, !alias.scope !98
  %i.ap = uitofp <4 x i8> %wide.load to <4 x double>
  %i.aq = fdiv <4 x double> %i.ap, %broadcast.splat
  %i.ar = fsub <4 x double> splat (double 1.000000e+00), %i.aq ; 5 uses
  %i.as = fcmp oeq <4 x double> %i.ar, splat (double 1.000000e+00)
  %i.at = fsub <4 x double> %i.ar, %i.ar
  %i.au = fsub <4 x double> splat (double 1.000000e+00), %i.ar
  %i.av = fneg <4 x double> %i.at
  %i.aw = fdiv <4 x double> %i.av, %i.au
  %i.ax = select <4 x i1> %i.as, <4 x double> splat (double -0.000000e+00), <4 x double> %i.aw
  %i.ay = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ax, <4 x double> %broadcast.splat, <4 x double> %broadcast.splat)
  %i.az = fadd <4 x double> %i.ay, splat (double 5.000000e-01)
  %i.ba = fptoui <4 x double> %i.az to <4 x i8>
  %i.bb = fneg <4 x double> %i.ar
  %i.bc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bb, <4 x double> %broadcast.splat, <4 x double> %broadcast.splat)
  %i.bd = fadd <4 x double> %i.bc, splat (double 5.000000e-01)
  %i.be = fptoui <4 x double> %i.bd to <4 x i8>
  %interleaved.vec = shufflevector <4 x i8> %i.ba, <4 x i8> %i.be, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 1, i32 1, i32 1, i32 5, i32 2, i32 2, i32 2, i32 6, i32 3, i32 3, i32 3, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !33, !alias.scope !99, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  br i1 %cmp.n, label %.loopexit, label %rgb_to_cmyk.exit51.preheader

rgb_to_cmyk.exit51.preheader:                     ; preds = %vector.memcheck, %rgb_to_cmyk.exit51.lr.ph, %middle.block
  %.060.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %rgb_to_cmyk.exit51.lr.ph ], [ %i.ak, %middle.block ]
  %.04059.ph = phi i32 [ %i.z, %vector.memcheck ], [ %i.z, %rgb_to_cmyk.exit51.lr.ph ], [ %i.am, %middle.block ]
  %.04258.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %rgb_to_cmyk.exit51.lr.ph ], [ %i.an, %middle.block ]
  %i.bg = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %rgb_to_cmyk.exit51

rgb_to_cmyk.exit51:                               ; preds = %rgb_to_cmyk.exit51.preheader, %rgb_to_cmyk.exit51
  %.060 = phi ptr [ %i.bz, %rgb_to_cmyk.exit51 ], [ %.060.ph, %rgb_to_cmyk.exit51.preheader ] ; 2 uses
  %.04059 = phi i32 [ %i.ca, %rgb_to_cmyk.exit51 ], [ %.04059.ph, %rgb_to_cmyk.exit51.preheader ]
  %.04258 = phi ptr [ %i.bi, %rgb_to_cmyk.exit51 ], [ %.04258.ph, %rgb_to_cmyk.exit51.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.04258, i64 1
  %i.bj = load i8, ptr %.04258, align 1, !tbaa !33
  %i.bk = uitofp i8 %i.bj to double
  %i.bl = fdiv double %i.bk, %i.aa
  %i.bm = fsub double 1.000000e+00, %i.bl         ; 5 uses
  %i.bn = fcmp oeq double %i.bm, 1.000000e+00
  %i.bo = fsub double %i.bm, %i.bm
  %i.bp = fsub double 1.000000e+00, %i.bm
  %i.bq = fneg double %i.bo
  %.neg63 = fdiv double %i.bq, %i.bp
  %i.br = select i1 %i.bn, double -0.000000e+00, double %.neg63
  %i.bs = fneg double %i.bm
  %i.bt = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bs, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bh, <2 x double> %i.bh)
  %i.bw = fadd <2 x double> %i.bv, splat (double 5.000000e-01)
  %i.bx = fptoui <2 x double> %i.bw to <2 x i8>
  %i.by = shufflevector <2 x i8> %i.bx, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i8> %i.by, ptr %.060, align 1, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %.060, i64 4
  %i.ca = add i32 %.04059, -1                     ; 2 uses
  %.not46 = icmp eq i32 %i.ca, 0
  br i1 %.not46, label %.loopexit, label %rgb_to_cmyk.exit51, !llvm.loop !96

bb.e:                                             ; preds = %bb.c
  br i1 %.not4657, label %.loopexit, label %rgb_to_cmyk.exit

rgb_to_cmyk.exit:                                 ; preds = %bb.e, %rgb_to_cmyk.exit
  %.156 = phi ptr [ %i.da, %rgb_to_cmyk.exit ], [ %i.s, %bb.e ] ; 2 uses
  %.14155 = phi i32 [ %i.db, %rgb_to_cmyk.exit ], [ %i.z, %bb.e ]
  %.14354 = phi ptr [ %i.cb, %rgb_to_cmyk.exit ], [ %i.t, %bb.e ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.14354, i64 1
  %i.cc = load i8, ptr %.14354, align 1, !tbaa !33
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !33
  %i.cg = load i32, ptr %i.u, align 8, !tbaa !26
  %notmask45 = shl nsw i32 -1, %i.cg
  %i.ch = xor i32 %notmask45, -1
  %i.ci = uitofp i8 %i.cf to double
  %i.cj = uitofp nneg i32 %i.ch to double         ; 2 uses
  %i.ck = fdiv double %i.ci, %i.cj
  %i.cl = fsub double 1.000000e+00, %i.ck         ; 5 uses
  %i.cm = fcmp oeq double %i.cl, 1.000000e+00
  %i.cn = fsub double %i.cl, %i.cl
  %i.co = fsub double 1.000000e+00, %i.cl
  %i.cp = fneg double %i.cn
  %.neg = fdiv double %i.cp, %i.co
  %i.cq = select i1 %i.cm, double -0.000000e+00, double %.neg
  %i.cr = fneg double %i.cl
  %i.cs = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cr, i64 1
  %i.cu = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cv, <2 x double> %i.cv)
  %i.cx = fadd <2 x double> %i.cw, splat (double 5.000000e-01)
  %i.cy = fptoui <2 x double> %i.cx to <2 x i8>
  %i.cz = shufflevector <2 x i8> %i.cy, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i8> %i.cz, ptr %.156, align 1, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %.156, i64 4
  %i.db = add i32 %.14155, -1                     ; 2 uses
  %.not = icmp eq i32 %i.db, 0
  br i1 %.not, label %.loopexit, label %rgb_to_cmyk.exit, !llvm.loop !97

.loopexit:                                        ; preds = %rgb_to_cmyk.exit, %rgb_to_cmyk.exit51, %middle.block, %bb.e, %bb.d
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_word_rgb_row(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46
  %.fr69 = freeze i32 %i.f
  %i.g = zext i32 %.fr69 to i64                   ; 6 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.g
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @alpha_index, i64 %i.g
  %i.o = load i32, ptr %i.n, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.g
  %i.q = load i32, ptr %i.p, align 4, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = tail call i64 @fread(ptr noundef %i.s, i64 noundef 1, i64 noundef %i.u, ptr noundef %i.w)
  %i.y = load i64, ptr %i.t, align 8, !tbaa !48
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 43, ptr %i.ab, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !34
  tail call void %i.ac(ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !44 ; 3 uses
  %.not64 = icmp eq i32 %i.ae, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !49  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  %i.aj = sext i32 %i.i to i64                    ; 2 uses
  %i.ak = sext i32 %i.k to i64                    ; 2 uses
  %i.al = sext i32 %i.m to i64                    ; 2 uses
  %i.am = and i64 %i.g, 4294967292
  %i.an = icmp eq i64 %i.am, 12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = zext nneg i32 %i.o to i64
  %i.aq = sext i32 %i.q to i64                    ; 2 uses
  br i1 %i.an, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %.067.us = phi i32 [ %i.cs, %bb.i ], [ %i.ae, %.lr.ph ]
  %.06166.us = phi ptr [ %i.cb, %bb.i ], [ %i.af, %.lr.ph ] ; 7 uses
  %.06265.us = phi ptr [ %i.cr, %bb.i ], [ %i.ai, %.lr.ph ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06166.us, i64 1
  %i.as = load i8, ptr %.06166.us, align 1, !tbaa !33
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %.06166.us, i64 2
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !33
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax            ; 2 uses
  %i.az = icmp ugt i32 %i.ay, %i.d
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.ba = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i32 1038, ptr %i.bb, align 8, !tbaa !32
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !34
  tail call void %i.bc(ptr noundef nonnull %0) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %i.bd = zext nneg i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !33
  %i.bg = getelementptr inbounds i8, ptr %.06265.us, i64 %i.aj
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %.06166.us, i64 3
  %i.bi = load i8, ptr %i.av, align 1, !tbaa !33
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.06166.us, i64 4
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !33
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bk, %i.bn            ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, %i.d
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i32 1038, ptr %i.br, align 8, !tbaa !32
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !34
  tail call void %i.bs(ptr noundef nonnull %0) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !33
  %i.bw = getelementptr inbounds i8, ptr %.06265.us, i64 %i.ak
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %.06166.us, i64 5
  %i.by = load i8, ptr %i.bl, align 1, !tbaa !33
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.06166.us, i64 6
  %i.cc = load i8, ptr %i.bx, align 1, !tbaa !33
  %i.cd = zext i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.ca, %i.cd            ; 2 uses
  %i.cf = icmp ugt i32 %i.ce, %i.d
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i32 1038, ptr %i.ch, align 8, !tbaa !32
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !34
  tail call void %i.ci(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cj = zext nneg i32 %i.ce to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !33
  %i.cm = getelementptr inbounds i8, ptr %.06265.us, i64 %i.al
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !33
  %i.cn = load i32, ptr %i.ao, align 8, !tbaa !26
  %notmask.us = shl nsw i32 -1, %i.cn
  %i.co = trunc i32 %notmask.us to i8
  %i.cp = xor i8 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %.06265.us, i64 %i.ap
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !33
  %i.cr = getelementptr inbounds i8, ptr %.06265.us, i64 %i.aq
  %i.cs = add i32 %.067.us, -1                    ; 2 uses
  %.not.us = icmp eq i32 %i.cs, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !102

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.067 = phi i32 [ %i.eq, %bb.o ], [ %i.ae, %.lr.ph ]
  %.06166 = phi ptr [ %i.ed, %bb.o ], [ %i.af, %.lr.ph ] ; 7 uses
  %.06265 = phi ptr [ %i.ep, %bb.o ], [ %i.ai, %.lr.ph ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06166, i64 1
  %i.cu = load i8, ptr %.06166, align 1, !tbaa !33
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.06166, i64 2
  %i.cy = load i8, ptr %i.ct, align 1, !tbaa !33
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz            ; 2 uses
  %i.db = icmp ugt i32 %i.da, %i.d
  br i1 %i.db, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  %i.dc = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store i32 1038, ptr %i.dd, align 8, !tbaa !32
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !34
  tail call void %i.de(ptr noundef nonnull %0) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split
  %i.df = zext nneg i32 %i.da to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !33
  %i.di = getelementptr inbounds i8, ptr %.06265, i64 %i.aj
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %.06166, i64 3
  %i.dk = load i8, ptr %i.cx, align 1, !tbaa !33
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.06166, i64 4
  %i.do = load i8, ptr %i.dj, align 1, !tbaa !33
  %i.dp = zext i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dm, %i.dp            ; 2 uses
  %i.dr = icmp ugt i32 %i.dq, %i.d
  br i1 %i.dr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ds = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store i32 1038, ptr %i.dt, align 8, !tbaa !32
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !34
  tail call void %i.du(ptr noundef nonnull %0) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dv = zext nneg i32 %i.dq to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !33
  %i.dy = getelementptr inbounds i8, ptr %.06265, i64 %i.ak
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %.06166, i64 5
  %i.ea = load i8, ptr %i.dn, align 1, !tbaa !33
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.06166, i64 6
  %i.ee = load i8, ptr %i.dz, align 1, !tbaa !33
  %i.ef = zext i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ec, %i.ef            ; 2 uses
  %i.eh = icmp ugt i32 %i.eg, %i.d
  br i1 %i.eh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ei = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  store i32 1038, ptr %i.ej, align 8, !tbaa !32
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !34
  tail call void %i.ek(ptr noundef nonnull %0) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.el = zext nneg i32 %i.eg to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !33
  %i.eo = getelementptr inbounds i8, ptr %.06265, i64 %i.al
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !33
  %i.ep = getelementptr inbounds i8, ptr %.06265, i64 %i.aq
  %i.eq = add i32 %.067, -1                       ; 2 uses
  %.not = icmp eq i32 %i.eq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.o, %bb.i, %bb.c
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_word_rgb_cmyk_row(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = tail call i64 @fread(ptr noundef %i.f, i64 noundef 1, i64 noundef %i.h, ptr noundef %i.j)
  %i.l = load i64, ptr %i.g, align 8, !tbaa !48
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 43, ptr %i.o, align 8, !tbaa !32
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !34
  tail call void %i.p(ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26
  %notmask = shl nsw i32 -1, %i.v
  %i.w = xor i32 %notmask, %i.d
  %i.x = icmp eq i32 %i.w, -1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !44   ; 3 uses
  %.not95106 = icmp eq i32 %i.z, 0                ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  br i1 %.not95106, label %.loopexit, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.d
  %i.aa = sitofp i32 %i.d to double               ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0 ; 3 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = shufflevector <2 x double> %i.ab, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ae = shufflevector <2 x double> %i.ab, <2 x double> poison, <4 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph110, %rgb_to_cmyk.exit100
  %.0109 = phi i32 [ %i.z, %.lr.ph110 ], [ %i.cw, %rgb_to_cmyk.exit100 ]
  %.088108 = phi ptr [ %i.t, %.lr.ph110 ], [ %i.bh, %rgb_to_cmyk.exit100 ] ; 7 uses
  %.090107 = phi ptr [ %i.s, %.lr.ph110 ], [ %i.cv, %rgb_to_cmyk.exit100 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.088108, i64 1
  %i.ag = load i8, ptr %.088108, align 1, !tbaa !33
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.088108, i64 2
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !33  ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ai, %i.al
  %i.an = icmp ugt i32 %i.am, %i.d
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i32 1038, ptr %i.ap, align 8, !tbaa !32
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !34
  tail call void %i.aq(ptr noundef nonnull %0) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.088108, i64 3
  %i.as = load i8, ptr %i.aj, align 1, !tbaa !33
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %.088108, i64 4
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !33  ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  %i.az = icmp ugt i32 %i.ay, %i.d
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i32 1038, ptr %i.bb, align 8, !tbaa !32
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !34
  tail call void %i.bc(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.088108, i64 5
  %i.be = load i8, ptr %i.av, align 1, !tbaa !33
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.088108, i64 6
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !33  ; 2 uses
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bg, %i.bj
  %i.bl = icmp ugt i32 %i.bk, %i.d
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i32 1038, ptr %i.bn, align 8, !tbaa !32
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !34
  tail call void %i.bo(ptr noundef nonnull %0) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bp = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %i.bq = insertelement <2 x i8> %i.bp, i8 %i.aw, i64 1
  %i.br = uitofp <2 x i8> %i.bq to <2 x double>
  %i.bs = fdiv <2 x double> %i.br, %i.ac
  %i.bt = fsub <2 x double> splat (double 1.000000e+00), %i.bs ; 3 uses
  %i.bu = uitofp i8 %i.bi to double
  %i.bv = fdiv double %i.bu, %i.aa
  %i.bw = fsub double 1.000000e+00, %i.bv         ; 3 uses
  %i.bx = extractelement <2 x double> %i.bt, i64 0 ; 2 uses
  %i.by = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.bz = fcmp olt double %i.bx, %i.by
  %i.ca = select i1 %i.bz, double %i.bx, double %i.by ; 2 uses
  %i.cb = fcmp olt double %i.ca, %i.bw
  %..i96 = select i1 %i.cb, double %i.ca, double %i.bw ; 5 uses
  %i.cc = fcmp oeq double %..i96, 1.000000e+00
  br i1 %i.cc, label %rgb_to_cmyk.exit100, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = insertelement <2 x double> poison, double %..i96, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fsub <2 x double> %i.bt, %i.ce
  %i.cg = fsub double 1.000000e+00, %..i96        ; 2 uses
  %i.ch = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fdiv <2 x double> %i.cf, %i.ci
  %i.ck = fsub double %i.bw, %..i96
  %i.cl = fdiv double %i.ck, %i.cg
  %i.cm = shufflevector <2 x double> %i.cj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %rgb_to_cmyk.exit100

rgb_to_cmyk.exit100:                              ; preds = %bb.k, %bb.l
  %.0.i99 = phi double [ %i.cl, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.cn = phi <4 x double> [ %i.cm, %bb.l ], [ <double 0.000000e+00, double 0.000000e+00, double undef, double undef>, %bb.k ]
  %i.co = insertelement <4 x double> poison, double %.0.i99, i64 2
  %i.cp = insertelement <4 x double> %i.co, double %..i96, i64 3
  %i.cq = shufflevector <4 x double> %i.cn, <4 x double> %i.cp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cr = fneg <4 x double> %i.cq
  %i.cs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cr, <4 x double> %i.ad, <4 x double> %i.ae)
  %i.ct = fadd <4 x double> %i.cs, splat (double 5.000000e-01)
  %i.cu = fptoui <4 x double> %i.ct to <4 x i8>
  store <4 x i8> %i.cu, ptr %.090107, align 1, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %.090107, i64 4
  %i.cw = add i32 %.0109, -1                      ; 2 uses
  %.not95 = icmp eq i32 %i.cw, 0
  br i1 %.not95, label %.loopexit, label %bb.e, !llvm.loop !103

bb.m:                                             ; preds = %bb.c
  br i1 %.not95106, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %rgb_to_cmyk.exit
  %.1105 = phi i32 [ %i.ge, %rgb_to_cmyk.exit ], [ %i.z, %bb.m ]
  %.189104 = phi ptr [ %i.dz, %rgb_to_cmyk.exit ], [ %i.t, %bb.m ] ; 7 uses
  %.191103 = phi ptr [ %i.gd, %rgb_to_cmyk.exit ], [ %i.s, %bb.m ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.189104, i64 1
  %i.cy = load i8, ptr %.189104, align 1, !tbaa !33
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 8
  %i.db = getelementptr inbounds nuw i8, ptr %.189104, i64 2
  %i.dc = load i8, ptr %i.cx, align 1, !tbaa !33
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd            ; 2 uses
  %i.df = icmp ugt i32 %i.de, %i.d
  br i1 %i.df, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.dg = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i32 1038, ptr %i.dh, align 8, !tbaa !32
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !34
  tail call void %i.di(ptr noundef nonnull %0) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %.189104, i64 3
  %i.dk = load i8, ptr %i.db, align 1, !tbaa !33
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.189104, i64 4
  %i.do = load i8, ptr %i.dj, align 1, !tbaa !33
  %i.dp = zext i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dm, %i.dp            ; 2 uses
  %i.dr = icmp ugt i32 %i.dq, %i.d
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ds = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store i32 1038, ptr %i.dt, align 8, !tbaa !32
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !34
  tail call void %i.du(ptr noundef nonnull %0) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %.189104, i64 5
  %i.dw = load i8, ptr %i.dn, align 1, !tbaa !33
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.189104, i64 6
  %i.ea = load i8, ptr %i.dv, align 1, !tbaa !33
  %i.eb = zext i8 %i.ea to i32
  %i.ec = or disjoint i32 %i.dy, %i.eb            ; 2 uses
  %i.ed = icmp ugt i32 %i.ec, %i.d
  br i1 %i.ed, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ee = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store i32 1038, ptr %i.ef, align 8, !tbaa !32
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !34
  tail call void %i.eg(ptr noundef nonnull %0) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eh = load i32, ptr %i.u, align 8, !tbaa !26
  %notmask94 = shl nsw i32 -1, %i.eh
  %i.ei = xor i32 %notmask94, -1
  %i.ej = zext nneg i32 %i.de to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !33
  %i.em = zext nneg i32 %i.dq to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !33
  %i.ep = zext nneg i32 %i.ec to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !33
  %i.es = uitofp nneg i32 %i.ei to double         ; 2 uses
  %i.et = insertelement <2 x i8> poison, i8 %i.el, i64 0
  %i.eu = insertelement <2 x i8> %i.et, i8 %i.eo, i64 1
  %i.ev = uitofp <2 x i8> %i.eu to <2 x double>
  %i.ew = insertelement <2 x double> poison, double %i.es, i64 0 ; 3 uses
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fdiv <2 x double> %i.ev, %i.ex
  %i.ez = fsub <2 x double> splat (double 1.000000e+00), %i.ey ; 3 uses
  %i.fa = uitofp i8 %i.er to double
  %i.fb = fdiv double %i.fa, %i.es
  %i.fc = fsub double 1.000000e+00, %i.fb         ; 3 uses
  %i.fd = extractelement <2 x double> %i.ez, i64 0 ; 2 uses
  %i.fe = extractelement <2 x double> %i.ez, i64 1 ; 2 uses
  %i.ff = fcmp olt double %i.fd, %i.fe
  %i.fg = select i1 %i.ff, double %i.fd, double %i.fe ; 2 uses
  %i.fh = fcmp olt double %i.fg, %i.fc
  %..i = select i1 %i.fh, double %i.fg, double %i.fc ; 5 uses
  %i.fi = fcmp oeq double %..i, 1.000000e+00
  br i1 %i.fi, label %rgb_to_cmyk.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fj = insertelement <2 x double> poison, double %..i, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fsub <2 x double> %i.ez, %i.fk
  %i.fm = fsub double 1.000000e+00, %..i          ; 2 uses
  %i.fn = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = fdiv <2 x double> %i.fl, %i.fo
  %i.fq = fsub double %i.fc, %..i
  %i.fr = fdiv double %i.fq, %i.fm
  %i.fs = shufflevector <2 x double> %i.fp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %rgb_to_cmyk.exit

rgb_to_cmyk.exit:                                 ; preds = %bb.s, %bb.t
  %.0.i = phi double [ %i.fr, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.ft = phi <4 x double> [ %i.fs, %bb.t ], [ <double 0.000000e+00, double 0.000000e+00, double undef, double undef>, %bb.s ]
  %i.fu = insertelement <4 x double> poison, double %.0.i, i64 2
  %i.fv = insertelement <4 x double> %i.fu, double %..i, i64 3
  %i.fw = shufflevector <4 x double> %i.ft, <4 x double> %i.fv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fx = fneg <4 x double> %i.fw
  %i.fy = shufflevector <2 x double> %i.ew, <2 x double> poison, <4 x i32> zeroinitializer
  %i.fz = shufflevector <2 x double> %i.ew, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ga = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fx, <4 x double> %i.fy, <4 x double> %i.fz)
  %i.gb = fadd <4 x double> %i.ga, splat (double 5.000000e-01)
  %i.gc = fptoui <4 x double> %i.gb to <4 x i8>
  store <4 x i8> %i.gc, ptr %.191103, align 1, !tbaa !33
  %i.gd = getelementptr inbounds nuw i8, ptr %.191103, i64 4
  %i.ge = add i32 %.1105, -1                      ; 2 uses
  %.not = icmp eq i32 %i.ge, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !104

.loopexit:                                        ; preds = %rgb_to_cmyk.exit, %rgb_to_cmyk.exit100, %bb.m, %bb.d
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_rgb_row(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46
  %i.g = zext i32 %i.f to i64                     ; 6 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47   ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47   ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.g
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47   ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @alpha_index, i64 %i.g
  %i.o = load i32, ptr %i.n, align 4, !tbaa !47   ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.g
  %i.q = load i32, ptr %i.p, align 4, !tbaa !47   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = tail call i64 @fread(ptr noundef %i.s, i64 noundef 1, i64 noundef %i.u, ptr noundef %i.w)
  %i.y = load i64, ptr %i.t, align 8, !tbaa !48
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 43, ptr %i.ab, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !34
  tail call void %i.ac(ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53 ; 17 uses
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !49  ; 16 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26
  %notmask = shl nsw i32 -1, %i.ai
  %i.aj = xor i32 %notmask, %i.d
  %i.ak = icmp eq i32 %i.aj, -1
  %i.al = and i64 %i.g, 4294967292
  %i.am = icmp eq i64 %i.al, 12                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !44 ; 14 uses
  %.not102120 = icmp eq i32 %i.ao, 0              ; 4 uses
  br i1 %i.ak, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not102120, label %.loopexit, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.e
  %i.ap = sext i32 %i.i to i64                    ; 3 uses
  %i.aq = sext i32 %i.k to i64                    ; 3 uses
  %i.ar = sext i32 %i.m to i64                    ; 3 uses
  %i.as = trunc i32 %i.d to i8                    ; 3 uses
  %i.at = zext nneg i32 %i.o to i64               ; 3 uses
  %i.au = sext i32 %i.q to i64                    ; 3 uses
  %xtraiter146 = and i32 %i.ao, 1
  %lcmp.mod147.not = icmp eq i32 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %.prol.loopexit145, label %.prol.loopexit145.unr-lcssa

.prol.loopexit145.unr-lcssa:                      ; preds = %.lr.ph124
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.aw = load i8, ptr %i.ag, align 1, !tbaa !33
  %i.ax = getelementptr inbounds i8, ptr %i.af, i64 %i.ap
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.az = load i8, ptr %i.av, align 1, !tbaa !33
  %i.ba = getelementptr inbounds i8, ptr %i.af, i64 %i.aq
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !33
  %i.bd = getelementptr inbounds i8, ptr %i.af, i64 %i.ar
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.at
  store i8 %i.as, ptr %i.be, align 1, !tbaa !33
  %i.bf = getelementptr inbounds i8, ptr %i.af, i64 %i.au
  %i.bg = add nsw i32 %i.ao, -1
  br label %.prol.loopexit145

.prol.loopexit145:                                ; preds = %.prol.loopexit145.unr-lcssa, %.lr.ph124
  %.0123.unr = phi i32 [ %i.ao, %.lr.ph124 ], [ %i.bg, %.prol.loopexit145.unr-lcssa ]
  %.088122.unr = phi ptr [ %i.ag, %.lr.ph124 ], [ %i.bb, %.prol.loopexit145.unr-lcssa ]
  %.092121.unr = phi ptr [ %i.af, %.lr.ph124 ], [ %i.bf, %.prol.loopexit145.unr-lcssa ]
  %i.bh = icmp eq i32 %i.ao, 1
  br i1 %i.bh, label %.loopexit, label %.lr.ph124.new

.lr.ph124.new:                                    ; preds = %.prol.loopexit145, %.lr.ph124.new
  %.0123 = phi i32 [ %i.ce, %.lr.ph124.new ], [ %.0123.unr, %.prol.loopexit145 ]
  %.088122 = phi ptr [ %i.bz, %.lr.ph124.new ], [ %.088122.unr, %.prol.loopexit145 ] ; 7 uses
  %.092121 = phi ptr [ %i.cd, %.lr.ph124.new ], [ %.092121.unr, %.prol.loopexit145 ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.088122, i64 1
  %i.bj = load i8, ptr %.088122, align 1, !tbaa !33
  %i.bk = getelementptr inbounds i8, ptr %.092121, i64 %i.ap
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %.088122, i64 2
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !33
  %i.bn = getelementptr inbounds i8, ptr %.092121, i64 %i.aq
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %.088122, i64 3
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !33
  %i.bq = getelementptr inbounds i8, ptr %.092121, i64 %i.ar
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %.092121, i64 %i.at
  store i8 %i.as, ptr %i.br, align 1, !tbaa !33
  %i.bs = getelementptr inbounds i8, ptr %.092121, i64 %i.au ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.088122, i64 4
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !33
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.ap
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %.088122, i64 5
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !33
  %i.by = getelementptr inbounds i8, ptr %i.bs, i64 %i.aq
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %.088122, i64 6
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !33
  %i.cb = getelementptr inbounds i8, ptr %i.bs, i64 %i.ar
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.at
  store i8 %i.as, ptr %i.cc, align 1, !tbaa !33
  %i.cd = getelementptr inbounds i8, ptr %i.bs, i64 %i.au
  %i.ce = add i32 %.0123, -2                      ; 2 uses
  %.not102.1 = icmp eq i32 %i.ce, 0
  br i1 %.not102.1, label %.loopexit, label %.lr.ph124.new, !llvm.loop !105

bb.f:                                             ; preds = %bb.d
  br i1 %.not102120, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.f
  %i.cf = sext i32 %i.i to i64                    ; 3 uses
  %i.cg = sext i32 %i.k to i64                    ; 3 uses
  %i.ch = sext i32 %i.m to i64                    ; 3 uses
  %i.ci = sext i32 %i.q to i64                    ; 3 uses
  %xtraiter142 = and i32 %i.ao, 1
  %lcmp.mod143.not = icmp eq i32 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.prol.loopexit141, label %.prol.loopexit141.unr-lcssa

.prol.loopexit141.unr-lcssa:                      ; preds = %.lr.ph119
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ck = load i8, ptr %i.ag, align 1, !tbaa !33
  %i.cl = getelementptr inbounds i8, ptr %i.af, i64 %i.cf
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !33
  %i.co = getelementptr inbounds i8, ptr %i.af, i64 %i.cg
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !33
  %i.cr = getelementptr inbounds i8, ptr %i.af, i64 %i.ch
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !33
  %i.cs = getelementptr inbounds i8, ptr %i.af, i64 %i.ci
  %i.ct = add nsw i32 %i.ao, -1
  br label %.prol.loopexit141

.prol.loopexit141:                                ; preds = %.prol.loopexit141.unr-lcssa, %.lr.ph119
  %.1118.unr = phi i32 [ %i.ao, %.lr.ph119 ], [ %i.ct, %.prol.loopexit141.unr-lcssa ]
  %.189117.unr = phi ptr [ %i.ag, %.lr.ph119 ], [ %i.cp, %.prol.loopexit141.unr-lcssa ]
  %.193116.unr = phi ptr [ %i.af, %.lr.ph119 ], [ %i.cs, %.prol.loopexit141.unr-lcssa ]
  %i.cu = icmp eq i32 %i.ao, 1
  br i1 %i.cu, label %.loopexit, label %.lr.ph119.new

.lr.ph119.new:                                    ; preds = %.prol.loopexit141, %.lr.ph119.new
  %.1118 = phi i32 [ %i.dp, %.lr.ph119.new ], [ %.1118.unr, %.prol.loopexit141 ]
  %.189117 = phi ptr [ %i.dl, %.lr.ph119.new ], [ %.189117.unr, %.prol.loopexit141 ] ; 7 uses
  %.193116 = phi ptr [ %i.do, %.lr.ph119.new ], [ %.193116.unr, %.prol.loopexit141 ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.189117, i64 1
  %i.cw = load i8, ptr %.189117, align 1, !tbaa !33
  %i.cx = getelementptr inbounds i8, ptr %.193116, i64 %i.cf
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %.189117, i64 2
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !33
  %i.da = getelementptr inbounds i8, ptr %.193116, i64 %i.cg
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %.189117, i64 3
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !33
  %i.dd = getelementptr inbounds i8, ptr %.193116, i64 %i.ch
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !33
  %i.de = getelementptr inbounds i8, ptr %.193116, i64 %i.ci ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.189117, i64 4
  %i.dg = load i8, ptr %i.db, align 1, !tbaa !33
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 %i.cf
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %.189117, i64 5
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !33
  %i.dk = getelementptr inbounds i8, ptr %i.de, i64 %i.cg
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %.189117, i64 6
  %i.dm = load i8, ptr %i.di, align 1, !tbaa !33
  %i.dn = getelementptr inbounds i8, ptr %i.de, i64 %i.ch
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !33
  %i.do = getelementptr inbounds i8, ptr %i.de, i64 %i.ci
  %i.dp = add i32 %.1118, -2                      ; 2 uses
  %.not101.1 = icmp eq i32 %i.dp, 0
  br i1 %.not101.1, label %.loopexit, label %.lr.ph119.new, !llvm.loop !106

bb.g:                                             ; preds = %bb.c
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %.not102120, label %.loopexit, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.h
  %i.dq = sext i32 %i.i to i64
  %i.dr = sext i32 %i.k to i64
  %i.ds = sext i32 %i.m to i64
  %i.dt = zext nneg i32 %i.o to i64
  %i.du = sext i32 %i.q to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph114, %bb.i
  %.2113 = phi i32 [ %i.ao, %.lr.ph114 ], [ %i.es, %bb.i ]
  %.290112 = phi ptr [ %i.ag, %.lr.ph114 ], [ %i.eh, %bb.i ] ; 4 uses
  %.294111 = phi ptr [ %i.af, %.lr.ph114 ], [ %i.er, %bb.i ] ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.290112, i64 1
  %i.dw = load i8, ptr %.290112, align 1, !tbaa !33
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !33
  %i.ea = getelementptr inbounds i8, ptr %.294111, i64 %i.dq
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %.290112, i64 2
  %i.ec = load i8, ptr %i.dv, align 1, !tbaa !33
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !33
  %i.eg = getelementptr inbounds i8, ptr %.294111, i64 %i.dr
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %.290112, i64 3
  %i.ei = load i8, ptr %i.eb, align 1, !tbaa !33
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !33
  %i.em = getelementptr inbounds i8, ptr %.294111, i64 %i.ds
  store i8 %i.el, ptr %i.em, align 1, !tbaa !33
  %i.en = load i32, ptr %i.ah, align 8, !tbaa !26
  %notmask100 = shl nsw i32 -1, %i.en
  %i.eo = trunc i32 %notmask100 to i8
  %i.ep = xor i8 %i.eo, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %.294111, i64 %i.dt
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !33
  %i.er = getelementptr inbounds i8, ptr %.294111, i64 %i.du
  %i.es = add i32 %.2113, -1                      ; 2 uses
  %.not99 = icmp eq i32 %i.es, 0
  br i1 %.not99, label %.loopexit, label %bb.i, !llvm.loop !107

bb.j:                                             ; preds = %bb.g
  br i1 %.not102120, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.et = sext i32 %i.i to i64                    ; 3 uses
  %i.eu = sext i32 %i.k to i64                    ; 3 uses
  %i.ev = sext i32 %i.m to i64                    ; 3 uses
  %i.ew = sext i32 %i.q to i64                    ; 3 uses
  %xtraiter = and i32 %i.ao, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ey = load i8, ptr %i.ag, align 1, !tbaa !33
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !33
  %i.fc = getelementptr inbounds i8, ptr %i.af, i64 %i.et
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.fe = load i8, ptr %i.ex, align 1, !tbaa !33
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !33
  %i.fi = getelementptr inbounds i8, ptr %i.af, i64 %i.eu
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !33
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.fk = load i8, ptr %i.fd, align 1, !tbaa !33
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !33
  %i.fo = getelementptr inbounds i8, ptr %i.af, i64 %i.ev
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !33
  %i.fp = getelementptr inbounds i8, ptr %i.af, i64 %i.ew
  %i.fq = add nsw i32 %i.ao, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.3109.unr = phi i32 [ %i.ao, %.lr.ph ], [ %i.fq, %.prol.loopexit.unr-lcssa ]
  %.391108.unr = phi ptr [ %i.ag, %.lr.ph ], [ %i.fj, %.prol.loopexit.unr-lcssa ]
  %.395107.unr = phi ptr [ %i.af, %.lr.ph ], [ %i.fp, %.prol.loopexit.unr-lcssa ]
  %i.fr = icmp eq i32 %i.ao, 1
  br i1 %i.fr, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.3109 = phi i32 [ %i.he, %.lr.ph.new ], [ %.3109.unr, %.prol.loopexit ]
  %.391108 = phi ptr [ %i.gx, %.lr.ph.new ], [ %.391108.unr, %.prol.loopexit ] ; 7 uses
  %.395107 = phi ptr [ %i.hd, %.lr.ph.new ], [ %.395107.unr, %.prol.loopexit ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.391108, i64 1
  %i.ft = load i8, ptr %.391108, align 1, !tbaa !33
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !33
  %i.fx = getelementptr inbounds i8, ptr %.395107, i64 %i.et
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !33
  %i.fy = getelementptr inbounds nuw i8, ptr %.391108, i64 2
  %i.fz = load i8, ptr %i.fs, align 1, !tbaa !33
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !33
  %i.gd = getelementptr inbounds i8, ptr %.395107, i64 %i.eu
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !33
  %i.ge = getelementptr inbounds nuw i8, ptr %.391108, i64 3
  %i.gf = load i8, ptr %i.fy, align 1, !tbaa !33
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !33
  %i.gj = getelementptr inbounds i8, ptr %.395107, i64 %i.ev
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !33
  %i.gk = getelementptr inbounds i8, ptr %.395107, i64 %i.ew ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.391108, i64 4
  %i.gm = load i8, ptr %i.ge, align 1, !tbaa !33
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !33
  %i.gq = getelementptr inbounds i8, ptr %i.gk, i64 %i.et
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !33
  %i.gr = getelementptr inbounds nuw i8, ptr %.391108, i64 5
  %i.gs = load i8, ptr %i.gl, align 1, !tbaa !33
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !33
  %i.gw = getelementptr inbounds i8, ptr %i.gk, i64 %i.eu
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %.391108, i64 6
  %i.gy = load i8, ptr %i.gr, align 1, !tbaa !33
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !33
  %i.hc = getelementptr inbounds i8, ptr %i.gk, i64 %i.ev
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !33
  %i.hd = getelementptr inbounds i8, ptr %i.gk, i64 %i.ew
  %i.he = add i32 %.3109, -2                      ; 2 uses
  %.not.1 = icmp eq i32 %i.he, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !108

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.i, %.prol.loopexit141, %.lr.ph119.new, %.prol.loopexit145, %.lr.ph124.new, %bb.j, %bb.h, %bb.f, %bb.e
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_rgb_cmyk_row(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = tail call i64 @fread(ptr noundef %i.f, i64 noundef 1, i64 noundef %i.h, ptr noundef %i.j)
  %i.l = load i64, ptr %i.g, align 8, !tbaa !48
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 43, ptr %i.o, align 8, !tbaa !32
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !34
  tail call void %i.p(ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26
  %notmask = shl nsw i32 -1, %i.v
  %i.w = xor i32 %notmask, %i.d
  %i.x = icmp eq i32 %i.w, -1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !44   ; 3 uses
  %.not5263 = icmp eq i32 %i.z, 0                 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not5263, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.d
  %i.aa = sitofp i32 %i.d to double               ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0 ; 3 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = shufflevector <2 x double> %i.ab, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ae = shufflevector <2 x double> %i.ab, <2 x double> poison, <4 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph67, %rgb_to_cmyk.exit57
  %.066 = phi ptr [ %i.s, %.lr.ph67 ], [ %i.bn, %rgb_to_cmyk.exit57 ] ; 2 uses
  %.04665 = phi ptr [ %i.t, %.lr.ph67 ], [ %i.ag, %rgb_to_cmyk.exit57 ] ; 3 uses
  %.04864 = phi i32 [ %i.z, %.lr.ph67 ], [ %i.bo, %rgb_to_cmyk.exit57 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.04665, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.04665, i64 3
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !33
  %i.ai = load <2 x i8>, ptr %.04665, align 1, !tbaa !33
  %i.aj = uitofp <2 x i8> %i.ai to <2 x double>
  %i.ak = fdiv <2 x double> %i.aj, %i.ac
  %i.al = fsub <2 x double> splat (double 1.000000e+00), %i.ak ; 3 uses
  %i.am = uitofp i8 %i.ah to double
  %i.an = fdiv double %i.am, %i.aa
  %i.ao = fsub double 1.000000e+00, %i.an         ; 3 uses
  %i.ap = extractelement <2 x double> %i.al, i64 0 ; 2 uses
  %i.aq = extractelement <2 x double> %i.al, i64 1 ; 2 uses
  %i.ar = fcmp olt double %i.ap, %i.aq
  %i.as = select i1 %i.ar, double %i.ap, double %i.aq ; 2 uses
  %i.at = fcmp olt double %i.as, %i.ao
  %..i53 = select i1 %i.at, double %i.as, double %i.ao ; 5 uses
  %i.au = fcmp oeq double %..i53, 1.000000e+00
  br i1 %i.au, label %rgb_to_cmyk.exit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = insertelement <2 x double> poison, double %..i53, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fsub <2 x double> %i.al, %i.aw
  %i.ay = fsub double 1.000000e+00, %..i53        ; 2 uses
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x double> %i.ax, %i.ba
  %i.bc = fsub double %i.ao, %..i53
  %i.bd = fdiv double %i.bc, %i.ay
  %i.be = shufflevector <2 x double> %i.bb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %rgb_to_cmyk.exit57

rgb_to_cmyk.exit57:                               ; preds = %bb.e, %bb.f
  %.0.i56 = phi double [ %i.bd, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.bf = phi <4 x double> [ %i.be, %bb.f ], [ <double 0.000000e+00, double 0.000000e+00, double undef, double undef>, %bb.e ]
  %i.bg = insertelement <4 x double> poison, double %.0.i56, i64 2
  %i.bh = insertelement <4 x double> %i.bg, double %..i53, i64 3
  %i.bi = shufflevector <4 x double> %i.bf, <4 x double> %i.bh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bj = fneg <4 x double> %i.bi
  %i.bk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bj, <4 x double> %i.ad, <4 x double> %i.ae)
  %i.bl = fadd <4 x double> %i.bk, splat (double 5.000000e-01)
  %i.bm = fptoui <4 x double> %i.bl to <4 x i8>
  store <4 x i8> %i.bm, ptr %.066, align 1, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %.066, i64 4
  %i.bo = add i32 %.04864, -1                     ; 2 uses
  %.not52 = icmp eq i32 %i.bo, 0
  br i1 %.not52, label %.loopexit, label %bb.e, !llvm.loop !109

bb.g:                                             ; preds = %bb.c
  br i1 %.not5263, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %rgb_to_cmyk.exit
  %.162 = phi ptr [ %i.dr, %rgb_to_cmyk.exit ], [ %i.s, %bb.g ] ; 2 uses
  %.14761 = phi ptr [ %i.bz, %rgb_to_cmyk.exit ], [ %i.t, %bb.g ] ; 4 uses
  %.14960 = phi i32 [ %i.ds, %rgb_to_cmyk.exit ], [ %i.z, %bb.g ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.14761, i64 1
  %i.bq = load i8, ptr %.14761, align 1, !tbaa !33
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %.14761, i64 2
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !33
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %.14761, i64 3
  %i.ca = load i8, ptr %i.bu, align 1, !tbaa !33
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !33
  %i.ce = load i32, ptr %i.u, align 8, !tbaa !26
  %notmask51 = shl nsw i32 -1, %i.ce
  %i.cf = xor i32 %notmask51, -1
  %i.cg = uitofp nneg i32 %i.cf to double         ; 2 uses
  %i.ch = insertelement <2 x i8> poison, i8 %i.bt, i64 0
  %i.ci = insertelement <2 x i8> %i.ch, i8 %i.by, i64 1
  %i.cj = uitofp <2 x i8> %i.ci to <2 x double>
  %i.ck = insertelement <2 x double> poison, double %i.cg, i64 0 ; 3 uses
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fdiv <2 x double> %i.cj, %i.cl
  %i.cn = fsub <2 x double> splat (double 1.000000e+00), %i.cm ; 3 uses
  %i.co = uitofp i8 %i.cd to double
  %i.cp = fdiv double %i.co, %i.cg
  %i.cq = fsub double 1.000000e+00, %i.cp         ; 3 uses
  %i.cr = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.cs = extractelement <2 x double> %i.cn, i64 1 ; 2 uses
  %i.ct = fcmp olt double %i.cr, %i.cs
  %i.cu = select i1 %i.ct, double %i.cr, double %i.cs ; 2 uses
  %i.cv = fcmp olt double %i.cu, %i.cq
  %..i = select i1 %i.cv, double %i.cu, double %i.cq ; 5 uses
  %i.cw = fcmp oeq double %..i, 1.000000e+00
  br i1 %i.cw, label %rgb_to_cmyk.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.cx = insertelement <2 x double> poison, double %..i, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fsub <2 x double> %i.cn, %i.cy
  %i.da = fsub double 1.000000e+00, %..i          ; 2 uses
  %i.db = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fdiv <2 x double> %i.cz, %i.dc
  %i.de = fsub double %i.cq, %..i
  %i.df = fdiv double %i.de, %i.da
  %i.dg = shufflevector <2 x double> %i.dd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %rgb_to_cmyk.exit

rgb_to_cmyk.exit:                                 ; preds = %.lr.ph, %bb.h
  %.0.i = phi double [ %i.df, %bb.h ], [ 0.000000e+00, %.lr.ph ]
  %i.dh = phi <4 x double> [ %i.dg, %bb.h ], [ <double 0.000000e+00, double 0.000000e+00, double undef, double undef>, %.lr.ph ]
  %i.di = insertelement <4 x double> poison, double %.0.i, i64 2
  %i.dj = insertelement <4 x double> %i.di, double %..i, i64 3
  %i.dk = shufflevector <4 x double> %i.dh, <4 x double> %i.dj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dl = fneg <4 x double> %i.dk
  %i.dm = shufflevector <2 x double> %i.ck, <2 x double> poison, <4 x i32> zeroinitializer
  %i.dn = shufflevector <2 x double> %i.ck, <2 x double> poison, <4 x i32> zeroinitializer
  %i.do = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dl, <4 x double> %i.dm, <4 x double> %i.dn)
  %i.dp = fadd <4 x double> %i.do, splat (double 5.000000e-01)
  %i.dq = fptoui <4 x double> %i.dp to <4 x i8>
  store <4 x i8> %i.dq, ptr %.162, align 1, !tbaa !33
  %i.dr = getelementptr inbounds nuw i8, ptr %.162, i64 4
  %i.ds = add i32 %.14960, -1                     ; 2 uses
  %.not = icmp eq i32 %i.ds, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !110

.loopexit:                                        ; preds = %rgb_to_cmyk.exit, %rgb_to_cmyk.exit57, %bb.g, %bb.d
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !9, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !9, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !9, i64 0}
!13 = !{!"p1 _ZTS20jpeg_destination_mgr", !9, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!"p1 _ZTS16jpeg_comp_master", !9, i64 0}
!17 = !{!"p1 _ZTS22jpeg_c_main_controller", !9, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_prep_controller", !9, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_coef_controller", !9, i64 0}
!20 = !{!"p1 _ZTS18jpeg_marker_writer", !9, i64 0}
!21 = !{!"p1 _ZTS20jpeg_color_converter", !9, i64 0}
!22 = !{!"p1 _ZTS16jpeg_downsampler", !9, i64 0}
!23 = !{!"p1 _ZTS16jpeg_forward_dct", !9, i64 0}
!24 = !{!"p1 _ZTS20jpeg_entropy_encoder", !9, i64 0}
!25 = !{!"jpeg_compress_struct", !10, i64 0, !11, i64 8, !12, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !13, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !14, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !9, i64 88, !5, i64 96, !5, i64 128, !5, i64 160, !5, i64 192, !5, i64 208, !5, i64 224, !6, i64 240, !9, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !5, i64 292, !5, i64 293, !5, i64 294, !15, i64 296, !15, i64 298, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !5, i64 328, !6, i64 360, !6, i64 364, !6, i64 368, !5, i64 372, !6, i64 412, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 432, !17, i64 440, !18, i64 448, !19, i64 456, !20, i64 464, !21, i64 472, !22, i64 480, !23, i64 488, !24, i64 496, !9, i64 504, !6, i64 512}
!26 = !{!25, !6, i64 72}
!27 = !{!25, !10, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = !{!"any p2 pointer", !9, i64 0}
!30 = !{!"p2 omnipotent char", !29, i64 0}
!31 = !{!"jpeg_error_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !5, i64 44, !6, i64 124, !28, i64 128, !30, i64 136, !6, i64 144, !30, i64 152, !6, i64 160, !6, i64 164}
!32 = !{!31, !6, i64 40}
!33 = !{!5, !5, i64 0}
!34 = !{!31, !9, i64 0}
!35 = !{!25, !11, i64 8}
!36 = !{!"jpeg_memory_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !28, i64 88, !28, i64 96}
!37 = !{!36, !9, i64 0}
!38 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!39 = !{!"p2 short", !29, i64 0}
!40 = !{!"cjpeg_source_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !38, i64 32, !30, i64 40, !39, i64 48, !39, i64 56, !6, i64 64, !6, i64 68}
!41 = !{!"p1 omnipotent char", !9, i64 0}
!42 = !{!"", !40, i64 0, !41, i64 72, !41, i64 80, !28, i64 88, !41, i64 96, !6, i64 104}
!43 = !{!42, !38, i64 32}
!44 = !{!25, !6, i64 48}
!45 = !{!42, !6, i64 104}
!46 = !{!25, !6, i64 60}
!47 = !{!6, !6, i64 0}
!48 = !{!42, !28, i64 88}
!49 = !{!42, !41, i64 72}
!50 = !{!42, !30, i64 40}
!51 = !{!42, !41, i64 96}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!41, !41, i64 0}
!54 = !{!42, !9, i64 0}
!55 = !{!42, !9, i64 8}
!56 = !{!42, !9, i64 24}
!57 = !{!42, !6, i64 68}
!58 = distinct !{!58, !52}
!59 = !{!40, !6, i64 68}
!60 = !{!25, !6, i64 52}
!61 = !{!31, !9, i64 8}
!62 = !{!42, !9, i64 16}
!63 = !{!25, !6, i64 56}
!64 = !{!42, !41, i64 80}
!65 = !{!36, !9, i64 16}
!66 = !{!42, !6, i64 64}
!67 = distinct !{!67, !52}
!68 = distinct !{!68, !52}
!69 = distinct !{!69, !52}
!70 = distinct !{!70, !52}
!71 = distinct !{!71, !52}
!72 = distinct !{!72, !52}
!73 = distinct !{!73, !52}
!74 = distinct !{!74, !52}
!75 = distinct !{!75, !52}
!76 = distinct !{!76, !52}
!77 = distinct !{!77, !52}
!78 = distinct !{!78, !52}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !52}
!81 = distinct !{!81, !52}
!82 = distinct !{!82, !52}
!83 = distinct !{!83, !52}
!84 = distinct !{!84, !52}
!85 = distinct !{!85, !87}
!86 = distinct !{!86, !52}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !52}
!91 = distinct !{!91, !52}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !52, !100, !101}
!96 = distinct !{!96, !52, !100}
!97 = distinct !{!97, !52}
!98 = !{!93}
!99 = !{!94}
!100 = !{!"llvm.loop.isvectorized", i32 1}
!101 = !{!"llvm.loop.unroll.runtime.disable"}
!102 = distinct !{!102, !52}
!103 = distinct !{!103, !52}
!104 = distinct !{!104, !52}
!105 = distinct !{!105, !52}
!106 = distinct !{!106, !52}
!107 = distinct !{!107, !52}
!108 = distinct !{!108, !52}
!109 = distinct !{!109, !52}
!110 = distinct !{!110, !52}
end_hunk_0
