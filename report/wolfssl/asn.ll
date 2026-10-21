Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 75
begin_hunk_0_@wc_EncodeRsaPssAlgoId:bb.a
  %.not26.i.i.i.i209 = icmp eq i8 %i.ct, 0
  br i1 %.not26.i.i.i.i209, label %.loopexit.loopexit30.i.i.i.i210, label %.split.i.i.i.i205, !llvm.loop !174

.loopexit.loopexit30.i.i.i.i210:                  ; preds = %.split.i.i.i.i205, %vec.epilog.vector.body415
  %indvars.iv.next.i.i.i.i208.lcssa = phi i64 [ %i.cg, %vec.epilog.vector.body415 ], [ %indvars.iv.next.i.i.i.i208, %.split.i.i.i.i205 ]
  %i.cu = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i208.lcssa to i32
  %i.cv = add i32 %i.cu, 1
  br label %.thread.i.i218

.thread.i.i218:                                   ; preds = %.loopexit.loopexit30.i.i.i.i210, %bb.an
  %.0.i.i.i211 = phi i32 [ %i.cv, %.loopexit.loopexit30.i.i.i.i210 ], [ 2, %bb.an ]
  %i.cw = add i32 %.0.i.i.i211, %i.bv             ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 3 uses
  store i8 -96, ptr %i.cy, align 1, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.da = trunc nuw i32 %i.k to i8                ; 2 uses
  br i1 %i.m, label %SetExplicit.exit233, label %.split.i.i.i.i222

.split.i.i.i.i222:                                ; preds = %.thread.i.i218
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  store i8 %i.da, ptr %i.db, align 1, !tbaa !15
  br label %SetExplicit.exit233

SetExplicit.exit233:                              ; preds = %.thread.i.i218, %.split.i.i.i.i222
  %.sink = phi i8 [ -127, %.split.i.i.i.i222 ], [ %i.da, %.thread.i.i218 ]
  %.0.i.i.i228 = phi i32 [ 3, %.split.i.i.i.i222 ], [ 2, %.thread.i.i218 ]
  store i8 %.sink, ptr %i.cz, align 1, !tbaa !15
  %i.dc = add i32 %.0.i.i.i228, %i.cw             ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %i.dd
  %i.df = zext nneg i32 %i.k to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 16 %i.b, i64 %i.df, i1 false)
  %i.dg = add i32 %i.dc, %i.k                     ; 2 uses
  %.0.i.i.i240 = select i1 %i.t, i32 2, i32 3
  %i.dh = add nuw nsw i32 %.0.i.i.i240, %i.u      ; 7 uses
  %i.di = zext i32 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %i.di ; 3 uses
  store i8 -95, ptr %i.dj, align 1, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 3 uses
  %i.dl = icmp ult i32 %i.dh, 128
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %SetExplicit.exit233
  %i.dm = trunc nuw nsw i32 %i.dh to i8
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !15
  br label %.thread.i.i262

bb.as:                                            ; preds = %SetExplicit.exit233
  %.not5.i.i.i.i.i246 = icmp ult i32 %i.dh, 16777216
  br i1 %.not5.i.i.i.i.i246, label %bb.at, label %iter.check442

bb.at:                                            ; preds = %bb.as
  %.not5.1.i.i.i.i.i258 = icmp samesign ult i32 %i.dh, 65536
  br i1 %.not5.1.i.i.i.i.i258, label %bb.au, label %iter.check442

bb.au:                                            ; preds = %bb.at
  %.not5.2.i.i.i.i.i259 = icmp samesign ult i32 %i.dh, 256
  %i.dn = select i1 %.not5.2.i.i.i.i.i259, i8 1, i8 2
  br label %iter.check442

iter.check442:                                    ; preds = %bb.as, %bb.at, %bb.au
  %.0.lcssa.i.i.i.i.i248 = phi i8 [ 4, %bb.as ], [ %i.dn, %bb.au ], [ 3, %bb.at ] ; 6 uses
  %i.do = or disjoint i8 %.0.lcssa.i.i.i.i.i248, -128
  store i8 %i.do, ptr %i.dk, align 1, !tbaa !15
  %i.dp = zext nneg i8 %.0.lcssa.i.i.i.i.i248 to i64 ; 2 uses
  %min.iters.check424 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i248, 4
  br i1 %min.iters.check424, label %.split.i.i.i.i249.preheader, label %vec.epilog.vector.body452

vec.epilog.vector.body452:                        ; preds = %iter.check442
  %broadcast.splatinsert450 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i248, i64 0
  %broadcast.splat451 = shufflevector <4 x i8> %broadcast.splatinsert450, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dq = add nsw <4 x i8> %broadcast.splat451, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec447 = and i64 %i.dp, 4                    ; 3 uses
  %i.dr = trunc nuw nsw i64 %n.vec447 to i8
  %i.ds = sub nsw i8 %.0.lcssa.i.i.i.i.i248, %i.dr
  %i.dt = or disjoint i64 %n.vec447, 1            ; 2 uses
  %i.du = zext <4 x i8> %i.dq to <4 x i32>
  %i.dv = shl nuw nsw <4 x i32> %i.du, splat (i32 3)
  %i.dw = add nsw <4 x i32> %i.dv, splat (i32 -8)
  %i.dx = lshr <4 x i32> %broadcast.splat449, %i.dw
  %i.dy = trunc <4 x i32> %i.dx to <4 x i8>
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store <4 x i8> %i.dy, ptr %i.dz, align 1, !tbaa !15
  %cmp.n458 = icmp eq i64 %n.vec447, %i.dp
  br i1 %cmp.n458, label %.loopexit.loopexit30.i.i.i.i254, label %.split.i.i.i.i249.preheader

.split.i.i.i.i249.preheader:                      ; preds = %iter.check442, %vec.epilog.vector.body452
  %indvars.iv.i.i.i.i250.ph = phi i64 [ 1, %iter.check442 ], [ %i.dt, %vec.epilog.vector.body452 ]
  %.029.i.i.i.i251.ph = phi i8 [ %.0.lcssa.i.i.i.i.i248, %iter.check442 ], [ %i.ds, %vec.epilog.vector.body452 ]
  br label %.split.i.i.i.i249

.split.i.i.i.i249:                                ; preds = %.split.i.i.i.i249.preheader, %.split.i.i.i.i249
  %indvars.iv.i.i.i.i250 = phi i64 [ %indvars.iv.next.i.i.i.i252, %.split.i.i.i.i249 ], [ %indvars.iv.i.i.i.i250.ph, %.split.i.i.i.i249.preheader ] ; 2 uses
  %.029.i.i.i.i251 = phi i8 [ %i.eg, %.split.i.i.i.i249 ], [ %.029.i.i.i.i251.ph, %.split.i.i.i.i249.preheader ] ; 2 uses
  %i.ea = zext i8 %.029.i.i.i.i251 to i32
  %i.eb = shl nuw nsw i32 %i.ea, 3
  %i.ec = add nsw i32 %i.eb, -8
  %i.ed = lshr i32 %i.dh, %i.ec
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i.i.i.i250
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i252 = add nuw nsw i64 %indvars.iv.i.i.i.i250, 1 ; 2 uses
  %i.eg = add nsw i8 %.029.i.i.i.i251, -1         ; 2 uses
  %.not26.i.i.i.i253 = icmp eq i8 %i.eg, 0
  br i1 %.not26.i.i.i.i253, label %.loopexit.loopexit30.i.i.i.i254, label %.split.i.i.i.i249, !llvm.loop !175

.loopexit.loopexit30.i.i.i.i254:                  ; preds = %.split.i.i.i.i249, %vec.epilog.vector.body452
  %indvars.iv.next.i.i.i.i252.lcssa = phi i64 [ %i.dt, %vec.epilog.vector.body452 ], [ %indvars.iv.next.i.i.i.i252, %.split.i.i.i.i249 ]
  %i.eh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i252.lcssa to i32
  %i.ei = add i32 %i.eh, 1
  br label %.thread.i.i262

.thread.i.i262:                                   ; preds = %.loopexit.loopexit30.i.i.i.i254, %bb.ar
  %.0.i.i.i255 = phi i32 [ %i.ei, %.loopexit.loopexit30.i.i.i.i254 ], [ 2, %bb.ar ]
  %i.ej = add i32 %.0.i.i.i255, %i.dg             ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek ; 3 uses
  store i8 48, ptr %i.el, align 1, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 2 uses
  br i1 %i.t, label %bb.av, label %BytePrecision.exit.i.i.i.i264

bb.av:                                            ; preds = %.thread.i.i262
  %i.en = trunc nuw nsw i32 %i.u to i8
  store i8 %i.en, ptr %i.em, align 1, !tbaa !15
  br label %.split.i

BytePrecision.exit.i.i.i.i264:                    ; preds = %.thread.i.i262
  store i8 -127, ptr %i.em, align 1, !tbaa !15
  %i.eo = trunc i32 %i.u to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !15
  br label %.split.i

.split.i:                                         ; preds = %BytePrecision.exit.i.i.i.i264, %bb.av
  %.0.i.i.i272 = phi i32 [ 3, %BytePrecision.exit.i.i.i.i264 ], [ 2, %bb.av ]
  %i.eq = add i32 %.0.i.i.i272, %i.ej             ; 3 uses
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %i.er ; 2 uses
  store i8 6, ptr %i.es, align 1, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 9, ptr %i.et, align 1, !tbaa !15
  %i.eu = add i32 %i.eq, 2
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ew, ptr noundef nonnull align 1 dereferenceable(9) @wc_EncodeRsaPssAlgoId.mgf1Oid, i64 9, i1 false)
  %i.ex = add i32 %i.eq, 11                       ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr nonnull align 16 %i.b, i64 %i.df, i1 false)
  %i.fa = add i32 %i.ex, %i.k                     ; 2 uses
  store i8 2, ptr %i.b, align 16, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.fc = trunc nuw nsw i32 %.lobit to i8
  %i.fd = add nuw nsw i8 %i.fc, 1
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !15
  br i1 %.not18.i, label %bb.aw, label %SetExplicit.exit336

bb.aw:                                            ; preds = %.split.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.fe, align 2, !tbaa !15
  br label %SetExplicit.exit336

SetExplicit.exit336:                              ; preds = %.split.i, %bb.aw
  %.0.i289 = phi i32 [ 3, %bb.aw ], [ 2, %.split.i ] ; 2 uses
  %i.ff = zext nneg i32 %.0.i289 to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ff
  store i8 %i.y, ptr %i.fg, align 1, !tbaa !15
  %i.fh = add nuw nsw i32 %.0.i289, 1             ; 3 uses
  %i.fi = zext i32 %i.fa to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi ; 2 uses
  store i8 -94, ptr %i.fj, align 1, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = trunc nuw nsw i32 %i.fh to i8
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !15
  %i.fm = add i32 %i.fa, 2                        ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn
  %i.fp = zext nneg i32 %i.fh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.fp, i1 false)
  %i.fq = add i32 %i.fh, %i.fm                    ; 3 uses
  store i8 2, ptr %i.b, align 16, !tbaa !15
  store i8 1, ptr %i.fb, align 1, !tbaa !15
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 1, ptr %i.fr, align 2, !tbaa !15
  %i.fs = zext i32 %i.fq to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fs ; 2 uses
  store i8 -93, ptr %i.ft, align 1, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  store i8 3, ptr %i.fu, align 1, !tbaa !15
  %i.fv = add i32 %i.fq, 2
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fx, ptr noundef nonnull align 16 dereferenceable(3) %i.b, i64 3, i1 false)
  %i.fy = add i32 %i.fq, 5
  br label %bb.ax

bb.ax:                                            ; preds = %SetAlgoIDImpl.exit.thread, %SetExplicit.exit336, %SetAlgoIDImpl.exit, %SetSequence.exit181, %bb.ae, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.fy, %SetExplicit.exit336 ], [ 0, %SetAlgoIDImpl.exit ], [ 0, %SetAlgoIDImpl.exit.thread ], [ 0, %bb.ae ], [ %i.ak, %SetSequence.exit181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @SetAlgoID(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc i32 @SetAlgoIDImpl(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 2, 1) i32 @SetExplicit(i8 noundef zeroext %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i8 noundef zeroext %3) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne i8 %3, 0
  %i.a = icmp ult i32 %1, 128
  %or.cond.i = or i1 %i.a, %.not.i.i
  br i1 %or.cond.i, label %SetHeader.exit, label %bb.e

.thread.i:                                        ; preds = %bb.a
  %i.b = or i8 %0, -96
  store i8 %i.b, ptr %2, align 1, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %.not.i6.i = icmp eq i8 %3, 0
  br i1 %.not.i6.i, label %.thread8.i, label %bb.c

bb.c:                                             ; preds = %.thread.i
  store i8 -128, ptr %i.c, align 1, !tbaa !15
  br label %SetHeader.exit

.thread8.i:                                       ; preds = %.thread.i
  %i.d = icmp ult i32 %1, 128
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread8.i
  %i.e = trunc nuw nsw i32 %1 to i8
  store i8 %i.e, ptr %i.c, align 1, !tbaa !15
  br label %SetHeader.exit

bb.e:                                             ; preds = %.thread8.i, %bb.b
  %i.f = phi ptr [ %i.c, %.thread8.i ], [ null, %bb.b ] ; 3 uses
  %.not5.i.i.i.i = icmp ult i32 %1, 16777216
  br i1 %.not5.i.i.i.i, label %bb.f, label %BytePrecision.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %.not5.1.i.i.i.i = icmp samesign ult i32 %1, 65536
  br i1 %.not5.1.i.i.i.i, label %bb.g, label %BytePrecision.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %.not5.2.i.i.i.i = icmp samesign ult i32 %1, 256
  %i.g = select i1 %.not5.2.i.i.i.i, i8 1, i8 2
  br label %BytePrecision.exit.i.i.i

BytePrecision.exit.i.i.i:                         ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i = phi i8 [ 4, %bb.e ], [ %i.g, %bb.g ], [ 3, %bb.f ] ; 7 uses
  br i1 %.not.i, label %.split.us.critedge.i.i.i, label %iter.check

iter.check:                                       ; preds = %BytePrecision.exit.i.i.i
  %i.h = or disjoint i8 %.0.lcssa.i.i.i.i, -128
  store i8 %i.h, ptr %i.f, align 1, !tbaa !15
  %i.i = zext nneg i8 %.0.lcssa.i.i.i.i to i64    ; 2 uses
  %min.iters.check = icmp samesign ult i8 %.0.lcssa.i.i.i.i, 4
  br i1 %min.iters.check, label %.split.i.i.i.preheader, label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %iter.check
  %broadcast.splatinsert11 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i, i64 0
  %broadcast.splat12 = shufflevector <4 x i8> %broadcast.splatinsert11, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.j = add nsw <4 x i8> %broadcast.splat12, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert9 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat10 = shufflevector <4 x i32> %broadcast.splatinsert9, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec8 = and i64 %i.i, 4                       ; 3 uses
  %i.k = trunc nuw nsw i64 %n.vec8 to i8
  %i.l = sub nsw i8 %.0.lcssa.i.i.i.i, %i.k
  %i.m = or disjoint i64 %n.vec8, 1               ; 2 uses
  %i.n = zext <4 x i8> %i.j to <4 x i32>
  %i.o = shl nuw nsw <4 x i32> %i.n, splat (i32 3)
  %i.p = add nsw <4 x i32> %i.o, splat (i32 -8)
  %i.q = lshr <4 x i32> %broadcast.splat10, %i.p
  %i.r = trunc <4 x i32> %i.q to <4 x i8>
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store <4 x i8> %i.r, ptr %i.s, align 1, !tbaa !15
  %cmp.n17 = icmp eq i64 %n.vec8, %i.i
  br i1 %cmp.n17, label %.loopexit.loopexit30.i.i.i, label %.split.i.i.i.preheader

.split.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.vector.body
  %indvars.iv.i.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.m, %vec.epilog.vector.body ]
  %.029.i.i.i.ph = phi i8 [ %.0.lcssa.i.i.i.i, %iter.check ], [ %i.l, %vec.epilog.vector.body ]
  br label %.split.i.i.i

.split.us.critedge.i.i.i:                         ; preds = %BytePrecision.exit.i.i.i
  %narrow.i.i.i = add nuw nsw i8 %.0.lcssa.i.i.i.i, 1
  %i.t = zext nneg i8 %narrow.i.i.i to i32
  br label %SetHeader.exit

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader, %.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.split.i.i.i ], [ %indvars.iv.i.i.i.ph, %.split.i.i.i.preheader ] ; 2 uses
  %.029.i.i.i = phi i8 [ %i.aa, %.split.i.i.i ], [ %.029.i.i.i.ph, %.split.i.i.i.preheader ] ; 2 uses
  %i.u = zext i8 %.029.i.i.i to i32
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = add nsw i32 %i.v, -8
  %i.x = lshr i32 %1, %i.w
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i.i.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !15
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aa = add nsw i8 %.029.i.i.i, -1              ; 2 uses
  %.not26.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not26.i.i.i, label %.loopexit.loopexit30.i.i.i, label %.split.i.i.i, !llvm.loop !176

.loopexit.loopexit30.i.i.i:                       ; preds = %.split.i.i.i, %vec.epilog.vector.body
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %i.m, %vec.epilog.vector.body ], [ %indvars.iv.next.i.i.i, %.split.i.i.i ]
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %SetHeader.exit

SetHeader.exit:                                   ; preds = %bb.b, %bb.c, %bb.d, %.split.us.critedge.i.i.i, %.loopexit.loopexit30.i.i.i
  %.0.i.i = phi i32 [ %i.ab, %.loopexit.loopexit30.i.i.i ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.d ], [ %i.t, %.split.us.critedge.i.i.i ]
  %i.ac = add i32 %.0.i.i, 1
  ret i32 %i.ac
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 2, 1) i32 @SetSequence(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %SetHeader.exit, label %bb.d

.thread.i:                                        ; preds = %bb.a
  store i8 48, ptr %1, align 1, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = icmp ult i32 %0, 128
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread.i
  %i.d = trunc nuw nsw i32 %0 to i8
  store i8 %i.d, ptr %i.b, align 1, !tbaa !15
  br label %SetHeader.exit

bb.d:                                             ; preds = %.thread.i, %bb.b
  %i.e = phi ptr [ %i.b, %.thread.i ], [ null, %bb.b ] ; 3 uses
  %.not5.i.i.i.i = icmp ult i32 %0, 16777216
  br i1 %.not5.i.i.i.i, label %bb.e, label %BytePrecision.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %.not5.1.i.i.i.i = icmp samesign ult i32 %0, 65536
  br i1 %.not5.1.i.i.i.i, label %bb.f, label %BytePrecision.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %.not5.2.i.i.i.i = icmp samesign ult i32 %0, 256
  %i.f = select i1 %.not5.2.i.i.i.i, i8 1, i8 2
  br label %BytePrecision.exit.i.i.i

BytePrecision.exit.i.i.i:                         ; preds = %bb.f, %bb.e, %bb.d
  %.0.lcssa.i.i.i.i = phi i8 [ 4, %bb.d ], [ %i.f, %bb.f ], [ 3, %bb.e ] ; 7 uses
  br i1 %.not.i, label %.split.us.critedge.i.i.i, label %iter.check

iter.check:                                       ; preds = %BytePrecision.exit.i.i.i
  %i.g = or disjoint i8 %.0.lcssa.i.i.i.i, -128
  store i8 %i.g, ptr %i.e, align 1, !tbaa !15
  %i.h = zext nneg i8 %.0.lcssa.i.i.i.i to i64    ; 2 uses
  %min.iters.check = icmp samesign ult i8 %.0.lcssa.i.i.i.i, 4
  br i1 %min.iters.check, label %.split.i.i.i.preheader, label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %iter.check
  %broadcast.splatinsert9 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i, i64 0
  %broadcast.splat10 = shufflevector <4 x i8> %broadcast.splatinsert9, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.i = add nsw <4 x i8> %broadcast.splat10, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert7 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat8 = shufflevector <4 x i32> %broadcast.splatinsert7, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec6 = and i64 %i.h, 4                       ; 3 uses
  %i.j = trunc nuw nsw i64 %n.vec6 to i8
  %i.k = sub nsw i8 %.0.lcssa.i.i.i.i, %i.j
  %i.l = or disjoint i64 %n.vec6, 1               ; 2 uses
  %i.m = zext <4 x i8> %i.i to <4 x i32>
  %i.n = shl nuw nsw <4 x i32> %i.m, splat (i32 3)
  %i.o = add nsw <4 x i32> %i.n, splat (i32 -8)
  %i.p = lshr <4 x i32> %broadcast.splat8, %i.o
  %i.q = trunc <4 x i32> %i.p to <4 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store <4 x i8> %i.q, ptr %i.r, align 1, !tbaa !15
  %cmp.n15 = icmp eq i64 %n.vec6, %i.h
  br i1 %cmp.n15, label %.loopexit.loopexit30.i.i.i, label %.split.i.i.i.preheader

.split.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.vector.body
  %indvars.iv.i.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.l, %vec.epilog.vector.body ]
  %.029.i.i.i.ph = phi i8 [ %.0.lcssa.i.i.i.i, %iter.check ], [ %i.k, %vec.epilog.vector.body ]
  br label %.split.i.i.i

.split.us.critedge.i.i.i:                         ; preds = %BytePrecision.exit.i.i.i
  %narrow.i.i.i = add nuw nsw i8 %.0.lcssa.i.i.i.i, 1
  %i.s = zext nneg i8 %narrow.i.i.i to i32
  br label %SetHeader.exit

end_hunk_0
begin_hunk_1_@wc_GetKeyOID:bb.a
bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !26
  %i.d = tail call ptr @wolfSSL_Malloc(i64 noundef 8368) #24 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @wc_InitRsaKey(ptr noundef nonnull %i.d, ptr noundef %5) #24
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %wc_RsaPrivateKeyDecode.exit, label %bb.f

wc_RsaPrivateKeyDecode.exit:                      ; preds = %bb.c
  %i.g = call fastcc i32 @_RsaPrivateKeyDecode(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef null, i32 noundef %1)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %wc_RsaPrivateKeyDecode.exit
  store i32 2025223203, ptr %4, align 4, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %wc_RsaPrivateKeyDecode.exit, %bb.d
  %i.i = call i32 @wc_FreeRsaKey(ptr noundef nonnull %i.d) #24 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  call void @wolfSSL_Free(ptr noundef nonnull %i.d) #24
  %i.j = load i32, ptr %4, align 4, !tbaa !26
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.l = call ptr @wolfSSL_Malloc(i64 noundef 4208) #24 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.n = call i32 @wc_ecc_init_ex(ptr noundef nonnull %i.l, ptr noundef %5, i32 noundef -2) #24
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.p = call i32 @wc_EccPrivateKeyDecode(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, i32 noundef %1)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i32 826901527, ptr %4, align 4, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 76
  %i.u = load i32, ptr %i.t, align 4, !tbaa !57
  %i.v = call i32 @wc_ecc_get_oid(i32 noundef %i.u, ptr noundef %2, ptr noundef %3) #24
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @wc_ecc_free(ptr noundef nonnull %i.l) #24 ; 0 uses
  call void @wolfSSL_Free(ptr noundef nonnull %i.l) #24
  br label %.critedge

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.y = call i32 @wc_ecc_free(ptr noundef nonnull %i.l) #24 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l
  call void @wolfSSL_Free(ptr noundef nonnull %i.l) #24
  %.pre = load i32, ptr %4, align 4, !tbaa !26
  %i.z = icmp eq i32 %.pre, 0
  %i.aa = select i1 %i.z, i32 -173, i32 1
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.m, %bb.g, %bb.k, %bb.b, %bb.a
  %.2 = phi i32 [ -125, %bb.b ], [ -173, %bb.k ], [ -173, %bb.a ], [ -125, %bb.g ], [ %i.aa, %bb.m ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.2
}

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #4

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @UnTraditionalEnc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @TraditionalEnc_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef 0, ptr noundef %11, ptr noundef %12)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @TraditionalEnc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @TraditionalEnc_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef 0, ptr noundef %12, ptr noundef %13)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_EncryptPKCS8Key_ex(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13, ptr nofree readnone captures(none) %14) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %3, null
  %or.cond.not157 = and i1 %i.c, %i.d
  %i.e = icmp ne ptr %4, null
  %or.cond3.not = and i1 %or.cond.not157, %i.e
  br i1 %or.cond3.not, label %bb.b, label %.thread758

bb.b:                                             ; preds = %bb.a
  switch i32 %6, label %bb.c [
    i32 1, label %.thread758
    i32 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %.thread758

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %7, 13
  br i1 %i.f, label %bb.e, label %.thread758

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq ptr %9, null
  %i.h = icmp eq i32 %10, 0
  %or.cond5 = or i1 %i.g, %i.h                    ; 2 uses
  %spec.select161 = select i1 %or.cond5, i32 8, i32 %10 ; 11 uses
  switch i32 %8, label %.thread758 [
    i32 2142468856, label %.sink.split.i
    i32 2142468816, label %GetAlgoV2.exit.thread
  ]

.sink.split.i:                                    ; preds = %bb.e
  br label %GetAlgoV2.exit.thread

GetAlgoV2.exit.thread:                            ; preds = %bb.e, %.sink.split.i
  %.0495540 = phi ptr [ @blkAes256CbcOid, %bb.e ], [ @blkAes128CbcOid, %.sink.split.i ]
  %.0499536 = phi i32 [ 4, %bb.e ], [ 5, %.sink.split.i ]
  %i.i = sub i32 0, %1
  %i.j = and i32 %i.i, 15                         ; 4 uses
  %i.k = icmp eq i32 %11, 0                       ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %GetAlgoV2.exit.thread
  %.not5.i.i = icmp ult i32 %11, 16777216
  br i1 %.not5.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not5.1.i.i = icmp samesign ult i32 %11, 65536
  br i1 %.not5.1.i.i, label %BytePrecision.exit.i, label %bb.h

BytePrecision.exit.i:                             ; preds = %bb.g
  %.not5.2.i.i = icmp samesign ult i32 %11, 256
  %spec.select.i.i = select i1 %.not5.2.i.i, i32 1, i32 2
  br label %bb.h

bb.h:                                             ; preds = %BytePrecision.exit.i, %bb.g, %bb.f, %GetAlgoV2.exit.thread
  %.03744.i = phi i32 [ %spec.select.i.i, %BytePrecision.exit.i ], [ 3, %bb.g ], [ 4, %bb.f ], [ 1, %GetAlgoV2.exit.thread ] ; 2 uses
  %i.l = shl nuw nsw i32 %.03744.i, 3
  %i.m = add nsw i32 %i.l, -1
  %i.n = lshr i32 %11, %i.m
  %.not.i.not = icmp eq i32 %i.n, 0
  %spec.select = select i1 %.not.i.not, i32 2, i32 3
  %i.o = add nuw nsw i32 %spec.select, %.03744.i
  %i.p = add i32 %spec.select161, 2
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %i.r = icmp sgt i32 %12, 0                      ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i32 %12, -206212061              ; 2 uses
  %i.t = tail call i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 8) ; 2 uses
  %i.u = icmp ult i32 %i.t, 4
  br i1 %i.u, label %switch.lookup, label %OidFromId.exit164

switch.lookup:                                    ; preds = %bb.i
  %i.v = zext nneg i32 %i.t to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.EncryptContent, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %OidFromId.exit164

OidFromId.exit164:                                ; preds = %switch.lookup, %bb.i
  %.2485 = phi i32 [ 0, %bb.i ], [ 8, %switch.lookup ] ; 2 uses
  %i.w = phi ptr [ null, %bb.i ], [ %switch.load, %switch.lookup ]
  %i.x = add i32 %i.q, 4
  %i.y = add i32 %i.x, %.2485
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %OidFromId.exit164
  %.0 = phi i32 [ %.2485, %OidFromId.exit164 ], [ 0, %bb.h ] ; 3 uses
  %.1135 = phi i32 [ %i.y, %OidFromId.exit164 ], [ %i.q, %bb.h ] ; 12 uses
  %.0127 = phi ptr [ %i.w, %OidFromId.exit164 ], [ null, %bb.h ]
  %i.z = add i32 %.1135, 13                       ; 7 uses
  %i.aa = add i32 %.1135, 59                      ; 8 uses
  %i.ab = call i32 @wc_RNG_GenerateBlock(ptr noundef %13, ptr noundef nonnull %i.b, i32 noundef 16) #24 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %.thread758

bb.k:                                             ; preds = %bb.j
  %i.ad = add i32 %i.j, %1                        ; 13 uses
  %i.ae = icmp ult i32 %i.ad, 128
  br i1 %i.ae, label %SetLength.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not5.i.i165 = icmp ult i32 %i.ad, 16777216
  br i1 %.not5.i.i165, label %SetLength.exit.thread, label %SetLength.exit.thread.thread

SetLength.exit.thread:                            ; preds = %bb.l
  %.not5.1.i.i167 = icmp samesign ult i32 %i.ad, 65536
  %.not5.2.i.i168 = icmp samesign ult i32 %i.ad, 256
  %i.af = select i1 %.not5.2.i.i168, i32 2, i32 3
  %.0.lcssa.i.i = select i1 %.not5.1.i.i167, i32 %i.af, i32 4
  %i.ag = add nuw nsw i32 %i.ad, 3
  %i.ah = add i32 %i.ag, %i.aa
  %i.ai = add i32 %i.ah, %.0.lcssa.i.i            ; 3 uses
  %.not159677 = icmp eq ptr %2, null
  br i1 %.not159677, label %bb.m, label %bb.q

SetLength.exit:                                   ; preds = %bb.k
  %i.aj = add nuw nsw i32 %i.ad, 63
  %i.ak = add i32 %i.aj, %.1135                   ; 2 uses
  %.not159 = icmp eq ptr %2, null
  br i1 %.not159, label %bb.m, label %.thread.i.i178

SetLength.exit.thread.thread:                     ; preds = %bb.l
  %op.rdx = add i32 %.1135, 67
  %op.rdx1067 = add i32 %op.rdx, %i.ad            ; 2 uses
  %.not159677791 = icmp eq ptr %2, null
  br i1 %.not159677791, label %bb.m, label %iter.check

bb.m:                                             ; preds = %SetLength.exit.thread.thread, %SetLength.exit.thread, %SetLength.exit
  %i.al = phi i32 [ %i.ai, %SetLength.exit.thread ], [ %i.ak, %SetLength.exit ], [ %op.rdx1067, %SetLength.exit.thread.thread ] ; 5 uses
  %i.am = icmp ult i32 %i.al, 128
  br i1 %i.am, label %BytePrecision.exit.i170, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not5.i.i169 = icmp ult i32 %i.al, 16777216
  br i1 %.not5.i.i169, label %bb.o, label %BytePrecision.exit.i170

bb.o:                                             ; preds = %bb.n
  %.not5.1.i.i174 = icmp samesign ult i32 %i.al, 65536
  br i1 %.not5.1.i.i174, label %bb.p, label %BytePrecision.exit.i170

bb.p:                                             ; preds = %bb.o
  %.not5.2.i.i175 = icmp samesign ult i32 %i.al, 256
  %i.an = select i1 %.not5.2.i.i175, i32 3, i32 4
  br label %BytePrecision.exit.i170

bb.q:                                             ; preds = %SetLength.exit.thread
  %.not5.1.i.i.i.i.i = icmp samesign ult i32 %i.ad, 65536
  br i1 %.not5.1.i.i.i.i.i, label %bb.r, label %iter.check

bb.r:                                             ; preds = %bb.q
  %.not5.2.i.i.i.i.i = icmp samesign ult i32 %i.ad, 256
  %i.ao = select i1 %.not5.2.i.i.i.i.i, i8 1, i8 2
  br label %iter.check

iter.check:                                       ; preds = %SetLength.exit.thread.thread, %bb.q, %bb.r
  %i.ap = phi i32 [ %i.ai, %bb.q ], [ %i.ai, %bb.r ], [ %op.rdx1067, %SetLength.exit.thread.thread ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i8 [ 3, %bb.q ], [ %i.ao, %bb.r ], [ 4, %SetLength.exit.thread.thread ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ar = zext nneg i8 %.0.lcssa.i.i.i.i.i to i64 ; 2 uses
  %min.iters.check = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i, 4
  br i1 %min.iters.check, label %.split.i.i.i.i.preheader, label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %iter.check
  %broadcast.splatinsert799 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i, i64 0
  %broadcast.splat800 = shufflevector <4 x i8> %broadcast.splatinsert799, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.as = add nsw <4 x i8> %broadcast.splat800, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert797 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat798 = shufflevector <4 x i32> %broadcast.splatinsert797, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec796 = and i64 %i.ar, 4                    ; 3 uses
  %i.at = trunc nuw nsw i64 %n.vec796 to i8
  %i.au = sub nsw i8 %.0.lcssa.i.i.i.i.i, %i.at
  %i.av = or disjoint i64 %n.vec796, 1
  %i.aw = zext <4 x i8> %i.as to <4 x i32>
  %i.ax = shl nuw nsw <4 x i32> %i.aw, splat (i32 3)
  %i.ay = add nsw <4 x i32> %i.ax, splat (i32 -8)
  %i.az = lshr <4 x i32> %broadcast.splat798, %i.ay
  %i.ba = trunc <4 x i32> %i.az to <4 x i8>
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 2
  store <4 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !15
  %cmp.n805 = icmp eq i64 %n.vec796, %i.ar
  br i1 %cmp.n805, label %.thread.i.i178, label %.split.i.i.i.i.preheader

.split.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.vector.body
  %indvars.iv.i.i.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.av, %vec.epilog.vector.body ]
  %.029.i.i.i.i.ph = phi i8 [ %.0.lcssa.i.i.i.i.i, %iter.check ], [ %i.au, %vec.epilog.vector.body ]
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.split.i.i.i.i.preheader, %.split.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.split.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.split.i.i.i.i.preheader ] ; 2 uses
  %.029.i.i.i.i = phi i8 [ %i.bi, %.split.i.i.i.i ], [ %.029.i.i.i.i.ph, %.split.i.i.i.i.preheader ] ; 2 uses
  %i.bc = zext i8 %.029.i.i.i.i to i32
  %i.bd = shl nuw nsw i32 %i.bc, 3
  %i.be = add nsw i32 %i.bd, -8
  %i.bf = lshr i32 %i.ad, %i.be
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i.i.i.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %i.bi = add nsw i8 %.029.i.i.i.i, -1            ; 2 uses
  %.not26.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not26.i.i.i.i, label %.thread.i.i178, label %.split.i.i.i.i, !llvm.loop !178

.thread.i.i178:                                   ; preds = %.split.i.i.i.i, %vec.epilog.vector.body, %SetLength.exit
  %i.bj = phi i32 [ %i.ak, %SetLength.exit ], [ %i.ap, %vec.epilog.vector.body ], [ %i.ap, %.split.i.i.i.i ] ; 8 uses
  store i8 48, ptr %2, align 1, !tbaa !15
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.bk = icmp ult i32 %i.bj, 128
  br i1 %i.bk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread.i.i178
  %i.bl = trunc nuw nsw i32 %i.bj to i8
  store i8 %i.bl, ptr %15, align 1, !tbaa !15
  br label %SetSequence.exit

bb.t:                                             ; preds = %.thread.i.i178
  %.not5.i.i.i.i.i179 = icmp ult i32 %i.bj, 16777216
  br i1 %.not5.i.i.i.i.i179, label %bb.u, label %iter.check826

bb.u:                                             ; preds = %bb.t
  %.not5.1.i.i.i.i.i191 = icmp samesign ult i32 %i.bj, 65536
  br i1 %.not5.1.i.i.i.i.i191, label %bb.v, label %iter.check826

bb.v:                                             ; preds = %bb.u
  %.not5.2.i.i.i.i.i192 = icmp samesign ult i32 %i.bj, 256
  %i.bm = select i1 %.not5.2.i.i.i.i.i192, i8 1, i8 2
  br label %iter.check826

iter.check826:                                    ; preds = %bb.t, %bb.u, %bb.v
  %.0.lcssa.i.i.i.i.i181 = phi i8 [ 4, %bb.t ], [ %i.bm, %bb.v ], [ 3, %bb.u ] ; 6 uses
  %i.bn = or disjoint i8 %.0.lcssa.i.i.i.i.i181, -128
  store i8 %i.bn, ptr %15, align 1, !tbaa !15
  %i.bo = zext nneg i8 %.0.lcssa.i.i.i.i.i181 to i64 ; 2 uses
  %min.iters.check808 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i181, 4
  br i1 %min.iters.check808, label %.split.i.i.i.i182.preheader, label %vec.epilog.vector.body836

vec.epilog.vector.body836:                        ; preds = %iter.check826
  %broadcast.splatinsert834 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i181, i64 0
  %broadcast.splat835 = shufflevector <4 x i8> %broadcast.splatinsert834, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bp = add nsw <4 x i8> %broadcast.splat835, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert832 = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat833 = shufflevector <4 x i32> %broadcast.splatinsert832, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec831 = and i64 %i.bo, 4                    ; 3 uses
  %i.bq = trunc nuw nsw i64 %n.vec831 to i8
  %i.br = sub nsw i8 %.0.lcssa.i.i.i.i.i181, %i.bq
  %i.bs = or disjoint i64 %n.vec831, 1            ; 2 uses
  %i.bt = zext <4 x i8> %i.bp to <4 x i32>
  %i.bu = shl nuw nsw <4 x i32> %i.bt, splat (i32 3)
  %i.bv = add nsw <4 x i32> %i.bu, splat (i32 -8)
  %i.bw = lshr <4 x i32> %broadcast.splat833, %i.bv
  %i.bx = trunc <4 x i32> %i.bw to <4 x i8>
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 2
  store <4 x i8> %i.bx, ptr %i.by, align 1, !tbaa !15
  %cmp.n842 = icmp eq i64 %n.vec831, %i.bo
  br i1 %cmp.n842, label %.loopexit.loopexit30.i.i.i.i187, label %.split.i.i.i.i182.preheader

.split.i.i.i.i182.preheader:                      ; preds = %iter.check826, %vec.epilog.vector.body836
  %indvars.iv.i.i.i.i183.ph = phi i64 [ 1, %iter.check826 ], [ %i.bs, %vec.epilog.vector.body836 ]
  %.029.i.i.i.i184.ph = phi i8 [ %.0.lcssa.i.i.i.i.i181, %iter.check826 ], [ %i.br, %vec.epilog.vector.body836 ]
  br label %.split.i.i.i.i182

.split.i.i.i.i182:                                ; preds = %.split.i.i.i.i182.preheader, %.split.i.i.i.i182
  %indvars.iv.i.i.i.i183 = phi i64 [ %indvars.iv.next.i.i.i.i185, %.split.i.i.i.i182 ], [ %indvars.iv.i.i.i.i183.ph, %.split.i.i.i.i182.preheader ] ; 2 uses
  %.029.i.i.i.i184 = phi i8 [ %i.cf, %.split.i.i.i.i182 ], [ %.029.i.i.i.i184.ph, %.split.i.i.i.i182.preheader ] ; 2 uses
  %i.bz = zext i8 %.029.i.i.i.i184 to i32
  %i.ca = shl nuw nsw i32 %i.bz, 3
  %i.cb = add nsw i32 %i.ca, -8
  %i.cc = lshr i32 %i.bj, %i.cb
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 %indvars.iv.i.i.i.i183
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i185 = add nuw nsw i64 %indvars.iv.i.i.i.i183, 1 ; 2 uses
  %i.cf = add nsw i8 %.029.i.i.i.i184, -1         ; 2 uses
  %.not26.i.i.i.i186 = icmp eq i8 %i.cf, 0
  br i1 %.not26.i.i.i.i186, label %.loopexit.loopexit30.i.i.i.i187, label %.split.i.i.i.i182, !llvm.loop !179

.loopexit.loopexit30.i.i.i.i187:                  ; preds = %.split.i.i.i.i182, %vec.epilog.vector.body836
  %indvars.iv.next.i.i.i.i185.lcssa = phi i64 [ %i.bs, %vec.epilog.vector.body836 ], [ %indvars.iv.next.i.i.i.i185, %.split.i.i.i.i182 ]
  %i.cg = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i185.lcssa to i32
  %i.ch = add i32 %i.cg, 1
  br label %SetSequence.exit

SetSequence.exit:                                 ; preds = %bb.s, %.loopexit.loopexit30.i.i.i.i187
  %.0.i.i.i188 = phi i32 [ %i.ch, %.loopexit.loopexit30.i.i.i.i187 ], [ 2, %bb.s ] ; 3 uses
  %i.ci = sub i32 %i.bj, %i.ad
  %i.cj = add i32 %i.ci, %.0.i.i.i188
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  %i.cm = zext i32 %1 to i64                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull align 1 %0, i64 %i.cm, i1 false)
  %.not158 = icmp eq i32 %i.j, 0
  br i1 %.not158, label %bb.x, label %bb.w

bb.w:                                             ; preds = %SetSequence.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  %i.co = trunc nuw nsw i32 %i.j to i8
  %i.cp = zext nneg i32 %i.j to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cn, i8 %i.co, i64 %i.cp, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %SetSequence.exit
  %.0143 = phi i32 [ %i.ad, %bb.w ], [ %1, %SetSequence.exit ] ; 9 uses
  br i1 %or.cond5, label %bb.y, label %.thread729

BytePrecision.exit.i170:                          ; preds = %bb.n, %bb.o, %bb.p, %bb.m
  %.1.i173 = phi i32 [ 2, %bb.m ], [ 6, %bb.n ], [ %i.an, %bb.p ], [ 5, %bb.o ]
  %i.cq = add i32 %.1.i173, %i.al
  store i32 %i.cq, ptr %3, align 4, !tbaa !26
  br label %.thread758

bb.y:                                             ; preds = %bb.x
  %i.cr = call i32 @wc_RNG_GenerateBlock(ptr noundef %13, ptr noundef nonnull %i.a, i32 noundef 8) #24 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.thread729, label %.thread758

.thread729:                                       ; preds = %bb.x, %bb.y
  %.1147.ph732 = phi ptr [ %i.a, %bb.y ], [ %9, %bb.x ] ; 2 uses
  %i.ct = call i32 @wc_CryptKey(ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull %.1147.ph732, i32 noundef %spec.select161, i32 noundef %11, i32 noundef %.0499536, ptr noundef nonnull %i.cl, i32 noundef %.0143, i32 noundef 6, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef %12) #24 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %.thread.i.i212, label %.thread758

.thread.i.i212:                                   ; preds = %.thread729
  %i.cv = zext i32 %.0.i.i.i188 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 3 uses
  store i8 48, ptr %i.cw, align 1, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 3 uses
  %i.cy = icmp ult i32 %i.aa, 128
  br i1 %i.cy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread.i.i212
  %i.cz = trunc nuw nsw i32 %i.aa to i8
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !15
  br label %SetSequence.exit227

bb.aa:                                            ; preds = %.thread.i.i212
  %.not5.i.i.i.i.i213 = icmp ult i32 %i.aa, 16777216
  br i1 %.not5.i.i.i.i.i213, label %bb.ab, label %iter.check863

bb.ab:                                            ; preds = %bb.aa
  %.not5.1.i.i.i.i.i225 = icmp samesign ult i32 %i.aa, 65536
  br i1 %.not5.1.i.i.i.i.i225, label %bb.ac, label %iter.check863

bb.ac:                                            ; preds = %bb.ab
  %.not5.2.i.i.i.i.i226 = icmp samesign ult i32 %i.aa, 256
  %i.da = select i1 %.not5.2.i.i.i.i.i226, i8 1, i8 2
  br label %iter.check863

iter.check863:                                    ; preds = %bb.aa, %bb.ab, %bb.ac
  %.0.lcssa.i.i.i.i.i215 = phi i8 [ 4, %bb.aa ], [ %i.da, %bb.ac ], [ 3, %bb.ab ] ; 6 uses
  %i.db = or disjoint i8 %.0.lcssa.i.i.i.i.i215, -128
  store i8 %i.db, ptr %i.cx, align 1, !tbaa !15
  %i.dc = zext nneg i8 %.0.lcssa.i.i.i.i.i215 to i64 ; 2 uses
  %min.iters.check845 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i215, 4
  br i1 %min.iters.check845, label %.split.i.i.i.i216.preheader, label %vec.epilog.vector.body873

vec.epilog.vector.body873:                        ; preds = %iter.check863
  %broadcast.splatinsert871 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i215, i64 0
  %broadcast.splat872 = shufflevector <4 x i8> %broadcast.splatinsert871, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dd = add nsw <4 x i8> %broadcast.splat872, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert869 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat870 = shufflevector <4 x i32> %broadcast.splatinsert869, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec868 = and i64 %i.dc, 4                    ; 3 uses
  %i.de = trunc nuw nsw i64 %n.vec868 to i8
  %i.df = sub nsw i8 %.0.lcssa.i.i.i.i.i215, %i.de
  %i.dg = or disjoint i64 %n.vec868, 1            ; 2 uses
  %i.dh = zext <4 x i8> %i.dd to <4 x i32>
  %i.di = shl nuw nsw <4 x i32> %i.dh, splat (i32 3)
  %i.dj = add nsw <4 x i32> %i.di, splat (i32 -8)
  %i.dk = lshr <4 x i32> %broadcast.splat870, %i.dj
  %i.dl = trunc <4 x i32> %i.dk to <4 x i8>
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store <4 x i8> %i.dl, ptr %i.dm, align 1, !tbaa !15
  %cmp.n879 = icmp eq i64 %n.vec868, %i.dc
  br i1 %cmp.n879, label %.loopexit.loopexit30.i.i.i.i221, label %.split.i.i.i.i216.preheader

.split.i.i.i.i216.preheader:                      ; preds = %iter.check863, %vec.epilog.vector.body873
  %indvars.iv.i.i.i.i217.ph = phi i64 [ 1, %iter.check863 ], [ %i.dg, %vec.epilog.vector.body873 ]
  %.029.i.i.i.i218.ph = phi i8 [ %.0.lcssa.i.i.i.i.i215, %iter.check863 ], [ %i.df, %vec.epilog.vector.body873 ]
  br label %.split.i.i.i.i216

.split.i.i.i.i216:                                ; preds = %.split.i.i.i.i216.preheader, %.split.i.i.i.i216
  %indvars.iv.i.i.i.i217 = phi i64 [ %indvars.iv.next.i.i.i.i219, %.split.i.i.i.i216 ], [ %indvars.iv.i.i.i.i217.ph, %.split.i.i.i.i216.preheader ] ; 2 uses
  %.029.i.i.i.i218 = phi i8 [ %i.dt, %.split.i.i.i.i216 ], [ %.029.i.i.i.i218.ph, %.split.i.i.i.i216.preheader ] ; 2 uses
  %i.dn = zext i8 %.029.i.i.i.i218 to i32
  %i.do = shl nuw nsw i32 %i.dn, 3
  %i.dp = add nsw i32 %i.do, -8
  %i.dq = lshr i32 %i.aa, %i.dp
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.i.i.i.i217
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i219 = add nuw nsw i64 %indvars.iv.i.i.i.i217, 1 ; 2 uses
  %i.dt = add nsw i8 %.029.i.i.i.i218, -1         ; 2 uses
  %.not26.i.i.i.i220 = icmp eq i8 %i.dt, 0
  br i1 %.not26.i.i.i.i220, label %.loopexit.loopexit30.i.i.i.i221, label %.split.i.i.i.i216, !llvm.loop !180

.loopexit.loopexit30.i.i.i.i221:                  ; preds = %.split.i.i.i.i216, %vec.epilog.vector.body873
  %indvars.iv.next.i.i.i.i219.lcssa = phi i64 [ %i.dg, %vec.epilog.vector.body873 ], [ %indvars.iv.next.i.i.i.i219, %.split.i.i.i.i216 ]
  %i.du = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i219.lcssa to i32
  %i.dv = add i32 %i.du, 1
  br label %SetSequence.exit227

SetSequence.exit227:                              ; preds = %bb.z, %.loopexit.loopexit30.i.i.i.i221
  %.0.i.i.i222 = phi i32 [ %i.dv, %.loopexit.loopexit30.i.i.i.i221 ], [ 2, %bb.z ]
  %i.dw = add i32 %.0.i.i.i222, %.0.i.i.i188      ; 3 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 %i.dx ; 2 uses
  store i8 6, ptr %i.dy, align 1, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store i8 9, ptr %i.dz, align 1, !tbaa !15
  %i.ea = add i32 %i.dw, 2
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ec, ptr noundef nonnull align 1 dereferenceable(9) @pbes2, i64 9, i1 false)
  %i.ed = add i32 %i.dw, 11                       ; 2 uses
  %i.ee = add i32 %.1135, 46                      ; 7 uses
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ef ; 3 uses
  store i8 48, ptr %i.eg, align 1, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 3 uses
  %i.ei = icmp ult i32 %i.ee, 128
  br i1 %i.ei, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %SetSequence.exit227
  %i.ej = trunc nuw nsw i32 %i.ee to i8
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !15
  br label %SetSequence.exit261

bb.ae:                                            ; preds = %SetSequence.exit227
  %.not5.i.i.i.i.i247 = icmp ult i32 %i.ee, 16777216
  br i1 %.not5.i.i.i.i.i247, label %bb.af, label %iter.check900

bb.af:                                            ; preds = %bb.ae
  %.not5.1.i.i.i.i.i259 = icmp samesign ult i32 %i.ee, 65536
  br i1 %.not5.1.i.i.i.i.i259, label %bb.ag, label %iter.check900

bb.ag:                                            ; preds = %bb.af
  %.not5.2.i.i.i.i.i260 = icmp samesign ult i32 %i.ee, 256
  %i.ek = select i1 %.not5.2.i.i.i.i.i260, i8 1, i8 2
  br label %iter.check900

iter.check900:                                    ; preds = %bb.ae, %bb.af, %bb.ag
  %.0.lcssa.i.i.i.i.i249 = phi i8 [ 4, %bb.ae ], [ %i.ek, %bb.ag ], [ 3, %bb.af ] ; 6 uses
  %i.el = or disjoint i8 %.0.lcssa.i.i.i.i.i249, -128
  store i8 %i.el, ptr %i.eh, align 1, !tbaa !15
  %i.em = zext nneg i8 %.0.lcssa.i.i.i.i.i249 to i64 ; 2 uses
  %min.iters.check882 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i249, 4
  br i1 %min.iters.check882, label %.split.i.i.i.i250.preheader, label %vec.epilog.vector.body910

vec.epilog.vector.body910:                        ; preds = %iter.check900
  %broadcast.splatinsert908 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i249, i64 0
  %broadcast.splat909 = shufflevector <4 x i8> %broadcast.splatinsert908, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.en = add nsw <4 x i8> %broadcast.splat909, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert906 = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat907 = shufflevector <4 x i32> %broadcast.splatinsert906, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec905 = and i64 %i.em, 4                    ; 3 uses
  %i.eo = trunc nuw nsw i64 %n.vec905 to i8
  %i.ep = sub nsw i8 %.0.lcssa.i.i.i.i.i249, %i.eo
  %i.eq = or disjoint i64 %n.vec905, 1            ; 2 uses
  %i.er = zext <4 x i8> %i.en to <4 x i32>
  %i.es = shl nuw nsw <4 x i32> %i.er, splat (i32 3)
  %i.et = add nsw <4 x i32> %i.es, splat (i32 -8)
  %i.eu = lshr <4 x i32> %broadcast.splat907, %i.et
  %i.ev = trunc <4 x i32> %i.eu to <4 x i8>
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store <4 x i8> %i.ev, ptr %i.ew, align 1, !tbaa !15
  %cmp.n916 = icmp eq i64 %n.vec905, %i.em
  br i1 %cmp.n916, label %.loopexit.loopexit30.i.i.i.i255, label %.split.i.i.i.i250.preheader

.split.i.i.i.i250.preheader:                      ; preds = %iter.check900, %vec.epilog.vector.body910
  %indvars.iv.i.i.i.i251.ph = phi i64 [ 1, %iter.check900 ], [ %i.eq, %vec.epilog.vector.body910 ]
end_hunk_1
