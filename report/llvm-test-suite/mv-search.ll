Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mv-search?download=true
inline.NumInlined: 41
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Init_Motion_Search_Module:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = tail call noalias ptr @calloc(i64 noundef %i.ap, i64 noundef 2) #10 ; 2 uses
  store ptr %i.aw, ptr @spiral_hpel_search_y, align 8, !tbaa !45
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = load i32, ptr @max_mvd, align 4, !tbaa !7
  %i.az = shl nsw i32 %i.ay, 1
  %i.ba = or disjoint i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call noalias ptr @calloc(i64 noundef %i.bb, i64 noundef 4) #10 ; 2 uses
  store ptr %i.bc, ptr @mvbits, align 8, !tbaa !49
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = zext nneg i32 %i.ac to i64
  %i.bf = tail call noalias ptr @calloc(i64 noundef %i.be, i64 noundef 4) #10 ; 2 uses
  store ptr %i.bf, ptr @refbits, align 8, !tbaa !49
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bh = load i32, ptr @byte_abs_range, align 4, !tbaa !7
  %i.bi = sext i32 %i.bh to i64
  %i.bj = tail call noalias ptr @calloc(i64 noundef %i.bi, i64 noundef 4) #10 ; 2 uses
  store ptr %i.bj, ptr @byte_abs, align 8, !tbaa !49
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bl = load ptr, ptr @img, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !107
  %i.bo = tail call i32 @get_mem4Dint(ptr noundef nonnull @motion_cost, i32 noundef 8, i32 noundef 2, i32 noundef %i.bn, i32 noundef 4) #9 ; 0 uses
  %i.bp = load i32, ptr @max_mvd, align 4, !tbaa !7
  %i.bq = load ptr, ptr @mvbits, align 8, !tbaa !49
  %i.br = sext i32 %i.bp to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br ; 4 uses
  store ptr %i.bs, ptr @mvbits, align 8, !tbaa !49
  %i.bt = load i32, ptr @byte_abs_range, align 4, !tbaa !7
  %i.bu = sdiv i32 %i.bt, 2
  %i.bv = load ptr, ptr @byte_abs, align 8, !tbaa !49
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw ; 4 uses
  store ptr %i.bx, ptr @byte_abs, align 8, !tbaa !49
  store i32 1, ptr %i.bs, align 4, !tbaa !7
  %.not114 = icmp slt i32 %i.af, 0
  br i1 %.not114, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.o, %._crit_edge
  %.0101115 = phi i32 [ %i.ch, %._crit_edge ], [ 3, %bb.o ] ; 4 uses
  %i.by = lshr i32 %.0101115, 1                   ; 2 uses
  %.not145 = icmp eq i32 %i.by, 31
  br i1 %.not145, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph117
  %i.bz = shl nuw i32 1, %i.by                    ; 2 uses
  %i.ca = ashr exact i32 %i.bz, 1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = sext i32 %i.bz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.cb, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv
  store i32 %.0101115, ptr %i.cd, align 4, !tbaa !7
  %i.ce = sub nsw i64 0, %indvars.iv
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ce
  store i32 %.0101115, ptr %i.cf, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph117
  %i.ch = add nuw nsw i32 %.0101115, 2            ; 2 uses
  %.not = icmp sgt i32 %i.ch, %i.ah
  br i1 %.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !87

._crit_edge118:                                   ; preds = %._crit_edge, %bb.o
  %i.ci = load ptr, ptr @refbits, align 8, !tbaa !49 ; 3 uses
  store i32 1, ptr %i.ci, align 4, !tbaa !7
  %.not106123 = icmp slt i32 %i.aa, 3
  br i1 %.not106123, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %._crit_edge118, %._crit_edge122
  %.1102124 = phi i32 [ %i.df, %._crit_edge122 ], [ 3, %._crit_edge118 ] ; 4 uses
  %i.cj = lshr i32 %.1102124, 1
  %i.ck = shl nuw i32 2, %i.cj                    ; 3 uses
  %i.cl = add i32 %i.ck, -1                       ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, 1
  br i1 %i.cm, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph126
  %i.cn = zext nneg i32 %i.ck to i64
  %i.co = add nsw i64 %i.cn, -2
  %i.cp = lshr exact i64 %i.co, 1                 ; 4 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = add i32 %i.cq, 1
  %i.cs = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 %i.cr)
  %i.ct = xor i32 %i.cq, -1
  %i.cu = add i32 %i.cs, %i.ct                    ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cu, 7
  br i1 %min.iters.check, label %.lr.ph121.preheader300, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph121.preheader
  %n.vec = and i64 %i.cw, 8589934584              ; 3 uses
  %i.cx = add nuw i64 %i.cp, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1102124, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.da, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %._crit_edge122, label %.lr.ph121.preheader300

.lr.ph121.preheader300:                           ; preds = %.lr.ph121.preheader, %middle.block
  %indvars.iv148.ph = phi i64 [ %i.cp, %.lr.ph121.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader300, %.lr.ph121
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %.lr.ph121 ], [ %indvars.iv148.ph, %.lr.ph121.preheader300 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv148
  store i32 %.1102124, ptr %i.dc, align 4, !tbaa !7
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %i.dd = trunc nuw i64 %indvars.iv.next149 to i32
  %i.de = icmp sgt i32 %i.cl, %i.dd
  br i1 %i.de, label %.lr.ph121, label %._crit_edge122, !llvm.loop !89

._crit_edge122:                                   ; preds = %.lr.ph121, %middle.block, %.lr.ph126
  %i.df = add nuw nsw i32 %.1102124, 2            ; 2 uses
  %.not106 = icmp sgt i32 %i.df, %i.aa
  br i1 %.not106, label %._crit_edge127, label %.lr.ph126, !llvm.loop !90

._crit_edge127:                                   ; preds = %._crit_edge122, %._crit_edge118
  store i32 0, ptr %i.bx, align 4, !tbaa !7
  %i.dg = load i32, ptr @byte_abs_range, align 4, !tbaa !7
  %i.dh = icmp sgt i32 %i.dg, 3
  br i1 %i.dh, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %._crit_edge127, %.lr.ph130
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.lr.ph130 ], [ 1, %._crit_edge127 ] ; 4 uses
  %i.di = sub nsw i64 0, %indvars.iv150
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.di
  %i.dk = trunc nuw nsw i64 %indvars.iv150 to i32 ; 2 uses
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !7
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv150
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !7
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.dm = load i32, ptr @byte_abs_range, align 4, !tbaa !7
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next151, %i.do
  br i1 %i.dp, label %.lr.ph130, label %._crit_edge131, !llvm.loop !91

._crit_edge131:                                   ; preds = %.lr.ph130, %._crit_edge127
  %i.dq = load ptr, ptr @spiral_search_y, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.dq, align 2, !tbaa !46
  %i.dr = load ptr, ptr @spiral_search_x, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.dr, align 2, !tbaa !46
  %i.ds = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.ds, align 2, !tbaa !46
  %i.dt = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !45 ; 13 uses
  store i16 0, ptr %i.dt, align 2, !tbaa !46
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.du = add nuw i32 %smax, 1
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %._crit_edge140, %._crit_edge131
  %indvar174 = phi i64 [ %indvar.next175, %._crit_edge140 ], [ 0, %._crit_edge131 ] ; 5 uses
  %indvars.iv159 = phi i32 [ %indvars.iv.next160, %._crit_edge140 ], [ 2, %._crit_edge131 ] ; 3 uses
  %.0143 = phi i32 [ %i.hb, %._crit_edge140 ], [ 1, %._crit_edge131 ] ; 7 uses
  %.098142 = phi i64 [ %indvars.iv.next157, %._crit_edge140 ], [ 1, %._crit_edge131 ] ; 6 uses
  %i.dv = shl nuw nsw i64 %indvar174, 3
  %i.dw = add nuw i64 %i.dv, 16
  %i.dx = sub nsw i32 0, %.0143                   ; 5 uses
  %i.dy = sub nsw i32 1, %.0143                   ; 4 uses
  %i.dz = trunc i32 %i.dx to i16                  ; 3 uses
  %i.ea = shl i16 %i.dz, 1                        ; 2 uses
  %i.eb = trunc i32 %.0143 to i16                 ; 3 uses
  %i.ec = shl i16 %i.eb, 1                        ; 2 uses
  %i.ed = shl i64 %indvar174, 1                   ; 2 uses
  %min.iters.check267 = icmp ult i64 %i.ed, 12
  br i1 %min.iters.check267, label %scalar.ph266.preheader, label %vector.memcheck230

scalar.ph266.preheader:                           ; preds = %vector.body281, %vector.memcheck230, %.lr.ph135
  %indvar.ph = phi i64 [ 0, %vector.memcheck230 ], [ 0, %.lr.ph135 ], [ %n.vec269, %vector.body281 ]
  %indvars.iv153.ph = phi i64 [ %.098142, %vector.memcheck230 ], [ %.098142, %.lr.ph135 ], [ %i.ei, %vector.body281 ]
  %.3133.ph = phi i32 [ %i.dy, %vector.memcheck230 ], [ %i.dy, %.lr.ph135 ], [ %i.ek, %vector.body281 ]
  br label %scalar.ph266

vector.memcheck230:                               ; preds = %.lr.ph135
  %i.ee = shl nuw nsw i64 %indvar174, 3
  %i.ef = or disjoint i64 %i.ee, 4                ; 4 uses
  %scevgep241 = getelementptr i8, ptr %i.ds, i64 %i.ef
  %scevgep238 = getelementptr i8, ptr %i.dt, i64 %i.ef
  %scevgep235 = getelementptr i8, ptr %i.dq, i64 %i.ef
  %scevgep232 = getelementptr i8, ptr %i.dr, i64 %i.ef
  %i.eg = shl i64 %.098142, 1                     ; 8 uses
  %scevgep231 = getelementptr i8, ptr %i.dr, i64 %i.eg ; 3 uses
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.eg ; 3 uses
  %scevgep234 = getelementptr i8, ptr %i.dq, i64 %i.eg ; 3 uses
  %scevgep236 = getelementptr i8, ptr %scevgep235, i64 %i.eg ; 3 uses
  %scevgep237 = getelementptr i8, ptr %i.dt, i64 %i.eg ; 3 uses
  %scevgep239 = getelementptr i8, ptr %scevgep238, i64 %i.eg ; 3 uses
  %scevgep240 = getelementptr i8, ptr %i.ds, i64 %i.eg ; 3 uses
  %scevgep242 = getelementptr i8, ptr %scevgep241, i64 %i.eg ; 3 uses
  %bound0243 = icmp ult ptr %scevgep231, %scevgep236
  %bound1244 = icmp ult ptr %scevgep234, %scevgep233
  %found.conflict245 = and i1 %bound0243, %bound1244
  %bound0246 = icmp ult ptr %scevgep231, %scevgep239
  %bound1247 = icmp ult ptr %scevgep237, %scevgep233
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %found.conflict245, %found.conflict248
  %bound0250 = icmp ult ptr %scevgep231, %scevgep242
  %bound1251 = icmp ult ptr %scevgep240, %scevgep233
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %scevgep234, %scevgep239
  %bound1255 = icmp ult ptr %scevgep237, %scevgep236
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %bound0258 = icmp ult ptr %scevgep234, %scevgep242
  %bound1259 = icmp ult ptr %scevgep240, %scevgep236
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  %bound0262 = icmp ult ptr %scevgep237, %scevgep242
  %bound1263 = icmp ult ptr %scevgep240, %scevgep239
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  br i1 %conflict.rdx265, label %scalar.ph266.preheader, label %vector.ph268

vector.ph268:                                     ; preds = %vector.memcheck230
  %n.vec269 = and i64 %i.ed, -8                   ; 4 uses
  %i.eh = shl i64 %n.vec269, 1
  %i.ei = add i64 %.098142, %i.eh
  %i.ej = trunc i64 %n.vec269 to i32
  %i.ek = add i32 %i.dy, %i.ej
  %broadcast.splatinsert270 = insertelement <4 x i16> poison, i16 %i.dz, i64 0
  %broadcast.splatinsert272 = insertelement <4 x i16> poison, i16 %i.ea, i64 0
  %broadcast.splatinsert274 = insertelement <4 x i16> poison, i16 %i.eb, i64 0
  %broadcast.splatinsert276 = insertelement <4 x i16> poison, i16 %i.ec, i64 0
  %i.el = trunc i32 %i.dy to i16
  %broadcast.splatinsert278 = insertelement <4 x i16> poison, i16 %i.el, i64 0
  %broadcast.splat279 = shufflevector <4 x i16> %broadcast.splatinsert278, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction280 = add <4 x i16> %broadcast.splat279, <i16 0, i16 1, i16 2, i16 3>
  %interleaved.vec287 = shufflevector <4 x i16> %broadcast.splatinsert270, <4 x i16> %broadcast.splatinsert274, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  %interleaved.vec291 = shufflevector <4 x i16> %broadcast.splatinsert272, <4 x i16> %broadcast.splatinsert276, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph268
  %index282 = phi i64 [ 0, %vector.ph268 ], [ %index.next293, %vector.body281 ] ; 2 uses
  %vec.ind283 = phi <4 x i16> [ %induction280, %vector.ph268 ], [ %vec.ind.next294, %vector.body281 ] ; 4 uses
  %step.add284 = add <4 x i16> %vec.ind283, splat (i16 4) ; 2 uses
  %i.em = shl i64 %index282, 1
  %i.en = add i64 %.098142, %i.em                 ; 5 uses
  %i.eo = add i64 %i.en, 8                        ; 4 uses
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.en
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.eo
  %i.er = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.en
  %i.es = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.eo
  %i.et = shl <4 x i16> %vec.ind283, splat (i16 1)
  %i.eu = shl <4 x i16> %step.add284, splat (i16 1)
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.en
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.eo
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.en
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.eo
  %interleaved.vec285 = shufflevector <4 x i16> %vec.ind283, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec285, ptr %i.ep, align 2, !tbaa !46, !alias.scope !112, !noalias !113
  %interleaved.vec286 = shufflevector <4 x i16> %step.add284, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec286, ptr %i.eq, align 2, !tbaa !46, !alias.scope !112, !noalias !113
  store <8 x i16> %interleaved.vec287, ptr %i.er, align 2, !tbaa !46, !alias.scope !114, !noalias !115
  store <8 x i16> %interleaved.vec287, ptr %i.es, align 2, !tbaa !46, !alias.scope !114, !noalias !115
  %interleaved.vec289 = shufflevector <4 x i16> %i.et, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec289, ptr %i.ev, align 2, !tbaa !46, !alias.scope !116, !noalias !117
  %interleaved.vec290 = shufflevector <4 x i16> %i.eu, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec290, ptr %i.ew, align 2, !tbaa !46, !alias.scope !116, !noalias !117
  store <8 x i16> %interleaved.vec291, ptr %i.ex, align 2, !tbaa !46, !alias.scope !117
  store <8 x i16> %interleaved.vec291, ptr %i.ey, align 2, !tbaa !46, !alias.scope !117
  %index.next293 = add nuw i64 %index282, 8       ; 2 uses
  %vec.ind.next294 = add <4 x i16> %vec.ind283, splat (i16 8)
  %i.ez = icmp eq i64 %index.next293, %n.vec269
  br i1 %i.ez, label %scalar.ph266.preheader, label %vector.body281, !llvm.loop !97

.lr.ph139.loopexit:                               ; preds = %scalar.ph266
  %i.fa = trunc i32 %i.dx to i16                  ; 3 uses
  %i.fb = shl i16 %i.fa, 1                        ; 2 uses
  %i.fc = trunc i32 %.0143 to i16                 ; 3 uses
  %i.fd = shl i16 %i.fc, 1                        ; 2 uses
  %0 = shl i64 %indvar174, 1                      ; 2 uses
  %1 = add nuw i64 %0, 2
  %min.iters.check203 = icmp ult i64 %0, 9
  br i1 %min.iters.check203, label %scalar.ph202.preheader, label %vector.memcheck

scalar.ph202.preheader:                           ; preds = %vector.body216, %vector.memcheck, %.lr.ph139.loopexit
  %indvars.iv156.ph = phi i64 [ %indvars.iv.next154, %vector.memcheck ], [ %indvars.iv.next154, %.lr.ph139.loopexit ], [ %i.fl, %vector.body216 ]
  %.4138.ph = phi i32 [ %i.dx, %vector.memcheck ], [ %i.dx, %.lr.ph139.loopexit ], [ %i.fn, %vector.body216 ]
  br label %scalar.ph202

vector.memcheck:                                  ; preds = %.lr.ph139.loopexit
  %i.fe = shl nuw nsw i64 %indvar, 2              ; 2 uses
  %i.ff = shl i64 %.098142, 1                     ; 2 uses
  %i.fg = add i64 %i.ff, 4
  %i.fh = add i64 %i.fe, %i.fg                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.dr, i64 %i.fh ; 3 uses
  %i.fi = add i64 %i.dw, %i.ff
  %i.fj = add i64 %i.fe, %i.fi                    ; 4 uses
  %scevgep176 = getelementptr i8, ptr %i.dr, i64 %i.fj ; 3 uses
  %scevgep177 = getelementptr i8, ptr %i.dq, i64 %i.fh ; 3 uses
  %scevgep178 = getelementptr i8, ptr %i.dq, i64 %i.fj ; 3 uses
  %scevgep179 = getelementptr i8, ptr %i.dt, i64 %i.fh ; 3 uses
  %scevgep180 = getelementptr i8, ptr %i.dt, i64 %i.fj ; 3 uses
  %scevgep181 = getelementptr i8, ptr %i.ds, i64 %i.fh ; 3 uses
  %scevgep182 = getelementptr i8, ptr %i.ds, i64 %i.fj ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep178
  %bound1 = icmp ult ptr %scevgep177, %scevgep176
  %found.conflict = and i1 %bound0, %bound1
  %bound0183 = icmp ult ptr %scevgep, %scevgep180
  %bound1184 = icmp ult ptr %scevgep179, %scevgep176
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx = or i1 %found.conflict, %found.conflict185
  %bound0186 = icmp ult ptr %scevgep, %scevgep182
  %bound1187 = icmp ult ptr %scevgep181, %scevgep176
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx, %found.conflict188
  %bound0190 = icmp ult ptr %scevgep177, %scevgep180
  %bound1191 = icmp ult ptr %scevgep179, %scevgep178
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %scevgep177, %scevgep182
  %bound1195 = icmp ult ptr %scevgep181, %scevgep178
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %scevgep179, %scevgep182
  %bound1199 = icmp ult ptr %scevgep181, %scevgep180
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  br i1 %conflict.rdx201, label %scalar.ph202.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %vector.memcheck
  %n.vec205 = and i64 %1, -8                      ; 3 uses
  %i.fk = shl i64 %n.vec205, 1
  %i.fl = add i64 %indvars.iv.next154, %i.fk
  %i.fm = trunc i64 %n.vec205 to i32
  %i.fn = sub i32 %i.fm, %.0143
  %broadcast.splatinsert206 = insertelement <4 x i16> poison, i16 %i.fa, i64 0
  %broadcast.splatinsert208 = insertelement <4 x i16> poison, i16 %i.fb, i64 0
  %broadcast.splatinsert210 = insertelement <4 x i16> poison, i16 %i.fc, i64 0
  %broadcast.splatinsert212 = insertelement <4 x i16> poison, i16 %i.fd, i64 0
  %i.fo = trunc i32 %i.dx to i16
  %broadcast.splatinsert214 = insertelement <4 x i16> poison, i16 %i.fo, i64 0
  %broadcast.splat215 = shufflevector <4 x i16> %broadcast.splatinsert214, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i16> %broadcast.splat215, <i16 0, i16 1, i16 2, i16 3>
  %interleaved.vec = shufflevector <4 x i16> %broadcast.splatinsert206, <4 x i16> %broadcast.splatinsert210, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  %interleaved.vec221 = shufflevector <4 x i16> %broadcast.splatinsert208, <4 x i16> %broadcast.splatinsert212, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph204
  %index217 = phi i64 [ 0, %vector.ph204 ], [ %index.next225, %vector.body216 ] ; 2 uses
  %vec.ind = phi <4 x i16> [ %induction, %vector.ph204 ], [ %vec.ind.next, %vector.body216 ] ; 4 uses
  %step.add = add <4 x i16> %vec.ind, splat (i16 4) ; 2 uses
  %i.fp = shl i64 %index217, 1
  %i.fq = add i64 %indvars.iv.next154, %i.fp      ; 5 uses
  %i.fr = add i64 %i.fq, 8                        ; 4 uses
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.fq
  %i.ft = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.fr
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.fq
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.fr
  %i.fw = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.fq
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.fr
  %i.fy = shl <4 x i16> %vec.ind, splat (i16 1)
  %i.fz = shl <4 x i16> %step.add, splat (i16 1)
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.fq
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.fr
  store <8 x i16> %interleaved.vec, ptr %i.fs, align 2, !tbaa !46, !alias.scope !118, !noalias !119
  store <8 x i16> %interleaved.vec, ptr %i.ft, align 2, !tbaa !46, !alias.scope !118, !noalias !119
  %interleaved.vec219 = shufflevector <4 x i16> %vec.ind, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec219, ptr %i.fu, align 2, !tbaa !46, !alias.scope !120, !noalias !121
  %interleaved.vec220 = shufflevector <4 x i16> %step.add, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec220, ptr %i.fv, align 2, !tbaa !46, !alias.scope !120, !noalias !121
  store <8 x i16> %interleaved.vec221, ptr %i.fw, align 2, !tbaa !46, !alias.scope !122, !noalias !123
  store <8 x i16> %interleaved.vec221, ptr %i.fx, align 2, !tbaa !46, !alias.scope !122, !noalias !123
  %interleaved.vec223 = shufflevector <4 x i16> %i.fy, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec223, ptr %i.ga, align 2, !tbaa !46, !alias.scope !123
  %interleaved.vec224 = shufflevector <4 x i16> %i.fz, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec224, ptr %i.gb, align 2, !tbaa !46, !alias.scope !123
  %index.next225 = add nuw i64 %index217, 8       ; 2 uses
  %vec.ind.next = add <4 x i16> %vec.ind, splat (i16 8)
  %i.gc = icmp eq i64 %index.next225, %n.vec205
  br i1 %i.gc, label %scalar.ph202.preheader, label %vector.body216, !llvm.loop !103

scalar.ph266:                                     ; preds = %scalar.ph266.preheader, %scalar.ph266
  %indvar = phi i64 [ %indvar.next, %scalar.ph266 ], [ %indvar.ph, %scalar.ph266.preheader ] ; 2 uses
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %scalar.ph266 ], [ %indvars.iv153.ph, %scalar.ph266.preheader ] ; 6 uses
  %.3133 = phi i32 [ %i.go, %scalar.ph266 ], [ %.3133.ph, %scalar.ph266.preheader ] ; 2 uses
  %i.gd = trunc i32 %.3133 to i16                 ; 3 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %indvars.iv153
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !46
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %indvars.iv153
  store i16 %i.dz, ptr %i.gf, align 2, !tbaa !46
  %i.gg = shl i16 %i.gd, 1                        ; 2 uses
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %indvars.iv153
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !46
  %i.gi = add nsw i64 %indvars.iv153, 1           ; 4 uses
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %indvars.iv153
  store i16 %i.ea, ptr %i.gj, align 2, !tbaa !46
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.gi
  store i16 %i.gd, ptr %i.gk, align 2, !tbaa !46
  %i.gl = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.gi
  store i16 %i.eb, ptr %i.gl, align 2, !tbaa !46
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.gi
  store i16 %i.gg, ptr %i.gm, align 2, !tbaa !46
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, 2 ; 5 uses
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.gi
  store i16 %i.ec, ptr %i.gn, align 2, !tbaa !46
  %i.go = add nsw i32 %.3133, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.go, %.0143
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %.lr.ph139.loopexit, label %scalar.ph266, !llvm.loop !104

scalar.ph202:                                     ; preds = %scalar.ph202.preheader, %scalar.ph202
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %scalar.ph202 ], [ %indvars.iv156.ph, %scalar.ph202.preheader ] ; 6 uses
  %.4138 = phi i32 [ %i.ha, %scalar.ph202 ], [ %.4138.ph, %scalar.ph202.preheader ] ; 2 uses
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %indvars.iv156
  store i16 %i.fa, ptr %i.gp, align 2, !tbaa !46
  %i.gq = trunc i32 %.4138 to i16                 ; 3 uses
  %i.gr = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %indvars.iv156
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !46
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %indvars.iv156
  store i16 %i.fb, ptr %i.gs, align 2, !tbaa !46
  %i.gt = shl i16 %i.gq, 1                        ; 2 uses
  %i.gu = add nsw i64 %indvars.iv156, 1           ; 4 uses
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %indvars.iv156
  store i16 %i.gt, ptr %i.gv, align 2, !tbaa !46
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.gu
  store i16 %i.fc, ptr %i.gw, align 2, !tbaa !46
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.gu
  store i16 %i.gq, ptr %i.gx, align 2, !tbaa !46
  %i.gy = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.gu
  store i16 %i.fd, ptr %i.gy, align 2, !tbaa !46
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, 2 ; 2 uses
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.gu
  store i16 %i.gt, ptr %i.gz, align 2, !tbaa !46
  %i.ha = add i32 %.4138, 1                       ; 2 uses
  %exitcond161.not = icmp eq i32 %i.ha, %indvars.iv159
  br i1 %exitcond161.not, label %._crit_edge140, label %scalar.ph202, !llvm.loop !105

._crit_edge140:                                   ; preds = %scalar.ph202
  %i.hb = add nuw nsw i32 %.0143, 1
  %indvars.iv.next160 = add nuw i32 %indvars.iv159, 1
  %exitcond162.not = icmp eq i32 %indvars.iv159, %i.du
  %indvar.next175 = add i64 %indvar174, 1
  br i1 %exitcond162.not, label %bb.p, label %.lr.ph135, !llvm.loop !106

bb.p:                                             ; preds = %._crit_edge140
  %i.hc = load ptr, ptr @input, align 8, !tbaa !9 ; 7 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 5776
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !51
  %i.hf = icmp eq i32 %i.he, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.hc, i64 5780
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !7 ; 2 uses
  br i1 %i.hf, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 5784
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !7  ; 2 uses
  %i.hi = icmp eq i32 %.pre, %i.hh
  %i.hj = zext i1 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hc, i64 5788
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !7
  %i.hm = icmp eq i32 %i.hh, %i.hl
  %i.hn = zext i1 %i.hm to i32
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.q
  %.sink = phi i32 [ %i.hj, %bb.q ], [ 0, %bb.p ]
  %not.108 = phi i32 [ %i.hn, %bb.q ], [ 0, %bb.p ]
  store i32 %.sink, ptr @start_me_refinement_hp, align 4, !tbaa !7
  store i32 %not.108, ptr @start_me_refinement_qp, align 4, !tbaa !7
  switch i32 %.pre, label %bb.s [
    i32 0, label %bb.t
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %.thread
  br label %bb.t

bb.s:                                             ; preds = %.thread
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.r, %bb.s
  %computeSAD.sink = phi ptr [ @computeSATD, %bb.s ], [ @computeSSE, %bb.r ], [ @computeSAD, %.thread ]
end_hunk_0
