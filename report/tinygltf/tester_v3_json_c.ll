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
  br i1 %.not.i.i, label %iter.check330, label %.preheader19.i.i, !llvm.loop !100

iter.check330:                                    ; preds = %.preheader19.i.i
  %min.iters.check316.a = icmp ult i64 %.01421.i.i, 7
  br i1 %min.iters.check316.a, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check317

vector.main.loop.iter.check317:                   ; preds = %iter.check330
  %min.iters.check318 = icmp ult i64 %.01421.i.i, 31
  br i1 %min.iters.check318, label %vec.epilog.ph334, label %vector.ph319

vector.ph319:                                     ; preds = %vector.main.loop.iter.check317
  %i.bx = and i64 %i.bu, 24
  %n.vec320 = and i64 %i.bu, -32                  ; 5 uses
  %i.by = and i64 %i.bu, 31
  br label %vector.body321

vector.body321:                                   ; preds = %vector.ph319, %vector.body321
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next326, %vector.body321 ] ; 3 uses
  %i.bz = sub i64 %.01421.i.i, %index322
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -15
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -31
  %wide.load323 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !30
  %wide.load324 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !30
  %reverse = shufflevector <16 x i8> %wide.load323, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse325 = shufflevector <16 x i8> %wide.load324, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %index322 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <16 x i8> %reverse, ptr %i.cd, align 16, !tbaa !30
  store <16 x i8> %reverse325, ptr %i.ce, align 16, !tbaa !30
  %index.next326 = add nuw i64 %index322, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next326, %n.vec320
  br i1 %i.cf, label %middle.block327, label %vector.body321, !llvm.loop !101

middle.block327:                                  ; preds = %vector.body321
  %cmp.n328 = icmp eq i64 %i.bu, %n.vec320
  br i1 %cmp.n328, label %tg3json__write_exp.exit, label %vec.epilog.iter.check332

vec.epilog.iter.check332:                         ; preds = %middle.block327
  %min.epilog.iters.check333 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check333, label %.preheader.i.i.preheader, label %vec.epilog.ph334, !prof !52

vec.epilog.ph334:                                 ; preds = %vector.main.loop.iter.check317, %vec.epilog.iter.check332
  %vec.epilog.resume.val329 = phi i64 [ %n.vec320, %vec.epilog.iter.check332 ], [ 0, %vector.main.loop.iter.check317 ]
  %n.vec335 = and i64 %i.bu, -8                   ; 4 uses
  %i.cg = and i64 %i.bu, 7
  br label %vec.epilog.vector.body336

vec.epilog.vector.body336:                        ; preds = %vec.epilog.vector.body336, %vec.epilog.ph334
  %index337 = phi i64 [ %vec.epilog.resume.val329, %vec.epilog.ph334 ], [ %index.next340, %vec.epilog.vector.body336 ] ; 3 uses
  %i.ch = sub i64 %.01421.i.i, %index337
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -7
  %wide.load338 = load <8 x i8>, ptr %i.cj, align 1, !tbaa !30
  %reverse339 = shufflevector <8 x i8> %wide.load338, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %index337
  store <8 x i8> %reverse339, ptr %i.ck, align 8, !tbaa !30
  %index.next340 = add nuw i64 %index337, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next340, %n.vec335
  br i1 %i.cl, label %vec.epilog.middle.block341, label %vec.epilog.vector.body336, !llvm.loop !102

vec.epilog.middle.block341:                       ; preds = %vec.epilog.vector.body336
  %cmp.n342 = icmp eq i64 %i.bu, %n.vec335
  br i1 %cmp.n342, label %tg3json__write_exp.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check330, %vec.epilog.iter.check332, %vec.epilog.middle.block341
  %.023.i.i.ph = phi i64 [ 0, %iter.check330 ], [ %n.vec320, %vec.epilog.iter.check332 ], [ %n.vec335, %vec.epilog.middle.block341 ]
  %.122.i.i.ph = phi i64 [ %i.bu, %iter.check330 ], [ %i.by, %vec.epilog.iter.check332 ], [ %i.cg, %vec.epilog.middle.block341 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.023.i.i = phi i64 [ %i.cp, %.preheader.i.i ], [ %.023.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.122.i.i = phi i64 [ %i.cm, %.preheader.i.i ], [ %.122.i.i.ph, %.preheader.i.i.preheader ]
  %i.cm = add nsw i64 %.122.i.i, -1               ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !30
  %i.cp = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.023.i.i
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !30
  %.not18.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not18.i.i, label %tg3json__write_exp.exit, label %.preheader.i.i, !llvm.loop !103

tg3json__write_exp.exit:                          ; preds = %.preheader.i.i, %middle.block327, %vec.epilog.middle.block341, %bb.f
  %.0815.i = phi ptr [ %i.bl, %bb.f ], [ %.0816.i, %middle.block327 ], [ %.0816.i, %vec.epilog.middle.block341 ], [ %.0816.i, %.preheader.i.i ] ; 2 uses
  %.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ %n.vec320, %middle.block327 ], [ %n.vec335, %vec.epilog.middle.block341 ], [ %i.cp, %.preheader.i.i ] ; 3 uses
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
  br i1 %i.cu, label %iter.check267, label %.preheader

iter.check267:                                    ; preds = %.preheader77
  %wide.trip.count133 = zext nneg i32 %2 to i64   ; 8 uses
  %min.iters.check251 = icmp ult i32 %2, 4
  %i.cv = sub i64 %i.a, %.064176
  %diff.check253 = icmp ugt i64 %i.cv, -32
  %or.cond347.a = select i1 %min.iters.check251, i1 true, i1 %diff.check253
  br i1 %or.cond347.a, label %.lr.ph98.preheader, label %vector.main.loop.iter.check254

vector.main.loop.iter.check254:                   ; preds = %iter.check267
  %min.iters.check255 = icmp ult i32 %2, 32
  br i1 %min.iters.check255, label %vec.epilog.ph271, label %vector.ph256

vector.ph256:                                     ; preds = %vector.main.loop.iter.check254
  %i.cw = and i64 %wide.trip.count133, 28
  %n.vec257 = and i64 %wide.trip.count133, 2147483616 ; 5 uses
  %i.cx = getelementptr i8, ptr %.064, i64 %n.vec257 ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.ph256, %vector.body258
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next263, %vector.body258 ] ; 3 uses
  %next.gep260 = getelementptr i8, ptr %.064, i64 %index259 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %index259 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load261 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !30
  %wide.load262 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !30
  %i.da = getelementptr i8, ptr %next.gep260, i64 16
  store <16 x i8> %wide.load261, ptr %next.gep260, align 1, !tbaa !30
  store <16 x i8> %wide.load262, ptr %i.da, align 1, !tbaa !30
  %index.next263 = add nuw i64 %index259, 32      ; 2 uses
  %i.db = icmp eq i64 %index.next263, %n.vec257
  br i1 %i.db, label %middle.block264, label %vector.body258, !llvm.loop !104

middle.block264:                                  ; preds = %vector.body258
  %cmp.n265 = icmp eq i64 %n.vec257, %wide.trip.count133
  br i1 %cmp.n265, label %.preheader, label %vec.epilog.iter.check269

vec.epilog.iter.check269:                         ; preds = %middle.block264
  %min.epilog.iters.check270 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check270, label %.lr.ph98.preheader, label %vec.epilog.ph271, !prof !119

vec.epilog.ph271:                                 ; preds = %vector.main.loop.iter.check254, %vec.epilog.iter.check269
  %vec.epilog.resume.val266 = phi i64 [ %n.vec257, %vec.epilog.iter.check269 ], [ 0, %vector.main.loop.iter.check254 ]
  %n.vec272 = and i64 %wide.trip.count133, 2147483644 ; 4 uses
  %i.dc = getelementptr i8, ptr %.064, i64 %n.vec272 ; 2 uses
  br label %vec.epilog.vector.body273

vec.epilog.vector.body273:                        ; preds = %vec.epilog.vector.body273, %vec.epilog.ph271
  %index274 = phi i64 [ %vec.epilog.resume.val266, %vec.epilog.ph271 ], [ %index.next277, %vec.epilog.vector.body273 ] ; 3 uses
  %next.gep275 = getelementptr i8, ptr %.064, i64 %index274
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %index274
  %wide.load276 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !30
  store <4 x i8> %wide.load276, ptr %next.gep275, align 1, !tbaa !30
  %index.next277 = add nuw i64 %index274, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next277, %n.vec272
  br i1 %i.de, label %vec.epilog.middle.block278, label %vec.epilog.vector.body273, !llvm.loop !105

vec.epilog.middle.block278:                       ; preds = %vec.epilog.vector.body273
  %cmp.n279 = icmp eq i64 %n.vec272, %wide.trip.count133
  br i1 %cmp.n279, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check267, %vec.epilog.iter.check269, %vec.epilog.middle.block278
  %indvars.iv130.ph = phi i64 [ 0, %iter.check267 ], [ %n.vec257, %vec.epilog.iter.check269 ], [ %n.vec272, %vec.epilog.middle.block278 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check267 ], [ %i.cx, %vec.epilog.iter.check269 ], [ %i.dc, %vec.epilog.middle.block278 ] ; 2 uses
  %i.df = sub nsw i64 %wide.trip.count133, %indvars.iv130.ph
  %xtraiter361 = and i64 %i.df, 7                 ; 2 uses
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv130.prol = phi i64 [ %indvars.iv.next131.prol, %.lr.ph98.prol ], [ %indvars.iv130.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.di, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter363 = phi i64 [ %prol.iter363.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130.prol
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.dh, ptr %.36796.prol, align 1, !tbaa !30
  %indvars.iv.next131.prol = add nuw nsw i64 %indvars.iv130.prol, 1 ; 2 uses
  %prol.iter363.next = add i64 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i64 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !106

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa352.unr = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %.lr.ph98.preheader ], [ %indvars.iv.next131.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.di, %.lr.ph98.prol ]
  %i.dj = sub nsw i64 %indvars.iv130.ph, %wide.trip.count133
  %i.dk = icmp ugt i64 %i.dj, -8
  br i1 %i.dk, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block264, %vec.epilog.middle.block278, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.dc, %vec.epilog.middle.block278 ], [ %i.cx, %middle.block264 ], [ %.lcssa352.unr, %.lr.ph98.prol.loopexit ], [ %i.eq, %.lr.ph98 ] ; 3 uses
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
  br i1 %i.er, label %iter.check195, label %bb.i

iter.check195:                                    ; preds = %bb.h
  %wide.trip.count122 = zext nneg i32 %i.d to i64 ; 8 uses
  %min.iters.check177 = icmp ult i32 %i.d, 4
  %i.es = sub i64 %i.a, %.064176
  %diff.check179 = icmp ugt i64 %i.es, -32
  %or.cond348 = select i1 %min.iters.check177, i1 true, i1 %diff.check179
  br i1 %or.cond348, label %.preheader79.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %iter.check195
  %min.iters.check181 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check181, label %vec.epilog.ph199, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %i.et = and i64 %wide.trip.count122, 28
  %n.vec183 = and i64 %wide.trip.count122, 2147483616 ; 7 uses
  %i.eu = or disjoint i64 %n.vec183, 1
  %i.ev = getelementptr i8, ptr %.064, i64 %n.vec183 ; 3 uses
  br label %vector.body184

vector.body184:                                   ; preds = %vector.ph182, %vector.body184
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next189, %vector.body184 ] ; 3 uses
  %next.gep186 = getelementptr i8, ptr %.064, i64 %index185 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %index185 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load187 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !30
  %wide.load188 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !30
  %i.ey = getelementptr i8, ptr %next.gep186, i64 16
  store <16 x i8> %wide.load187, ptr %next.gep186, align 1, !tbaa !30
  store <16 x i8> %wide.load188, ptr %i.ey, align 1, !tbaa !30
  %index.next189 = add nuw i64 %index185, 32      ; 2 uses
  %i.ez = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.ez, label %middle.block190, label %vector.body184, !llvm.loop !108

middle.block190:                                  ; preds = %vector.body184
  %ind.escape191 = getelementptr i8, ptr %i.ev, i64 -1
  %cmp.n192 = icmp eq i64 %n.vec183, %wide.trip.count122
  br i1 %cmp.n192, label %.loopexit345, label %vec.epilog.iter.check197

vec.epilog.iter.check197:                         ; preds = %middle.block190
  %min.epilog.iters.check198 = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check198, label %.preheader79.preheader, label %vec.epilog.ph199, !prof !119

vec.epilog.ph199:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check197
  %vec.epilog.resume.val193 = phi i64 [ %n.vec183, %vec.epilog.iter.check197 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec200 = and i64 %wide.trip.count122, 2147483644 ; 6 uses
  %i.fa = or disjoint i64 %n.vec200, 1
  %i.fb = getelementptr i8, ptr %.064, i64 %n.vec200 ; 3 uses
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph199
  %index202 = phi i64 [ %vec.epilog.resume.val193, %vec.epilog.ph199 ], [ %index.next205, %vec.epilog.vector.body201 ] ; 3 uses
  %next.gep203 = getelementptr i8, ptr %.064, i64 %index202
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %index202
  %wide.load204 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !30
  store <4 x i8> %wide.load204, ptr %next.gep203, align 1, !tbaa !30
  %index.next205 = add nuw i64 %index202, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next205, %n.vec200
  br i1 %i.fd, label %vec.epilog.middle.block206, label %vec.epilog.vector.body201, !llvm.loop !109

vec.epilog.middle.block206:                       ; preds = %vec.epilog.vector.body201
  %ind.escape208 = getelementptr i8, ptr %i.fb, i64 -1
  %cmp.n209 = icmp eq i64 %n.vec200, %wide.trip.count122
  br i1 %cmp.n209, label %.loopexit345, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %iter.check195, %vec.epilog.iter.check197, %vec.epilog.middle.block206
  %indvars.iv125.ph = phi i64 [ 1, %iter.check195 ], [ %i.eu, %vec.epilog.iter.check197 ], [ %i.fa, %vec.epilog.middle.block206 ] ; 2 uses
  %indvars.iv119.ph = phi i64 [ 0, %iter.check195 ], [ %n.vec183, %vec.epilog.iter.check197 ], [ %n.vec200, %vec.epilog.middle.block206 ] ; 3 uses
  %.56989.ph = phi ptr [ %.064, %iter.check195 ], [ %i.ev, %vec.epilog.iter.check197 ], [ %i.fb, %vec.epilog.middle.block206 ] ; 2 uses
  %xtraiter358 = and i64 %wide.trip.count122, 3   ; 2 uses
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %.preheader79.prol.loopexit, label %.preheader79.prol

.preheader79.prol:                                ; preds = %.preheader79.preheader, %.preheader79.prol
  %indvars.iv125.prol = phi i64 [ %indvars.iv.next126.prol, %.preheader79.prol ], [ %indvars.iv125.ph, %.preheader79.preheader ] ; 2 uses
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %.preheader79.prol ], [ %indvars.iv119.ph, %.preheader79.preheader ] ; 2 uses
  %.56989.prol = phi ptr [ %i.fg, %.preheader79.prol ], [ %.56989.ph, %.preheader79.preheader ] ; 3 uses
  %prol.iter360 = phi i64 [ %prol.iter360.next, %.preheader79.prol ], [ 0, %.preheader79.preheader ]
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv119.prol
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %.56989.prol, i64 1 ; 3 uses
  store i8 %i.ff, ptr %.56989.prol, align 1, !tbaa !30
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1 ; 2 uses
  %prol.iter360.next = add i64 %prol.iter360, 1   ; 2 uses
  %prol.iter360.cmp.not = icmp eq i64 %prol.iter360.next, %xtraiter358
  br i1 %prol.iter360.cmp.not, label %.preheader79.prol.loopexit, label %.preheader79.prol, !llvm.loop !110

.preheader79.prol.loopexit:                       ; preds = %.preheader79.prol, %.preheader79.preheader
  %indvars.iv125.lcssa355.unr = phi i64 [ poison, %.preheader79.preheader ], [ %indvars.iv125.prol, %.preheader79.prol ]
  %.56989.lcssa354.unr = phi ptr [ poison, %.preheader79.preheader ], [ %.56989.prol, %.preheader79.prol ]
  %.lcssa353.unr = phi ptr [ poison, %.preheader79.preheader ], [ %i.fg, %.preheader79.prol ]
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %.preheader79.preheader ], [ %indvars.iv.next126.prol, %.preheader79.prol ]
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %.preheader79.preheader ], [ %indvars.iv.next120.prol, %.preheader79.prol ]
  %.56989.unr = phi ptr [ %.56989.ph, %.preheader79.preheader ], [ %i.fg, %.preheader79.prol ]
  %i.fh = sub nsw i64 %indvars.iv119.ph, %wide.trip.count122
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %.loopexit345, label %.preheader79

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
  br i1 %exitcond123.not.3, label %.loopexit345.loopexit.unr-lcssa, label %.preheader79, !llvm.loop !111

.loopexit345.loopexit.unr-lcssa:                  ; preds = %.preheader79
  %i.fy = getelementptr inbounds nuw i8, ptr %.56989, i64 3
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3
  br label %.loopexit345

.loopexit345:                                     ; preds = %.loopexit345.loopexit.unr-lcssa, %.preheader79.prol.loopexit, %vec.epilog.middle.block206, %middle.block190
  %indvars.iv125.lcssa = phi i64 [ %n.vec200, %vec.epilog.middle.block206 ], [ %n.vec183, %middle.block190 ], [ %indvars.iv125.lcssa355.unr, %.preheader79.prol.loopexit ], [ %indvars.iv.next126.2, %.loopexit345.loopexit.unr-lcssa ] ; 7 uses
  %.56989.lcssa = phi ptr [ %ind.escape208, %vec.epilog.middle.block206 ], [ %ind.escape191, %middle.block190 ], [ %.56989.lcssa354.unr, %.preheader79.prol.loopexit ], [ %i.fy, %.loopexit345.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa159 = phi ptr [ %i.fb, %vec.epilog.middle.block206 ], [ %i.ev, %middle.block190 ], [ %.lcssa353.unr, %.preheader79.prol.loopexit ], [ %i.fx, %.loopexit345.loopexit.unr-lcssa ]
  %.56989.lcssa216 = ptrtoaddr ptr %.56989.lcssa to i64
  store i8 46, ptr %.lcssa159, align 1, !tbaa !30
  %.67091 = getelementptr inbounds nuw i8, ptr %.56989.lcssa, i64 2 ; 7 uses
  %i.fz = icmp slt i32 %i.d, %2
  br i1 %i.fz, label %iter.check234, label %.loopexit76

iter.check234:                                    ; preds = %.loopexit345
  %narrow = sub nsw i32 0, %3                     ; 3 uses
  %i.ga = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check217 = icmp ult i32 %narrow, 8
  br i1 %min.iters.check217, label %.lr.ph94.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %iter.check234
end_hunk_0
