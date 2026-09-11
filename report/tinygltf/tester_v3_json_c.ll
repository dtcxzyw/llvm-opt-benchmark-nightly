Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_json_c?download=true
inline.NumInlined: 131
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@tg3json__format_decimal_digits:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01421.i.i
  store i8 %i.bt, ptr %i.bv, align 1, !tbaa !30
  %i.bw = udiv i64 %.01620.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.01620.i.i, 10
  br i1 %.not.i.i, label %iter.check319, label %.preheader19.i.i, !llvm.loop !100

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
  %wide.load312 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !30
  %wide.load313 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !30
  %reverse = shufflevector <16 x i8> %wide.load312, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse314 = shufflevector <16 x i8> %wide.load313, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %index311 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <16 x i8> %reverse, ptr %i.cd, align 16, !tbaa !30
  store <16 x i8> %reverse314, ptr %i.ce, align 16, !tbaa !30
  %index.next315 = add nuw i64 %index311, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.cf, label %middle.block316, label %vector.body310, !llvm.loop !101

middle.block316:                                  ; preds = %vector.body310
  %cmp.n317 = icmp eq i64 %i.bu, %n.vec309
  br i1 %cmp.n317, label %tg3json__write_exp.exit, label %vec.epilog.iter.check321

vec.epilog.iter.check321:                         ; preds = %middle.block316
  %min.epilog.iters.check322 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check322, label %.preheader.i.i.preheader, label %vec.epilog.ph323, !prof !52

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
  %wide.load327 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !30
  %reverse328 = shufflevector <8 x i8> %wide.load327, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %index326
  store <8 x i8> %reverse328, ptr %i.ck, align 8, !tbaa !30
  %index.next329 = add nuw i64 %index326, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next329, %n.vec324
  br i1 %i.cl, label %vec.epilog.middle.block330, label %vec.epilog.vector.body325, !llvm.loop !102

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
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !30
  %i.cp = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.023.i.i
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !30
  %.not18.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not18.i.i, label %tg3json__write_exp.exit, label %.preheader.i.i, !llvm.loop !103

tg3json__write_exp.exit:                          ; preds = %.preheader.i.i, %middle.block316, %vec.epilog.middle.block330, %bb.f
  %.0815.i = phi ptr [ %i.bl, %bb.f ], [ %.0816.i, %middle.block316 ], [ %.0816.i, %vec.epilog.middle.block330 ], [ %.0816.i, %.preheader.i.i ] ; 2 uses
  %.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ %n.vec309, %middle.block316 ], [ %n.vec324, %vec.epilog.middle.block330 ], [ %i.cp, %.preheader.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.lcssa.sink.i.i
  store i8 0, ptr %i.cr, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0815.i, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %.lcssa.sink.i.i, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0815.i, i64 %.lcssa.sink.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
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
  %wide.load252 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !30
  %wide.load253 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !30
  %i.da = getelementptr i8, ptr %next.gep251, i64 16
  store <16 x i8> %wide.load252, ptr %next.gep251, align 1, !tbaa !30
  store <16 x i8> %wide.load253, ptr %i.da, align 1, !tbaa !30
  %index.next254 = add nuw i64 %index250, 32      ; 2 uses
  %i.db = icmp eq i64 %index.next254, %n.vec248
  br i1 %i.db, label %middle.block255, label %vector.body249, !llvm.loop !104

middle.block255:                                  ; preds = %vector.body249
  %cmp.n256 = icmp eq i64 %n.vec248, %wide.trip.count133
  br i1 %cmp.n256, label %.preheader, label %vec.epilog.iter.check260

vec.epilog.iter.check260:                         ; preds = %middle.block255
  %min.epilog.iters.check261 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check261, label %.lr.ph98.preheader, label %vec.epilog.ph262, !prof !119

vec.epilog.ph262:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check260
  %vec.epilog.resume.val257 = phi i64 [ %n.vec248, %vec.epilog.iter.check260 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec263 = and i64 %wide.trip.count133, 2147483644 ; 4 uses
  %i.dc = getelementptr i8, ptr %.064, i64 %n.vec263 ; 2 uses
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph262
  %index265 = phi i64 [ %vec.epilog.resume.val257, %vec.epilog.ph262 ], [ %index.next268, %vec.epilog.vector.body264 ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %.064, i64 %index265
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %index265
  %wide.load267 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !30
  store <4 x i8> %wide.load267, ptr %next.gep266, align 1, !tbaa !30
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.de, label %vec.epilog.middle.block269, label %vec.epilog.vector.body264, !llvm.loop !105

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
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.dh, ptr %.36796.prol, align 1, !tbaa !30
  %indvars.iv.next131.prol = add nuw nsw i64 %indvars.iv130.prol, 1 ; 2 uses
  %prol.iter352.next = add i64 %prol.iter352, 1   ; 2 uses
  %prol.iter352.cmp.not = icmp eq i64 %prol.iter352.next, %xtraiter350
  br i1 %prol.iter352.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !106

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
  tail call void @llvm.memset.p0.i64(ptr align 1 %.367.lcssa, i8 48, i64 %i.dl, i1 false), !tbaa !30
  %scevgep137 = getelementptr i8, ptr %.367.lcssa, i64 %i.dl
  br label %.loopexit76

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.7, %.lr.ph98 ], [ %indvars.iv130.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.eq, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.dn, ptr %.36796, align 1, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !30
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !30
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !30
  %i.ea = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !30
  %i.ee = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !30
  %i.ei = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %.36796, i64 8 ; 2 uses
  store i8 %i.ep, ptr %i.em, align 1, !tbaa !30
  %indvars.iv.next131.7 = add nuw nsw i64 %indvars.iv130, 8 ; 2 uses
  %exitcond134.not.7 = icmp eq i64 %indvars.iv.next131.7, %wide.trip.count133
  br i1 %exitcond134.not.7, label %.preheader, label %.lr.ph98, !llvm.loop !107

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
  %wide.load183 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !30
  %wide.load184 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !30
  %i.ey = getelementptr i8, ptr %next.gep182, i64 16
  store <16 x i8> %wide.load183, ptr %next.gep182, align 1, !tbaa !30
  store <16 x i8> %wide.load184, ptr %i.ey, align 1, !tbaa !30
  %index.next185 = add nuw i64 %index181, 32      ; 2 uses
  %i.ez = icmp eq i64 %index.next185, %n.vec179
  br i1 %i.ez, label %middle.block186, label %vector.body180, !llvm.loop !108

middle.block186:                                  ; preds = %vector.body180
  %ind.escape187 = getelementptr i8, ptr %i.ev, i64 -1
  %cmp.n188 = icmp eq i64 %n.vec179, %wide.trip.count122
  br i1 %cmp.n188, label %.loopexit334, label %vec.epilog.iter.check193

vec.epilog.iter.check193:                         ; preds = %middle.block186
  %min.epilog.iters.check194 = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check194, label %.preheader79.preheader, label %vec.epilog.ph195, !prof !119

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
  %wide.load200 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !30
  store <4 x i8> %wide.load200, ptr %next.gep199, align 1, !tbaa !30
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.fd, label %vec.epilog.middle.block202, label %vec.epilog.vector.body197, !llvm.loop !109

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
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %.56989.prol, i64 1 ; 3 uses
  store i8 %i.ff, ptr %.56989.prol, align 1, !tbaa !30
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1 ; 2 uses
  %prol.iter349.next = add i64 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i64 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %.preheader79.prol.loopexit, label %.preheader79.prol, !llvm.loop !110

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
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !30
  %i.fl = getelementptr inbounds nuw i8, ptr %.56989, i64 1
  store i8 %i.fk, ptr %.56989, align 1, !tbaa !30
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !30
  %i.fp = getelementptr inbounds nuw i8, ptr %.56989, i64 2
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !30
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !30
  %i.ft = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !30
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !30
  %i.fx = getelementptr inbounds nuw i8, ptr %.56989, i64 4 ; 2 uses
  store i8 %i.fw, ptr %i.ft, align 1, !tbaa !30
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %wide.trip.count122
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4
  br i1 %exitcond123.not.3, label %.loopexit334.loopexit.unr-lcssa, label %.preheader79, !llvm.loop !111

.loopexit334.loopexit.unr-lcssa:                  ; preds = %.preheader79
  %i.fy = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3
  br label %.loopexit334

.loopexit334:                                     ; preds = %.loopexit334.loopexit.unr-lcssa, %.preheader79.prol.loopexit, %vec.epilog.middle.block202, %middle.block186
  %indvars.iv125.lcssa = phi i64 [ %n.vec196, %vec.epilog.middle.block202 ], [ %n.vec179, %middle.block186 ], [ %indvars.iv125.lcssa344.unr, %.preheader79.prol.loopexit ], [ %indvars.iv.next126.2, %.loopexit334.loopexit.unr-lcssa ] ; 7 uses
  %.56989.lcssa = phi ptr [ %ind.escape204, %vec.epilog.middle.block202 ], [ %ind.escape187, %middle.block186 ], [ %.56989.lcssa343.unr, %.preheader79.prol.loopexit ], [ %i.fy, %.loopexit334.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa159 = phi ptr [ %i.fb, %vec.epilog.middle.block202 ], [ %i.ev, %middle.block186 ], [ %.lcssa342.unr, %.preheader79.prol.loopexit ], [ %i.fx, %.loopexit334.loopexit.unr-lcssa ]
  %.56989.lcssa210 = ptrtoaddr ptr %.56989.lcssa to i64
  store i8 46, ptr %.lcssa159, align 1, !tbaa !30
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
