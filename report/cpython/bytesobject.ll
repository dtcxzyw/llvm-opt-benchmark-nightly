Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytesobject?download=true
inline.NumInlined: 679
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@fastsearch:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.ee = icmp eq i32 %5, 1
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ef = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.ak:                                            ; preds = %bb.ai
  %i.eg = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.ah
  %i.eh = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.am:                                            ; preds = %bb.t
  %i.ei = add nsw i64 %3, -1                      ; 6 uses
  %i.ej = load i8, ptr %2, align 1, !tbaa !22     ; 5 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el                    ; 2 uses
  %xtraiter162 = and i64 %i.ei, 1
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol

.lr.ph.i75.prol:                                  ; preds = %bb.am
  %i.en = getelementptr i8, ptr %2, i64 %i.ei
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !22  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = or i64 %i.er, %i.em                     ; 2 uses
  %i.et = icmp eq i8 %i.eo, %i.ej
  %i.eu = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i76.prol = select i1 %i.et, i64 %i.eu, i64 %i.ei ; 2 uses
  br label %.lr.ph.i75.prol.loopexit

.lr.ph.i75.prol.loopexit:                         ; preds = %.lr.ph.i75.prol, %bb.am
  %.060.i.unr = phi i64 [ %i.ei, %bb.am ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %.04759.i.unr = phi i64 [ %i.ei, %bb.am ], [ %i.eu, %.lr.ph.i75.prol ]
  %.04958.i.unr = phi i64 [ %i.em, %bb.am ], [ %i.es, %.lr.ph.i75.prol ]
  %.lcssa154.unr = phi i64 [ poison, %bb.am ], [ %i.es, %.lr.ph.i75.prol ]
  %spec.select.i76.lcssa.unr = phi i64 [ poison, %bb.am ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %i.ev = icmp eq i64 %3, 2
  br i1 %i.ev, label %.lr.ph66.split.us.i.preheader, label %.lr.ph.i75

.lr.ph66.split.us.i.preheader:                    ; preds = %.lr.ph.i75, %.lr.ph.i75.prol.loopexit
  %.lcssa154 = phi i64 [ %.lcssa154.unr, %.lr.ph.i75.prol.loopexit ], [ %i.gj, %.lr.ph.i75 ] ; 2 uses
  %spec.select.i76.lcssa = phi i64 [ %spec.select.i76.lcssa.unr, %.lr.ph.i75.prol.loopexit ], [ %spec.select.i76.1, %.lr.ph.i75 ]
  %i.ew = sub nsw i64 %1, %3
  br label %.lr.ph66.split.us.i

.lr.ph66.split.us.i:                              ; preds = %.lr.ph66.split.us.i.preheader, %bb.as
  %.14865.us.i = phi i64 [ %i.fu, %bb.as ], [ %i.ew, %.lr.ph66.split.us.i.preheader ] ; 5 uses
  %i.ex = getelementptr i8, ptr %0, i64 %.14865.us.i ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.ez = icmp eq i8 %i.ey, %i.ej
  br i1 %i.ez, label %.preheader.us.i78, label %bb.an

bb.an:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i77, label %stringlib_find_char.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr i8, ptr %i.ex, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !22
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fe, %.lcssa154
  %.not51.us.i = icmp eq i64 %i.ff, 0
  %i.fg = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.as

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.ap
  %.04662.us.i = phi i64 [ %i.fl, %bb.ap ], [ %i.ei, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 %.04662.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !22
  %i.fj = getelementptr i8, ptr %2, i64 %.04662.us.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !22
  %.not52.us.i = icmp eq i8 %i.fi, %i.fk
  br i1 %.not52.us.i, label %bb.ap, label %.thread.us.i

bb.ap:                                            ; preds = %.preheader.us.i78
  %i.fl = add nsw i64 %.04662.us.i, -1
  %i.fm = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.fm, label %.preheader.us.i78, label %stringlib_find_char.exit, !llvm.loop !3

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread.us.i
  %i.fn = getelementptr i8, ptr %i.ex, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !22
  %i.fp = and i8 %i.fo, 63
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %.lcssa154
  %.not54.us.i = icmp eq i64 %i.fs, 0
  br i1 %.not54.us.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread.us.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i76.lcssa, %bb.ar ], [ %i.fg, %bb.ao ], [ %3, %bb.aq ]
  %i.ft = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fu = add nsw i64 %i.ft, -1
  %i.fv = icmp sgt i64 %i.ft, 0
  br i1 %i.fv, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !4

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.prol.loopexit, %.lr.ph.i75
  %.060.i = phi i64 [ %spec.select.i76.1, %.lr.ph.i75 ], [ %.060.i.unr, %.lr.ph.i75.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gl, %.lr.ph.i75 ], [ %.04759.i.unr, %.lr.ph.i75.prol.loopexit ] ; 4 uses
  %.04958.i = phi i64 [ %i.gj, %.lr.ph.i75 ], [ %.04958.i.unr, %.lr.ph.i75.prol.loopexit ]
  %i.fw = getelementptr i8, ptr %2, i64 %.04759.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !22  ; 2 uses
  %i.fy = and i8 %i.fx, 63
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = or i64 %i.ga, %.04958.i
  %i.gc = icmp eq i8 %i.fx, %i.ej
  %i.gd = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i76 = select i1 %i.gc, i64 %i.gd, i64 %.060.i
  %i.ge = getelementptr i8, ptr %2, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !22  ; 2 uses
  %i.gg = and i8 %i.gf, 63
  %i.gh = zext nneg i8 %i.gg to i64
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = or i64 %i.gi, %i.gb                     ; 2 uses
  %i.gk = icmp eq i8 %i.gf, %i.ej
  %i.gl = add nsw i64 %.04759.i, -2               ; 2 uses
  %spec.select.i76.1 = select i1 %i.gk, i64 %i.gl, i64 %spec.select.i76 ; 2 uses
  %i.gm = icmp sgt i64 %.04759.i, 2
  br i1 %i.gm, label %.lr.ph.i75, label %.lr.ph66.split.us.i.preheader, !llvm.loop !5

stringlib_find_char.exit:                         ; preds = %bb.ae, %._crit_edge104.us.thread.i.loopexit, %bb.as, %bb.an, %bb.ap, %bb.o, %bb.j, %bb.s, %bb.r, %.lr.ph.i68, %bb.n, %middle.block, %.loopexit.i, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %.preheader.i, %bb.d, %bb.a, %bb.b, %bb.al, %bb.ak, %bb.aj
  %.0 = phi i64 [ -1, %bb.o ], [ -1, %bb.a ], [ -1, %bb.d ], [ %4, %bb.r ], [ %.14865.us.i, %bb.ap ], [ -1, %bb.n ], [ %spec.select.i, %.lr.ph.i68 ], [ %i.ef, %bb.aj ], [ %i.eg, %bb.ak ], [ %i.eh, %bb.al ], [ -1, %bb.b ], [ %i.m, %bb.h ], [ -1, %bb.g ], [ %i.r, %bb.i ], [ -1, %.preheader.i ], [ %i.z, %bb.m ], [ -1, %bb.l ], [ %i.ai, %bb.p ], [ %i.dz, %.loopexit.i ], [ -1, %bb.j ], [ %i.au, %middle.block ], [ -1, %bb.as ], [ %.1.i, %bb.s ], [ -1, %bb.an ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ], [ %4, %bb.ae ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @stringlib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 -1, -9223372036854775808) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
.lr.ph.preheader:
  %6 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  %7 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22    ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i8> %broadcast.splatinsert252, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !22 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !22 ; 2 uses
  %i.h = and <2 x i8> %wide.load, splat (i8 63)
  %i.i = and <2 x i8> %wide.load257, splat (i8 63)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i8> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i8> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1100.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1100, %.lr.ph ]
  %i.aa = and i8 %i.d, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.l
  %.092148.us = phi i64 [ %i.bj, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.096147.us = phi i64 [ %.298.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %.0101146.us = phi i64 [ %.2103.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.l

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.at, %bb.d ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bk, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %bb.d, label %._crit_edge141.us

bb.d:                                             ; preds = %bb.c
  %i.at = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.at, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !161

._crit_edge141.us:                                ; preds = %bb.c
  %i.au = icmp eq i64 %.0139.us, %i.b
  br i1 %i.au, label %._crit_edge141.us.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge141.us
  %i.av = add i64 %.096147.us, 1
  %i.aw = add i64 %i.av, %.0139.us                ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %i.ae
  %i.ay = sub i64 %i.a, %.092148.us
  %i.az = icmp sgt i64 %i.ay, 2000
  %or.cond.us = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %i.af, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.be, %i.ad
  %.not122.us = icmp eq i64 %i.bf, 0
  br i1 %.not122.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.099.pn.us = phi i64 [ %.1100.lcssa, %bb.h ], [ %3, %bb.g ]
  %.193.us = add i64 %.099.pn.us, %.092148.us
  br label %bb.l

._crit_edge141.us.thread:                         ; preds = %bb.d, %._crit_edge141.us
  br i1 %.not124, label %bb.j, label %.thread.thread

bb.j:                                             ; preds = %._crit_edge141.us.thread
  %i.bg = add i64 %.0101146.us, 1                 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %4
  br i1 %i.bh, label %.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i64 %.092148.us, %i.b
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.b, %bb.a
  %.2103.us = phi i64 [ %.0101146.us, %bb.a ], [ %.0101146.us, %bb.b ], [ %.0101146.us, %bb.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.298.us = phi i64 [ %.096147.us, %bb.a ], [ %.096147.us, %bb.b ], [ %i.aw, %bb.i ], [ %.096147.us, %bb.k ]
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.i ], [ %i.bi, %bb.k ]
  %i.bj = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bj, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !162

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bk = getelementptr i8, ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bu, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bq, %.lr.ph ], [ %i.x, %middle.block ]
  %.099135 = phi i64 [ %.1100, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bl = getelementptr i8, ptr %2, i64 %.094137
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !22  ; 2 uses
  %i.bn = and i8 %i.bm, 63
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = or i64 %i.bp, %.095136                  ; 2 uses
  %i.br = icmp eq i8 %i.bm, %i.d
  %i.bs = xor i64 %.094137, -1
  %i.bt = add nsw i64 %i.b, %i.bs
  %.1100 = select i1 %i.br, i64 %i.bt, i64 %.099135 ; 2 uses
  %i.bu = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !163

.split.us:                                        ; preds = %bb.e
  %i.bv = getelementptr i8, ptr %0, i64 %.092148.us ; 3 uses
  %i.bw = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bx = call fastcc i64 @stringlib__two_way(ptr noundef readonly %i.bv, i64 noundef %i.bw, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = add i64 %i.bx, %.092148.us
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.cb = sub i64 %4, %.0101146.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cc = call fastcc i64 @stringlib__two_way(ptr noundef %i.bv, i64 noundef %i.bw, ptr noundef %6) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %stringlib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @stringlib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %stringlib__two_way_count.exit, label %.lr.ph.i

stringlib__two_way_count.exit:                    ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %stringlib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %stringlib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stringlib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #10 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !95
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !96
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22    ; 2 uses
  %i.h = icmp slt i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !164

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.03339.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.02941.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 2 uses
  %i.x = icmp slt i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
end_hunk_0
