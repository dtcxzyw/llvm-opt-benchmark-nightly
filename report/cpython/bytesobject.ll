inline.NumInlined: 679
inline.NumDeleted: 129
begin_hunk_0_@fastsearch:bb.a
  %i.ef = icmp eq i32 %5, 1
  br i1 %i.ef, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eg = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.aj
  %i.eh = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.am:                                            ; preds = %bb.ai
  %i.ei = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.an:                                            ; preds = %bb.t
  %i.ej = add nsw i64 %3, -1                      ; 6 uses
  %i.ek = load i8, ptr %2, align 1, !tbaa !14     ; 5 uses
  %i.el = and i8 %i.ek, 63
  %i.em = zext nneg i8 %i.el to i64
  %i.en = shl nuw i64 1, %i.em                    ; 2 uses
  %xtraiter171 = and i64 %i.ej, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.an
  %i.eo = getelementptr i8, ptr %2, i64 %i.ej
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !14  ; 2 uses
  %i.eq = and i8 %i.ep, 63
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = shl nuw i64 1, %i.er
  %i.et = or i64 %i.es, %i.en                     ; 2 uses
  %i.eu = icmp eq i8 %i.ep, %i.ek
  %i.ev = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.eu, i64 %i.ev, i64 %i.ej ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.an
  %.04660.i.unr = phi i64 [ %i.ej, %bb.an ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.en, %bb.an ], [ %i.et, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.ej, %bb.an ], [ %i.ev, %.lr.ph.i76.prol ]
  %.lcssa162.unr = phi i64 [ poison, %bb.an ], [ %i.et, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.an ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.ew = icmp eq i64 %3, 2
  br i1 %i.ew, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa162 = phi i64 [ %.lcssa162.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gl, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.ex = sub i64 %1, %3                          ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  br i1 %i.ey, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.as
  %.15065.us.i = phi i64 [ %i.fu, %bb.as ], [ %i.ex, %.preheader56.i ] ; 5 uses
  %i.ez = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !14
  %i.fb = icmp eq i8 %i.fa, %i.ek
  br i1 %i.fb, label %.preheader.us.i80, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %stringlib_find_char.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fc = getelementptr i8, ptr %i.ez, i64 -1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !14
  %i.fe = and i8 %i.fd, 63
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fg, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.fh, 0
  %i.fi = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.as

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %bb.at
  %.04862.us.i = phi i64 [ %i.fw, %bb.at ], [ %i.ej, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fj = getelementptr i8, ptr %i.ez, i64 %.04862.us.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !14
  %i.fl = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !14
  %.not52.us.i = icmp eq i8 %i.fk, %i.fm
  br i1 %.not52.us.i, label %bb.at, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread.us.i
  %i.fn = getelementptr i8, ptr %i.ez, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !14
  %i.fp = and i8 %i.fo, 63
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.fs, 0
  br i1 %.not54.us.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread.us.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.ar ], [ %i.fi, %bb.ap ], [ %3, %bb.aq ]
  %i.ft = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fu = add nsw i64 %i.ft, -1
  %i.fv = icmp sgt i64 %i.ft, 0
  br i1 %i.fv, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !74

bb.at:                                            ; preds = %.preheader.us.i80
  %i.fw = add nsw i64 %.04862.us.i, -1
  %i.fx = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.fx, label %.preheader.us.i80, label %stringlib_find_char.exit, !llvm.loop !75

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gl, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gn, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.fy = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !14  ; 2 uses
  %i.ga = and i8 %i.fz, 63
  %i.gb = zext nneg i8 %i.ga to i64
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = or i64 %i.gc, %.04759.i
  %i.ge = icmp eq i8 %i.fz, %i.ek
  %i.gf = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.ge, i64 %i.gf, i64 %.04660.i
  %i.gg = getelementptr i8, ptr %2, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !14  ; 2 uses
  %i.gi = and i8 %i.gh, 63
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = or i64 %i.gk, %i.gd                     ; 2 uses
  %i.gm = icmp eq i8 %i.gh, %i.ek
  %i.gn = add nsw i64 %.04958.i, -2               ; 2 uses
  %spec.select.i77.1 = select i1 %i.gm, i64 %i.gn, i64 %spec.select.i77 ; 2 uses
  %i.go = icmp sgt i64 %.04958.i, 2
  br i1 %i.go, label %.lr.ph.i76, label %.preheader56.i, !llvm.loop !76

stringlib_find_char.exit:                         ; preds = %bb.ae, %._crit_edge104.us.thread.i, %bb.as, %bb.ao, %bb.at, %bb.o, %bb.j, %bb.s, %bb.r, %.lr.ph.i69, %bb.n, %middle.block, %.preheader56.i, %.loopexit.i, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %.preheader.i, %bb.d, %bb.a, %bb.b, %bb.am, %bb.al, %bb.ak
  %.0 = phi i64 [ -1, %.preheader56.i ], [ -1, %bb.a ], [ -1, %bb.d ], [ %4, %bb.r ], [ %.15065.us.i, %bb.at ], [ -1, %bb.n ], [ %spec.select.i, %.lr.ph.i69 ], [ %i.eg, %bb.ak ], [ %i.eh, %bb.al ], [ %i.ei, %bb.am ], [ -1, %bb.b ], [ %i.m, %bb.h ], [ -1, %bb.g ], [ %i.r, %bb.i ], [ -1, %.preheader.i ], [ %i.z, %bb.m ], [ -1, %bb.l ], [ %i.ai, %bb.p ], [ -1, %bb.o ], [ -1, %bb.j ], [ %i.ea, %.loopexit.i ], [ %i.au, %middle.block ], [ -1, %bb.as ], [ %.1.i, %bb.s ], [ -1, %bb.ao ], [ %4, %bb.ae ], [ %.066110.us.i, %._crit_edge104.us.thread.i ]
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
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @stringlib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 -1, -9223372036854775808) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
.lr.ph.preheader:
  %6 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  %7 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14    ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b       ; 3 uses
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
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !14 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !14 ; 2 uses
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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !152

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
  %.1108.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1108, %.lr.ph ]
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

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.k
  %.092148.us = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %8 = add nsw i64 %.092148.us, 1                 ; 2 uses
  %.not118.us = icmp sgt i64 %8, %i.a
  br i1 %.not118.us, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.e, i64 %8
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %bb.l
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.bj, %bb.l ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bk, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %bb.l, label %._crit_edge141.us

._crit_edge141.us:                                ; preds = %bb.c
  %i.at = icmp eq i64 %.0139.us, %i.b
  br i1 %i.at, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.au = add i64 %.0104146.us, 1
  %i.av = add i64 %i.au, %.0139.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092148.us
  %i.ay = icmp sgt i64 %i.ax, 2000
  %or.cond.us = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %9 = add nsw i64 %.092148.us, 1                 ; 2 uses
  %.not121.us = icmp sgt i64 %9, %i.a
  br i1 %.not121.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.e, i64 %9
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.ad
  %.not122.us = icmp eq i64 %i.be, 0
  br i1 %.not122.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0107.pn.us = phi i64 [ %.1108.lcssa, %bb.g ], [ %3, %bb.f ]
  %.193.us = add i64 %.0107.pn.us, %.092148.us
  br label %bb.k

._crit_edge141.us.thread:                         ; preds = %bb.l, %._crit_edge141.us
  br i1 %.not124, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %._crit_edge141.us.thread
  %i.bf = add i64 %.0100147.us, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i64 %.092148.us, %i.b
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.b, %bb.a
  %.2106.us = phi i64 [ %.0104146.us, %bb.a ], [ %.0104146.us, %bb.b ], [ %i.av, %bb.h ], [ %.0104146.us, %bb.j ]
  %.2102.us = phi i64 [ %.0100147.us, %bb.a ], [ %.0100147.us, %bb.b ], [ %.0100147.us, %bb.h ], [ %i.bf, %bb.j ] ; 2 uses
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.h ], [ %i.bh, %bb.j ]
  %i.bi = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bi, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !153

bb.l:                                             ; preds = %bb.c
  %i.bj = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.bj, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !154

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bk = getelementptr i8, ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bu, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bq, %.lr.ph ], [ %i.x, %middle.block ]
  %.0107135 = phi i64 [ %.1108, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bl = getelementptr i8, ptr %2, i64 %.094137
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14  ; 2 uses
  %i.bn = and i8 %i.bm, 63
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = or i64 %i.bp, %.095136                  ; 2 uses
  %i.br = icmp eq i8 %i.bm, %i.d
  %i.bs = xor i64 %.094137, -1
  %i.bt = add nsw i64 %i.b, %i.bs
  %.1108 = select i1 %i.br, i64 %i.bt, i64 %.0107135 ; 2 uses
  %i.bu = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !155

.split.us:                                        ; preds = %bb.d
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
  %i.cb = sub i64 %4, %.0100147.us                ; 4 uses
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
  %.01930.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01930.i249             ; 3 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @stringlib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %stringlib__two_way_count.exit, label %.lr.ph.i

stringlib__two_way_count.exit:                    ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.1.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cp = add i64 %.1.ph.i, %.0100147.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.3103 = phi i64 [ 0, %._crit_edge ], [ %.2102.us, %bb.k ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3103, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.i, %bb.m, %stringlib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %stringlib__two_way_count.exit ], [ %4, %bb.i ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stringlib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #10 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !156
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !158
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.042.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.03339.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14    ; 2 uses
  %i.h = icmp slt i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.02941.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.03339.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.03140.us.i.i ; 2 uses
  %spec.select.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  %i.l = select i1 %.not37.us.i.i, i64 %.03140.us.i.i, i64 0
  %spec.select38.us.i.i = add i64 %i.l, %.02941.us.i.i
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.132.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.03140.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %.042.us.i.i, %bb.e ], [ %.02941.us.i.i, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 3 uses
  %i.p = add i64 %.130.us.i.i, %.134.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !159

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.042.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.03339.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14    ; 2 uses
  %i.x = icmp slt i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i
  br label %bb.k

end_hunk_0
