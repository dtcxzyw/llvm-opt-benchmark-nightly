Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@button_released:bb.a
  store <2 x float> %i.er, ptr %i.eq, align 4
  %i.es = trunc i32 %i.cz to i8
  %i.et = load ptr, ptr %i.ci, align 8, !tbaa !179 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i8 %i.es, ptr %i.eu, align 4, !tbaa !139
  %i.ev = load i32, ptr %i.g, align 8, !tbaa !189
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = zext nneg i32 %i.cz to i64
  %i.ey = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 18
  store i8 %i.ew, ptr %i.ez, align 2, !tbaa !177
  store i32 12, ptr %i.cn, align 8, !tbaa !187
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.et, ptr %i.fa, align 8, !tbaa !174
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store i32 0, ptr %i.fb, align 4, !tbaa !191
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ci, align 8, !tbaa !179
  br label %.critedge328

bb.r:                                             ; preds = %bb.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !172
  %i.fe = call i32 @gtk_toggle_button_get_active(ptr noundef %i.fd) #30
  %.not313 = icmp eq i32 %i.fe, 0
  br i1 %.not313, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ff = load i32, ptr %i.g, align 8, !tbaa !189 ; 2 uses
  %i.fg = load ptr, ptr %i.ci, align 8, !tbaa !179 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.fj = load <2 x float>, ptr %i.fi, align 4
  %i.fk = load <2 x float>, ptr %i.fh, align 4    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  %i.fm = load <2 x float>, ptr %i.fl, align 4
  %.sroa.0119.4.vec.insert = insertelement <2 x float> %.sroa.0146.0.vec.insert, float %i.bb, i64 1
  %.val345 = load ptr, ptr %i.h, align 8, !tbaa !147
  %.val346 = load ptr, ptr %i.f, align 16, !tbaa !146
  %i.fn = call fastcc ptr @alloc_curve_to(ptr %.val345, ptr %.val346, <2 x float> noundef %.sroa.0119.4.vec.insert) ; 4 uses
  store ptr %i.fn, ptr %i.ci, align 8, !tbaa !179
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
  %i.fv = load ptr, ptr %i.ci, align 8, !tbaa !179
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  %i.fx = fsub reassoc nsz arcp contract afn <2 x float> %i.fu, %i.fk
  store <2 x float> %i.fx, ptr %i.fw, align 4
  %i.fy = trunc i32 %i.ff to i8
  %i.fz = load ptr, ptr %i.ci, align 8, !tbaa !179 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i8 %i.fy, ptr %i.ga, align 4, !tbaa !139
  %i.gb = load i32, ptr %i.g, align 8, !tbaa !189
  %i.gc = trunc i32 %i.gb to i8
  %i.gd = zext nneg i32 %i.ff to i64
  %i.ge = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 18
  store i8 %i.gc, ptr %i.gf, align 2, !tbaa !177
  store i32 12, ptr %i.cn, align 8, !tbaa !187
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.fz, ptr %i.gg, align 8, !tbaa !174
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store i32 0, ptr %i.gh, align 4, !tbaa !191
  br label %bb.t

bb.t:                                             ; preds = %.thread389, %.thread, %bb.g, %bb.h, %bb.r
  %.2 = phi i32 [ 0, %bb.r ], [ 1, %.thread ], [ 1, %.thread389 ], [ 2, %bb.h ], [ 2, %bb.g ]
  %i.gi = load i32, ptr %i.ck, align 8, !tbaa !181
  %i.gj = and i32 %i.gi, -2
  store i32 %i.gj, ptr %i.ck, align 8, !tbaa !181
  br label %.critedge328

bb.u:                                             ; preds = %bb.c, %bb.d
  %i.gk = getelementptr i8, ptr %i.g, i64 48
  %.val336 = load ptr, ptr %i.gk, align 8, !tbaa !174
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
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !179 ; 2 uses
  %.not308 = icmp eq ptr %i.gp, null
  br i1 %.not308, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @node_delete(ptr noundef %.fr, ptr noundef nonnull %i.gp)
  store ptr null, ptr %i.go, align 8, !tbaa !179
  %i.gq = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !180
  %.not309 = icmp eq i32 %i.gr, 0
  br i1 %.not309, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !191
  %.not310 = icmp eq i32 %i.gt, 0
  br i1 %.not310, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call fastcc void @_start_new_shape(ptr noundef nonnull %0)
  br label %.critedge328.thread406

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !181
  %i.gw = and i32 %i.gv, -5
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !181
  %i.gx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !169
  %i.gz = call i32 @btn_make_radio_callback(ptr noundef %i.gy, ptr noundef null, ptr noundef nonnull %0) ; 0 uses
  br label %.critedge328.thread406

bb.ab:                                            ; preds = %bb.w
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !175
  switch i32 %i.hb, label %.critedge328.thread406 [
    i32 0, label %bb.ac
    i32 12, label %bb.ad
    i32 5, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !169
  %i.he = call i32 @btn_make_radio_callback(ptr noundef %i.hd, ptr noundef null, ptr noundef nonnull %0) ; 0 uses
  br label %.critedge328.thread406

bb.ad:                                            ; preds = %bb.ab
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !186
  call fastcc void @node_delete(ptr noundef %.fr, ptr noundef %i.hg)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 0, i64 16, i1 false)
  br label %.critedge328.thread406

bb.ae:                                            ; preds = %bb.ab
  %i.hh = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !186 ; 4 uses
  %cond.i = icmp eq ptr %i.hi, null
  br i1 %cond.i, label %.preheader.i.preheader, label %select.unfold.i.preheader

select.unfold.i.preheader:                        ; preds = %bb.ae
  %.not24.i = icmp eq ptr %.fr, null
  br i1 %.not24.i, label %select.unfold.i.us, label %select.unfold.i

select.unfold.i.us:                               ; preds = %select.unfold.i.preheader
  store i32 0, ptr %i.hi, align 4, !tbaa !140
  br label %.preheader.i.preheader

select.unfold.i:                                  ; preds = %select.unfold.i.preheader, %select.unfold.i
  %.017.i = phi ptr [ %i.hm, %select.unfold.i ], [ %i.hi, %select.unfold.i.preheader ] ; 2 uses
  store i32 0, ptr %.017.i, align 4, !tbaa !140
  %i.hj = getelementptr i8, ptr %.017.i, i64 18
  %.0.val.i = load i8, ptr %i.hj, align 2, !tbaa !177 ; 2 uses
  %i.hk = icmp eq i8 %.0.val.i, -1
  %i.hl = sext i8 %.0.val.i to i64
  %i.hm = getelementptr inbounds [76 x i8], ptr %.fr, i64 %i.hl
  br i1 %i.hk, label %select.unfold13.i, label %select.unfold.i

select.unfold13.i:                                ; preds = %select.unfold.i, %select.unfold13.i
  %.119.i = phi ptr [ %i.hq, %select.unfold13.i ], [ %i.hi, %select.unfold.i ] ; 2 uses
  store i32 0, ptr %.119.i, align 4, !tbaa !140
  %i.hn = getelementptr i8, ptr %.119.i, i64 16
  %.1.val.i = load i8, ptr %i.hn, align 4, !tbaa !139 ; 2 uses
  %i.ho = icmp eq i8 %.1.val.i, -1
  %i.hp = sext i8 %.1.val.i to i64
  %i.hq = getelementptr inbounds [76 x i8], ptr %.fr, i64 %i.hp
  br i1 %i.ho, label %.preheader.i.preheader, label %select.unfold13.i

.preheader.i.preheader:                           ; preds = %select.unfold13.i, %select.unfold.i.us, %bb.ae
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.af, %.preheader.i.preheader
  %.03946.i.i = phi i32 [ 99, %.preheader.i.preheader ], [ %i.ja, %bb.af ] ; 12 uses
  %i.hr = zext nneg i32 %.03946.i.i to i64
  %i.hs = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !140
  %.not.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i, label %.preheader.i.1, label %6

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.hu = add nsw i32 %.03946.i.i, -1             ; 2 uses
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !140
  %.not.i.i.1 = icmp eq i32 %i.hx, 0
  br i1 %.not.i.i.1, label %.preheader.i.2, label %6

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.hy = add nsw i32 %.03946.i.i, -2             ; 2 uses
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !140
  %.not.i.i.2 = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i.2, label %.preheader.i.3, label %6

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.ic = add nsw i32 %.03946.i.i, -3             ; 2 uses
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !140
  %.not.i.i.3 = icmp eq i32 %i.if, 0
  br i1 %.not.i.i.3, label %.preheader.i.4, label %6

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %i.ig = add nsw i32 %.03946.i.i, -4             ; 2 uses
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !140
  %.not.i.i.4 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i.4, label %.preheader.i.5, label %6

.preheader.i.5:                                   ; preds = %.preheader.i.4
  %i.ik = add nsw i32 %.03946.i.i, -5             ; 2 uses
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !140
  %.not.i.i.5 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i.5, label %.preheader.i.6, label %6

.preheader.i.6:                                   ; preds = %.preheader.i.5
  %i.io = add nsw i32 %.03946.i.i, -6             ; 2 uses
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !140
  %.not.i.i.6 = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i.6, label %.preheader.i.7, label %6

.preheader.i.7:                                   ; preds = %.preheader.i.6
  %i.is = add nsw i32 %.03946.i.i, -7             ; 2 uses
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !140
  %.not.i.i.7 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i.7, label %.preheader.i.8, label %6

.preheader.i.8:                                   ; preds = %.preheader.i.7
  %i.iw = add nsw i32 %.03946.i.i, -8             ; 2 uses
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !140
  %.not.i.i.8 = icmp eq i32 %i.iz, 0
  br i1 %.not.i.i.8, label %bb.af, label %6

bb.af:                                            ; preds = %.preheader.i.8
  %i.ja = add nsw i32 %.03946.i.i, -9
  %i.jb = icmp sgt i32 %.03946.i.i, 9
  br i1 %i.jb, label %.preheader.i, label %.lr.ph52.i.i.preheader

6:                                                ; preds = %.preheader.i.8, %.preheader.i.7, %.preheader.i.6, %.preheader.i.5, %.preheader.i.4, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %.03946.i.i.lcssa = phi i32 [ %.03946.i.i, %.preheader.i ], [ %i.hu, %.preheader.i.1 ], [ %i.hy, %.preheader.i.2 ], [ %i.ic, %.preheader.i.3 ], [ %i.ig, %.preheader.i.4 ], [ %i.ik, %.preheader.i.5 ], [ %i.io, %.preheader.i.6 ], [ %i.is, %.preheader.i.7 ], [ %i.iw, %.preheader.i.8 ] ; 3 uses
  %.not4148.i.i = icmp slt i32 %.03946.i.i.lcssa, 0
  br i1 %.not4148.i.i, label %iter.check, label %.lr.ph52.i.i.preheader

.lr.ph52.i.i.preheader:                           ; preds = %bb.af, %6
  %.14049.i.i.ph = phi i32 [ %.03946.i.i.lcssa, %6 ], [ 0, %bb.af ]
  br label %.lr.ph52.i.i

.preheader.i.i:                                   ; preds = %bb.am
  %i.jc = icmp slt i32 %.2.i.i, 99
  br i1 %i.jc, label %iter.check, label %path_delete.exit

iter.check:                                       ; preds = %.preheader.i.i, %6
  %.140.lcssa65.i.i = phi i32 [ %.2.i.i, %.preheader.i.i ], [ %.03946.i.i.lcssa, %6 ]
  %i.jd = sext i32 %.140.lcssa65.i.i to i64       ; 6 uses
  %i.je = sub nsw i64 99, %i.jd                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.je, 8
  br i1 %min.iters.check, label %.lr.ph54.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check451 = icmp ult i64 %i.je, 32
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jf = and i64 %i.je, 24
  %n.vec = and i64 %i.je, -32                     ; 4 uses
  %i.jg = add nsw i64 %n.vec, %i.jd               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.jd, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.jh = add nsw <8 x i64> %vec.ind, splat (i64 1)
  %i.ji = add nsw <8 x i64> %vec.ind, splat (i64 9)
  %i.jj = add nsw <8 x i64> %vec.ind, splat (i64 17)
  %i.jk = add nsw <8 x i64> %vec.ind, splat (i64 25)
  %wide.gep = getelementptr inbounds [76 x i8], ptr %.fr, <8 x i64> %i.jh
  %wide.gep452 = getelementptr inbounds [76 x i8], ptr %.fr, <8 x i64> %i.ji
  %wide.gep453 = getelementptr inbounds [76 x i8], ptr %.fr, <8 x i64> %i.jj
  %wide.gep454 = getelementptr inbounds [76 x i8], ptr %.fr, <8 x i64> %i.jk
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !140
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep452, <8 x i1> splat (i1 true)), !tbaa !140
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep453, <8 x i1> splat (i1 true)), !tbaa !140
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep454, <8 x i1> splat (i1 true)), !tbaa !140
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.je, %n.vec
  br i1 %cmp.n, label %path_delete.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.i.i.preheader, label %vec.epilog.ph, !prof !192

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.jg, %vec.epilog.iter.check ], [ %i.jd, %vector.main.loop.iter.check ]
  %n.vec455 = and i64 %i.je, -8                   ; 3 uses
  %i.jm = add nsw i64 %n.vec455, %i.jd
  %broadcast.splatinsert456 = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat457 = shufflevector <8 x i64> %broadcast.splatinsert456, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction458 = add nsw <8 x i64> %broadcast.splat457, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index459 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next462, %vec.epilog.vector.body ]
  %vec.ind460 = phi <8 x i64> [ %induction458, %vec.epilog.ph ], [ %vec.ind.next463, %vec.epilog.vector.body ] ; 2 uses
  %i.jn = add nsw <8 x i64> %vec.ind460, splat (i64 1)
  %wide.gep461 = getelementptr inbounds [76 x i8], ptr %.fr, <8 x i64> %i.jn
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep461, <8 x i1> splat (i1 true)), !tbaa !140
  %index.next462 = add nuw i64 %index459, 8       ; 2 uses
  %vec.ind.next463 = add nsw <8 x i64> %vec.ind460, splat (i64 8)
  %i.jo = icmp eq i64 %index.next462, %n.vec455
  br i1 %i.jo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !246

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n464 = icmp eq i64 %i.je, %n.vec455
  br i1 %cmp.n464, label %path_delete.exit, label %.lr.ph54.i.i.preheader

.lr.ph54.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i.i.ph = phi i64 [ %i.jd, %iter.check ], [ %i.jg, %vec.epilog.iter.check ], [ %i.jm, %vec.epilog.middle.block ]
  br label %.lr.ph54.i.i

.lr.ph52.i.i:                                     ; preds = %.lr.ph52.i.i.preheader, %bb.am
  %.03850.i.i = phi i32 [ %.1.i.i, %bb.am ], [ 0, %.lr.ph52.i.i.preheader ] ; 5 uses
  %.14049.i.i = phi i32 [ %.2.i.i, %bb.am ], [ %.14049.i.i.ph, %.lr.ph52.i.i.preheader ] ; 4 uses
  %i.jp = sext i32 %.03850.i.i to i64             ; 2 uses
  %i.jq = getelementptr inbounds [76 x i8], ptr %.fr, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !140
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %.preheader45.i.i, label %bb.al

.preheader45.i.i:                                 ; preds = %.lr.ph52.i.i
  %i.jt = icmp sgt i32 %.14049.i.i, 0
  br i1 %i.jt, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader45.i.i
  %wide.trip.count.i.i = zext nneg i32 %.14049.i.i to i64
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.ak, %.preheader45.i.i
  %i.ju = add nsw i32 %.14049.i.i, -1
  br label %bb.am

.lr.ph.i.i:                                       ; preds = %bb.ak, %.lr.ph.preheader.i.i
  %indvars.iv.i.i349 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i350, %bb.ak ] ; 4 uses
  %.not42.i.i = icmp slt i64 %indvars.iv.i.i349, %i.jp
  br i1 %.not42.i.i, label %.critedge.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.jv = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i.i349 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.jv, ptr noundef nonnull align 4 dereferenceable(76) %i.jw, i64 76, i1 false), !tbaa.struct !194
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 17 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !190
  %i.jz = add i8 %i.jy, -1
  store i8 %i.jz, ptr %i.jx, align 1, !tbaa !190
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ag, %.lr.ph.i.i
  %i.ka = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i.i349 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 4, !tbaa !139 ; 2 uses
  %i.kd = sext i8 %i.kc to i32
  %.not43.i.i = icmp sgt i32 %.03850.i.i, %i.kd
  br i1 %.not43.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i.i
  %i.ke = add i8 %i.kc, -1
  store i8 %i.ke, ptr %i.kb, align 4, !tbaa !139
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.critedge.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 18 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 2, !tbaa !177 ; 2 uses
  %i.kh = sext i8 %i.kg to i32
  %.not44.i.i = icmp sgt i32 %.03850.i.i, %i.kh
  br i1 %.not44.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ki = add i8 %i.kg, -1
  store i8 %i.ki, ptr %i.kf, align 2, !tbaa !177
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv.next.i.i350 = add nuw nsw i64 %indvars.iv.i.i349, 1 ; 2 uses
  %exitcond.not.i.i351 = icmp eq i64 %indvars.iv.next.i.i350, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i351, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.al:                                            ; preds = %.lr.ph52.i.i
  %i.kj = add nsw i32 %.03850.i.i, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i
  %.2.i.i = phi i32 [ %i.ju, %._crit_edge.i.i ], [ %.14049.i.i, %bb.al ] ; 4 uses
  %.1.i.i = phi i32 [ %.03850.i.i, %._crit_edge.i.i ], [ %i.kj, %bb.al ] ; 2 uses
  %.not41.i.i = icmp sgt i32 %.1.i.i, %.2.i.i
  br i1 %.not41.i.i, label %.preheader.i.i, label %.lr.ph52.i.i

.lr.ph54.i.i:                                     ; preds = %.lr.ph54.i.i.preheader, %.lr.ph54.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph54.i.i ], [ %indvars.iv57.i.i.ph, %.lr.ph54.i.i.preheader ]
  %indvars.iv.next58.i.i = add nsw i64 %indvars.iv57.i.i, 1 ; 3 uses
  %i.kk = getelementptr inbounds [76 x i8], ptr %.fr, i64 %indvars.iv.next58.i.i
  store i32 0, ptr %i.kk, align 4, !tbaa !140
  %exitcond60.not.i.i = icmp eq i64 %indvars.iv.next58.i.i, 99
  br i1 %exitcond60.not.i.i, label %path_delete.exit, label %.lr.ph54.i.i, !llvm.loop !247

path_delete.exit:                                 ; preds = %.lr.ph54.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 0, i64 16, i1 false)
  br label %.critedge328

.critedge.thread:                                 ; preds = %bb.u
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !169
  %i.kn = call i32 @gtk_toggle_button_get_active(ptr noundef %i.km) #30
  %.not300 = icmp eq i32 %i.kn, 0
  br i1 %.not300, label %.sink.split, label %bb.an

.thread392:                                       ; preds = %.critedge
  %i.ko = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !169
  %i.kq = call i32 @gtk_toggle_button_get_active(ptr noundef %i.kp) #30 ; 0 uses
  br label %.critedge328.thread406

bb.an:                                            ; preds = %.critedge.thread
  %i.kr = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 4 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !188
  %i.kt = call i32 @gtk_accelerator_get_default_mod_mask() #30
  %i.ku = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !11
  %i.kv = or i32 %i.ku, %i.ks
  %i.kw = and i32 %i.kv, %i.kt
  %i.kx = icmp ne i32 %i.kw, 0
  %or.cond = select i1 %i.kx, i1 true, i1 %i.cg
  br i1 %or.cond, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ky = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !175
  switch i32 %i.kz, label %bb.ax [
    i32 12, label %bb.ap
    i32 0, label %.preheader
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.la = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !186
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !141
  %.not301 = icmp eq i32 %i.ld, 0
  br label %bb.aq

bb.aq:                                            ; preds = %bb.av, %bb.ap
  %indvars.iv.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next.i.4, %bb.av ] ; 6 uses
  %i.le = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !140
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %unselect_all.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i32 0, ptr %i.lh, align 4, !tbaa !141
  %i.li = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 76
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !140
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %unselect_all.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 84
  store i32 0, ptr %i.lm, align 4, !tbaa !141
  %i.ln = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 152
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !140
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %unselect_all.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 160
  store i32 0, ptr %i.lr, align 4, !tbaa !141
  %i.ls = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 228
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !140
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %unselect_all.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 236
  store i32 0, ptr %i.lw, align 4, !tbaa !141
  %i.lx = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 304
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !140
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %unselect_all.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 312
  store i32 0, ptr %i.mb, align 4, !tbaa !141
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %unselect_all.exit, label %bb.aq

unselect_all.exit:                                ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %spec.select408 = select i1 %.not301, i32 12, i32 0
  store i32 %spec.select408, ptr %i.lc, align 4, !tbaa !141
  br label %.critedge328

.preheader:                                       ; preds = %bb.ao, %bb.aw
  %indvars.iv.i352 = phi i64 [ %indvars.iv.next.i353.4, %bb.aw ], [ 0, %bb.ao ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i352 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !140
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %.critedge328, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store i32 0, ptr %i.mf, align 4, !tbaa !141
  %i.mg = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i352 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 76
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !140
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %.critedge328, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 84
  store i32 0, ptr %i.mk, align 4, !tbaa !141
  %i.ml = getelementptr inbounds nuw [76 x i8], ptr %.fr, i64 %indvars.iv.i352 ; 2 uses
end_hunk_0
begin_hunk_1_@alloc_line_to
define internal fastcc noundef ptr @alloc_line_to(ptr nofree captures(ret: address, provenance) %.680.val, ptr nofree writeonly captures(none) %.704.val, <2 x float> noundef %0) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %i.a = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.i ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !140
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.g = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !140
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.j = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !140
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !140
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
  store i32 %i.p, ptr %.704.val, align 4, !tbaa !11
  %i.q = trunc i64 %indvars.iv.i.lcssa to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.q, ptr %i.r, align 1, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.s, align 4, !tbaa !139
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.t, align 2, !tbaa !177
  store <4 x i32> <i32 2, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.v, align 4, !tbaa !78
  %i.w = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.x = shufflevector <4 x float> %i.w, <4 x float> <float poison, float poison, float 5.000000e-01, float 7.500000e-01>, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 6, i32 7>
  store <8 x float> %i.x, ptr %i.u, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.y, align 4, !tbaa !77
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !140
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.g = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !140
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.j = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !140
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !140
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
  store i32 %i.p, ptr %.704.val, align 4, !tbaa !11
  %i.q = trunc i64 %indvars.iv.i.lcssa to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.q, ptr %i.r, align 1, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.s, align 4, !tbaa !139
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.t, align 2, !tbaa !177
  store <4 x i32> <i32 3, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 60
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.w, align 4, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.x = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> %i.x, <4 x float> <float poison, float poison, float 5.000000e-01, float 7.500000e-01>, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 6, i32 7>
  store <8 x float> %i.y, ptr %i.v, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.z, align 4, !tbaa !77
  br label %node_alloc.exit.thread

node_alloc.exit.thread:                           ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.lcssa, %bb.h ], [ null, %bb.g ]
  ret ptr %i.aa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @node_delete(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i8, ptr %i.a, align 4, !tbaa !139  ; 2 uses
  %i.b = icmp eq i8 %.val, -1                     ; 2 uses
  %i.c = sext i8 %.val to i64
  %i.d = getelementptr inbounds [76 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 18         ; 2 uses
  %.val20 = load i8, ptr %i.e, align 2, !tbaa !177 ; 3 uses
  %i.f = icmp ne i8 %.val20, -1
  %i.g = sext i8 %.val20 to i64
  %i.h = getelementptr inbounds [76 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = icmp ne ptr %0, null
  %i.j = and i1 %i.i, %i.f                        ; 2 uses
  %or.cond = select i1 %i.b, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 -1, ptr %i.k, align 4, !tbaa !139
  store i32 1, ptr %i.h, align 4, !tbaa !140
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %0, null
  %i.m = or i1 %i.l, %i.b
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 %.val20, ptr %i.n, align 2, !tbaa !177
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.p = load i8, ptr %i.o, align 1, !tbaa !190
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %i.p, ptr %i.q, align 4, !tbaa !139
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  store i8 -1, ptr %i.e, align 2, !tbaa !177
  store i8 -1, ptr %i.a, align 4, !tbaa !139
  store i32 0, ptr %1, align 4, !tbaa !140
  br label %bb.g

bb.g:                                             ; preds = %bb.p, %bb.f
  %.03946.i = phi i32 [ 99, %bb.f ], [ %i.ba, %bb.p ] ; 12 uses
  %i.r = zext nneg i32 %.03946.i to i64
  %i.s = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !140
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.h, label %2

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %.03946.i, -1                ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !140
  %.not.i.1 = icmp eq i32 %i.x, 0
  br i1 %.not.i.1, label %bb.i, label %2

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %.03946.i, -2                ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !140
  %.not.i.2 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.2, label %bb.j, label %2

bb.j:                                             ; preds = %bb.i
  %i.ac = add nsw i32 %.03946.i, -3               ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !140
  %.not.i.3 = icmp eq i32 %i.af, 0
  br i1 %.not.i.3, label %bb.k, label %2

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %.03946.i, -4               ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !140
  %.not.i.4 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.4, label %bb.l, label %2

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %.03946.i, -5               ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !140
  %.not.i.5 = icmp eq i32 %i.an, 0
  br i1 %.not.i.5, label %bb.m, label %2

bb.m:                                             ; preds = %bb.l
  %i.ao = add nsw i32 %.03946.i, -6               ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !140
  %.not.i.6 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.6, label %bb.n, label %2

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %.03946.i, -7               ; 2 uses
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !140
  %.not.i.7 = icmp eq i32 %i.av, 0
  br i1 %.not.i.7, label %bb.o, label %2

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %.03946.i, -8               ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !140
  %.not.i.8 = icmp eq i32 %i.az, 0
  br i1 %.not.i.8, label %bb.p, label %2

bb.p:                                             ; preds = %bb.o
  %i.ba = add nsw i32 %.03946.i, -9
  %i.bb = icmp sgt i32 %.03946.i, 9
  br i1 %i.bb, label %bb.g, label %.lr.ph52.i.preheader

2:                                                ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.03946.i.lcssa = phi i32 [ %.03946.i, %bb.g ], [ %i.u, %bb.h ], [ %i.y, %bb.i ], [ %i.ac, %bb.j ], [ %i.ag, %bb.k ], [ %i.ak, %bb.l ], [ %i.ao, %bb.m ], [ %i.as, %bb.n ], [ %i.aw, %bb.o ] ; 3 uses
  %.not4148.i = icmp slt i32 %.03946.i.lcssa, 0
  br i1 %.not4148.i, label %iter.check, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %bb.p, %2
  %.14049.i.ph = phi i32 [ %.03946.i.lcssa, %2 ], [ 0, %bb.p ]
  br label %.lr.ph52.i

.preheader.i:                                     ; preds = %bb.w
  %i.bc = icmp slt i32 %.2.i, 99
  br i1 %i.bc, label %iter.check, label %node_gc.exit

iter.check:                                       ; preds = %.preheader.i, %2
  %.140.lcssa65.i = phi i32 [ %.2.i, %.preheader.i ], [ %.03946.i.lcssa, %2 ]
  %i.bd = sext i32 %.140.lcssa65.i to i64         ; 6 uses
  %i.be = sub nsw i64 99, %i.bd                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.be, 8
  br i1 %min.iters.check, label %.lr.ph54.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i64 %i.be, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %i.be, 24
  %n.vec = and i64 %i.be, -32                     ; 4 uses
  %i.bg = add nsw i64 %n.vec, %i.bd               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.bh = add nsw <8 x i64> %vec.ind, splat (i64 1)
  %i.bi = add nsw <8 x i64> %vec.ind, splat (i64 9)
  %i.bj = add nsw <8 x i64> %vec.ind, splat (i64 17)
  %i.bk = add nsw <8 x i64> %vec.ind, splat (i64 25)
  %wide.gep = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bh
  %wide.gep27 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bi
  %wide.gep28 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bj
  %wide.gep29 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bk
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !140
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true)), !tbaa !140
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep28, <8 x i1> splat (i1 true)), !tbaa !140
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true)), !tbaa !140
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %node_gc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.i.preheader, label %vec.epilog.ph, !prof !192

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.bg, %vec.epilog.iter.check ], [ %i.bd, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.be, -8                    ; 3 uses
  %i.bm = add nsw i64 %n.vec30, %i.bd
  %broadcast.splatinsert31 = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat32 = shufflevector <8 x i64> %broadcast.splatinsert31, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction33 = add nsw <8 x i64> %broadcast.splat32, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ]
  %vec.ind35 = phi <8 x i64> [ %induction33, %vec.epilog.ph ], [ %vec.ind.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.bn = add nsw <8 x i64> %vec.ind35, splat (i64 1)
  %wide.gep36 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bn
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep36, <8 x i1> splat (i1 true)), !tbaa !140
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %vec.ind.next38 = add nsw <8 x i64> %vec.ind35, splat (i64 8)
  %i.bo = icmp eq i64 %index.next37, %n.vec30
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.be, %n.vec30
  br i1 %cmp.n39, label %node_gc.exit, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph54.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %bb.w
  %.03850.i = phi i32 [ %.1.i, %bb.w ], [ 0, %.lr.ph52.i.preheader ] ; 5 uses
  %.14049.i = phi i32 [ %.2.i, %bb.w ], [ %.14049.i.ph, %.lr.ph52.i.preheader ] ; 4 uses
  %i.bp = sext i32 %.03850.i to i64               ; 2 uses
  %i.bq = getelementptr inbounds [76 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !140
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.preheader45.i, label %bb.v

.preheader45.i:                                   ; preds = %.lr.ph52.i
  %i.bt = icmp sgt i32 %.14049.i, 0
  br i1 %i.bt, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader45.i
  %wide.trip.count.i = zext nneg i32 %.14049.i to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.u, %.preheader45.i
  %i.bu = add nsw i32 %.14049.i, -1
  br label %bb.w

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.u ] ; 4 uses
  %.not42.i = icmp slt i64 %indvars.iv.i, %i.bp
  br i1 %.not42.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.bv = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.bv, ptr noundef nonnull align 4 dereferenceable(76) %i.bw, i64 76, i1 false), !tbaa.struct !194
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 17 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !190
  %i.bz = add i8 %i.by, -1
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !190
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.q, %.lr.ph.i
  %i.ca = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !139 ; 2 uses
  %i.cd = sext i8 %i.cc to i32
  %.not43.i = icmp sgt i32 %.03850.i, %i.cd
  br i1 %.not43.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge.i
  %i.ce = add i8 %i.cc, -1
  store i8 %i.ce, ptr %i.cb, align 4, !tbaa !139
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 18 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !177 ; 2 uses
  %i.ch = sext i8 %i.cg to i32
  %.not44.i = icmp sgt i32 %.03850.i, %i.ch
  br i1 %.not44.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = add i8 %i.cg, -1
  store i8 %i.ci, ptr %i.cf, align 2, !tbaa !177
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.v:                                             ; preds = %.lr.ph52.i
  %i.cj = add nsw i32 %.03850.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i
  %.2.i = phi i32 [ %i.bu, %._crit_edge.i ], [ %.14049.i, %bb.v ] ; 4 uses
  %.1.i = phi i32 [ %.03850.i, %._crit_edge.i ], [ %i.cj, %bb.v ] ; 2 uses
  %.not41.i = icmp sgt i32 %.1.i, %.2.i
  br i1 %.not41.i, label %.preheader.i, label %.lr.ph52.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %.lr.ph54.i ], [ %indvars.iv57.i.ph, %.lr.ph54.i.preheader ]
  %indvars.iv.next58.i = add nsw i64 %indvars.iv57.i, 1 ; 3 uses
  %i.ck = getelementptr inbounds [76 x i8], ptr %0, i64 %indvars.iv.next58.i
  store i32 0, ptr %i.ck, align 4, !tbaa !140
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 99
  br i1 %exitcond60.not.i, label %node_gc.exit, label %.lr.ph54.i, !llvm.loop !250

node_gc.exit:                                     ; preds = %.lr.ph54.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mix_warps(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> noundef %3, float noundef %4) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.c, align 4, !tbaa !78
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
  %i.z = fadd reassoc nsz arcp contract afn float %i.r, %i.y
  %.sroa.064.0.vec.extract = extractelement <2 x float> %3, i64 0
  %.sroa.064.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %.sroa.064.0.vec.extract
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.aa, ptr %i.ab, align 4
  store float %.sroa.064.4.vec.extract, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load <2 x float>, ptr %i.ad, align 4
  %i.af = load <2 x float>, ptr %1, align 4
  %i.ag = fsub reassoc nsz arcp contract afn <2 x float> %i.ae, %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load <2 x float>, ptr %i.ah, align 4
  %i.aj = load <2 x float>, ptr %2, align 4
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> %i.ai, %i.aj ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.ag) #31 ; 5 uses
  %i.am = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.ak) #31 ; 4 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.al, 0.000000e+00
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.am, f0xBFC90FDB
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.al, f0xBFC90FDB
  %i.aq = fcmp reassoc nsz arcp contract afn ogt float %i.am, 0.000000e+00
  %or.cond3 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink86 = phi float [ f0x40490FDB, %bb.a ], [ f0xC0490FDB, %bb.b ]
  %.sink = phi float [ f0xC0490FDB, %bb.a ], [ f0x40490FDB, %bb.b ]
  %i.ar = fsub reassoc nsz arcp contract afn float %.sink86, %i.al ; 2 uses
  %i.as = fadd reassoc nsz arcp contract afn float %i.am, %i.ar
  %i.at = fsub reassoc nsz arcp contract afn float %.sink, %i.as
  %i.au = fmul reassoc nsz arcp contract afn float %4, %i.at
  %i.av = fadd reassoc nsz arcp contract afn float %i.ar, %i.au
  %i.aw = fsub reassoc nsz arcp contract afn float f0x40490FDB, %i.av
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ax = fsub reassoc nsz arcp contract afn float %i.am, %i.al
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %4
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.al
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = phi reassoc nsz arcp contract afn float [ %i.aw, %bb.c ], [ %i.az, %bb.d ] ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ak) #31
  %i.bc = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ag) #31 ; 2 uses
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bb, %i.bc
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %4
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.bc
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ba, 0.000000e+00
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %i.bg, i64 0
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %i.ba, i64 1
  %i.bh = tail call reassoc nsz arcp contract afn <2 x float> @cexpf(<2 x float> noundef %.sroa.04.4.vec.insert) #31
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bh
  %i.bm = fadd reassoc nsz arcp contract afn <2 x float> %i.bl, %3
  store <2 x float> %i.bm, ptr %i.bi, align 4
  store <2 x float> %3, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.b, align 8, !tbaa !147 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 704
  %.val1 = load ptr, ptr %i.c, align 16, !tbaa !146
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %.0141.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.4, %bb.g ] ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !140  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split.loop.exit.i, label %bb.c

end_hunk_1
