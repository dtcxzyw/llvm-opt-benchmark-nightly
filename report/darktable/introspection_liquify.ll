inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@button_released:bb.a
  %i.en = insertelement <2 x float> %.sroa.0146.0.vec.insert, float %i.bb, i64 1
  %i.eo = fadd reassoc nsz arcp contract afn <2 x float> %i.dd, %i.en
  %i.ep = load ptr, ptr %i.ci, align 8, !tbaa !218
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.er = fsub reassoc nsz arcp contract afn <2 x float> %i.eo, %i.de
  store <2 x float> %i.er, ptr %i.eq, align 4
  %i.es = trunc i32 %i.cz to i8
  %i.et = load ptr, ptr %i.ci, align 8, !tbaa !218 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i8 %i.es, ptr %i.eu, align 4, !tbaa !170
  %i.ev = load i32, ptr %i.g, align 8, !tbaa !239
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = zext nneg i32 %i.cz to i64
  %i.ey = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 18
  store i8 %i.ew, ptr %i.ez, align 2, !tbaa !213
  store i32 12, ptr %i.cn, align 8, !tbaa !232
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.et, ptr %i.fa, align 8, !tbaa !208
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store i32 0, ptr %i.fb, align 4, !tbaa !241
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ci, align 8, !tbaa !218
  br label %.critedge328

bb.r:                                             ; preds = %bb.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !206
  %i.fe = call i32 @gtk_toggle_button_get_active(ptr noundef %i.fd) #30
  %.not313 = icmp eq i32 %i.fe, 0
  br i1 %.not313, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ff = load i32, ptr %i.g, align 8, !tbaa !239 ; 2 uses
  %i.fg = load ptr, ptr %i.ci, align 8, !tbaa !218 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.fj = load <2 x float>, ptr %i.fi, align 4
  %i.fk = load <2 x float>, ptr %i.fh, align 4    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  %i.fm = load <2 x float>, ptr %i.fl, align 4
  %.sroa.0119.4.vec.insert = insertelement <2 x float> %.sroa.0146.0.vec.insert, float %i.bb, i64 1
  %.val345 = load ptr, ptr %i.h, align 8, !tbaa !181
  %.val346 = load ptr, ptr %i.f, align 16, !tbaa !180
  %i.fn = call fastcc ptr @alloc_curve_to(ptr %.val345, ptr %.val346, <2 x float> noundef %.sroa.0119.4.vec.insert) ; 4 uses
  store ptr %i.fn, ptr %i.ci, align 8, !tbaa !218
  %.not314 = icmp eq ptr %i.fn, null
  br i1 %.not314, label %.sink.split, label %.thread389

.thread389:                                       ; preds = %bb.s
  %i.fo = fsub reassoc nsz arcp contract afn <2 x float> %i.fm, %i.fk
  %i.fp = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fo) #31
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, %i.bd
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 36
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  store float %i.fq, ptr %i.fr, align 4
  store float %i.bb, ptr %i.fs, align 4
  %i.ft = insertelement <2 x float> %.sroa.0146.0.vec.insert, float %i.bb, i64 1
  %i.fu = fadd reassoc nsz arcp contract afn <2 x float> %i.fj, %i.ft
  %i.fv = load ptr, ptr %i.ci, align 8, !tbaa !218
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  %i.fx = fsub reassoc nsz arcp contract afn <2 x float> %i.fu, %i.fk
  store <2 x float> %i.fx, ptr %i.fw, align 4
  %i.fy = trunc i32 %i.ff to i8
  %i.fz = load ptr, ptr %i.ci, align 8, !tbaa !218 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i8 %i.fy, ptr %i.ga, align 4, !tbaa !170
  %i.gb = load i32, ptr %i.g, align 8, !tbaa !239
  %i.gc = trunc i32 %i.gb to i8
  %i.gd = zext nneg i32 %i.ff to i64
  %i.ge = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 18
  store i8 %i.gc, ptr %i.gf, align 2, !tbaa !213
  store i32 12, ptr %i.cn, align 8, !tbaa !232
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.fz, ptr %i.gg, align 8, !tbaa !208
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store i32 0, ptr %i.gh, align 4, !tbaa !241
  br label %bb.t

bb.t:                                             ; preds = %.thread389, %.thread, %bb.g, %bb.h, %bb.r
  %.2 = phi i32 [ 0, %bb.r ], [ 1, %.thread ], [ 1, %.thread389 ], [ 2, %bb.h ], [ 2, %bb.g ]
  %i.gi = load i32, ptr %i.ck, align 8, !tbaa !225
  %i.gj = and i32 %i.gi, -2
  store i32 %i.gj, ptr %i.ck, align 8, !tbaa !225
  br label %.critedge328

bb.u:                                             ; preds = %bb.c, %bb.d
  %i.gk = getelementptr i8, ptr %i.g, i64 48
  %.val336 = load ptr, ptr %i.gk, align 8, !tbaa !208
  %.not409 = icmp eq ptr %.val336, null
  br i1 %.not409, label %.critedge.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i8 0, i64 16, i1 false)
  br label %.sink.split

.critedge:                                        ; preds = %detect_drag.exit
  %i.gm = icmp eq i32 %3, 3
  br i1 %i.gm, label %bb.w, label %.thread392

bb.w:                                             ; preds = %.critedge
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i8 0, i64 16, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !218 ; 2 uses
  %.not308 = icmp eq ptr %i.gp, null
  br i1 %.not308, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @node_delete(ptr noundef %.fr, ptr noundef nonnull %i.gp)
  store ptr null, ptr %i.go, align 8, !tbaa !218
  %i.gq = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !224
  %.not309 = icmp eq i32 %i.gr, 0
  br i1 %.not309, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !241
  %.not310 = icmp eq i32 %i.gt, 0
  br i1 %.not310, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call fastcc void @_start_new_shape(ptr noundef nonnull %0)
  br label %.critedge328.thread406

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !225
  %i.gw = and i32 %i.gv, -5
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !225
  %i.gx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !203
  %i.gz = call i32 @btn_make_radio_callback(ptr noundef %i.gy, ptr noundef null, ptr noundef nonnull %0) ; 0 uses
  br label %.critedge328.thread406

bb.ab:                                            ; preds = %bb.w
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !209
  switch i32 %i.hb, label %.critedge328.thread406 [
    i32 0, label %bb.ac
    i32 12, label %bb.ad
    i32 5, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !203
  %i.he = call i32 @btn_make_radio_callback(ptr noundef %i.hd, ptr noundef null, ptr noundef nonnull %0) ; 0 uses
  br label %.critedge328.thread406

bb.ad:                                            ; preds = %bb.ab
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !231
  call fastcc void @node_delete(ptr noundef %.fr, ptr noundef %i.hg)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 0, i64 16, i1 false)
  br label %.critedge328.thread406

bb.ae:                                            ; preds = %bb.ab
  %i.hh = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !231 ; 4 uses
  %cond.i = icmp eq ptr %i.hi, null
  br i1 %cond.i, label %.preheader.i.preheader, label %select.unfold.i.preheader

select.unfold.i.preheader:                        ; preds = %bb.ae
  %.not24.i = icmp eq ptr %.fr, null
  br i1 %.not24.i, label %select.unfold.i.us, label %select.unfold.i

select.unfold.i.us:                               ; preds = %select.unfold.i.preheader
  store i32 0, ptr %i.hi, align 4, !tbaa !174
  br label %.preheader.i.preheader

select.unfold.i:                                  ; preds = %select.unfold.i.preheader, %select.unfold.i
  %.017.i = phi ptr [ %i.hm, %select.unfold.i ], [ %i.hi, %select.unfold.i.preheader ] ; 2 uses
  store i32 0, ptr %.017.i, align 4, !tbaa !174
  %i.hj = getelementptr i8, ptr %.017.i, i64 18
  %.0.val.i = load i8, ptr %i.hj, align 2, !tbaa !213 ; 2 uses
  %i.hk = icmp eq i8 %.0.val.i, -1
  %i.hl = sext i8 %.0.val.i to i64
  %i.hm = getelementptr inbounds [76 x i8], ptr %.fr, i64 %i.hl
  br i1 %i.hk, label %select.unfold13.i, label %select.unfold.i

select.unfold13.i:                                ; preds = %select.unfold.i, %select.unfold13.i
  %.119.i = phi ptr [ %i.hq, %select.unfold13.i ], [ %i.hi, %select.unfold.i ] ; 2 uses
  store i32 0, ptr %.119.i, align 4, !tbaa !174
  %i.hn = getelementptr i8, ptr %.119.i, i64 16
  %.1.val.i = load i8, ptr %i.hn, align 4, !tbaa !170 ; 2 uses
  %i.ho = icmp eq i8 %.1.val.i, -1
  %i.hp = sext i8 %.1.val.i to i64
  %i.hq = getelementptr inbounds [76 x i8], ptr %.fr, i64 %i.hp
  br i1 %i.ho, label %.preheader.i.preheader, label %select.unfold13.i

.preheader.i.preheader:                           ; preds = %select.unfold13.i, %select.unfold.i.us, %bb.ae
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.af, %.preheader.i.preheader
  %.03946.i.i = phi i32 [ 99, %.preheader.i.preheader ], [ %23, %bb.af ] ; 12 uses
  %6 = zext nneg i32 %.03946.i.i to i64
  %i.hr = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %6
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !174
  %.not.i.i = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i, label %.preheader.i.1, label %bb.ag

.preheader.i.1:                                   ; preds = %.preheader.i
  %7 = add nsw i32 %.03946.i.i, -1                ; 2 uses
  %8 = zext nneg i32 %7 to i64
  %i.ht = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !174
  %.not.i.i.1 = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i.1, label %.preheader.i.2, label %bb.ag

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %9 = add nsw i32 %.03946.i.i, -2                ; 2 uses
  %10 = zext nneg i32 %9 to i64
  %i.hv = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %10
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !174
  %.not.i.i.2 = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i.2, label %.preheader.i.3, label %bb.ag

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %11 = add nsw i32 %.03946.i.i, -3               ; 2 uses
  %12 = zext nneg i32 %11 to i64
  %i.hx = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %12
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !174
  %.not.i.i.3 = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i.3, label %.preheader.i.4, label %bb.ag

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %13 = add nsw i32 %.03946.i.i, -4               ; 2 uses
  %14 = zext nneg i32 %13 to i64
  %i.hz = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %14
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !174
  %.not.i.i.4 = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i.4, label %.preheader.i.5, label %bb.ag

.preheader.i.5:                                   ; preds = %.preheader.i.4
  %15 = add nsw i32 %.03946.i.i, -5               ; 2 uses
  %16 = zext nneg i32 %15 to i64
  %i.ib = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %16
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !174
  %.not.i.i.5 = icmp eq i32 %i.ic, 0
  br i1 %.not.i.i.5, label %.preheader.i.6, label %bb.ag

.preheader.i.6:                                   ; preds = %.preheader.i.5
  %17 = add nsw i32 %.03946.i.i, -6               ; 2 uses
  %18 = zext nneg i32 %17 to i64
  %i.id = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %18
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !174
  %.not.i.i.6 = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i.6, label %.preheader.i.7, label %bb.ag

.preheader.i.7:                                   ; preds = %.preheader.i.6
  %19 = add nsw i32 %.03946.i.i, -7               ; 2 uses
  %20 = zext nneg i32 %19 to i64
  %i.if = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %20
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !174
  %.not.i.i.7 = icmp eq i32 %i.ig, 0
  br i1 %.not.i.i.7, label %.preheader.i.8, label %bb.ag

.preheader.i.8:                                   ; preds = %.preheader.i.7
  %21 = add nsw i32 %.03946.i.i, -8               ; 2 uses
  %22 = zext nneg i32 %21 to i64
  %i.ih = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %22
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !174
  %.not.i.i.8 = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i.8, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.preheader.i.8
  %23 = add nsw i32 %.03946.i.i, -9
  %i.ij = icmp sgt i32 %.03946.i.i, 9
  br i1 %i.ij, label %.preheader.i, label %.lr.ph52.i.i.preheader

bb.ag:                                            ; preds = %.preheader.i.8, %.preheader.i.7, %.preheader.i.6, %.preheader.i.5, %.preheader.i.4, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %.03946.i.i.lcssa = phi i32 [ %.03946.i.i, %.preheader.i ], [ %7, %.preheader.i.1 ], [ %9, %.preheader.i.2 ], [ %11, %.preheader.i.3 ], [ %13, %.preheader.i.4 ], [ %15, %.preheader.i.5 ], [ %17, %.preheader.i.6 ], [ %19, %.preheader.i.7 ], [ %21, %.preheader.i.8 ] ; 3 uses
  %.not4148.i.i = icmp slt i32 %.03946.i.i.lcssa, 0
  br i1 %.not4148.i.i, label %iter.check, label %.lr.ph52.i.i.preheader

.lr.ph52.i.i.preheader:                           ; preds = %bb.af, %bb.ag
  %.14049.i.i.ph = phi i32 [ %.03946.i.i.lcssa, %bb.ag ], [ 0, %bb.af ]
  br label %.lr.ph52.i.i

.preheader.i.i:                                   ; preds = %bb.an
  %i.ik = icmp slt i32 %.2.i.i, 99
  br i1 %i.ik, label %iter.check, label %path_delete.exit

iter.check:                                       ; preds = %.preheader.i.i, %bb.ag
  %.140.lcssa65.i.i = phi i32 [ %.2.i.i, %.preheader.i.i ], [ %.03946.i.i.lcssa, %bb.ag ]
  %i.il = sext i32 %.140.lcssa65.i.i to i64       ; 6 uses
  %i.im = sub nsw i64 99, %i.il                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.im, 4
  br i1 %min.iters.check, label %.lr.ph54.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check451 = icmp ult i64 %i.im, 32
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.in = and i64 %i.im, 28
  %n.vec = and i64 %i.im, -32                     ; 4 uses
  %i.io = add nsw i64 %n.vec, %i.il               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.ip = add nsw <8 x i64> %vec.ind, splat (i64 1)
  %i.iq = add nsw <8 x i64> %vec.ind, splat (i64 9)
  %i.ir = add nsw <8 x i64> %vec.ind, splat (i64 17)
  %i.is = add nsw <8 x i64> %vec.ind, splat (i64 25)
  %wide.gep = getelementptr inbounds [76 x i8], ptr %.fr, <8 x i64> %i.ip
  %wide.gep452 = getelementptr inbounds [76 x i8], ptr %.fr, <8 x i64> %i.iq
  %wide.gep453 = getelementptr inbounds [76 x i8], ptr %.fr, <8 x i64> %i.ir
  %wide.gep454 = getelementptr inbounds [76 x i8], ptr %.fr, <8 x i64> %i.is
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !174
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep452, <8 x i1> splat (i1 true)), !tbaa !174
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep453, <8 x i1> splat (i1 true)), !tbaa !174
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep454, <8 x i1> splat (i1 true)), !tbaa !174
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.im, %n.vec
  br i1 %cmp.n, label %path_delete.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.in, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.i.i.preheader, label %vec.epilog.ph, !prof !243

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.io, %vec.epilog.iter.check ], [ %i.il, %vector.main.loop.iter.check ]
  %n.vec455 = and i64 %i.im, -4                   ; 3 uses
  %i.iu = add nsw i64 %n.vec455, %i.il
  %broadcast.splatinsert456 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat457 = shufflevector <4 x i64> %broadcast.splatinsert456, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction458 = add nsw <4 x i64> %broadcast.splat457, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index459 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next462, %vec.epilog.vector.body ]
  %vec.ind460 = phi <4 x i64> [ %induction458, %vec.epilog.ph ], [ %vec.ind.next463, %vec.epilog.vector.body ] ; 2 uses
  %i.iv = add nsw <4 x i64> %vec.ind460, splat (i64 1)
  %wide.gep461 = getelementptr inbounds [76 x i8], ptr %.fr, <4 x i64> %i.iv
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> zeroinitializer, <4 x ptr> align 4 %wide.gep461, <4 x i1> splat (i1 true)), !tbaa !174
  %index.next462 = add nuw i64 %index459, 4       ; 2 uses
  %vec.ind.next463 = add nsw <4 x i64> %vec.ind460, splat (i64 4)
  %i.iw = icmp eq i64 %index.next462, %n.vec455
  br i1 %i.iw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n464 = icmp eq i64 %i.im, %n.vec455
  br i1 %cmp.n464, label %path_delete.exit, label %.lr.ph54.i.i.preheader

.lr.ph54.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i.i.ph = phi i64 [ %i.il, %iter.check ], [ %i.io, %vec.epilog.iter.check ], [ %i.iu, %vec.epilog.middle.block ]
  br label %.lr.ph54.i.i

.lr.ph52.i.i:                                     ; preds = %.lr.ph52.i.i.preheader, %bb.an
  %.03850.i.i = phi i32 [ %.1.i.i, %bb.an ], [ 0, %.lr.ph52.i.i.preheader ] ; 5 uses
  %.14049.i.i = phi i32 [ %.2.i.i, %bb.an ], [ %.14049.i.i.ph, %.lr.ph52.i.i.preheader ] ; 4 uses
  %i.ix = sext i32 %.03850.i.i to i64             ; 2 uses
  %i.iy = getelementptr inbounds [76 x i8], ptr %.fr, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !174
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %.preheader45.i.i, label %bb.am

.preheader45.i.i:                                 ; preds = %.lr.ph52.i.i
  %i.jb = icmp sgt i32 %.14049.i.i, 0
  br i1 %i.jb, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader45.i.i
  %wide.trip.count.i.i = zext nneg i32 %.14049.i.i to i64
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.al, %.preheader45.i.i
  %i.jc = add nsw i32 %.14049.i.i, -1
  br label %bb.an

.lr.ph.i.i:                                       ; preds = %bb.al, %.lr.ph.preheader.i.i
  %indvars.iv.i.i349.a = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i350, %bb.al ] ; 4 uses
  %.not42.i.i = icmp slt i64 %indvars.iv.i.i349.a, %i.ix
  br i1 %.not42.i.i, label %.critedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.jd = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i.i349.a ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.jd, ptr noundef nonnull align 4 dereferenceable(76) %i.je, i64 76, i1 false), !tbaa.struct !245
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 17 ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !240
  %i.jh = add i8 %i.jg, -1
  store i8 %i.jh, ptr %i.jf, align 1, !tbaa !240
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ah, %.lr.ph.i.i
  %i.ji = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i.i349.a ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 4, !tbaa !170 ; 2 uses
  %i.jl = sext i8 %i.jk to i32
  %.not43.i.i = icmp sgt i32 %.03850.i.i, %i.jl
  br i1 %.not43.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i.i
  %i.jm = add i8 %i.jk, -1
  store i8 %i.jm, ptr %i.jj, align 4, !tbaa !170
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 18 ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !213 ; 2 uses
  %i.jp = sext i8 %i.jo to i32
  %.not44.i.i = icmp sgt i32 %.03850.i.i, %i.jp
  br i1 %.not44.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jq = add i8 %i.jo, -1
  store i8 %i.jq, ptr %i.jn, align 2, !tbaa !213
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %indvars.iv.next.i.i350 = add nuw nsw i64 %indvars.iv.i.i349.a, 1 ; 2 uses
  %exitcond.not.i.i351 = icmp eq i64 %indvars.iv.next.i.i350, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i351, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.am:                                            ; preds = %.lr.ph52.i.i
  %i.jr = add nsw i32 %.03850.i.i, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i
  %.2.i.i = phi i32 [ %i.jc, %._crit_edge.i.i ], [ %.14049.i.i, %bb.am ] ; 4 uses
  %.1.i.i = phi i32 [ %.03850.i.i, %._crit_edge.i.i ], [ %i.jr, %bb.am ] ; 2 uses
  %.not41.i.i = icmp sgt i32 %.1.i.i, %.2.i.i
  br i1 %.not41.i.i, label %.preheader.i.i, label %.lr.ph52.i.i

.lr.ph54.i.i:                                     ; preds = %.lr.ph54.i.i.preheader, %.lr.ph54.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph54.i.i ], [ %indvars.iv57.i.i.ph, %.lr.ph54.i.i.preheader ]
  %indvars.iv.next58.i.i = add nsw i64 %indvars.iv57.i.i, 1 ; 3 uses
  %i.js = getelementptr inbounds [76 x i8], ptr %.fr, i64 %indvars.iv.next58.i.i
  store i32 0, ptr %i.js, align 4, !tbaa !174
  %exitcond60.not.i.i = icmp eq i64 %indvars.iv.next58.i.i, 99
  br i1 %exitcond60.not.i.i, label %path_delete.exit, label %.lr.ph54.i.i, !llvm.loop !247

path_delete.exit:                                 ; preds = %.lr.ph54.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 0, i64 16, i1 false)
  br label %.critedge328

.critedge.thread:                                 ; preds = %bb.u
  %i.jt = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !203
  %i.jv = call i32 @gtk_toggle_button_get_active(ptr noundef %i.ju) #30
  %.not300 = icmp eq i32 %i.jv, 0
  br i1 %.not300, label %.sink.split, label %bb.ao

.thread392:                                       ; preds = %.critedge
  %i.jw = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !203
  %i.jy = call i32 @gtk_toggle_button_get_active(ptr noundef %i.jx) #30 ; 0 uses
  br label %.critedge328.thread406

bb.ao:                                            ; preds = %.critedge.thread
  %i.jz = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 4 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !238
  %i.kb = call i32 @gtk_accelerator_get_default_mod_mask() #30
  %i.kc = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !12
  %i.kd = or i32 %i.kc, %i.ka
  %i.ke = and i32 %i.kd, %i.kb
  %i.kf = icmp ne i32 %i.ke, 0
  %or.cond = select i1 %i.kf, i1 true, i1 %i.cg
  br i1 %or.cond, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kg = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !209
  switch i32 %i.kh, label %bb.ay [
    i32 12, label %bb.aq
    i32 0, label %.preheader
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ki = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !231
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !175
end_hunk_0
begin_hunk_1_@_start_new_shape:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @alloc_line_to(ptr nofree captures(ret: address, provenance) %.680.val, ptr nofree writeonly captures(none) %.704.val, <2 x float> noundef %0) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %i.a = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.i ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !174
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.g = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !174
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.j = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !174
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !174
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %node_alloc.exit.thread, label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ], [ %indvars.iv.next.i.2, %bb.e ], [ %indvars.iv.next.i.3, %bb.f ] ; 2 uses
  %.lcssa = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 8 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  store i32 %i.p, ptr %.704.val, align 4, !tbaa !12
  %i.q = trunc i64 %indvars.iv.i.lcssa to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.q, ptr %i.r, align 1, !tbaa !240
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.s, align 4, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.t, align 2, !tbaa !213
  store <4 x i32> <i32 2, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.v, align 4, !tbaa !93
  %i.w = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.x = shufflevector <4 x float> %i.w, <4 x float> <float poison, float poison, float 5.000000e-01, float 7.500000e-01>, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 6, i32 7>
  store <8 x float> %i.x, ptr %i.u, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.y, align 4, !tbaa !91
  br label %node_alloc.exit.thread

node_alloc.exit.thread:                           ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %.lcssa, %bb.h ], [ null, %bb.g ]
  ret ptr %i.z
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @alloc_curve_to(ptr nofree captures(ret: address, provenance) %.680.val, ptr nofree writeonly captures(none) %.704.val, <2 x float> noundef %0) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %i.a = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.i ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !174
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.g = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !174
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.j = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !174
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !174
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %node_alloc.exit.thread, label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ], [ %indvars.iv.next.i.2, %bb.e ], [ %indvars.iv.next.i.3, %bb.f ] ; 2 uses
  %.lcssa = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 9 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  store i32 %i.p, ptr %.704.val, align 4, !tbaa !12
  %i.q = trunc i64 %indvars.iv.i.lcssa to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.q, ptr %i.r, align 1, !tbaa !240
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.s, align 4, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.t, align 2, !tbaa !213
  store <4 x i32> <i32 3, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 60
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.w, align 4, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.x = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> %i.x, <4 x float> <float poison, float poison, float 5.000000e-01, float 7.500000e-01>, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 6, i32 7>
  store <8 x float> %i.y, ptr %i.v, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.z, align 4, !tbaa !91
  br label %node_alloc.exit.thread

node_alloc.exit.thread:                           ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.lcssa, %bb.h ], [ null, %bb.g ]
  ret ptr %i.aa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @node_delete(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i8, ptr %i.a, align 4, !tbaa !170  ; 2 uses
  %i.b = icmp eq i8 %.val, -1                     ; 2 uses
  %i.c = sext i8 %.val to i64
  %i.d = getelementptr inbounds [76 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 18         ; 2 uses
  %.val20 = load i8, ptr %i.e, align 2, !tbaa !213 ; 3 uses
  %i.f = icmp ne i8 %.val20, -1
  %i.g = sext i8 %.val20 to i64
  %i.h = getelementptr inbounds [76 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = icmp ne ptr %0, null
  %i.j = and i1 %i.i, %i.f                        ; 2 uses
  %or.cond = select i1 %i.b, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 -1, ptr %i.k, align 4, !tbaa !170
  store i32 1, ptr %i.h, align 4, !tbaa !174
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %0, null
  %i.m = or i1 %i.l, %i.b
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 %.val20, ptr %i.n, align 2, !tbaa !213
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.p = load i8, ptr %i.o, align 1, !tbaa !240
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %i.p, ptr %i.q, align 4, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  store i8 -1, ptr %i.e, align 2, !tbaa !213
  store i8 -1, ptr %i.a, align 4, !tbaa !170
  store i32 0, ptr %1, align 4, !tbaa !174
  br label %bb.g

bb.g:                                             ; preds = %bb.p, %bb.f
  %.03946.i = phi i32 [ 99, %bb.f ], [ %19, %bb.p ] ; 12 uses
  %2 = zext nneg i32 %.03946.i to i64
  %i.r = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %2
  %i.s = load i32, ptr %i.r, align 4, !tbaa !174
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %3 = add nsw i32 %.03946.i, -1                  ; 2 uses
  %4 = zext nneg i32 %3 to i64
  %i.t = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !174
  %.not.i.1 = icmp eq i32 %i.u, 0
  br i1 %.not.i.1, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %5 = add nsw i32 %.03946.i, -2                  ; 2 uses
  %6 = zext nneg i32 %5 to i64
  %i.v = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %6
  %i.w = load i32, ptr %i.v, align 4, !tbaa !174
  %.not.i.2 = icmp eq i32 %i.w, 0
  br i1 %.not.i.2, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %7 = add nsw i32 %.03946.i, -3                  ; 2 uses
  %8 = zext nneg i32 %7 to i64
  %i.x = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !174
  %.not.i.3 = icmp eq i32 %i.y, 0
  br i1 %.not.i.3, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %9 = add nsw i32 %.03946.i, -4                  ; 2 uses
  %10 = zext nneg i32 %9 to i64
  %i.z = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %10
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !174
  %.not.i.4 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.4, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %11 = add nsw i32 %.03946.i, -5                 ; 2 uses
  %12 = zext nneg i32 %11 to i64
  %i.ab = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !174
  %.not.i.5 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.5, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %13 = add nsw i32 %.03946.i, -6                 ; 2 uses
  %14 = zext nneg i32 %13 to i64
  %i.ad = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %14
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !174
  %.not.i.6 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.6, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %15 = add nsw i32 %.03946.i, -7                 ; 2 uses
  %16 = zext nneg i32 %15 to i64
  %i.af = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !174
  %.not.i.7 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.7, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %17 = add nsw i32 %.03946.i, -8                 ; 2 uses
  %18 = zext nneg i32 %17 to i64
  %i.ah = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %18
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !174
  %.not.i.8 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.8, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %19 = add nsw i32 %.03946.i, -9
  %i.aj = icmp sgt i32 %.03946.i, 9
  br i1 %i.aj, label %bb.g, label %.lr.ph52.i.preheader

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.03946.i.lcssa = phi i32 [ %.03946.i, %bb.g ], [ %3, %bb.h ], [ %5, %bb.i ], [ %7, %bb.j ], [ %9, %bb.k ], [ %11, %bb.l ], [ %13, %bb.m ], [ %15, %bb.n ], [ %17, %bb.o ] ; 3 uses
  %.not4148.i = icmp slt i32 %.03946.i.lcssa, 0
  br i1 %.not4148.i, label %iter.check, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %bb.p, %bb.q
  %.14049.i.ph = phi i32 [ %.03946.i.lcssa, %bb.q ], [ 0, %bb.p ]
  br label %.lr.ph52.i

.preheader.i:                                     ; preds = %bb.x
  %i.ak = icmp slt i32 %.2.i, 99
  br i1 %i.ak, label %iter.check, label %node_gc.exit

iter.check:                                       ; preds = %.preheader.i, %bb.q
  %.140.lcssa65.i = phi i32 [ %.2.i, %.preheader.i ], [ %.03946.i.lcssa, %bb.q ]
  %i.al = sext i32 %.140.lcssa65.i to i64         ; 6 uses
  %i.am = sub nsw i64 99, %i.al                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph54.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  %i.ao = add nsw i64 %n.vec, %i.al               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.ap = add nsw <8 x i64> %vec.ind, splat (i64 1)
  %i.aq = add nsw <8 x i64> %vec.ind, splat (i64 9)
  %i.ar = add nsw <8 x i64> %vec.ind, splat (i64 17)
  %i.as = add nsw <8 x i64> %vec.ind, splat (i64 25)
  %wide.gep = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.ap
  %wide.gep27 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.aq
  %wide.gep28 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.ar
  %wide.gep29 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.as
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !174
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true)), !tbaa !174
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep28, <8 x i1> splat (i1 true)), !tbaa !174
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true)), !tbaa !174
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %node_gc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.i.preheader, label %vec.epilog.ph, !prof !243

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ao, %vec.epilog.iter.check ], [ %i.al, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.am, -4                    ; 3 uses
  %i.au = add nsw i64 %n.vec30, %i.al
  %broadcast.splatinsert31 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat32 = shufflevector <4 x i64> %broadcast.splatinsert31, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction33 = add nsw <4 x i64> %broadcast.splat32, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ]
  %vec.ind35 = phi <4 x i64> [ %induction33, %vec.epilog.ph ], [ %vec.ind.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.av = add nsw <4 x i64> %vec.ind35, splat (i64 1)
  %wide.gep36 = getelementptr inbounds [76 x i8], ptr %0, <4 x i64> %i.av
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> zeroinitializer, <4 x ptr> align 4 %wide.gep36, <4 x i1> splat (i1 true)), !tbaa !174
  %index.next37 = add nuw i64 %index34, 4         ; 2 uses
  %vec.ind.next38 = add nsw <4 x i64> %vec.ind35, splat (i64 4)
  %i.aw = icmp eq i64 %index.next37, %n.vec30
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.am, %n.vec30
  br i1 %cmp.n39, label %node_gc.exit, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i.ph = phi i64 [ %i.al, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph54.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %bb.x
  %.03850.i = phi i32 [ %.1.i, %bb.x ], [ 0, %.lr.ph52.i.preheader ] ; 5 uses
  %.14049.i = phi i32 [ %.2.i, %bb.x ], [ %.14049.i.ph, %.lr.ph52.i.preheader ] ; 4 uses
  %i.ax = sext i32 %.03850.i to i64               ; 2 uses
  %i.ay = getelementptr inbounds [76 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !174
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.preheader45.i, label %bb.w

.preheader45.i:                                   ; preds = %.lr.ph52.i
  %i.bb = icmp sgt i32 %.14049.i, 0
  br i1 %i.bb, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader45.i
  %wide.trip.count.i = zext nneg i32 %.14049.i to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.v, %.preheader45.i
  %i.bc = add nsw i32 %.14049.i, -1
  br label %bb.x

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %indvars.iv.i.a = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.a, %bb.v ] ; 4 uses
  %.not42.i = icmp slt i64 %indvars.iv.i.a, %i.ax
  br i1 %.not42.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %indvars.iv.i.a ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.bd, ptr noundef nonnull align 4 dereferenceable(76) %i.be, i64 76, i1 false), !tbaa.struct !245
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 17 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !240
  %i.bh = add i8 %i.bg, -1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !240
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %.lr.ph.i
  %i.bi = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %indvars.iv.i.a ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !170 ; 2 uses
  %i.bl = sext i8 %i.bk to i32
  %.not43.i = icmp sgt i32 %.03850.i, %i.bl
  br i1 %.not43.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %i.bm = add i8 %i.bk, -1
  store i8 %i.bm, ptr %i.bj, align 4, !tbaa !170
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 18 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !213 ; 2 uses
  %i.bp = sext i8 %i.bo to i32
  %.not44.i = icmp sgt i32 %.03850.i, %i.bp
  br i1 %.not44.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = add i8 %i.bo, -1
  store i8 %i.bq, ptr %i.bn, align 2, !tbaa !213
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.a, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph52.i
  %i.br = add nsw i32 %.03850.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i
  %.2.i = phi i32 [ %i.bc, %._crit_edge.i ], [ %.14049.i, %bb.w ] ; 4 uses
  %.1.i = phi i32 [ %.03850.i, %._crit_edge.i ], [ %i.br, %bb.w ] ; 2 uses
  %.not41.i = icmp sgt i32 %.1.i, %.2.i
  br i1 %.not41.i, label %.preheader.i, label %.lr.ph52.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %.lr.ph54.i ], [ %indvars.iv57.i.ph, %.lr.ph54.i.preheader ]
  %indvars.iv.next58.i = add nsw i64 %indvars.iv57.i, 1 ; 3 uses
  %i.bs = getelementptr inbounds [76 x i8], ptr %0, i64 %indvars.iv.next58.i
  store i32 0, ptr %i.bs, align 4, !tbaa !174
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 99
  br i1 %exitcond60.not.i, label %node_gc.exit, label %.lr.ph54.i, !llvm.loop !250

node_gc.exit:                                     ; preds = %.lr.ph54.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mix_warps(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> noundef %3, float noundef %4) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.c, align 4, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x float>, ptr %i.d, align 4, !tbaa !13 ; 2 uses
  %i.h = load <2 x float>, ptr %i.e, align 4, !tbaa !13
  %i.i = fsub reassoc nsz arcp contract afn <2 x float> %i.h, %i.g
  %i.j = insertelement <2 x float> poison, float %4, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul reassoc nsz arcp contract afn <2 x float> %i.i, %i.k
  %i.m = fadd reassoc nsz arcp contract afn <2 x float> %i.l, %i.g
  store <2 x float> %i.m, ptr %i.f, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load <2 x float>, ptr %i.n, align 4
  %i.p = load <2 x float>, ptr %1, align 4
  %i.q = fsub reassoc nsz arcp contract afn <2 x float> %i.o, %i.p
  %i.r = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.q) #31 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load <2 x float>, ptr %i.s, align 4
  %i.u = load <2 x float>, ptr %2, align 4
  %i.v = fsub reassoc nsz arcp contract afn <2 x float> %i.t, %i.u
  %i.w = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.v) #31
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.r
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %4
  %.sroa.064.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 2 uses
  %.sroa.064.4.vec.extract = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.z = fadd reassoc nsz arcp contract afn float %i.r, %.sroa.064.0.vec.extract
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.aa, ptr %i.ab, align 4
end_hunk_1
