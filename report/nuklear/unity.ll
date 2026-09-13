Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_font_atlas_bake:bb.a
  %.01112.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %.01112.i.i.ph, %.lr.ph.i.i.preheader ]
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !55
  %i.aw = add i32 %.01112.i.i, 1
  %i.ax = sub i32 %i.aw, %i.at
  %i.ay = add i32 %i.ax, %i.av                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %nk_range_glyph_count.exit.i, label %.lr.ph.i.i, !llvm.loop !933

nk_range_glyph_count.exit.i:                      ; preds = %.lr.ph.i.i, %middle.block, %nk_range_count.exit.i, %bb.i
  %i.az = phi i32 [ %i.ad, %nk_range_count.exit.i ], [ %.1.i, %bb.i ], [ %i.ad, %middle.block ], [ %i.ad, %.lr.ph.i.i ] ; 3 uses
  %.011.lcssa.i.i = phi i32 [ 0, %nk_range_count.exit.i ], [ 0, %bb.i ], [ %i.ar, %middle.block ], [ %i.ay, %.lr.ph.i.i ]
  %i.ba = add nsw i32 %.011.lcssa.i.i, %i.u       ; 4 uses
  store i32 %i.ba, ptr %i.q, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !338 ; 2 uses
  %.not34.i = icmp eq ptr %i.bc, %.02843.i
  br i1 %.not34.i, label %bb.j, label %bb.h, !llvm.loop !934

bb.j:                                             ; preds = %nk_range_glyph_count.exit.i
  %i.bd = load ptr, ptr %.02843.i, align 8, !tbaa !356 ; 2 uses
  %.not32.i = icmp eq ptr %i.bd, null
  br i1 %.not32.i, label %bb.k, label %.preheader.i, !llvm.loop !935

bb.k:                                             ; preds = %bb.j
  %i.be = sext i32 %i.ba to i64
  %i.bf = sext i32 %i.az to i64
  %i.bg = mul nsw i64 %i.bf, 40
  %i.bh = sext i32 %i.p to i64
  %i.bi = mul nsw i64 %i.bh, 184
  %reass.mul.i = mul nsw i64 %i.be, 52
  %i.bj = add nsw i64 %i.bi, 152
  %i.bk = add nsw i64 %i.bj, %i.bg
  %i.bl = add nsw i64 %i.bk, %reass.mul.i
  br label %nk_font_baker_memory.exit

nk_font_baker_memory.exit:                        ; preds = %bb.g, %bb.k
  %.0157 = phi i64 [ %i.bl, %bb.k ], [ 0, %bb.g ] ; 6 uses
  %i.bm = load ptr, ptr %i.e, align 8
  %i.bn = tail call ptr %i.g(ptr %i.bm, ptr noundef null, i64 noundef %.0157) #50 ; 9 uses
  %.not138 = icmp eq ptr %i.bn, null
  br i1 %.not138, label %.critedge, label %bb.l

bb.l:                                             ; preds = %nk_font_baker_memory.exit
  %i.bo = icmp ult i64 %.0157, 12
  br i1 %i.bo, label %.preheader.i147, label %bb.m

.preheader.i147:                                  ; preds = %bb.l
  %.not4348.i = icmp eq i64 %.0157, 0
  br i1 %.not4348.i, label %nk_memset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i147
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bn, i8 0, i64 %.0157, i1 false), !tbaa !56
  br label %nk_memset.exit

bb.m:                                             ; preds = %bb.l
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = and i64 %i.bp, 3                        ; 2 uses
  %.not.i146 = icmp eq i64 %i.bq, 0
  br i1 %.not.i146, label %.loopexit46.i, label %.loopexit46.loopexit.i

.loopexit46.loopexit.i:                           ; preds = %bb.m
  %i.br = sub nuw nsw i64 4, %i.bq                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i8 0, i64 %i.br, i1 false), !tbaa !56
  %i.bs = sub nuw nsw i64 %.0157, %i.br
  %scevgep.i = getelementptr i8, ptr %i.bn, i64 %i.br
  br label %.loopexit46.i

.loopexit46.i:                                    ; preds = %.loopexit46.loopexit.i, %bb.m
  %.132.i = phi i64 [ %.0157, %bb.m ], [ %i.bs, %.loopexit46.loopexit.i ] ; 2 uses
  %.230.i = phi ptr [ %i.bn, %bb.m ], [ %scevgep.i, %.loopexit46.loopexit.i ] ; 2 uses
  %i.bt = and i64 %.132.i, -4                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.230.i, i8 0, i64 %i.bt, i1 false), !tbaa !55
  %i.bu = and i64 %.132.i, 3                      ; 2 uses
  %.not41.i = icmp eq i64 %i.bu, 0
  br i1 %.not41.i, label %nk_memset.exit, label %.preheader44.preheader.i

.preheader44.preheader.i:                         ; preds = %.loopexit46.i
  %scevgep53.i = getelementptr i8, ptr %.230.i, i64 %i.bt
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i, i8 0, i64 %i.bu, i1 false), !tbaa !56
  br label %nk_memset.exit

nk_memset.exit:                                   ; preds = %.preheader.i147, %.lr.ph.preheader.i, %.loopexit46.i, %.preheader44.preheader.i
  %i.bv = load i32, ptr %i.q, align 8, !tbaa !942
  %i.bw = load i32, ptr %i.o, align 8, !tbaa !361
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, -8
  %i.ca = inttoptr i64 %i.bz to ptr               ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 127
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, -8
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !369
  %i.cg = sext i32 %i.bw to i64
  %i.ch = getelementptr inbounds [184 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, -8
  %i.cl = inttoptr i64 %i.ck to ptr               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !370
  %i.cn = sext i32 %i.bv to i64                   ; 2 uses
  %i.co = getelementptr inbounds [28 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, -4
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !371
  %i.cu = getelementptr inbounds [24 x i8], ptr %i.cs, i64 %i.cn
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 7
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, -8
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !75
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !348
  %i.db = load i32, ptr %i.q, align 8, !tbaa !942
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.dc, 48
  %i.de = load ptr, ptr %i.j, align 8
  %i.df = tail call ptr %i.da(ptr %i.de, ptr noundef null, i64 noundef %i.dd) #50 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !350
  %.not139 = icmp eq ptr %i.df, null
  br i1 %.not139, label %bb.x, label %bb.n

bb.n:                                             ; preds = %nk_memset.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i16 181, ptr %i.di, align 4, !tbaa !943
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i16 28, ptr %i.dj, align 2, !tbaa !944
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !355
  %i.dl = load i32, ptr %i.o, align 8, !tbaa !361
  %i.dm = call fastcc i32 @nk_font_bake_pack(ptr noundef nonnull %i.ca, ptr noundef %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %i.dh, ptr noundef %i.dk, i32 noundef %i.dl, ptr noundef %i.e)
  %.not140 = icmp eq i32 %i.dm, 0
  br i1 %.not140, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !346
  %i.do = load i64, ptr %i.a, align 8, !tbaa !79
  %i.dp = load ptr, ptr %i.e, align 8
  %i.dq = tail call ptr %i.dn(ptr %i.dp, ptr noundef null, i64 noundef %i.do) #50 ; 3 uses
  store ptr %i.dq, ptr %0, align 8, !tbaa !351
  %.not141 = icmp eq ptr %i.dq, null
  br i1 %.not141, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = load i32, ptr %1, align 4, !tbaa !55
  %i.ds = load i32, ptr %2, align 4, !tbaa !55
  %i.dt = load ptr, ptr %i.dg, align 8, !tbaa !350
  %i.du = load i32, ptr %i.q, align 8, !tbaa !942
  %i.dv = load ptr, ptr %i.r, align 8, !tbaa !355
  %i.dw = load i32, ptr %i.o, align 8, !tbaa !361
  tail call fastcc void @nk_font_bake(ptr noundef nonnull %i.ca, ptr noundef %i.dq, i32 noundef %i.dr, i32 noundef %i.ds, ptr noundef %i.dt, i32 noundef %i.du, ptr noundef %i.dv, i32 noundef %i.dw)
  %i.dx = load ptr, ptr %0, align 8, !tbaa !351
  %i.dy = load i32, ptr %1, align 4, !tbaa !55
  %i.dz = load i32, ptr %2, align 4, !tbaa !55
  %i.ea = load i64, ptr %i.dh, align 8
  tail call fastcc void @nk_font_bake_custom_data(ptr noundef %i.dx, i32 noundef %i.dy, i32 noundef %i.dz, i64 %i.ea)
  %i.eb = icmp eq i32 %3, 1
  br i1 %i.eb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !346
  %i.ed = load i32, ptr %1, align 4, !tbaa !55
  %i.ee = load i32, ptr %2, align 4, !tbaa !55
  %i.ef = shl i32 %i.ed, 2
  %i.eg = mul i32 %i.ef, %i.ee
  %i.eh = sext i32 %i.eg to i64
  %i.ei = load ptr, ptr %i.e, align 8
  %i.ej = tail call ptr %i.ec(ptr %i.ei, ptr noundef null, i64 noundef %i.eh) #50 ; 8 uses
  %.not142 = icmp eq ptr %i.ej, null
  br i1 %.not142, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = load i32, ptr %1, align 4, !tbaa !55
  %i.el = load i32, ptr %2, align 4, !tbaa !55
  %i.em = load ptr, ptr %0, align 8, !tbaa !351   ; 8 uses
  %i.en = icmp ne ptr %i.em, null
  %i.eo = mul i32 %i.el, %i.ek                    ; 8 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  %or.cond.i = and i1 %i.ep, %i.en
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %.thread

.lr.ph.i.preheader:                               ; preds = %bb.r
  %i.eq = zext nneg i32 %i.eo to i64              ; 2 uses
  %min.iters.check219 = icmp ult i32 %i.eo, 12
  br i1 %min.iters.check219, label %.lr.ph.i.preheader235, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.er = add nsw i32 %i.eo, -1
  %i.es = zext i32 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 2
  %i.eu = getelementptr i8, ptr %i.ej, i64 %i.et
  %scevgep = getelementptr i8, ptr %i.eu, i64 4
  %i.ev = zext nneg i32 %i.eo to i64
  %scevgep217 = getelementptr i8, ptr %i.em, i64 %i.ev
  %bound0 = icmp ult ptr %i.ej, %scevgep217
  %bound1 = icmp ult ptr %i.em, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader235, label %vector.ph220

vector.ph220:                                     ; preds = %vector.memcheck
  %n.vec221 = and i64 %i.eq, 2147483640           ; 5 uses
  %i.ew = getelementptr i8, ptr %i.em, i64 %n.vec221
  %i.ex = shl nuw nsw i64 %n.vec221, 2
  %i.ey = getelementptr i8, ptr %i.ej, i64 %i.ex
  %i.ez = trunc nuw nsw i64 %n.vec221 to i32
  %i.fa = sub nsw i32 %i.eo, %i.ez
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next226, %vector.body222 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.em, i64 %index223 ; 2 uses
  %i.fb = shl i64 %index223, 2
  %next.gep224 = getelementptr i8, ptr %i.ej, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !56, !alias.scope !945
  %wide.load225 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !56, !alias.scope !945
  %i.fd = zext <4 x i8> %wide.load to <4 x i32>
  %i.fe = zext <4 x i8> %wide.load225 to <4 x i32>
  %i.ff = shl nuw <4 x i32> %i.fd, splat (i32 24)
  %i.fg = shl nuw <4 x i32> %i.fe, splat (i32 24)
  %i.fh = or disjoint <4 x i32> %i.ff, splat (i32 16777215)
  %i.fi = or disjoint <4 x i32> %i.fg, splat (i32 16777215)
  %i.fj = getelementptr i8, ptr %next.gep224, i64 16
  store <4 x i32> %i.fh, ptr %next.gep224, align 4, !tbaa !55, !alias.scope !946, !noalias !945
  store <4 x i32> %i.fi, ptr %i.fj, align 4, !tbaa !55, !alias.scope !946, !noalias !945
  %index.next226 = add nuw i64 %index223, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.fk, label %middle.block227, label %vector.body222, !llvm.loop !939

middle.block227:                                  ; preds = %vector.body222
  %cmp.n228 = icmp eq i64 %n.vec221, %i.eq
  br i1 %cmp.n228, label %.thread, label %.lr.ph.i.preheader235

.lr.ph.i.preheader235:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block227
  %.024.i.ph = phi ptr [ %i.em, %vector.memcheck ], [ %i.em, %.lr.ph.i.preheader ], [ %i.ew, %middle.block227 ]
  %.01623.i.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph.i.preheader ], [ %i.ey, %middle.block227 ]
  %.01722.i.ph = phi i32 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i.preheader ], [ %i.fa, %middle.block227 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader235, %.lr.ph.i
  %.024.i = phi ptr [ %i.fl, %.lr.ph.i ], [ %.024.i.ph, %.lr.ph.i.preheader235 ] ; 2 uses
  %.01623.i = phi ptr [ %i.fq, %.lr.ph.i ], [ %.01623.i.ph, %.lr.ph.i.preheader235 ] ; 2 uses
  %.01722.i = phi i32 [ %i.fr, %.lr.ph.i ], [ %.01722.i.ph, %.lr.ph.i.preheader235 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %i.fm = load i8, ptr %.024.i, align 1, !tbaa !56
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw i32 %i.fn, 24
  %i.fp = or disjoint i32 %i.fo, 16777215
  %i.fq = getelementptr inbounds nuw i8, ptr %.01623.i, i64 4
  store i32 %i.fp, ptr %.01623.i, align 4, !tbaa !55
  %i.fr = add nsw i32 %.01722.i, -1
  %i.fs = icmp samesign ugt i32 %.01722.i, 1
  br i1 %i.fs, label %.lr.ph.i, label %.thread, !llvm.loop !940

.thread:                                          ; preds = %.lr.ph.i, %middle.block227, %bb.r
  %i.ft = load ptr, ptr %i.h, align 8, !tbaa !347
  %i.fu = load ptr, ptr %i.e, align 8
  tail call void %i.ft(ptr %i.fu, ptr noundef %i.em) #50
  store ptr %i.ej, ptr %0, align 8, !tbaa !351
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.p
  %i.fv = load i32, ptr %1, align 4, !tbaa !55
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !947
  %i.fx = load i32, ptr %2, align 4, !tbaa !55    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !948
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.0123165 = load ptr, ptr %i.fz, align 8, !tbaa !373 ; 2 uses
  %.not145166 = icmp eq ptr %.0123165, null
  br i1 %.not145166, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %nk_font_init.exit
  %.pre = load i32, ptr %2, align 4, !tbaa !55
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.s
  %i.ga = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.fx, %bb.s ]
  %i.gb = load i16, ptr %i.dh, align 8, !tbaa !949 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !950 ; 7 uses
  %i.ge = load i32, ptr %1, align 4, !tbaa !55
  %i.gf = trunc i32 %i.ge to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 %i.gf, ptr %i.gg, align 8, !tbaa !952
  %i.gh = trunc i32 %i.ga to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !953
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 %i.gb, ptr %i.gj, align 4, !tbaa !106
  %i.gk = add i16 %i.gd, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !106
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 12, ptr %i.gm, align 8, !tbaa !106
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 19, ptr %i.gn, align 2, !tbaa !106
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 4726527810020048896, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.gp, align 8
  %i.gq = load i32, ptr %1, align 4, !tbaa !55
  %i.gr = trunc i32 %i.gq to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i16 %i.gr, ptr %i.gs, align 8, !tbaa !952
  %i.gt = load i32, ptr %2, align 4, !tbaa !55
  %i.gu = trunc i32 %i.gt to i16
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !953
  %i.gw = add i16 %i.gb, 13
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i16 %i.gw, ptr %i.gx, align 4, !tbaa !106
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 126
  store i16 %i.gd, ptr %i.gy, align 2, !tbaa !106
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i16 7, ptr %i.gz, align 8, !tbaa !106
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i16 16, ptr %i.ha, align 2, !tbaa !106
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 4719772410572701696, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 4683743613547446272, ptr %i.hc, align 8
  %i.hd = load i32, ptr %1, align 4, !tbaa !55
  %i.he = trunc i32 %i.hd to i16
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i16 %i.he, ptr %i.hf, align 8, !tbaa !952
  %i.hg = load i32, ptr %2, align 4, !tbaa !55
  %i.hh = trunc i32 %i.hg to i16
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i16 %i.hh, ptr %i.hi, align 2, !tbaa !953
  %i.hj = add i16 %i.gb, 31
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i16 %i.hj, ptr %i.hk, align 4, !tbaa !106
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 166
  store i16 %i.gd, ptr %i.hl, align 2, !tbaa !106
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i16 23, ptr %i.hm, align 8, !tbaa !106
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 23, ptr %i.hn, align 2, !tbaa !106
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 4735535009282654208, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 4697254412441092096, ptr %i.hp, align 8
  %i.hq = load i32, ptr %1, align 4, !tbaa !55
  %i.hr = trunc i32 %i.hq to i16
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i16 %i.hr, ptr %i.hs, align 8, !tbaa !952
  %i.ht = load i32, ptr %2, align 4, !tbaa !55
  %i.hu = trunc i32 %i.ht to i16
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !953
  %i.hw = add i16 %i.gb, 21
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i16 %i.hw, ptr %i.hx, align 4, !tbaa !106
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 206
  store i16 %i.gd, ptr %i.hy, align 2, !tbaa !106
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 9, ptr %i.hz, align 8, !tbaa !106
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 210
  store i16 23, ptr %i.ia, align 2, !tbaa !106
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 4735535009271644160, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 4697254412431654912, ptr %i.ic, align 8
  %i.id = load i32, ptr %1, align 4, !tbaa !55
  %i.ie = trunc i32 %i.id to i16
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i16 %i.ie, ptr %i.if, align 8, !tbaa !952
  %i.ig = load i32, ptr %2, align 4, !tbaa !55
  %i.ih = trunc i32 %i.ig to i16
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 242
  store i16 %i.ih, ptr %i.ii, align 2, !tbaa !953
  %i.ij = add i16 %i.gb, 55                       ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i16 %i.ij, ptr %i.ik, align 4, !tbaa !106
  %i.il = add i16 %i.gd, 18
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 246
  store i16 %i.il, ptr %i.im, align 2, !tbaa !106
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i16 23, ptr %i.in, align 8, !tbaa !106
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 250
  store i16 9, ptr %i.io, align 2, !tbaa !106
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 4688247213195264000, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 4656722015794757632, ptr %i.iq, align 8
  %i.ir = load i32, ptr %1, align 4, !tbaa !55
  %i.is = trunc i32 %i.ir to i16
end_hunk_0
begin_hunk_1_@nk_edit_buffer:bb.a
  %.not63 = icmp eq ptr %i.b, null
  br i1 %.not63, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not64 = icmp eq ptr %i.d, null
  br i1 %.not64, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.f, label %bb.f [
    i32 0, label %bb.u
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = or i32 %1, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.058 = phi i32 [ %i.g, %bb.e ], [ %1, %bb.d ]  ; 5 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not66 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 456 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 460 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !521  ; 3 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !521
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 468 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !520  ; 2 uses
  %.not67 = icmp eq i32 %i.q, 0
  br i1 %.not67, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.l, align 8, !tbaa !634
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.t = and i32 %.058, 16
  %.not68 = icmp eq i32 %i.t, 0
  br i1 %.not68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.v = load i32, ptr %i.u, align 8, !tbaa !626
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 %i.v, ptr %i.w, align 8, !tbaa !629
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = and i32 %.058, 32
  %.not69 = icmp eq i32 %i.x, 0
  br i1 %.not69, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !629  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !627
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i32 %i.z, ptr %i.ab, align 8, !tbaa !628
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = and i32 %.058, 64
  %.not70 = icmp eq i32 %i.ac, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !75
  %.pre = load i32, ptr %i.p, align 4, !tbaa !520
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = phi i32 [ %.pre, %bb.m ], [ %i.q, %bb.l ]
  %i.af = trunc i32 %i.ae to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.n
  %.sink = phi i8 [ %i.af, %bb.n ], [ 0, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %.sink, ptr %i.ag, align 1, !tbaa !636
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !635
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 180
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !630
  %.not71 = icmp eq ptr %3, null
  %i.ak = select i1 %.not71, ptr @nk_filter_default, ptr %3
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 185
  %i.am = and i32 %.058, 1
  %.not72 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not72, i1 %.not66, i1 false
  %i.ao = select i1 %i.an, ptr %0, ptr null
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4952
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !414
  %i.at = load <2 x float>, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load <2 x float>, ptr %i.au, align 8
  %i.aw = tail call fastcc i32 @nk_do_edit(ptr noundef %i.ap, ptr noundef %i.aq, <2 x float> %i.at, <2 x float> %i.av, i32 noundef %.058, ptr noundef nonnull %i.ak, ptr noundef nonnull %2, ptr noundef %i.ar, ptr noundef %i.ao, ptr noundef %i.as) ; 3 uses
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !460
  %i.ay = and i32 %i.ax, 16
  %.not73 = icmp eq i32 %i.ay, 0
  br i1 %.not73, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !221
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !220
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = load i8, ptr %i.al, align 1, !tbaa !636 ; 2 uses
  %.not74 = icmp eq i8 %i.bc, 0                   ; 2 uses
  %.not75 = icmp eq i8 %.sink, %i.bc
  %or.cond = select i1 %.not74, i1 true, i1 %.not75
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.p, align 4, !tbaa !520
  store i32 %i.n, ptr %i.l, align 8, !tbaa !634
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.not76 = icmp ne i8 %.sink, 0
  %brmerge.not = and i1 %.not76, %.not74
  br i1 %brmerge.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.p, align 4, !tbaa !520
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.aw, %bb.s ], [ %i.aw, %bb.r ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 27) i32 @nk_do_edit(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, <2 x float> %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly %7, ptr noundef %8, ptr noundef %9) unnamed_addr #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %10 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %11 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %12 = alloca %struct.nk_vec2, align 4           ; 3 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %13 = alloca %struct.nk_text, align 8           ; 7 uses
  %.sroa.0647.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 944
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 924 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !1166 ; 2 uses
  %.sroa.0647.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.m = load <2 x float>, ptr %i.j, align 8, !tbaa !54 ; 2 uses
  %i.n = fadd <2 x float> %2, %i.m
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fadd <2 x float> %i.n, %i.p              ; 15 uses
  %i.r = fmul float %i.l, 2.000000e+00
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> splat (float 2.000000e+00), <2 x float> %i.t)
  %i.v = fsub <2 x float> %3, %i.u                ; 4 uses
  %i.w = and i32 %4, 1024                         ; 2 uses
  %.not.not = icmp eq i32 %i.w, 0                 ; 3 uses
  %i.x = extractelement <2 x float> %i.v, i64 1
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 936
  %i.z = load float, ptr %i.y, align 8, !tbaa !1167
  %i.aa = extractelement <2 x float> %i.v, i64 0
  %i.ab = fsub float %i.aa, %i.z                  ; 2 uses
  %i.ac = fcmp ogt float %i.ab, 0.000000e+00
  %i.ad = select i1 %i.ac, float %i.ab, float 0.000000e+00
  %.sroa.26.8.vec.insert343 = insertelement <2 x float> %i.v, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.af = load float, ptr %i.ae, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 952
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !1168
  %i.ai = fadd float %i.af, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.26.01093 = phi <2 x float> [ %.sroa.26.8.vec.insert343, %bb.b ], [ %i.v, %bb.a ] ; 4 uses
  %i.aj = phi float [ %i.ai, %bb.b ], [ %i.x, %bb.a ] ; 23 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.01082.0.copyload = load <2 x float>, ptr %i.ak, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.26.8.vec.extract345 = extractelement <2 x float> %.sroa.26.01093, i64 0
  %.sroa.26.12.vec.extract362 = extractelement <2 x float> %.sroa.26.01093, i64 1 ; 3 uses
  %i.al = fadd <2 x float> %i.q, %.sroa.26.01093  ; 4 uses
  %i.am = fcmp olt <2 x float> %.sroa.01082.0.copyload, %i.q
  %i.an = fadd <2 x float> %.sroa.01082.0.copyload, %.sroa.8.0.copyload ; 2 uses
  %i.ao = fcmp olt <2 x float> %i.an, %i.al
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.an, <2 x float> %i.al
  %i.aq = select <2 x i1> %i.am, <2 x float> %i.q, <2 x float> %.sroa.01082.0.copyload ; 4 uses
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = fcmp ogt <2 x float> %i.ar, zeroinitializer
  %i.at = select <2 x i1> %i.as, <2 x float> %i.ar, <2 x float> zeroinitializer ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 185 ; 4 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !636 ; 5 uses
  %.not723 = icmp eq ptr %8, null
  br i1 %.not723, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !383
  %.not724 = icmp eq i32 %i.ax, 0
  br i1 %.not724, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 260
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !388, !range !88, !noundef !89
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 356
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !391 ; 2 uses
  %i.bd = fcmp ole float %.sroa.0647.0.vec.extract, %i.bc
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = fcmp olt float %i.bc, %i.be
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !392 ; 2 uses
  %i.bi = fcmp ugt float %.sroa.0647.4.vec.extract, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop1378 = fadd <2 x float> %2, %3
  %i.bj = extractelement <2 x float> %foldExtExtBinop1378, i64 1
  %i.bk = fcmp olt float %i.bh, %i.bj
  %i.bl = zext i1 %i.bk to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.bm = phi i8 [ %i.bl, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  store i8 %i.bm, ptr %i.au, align 1, !tbaa !636
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d, %bb.c
  %i.bn = phi i8 [ %i.bm, %bb.i ], [ %i.av, %bb.e ], [ %i.av, %bb.d ], [ %i.av, %bb.c ] ; 5 uses
  %.not725 = icmp eq i8 %i.av, 0
  %.not726 = icmp eq i8 %i.bn, 0                  ; 2 uses
  br i1 %.not725, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %.not726, label %.thread1095, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.lobit = lshr exact i32 %i.w, 10
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 0, ptr %i.br, align 4, !tbaa !627
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 176
  store i32 0, ptr %i.bs, align 8, !tbaa !628
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !629
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 188
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !633
  %i.bv = trunc nuw nsw i32 %.lobit to i8
  %i.bw = xor i8 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i8 %i.bw, ptr %i.bx, align 8, !tbaa !631
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.by, align 4, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 152
  store ptr %5, ptr %i.bz, align 8, !tbaa !632
  store i64 %i.bp, ptr %i.bo, align 8
  %i.ca = and i32 %4, 2
  %.not = icmp eq i32 %i.ca, 0                    ; 2 uses
  %i.cb = and i32 %4, 2048
  %.not727 = icmp eq i32 %i.cb, 0
  br i1 %.not727, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !626
  store i32 %i.cd, ptr %i.bt, align 8, !tbaa !629
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  br i1 %.not726, label %.thread1095, label %bb.o

.thread1095:                                      ; preds = %bb.k, %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i8 0, ptr %i.ce, align 4, !tbaa !630
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %.thread1095
  %.1679 = phi i1 [ true, %bb.n ], [ true, %.thread1095 ], [ %.not, %bb.m ], [ %.not, %bb.l ]
  %.1 = phi ptr [ %8, %bb.n ], [ %8, %.thread1095 ], [ null, %bb.m ], [ %8, %bb.l ] ; 26 uses
  %.not729 = trunc i32 %4 to i1                   ; 2 uses
  br i1 %.not729, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = and i32 %4, 512
  %.not730 = icmp eq i32 %i.cf, 0
  br i1 %.not730, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink = phi i8 [ 0, %bb.o ], [ 1, %bb.p ]
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 180
  store i8 %.sink, ptr %i.cg, align 4, !tbaa !630
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %i.ch = zext i8 %i.bn to i32
  %.not731 = icmp eq i8 %i.bn, 0                  ; 2 uses
  %i.ci = select i1 %.not731, i32 2, i32 1
  %i.cj = sext i8 %i.av to i32
  %.not732 = icmp eq i32 %i.cj, %i.ch
  %i.ck = select i1 %.not731, i32 10, i32 5
  %spec.select = select i1 %.not732, i32 %i.ci, i32 %i.ck ; 6 uses
  %i.cl = icmp ne i8 %i.bn, 0
  %i.cm = icmp ne ptr %.1, null
  %or.cond5 = and i1 %i.cm, %i.cl
  br i1 %or.cond5, label %nk_input_is_mouse_hovering_rect.exit, label %bb.bt

nk_input_is_mouse_hovering_rect.exit:             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !387, !range !88, !noundef !89 ; 2 uses
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = zext nneg i8 %i.co to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.1, i64 260
  %i.cs = getelementptr inbounds nuw i8, ptr %.1, i64 356
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !391 ; 3 uses
  %i.cu = extractelement <2 x float> %i.q, i64 0  ; 2 uses
  %i.cv = fsub float %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !1169
  %i.cy = fadd float %i.cv, %i.cx                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1, i64 360
  %i.da = load float, ptr %i.cz, align 4, !tbaa !392 ; 3 uses
  %i.db = extractelement <2 x float> %i.q, i64 1  ; 2 uses
  %i.dc = fsub float %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 164
  %i.de = load float, ptr %i.dd, align 4, !tbaa !1170
  %i.df = fadd float %i.dc, %i.de                 ; 2 uses
  %i.dg = fcmp ole float %i.cu, %i.ct
  %i.dh = extractelement <2 x float> %i.al, i64 0
  %i.di = fcmp olt float %i.ct, %i.dh
  %or.cond.i.not1130.not1134 = select i1 %i.dg, i1 %i.di, i1 false
  %i.dj = fcmp ole float %i.db, %i.da
  %or.cond1124.not = select i1 %or.cond.i.not1130.not1134, i1 %i.dj, i1 false
  %i.dk = extractelement <2 x float> %i.al, i64 1
  %i.dl = fcmp olt float %i.da, %i.dk
  %.0.i = select i1 %or.cond1124.not, i1 %i.dl, i1 false ; 2 uses
  %i.dm = zext i1 %.0.i to i8
  br i1 %.1679, label %bb.s, label %bb.r

bb.r:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 172
  store i32 0, ptr %i.dn, align 4, !tbaa !627
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !626
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 176
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !628
  br label %.critedge769

bb.s:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit
  br i1 %.0.i, label %bb.t, label %.critedge769

bb.t:                                             ; preds = %bb.s
  %i.dr = load i8, ptr %i.cr, align 4, !tbaa !388, !range !88, !noundef !89
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %.1, i64 264
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !383
  %.not734 = icmp eq i32 %i.du, 0
  br i1 %.not734, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = tail call fastcc i32 @nk_textedit_locate_coord(ptr noundef nonnull %6, float noundef %i.cy, float noundef %i.df, ptr noundef readonly %9, float noundef %i.aj) ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 168
end_hunk_1
begin_hunk_2_@nk_do_edit:bb.a
  %.sroa.0.0.extract.trunc.i855 = trunc i32 %i.ke to i8
  br label %nk_rgb_factor.exit856

bb.cd:                                            ; preds = %nk_rgb_factor.exit838
  %i.kg = and i32 %i.ke, 255
  %i.kh = uitofp nneg i32 %i.kg to float
  %i.ki = fmul float %i.kd, %i.kh
  %i.kj = fptoui float %i.ki to i8
  %i.kk = and i32 %.sroa.5.0.extract.shift.i839, 255
  %i.kl = uitofp nneg i32 %i.kk to float
  %i.km = fmul float %i.kd, %i.kl
  %i.kn = fptoui float %i.km to i8
  %i.ko = and i32 %.sroa.7.0.extract.shift.i840, 255
  %i.kp = uitofp nneg i32 %i.ko to float
  %i.kq = fmul float %i.kd, %i.kp
  %i.kr = fptoui float %i.kq to i8
  br label %nk_rgb_factor.exit856

nk_rgb_factor.exit856:                            ; preds = %bb.cc, %bb.cd
  %.sroa.3.0.i841 = phi i8 [ %.sroa.5.0.extract.trunc.i854, %bb.cc ], [ %i.kn, %bb.cd ]
  %.sroa.011.0.i842 = phi i8 [ %.sroa.0.0.extract.trunc.i855, %bb.cc ], [ %i.kj, %bb.cd ]
  %.sroa.512.0.i843 = phi i8 [ %.sroa.7.0.extract.trunc.i853, %bb.cc ], [ %i.kr, %bb.cd ]
  %.sroa.9.0.extract.shift.i844 = and i32 %i.ke, -16777216
  %.sroa.512.0.insert.ext.i845 = zext i8 %.sroa.512.0.i843 to i32
  %.sroa.512.0.insert.shift.i846 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i845, 16
  %.sroa.512.0.insert.insert.i847 = or disjoint i32 %.sroa.512.0.insert.shift.i846, %.sroa.9.0.extract.shift.i844
  %.sroa.3.0.insert.ext.i848 = zext i8 %.sroa.3.0.i841 to i32
  %.sroa.3.0.insert.shift.i849 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i848, 8
  %.sroa.3.0.insert.insert.i850 = or disjoint i32 %.sroa.512.0.insert.insert.i847, %.sroa.3.0.insert.shift.i849
  %.sroa.011.0.insert.ext.i851 = zext i8 %.sroa.011.0.i842 to i32
  %.sroa.011.0.insert.insert.i852 = or disjoint i32 %.sroa.3.0.insert.insert.i850, %.sroa.011.0.insert.ext.i851
  call void @nk_stroke_rect(ptr noundef nonnull %1, <2 x float> %2, <2 x float> %3, float noundef %i.ka, float noundef %i.kb, i32 %.sroa.011.0.insert.insert.i852)
  br label %bb.ce

bb.ce:                                            ; preds = %nk_rgb_factor.exit856, %nk_rgb_factor.exit826, %nk_rgb_factor.exit, %nk_str_len_char.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 932 ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !409
  %i.ku = fsub float %.sroa.26.8.vec.extract345, %i.kt ; 2 uses
  %i.kv = fcmp ogt float %i.ku, 0.000000e+00
  %i.kw = select i1 %i.kv, float %i.ku, float 0.000000e+00 ; 3 uses
  %i.kx = load i8, ptr %i.au, align 1, !tbaa !636
  %.not749 = icmp eq i8 %i.kx, 0
  br i1 %.not749, label %bb.gi, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 172 ; 7 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !627 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 7 uses
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !628 ; 2 uses
  %. = call i32 @llvm.smin.i32(i32 %i.kz, i32 %i.lb) ; 2 uses
  %i.lc = call i32 @llvm.smax.i32(i32 %i.kz, i32 %i.lb) ; 2 uses
  %i.ld = icmp ne ptr %.0.i8111110, null
  %i.le = icmp ne i32 %.0.i814, 0
  %or.cond13 = and i1 %i.ld, %i.le
  br i1 %or.cond13, label %bb.cg, label %bb.eb

bb.cg:                                            ; preds = %bb.cf
  %i.lf = load i8, ptr %.0.i8111110, align 1, !tbaa !56 ; 7 uses
  %i.lg = icmp slt i8 %i.lf, -64
  br i1 %i.lg, label %nk_utf_decode.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lh = icmp slt i8 %i.lf, 0
  br i1 %i.lh, label %bb.ci, label %._crit_edge.thread82.i

._crit_edge.thread82.i:                           ; preds = %bb.ch
  %i.li = zext nneg i8 %i.lf to i32
  br label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.lj = icmp samesign ult i8 %i.lf, -32
  br i1 %i.lj, label %nk_utf_decode_byte.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lk = icmp samesign ult i8 %i.lf, -16
  br i1 %i.lk, label %nk_utf_decode_byte.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ll = and i8 %i.lf, -8
  %i.lm = icmp eq i8 %i.ll, -16
  br i1 %i.lm, label %nk_utf_decode_byte.exit.i, label %nk_utf_decode.exit

nk_utf_decode_byte.exit.i:                        ; preds = %bb.ck, %bb.cj, %bb.ci
  %storemerge12.lcssa.wide.i.i = phi i32 [ 4, %bb.ck ], [ 3, %bb.cj ], [ 2, %bb.ci ] ; 3 uses
  %i.ln = phi i8 [ 7, %bb.ck ], [ 15, %bb.cj ], [ 31, %bb.ci ]
  %i.lo = icmp sgt i32 %.0.i814, 1
  br i1 %i.lo, label %.lr.ph.preheader.i, label %nk_utf_decode.exit

.lr.ph.preheader.i:                               ; preds = %nk_utf_decode_byte.exit.i
  %i.lp = and i8 %i.ln, %i.lf
  %i.lq = zext nneg i8 %i.lp to i32
  %i.lr = zext nneg i32 %.0.i814 to i64
  %zext = zext nneg i32 %storemerge12.lcssa.wide.i.i to i64
  %i.ls = add nsw i64 %i.lr, -2
  %i.lt = add nsw i32 %storemerge12.lcssa.wide.i.i, -2
  %i.lu = zext nneg i32 %i.lt to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.ls, i64 %i.lu) ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.0.i8111110, i64 1
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !56  ; 2 uses
  %i.lx = icmp slt i8 %i.lw, -64
  br i1 %i.lx, label %bb.cl, label %nk_utf_decode.exit

bb.cl:                                            ; preds = %.lr.ph.preheader.i
  %i.ly = and i8 %i.lw, 63
  %i.lz = zext nneg i8 %i.ly to i32
  %i.ma = shl nuw nsw i32 %i.lq, 6
  %i.mb = or disjoint i32 %i.ma, %i.lz            ; 2 uses
  %exitcond1237.not = icmp eq i64 %umin, 0
  br i1 %exitcond1237.not, label %._crit_edge.i859, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.cl
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i8111110, i64 2
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !56  ; 2 uses
  %i.me = icmp slt i8 %i.md, -64
  br i1 %i.me, label %bb.cm, label %nk_utf_decode.exit

bb.cm:                                            ; preds = %.lr.ph.i.1
  %i.mf = and i8 %i.md, 63
  %i.mg = zext nneg i8 %i.mf to i32
  %i.mh = shl nuw nsw i32 %i.mb, 6
  %i.mi = or disjoint i32 %i.mh, %i.mg            ; 2 uses
  %exitcond1237.not.1 = icmp eq i64 %umin, 1
  br i1 %exitcond1237.not.1, label %._crit_edge.i859, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.cm
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.i8111110, i64 3
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !56  ; 2 uses
  %i.ml = icmp slt i8 %i.mk, -64
  br i1 %i.ml, label %bb.cn, label %nk_utf_decode.exit

bb.cn:                                            ; preds = %.lr.ph.i.2
  %i.mm = and i8 %i.mk, 63
  %i.mn = zext nneg i8 %i.mm to i32
  %i.mo = shl nuw nsw i32 %i.mi, 6
  %i.mp = or disjoint i32 %i.mo, %i.mn
  br label %._crit_edge.i859

._crit_edge.i859:                                 ; preds = %bb.cn, %bb.cm, %bb.cl
  %.lcssa1415 = phi i32 [ %i.mb, %bb.cl ], [ %i.mi, %bb.cm ], [ %i.mp, %bb.cn ]
  %indvars.iv.next.i.lcssa = phi i64 [ 2, %bb.cl ], [ 3, %bb.cm ], [ 4, %bb.cn ]
  %i.mq = icmp samesign ult i64 %indvars.iv.next.i.lcssa, %zext
  br i1 %i.mq, label %nk_utf_decode.exit, label %bb.co

bb.co:                                            ; preds = %._crit_edge.i859, %._crit_edge.thread82.i
  %.0.lcssa87.i = phi i32 [ %i.li, %._crit_edge.thread82.i ], [ %.lcssa1415, %._crit_edge.i859 ] ; 4 uses
  %storemerge12.lcssa.wide.i7886.i = phi i32 [ 1, %._crit_edge.thread82.i ], [ %storemerge12.lcssa.wide.i.i, %._crit_edge.i859 ] ; 3 uses
  %i.mr = zext nneg i32 %storemerge12.lcssa.wide.i7886.i to i64 ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !55
  %.not.i.i858 = icmp ugt i32 %i.mt, %.0.lcssa87.i
  br i1 %.not.i.i858, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.mr
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !55
  %i.mw = icmp uge i32 %.0.lcssa87.i, %i.mv
  %i.mx = add i32 %.0.lcssa87.i, -55296
  %or.cond.i.i = icmp ult i32 %i.mx, 2047
  %or.cond15.i.i = or i1 %or.cond.i.i, %i.mw
  br i1 %or.cond15.i.i, label %bb.cq, label %nk_utf_decode.exit

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br label %nk_utf_decode.exit

nk_utf_decode.exit:                               ; preds = %.lr.ph.preheader.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.cg, %bb.ck, %nk_utf_decode_byte.exit.i, %._crit_edge.i859, %bb.cp, %bb.cq
  %.11089 = phi i32 [ 65533, %bb.ck ], [ 65533, %bb.cg ], [ 65533, %._crit_edge.i859 ], [ 65533, %bb.cq ], [ %.0.lcssa87.i, %bb.cp ], [ 65533, %nk_utf_decode_byte.exit.i ], [ 65533, %.lr.ph.i.2 ], [ 65533, %.lr.ph.i.1 ], [ 65533, %.lr.ph.preheader.i ]
  %.023.i = phi i32 [ 1, %bb.ck ], [ 1, %bb.cg ], [ 0, %._crit_edge.i859 ], [ %storemerge12.lcssa.wide.i7886.i, %bb.cq ], [ %storemerge12.lcssa.wide.i7886.i, %bb.cp ], [ 0, %nk_utf_decode_byte.exit.i ], [ 1, %.lr.ph.preheader.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ] ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !139
  %i.na = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.nb = load float, ptr %i.na, align 8, !tbaa !140
  %i.nc = load ptr, ptr %9, align 8
  %i.nd = call float %i.mz(ptr %i.nc, float noundef %i.nb, ptr noundef nonnull %.0.i8111110, i32 noundef %.023.i) #50
  %i.ne = icmp sgt i32 %.0.i814, 0
  %i.nf = icmp ne i32 %.023.i, 0
  %i.ng = and i1 %i.nf, %i.ne
  br i1 %i.ng, label %.lr.ph.lr.ph, label %.outer._crit_edge.thread

.outer._crit_edge.thread:                         ; preds = %nk_utf_decode.exit
  %.sroa.0190.4.vec.insert1304 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.aj, i64 1
  br label %bb.dz

.lr.ph.lr.ph:                                     ; preds = %nk_utf_decode.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 168
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %nk_utf_decode.exit880
  %.0685.ph1203 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.ok, %nk_utf_decode.exit880 ] ; 5 uses
  %.0686.ph1202 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.ol, %nk_utf_decode.exit880 ]
  %.0688.ph1200 = phi i32 [ %.023.i, %.lr.ph.lr.ph ], [ %.023.i868, %nk_utf_decode.exit880 ]
  %.0689.ph1199 = phi float [ %i.nd, %.lr.ph.lr.ph ], [ %i.ql, %nk_utf_decode.exit880 ]
  %.sroa.0138.0.ph1198 = phi <2 x float> [ zeroinitializer, %.lr.ph.lr.ph ], [ %.sroa.0138.1, %nk_utf_decode.exit880 ]
  %.sroa.0141.0.ph1197 = phi <2 x float> [ zeroinitializer, %.lr.ph.lr.ph ], [ %.sroa.0141.1, %nk_utf_decode.exit880 ]
  %.sroa.0144.0.ph1196 = phi <2 x float> [ zeroinitializer, %.lr.ph.lr.ph ], [ %.sroa.0144.1, %nk_utf_decode.exit880 ]
  %.0691.ph1195 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.1692, %nk_utf_decode.exit880 ]
  %.0696.ph1194 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.1697, %nk_utf_decode.exit880 ]
  %.0699.ph1193 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.1700, %nk_utf_decode.exit880 ]
  %.sroa.0190.0.ph1192 = phi <2 x float> [ zeroinitializer, %.lr.ph.lr.ph ], [ %.sroa.0190.0.vec.insert, %nk_utf_decode.exit880 ] ; 3 uses
  %.0702.ph1191 = phi i32 [ 1, %.lr.ph.lr.ph ], [ %i.oj, %nk_utf_decode.exit880 ] ; 3 uses
  %.0.ph1190 = phi i32 [ %.11089, %.lr.ph.lr.ph ], [ %.21090, %nk_utf_decode.exit880 ]
  %i.ni = add nsw i32 %.0702.ph1191, -1           ; 2 uses
  %14 = sitofp i32 %i.ni to float
  %i.nj = fmul float %i.aj, %14                   ; 2 uses
  %i.nk = sext i32 %.0685.ph1203 to i64
  %i.nl = getelementptr inbounds i8, ptr %.0.i8111110, i64 %i.nk ; 3 uses
  %15 = uitofp nneg i32 %i.ni to float
  %16 = fmul float %i.aj, %15
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph, %nk_utf_decode.exit901
  %.06861172 = phi i32 [ %.0686.ph1202, %.lr.ph ], [ %i.qp, %nk_utf_decode.exit901 ] ; 5 uses
  %.06871171 = phi i32 [ %.0685.ph1203, %.lr.ph ], [ %i.qq, %nk_utf_decode.exit901 ] ; 8 uses
  %.06881170 = phi i32 [ %.0688.ph1200, %.lr.ph ], [ %.023.i889, %nk_utf_decode.exit901 ]
  %.06891169 = phi float [ %.0689.ph1199, %.lr.ph ], [ %i.sr, %nk_utf_decode.exit901 ]
  %.06901168 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.qr, %nk_utf_decode.exit901 ] ; 3 uses
  %.sroa.0138.01167 = phi <2 x float> [ %.sroa.0138.0.ph1198, %.lr.ph ], [ %.sroa.0138.1, %nk_utf_decode.exit901 ] ; 2 uses
  %.sroa.0141.01166 = phi <2 x float> [ %.sroa.0141.0.ph1197, %.lr.ph ], [ %.sroa.0141.1, %nk_utf_decode.exit901 ] ; 2 uses
  %.sroa.0144.01165 = phi <2 x float> [ %.sroa.0144.0.ph1196, %.lr.ph ], [ %.sroa.0144.1, %nk_utf_decode.exit901 ] ; 2 uses
  %.06911164 = phi ptr [ %.0691.ph1195, %.lr.ph ], [ %.1692, %nk_utf_decode.exit901 ] ; 2 uses
  %.06961163 = phi ptr [ %.0696.ph1194, %.lr.ph ], [ %.1697, %nk_utf_decode.exit901 ] ; 2 uses
  %.06991162 = phi ptr [ %.0699.ph1193, %.lr.ph ], [ %.1700, %nk_utf_decode.exit901 ] ; 2 uses
  %.01161 = phi i32 [ %.0.ph1190, %.lr.ph ], [ %.31091, %nk_utf_decode.exit901 ] ; 2 uses
  %.not763 = icmp eq ptr %.06991162, null
  br i1 %.not763, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.nm = load i32, ptr %i.nh, align 8, !tbaa !629
  %i.nn = icmp eq i32 %.06861172, %i.nm
  br i1 %i.nn, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.no = sub nsw i32 %.06871171, %.0685.ph1203
  %i.np = call fastcc <2 x float> @nk_text_calculate_text_bounds(ptr noundef nonnull %9, ptr noundef nonnull %i.nl, i32 noundef %i.no, float noundef %i.aj, ptr noundef %i.d, ptr noundef nonnull %10, ptr noundef %i.c)
  %.sroa.0144.0.vec.insert = insertelement <2 x float> %i.np, float %i.nj, i64 1
  %i.nq = sext i32 %.06871171 to i64
  %i.nr = getelementptr inbounds i8, ptr %.0.i8111110, i64 %i.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %.1700 = phi ptr [ %.06991162, %bb.cr ], [ %i.nr, %bb.ct ], [ null, %bb.cs ] ; 4 uses
  %.sroa.0144.1 = phi <2 x float> [ %.sroa.0144.01165, %bb.cr ], [ %.sroa.0144.0.vec.insert, %bb.ct ], [ %.sroa.0144.01165, %bb.cs ] ; 4 uses
  %.not764 = icmp eq ptr %.06961163, null
  br i1 %.not764, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.ns = load i32, ptr %i.ky, align 4, !tbaa !627
  %i.nt = load i32, ptr %i.la, align 8, !tbaa !628
  %.not765 = icmp ne i32 %i.ns, %i.nt
  %i.nu = icmp eq i32 %.06861172, %.
  %or.cond776 = select i1 %.not765, i1 %i.nu, i1 false
  br i1 %or.cond776, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #50
  %i.nv = sub nsw i32 %.06871171, %.0685.ph1203
  %i.nw = call fastcc <2 x float> @nk_text_calculate_text_bounds(ptr noundef nonnull %9, ptr noundef nonnull %i.nl, i32 noundef %i.nv, float noundef %i.aj, ptr noundef %i.f, ptr noundef nonnull %11, ptr noundef %i.e)
  %.sroa.0141.0.vec.insert = insertelement <2 x float> %i.nw, float %16, i64 1
  %i.nx = sext i32 %.06871171 to i64
  %i.ny = getelementptr inbounds i8, ptr %.0.i8111110, i64 %i.nx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %.1697 = phi ptr [ %.06961163, %bb.cu ], [ %i.ny, %bb.cw ], [ null, %bb.cv ] ; 4 uses
  %.sroa.0141.1 = phi <2 x float> [ %.sroa.0141.01166, %bb.cu ], [ %.sroa.0141.0.vec.insert, %bb.cw ], [ %.sroa.0141.01166, %bb.cv ] ; 4 uses
  %.not766 = icmp eq ptr %.06911164, null
  br i1 %.not766, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.nz = load i32, ptr %i.ky, align 4, !tbaa !627
  %i.oa = load i32, ptr %i.la, align 8, !tbaa !628
  %.not767 = icmp ne i32 %i.nz, %i.oa
  %i.ob = icmp eq i32 %.06861172, %i.lc
  %or.cond777 = select i1 %.not767, i1 %i.ob, i1 false
  br i1 %or.cond777, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #50
  %i.oc = sub nsw i32 %.06871171, %.0685.ph1203
  %i.od = call fastcc <2 x float> @nk_text_calculate_text_bounds(ptr noundef nonnull %9, ptr noundef nonnull %i.nl, i32 noundef %i.oc, float noundef %i.aj, ptr noundef %i.h, ptr noundef nonnull %12, ptr noundef %i.g)
  %.sroa.0138.0.vec.insert = insertelement <2 x float> %i.od, float %i.nj, i64 1
  %i.oe = sext i32 %.06871171 to i64
  %i.of = getelementptr inbounds i8, ptr %.0.i8111110, i64 %i.oe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #50
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx
  %.1692 = phi ptr [ %.06911164, %bb.cx ], [ %i.of, %bb.cz ], [ null, %bb.cy ] ; 4 uses
  %.sroa.0138.1 = phi <2 x float> [ %.sroa.0138.01167, %bb.cx ], [ %.sroa.0138.0.vec.insert, %bb.cz ], [ %.sroa.0138.01167, %bb.cy ] ; 4 uses
  %i.og = icmp eq i32 %.01161, 10
  br i1 %i.og, label %bb.db, label %bb.dn

bb.db:                                            ; preds = %bb.da
  %.sroa.0190.0.vec.extract = extractelement <2 x float> %.sroa.0190.0.ph1192, i64 0 ; 2 uses
  %i.oh = fcmp olt float %.sroa.0190.0.vec.extract, %.06901168
  %i.oi = select i1 %i.oh, float %.06901168, float %.sroa.0190.0.vec.extract
  %.sroa.0190.0.vec.insert = insertelement <2 x float> %.sroa.0190.0.ph1192, float %i.oi, i64 0 ; 2 uses
  %i.oj = add nuw nsw i32 %.0702.ph1191, 1        ; 2 uses
  %i.ok = add nsw i32 %.06871171, 1               ; 5 uses
  %i.ol = add nsw i32 %.06861172, 1
  %i.om = sext i32 %i.ok to i64
  %i.on = getelementptr inbounds i8, ptr %.0.i8111110, i64 %i.om ; 5 uses
  %i.oo = sub i32 %.0.i814, %i.ok                 ; 2 uses
  %.not.i860 = icmp eq i32 %.0.i814, %i.ok
  br i1 %.not.i860, label %nk_utf_decode.exit880, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.op = load i8, ptr %i.on, align 1, !tbaa !56  ; 7 uses
  %i.oq = icmp slt i8 %i.op, -64
  br i1 %i.oq, label %nk_utf_decode.exit880, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.or = icmp slt i8 %i.op, 0
  br i1 %i.or, label %bb.de, label %._crit_edge.thread82.i862

._crit_edge.thread82.i862:                        ; preds = %bb.dd
  %i.os = zext nneg i8 %i.op to i32
  br label %bb.dk

bb.de:                                            ; preds = %bb.dd
  %i.ot = icmp samesign ult i8 %i.op, -32
  br i1 %i.ot, label %nk_utf_decode_byte.exit.i869, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ou = icmp samesign ult i8 %i.op, -16
  br i1 %i.ou, label %nk_utf_decode_byte.exit.i869, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ov = and i8 %i.op, -8
  %i.ow = icmp eq i8 %i.ov, -16
  br i1 %i.ow, label %nk_utf_decode_byte.exit.i869, label %nk_utf_decode.exit880

nk_utf_decode_byte.exit.i869:                     ; preds = %bb.dg, %bb.df, %bb.de
  %storemerge12.lcssa.wide.i.i870 = phi i32 [ 4, %bb.dg ], [ 3, %bb.df ], [ 2, %bb.de ] ; 3 uses
  %i.ox = phi i8 [ 7, %bb.dg ], [ 15, %bb.df ], [ 31, %bb.de ]
  %i.oy = icmp sgt i32 %i.oo, 1
  br i1 %i.oy, label %.lr.ph.preheader.i871, label %nk_utf_decode.exit880

.lr.ph.preheader.i871:                            ; preds = %nk_utf_decode_byte.exit.i869
  %i.oz = and i8 %i.ox, %i.op
  %i.pa = zext nneg i8 %i.oz to i32
  %i.pb = zext nneg i32 %i.oo to i64
  %zext1241 = zext nneg i32 %storemerge12.lcssa.wide.i.i870 to i64
  %i.pc = add nsw i64 %i.pb, -2
  %i.pd = add nsw i32 %storemerge12.lcssa.wide.i.i870, -2
  %i.pe = zext nneg i32 %i.pd to i64
  %umin1242 = call i64 @llvm.umin.i64(i64 %i.pc, i64 %i.pe) ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !56  ; 2 uses
  %i.ph = icmp slt i8 %i.pg, -64
  br i1 %i.ph, label %bb.dh, label %nk_utf_decode.exit880

bb.dh:                                            ; preds = %.lr.ph.preheader.i871
  %i.pi = and i8 %i.pg, 63
  %i.pj = zext nneg i8 %i.pi to i32
  %i.pk = shl nuw nsw i32 %i.pa, 6
  %i.pl = or disjoint i32 %i.pk, %i.pj            ; 2 uses
  %exitcond1243.not = icmp eq i64 %umin1242, 0
  br i1 %exitcond1243.not, label %._crit_edge.i879, label %.lr.ph.i872.1

.lr.ph.i872.1:                                    ; preds = %bb.dh
  %i.pm = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !56  ; 2 uses
  %i.po = icmp slt i8 %i.pn, -64
  br i1 %i.po, label %bb.di, label %nk_utf_decode.exit880

bb.di:                                            ; preds = %.lr.ph.i872.1
  %i.pp = and i8 %i.pn, 63
  %i.pq = zext nneg i8 %i.pp to i32
  %i.pr = shl nuw nsw i32 %i.pl, 6
  %i.ps = or disjoint i32 %i.pr, %i.pq            ; 2 uses
  %exitcond1243.not.1 = icmp eq i64 %umin1242, 1
  br i1 %exitcond1243.not.1, label %._crit_edge.i879, label %.lr.ph.i872.2

.lr.ph.i872.2:                                    ; preds = %bb.di
  %i.pt = getelementptr inbounds nuw i8, ptr %i.on, i64 3
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !56  ; 2 uses
  %i.pv = icmp slt i8 %i.pu, -64
  br i1 %i.pv, label %bb.dj, label %nk_utf_decode.exit880

bb.dj:                                            ; preds = %.lr.ph.i872.2
  %i.pw = and i8 %i.pu, 63
  %i.px = zext nneg i8 %i.pw to i32
  %i.py = shl nuw nsw i32 %i.ps, 6
  %i.pz = or disjoint i32 %i.py, %i.px
  br label %._crit_edge.i879

._crit_edge.i879:                                 ; preds = %bb.dj, %bb.di, %bb.dh
  %.lcssa1410 = phi i32 [ %i.pl, %bb.dh ], [ %i.ps, %bb.di ], [ %i.pz, %bb.dj ]
  %indvars.iv.next.i877.lcssa = phi i64 [ 2, %bb.dh ], [ 3, %bb.di ], [ 4, %bb.dj ]
  %i.qa = icmp samesign ult i64 %indvars.iv.next.i877.lcssa, %zext1241
  br i1 %i.qa, label %nk_utf_decode.exit880, label %bb.dk

bb.dk:                                            ; preds = %._crit_edge.i879, %._crit_edge.thread82.i862
  %.0.lcssa87.i863 = phi i32 [ %i.os, %._crit_edge.thread82.i862 ], [ %.lcssa1410, %._crit_edge.i879 ] ; 4 uses
  %storemerge12.lcssa.wide.i7886.i864 = phi i32 [ 1, %._crit_edge.thread82.i862 ], [ %storemerge12.lcssa.wide.i.i870, %._crit_edge.i879 ] ; 3 uses
  %i.qb = zext nneg i32 %storemerge12.lcssa.wide.i7886.i864 to i64 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !55
  %.not.i.i865 = icmp ugt i32 %i.qd, %.0.lcssa87.i863
  br i1 %.not.i.i865, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.qb
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !55
  %i.qg = icmp uge i32 %.0.lcssa87.i863, %i.qf
  %i.qh = add i32 %.0.lcssa87.i863, -55296
  %or.cond.i.i866 = icmp ult i32 %i.qh, 2047
  %or.cond15.i.i867 = or i1 %or.cond.i.i866, %i.qg
  br i1 %or.cond15.i.i867, label %bb.dm, label %nk_utf_decode.exit880

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  br label %nk_utf_decode.exit880

nk_utf_decode.exit880:                            ; preds = %.lr.ph.preheader.i871, %.lr.ph.i872.1, %.lr.ph.i872.2, %bb.db, %bb.dc, %bb.dg, %nk_utf_decode_byte.exit.i869, %._crit_edge.i879, %bb.dl, %bb.dm
  %.21090 = phi i32 [ 10, %bb.db ], [ 65533, %bb.dc ], [ 65533, %._crit_edge.i879 ], [ 65533, %bb.dm ], [ %.0.lcssa87.i863, %bb.dl ], [ 65533, %bb.dg ], [ 65533, %nk_utf_decode_byte.exit.i869 ], [ 65533, %.lr.ph.i872.2 ], [ 65533, %.lr.ph.i872.1 ], [ 65533, %.lr.ph.preheader.i871 ]
  %.023.i868 = phi i32 [ 0, %bb.db ], [ 1, %bb.dc ], [ 0, %._crit_edge.i879 ], [ %storemerge12.lcssa.wide.i7886.i864, %bb.dm ], [ %storemerge12.lcssa.wide.i7886.i864, %bb.dl ], [ 1, %bb.dg ], [ 0, %nk_utf_decode_byte.exit.i869 ], [ 1, %.lr.ph.preheader.i871 ], [ 2, %.lr.ph.i872.1 ], [ 3, %.lr.ph.i872.2 ] ; 3 uses
  %i.qi = load ptr, ptr %i.my, align 8, !tbaa !139
  %i.qj = load float, ptr %i.na, align 8, !tbaa !140
  %i.qk = load ptr, ptr %9, align 8
  %i.ql = call float %i.qi(ptr %i.qk, float noundef %i.qj, ptr noundef nonnull %i.on, i32 noundef %.023.i868) #50
  %i.qm = icmp slt i32 %i.ok, %.0.i814
  %i.qn = icmp ne i32 %.023.i868, 0
  %i.qo = and i1 %i.qn, %i.qm
  br i1 %i.qo, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !1165

bb.dn:                                            ; preds = %bb.da
  %i.qp = add nsw i32 %.06861172, 1
  %i.qq = add nsw i32 %.06871171, %.06881170      ; 5 uses
  %i.qr = fadd float %.06901168, %.06891169       ; 2 uses
  %i.qs = sext i32 %i.qq to i64
  %i.qt = getelementptr inbounds i8, ptr %.0.i8111110, i64 %i.qs ; 5 uses
  %i.qu = sub i32 %.0.i814, %i.qq                 ; 2 uses
  %.not.i881 = icmp eq i32 %.0.i814, %i.qq
  br i1 %.not.i881, label %nk_utf_decode.exit901, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qv = load i8, ptr %i.qt, align 1, !tbaa !56  ; 7 uses
  %i.qw = icmp slt i8 %i.qv, -64
  br i1 %i.qw, label %nk_utf_decode.exit901, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qx = icmp slt i8 %i.qv, 0
  br i1 %i.qx, label %bb.dq, label %._crit_edge.thread82.i883

._crit_edge.thread82.i883:                        ; preds = %bb.dp
  %i.qy = zext nneg i8 %i.qv to i32
  br label %bb.dw

bb.dq:                                            ; preds = %bb.dp
  %i.qz = icmp samesign ult i8 %i.qv, -32
end_hunk_2
