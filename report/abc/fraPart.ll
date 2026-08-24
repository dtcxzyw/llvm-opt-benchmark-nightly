Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraPart?download=true
inline.NumInlined: 109
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Fra_ManPartitionTest:bb.a
  %i.fb = phi ptr [ %i.fa, %bb.aa ], [ null, %Abc_Clock.exit170 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 6 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !43
  %.val152 = load i32, ptr %i.eu, align 4, !tbaa !38 ; 2 uses
  %i.fd = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 6 uses
  %i.fe = add i32 %.val152, -1
  %or.cond.i172 = icmp ult i32 %i.fe, 15
  %spec.store.select.i173 = select i1 %or.cond.i172, i32 16, i32 %.val152 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 3 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !32
  store i32 %spec.store.select.i173, ptr %i.fd, align 8, !tbaa !48
  %.not.i174 = icmp eq i32 %spec.store.select.i173, 0
  br i1 %.not.i174, label %Vec_IntAlloc.exit, label %bb.ab

bb.ab:                                            ; preds = %Vec_PtrAlloc.exit
  %i.fg = sext i32 %spec.store.select.i173 to i64
  %i.fh = shl nsw i64 %i.fg, 2
  %i.fi = call noalias ptr @malloc(i64 noundef %i.fh) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %Vec_PtrAlloc.exit, %bb.ab
  %i.fj = phi ptr [ %i.fi, %bb.ab ], [ null, %Vec_PtrAlloc.exit ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 5 uses
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !42
  %.val151 = load i32, ptr %i.eu, align 4, !tbaa !38 ; 2 uses
  %i.fl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 6 uses
  %i.fm = add i32 %.val151, -1
  %or.cond.i175 = icmp ult i32 %i.fm, 15
  %spec.store.select.i176 = select i1 %or.cond.i175, i32 16, i32 %.val151 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 3 uses
  store i32 0, ptr %i.fn, align 4, !tbaa !32
  store i32 %spec.store.select.i176, ptr %i.fl, align 8, !tbaa !48
  %.not.i177 = icmp eq i32 %spec.store.select.i176, 0
  br i1 %.not.i177, label %Vec_IntAlloc.exit178, label %bb.ac

bb.ac:                                            ; preds = %Vec_IntAlloc.exit
  %i.fo = sext i32 %spec.store.select.i176 to i64
  %i.fp = shl nsw i64 %i.fo, 2
  %i.fq = call noalias ptr @malloc(i64 noundef %i.fp) #17
  br label %Vec_IntAlloc.exit178

Vec_IntAlloc.exit178:                             ; preds = %Vec_IntAlloc.exit, %bb.ac
  %i.fr = phi ptr [ %i.fq, %bb.ac ], [ null, %Vec_IntAlloc.exit ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 6 uses
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !42
  %i.ft = load ptr, ptr %i.r, align 8, !tbaa !12  ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  %.val123272 = load i32, ptr %i.fu, align 4, !tbaa !27
  %i.fv = icmp sgt i32 %.val123272, 0
  br i1 %i.fv, label %.lr.ph278, label %.critedge6

.lr.ph278:                                        ; preds = %Vec_IntAlloc.exit178
  %i.fw = getelementptr i8, ptr %i.f, i64 8       ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph278, %bb.bt
  %i.fx = phi ptr [ %i.fr, %.lr.ph278 ], [ %i.nd, %bb.bt ]
  %i.fy = phi ptr [ %i.fj, %.lr.ph278 ], [ %i.ne, %bb.bt ]
  %i.fz = phi i32 [ %spec.store.select.i, %.lr.ph278 ], [ %i.nf, %bb.bt ] ; 2 uses
  %i.ga = phi i32 [ 0, %.lr.ph278 ], [ %i.ng, %bb.bt ] ; 2 uses
  %i.gb = phi ptr [ %i.ft, %.lr.ph278 ], [ %i.nh, %bb.bt ] ; 2 uses
  %indvars.iv295 = phi i64 [ 0, %.lr.ph278 ], [ %indvars.iv.next296, %bb.bt ] ; 3 uses
  %.0104277 = phi double [ 0.000000e+00, %.lr.ph278 ], [ %.1, %bb.bt ] ; 3 uses
  %.0105276 = phi i32 [ 0, %.lr.ph278 ], [ %.2, %bb.bt ] ; 2 uses
  %.0107275 = phi i32 [ 0, %.lr.ph278 ], [ %.1108, %bb.bt ] ; 2 uses
  %.0109274 = phi i32 [ 0, %.lr.ph278 ], [ %.1110, %bb.bt ] ; 2 uses
  %.val131 = load ptr, ptr %i.fw, align 8, !tbaa !29
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.val131, i64 %indvars.iv295
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !31 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 4      ; 4 uses
  %.val144 = load i32, ptr %i.ge, align 4, !tbaa !32 ; 4 uses
  %i.gf = icmp slt i32 %.val144, 2
  br i1 %i.gf, label %bb.bt, label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.ad
  %i.gg = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 %.val144, ptr %i.gh, align 4, !tbaa !32
  store i32 %.val144, ptr %i.gg, align 8, !tbaa !48
  %i.gi = zext nneg i32 %.val144 to i64
  %i.gj = shl nuw nsw i64 %i.gi, 2                ; 2 uses
  %i.gk = call noalias ptr @malloc(i64 noundef %i.gj) #17 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !42
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gk, ptr align 4 %i.gn, i64 %i.gj, i1 false)
  %i.go = getelementptr i8, ptr %i.gb, i64 4
  %.val264 = load i32, ptr %i.go, align 4, !tbaa !27
  %i.gp = icmp sgt i32 %.val264, 0
  br i1 %i.gp, label %.lr.ph269, label %.critedge8

.lr.ph269:                                        ; preds = %Vec_IntDup.exit, %Vec_IntTwoCountCommon.exit.thread
  %i.gq = phi ptr [ %i.kk, %Vec_IntTwoCountCommon.exit.thread ], [ %i.gb, %Vec_IntDup.exit ] ; 3 uses
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %Vec_IntTwoCountCommon.exit.thread ], [ 0, %Vec_IntDup.exit ] ; 2 uses
  %.0111268 = phi i32 [ %.1112, %Vec_IntTwoCountCommon.exit.thread ], [ 0, %Vec_IntDup.exit ] ; 4 uses
  %.0113267 = phi i32 [ %.1114, %Vec_IntTwoCountCommon.exit.thread ], [ 0, %Vec_IntDup.exit ] ; 4 uses
  %.0120265 = phi ptr [ %.1121, %Vec_IntTwoCountCommon.exit.thread ], [ %i.gg, %Vec_IntDup.exit ] ; 6 uses
  %.val130 = load ptr, ptr %i.fw, align 8, !tbaa !29
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.val130, i64 %indvars.iv292
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !31 ; 2 uses
  %.val154 = load i32, ptr %i.ge, align 4, !tbaa !32 ; 2 uses
  %.val155 = load ptr, ptr %i.gm, align 8, !tbaa !42 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 4
  %.val156 = load i32, ptr %i.gt, align 4, !tbaa !32 ; 3 uses
  %i.gu = getelementptr i8, ptr %i.gs, i64 8      ; 2 uses
  %.val157 = load ptr, ptr %i.gu, align 8, !tbaa !42 ; 2 uses
  %i.gv = sext i32 %.val154 to i64
  %.idx.i = shl nsw i64 %i.gv, 2
  %i.gw = getelementptr inbounds i8, ptr %.val155, i64 %.idx.i
  %i.gx = sext i32 %.val156 to i64
  %.idx8.i = shl nsw i64 %i.gx, 2                 ; 3 uses
  %i.gy = getelementptr inbounds i8, ptr %.val157, i64 %.idx8.i
  %i.gz = icmp sgt i32 %.val154, 0
  %i.ha = icmp sgt i32 %.val156, 0
  %i.hb = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %i.hb, label %.lr.ph.i182, label %Vec_IntTwoCountCommon.exit.thread

.lr.ph.i182:                                      ; preds = %.lr.ph269, %bb.ai
  %.07.i = phi i32 [ %.1.i, %bb.ai ], [ 0, %.lr.ph269 ] ; 3 uses
  %.0196.i = phi ptr [ %.120.i, %bb.ai ], [ %.val157, %.lr.ph269 ] ; 4 uses
  %.0215.i = phi ptr [ %.122.i, %bb.ai ], [ %.val155, %.lr.ph269 ] ; 4 uses
  %i.hc = load i32, ptr %.0215.i, align 4, !tbaa !38 ; 2 uses
  %i.hd = load i32, ptr %.0196.i, align 4, !tbaa !38 ; 2 uses
  %i.he = icmp eq i32 %i.hc, %i.hd
  br i1 %i.he, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i182
  %i.hf = getelementptr inbounds nuw i8, ptr %.0215.i, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %.0196.i, i64 4
  %i.hh = add nsw i32 %.07.i, 1
  br label %bb.ai

bb.af:                                            ; preds = %.lr.ph.i182
  %i.hi = icmp slt i32 %i.hc, %i.hd
  br i1 %i.hi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hj = getelementptr inbounds nuw i8, ptr %.0215.i, i64 4
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.hk = getelementptr inbounds nuw i8, ptr %.0196.i, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.122.i = phi ptr [ %i.hf, %bb.ae ], [ %i.hj, %bb.ag ], [ %.0215.i, %bb.ah ] ; 2 uses
  %.120.i = phi ptr [ %i.hg, %bb.ae ], [ %.0196.i, %bb.ag ], [ %i.hk, %bb.ah ] ; 2 uses
  %.1.i = phi i32 [ %i.hh, %bb.ae ], [ %.07.i, %bb.ag ], [ %.07.i, %bb.ah ] ; 3 uses
  %i.hl = icmp ult ptr %.122.i, %i.gw
  %i.hm = icmp ult ptr %.120.i, %i.gy
  %i.hn = select i1 %i.hl, i1 %i.hm, i1 false
  br i1 %i.hn, label %.lr.ph.i182, label %Vec_IntTwoCountCommon.exit, !llvm.loop !49

Vec_IntTwoCountCommon.exit:                       ; preds = %bb.ai
  %i.ho = icmp slt i32 %.1.i, 2
  br i1 %i.ho, label %Vec_IntTwoCountCommon.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %Vec_IntTwoCountCommon.exit
  %i.hp = icmp sgt i32 %.1.i, %1
  br i1 %i.hp, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.hq = getelementptr inbounds nuw i8, ptr %.0120265, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !32 ; 3 uses
  %i.hs = add nsw i32 %i.hr, %.val156             ; 2 uses
  %i.ht = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 4 uses
  %i.hu = add nsw i32 %i.hs, -1
  %or.cond.i.i183 = icmp ult i32 %i.hu, 15
  %spec.store.select.i.i184 = select i1 %or.cond.i.i183, i32 16, i32 %i.hs ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 2 uses
  store i32 0, ptr %i.hv, align 4, !tbaa !32
  store i32 %spec.store.select.i.i184, ptr %i.ht, align 8, !tbaa !48
  %.not.i.i185 = icmp eq i32 %spec.store.select.i.i184, 0
  br i1 %.not.i.i185, label %Vec_IntAlloc.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hw = sext i32 %spec.store.select.i.i184 to i64
  %i.hx = shl nsw i64 %i.hw, 2
  %i.hy = call noalias ptr @malloc(i64 noundef %i.hx) #17
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.al, %bb.ak
  %i.hz = phi ptr [ %i.hy, %bb.al ], [ null, %bb.ak ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !42
  %i.ib = getelementptr i8, ptr %.0120265, i64 8
  %.val6.i = load ptr, ptr %i.ib, align 8, !tbaa !42 ; 6 uses
  %.val8.i = load ptr, ptr %i.gu, align 8, !tbaa !42 ; 4 uses
  %i.ic = sext i32 %i.hr to i64
  %.idx.i.i = shl nsw i64 %i.ic, 2                ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %.val6.i, i64 %.idx.i.i ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.val8.i, i64 %.idx8.i ; 3 uses
  %i.if = icmp sgt i32 %i.hr, 0
  br i1 %i.if, label %.lr.ph.i.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.aq, %Vec_IntAlloc.exit.i
  %.036.lcssa.i.i = phi ptr [ %i.hz, %Vec_IntAlloc.exit.i ], [ %.137.i.i, %bb.aq ] ; 5 uses
  %.033.lcssa.i.i = phi ptr [ %.val6.i, %Vec_IntAlloc.exit.i ], [ %.134.i.i, %bb.aq ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.val8.i, %Vec_IntAlloc.exit.i ], [ %.1.i.i, %bb.aq ] ; 5 uses
  %.0.lcssa.i.i361 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 3 uses
  %i.ig = icmp ult ptr %.033.lcssa.i.i, %i.id
  br i1 %i.ig, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.033.lcssa.i.i367 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 3 uses
  %.036.lcssa.i.i366 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %i.ih = ptrtoaddr ptr %.val6.i to i64
  %8 = add i64 %.idx.i.i, %i.ih
  %i.ii = add i64 %.033.lcssa.i.i367, 4
  %9 = call i64 @llvm.umax.i64(i64 %8, i64 %i.ii)
  %i.ij = xor i64 %.033.lcssa.i.i367, -1
  %i.ik = add i64 %9, %i.ij                       ; 2 uses
  %i.il = lshr i64 %i.ik, 2
  %i.im = add nuw nsw i64 %i.il, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.ik, 28
  %i.in = sub i64 %.033.lcssa.i.i367, %.036.lcssa.i.i366
  %diff.check368 = icmp ugt i64 %i.in, -32
  %or.cond = select i1 %min.iters.check370, i1 true, i1 %diff.check368
  br i1 %or.cond, label %.lr.ph13.i.i.preheader386, label %vector.ph371

vector.ph371:                                     ; preds = %.lr.ph13.i.i.preheader
  %n.vec372 = and i64 %i.im, 9223372036854775800  ; 3 uses
  %i.io = shl i64 %n.vec372, 2                    ; 2 uses
  %i.ip = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.io
  %i.iq = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.io ; 2 uses
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 2 uses
  %i.ir = shl i64 %index374, 2                    ; 2 uses
  %next.gep375 = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.ir ; 2 uses
  %next.gep376 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.ir ; 2 uses
  %i.is = getelementptr i8, ptr %next.gep375, i64 16
  %wide.load377 = load <4 x i32>, ptr %next.gep375, align 4, !tbaa !38
  %wide.load378 = load <4 x i32>, ptr %i.is, align 4, !tbaa !38
  %i.it = getelementptr i8, ptr %next.gep376, i64 16
  store <4 x i32> %wide.load377, ptr %next.gep376, align 4, !tbaa !38
  store <4 x i32> %wide.load378, ptr %i.it, align 4, !tbaa !38
  %index.next379 = add nuw i64 %index374, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.iu, label %middle.block380, label %vector.body373, !llvm.loop !50

middle.block380:                                  ; preds = %vector.body373
  %cmp.n381 = icmp eq i64 %i.im, %n.vec372
  br i1 %cmp.n381, label %.preheader.i.i, label %.lr.ph13.i.i.preheader386

.lr.ph13.i.i.preheader386:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block380
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.ip, %middle.block380 ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.iq, %middle.block380 ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntAlloc.exit.i, %bb.aq
  %.08.i.i = phi ptr [ %.1.i.i, %bb.aq ], [ %.val8.i, %Vec_IntAlloc.exit.i ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.aq ], [ %.val6.i, %Vec_IntAlloc.exit.i ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.aq ], [ %i.hz, %Vec_IntAlloc.exit.i ] ; 4 uses
  %i.iv = load i32, ptr %.0337.i.i, align 4, !tbaa !38 ; 4 uses
  %i.iw = load i32, ptr %.08.i.i, align 4, !tbaa !38 ; 3 uses
  %i.ix = icmp eq i32 %i.iv, %i.iw
  br i1 %i.ix, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.iv, ptr %.0366.i.i, align 4, !tbaa !38
  %i.iz = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.aq

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.ja = icmp slt i32 %i.iv, %i.iw
  br i1 %i.ja, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jb = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.iv, ptr %.0366.i.i, align 4, !tbaa !38
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.jc = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.iw, ptr %.0366.i.i, align 4, !tbaa !38
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %.134.i.i = phi ptr [ %i.iy, %bb.am ], [ %i.jb, %bb.ao ], [ %.0337.i.i, %bb.ap ] ; 3 uses
  %.1.i.i = phi ptr [ %i.iz, %bb.am ], [ %.08.i.i, %bb.ao ], [ %i.jc, %bb.ap ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.jd = icmp ult ptr %.134.i.i, %i.id
  %i.je = icmp ult ptr %.1.i.i, %i.ie
  %i.jf = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %i.jf, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !53

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block380, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.iq, %middle.block380 ], [ %i.jx, %.lr.ph13.i.i ] ; 5 uses
  %i.jg = icmp ult ptr %.0.lcssa.i.i, %i.ie
  br i1 %i.jg, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i360 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %i.jh = ptrtoaddr ptr %.val8.i to i64
  %10 = add i64 %.idx8.i, %i.jh
  %i.ji = add i64 %.0.lcssa.i.i361, 4
  %11 = call i64 @llvm.umax.i64(i64 %10, i64 %i.ji)
  %i.jj = xor i64 %.0.lcssa.i.i361, -1
  %i.jk = add i64 %11, %i.jj                      ; 2 uses
  %i.jl = lshr i64 %i.jk, 2
  %i.jm = add nuw nsw i64 %i.jl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jk, 28
  %i.jn = sub i64 %.0.lcssa.i.i361, %.238.lcssa.i.i360
  %diff.check = icmp ugt i64 %i.jn, -32
  %or.cond384 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond384, label %.lr.ph17.i.i.preheader385, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph17.i.i.preheader
  %n.vec = and i64 %i.jm, 9223372036854775800     ; 3 uses
  %i.jo = shl i64 %n.vec, 2                       ; 2 uses
  %i.jp = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.jo
  %i.jq = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.jo ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jr = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.jr ; 2 uses
  %next.gep362 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.jr ; 2 uses
  %i.js = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !38
  %wide.load363 = load <4 x i32>, ptr %i.js, align 4, !tbaa !38
  %i.jt = getelementptr i8, ptr %next.gep362, i64 16
  store <4 x i32> %wide.load, ptr %next.gep362, align 4, !tbaa !38
  store <4 x i32> %wide.load363, ptr %i.jt, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jm, %n.vec
  br i1 %cmp.n, label %Vec_IntTwoMerge.exit, label %.lr.ph17.i.i.preheader385

.lr.ph17.i.i.preheader385:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.jp, %middle.block ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.jq, %middle.block ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader386, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.jv, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader386 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.jx, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader386 ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.jw = load i32, ptr %.23512.i.i, align 4, !tbaa !38
  %i.jx = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.jw, ptr %.23811.i.i, align 4, !tbaa !38
  %i.jy = icmp ult ptr %i.jv, %i.id
  br i1 %i.jy, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !55

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader385, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.jz, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader385 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.kb, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader385 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.ka = load i32, ptr %.216.i.i, align 4, !tbaa !38
  %i.kb = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.ka, ptr %.315.i.i, align 4, !tbaa !38
  %i.kc = icmp ult ptr %i.jz, %i.ie
  br i1 %i.kc, label %.lr.ph17.i.i, label %Vec_IntTwoMerge.exit, !llvm.loop !56

Vec_IntTwoMerge.exit:                             ; preds = %.lr.ph17.i.i, %middle.block, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.jq, %middle.block ], [ %i.kb, %.lr.ph17.i.i ]
  %i.kd = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.ke = ptrtoint ptr %i.hz to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = lshr exact i64 %i.kf, 2
  %i.kh = trunc i64 %i.kg to i32
  store i32 %i.kh, ptr %i.hv, align 4, !tbaa !32
  %.not.i186 = icmp eq ptr %.val6.i, null
  br i1 %.not.i186, label %Vec_IntFree.exit, label %bb.ar

bb.ar:                                            ; preds = %Vec_IntTwoMerge.exit
  call void @free(ptr noundef nonnull %.val6.i) #16
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntTwoMerge.exit, %bb.ar
  call void @free(ptr noundef nonnull %.0120265) #16
  %i.ki = add nsw i32 %.0113267, 1
  %.pre302 = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %Vec_IntTwoCountCommon.exit.thread

bb.as:                                            ; preds = %bb.aj
  %i.kj = add nsw i32 %.0111268, 1
  br label %Vec_IntTwoCountCommon.exit.thread

Vec_IntTwoCountCommon.exit.thread:                ; preds = %.lr.ph269, %Vec_IntFree.exit, %bb.as, %Vec_IntTwoCountCommon.exit
  %i.kk = phi ptr [ %i.gq, %Vec_IntTwoCountCommon.exit ], [ %.pre302, %Vec_IntFree.exit ], [ %i.gq, %bb.as ], [ %i.gq, %.lr.ph269 ] ; 2 uses
  %.1121 = phi ptr [ %.0120265, %Vec_IntTwoCountCommon.exit ], [ %i.ht, %Vec_IntFree.exit ], [ %.0120265, %bb.as ], [ %.0120265, %.lr.ph269 ] ; 2 uses
  %.1114 = phi i32 [ %.0113267, %Vec_IntTwoCountCommon.exit ], [ %i.ki, %Vec_IntFree.exit ], [ %.0113267, %bb.as ], [ %.0113267, %.lr.ph269 ] ; 2 uses
  %.1112 = phi i32 [ %.0111268, %Vec_IntTwoCountCommon.exit ], [ %.0111268, %Vec_IntFree.exit ], [ %i.kj, %bb.as ], [ %.0111268, %.lr.ph269 ] ; 2 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %i.kl = getelementptr i8, ptr %i.kk, i64 4
  %.val = load i32, ptr %i.kl, align 4, !tbaa !27
  %i.km = sext i32 %.val to i64
  %i.kn = icmp slt i64 %indvars.iv.next293, %i.km
  br i1 %i.kn, label %.lr.ph269, label %.critedge8.loopexit, !llvm.loop !57

.critedge8.loopexit:                              ; preds = %Vec_IntTwoCountCommon.exit.thread
  %.pre303 = load i32, ptr %i.ex, align 4, !tbaa !27
  %.pre304 = load i32, ptr %i.ev, align 8, !tbaa !44
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %Vec_IntDup.exit
  %i.ko = phi i32 [ %i.fz, %Vec_IntDup.exit ], [ %.pre304, %.critedge8.loopexit ] ; 7 uses
  %i.kp = phi i32 [ %i.ga, %Vec_IntDup.exit ], [ %.pre303, %.critedge8.loopexit ] ; 3 uses
  %.0120.lcssa = phi ptr [ %i.gg, %Vec_IntDup.exit ], [ %.1121, %.critedge8.loopexit ] ; 2 uses
  %.0113.lcssa = phi i32 [ 0, %Vec_IntDup.exit ], [ %.1114, %.critedge8.loopexit ] ; 2 uses
  %.0111.lcssa = phi i32 [ 0, %Vec_IntDup.exit ], [ %.1112, %.critedge8.loopexit ] ; 2 uses
  %i.kq = icmp eq i32 %i.kp, %i.ko
  br i1 %i.kq, label %bb.at, label %.critedge8.Vec_PtrPush.exit_crit_edge

.critedge8.Vec_PtrPush.exit_crit_edge:            ; preds = %.critedge8
  %.pre305 = load ptr, ptr %i.fc, align 8, !tbaa !43
  br label %Vec_PtrPush.exit

bb.at:                                            ; preds = %.critedge8
  %i.kr = icmp slt i32 %i.ko, 16
  br i1 %i.kr, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.ks = load ptr, ptr %i.fc, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i187 = icmp eq ptr %i.ks, null
  br i1 %.not9.i.i187, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kt = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ks, i64 noundef 128) #18
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.aw:                                            ; preds = %bb.au
  %i.ku = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ax:                                            ; preds = %bb.at
  %i.kv = icmp samesign ult i32 %i.ko, 1073741823
  %i.kw = shl nuw nsw i32 %i.ko, 1
  %spec.select.i = select i1 %i.kv, i32 %i.kw, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.ko, %spec.select.i
  %.pre306 = load ptr, ptr %i.fc, align 8, !tbaa !43 ; 3 uses
  br i1 %.not.i10.i, label %bb.ay, label %Vec_PtrPush.exit

bb.ay:                                            ; preds = %bb.ax
  %.not9.i11.i = icmp eq ptr %.pre306, null
  %i.kx = zext nneg i32 %spec.select.i to i64
  %i.ky = shl nuw nsw i64 %i.kx, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kz = call ptr @realloc(ptr noundef nonnull %.pre306, i64 noundef %i.ky) #18
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ba:                                            ; preds = %bb.ay
  %i.la = call noalias ptr @malloc(i64 noundef %i.ky) #17
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.az, %bb.ba, %bb.av, %bb.aw
  %storemerge = phi ptr [ %i.ku, %bb.aw ], [ %i.kt, %bb.av ], [ %i.kz, %bb.az ], [ %i.la, %bb.ba ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.aw ], [ 16, %bb.av ], [ %spec.select.i, %bb.az ], [ %spec.select.i, %bb.ba ] ; 2 uses
  store ptr %storemerge, ptr %i.fc, align 8, !tbaa !43
  store i32 %spec.select.sink.i, ptr %i.ev, align 8, !tbaa !44
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.critedge8.Vec_PtrPush.exit_crit_edge, %bb.ax, %Vec_PtrGrow.exit12.sink.split.i
  %i.lb = phi ptr [ %.pre305, %.critedge8.Vec_PtrPush.exit_crit_edge ], [ %.pre306, %bb.ax ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.lc = phi i32 [ %i.ko, %.critedge8.Vec_PtrPush.exit_crit_edge ], [ %i.ko, %bb.ax ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ] ; 3 uses
  %i.ld = add nsw i32 %i.kp, 1                    ; 4 uses
  store i32 %i.ld, ptr %i.ex, align 4, !tbaa !27
  %i.le = sext i32 %i.kp to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.le
  store ptr %.0120.lcssa, ptr %i.lf, align 8, !tbaa !31
  %i.lg = load i32, ptr %i.ff, align 4, !tbaa !32 ; 7 uses
  %i.lh = load i32, ptr %i.fd, align 8, !tbaa !48
  %i.li = icmp eq i32 %i.lg, %i.lh
  br i1 %i.li, label %bb.bb, label %Vec_PtrPush.exit.Vec_IntPush.exit_crit_edge

Vec_PtrPush.exit.Vec_IntPush.exit_crit_edge:      ; preds = %Vec_PtrPush.exit
  %.pre307 = load ptr, ptr %i.fk, align 8, !tbaa !42
  br label %Vec_IntPush.exit

bb.bb:                                            ; preds = %Vec_PtrPush.exit
  %i.lj = icmp slt i32 %i.lg, 16
  br i1 %i.lj, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.lk = load ptr, ptr %i.fk, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i191 = icmp eq ptr %i.lk, null
  br i1 %.not9.i.i191, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ll = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.lk, i64 noundef 64) #18
  br label %Vec_IntGrow.exit11.sink.split.i

bb.be:                                            ; preds = %bb.bc
  %i.lm = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i

bb.bf:                                            ; preds = %bb.bb
  %i.ln = icmp samesign ult i32 %i.lg, 1073741823
  %i.lo = shl nuw nsw i32 %i.lg, 1
  %spec.select.i189 = select i1 %i.ln, i32 %i.lo, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.lg, %spec.select.i189
  %.pre308 = load ptr, ptr %i.fk, align 8, !tbaa !42 ; 3 uses
end_hunk_0
begin_hunk_1_@Fra_ManPartitionTest2:bb.a
.critedge8:                                       ; preds = %.critedge8.preheader246, %.critedge8
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %.critedge8 ], [ %indvars.iv206.ph, %.critedge8.preheader246 ] ; 2 uses
  %.092175 = phi i32 [ %i.hl, %.critedge8 ], [ %.092175.ph, %.critedge8.preheader246 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv206
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !72
  %i.hk = sext i8 %i.hj to i32
  %i.hl = add nsw i32 %.092175, %i.hk             ; 2 uses
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.critedge8._crit_edge, label %.critedge8, !llvm.loop !78

.critedge8._crit_edge:                            ; preds = %.critedge8, %middle.block, %.critedge8.preheader
  %.092.lcssa = phi i32 [ 0, %.critedge8.preheader ], [ %i.fs, %middle.block ], [ %i.hl, %.critedge8 ]
  %i.hm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.val112, i32 noundef %.092.lcssa) ; 0 uses
  %.pre219 = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aa, %.critedge8._crit_edge
  %i.hn = phi ptr [ %i.fb, %bb.aa ], [ %.pre219, %.critedge8._crit_edge ] ; 2 uses
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 4
  %.val = load i32, ptr %i.ho, align 4, !tbaa !27
  %i.hp = sext i32 %.val to i64
  %i.hq = icmp slt i64 %indvars.iv.next212, %i.hp
  br i1 %i.hq, label %bb.aa, label %.critedge6, !llvm.loop !79

.critedge6:                                       ; preds = %bb.ag, %Abc_Clock.exit130
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.hr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #16
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %Abc_Clock.exit132, label %bb.ah

bb.ah:                                            ; preds = %.critedge6
  %i.ht = load i64, ptr %1, align 8, !tbaa !8
  %i.hu = mul nsw i64 %i.ht, 1000000
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !11
  %i.hx = sdiv i64 %i.hw, 1000
  %i.hy = add nsw i64 %i.hx, %i.hu
  br label %Abc_Clock.exit132

Abc_Clock.exit132:                                ; preds = %.critedge6, %bb.ah
  %.0.i131 = phi i64 [ %i.hy, %bb.ah ], [ -1, %.critedge6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.hz = add i64 %.0.i131, %.0.i129.neg
  %i.ia = sitofp i64 %i.hz to double
  %i.ib = fdiv double %i.ia, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, double noundef %i.ib)
  %.not = icmp eq ptr %i.ew, null
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %Abc_Clock.exit132
  call void @free(ptr noundef nonnull %i.ew) #16
  br label %bb.aj

bb.aj:                                            ; preds = %Abc_Clock.exit132, %bb.ai
  %i.ic = getelementptr i8, ptr %i.f, i64 4       ; 2 uses
  %.val811.i = load i32, ptr %i.ic, align 4, !tbaa !41 ; 2 uses
  %i.id = icmp sgt i32 %.val811.i, 0
  br i1 %i.id, label %.lr.ph.i133, label %.critedge.i

.lr.ph.i133:                                      ; preds = %bb.aj
  %i.ie = getelementptr i8, ptr %i.f, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.an, %.lr.ph.i133
  %.val814.i = phi i32 [ %.val811.i, %.lr.ph.i133 ], [ %.val8.i, %bb.an ]
  %indvars.iv.i134 = phi i64 [ 0, %.lr.ph.i133 ], [ %indvars.iv.next.i138, %bb.an ] ; 2 uses
  %.val.i135 = load ptr, ptr %i.ie, align 8, !tbaa !29
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.val.i135, i64 %indvars.iv.i134
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !31 ; 3 uses
  %.not.i136 = icmp eq ptr %i.ig, null
  br i1 %.not.i136, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !43 ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i137, label %Vec_PtrFree.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.ii) #16
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.am, %bb.al
  call void @free(ptr noundef nonnull %i.ig) #16
  %.val8.pre.i = load i32, ptr %i.ic, align 4, !tbaa !41
  br label %bb.an

bb.an:                                            ; preds = %Vec_PtrFree.exit.i, %bb.ak
  %.val8.i = phi i32 [ %.val814.i, %bb.ak ], [ %.val8.pre.i, %Vec_PtrFree.exit.i ] ; 2 uses
  %indvars.iv.next.i138 = add nuw nsw i64 %indvars.iv.i134, 1 ; 2 uses
  %i.ij = sext i32 %.val8.i to i64
  %i.ik = icmp slt i64 %indvars.iv.next.i138, %i.ij
  br i1 %i.ik, label %bb.ak, label %.critedge.i, !llvm.loop !59

.critedge.i:                                      ; preds = %bb.an, %bb.aj
  %i.il = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !43 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.im, null
  br i1 %.not.i9.i, label %Vec_VecFree.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i
  call void @free(ptr noundef nonnull %i.im) #16
  br label %Vec_VecFree.exit

Vec_VecFree.exit:                                 ; preds = %.critedge.i, %bb.ao
  call void @free(ptr noundef nonnull %i.f) #16
  %i.in = icmp sgt i32 %.val811.i139, 0
  br i1 %i.in, label %.lr.ph.i142.preheader, label %.critedge.i140

.lr.ph.i142.preheader:                            ; preds = %Vec_VecFree.exit
  %i.io = zext nneg i32 %.val811.i139 to i64
  br label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %.lr.ph.i142.preheader, %bb.ar
  %indvars.iv.i144 = phi i64 [ %indvars.iv.next.i151, %bb.ar ], [ 0, %.lr.ph.i142.preheader ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i144
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !31 ; 3 uses
  %.not.i146 = icmp eq ptr %i.iq, null
  br i1 %.not.i146, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i142
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !43 ; 2 uses
  %.not.i.i147 = icmp eq ptr %i.is, null
  br i1 %.not.i.i147, label %Vec_PtrFree.exit.i148, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.is) #16
  br label %Vec_PtrFree.exit.i148

Vec_PtrFree.exit.i148:                            ; preds = %bb.aq, %bb.ap
  call void @free(ptr noundef nonnull %i.iq) #16
  br label %bb.ar

bb.ar:                                            ; preds = %Vec_PtrFree.exit.i148, %.lr.ph.i142
  %indvars.iv.next.i151 = add nuw nsw i64 %indvars.iv.i144, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next.i151, %i.io
  br i1 %exitcond214.not, label %.critedge.i140.thread, label %.lr.ph.i142, !llvm.loop !59

.critedge.i140:                                   ; preds = %Vec_VecFree.exit
  %.not.i9.i141 = icmp eq ptr %i.ee, null
  br i1 %.not.i9.i141, label %Vec_VecFree.exit152, label %.critedge.i140.thread

.critedge.i140.thread:                            ; preds = %bb.ar, %.critedge.i140
  call void @free(ptr noundef nonnull %i.ee) #16
  br label %Vec_VecFree.exit152

Vec_VecFree.exit152:                              ; preds = %.critedge.i140, %.critedge.i140.thread
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"timespec", !10, i64 0, !10, i64 8}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!13, !16, i64 24}
!13 = !{!"Aig_Man_t_", !14, i64 0, !14, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !17, i64 48, !18, i64 56, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !6, i64 128, !5, i64 156, !19, i64 160, !5, i64 168, !21, i64 176, !5, i64 184, !22, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !21, i64 216, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !19, i64 248, !19, i64 256, !5, i64 264, !23, i64 272, !24, i64 280, !5, i64 288, !15, i64 296, !15, i64 304, !5, i64 312, !5, i64 316, !5, i64 320, !19, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !21, i64 368, !21, i64 376, !16, i64 384, !24, i64 392, !24, i64 400, !25, i64 408, !16, i64 416, !26, i64 424, !16, i64 432, !5, i64 440, !24, i64 448, !22, i64 456, !24, i64 464, !24, i64 472, !5, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !16, i64 512, !16, i64 520}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTS10Vec_Ptr_t_", !15, i64 0}
!17 = !{!"p1 _ZTS10Aig_Obj_t_", !15, i64 0}
!18 = !{!"Aig_Obj_t_", !6, i64 0, !17, i64 8, !17, i64 16, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 28, !5, i64 31, !5, i64 32, !5, i64 36, !6, i64 40}
!19 = !{!"p2 _ZTS10Aig_Obj_t_", !20, i64 0}
!20 = !{!"any p2 pointer", !15, i64 0}
!21 = !{!"p1 int", !15, i64 0}
!22 = !{!"p1 _ZTS10Vec_Vec_t_", !15, i64 0}
!23 = !{!"p1 _ZTS14Aig_MmFixed_t_", !15, i64 0}
!24 = !{!"p1 _ZTS10Vec_Int_t_", !15, i64 0}
!25 = !{!"p1 _ZTS10Abc_Cex_t_", !15, i64 0}
!26 = !{!"p1 _ZTS10Aig_Man_t_", !15, i64 0}
!27 = !{!28, !5, i64 4}
!28 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !20, i64 8}
!29 = !{!30, !20, i64 8}
!30 = !{!"Vec_Vec_t_", !5, i64 0, !5, i64 4, !20, i64 8}
!31 = !{!15, !15, i64 0}
!32 = !{!33, !5, i64 4}
!33 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !21, i64 8}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!5, !5, i64 0}
!39 = !{!30, !5, i64 0}
!40 = distinct !{!40, !35}
!41 = !{!30, !5, i64 4}
!42 = !{!33, !21, i64 8}
!43 = !{!28, !20, i64 8}
!44 = !{!28, !5, i64 0}
!45 = distinct !{!45, !35}
!46 = distinct !{!46, !35}
!47 = distinct !{!47, !35}
!48 = !{!33, !5, i64 0}
!49 = distinct !{!49, !35}
!50 = distinct !{!50, !35, !51, !52}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = distinct !{!53, !35}
!54 = distinct !{!54, !35, !51, !52}
!55 = distinct !{!55, !35, !51}
!56 = distinct !{!56, !35, !51}
!57 = distinct !{!57, !35}
!58 = distinct !{!58, !35}
!59 = distinct !{!59, !35}
!60 = !{!20, !20, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!63 = !{!64}
!64 = distinct !{!64, !65, !"vprintf: argument 0"}
!65 = distinct !{!65, !"vprintf"}
!66 = distinct !{null}
!67 = distinct !{!67, !35}
!68 = distinct !{!68, !37}
!69 = !{!13, !5, i64 116}
!70 = distinct !{!70, !35}
!71 = distinct !{!71, !35}
!72 = !{!6, !6, i64 0}
!73 = distinct !{!73, !35, !51, !52}
!74 = distinct !{!74, !35}
!75 = distinct !{!75, !37}
!76 = distinct !{!76, !35}
!77 = distinct !{!77, !35}
!78 = distinct !{!78, !35, !52, !51}
!79 = distinct !{!79, !35}
end_hunk_1
