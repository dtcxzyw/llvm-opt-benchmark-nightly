Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3json__format_decimal_digits:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01421.i.i
  store i8 %i.bt, ptr %i.bv, align 1, !tbaa !34
  %i.bw = udiv i64 %.01620.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.01620.i.i, 10
  br i1 %.not.i.i, label %iter.check319, label %.preheader19.i.i, !llvm.loop !556

iter.check319:                                    ; preds = %.preheader19.i.i
  %min.iters.check305.a = icmp ult i64 %.01421.i.i, 7
  br i1 %min.iters.check305.a, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check306

vector.main.loop.iter.check306:                   ; preds = %iter.check319
  %min.iters.check307 = icmp ult i64 %.01421.i.i, 31
  br i1 %min.iters.check307, label %vec.epilog.ph323, label %vector.ph308

vector.ph308:                                     ; preds = %vector.main.loop.iter.check306
  %i.bx = and i64 %i.bu, 24
  %n.vec309 = and i64 %i.bu, -32                  ; 5 uses
  %i.by = and i64 %i.bu, 31
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next315, %vector.body310 ] ; 3 uses
  %i.bz = sub i64 %.01421.i.i, %index311
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -15
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -31
  %wide.load312 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !34
  %wide.load313 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !34
  %reverse = shufflevector <16 x i8> %wide.load312, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse314 = shufflevector <16 x i8> %wide.load313, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %index311 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <16 x i8> %reverse, ptr %i.cd, align 16, !tbaa !34
  store <16 x i8> %reverse314, ptr %i.ce, align 16, !tbaa !34
  %index.next315 = add nuw i64 %index311, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.cf, label %middle.block316, label %vector.body310, !llvm.loop !557

middle.block316:                                  ; preds = %vector.body310
  %cmp.n317 = icmp eq i64 %i.bu, %n.vec309
  br i1 %cmp.n317, label %tg3json__write_exp.exit, label %vec.epilog.iter.check321

vec.epilog.iter.check321:                         ; preds = %middle.block316
  %min.epilog.iters.check322 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check322, label %.preheader.i.i.preheader, label %vec.epilog.ph323, !prof !56

vec.epilog.ph323:                                 ; preds = %vector.main.loop.iter.check306, %vec.epilog.iter.check321
  %vec.epilog.resume.val318 = phi i64 [ %n.vec309, %vec.epilog.iter.check321 ], [ 0, %vector.main.loop.iter.check306 ]
  %n.vec324 = and i64 %i.bu, -8                   ; 4 uses
  %i.cg = and i64 %i.bu, 7
  br label %vec.epilog.vector.body325

vec.epilog.vector.body325:                        ; preds = %vec.epilog.vector.body325, %vec.epilog.ph323
  %index326 = phi i64 [ %vec.epilog.resume.val318, %vec.epilog.ph323 ], [ %index.next329, %vec.epilog.vector.body325 ] ; 3 uses
  %i.ch = sub i64 %.01421.i.i, %index326
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -7
  %wide.load327 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !34
  %reverse328 = shufflevector <8 x i8> %wide.load327, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %index326
  store <8 x i8> %reverse328, ptr %i.ck, align 8, !tbaa !34
  %index.next329 = add nuw i64 %index326, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next329, %n.vec324
  br i1 %i.cl, label %vec.epilog.middle.block330, label %vec.epilog.vector.body325, !llvm.loop !558

vec.epilog.middle.block330:                       ; preds = %vec.epilog.vector.body325
  %cmp.n331 = icmp eq i64 %i.bu, %n.vec324
  br i1 %cmp.n331, label %tg3json__write_exp.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check319, %vec.epilog.iter.check321, %vec.epilog.middle.block330
  %.023.i.i.ph = phi i64 [ 0, %iter.check319 ], [ %n.vec309, %vec.epilog.iter.check321 ], [ %n.vec324, %vec.epilog.middle.block330 ]
  %.122.i.i.ph = phi i64 [ %i.bu, %iter.check319 ], [ %i.by, %vec.epilog.iter.check321 ], [ %i.cg, %vec.epilog.middle.block330 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.023.i.i = phi i64 [ %i.cp, %.preheader.i.i ], [ %.023.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.122.i.i = phi i64 [ %i.cm, %.preheader.i.i ], [ %.122.i.i.ph, %.preheader.i.i.preheader ]
  %i.cm = add i64 %.122.i.i, -1                   ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !34
  %i.cp = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.023.i.i
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !34
  %.not18.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not18.i.i, label %tg3json__write_exp.exit, label %.preheader.i.i, !llvm.loop !559

tg3json__write_exp.exit:                          ; preds = %.preheader.i.i, %middle.block316, %vec.epilog.middle.block330, %bb.f
  %.0815.i = phi ptr [ %i.bl, %bb.f ], [ %.0816.i, %middle.block316 ], [ %.0816.i, %vec.epilog.middle.block330 ], [ %.0816.i, %.preheader.i.i ] ; 2 uses
  %.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ %n.vec309, %middle.block316 ], [ %n.vec324, %vec.epilog.middle.block330 ], [ %i.cp, %.preheader.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.lcssa.sink.i.i
  store i8 0, ptr %i.cr, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0815.i, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %.lcssa.sink.i.i, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0815.i, i64 %.lcssa.sink.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.loopexit76

bb.g:                                             ; preds = %bb.c
  %i.ct = icmp sgt i32 %3, -1
  br i1 %i.ct, label %.preheader77, label %bb.h

.preheader77:                                     ; preds = %bb.g
  %i.cu = icmp sgt i32 %2, 0
  br i1 %i.cu, label %iter.check258, label %.preheader

iter.check258:                                    ; preds = %.preheader77
  %wide.trip.count133 = zext nneg i32 %2 to i64   ; 8 uses
  %min.iters.check244.a = icmp ult i32 %2, 4
  %i.cv = sub i64 %i.a, %.064173
  %diff.check243 = icmp ugt i64 %i.cv, -32
  %or.cond336.a = select i1 %min.iters.check244.a, i1 true, i1 %diff.check243
  br i1 %or.cond336.a, label %.lr.ph98.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %iter.check258
  %min.iters.check246 = icmp ult i32 %2, 32
  br i1 %min.iters.check246, label %vec.epilog.ph262, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.cw = and i64 %wide.trip.count133, 28
  %n.vec248 = and i64 %wide.trip.count133, 2147483616 ; 5 uses
  %i.cx = getelementptr i8, ptr %.064, i64 %n.vec248 ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next254, %vector.body249 ] ; 3 uses
  %next.gep251 = getelementptr i8, ptr %.064, i64 %index250 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %index250 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load252 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !34
  %wide.load253 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !34
  %i.da = getelementptr i8, ptr %next.gep251, i64 16
  store <16 x i8> %wide.load252, ptr %next.gep251, align 1, !tbaa !34
  store <16 x i8> %wide.load253, ptr %i.da, align 1, !tbaa !34
  %index.next254 = add nuw i64 %index250, 32      ; 2 uses
  %i.db = icmp eq i64 %index.next254, %n.vec248
  br i1 %i.db, label %middle.block255, label %vector.body249, !llvm.loop !560

middle.block255:                                  ; preds = %vector.body249
  %cmp.n256 = icmp eq i64 %n.vec248, %wide.trip.count133
  br i1 %cmp.n256, label %.preheader, label %vec.epilog.iter.check260

vec.epilog.iter.check260:                         ; preds = %middle.block255
  %min.epilog.iters.check261 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check261, label %.lr.ph98.preheader, label %vec.epilog.ph262, !prof !575

vec.epilog.ph262:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check260
  %vec.epilog.resume.val257 = phi i64 [ %n.vec248, %vec.epilog.iter.check260 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec263 = and i64 %wide.trip.count133, 2147483644 ; 4 uses
  %i.dc = getelementptr i8, ptr %.064, i64 %n.vec263 ; 2 uses
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph262
  %index265 = phi i64 [ %vec.epilog.resume.val257, %vec.epilog.ph262 ], [ %index.next268, %vec.epilog.vector.body264 ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %.064, i64 %index265
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %index265
  %wide.load267 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !34
  store <4 x i8> %wide.load267, ptr %next.gep266, align 1, !tbaa !34
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.de, label %vec.epilog.middle.block269, label %vec.epilog.vector.body264, !llvm.loop !561

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body264
  %cmp.n270 = icmp eq i64 %n.vec263, %wide.trip.count133
  br i1 %cmp.n270, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check258, %vec.epilog.iter.check260, %vec.epilog.middle.block269
  %indvars.iv130.ph = phi i64 [ 0, %iter.check258 ], [ %n.vec248, %vec.epilog.iter.check260 ], [ %n.vec263, %vec.epilog.middle.block269 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check258 ], [ %i.cx, %vec.epilog.iter.check260 ], [ %i.dc, %vec.epilog.middle.block269 ] ; 2 uses
  %i.df = sub nsw i64 %wide.trip.count133, %indvars.iv130.ph
  %xtraiter350 = and i64 %i.df, 7                 ; 2 uses
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv130.prol = phi i64 [ %indvars.iv.next131.prol, %.lr.ph98.prol ], [ %indvars.iv130.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.di, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter352 = phi i64 [ %prol.iter352.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130.prol
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.dh, ptr %.36796.prol, align 1, !tbaa !34
  %indvars.iv.next131.prol = add nuw nsw i64 %indvars.iv130.prol, 1 ; 2 uses
  %prol.iter352.next = add i64 %prol.iter352, 1   ; 2 uses
  %prol.iter352.cmp.not = icmp eq i64 %prol.iter352.next, %xtraiter350
  br i1 %prol.iter352.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !562

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa341.unr = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %.lr.ph98.preheader ], [ %indvars.iv.next131.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %i.dj = sub nsw i64 %indvars.iv130.ph, %wide.trip.count133
  %i.dk = icmp ugt i64 %i.dj, -8
  br i1 %i.dk, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block255, %vec.epilog.middle.block269, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.dc, %vec.epilog.middle.block269 ], [ %i.cx, %middle.block255 ], [ %.lcssa341.unr, %.lr.ph98.prol.loopexit ], [ %i.eq, %.lr.ph98 ] ; 3 uses
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.loopexit76, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader
  %i.dl = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.367.lcssa, i8 48, i64 %i.dl, i1 false), !tbaa !34
  %scevgep137 = getelementptr i8, ptr %.367.lcssa, i64 %i.dl
  br label %.loopexit76

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.7, %.lr.ph98 ], [ %indvars.iv130.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.eq, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.dn, ptr %.36796, align 1, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !34
  %i.ds = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !34
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !34
  %i.dw = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !34
  %i.ea = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !34
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !34
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !34
  %i.ei = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !34
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !34
  %i.em = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !34
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !34
  %i.eq = getelementptr inbounds nuw i8, ptr %.36796, i64 8 ; 2 uses
  store i8 %i.ep, ptr %i.em, align 1, !tbaa !34
  %indvars.iv.next131.7 = add nuw nsw i64 %indvars.iv130, 8 ; 2 uses
  %exitcond134.not.7 = icmp eq i64 %indvars.iv.next131.7, %wide.trip.count133
  br i1 %exitcond134.not.7, label %.preheader, label %.lr.ph98, !llvm.loop !563

bb.h:                                             ; preds = %bb.g
  %i.er = icmp sgt i32 %i.d, 0
  br i1 %i.er, label %iter.check191, label %bb.i

iter.check191:                                    ; preds = %bb.h
  %wide.trip.count122 = zext nneg i32 %i.d to i64 ; 8 uses
  %min.iters.check175.a = icmp ult i32 %i.d, 4
  %i.es = sub i64 %i.a, %.064173
  %diff.check174 = icmp ugt i64 %i.es, -32
  %or.cond337 = select i1 %min.iters.check175.a, i1 true, i1 %diff.check174
  br i1 %or.cond337, label %.preheader79.preheader, label %vector.main.loop.iter.check176

vector.main.loop.iter.check176:                   ; preds = %iter.check191
  %min.iters.check177 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check177, label %vec.epilog.ph195, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check176
  %i.et = and i64 %wide.trip.count122, 28
  %n.vec179 = and i64 %wide.trip.count122, 2147483616 ; 7 uses
  %i.eu = or disjoint i64 %n.vec179, 1
  %i.ev = getelementptr i8, ptr %.064, i64 %n.vec179 ; 3 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body180 ] ; 3 uses
  %next.gep182 = getelementptr i8, ptr %.064, i64 %index181 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %index181 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load183 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !34
  %wide.load184 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !34
  %i.ey = getelementptr i8, ptr %next.gep182, i64 16
  store <16 x i8> %wide.load183, ptr %next.gep182, align 1, !tbaa !34
  store <16 x i8> %wide.load184, ptr %i.ey, align 1, !tbaa !34
  %index.next185 = add nuw i64 %index181, 32      ; 2 uses
  %i.ez = icmp eq i64 %index.next185, %n.vec179
  br i1 %i.ez, label %middle.block186, label %vector.body180, !llvm.loop !564

middle.block186:                                  ; preds = %vector.body180
  %ind.escape187 = getelementptr i8, ptr %i.ev, i64 -1
  %cmp.n188 = icmp eq i64 %n.vec179, %wide.trip.count122
  br i1 %cmp.n188, label %.loopexit334, label %vec.epilog.iter.check193

vec.epilog.iter.check193:                         ; preds = %middle.block186
  %min.epilog.iters.check194 = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check194, label %.preheader79.preheader, label %vec.epilog.ph195, !prof !575

vec.epilog.ph195:                                 ; preds = %vector.main.loop.iter.check176, %vec.epilog.iter.check193
  %vec.epilog.resume.val189 = phi i64 [ %n.vec179, %vec.epilog.iter.check193 ], [ 0, %vector.main.loop.iter.check176 ]
  %n.vec196 = and i64 %wide.trip.count122, 2147483644 ; 6 uses
  %i.fa = or disjoint i64 %n.vec196, 1
  %i.fb = getelementptr i8, ptr %.064, i64 %n.vec196 ; 3 uses
  br label %vec.epilog.vector.body197

vec.epilog.vector.body197:                        ; preds = %vec.epilog.vector.body197, %vec.epilog.ph195
  %index198 = phi i64 [ %vec.epilog.resume.val189, %vec.epilog.ph195 ], [ %index.next201, %vec.epilog.vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %.064, i64 %index198
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %index198
  %wide.load200 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !34
  store <4 x i8> %wide.load200, ptr %next.gep199, align 1, !tbaa !34
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.fd, label %vec.epilog.middle.block202, label %vec.epilog.vector.body197, !llvm.loop !565

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body197
  %ind.escape204 = getelementptr i8, ptr %i.fb, i64 -1
  %cmp.n205 = icmp eq i64 %n.vec196, %wide.trip.count122
  br i1 %cmp.n205, label %.loopexit334, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %iter.check191, %vec.epilog.iter.check193, %vec.epilog.middle.block202
  %indvars.iv125.ph = phi i64 [ 1, %iter.check191 ], [ %i.eu, %vec.epilog.iter.check193 ], [ %i.fa, %vec.epilog.middle.block202 ] ; 2 uses
  %indvars.iv119.ph = phi i64 [ 0, %iter.check191 ], [ %n.vec179, %vec.epilog.iter.check193 ], [ %n.vec196, %vec.epilog.middle.block202 ] ; 3 uses
  %.56989.ph = phi ptr [ %.064, %iter.check191 ], [ %i.ev, %vec.epilog.iter.check193 ], [ %i.fb, %vec.epilog.middle.block202 ] ; 2 uses
  %xtraiter347 = and i64 %wide.trip.count122, 3   ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %.preheader79.prol.loopexit, label %.preheader79.prol

.preheader79.prol:                                ; preds = %.preheader79.preheader, %.preheader79.prol
  %indvars.iv125.prol = phi i64 [ %indvars.iv.next126.prol, %.preheader79.prol ], [ %indvars.iv125.ph, %.preheader79.preheader ] ; 2 uses
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %.preheader79.prol ], [ %indvars.iv119.ph, %.preheader79.preheader ] ; 2 uses
  %.56989.prol = phi ptr [ %i.fg, %.preheader79.prol ], [ %.56989.ph, %.preheader79.preheader ] ; 3 uses
  %prol.iter349 = phi i64 [ %prol.iter349.next, %.preheader79.prol ], [ 0, %.preheader79.preheader ]
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119.prol
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !34
  %i.fg = getelementptr inbounds nuw i8, ptr %.56989.prol, i64 1 ; 3 uses
  store i8 %i.ff, ptr %.56989.prol, align 1, !tbaa !34
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1 ; 2 uses
  %prol.iter349.next = add i64 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i64 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %.preheader79.prol.loopexit, label %.preheader79.prol, !llvm.loop !566

.preheader79.prol.loopexit:                       ; preds = %.preheader79.prol, %.preheader79.preheader
  %indvars.iv125.lcssa344.unr = phi i64 [ poison, %.preheader79.preheader ], [ %indvars.iv125.prol, %.preheader79.prol ]
  %.56989.lcssa343.unr = phi ptr [ poison, %.preheader79.preheader ], [ %.56989.prol, %.preheader79.prol ]
  %.lcssa342.unr = phi ptr [ poison, %.preheader79.preheader ], [ %i.fg, %.preheader79.prol ]
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %.preheader79.preheader ], [ %indvars.iv.next126.prol, %.preheader79.prol ]
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %.preheader79.preheader ], [ %indvars.iv.next120.prol, %.preheader79.prol ]
  %.56989.unr = phi ptr [ %.56989.ph, %.preheader79.preheader ], [ %i.fg, %.preheader79.prol ]
  %i.fh = sub nsw i64 %indvars.iv119.ph, %wide.trip.count122
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %.loopexit334, label %.preheader79

.preheader79:                                     ; preds = %.preheader79.prol.loopexit, %.preheader79
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.3, %.preheader79 ], [ %indvars.iv125.unr, %.preheader79.prol.loopexit ] ; 2 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %.preheader79 ], [ %indvars.iv119.unr, %.preheader79.prol.loopexit ] ; 5 uses
  %.56989 = phi ptr [ %i.fx, %.preheader79 ], [ %.56989.unr, %.preheader79.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !34
  %i.fl = getelementptr inbounds nuw i8, ptr %.56989, i64 1
  store i8 %i.fk, ptr %.56989, align 1, !tbaa !34
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !34
  %i.fp = getelementptr inbounds nuw i8, ptr %.56989, i64 2
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !34
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !34
  %i.ft = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !34
  %i.fx = getelementptr inbounds nuw i8, ptr %.56989, i64 4 ; 2 uses
  store i8 %i.fw, ptr %i.ft, align 1, !tbaa !34
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %wide.trip.count122
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %exitcond123.not.3, label %.loopexit334.loopexit.unr-lcssa, label %.preheader79, !llvm.loop !567

.loopexit334.loopexit.unr-lcssa:                  ; preds = %.preheader79
  %i.fy = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3
  br label %.loopexit334

.loopexit334:                                     ; preds = %.loopexit334.loopexit.unr-lcssa, %.preheader79.prol.loopexit, %vec.epilog.middle.block202, %middle.block186
  %indvars.iv125.lcssa = phi i64 [ %n.vec196, %vec.epilog.middle.block202 ], [ %n.vec179, %middle.block186 ], [ %indvars.iv125.lcssa344.unr, %.preheader79.prol.loopexit ], [ %indvars.iv.next126.2, %.loopexit334.loopexit.unr-lcssa ] ; 7 uses
  %.56989.lcssa = phi ptr [ %ind.escape204, %vec.epilog.middle.block202 ], [ %ind.escape187, %middle.block186 ], [ %.56989.lcssa343.unr, %.preheader79.prol.loopexit ], [ %i.fy, %.loopexit334.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa159 = phi ptr [ %i.fb, %vec.epilog.middle.block202 ], [ %i.ev, %middle.block186 ], [ %.lcssa342.unr, %.preheader79.prol.loopexit ], [ %i.fx, %.loopexit334.loopexit.unr-lcssa ]
  %.56989.lcssa210 = ptrtoaddr ptr %.56989.lcssa to i64
  store i8 46, ptr %.lcssa159, align 1, !tbaa !34
  %.67091 = getelementptr inbounds nuw i8, ptr %.56989.lcssa, i64 2 ; 7 uses
  %i.fz = icmp slt i32 %i.d, %2
  br i1 %i.fz, label %iter.check227, label %.loopexit76

iter.check227:                                    ; preds = %.loopexit334
  %narrow = sub nsw i32 0, %3                     ; 3 uses
  %i.ga = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check212.a = icmp ult i32 %narrow, 8
  br i1 %min.iters.check212.a, label %.lr.ph94.preheader, label %vector.memcheck209

vector.memcheck209:                               ; preds = %iter.check227
end_hunk_0
begin_hunk_1_@ftell

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__parse_string_array(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #12 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31 ; 2 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !37
  %.not18.i.i.i = icmp eq i32 %i.b, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.01422.i.i.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !45
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %2, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.c, !llvm.loop !2

tg3__json_get.exit:                               ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 6 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %tg3__json_is_array.exit

tg3__json_get.exit.thread:                        ; preds = %bb.e, %.preheader.i.i.i, %bb.b, %bb.a, %tg3__json_get.exit
  store ptr null, ptr %3, align 8, !tbaa !579
  br label %tg3__arena_alloc.exit.thread.sink.split

tg3__json_is_array.exit:                          ; preds = %tg3__json_get.exit
  %i.p = load i32, ptr %i.o, align 8, !tbaa !37
  %.not8 = icmp eq i32 %i.p, 5
  br i1 %.not8, label %tg3json_array_size.exit, label %tg3__arena_alloc.exit.thread

tg3json_array_size.exit:                          ; preds = %tg3__json_is_array.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34   ; 7 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %tg3json_array_size.exit.thread, label %bb.f

tg3json_array_size.exit.thread:                   ; preds = %tg3json_array_size.exit
  store ptr null, ptr %3, align 8, !tbaa !579
  br label %tg3__arena_alloc.exit.thread.sink.split

bb.f:                                             ; preds = %tg3json_array_size.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !138    ; 9 uses
  %i.u = shl i64 %i.r, 4                          ; 6 uses
  %i.v = icmp eq ptr %i.t, null
  %i.w = icmp eq i64 %i.u, 0
  %or.cond.i = or i1 %i.w, %i.v
  br i1 %or.cond.i, label %tg3__arena_alloc.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !130  ; 3 uses
  %.not.i48 = icmp ne i64 %i.y, 0                 ; 2 uses
  %i.z = icmp ugt i64 %i.u, %i.y
  %or.cond28.i = and i1 %.not.i48, %i.z
  br i1 %or.cond28.i, label %tg3__arena_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !148 ; 5 uses
  %.not26.i = icmp eq ptr %i.ab, null
  br i1 %.not26.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !150 ; 3 uses
  %i.ae = add i64 %i.ad, %i.u
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !151
  %i.ah = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.j, label %tg3__arena_alloc.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !128
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 range(i64 0, -7) %i.u) ; 3 uses
  %i.ak = icmp ugt i64 %spec.select.i.i, %i.y
  %or.cond.i.i = select i1 %.not.i48, i1 %i.ak, i1 false
  br i1 %or.cond.i.i, label %tg3__arena_alloc.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !152
  %i.an = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.ao = add i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !129
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %tg3__arena_alloc.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !153
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !154
  %i.aw = tail call ptr %i.at(i64 noundef %i.an, ptr noundef %i.av) #28, !inline_history !6 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.aw, null
  br i1 %.not37.i.i, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit.thread26

tg3__arena_alloc.exit.thread26:                   ; preds = %bb.l
  store ptr null, ptr %i.aw, align 8, !tbaa !155
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !156
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %spec.select.i.i, ptr %i.az, align 8, !tbaa !151
  %i.ba = load i64, ptr %i.al, align 8, !tbaa !152
  %i.bb = add i64 %i.ba, %i.an
  store i64 %i.bb, ptr %i.al, align 8, !tbaa !152
  %i.bc = load ptr, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.bc, null
  %..i.i = select i1 %.not38.i.i, ptr %i.t, ptr %i.bc
  store ptr %i.aw, ptr %..i.i, align 8, !tbaa !157
  store ptr %i.aw, ptr %i.aa, align 8, !tbaa !148
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.u, ptr %i.bd, align 8, !tbaa !150
  br label %.preheader

tg3__arena_alloc.exit:                            ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !156 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ad
  %i.bg = add i64 %i.ad, %i.u
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !150
  %.not44 = icmp eq ptr %.pre.i, null
  br i1 %.not44, label %tg3__arena_alloc.exit.thread, label %.preheader

.preheader:                                       ; preds = %tg3__arena_alloc.exit.thread26, %tg3__arena_alloc.exit
  %i.bh = phi ptr [ %i.ax, %tg3__arena_alloc.exit.thread26 ], [ %i.bf, %tg3__arena_alloc.exit ] ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bj = load i32, ptr %i.o, align 8, !tbaa !37
  %i.bk = icmp eq i32 %i.bj, 5
  br i1 %i.bk, label %.preheader.split, label %tg3json_array_get.exit.thread.us.preheader

tg3json_array_get.exit.thread.us.preheader:       ; preds = %.preheader
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.bl = icmp ult i64 %i.r, 4
  br i1 %i.bl, label %tg3json_array_get.exit.thread.us.epil.preheader, label %tg3json_array_get.exit.thread.us.preheader.new

tg3json_array_get.exit.thread.us.preheader.new:   ; preds = %tg3json_array_get.exit.thread.us.preheader
  %unroll_iter = and i64 %i.r, -4
  br label %tg3json_array_get.exit.thread.us

tg3json_array_get.exit.thread.us:                 ; preds = %tg3json_array_get.exit.thread.us, %tg3json_array_get.exit.thread.us.preheader.new
  %.03810.us = phi i64 [ 0, %tg3json_array_get.exit.thread.us.preheader.new ], [ %i.bx, %tg3json_array_get.exit.thread.us ] ; 5 uses
  %niter = phi i64 [ 0, %tg3json_array_get.exit.thread.us.preheader.new ], [ %niter.next.3, %tg3json_array_get.exit.thread.us ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us ; 2 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !178
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 0, ptr %i.bn, align 8, !tbaa !179
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr null, ptr %i.bp, align 8, !tbaa !178
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 0, ptr %i.bq, align 8, !tbaa !179
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !178
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i32 0, ptr %i.bt, align 8, !tbaa !179
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store ptr null, ptr %i.bv, align 8, !tbaa !178
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store i32 0, ptr %i.bw, align 8, !tbaa !179
  %i.bx = add nuw i64 %.03810.us, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split.us.loopexit3.unr-lcssa, label %tg3json_array_get.exit.thread.us, !llvm.loop !576

.preheader.splitthread-pre-split:                 ; preds = %bb.p
  %.pr = load i32, ptr %i.o, align 8, !tbaa !37
  br label %.preheader.split

.preheader.split:                                 ; preds = %.preheader, %.preheader.splitthread-pre-split
  %i.by = phi i32 [ %.pr, %.preheader.splitthread-pre-split ], [ 5, %.preheader ]
  %.03810 = phi i64 [ %i.cp, %.preheader.splitthread-pre-split ], [ 0, %.preheader ] ; 6 uses
  %.not8.i = icmp eq i32 %i.by, 5
  br i1 %.not8.i, label %bb.m, label %tg3json_array_get.exit.thread

bb.m:                                             ; preds = %.preheader.split
  %i.bz = load i64, ptr %i.q, align 8, !tbaa !34
  %.not9.i = icmp ult i64 %.03810, %i.bz
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3json_array_get.exit.thread

tg3json_array_get.exit:                           ; preds = %bb.m
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !34 ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.03810 ; 3 uses
  %.not45 = icmp eq ptr %i.ca, null
  br i1 %.not45, label %tg3json_array_get.exit.thread, label %bb.n

bb.n:                                             ; preds = %tg3json_array_get.exit
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !37
  %.not46 = icmp eq i32 %i.cc, 4
  br i1 %.not46, label %bb.o, label %tg3json_array_get.exit.thread

tg3json_array_get.exit.thread:                    ; preds = %.preheader.split, %bb.m, %bb.n, %tg3json_array_get.exit
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810
  store ptr null, ptr %i.cd, align 8, !tbaa !178
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810
  %i.cf = load ptr, ptr %0, align 8, !tbaa !138
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !34
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = tail call fastcc { ptr, i32 } @tg3__arena_str(ptr noundef %i.cf, ptr noundef %i.ch, i32 noundef %i.ck) ; 2 uses
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  %i.cn = extractvalue { ptr, i32 } %i.cl, 1
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %tg3json_array_get.exit.thread
  %.sink = phi i32 [ %i.cn, %bb.o ], [ 0, %tg3json_array_get.exit.thread ]
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !41
  %i.cp = add nuw i64 %.03810, 1                  ; 2 uses
  %exitcond14.not = icmp eq i64 %i.cp, %i.r
  br i1 %exitcond14.not, label %.split.us, label %.preheader.splitthread-pre-split, !llvm.loop !577

.split.us.loopexit3.unr-lcssa:                    ; preds = %tg3json_array_get.exit.thread.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %tg3json_array_get.exit.thread.us.epil.preheader

tg3json_array_get.exit.thread.us.epil.preheader:  ; preds = %.split.us.loopexit3.unr-lcssa, %tg3json_array_get.exit.thread.us.preheader
  %.03810.us.epil.init = phi i64 [ 0, %tg3json_array_get.exit.thread.us.preheader ], [ %i.bx, %.split.us.loopexit3.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %tg3json_array_get.exit.thread.us.epil

tg3json_array_get.exit.thread.us.epil:            ; preds = %tg3json_array_get.exit.thread.us.epil, %tg3json_array_get.exit.thread.us.epil.preheader
  %.03810.us.epil = phi i64 [ %i.cs, %tg3json_array_get.exit.thread.us.epil ], [ %.03810.us.epil.init, %tg3json_array_get.exit.thread.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %tg3json_array_get.exit.thread.us.epil ], [ 0, %tg3json_array_get.exit.thread.us.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.03810.us.epil ; 2 uses
  store ptr null, ptr %i.cq, align 8, !tbaa !178
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 0, ptr %i.cr, align 8, !tbaa !179
  %i.cs = add nuw i64 %.03810.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split.us, label %tg3json_array_get.exit.thread.us.epil, !llvm.loop !578

.split.us:                                        ; preds = %.split.us.loopexit3.unr-lcssa, %tg3json_array_get.exit.thread.us.epil, %bb.p
  store ptr %i.bh, ptr %3, align 8, !tbaa !579
  %i.ct = trunc i64 %i.r to i32
  br label %tg3__arena_alloc.exit.thread.sink.split

tg3__arena_alloc.exit.thread.sink.split:          ; preds = %tg3__json_get.exit.thread, %tg3json_array_size.exit.thread, %.split.us
  %.sink32 = phi i32 [ %i.ct, %.split.us ], [ 0, %tg3json_array_size.exit.thread ], [ 0, %tg3__json_get.exit.thread ]
  store i32 %.sink32, ptr %4, align 4, !tbaa !41
  br label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %tg3__arena_alloc.exit.thread.sink.split, %bb.l, %bb.j, %bb.k, %bb.f, %bb.g, %tg3__arena_alloc.exit, %tg3__json_is_array.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__parse_int(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5) unnamed_addr #12 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %1, align 8, !tbaa !37
  %.not18.i.i.i = icmp eq i32 %i.b, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.01422.i.i.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !45
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %2, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.d, !llvm.loop !2

tg3__json_get.exit:                               ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %bb.h

tg3__json_get.exit.thread:                        ; preds = %bb.f, %.preheader.i.i.i, %bb.c, %bb.b, %bb.a, %tg3__json_get.exit
  %.not20 = icmp eq i32 %4, 0
  br i1 %.not20, label %bb.n, label %bb.g

bb.g:                                             ; preds = %tg3__json_get.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !139
  %i.r = load ptr, ptr %0, align 8, !tbaa !138
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.q, ptr noundef %i.r, i32 poison, i32 noundef 12, ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef %2)
  br label %bb.n

bb.h:                                             ; preds = %tg3__json_get.exit
  %i.s = load i32, ptr %i.o, align 8, !tbaa !37
  switch i32 %i.s, label %bb.i [
    i32 2, label %.thread.i
    i32 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !139
  %i.v = load ptr, ptr %0, align 8, !tbaa !138
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.u, ptr noundef %i.v, i32 poison, i32 noundef 11, ptr noundef %5, ptr noundef nonnull @.str.63, ptr noundef nonnull %2)
  br label %bb.n

.thread.i:                                        ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !34   ; 2 uses
  %i.y = add i64 %i.x, -2147483648
  %or.cond.i = icmp ult i64 %i.y, -4294967296
  br i1 %or.cond.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.z = trunc nsw i64 %i.x to i32
  br label %tg3__json_number_to_int32.exit

bb.k:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !34 ; 5 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp ueq double %i.ac, +inf
  %i.ae = fcmp olt double %i.ab, f0xC1E0000000000000
  %or.cond3.i = or i1 %i.ae, %i.ad
  %i.af = fcmp ogt double %i.ab, f0x41DFFFFFFFC00000
  %or.cond5.i = or i1 %i.af, %or.cond3.i
  br i1 %or.cond5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = fptosi double %i.ab to i32              ; 2 uses
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fcmp une double %i.ab, %i.ah
  br i1 %i.ai, label %bb.m, label %tg3__json_number_to_int32.exit

tg3__json_number_to_int32.exit:                   ; preds = %bb.j, %bb.l
  %.sink.i = phi i32 [ %i.z, %bb.j ], [ %i.ag, %bb.l ]
end_hunk_1
