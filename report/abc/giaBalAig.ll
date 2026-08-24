Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaBalAig?download=true
inline.NumInlined: 639
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Dam_ManCreatePairs:bb.a

.critedge:                                        ; preds = %bb.c, %.critedge2, %Vec_IntAlloc.exit
  %.0198.lcssa = phi i32 [ 0, %Vec_IntAlloc.exit ], [ %.1199, %.critedge2 ], [ %.0198440, %bb.c ] ; 3 uses
  %.0196.lcssa = phi i32 [ 0, %Vec_IntAlloc.exit ], [ %.1197, %.critedge2 ], [ %.0196441, %bb.c ] ; 2 uses
  %.0186.lcssa = phi i32 [ 0, %Vec_IntAlloc.exit ], [ %.4190, %.critedge2 ], [ %.0186442, %bb.c ] ; 4 uses
  %.0.lcssa = phi i32 [ 0, %Vec_IntAlloc.exit ], [ %.4, %.critedge2 ], [ %.0443, %bb.c ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.pre503, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !12 ; 2 uses
  %.not.i302 = icmp eq ptr %i.iu, null
  br i1 %.not.i302, label %Vec_IntFree.exit, label %bb.be

bb.be:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.iu) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.be
  tail call void @free(ptr noundef nonnull %.pre503) #29
  %i.iv = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !12 ; 2 uses
  %.not.i303 = icmp eq ptr %i.ix, null
  br i1 %.not.i303, label %Vec_IntFree.exit304, label %bb.bf

bb.bf:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ix) #29
  br label %Vec_IntFree.exit304

Vec_IntFree.exit304:                              ; preds = %Vec_IntFree.exit, %bb.bf
  tail call void @free(ptr noundef nonnull %i.iv) #29
  %i.iy = mul nsw i32 %.0186.lcssa, 3
  %i.iz = sdiv i32 %i.iy, 2
  %i.ja = tail call fastcc ptr @Hash_IntManStart(i32 noundef %i.iz)
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !95
  %i.jc = shl nsw i32 %.0186.lcssa, 1             ; 5 uses
  %i.jd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.je = add i32 %i.jc, -1
  %or.cond.i305 = icmp ult i32 %i.je, 15
  %spec.store.select.i306 = select i1 %or.cond.i305, i32 16, i32 %i.jc ; 8 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store i32 %spec.store.select.i306, ptr %i.jd, align 8, !tbaa !117
  %.not.i307 = icmp eq i32 %spec.store.select.i306, 0 ; 3 uses
  br i1 %.not.i307, label %Vec_FltGrow.exit12.sink.split.i, label %Vec_FltAlloc.exit

Vec_FltAlloc.exit:                                ; preds = %Vec_IntFree.exit304
  %i.jg = sext i32 %spec.store.select.i306 to i64
  %i.jh = shl nsw i64 %i.jg, 2
  %i.ji = tail call noalias ptr @malloc(i64 noundef %i.jh) #28 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !67
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.jd, ptr %i.jk, align 8, !tbaa !118
  %i.jl = tail call i32 @llvm.smax.i32(i32 %spec.store.select.i306, i32 16)
  %i.jm = or disjoint i32 %i.jl, 1
  br label %Vec_FltPush.exit

Vec_FltGrow.exit12.sink.split.i:                  ; preds = %Vec_IntFree.exit304
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.jd, ptr %i.jo, align 8, !tbaa !118
  %i.jp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 2 uses
  store ptr %i.jp, ptr %i.jn, align 8, !tbaa !67
  store i32 16, ptr %i.jd, align 8, !tbaa !117
  br label %Vec_FltPush.exit

Vec_FltPush.exit:                                 ; preds = %Vec_FltAlloc.exit, %Vec_FltGrow.exit12.sink.split.i
  %.val255 = phi i32 [ %i.jm, %Vec_FltAlloc.exit ], [ 17, %Vec_FltGrow.exit12.sink.split.i ] ; 2 uses
  %i.jq = phi ptr [ %i.ji, %Vec_FltAlloc.exit ], [ %i.jp, %Vec_FltGrow.exit12.sink.split.i ]
  %i.jr = phi ptr [ %i.jk, %Vec_FltAlloc.exit ], [ %i.jo, %Vec_FltGrow.exit12.sink.split.i ]
  %i.js = phi ptr [ %i.jj, %Vec_FltAlloc.exit ], [ %i.jn, %Vec_FltGrow.exit12.sink.split.i ]
  store i32 1, ptr %i.jf, align 4, !tbaa !119
  store float 1.000000e+09, ptr %i.jq, align 4, !tbaa !70
  %i.jt = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #31 ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store i32 1, ptr %i.ju, align 4, !tbaa !120
  store i32 %.val255, ptr %i.jt, align 8, !tbaa !121
  %i.jv = zext nneg i32 %.val255 to i64
  %i.jw = shl nuw nsw i64 %i.jv, 2                ; 4 uses
  %i.jx = tail call noalias ptr @malloc(i64 noundef %i.jw) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jx, i8 -1, i64 %i.jw, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !94
  %i.jz = tail call noalias ptr @malloc(i64 noundef %i.jw) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jz, i8 -1, i64 %i.jw, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !90
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.jt, ptr %i.kb, align 8, !tbaa !122
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store ptr %i.js, ptr %i.kc, align 8, !tbaa !123
  %i.kd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  store i32 %spec.store.select.i306, ptr %i.kd, align 8, !tbaa !16
  br i1 %.not.i307, label %Vec_IntGrow.exit11.sink.split.i319, label %Vec_IntAlloc.exit315

Vec_IntAlloc.exit315:                             ; preds = %Vec_FltPush.exit
  %i.kf = sext i32 %spec.store.select.i306 to i64
  %i.kg = shl nsw i64 %i.kf, 2
  %i.kh = tail call noalias ptr @malloc(i64 noundef %i.kg) #28 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !12
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.kd, ptr %i.kj, align 8, !tbaa !124
  br label %Vec_IntPush.exit323

Vec_IntGrow.exit11.sink.split.i319:               ; preds = %Vec_FltPush.exit
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.kd, ptr %i.kl, align 8, !tbaa !124
  %i.km = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 2 uses
  store ptr %i.km, ptr %i.kk, align 8, !tbaa !12
  store i32 16, ptr %i.kd, align 8, !tbaa !16
  br label %Vec_IntPush.exit323

Vec_IntPush.exit323:                              ; preds = %Vec_IntAlloc.exit315, %Vec_IntGrow.exit11.sink.split.i319
  %i.kn = phi ptr [ %i.kh, %Vec_IntAlloc.exit315 ], [ %i.km, %Vec_IntGrow.exit11.sink.split.i319 ]
  %i.ko = phi ptr [ %i.kj, %Vec_IntAlloc.exit315 ], [ %i.kl, %Vec_IntGrow.exit11.sink.split.i319 ] ; 2 uses
  store i32 1, ptr %i.ke, align 4, !tbaa !8
  store i32 1000000000, ptr %i.kn, align 4, !tbaa !13
  %i.kp = load ptr, ptr %0, align 8, !tbaa !86
  %i.kq = getelementptr i8, ptr %i.kp, i64 24
  %.val250 = load i32, ptr %i.kq, align 8, !tbaa !57 ; 2 uses
  %i.kr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.ks = add i32 %.val250, -1
  %or.cond.i324 = icmp ult i32 %i.ks, 15
  %spec.store.select.i325 = select i1 %or.cond.i324, i32 16, i32 %.val250 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i32 %spec.store.select.i325, ptr %i.kr, align 8, !tbaa !16
  %.not.i326 = icmp eq i32 %spec.store.select.i325, 0
  br i1 %.not.i326, label %Vec_IntGrow.exit11.sink.split.i331, label %Vec_IntAlloc.exit327

Vec_IntAlloc.exit327:                             ; preds = %Vec_IntPush.exit323
  %i.ku = sext i32 %spec.store.select.i325 to i64
  %i.kv = shl nsw i64 %i.ku, 2
  %i.kw = tail call noalias ptr @malloc(i64 noundef %i.kv) #28 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !12
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.kr, ptr %i.ky, align 8, !tbaa !125
  br label %Vec_IntPush.exit335

Vec_IntGrow.exit11.sink.split.i331:               ; preds = %Vec_IntPush.exit323
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.kr, ptr %i.la, align 8, !tbaa !125
  %i.lb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 2 uses
  store ptr %i.lb, ptr %i.kz, align 8, !tbaa !12
  store i32 16, ptr %i.kr, align 8, !tbaa !16
  br label %Vec_IntPush.exit335

Vec_IntPush.exit335:                              ; preds = %Vec_IntAlloc.exit327, %Vec_IntGrow.exit11.sink.split.i331
  %i.lc = phi ptr [ %i.kw, %Vec_IntAlloc.exit327 ], [ %i.lb, %Vec_IntGrow.exit11.sink.split.i331 ]
  %i.ld = phi ptr [ %i.ky, %Vec_IntAlloc.exit327 ], [ %i.la, %Vec_IntGrow.exit11.sink.split.i331 ] ; 4 uses
  store i32 1, ptr %i.kt, align 4, !tbaa !8
  store i32 -1, ptr %i.lc, align 4, !tbaa !13
  %i.le = getelementptr i8, ptr %i.p, i64 8
  %.val256 = load ptr, ptr %i.le, align 8, !tbaa !96 ; 4 uses
  %i.lf = getelementptr i8, ptr %.val256, i64 4
  %.val256.val = load i32, ptr %i.lf, align 4, !tbaa !8 ; 2 uses
  %i.lg = sdiv i32 %.val256.val, 4                ; 6 uses
  %i.lh = add nsw i32 %i.lg, -1                   ; 5 uses
  %i.li = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %or.cond.i.i = icmp ult i32 %i.lh, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.lg ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.li, align 8, !tbaa !16
  %.not.i.i336 = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i336, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Vec_IntPush.exit335
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store ptr null, ptr %i.lk, align 8, !tbaa !12
  store i32 %i.lg, ptr %i.lj, align 4, !tbaa !8
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %Vec_IntPush.exit335
  %i.ll = sext i32 %spec.store.select.i.i to i64
  %i.lm = shl nsw i64 %i.ll, 2
  %i.ln = tail call noalias ptr @malloc(i64 noundef %i.lm) #28 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !12
  store i32 %i.lg, ptr %i.lj, align 4, !tbaa !8
  %.not.i337 = icmp eq ptr %i.ln, null
  br i1 %.not.i337, label %Vec_IntStartFull.exit, label %bb.bg

bb.bg:                                            ; preds = %Vec_IntAlloc.exit.i
  %i.lp = sext i32 %i.lg to i64
  %i.lq = shl nsw i64 %i.lp, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ln, i8 -1, i64 %i.lq, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.bg
  %.val236514 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.ln, %bb.bg ] ; 2 uses
  %.not216.not454 = icmp sgt i32 %.val256.val, 7
  br i1 %.not216.not454, label %.lr.ph458, label %._crit_edge

.lr.ph458:                                        ; preds = %Vec_IntStartFull.exit
  %i.lr = getelementptr i8, ptr %.val256, i64 8   ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.lt = getelementptr i8, ptr %i.li, i64 8
  %smax = tail call i32 @llvm.smax.i32(i32 %i.lg, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph458, %bb.cv
  %.val236512 = phi ptr [ %.val236514, %.lr.ph458 ], [ %.val236513, %bb.cv ]
  %indvars.iv482 = phi i64 [ 1, %.lr.ph458 ], [ %indvars.iv.next483, %bb.cv ] ; 4 uses
  %.0191457 = phi i32 [ 0, %.lr.ph458 ], [ %.2193, %bb.cv ] ; 2 uses
  %.0194456 = phi i32 [ 0, %.lr.ph458 ], [ %.1195, %bb.cv ] ; 2 uses
  %i.lu = shl nuw nsw i64 %indvars.iv482, 2       ; 2 uses
  %.val.i.i339 = load ptr, ptr %i.lr, align 8, !tbaa !12
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i339, i64 %i.lu ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !112 ; 6 uses
  %i.ly = icmp slt i32 %i.lx, 2
  br i1 %i.ly, label %bb.cv, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lz = add nuw nsw i32 %i.lx, %.0194456
  %i.ma = load i32, ptr %i.lv, align 4, !tbaa !126 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !127 ; 2 uses
  %i.md = icmp sgt i32 %i.ma, %i.mc
  %i.me = select i1 %i.md, i32 %i.lx, i32 0
  %spec.select = add nuw nsw i32 %i.me, %.0191457
  %i.mf = load ptr, ptr %i.jb, align 8, !tbaa !95
  %i.mg = tail call fastcc i32 @Hash_Int2ManInsert(ptr noundef %i.mf, i32 noundef %i.ma, i32 noundef %i.mc) ; 2 uses
  %i.mh = load ptr, ptr %i.jr, align 8, !tbaa !118 ; 6 uses
  %i.mi = uitofp nneg i32 %i.lx to double
  %.val.i.i349 = load ptr, ptr %i.lr, align 8, !tbaa !12
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i349, i64 %i.lu ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !126 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !127 ; 2 uses
  %.val238 = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.val238, i64 %indvars.iv482
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !13
  %i.mp = load ptr, ptr %0, align 8, !tbaa !86    ; 2 uses
  %i.mq = ashr i32 %i.mk, 1
  %i.mr = getelementptr i8, ptr %i.mp, i64 32
  %.val12.i = load ptr, ptr %i.mr, align 8, !tbaa !18 ; 2 uses
  %i.ms = sext i32 %i.mq to i64
  %i.mt = getelementptr inbounds [12 x i8], ptr %.val12.i, i64 %i.ms
  %i.mu = getelementptr i8, ptr %i.mp, i64 160
  %.val16.i = load ptr, ptr %i.mu, align 8, !tbaa !40
  %i.mv = tail call fastcc i32 @Gia_ObjLevel(ptr %.val12.i, ptr %.val16.i, ptr noundef %i.mt)
  %i.mw = load ptr, ptr %0, align 8, !tbaa !86    ; 2 uses
  %i.mx = ashr i32 %i.mm, 1
  %i.my = getelementptr i8, ptr %i.mw, i64 32
  %.val.i352 = load ptr, ptr %i.my, align 8, !tbaa !18 ; 2 uses
  %i.mz = sext i32 %i.mx to i64
  %i.na = getelementptr inbounds [12 x i8], ptr %.val.i352, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.mw, i64 160
  %.val14.i = load ptr, ptr %i.nb, align 8, !tbaa !40
  %i.nc = tail call fastcc i32 @Gia_ObjLevel(ptr %.val.i352, ptr %.val14.i, ptr noundef %i.na)
  %i.nd = load i32, ptr %i.ls, align 8, !tbaa !105
  %i.ne = tail call noundef i32 @llvm.smax.i32(i32 %i.mv, i32 %i.nc)
  %i.nf = add i32 %i.ne, %i.mo
  %i.ng = xor i32 %i.nf, -1
  %i.nh = icmp sgt i32 %i.mk, %i.mm
  %.neg.i = sext i1 %i.nh to i32
  %i.ni = add i32 %i.nd, %.neg.i
  %i.nj = add i32 %i.ni, %i.ng
  %i.nk = tail call range(i32 -2147483648, 101) i32 @llvm.smin.i32(i32 %i.nj, i32 100)
  %i.nl = sitofp i32 %i.nk to double
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.nl, double 5.000000e-03, double %i.mi)
  %i.nn = fptrunc double %i.nm to float
  %i.no = getelementptr inbounds nuw i8, ptr %i.mh, i64 4 ; 3 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !119 ; 7 uses
  %i.nq = load i32, ptr %i.mh, align 8, !tbaa !117
  %i.nr = icmp eq i32 %i.np, %i.nq
  br i1 %i.nr, label %bb.bj, label %Vec_FltPush.exit360

bb.bj:                                            ; preds = %bb.bi
  %i.ns = icmp slt i32 %i.np, 16
  br i1 %i.ns, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !67 ; 2 uses
  %.not9.i.i358 = icmp eq ptr %i.nu, null
  br i1 %.not9.i.i358, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.nu, i64 noundef 64) #27
  br label %Vec_FltGrow.exit.i359

bb.bm:                                            ; preds = %bb.bk
  %i.nw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_FltGrow.exit.i359

Vec_FltGrow.exit.i359:                            ; preds = %bb.bm, %bb.bl
  %i.nx = phi ptr [ %i.nv, %bb.bl ], [ %i.nw, %bb.bm ]
  store ptr %i.nx, ptr %i.nt, align 8, !tbaa !67
  br label %Vec_FltGrow.exit12.sink.split.i356

bb.bn:                                            ; preds = %bb.bj
  %i.ny = icmp samesign ult i32 %i.np, 1073741823
  %i.nz = shl nuw nsw i32 %i.np, 1
  %spec.select.i353 = select i1 %i.ny, i32 %i.nz, i32 2147483647 ; 3 uses
  %.not.i10.i354 = icmp samesign ult i32 %i.np, %spec.select.i353
  br i1 %.not.i10.i354, label %bb.bo, label %Vec_FltPush.exit360

bb.bo:                                            ; preds = %bb.bn
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !67 ; 2 uses
  %.not9.i11.i355 = icmp eq ptr %i.ob, null
  %i.oc = zext nneg i32 %spec.select.i353 to i64
  %i.od = shl nuw nsw i64 %i.oc, 2                ; 2 uses
  br i1 %.not9.i11.i355, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oe = tail call ptr @realloc(ptr noundef nonnull %i.ob, i64 noundef %i.od) #27
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.of = tail call noalias ptr @malloc(i64 noundef %i.od) #28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.og = phi ptr [ %i.oe, %bb.bp ], [ %i.of, %bb.bq ]
  store ptr %i.og, ptr %i.oa, align 8, !tbaa !67
  br label %Vec_FltGrow.exit12.sink.split.i356

Vec_FltGrow.exit12.sink.split.i356:               ; preds = %bb.br, %Vec_FltGrow.exit.i359
  %spec.select.sink.i357 = phi i32 [ %spec.select.i353, %bb.br ], [ 16, %Vec_FltGrow.exit.i359 ]
  store i32 %spec.select.sink.i357, ptr %i.mh, align 8, !tbaa !117
  %.pre505 = load i32, ptr %i.no, align 4, !tbaa !119
  br label %Vec_FltPush.exit360

Vec_FltPush.exit360:                              ; preds = %bb.bi, %bb.bn, %Vec_FltGrow.exit12.sink.split.i356
  %i.oh = phi i32 [ %i.np, %bb.bi ], [ %i.np, %bb.bn ], [ %.pre505, %Vec_FltGrow.exit12.sink.split.i356 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !67
  %i.ok = add nsw i32 %i.oh, 1
  store i32 %i.ok, ptr %i.no, align 4, !tbaa !119
  %i.ol = sext i32 %i.oh to i64
  %i.om = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.ol
  store float %i.nn, ptr %i.om, align 4, !tbaa !70
  %i.on = load ptr, ptr %i.kb, align 8, !tbaa !122
  tail call fastcc void @Vec_QuePush(ptr noundef %i.on, i32 noundef %i.mg)
  %i.oo = load ptr, ptr %i.ko, align 8, !tbaa !124 ; 6 uses
  %i.op = load ptr, ptr %i.ld, align 8, !tbaa !125 ; 3 uses
  %i.oq = getelementptr i8, ptr %i.op, i64 4
  %.val228 = load i32, ptr %i.oq, align 4, !tbaa !8
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 4 ; 3 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !8  ; 7 uses
  %i.ot = load i32, ptr %i.oo, align 8, !tbaa !16
  %i.ou = icmp eq i32 %i.os, %i.ot
  br i1 %i.ou, label %bb.bs, label %Vec_IntPush.exit368

bb.bs:                                            ; preds = %Vec_FltPush.exit360
  %i.ov = icmp slt i32 %i.os, 16
  br i1 %i.ov, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i366 = icmp eq ptr %i.ox, null
  br i1 %.not9.i.i366, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oy = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ox, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i367

bb.bv:                                            ; preds = %bb.bt
  %i.oz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i367

Vec_IntGrow.exit.i367:                            ; preds = %bb.bv, %bb.bu
  %i.pa = phi ptr [ %i.oy, %bb.bu ], [ %i.oz, %bb.bv ]
  store ptr %i.pa, ptr %i.ow, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i364

bb.bw:                                            ; preds = %bb.bs
  %i.pb = icmp samesign ult i32 %i.os, 1073741823
  %i.pc = shl nuw nsw i32 %i.os, 1
  %spec.select.i361 = select i1 %i.pb, i32 %i.pc, i32 2147483647 ; 3 uses
  %.not.i9.i362 = icmp samesign ult i32 %i.os, %spec.select.i361
  br i1 %.not.i9.i362, label %bb.bx, label %Vec_IntPush.exit368

bb.bx:                                            ; preds = %bb.bw
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 2 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !12 ; 2 uses
  %.not9.i10.i363 = icmp eq ptr %i.pe, null
  %i.pf = zext nneg i32 %spec.select.i361 to i64
  %i.pg = shl nuw nsw i64 %i.pf, 2                ; 2 uses
  br i1 %.not9.i10.i363, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ph = tail call ptr @realloc(ptr noundef nonnull %i.pe, i64 noundef %i.pg) #27
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.pi = tail call noalias ptr @malloc(i64 noundef %i.pg) #28
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.pj = phi ptr [ %i.ph, %bb.by ], [ %i.pi, %bb.bz ]
  store ptr %i.pj, ptr %i.pd, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i364

end_hunk_0
begin_hunk_1_@Hash_IntManStart:bb.a
  %.not.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.not.i, label %.preheader.i, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i
  %.not15.i = icmp ult i32 %i.c, 9
  br i1 %.not15.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nuw nsw i32 %.01116.i, 2             ; 3 uses
  %i.f = mul nuw nsw i32 %i.e, %i.e
  %.not.i = icmp ugt i32 %i.f, %i.c
  br i1 %.not.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i, !llvm.loop !131

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.01116.i = phi i32 [ %i.e, %bb.b ], [ 3, %.preheader.i ] ; 2 uses
  %i.g = urem i32 %i.c, %.01116.i
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge.i.backedge, label %bb.b

Abc_PrimeCudd.exit:                               ; preds = %.preheader.i, %bb.b
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %or.cond.i.i = icmp samesign ult i32 %.012.i, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.c ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = zext nneg i32 %spec.store.select.i.i to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #28 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !12
  store i32 %i.c, ptr %i.j, align 4, !tbaa !8
  %.not.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i7, label %Vec_IntStart.exit, label %bb.c

bb.c:                                             ; preds = %Abc_PrimeCudd.exit
  %i.o = zext nneg i32 %i.c to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 0, i64 %i.p, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Abc_PrimeCudd.exit, %bb.c
  store ptr %i.i, ptr %i.a, align 8, !tbaa !98
  %i.q = shl i32 %0, 2                            ; 2 uses
  %i.r = add i32 %i.q, 400
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.t = add i32 %i.q, 399
  %or.cond.i = icmp ult i32 %i.t, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.r ; 4 uses
  store i32 %spec.store.select.i, ptr %i.s, align 8, !tbaa !16
  %.not.i8 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i8, label %.thread, label %Vec_IntAlloc.exit

.thread:                                          ; preds = %Vec_IntStart.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.s, ptr %i.v, align 8, !tbaa !96
  br label %bb.f

Vec_IntAlloc.exit:                                ; preds = %Vec_IntStart.exit
  %i.w = sext i32 %spec.store.select.i to i64
  %i.x = shl nsw i64 %i.w, 2
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #28 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.s, ptr %i.aa, align 8, !tbaa !96
  %.not.i.i9 = icmp slt i32 %spec.store.select.i, 4
  br i1 %.not.i.i9, label %bb.d, label %Vec_IntFill.exit

bb.d:                                             ; preds = %Vec_IntAlloc.exit
  %.not9.i.i = icmp eq ptr %i.y, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.y, i64 noundef 16) #27
  br label %bb.g

bb.f:                                             ; preds = %.thread, %bb.d
  %i.ac = phi ptr [ %i.u, %.thread ], [ %i.z, %bb.d ]
  %i.ad = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %i.z, %bb.e ], [ %i.ac, %bb.f ]
  %i.af = phi ptr [ %i.ab, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !12
  store i32 4, ptr %i.s, align 8, !tbaa !16
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntAlloc.exit, %bb.g
  %i.ag = phi ptr [ %i.y, %Vec_IntAlloc.exit ], [ %i.af, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !tbaa !13
  store i32 4, ptr %i.ah, align 4, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 1, ptr %i.ai, align 8, !tbaa !132
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Hash_Int2ManInsert(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val35 = load i32, ptr %i.c, align 4, !tbaa !8 ; 2 uses
  %i.d = sdiv i32 %.val35, 4                      ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !98     ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 2 uses
  %.val34 = load i32, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.g = icmp sgt i32 %i.d, %.val34
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %.val34, 1
  %i.i = add i32 %i.h, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.b
  %.012.i = phi i32 [ %i.i, %bb.b ], [ %i.j, %.critedge.i.backedge ] ; 2 uses
  %i.j = add i32 %.012.i, 1                       ; 9 uses
  %i.k = and i32 %.012.i, 1
  %.not.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.not.i, label %.preheader.i, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i
  %.not15.i = icmp ult i32 %i.j, 9
  br i1 %.not15.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = add nuw nsw i32 %.01116.i, 2             ; 3 uses
  %i.m = mul nuw nsw i32 %i.l, %i.l
  %.not.i = icmp ugt i32 %i.m, %i.j
  br i1 %.not.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i, !llvm.loop !131

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.01116.i = phi i32 [ %i.l, %bb.c ], [ 3, %.preheader.i ] ; 2 uses
  %i.n = urem i32 %i.j, %.01116.i
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.critedge.i.backedge, label %bb.c

Abc_PrimeCudd.exit:                               ; preds = %.preheader.i, %bb.c
  %i.p = load i32, ptr %i.e, align 8, !tbaa !16
  %.not.i.i = icmp slt i32 %i.p, %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12   ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge

Abc_PrimeCudd.exit..lr.ph.i36_crit_edge:          ; preds = %Abc_PrimeCudd.exit
  %.pre103 = zext nneg i32 %i.j to i64
  %.pre104 = shl nuw nsw i64 %.pre103, 2
  br label %.lr.ph.i36

bb.d:                                             ; preds = %Abc_PrimeCudd.exit
  %.not9.i.i = icmp eq ptr %i.r, null
  %i.s = zext nneg i32 %i.j to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 3 uses
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #27
  %.pre89.pre.pre = load ptr, ptr %0, align 8, !tbaa !98
  %.pre90.pre.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre90.pre.pre = phi ptr [ %.pre90.pre.pre.pre, %bb.e ], [ %i.b, %bb.f ]
  %.pre89.pre = phi ptr [ %.pre89.pre.pre, %bb.e ], [ %i.e, %bb.f ]
  %i.w = phi ptr [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !12
  store i32 %i.j, ptr %i.e, align 8, !tbaa !16
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge, %bb.g
  %.pre-phi105 = phi i64 [ %.pre104, %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge ], [ %i.t, %bb.g ]
  %.pre90.pre = phi ptr [ %i.b, %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge ], [ %.pre90.pre.pre, %bb.g ] ; 3 uses
  %.pre89 = phi ptr [ %i.e, %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge ], [ %.pre89.pre, %bb.g ] ; 4 uses
  %i.x = phi ptr [ %i.r, %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge ], [ %i.w, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.pre-phi105, i1 false), !tbaa !13
  store i32 %i.j, ptr %i.f, align 4, !tbaa !8
  %i.y = icmp sgt i32 %.val35, 7
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.i36
  %i.z = getelementptr i8, ptr %.pre90.pre, i64 8
  %.val.i = load ptr, ptr %i.z, align 8, !tbaa !12 ; 2 uses
  %i.aa = getelementptr i8, ptr %.pre89, i64 4
  %i.ab = getelementptr i8, ptr %.pre89, i64 8
  %.val15.i = load ptr, ptr %i.ab, align 8, !tbaa !12
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %Hash_Int2ManLookup.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %Hash_Int2ManLookup.exit ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !133
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !126 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !127 ; 2 uses
  %.val.i38 = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ah = mul i32 %i.ae, 4177
  %i.ai = mul i32 %i.ag, 7873
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = urem i32 %i.aj, %.val.i38
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %.val15.i, i64 %i.al ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13 ; 2 uses
  %.not.i17.i = icmp eq i32 %i.an, 0
  br i1 %.not.i17.i, label %Hash_Int2ManLookup.exit, label %Hash_IntObj.exit.i

Hash_IntObj.exit.i:                               ; preds = %bb.h, %bb.j
  %i.ao = phi i32 [ %i.ay, %bb.j ], [ %i.an, %bb.h ]
  %.018.i = phi ptr [ %i.ax, %bb.j ], [ %i.am, %bb.h ]
  %i.ap = shl nsw i32 %i.ao, 2
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.aq ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !126
  %i.at = icmp eq i32 %i.as, %i.ae
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Hash_IntObj.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !127
  %i.aw = icmp eq i32 %i.av, %i.ag
  br i1 %i.aw, label %Hash_Int2ManLookup.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %Hash_IntObj.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !13 ; 2 uses
  %.not.i.i39 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i39, label %Hash_Int2ManLookup.exit, label %Hash_IntObj.exit.i, !llvm.loop !134

Hash_Int2ManLookup.exit:                          ; preds = %bb.i, %bb.j, %bb.h
  %.0.lcssa.i = phi ptr [ %i.am, %bb.h ], [ %.018.i, %bb.i ], [ %i.ax, %bb.j ]
  %i.az = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %.0.lcssa.i, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !135

.loopexit:                                        ; preds = %Hash_Int2ManLookup.exit, %.lr.ph.i36, %bb.a
  %.pre90 = phi ptr [ %i.b, %bb.a ], [ %.pre90.pre, %.lr.ph.i36 ], [ %.pre90.pre, %Hash_Int2ManLookup.exit ] ; 9 uses
  %i.ba = phi ptr [ %i.e, %bb.a ], [ %.pre89, %.lr.ph.i36 ], [ %.pre89, %Hash_Int2ManLookup.exit ] ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %.val.i40 = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bc = mul i32 %1, 4177
  %i.bd = mul i32 %2, 7873
  %i.be = add i32 %i.bd, %i.bc
  %i.bf = urem i32 %i.be, %.val.i40
  %i.bg = getelementptr i8, ptr %i.ba, i64 8
  %.val15.i41 = load ptr, ptr %i.bg, align 8, !tbaa !12
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val15.i41, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !13 ; 2 uses
  %.not.i17.i42 = icmp eq i32 %i.bj, 0
  br i1 %.not.i17.i42, label %Hash_Int2ManLookup.exit49.thread, label %Hash_IntObj.exit.lr.ph.i43

Hash_IntObj.exit.lr.ph.i43:                       ; preds = %.loopexit
  %i.bk = getelementptr i8, ptr %.pre90, i64 8
  %.val.i.i44 = load ptr, ptr %i.bk, align 8, !tbaa !12
  br label %Hash_IntObj.exit.i45

Hash_IntObj.exit.i45:                             ; preds = %bb.l, %Hash_IntObj.exit.lr.ph.i43
  %.pr = phi i32 [ %i.bj, %Hash_IntObj.exit.lr.ph.i43 ], [ %i.bu, %bb.l ] ; 2 uses
  %i.bl = shl nsw i32 %.pr, 2
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val.i.i44, i64 %i.bm ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !126
  %i.bp = icmp eq i32 %i.bo, %1
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Hash_IntObj.exit.i45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !127
  %i.bs = icmp eq i32 %i.br, %2
  br i1 %i.bs, label %Hash_Int2ManLookup.exit49, label %bb.l

bb.l:                                             ; preds = %bb.k, %Hash_IntObj.exit.i45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13 ; 2 uses
  %.not.i.i47 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i47, label %Hash_Int2ManLookup.exit49.thread.loopexit, label %Hash_IntObj.exit.i45, !llvm.loop !134

Hash_Int2ManLookup.exit49.thread.loopexit:        ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  br label %Hash_Int2ManLookup.exit49.thread

Hash_Int2ManLookup.exit49.thread:                 ; preds = %Hash_Int2ManLookup.exit49.thread.loopexit, %.loopexit
  %.0.lcssa.i4878 = phi ptr [ %i.bi, %.loopexit ], [ %i.bv, %Hash_Int2ManLookup.exit49.thread.loopexit ]
  store i32 %i.d, ptr %.0.lcssa.i4878, align 4, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre90, i64 4 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8  ; 7 uses
  %i.by = load i32, ptr %.pre90, align 8, !tbaa !16
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %Hash_Int2ManLookup.exit49.thread
  %i.ca = icmp slt i32 %i.bx, 16
  br i1 %i.ca, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre90, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i50 = icmp eq ptr %i.cc, null
  br i1 %.not9.i.i50, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i51

bb.p:                                             ; preds = %bb.n
  %i.ce = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i51

Vec_IntGrow.exit.i51:                             ; preds = %bb.p, %bb.o
  %i.cf = phi ptr [ %i.cd, %bb.o ], [ %i.ce, %bb.p ]
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.m
  %i.cg = icmp samesign ult i32 %i.bx, 1073741823
  %i.ch = shl nuw nsw i32 %i.bx, 1
  %spec.select.i = select i1 %i.cg, i32 %i.ch, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.bx, %spec.select.i
  br i1 %.not.i9.i, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre90, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !12 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.cj, null
  %i.ck = zext nneg i32 %spec.select.i to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = tail call ptr @realloc(ptr noundef nonnull %i.cj, i64 noundef %i.cl) #27
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cl) #28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = phi ptr [ %i.cm, %bb.s ], [ %i.cn, %bb.t ]
  store ptr %i.co, ptr %i.ci, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.u, %Vec_IntGrow.exit.i51
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.u ], [ 16, %Vec_IntGrow.exit.i51 ]
  store i32 %spec.select.sink.i, ptr %.pre90, align 8, !tbaa !16
  %.pre91 = load i32, ptr %i.bw, align 4, !tbaa !8
  %.pre92 = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Hash_Int2ManLookup.exit49.thread, %bb.q, %Vec_IntGrow.exit11.sink.split.i
  %i.cp = phi ptr [ %.pre90, %Hash_Int2ManLookup.exit49.thread ], [ %.pre90, %bb.q ], [ %.pre92, %Vec_IntGrow.exit11.sink.split.i ] ; 8 uses
  %i.cq = phi i32 [ %i.bx, %Hash_Int2ManLookup.exit49.thread ], [ %i.bx, %bb.q ], [ %.pre91, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre90, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !12
  %i.ct = add nsw i32 %i.cq, 1
  store i32 %i.ct, ptr %i.bw, align 4, !tbaa !8
  %i.cu = sext i32 %i.cq to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %1, ptr %i.cv, align 4, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8  ; 7 uses
  %i.cy = load i32, ptr %i.cp, align 8, !tbaa !16
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.v, label %Vec_IntPush.exit59

bb.v:                                             ; preds = %Vec_IntPush.exit
  %i.da = icmp slt i32 %i.cx, 16
  br i1 %i.da, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i57 = icmp eq ptr %i.dc, null
  br i1 %.not9.i.i57, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dc, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i58

bb.y:                                             ; preds = %bb.w
  %i.de = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i58

end_hunk_1
begin_hunk_2_@Dam_ManUpdate:bb.a
  %i.lg = getelementptr i8, ptr %i.le, i64 32
  %.val.i140 = load ptr, ptr %i.lg, align 8, !tbaa !18 ; 2 uses
  %i.lh = sext i32 %i.lf to i64
  %i.li = getelementptr inbounds [12 x i8], ptr %.val.i140, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.le, i64 160
  %.val14.i = load ptr, ptr %i.lj, align 8, !tbaa !40
  %i.lk = tail call fastcc i32 @Gia_ObjLevel(ptr %.val.i140, ptr %.val14.i, ptr noundef %i.li)
  %i.ll = load i32, ptr %i.jy, align 8, !tbaa !105
  %i.lm = tail call noundef i32 @llvm.smax.i32(i32 %i.ld, i32 %i.lk)
  %i.ln = add i32 %i.lm, %i.kw
  %i.lo = xor i32 %i.ln, -1
  %i.lp = icmp sgt i32 %i.kq, %i.ks
  %.neg.i = sext i1 %i.lp to i32
  %i.lq = add i32 %i.ll, %.neg.i
  %i.lr = add i32 %i.lq, %i.lo
  %i.ls = tail call range(i32 -2147483648, 101) i32 @llvm.smin.i32(i32 %i.lr, i32 100)
  %i.lt = sitofp i32 %i.ls to double
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.lt, double 1.000000e-03, double %i.kp)
  %i.lv = fptrunc double %i.lu to float
  %i.lw = getelementptr i8, ptr %i.ko, i64 8
  %.val119 = load ptr, ptr %i.lw, align 8, !tbaa !67
  %i.lx = getelementptr inbounds [4 x i8], ptr %.val119, i64 %indvars.iv184
  store float %i.lv, ptr %i.lx, align 4, !tbaa !70
  %i.ly = load ptr, ptr %i.jz, align 8, !tbaa !122
  %i.lz = trunc nsw i64 %indvars.iv184 to i32
  tail call fastcc void @Vec_QuePush(ptr noundef %i.ly, i32 noundef %i.lz)
  %i.ma = load ptr, ptr %i.o, align 8, !tbaa !124
  %i.mb = load ptr, ptr %i.ka, align 8, !tbaa !125 ; 8 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 4      ; 3 uses
  %.val109 = load i32, ptr %i.mc, align 4, !tbaa !8 ; 8 uses
  %i.md = getelementptr i8, ptr %i.ma, i64 8
  %.val114 = load ptr, ptr %i.md, align 8, !tbaa !12
  %i.me = getelementptr inbounds [4 x i8], ptr %.val114, i64 %indvars.iv184
  store i32 %.val109, ptr %i.me, align 4, !tbaa !13
  %i.mf = load i32, ptr %i.mb, align 8, !tbaa !16
  %i.mg = icmp eq i32 %.val109, %i.mf
  br i1 %i.mg, label %bb.ao, label %Vec_IntPush.exit

bb.ao:                                            ; preds = %bb.an
  %i.mh = icmp slt i32 %.val109, 16
  br i1 %i.mh, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i143 = icmp eq ptr %i.mj, null
  br i1 %.not9.i.i143, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mj, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i144

bb.ar:                                            ; preds = %bb.ap
  %i.ml = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i144

Vec_IntGrow.exit.i144:                            ; preds = %bb.ar, %bb.aq
  %i.mm = phi ptr [ %i.mk, %bb.aq ], [ %i.ml, %bb.ar ]
  store ptr %i.mm, ptr %i.mi, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

bb.as:                                            ; preds = %bb.ao
  %i.mn = icmp samesign ult i32 %.val109, 1073741823
  %i.mo = shl nuw nsw i32 %.val109, 1
  %spec.select.i141 = select i1 %i.mn, i32 %i.mo, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val109, %spec.select.i141
  br i1 %.not.i9.i, label %bb.at, label %Vec_IntPush.exit

bb.at:                                            ; preds = %bb.as
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !12 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.mq, null
  %i.mr = zext nneg i32 %spec.select.i141 to i64
  %i.ms = shl nuw nsw i64 %i.mr, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mt = tail call ptr @realloc(ptr noundef nonnull %i.mq, i64 noundef %i.ms) #27
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.mu = tail call noalias ptr @malloc(i64 noundef %i.ms) #28
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.mv = phi ptr [ %i.mt, %bb.au ], [ %i.mu, %bb.av ]
  store ptr %i.mv, ptr %i.mp, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aw, %Vec_IntGrow.exit.i144
  %spec.select.sink.i142 = phi i32 [ %spec.select.i141, %bb.aw ], [ 16, %Vec_IntGrow.exit.i144 ]
  store i32 %spec.select.sink.i142, ptr %i.mb, align 8, !tbaa !16
  %.pre193 = load i32, ptr %i.mc, align 4, !tbaa !8
  %.pre194 = load ptr, ptr %i.ka, align 8, !tbaa !125
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.an, %bb.as, %Vec_IntGrow.exit11.sink.split.i
  %i.mw = phi ptr [ %i.mb, %bb.an ], [ %i.mb, %bb.as ], [ %.pre194, %Vec_IntGrow.exit11.sink.split.i ] ; 6 uses
  %i.mx = phi i32 [ %.val109, %bb.an ], [ %.val109, %bb.as ], [ %.pre193, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !12
  %i.na = add nsw i32 %i.mx, 1
  store i32 %i.na, ptr %i.mc, align 4, !tbaa !8
  %i.nb = sext i32 %i.mx to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.nb
  store i32 0, ptr %i.nc, align 4, !tbaa !13
  %i.nd = getelementptr i8, ptr %i.mw, i64 4      ; 3 uses
  %.val108 = load i32, ptr %i.nd, align 4, !tbaa !8 ; 5 uses
  %i.ne = add nsw i32 %.val108, %i.km             ; 6 uses
  %i.nf = load i32, ptr %i.mw, align 8, !tbaa !16 ; 4 uses
  %i.ng = shl nsw i32 %i.nf, 1                    ; 2 uses
  %i.nh = icmp sgt i32 %i.ne, %i.ng
  %.not.i.i146 = icmp slt i32 %i.nf, %i.ne        ; 2 uses
  br i1 %i.nh, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %Vec_IntPush.exit
  br i1 %.not.i.i146, label %bb.ay, label %Vec_IntGrow.exit.i147

bb.ay:                                            ; preds = %bb.ax
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i159 = icmp eq ptr %i.nj, null
  %i.nk = sext i32 %i.ne to i64
  %i.nl = shl nsw i64 %i.nk, 2                    ; 2 uses
  br i1 %.not9.i.i159, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nm = tail call ptr @realloc(ptr noundef nonnull %i.nj, i64 noundef %i.nl) #27
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.nn = tail call noalias ptr @malloc(i64 noundef %i.nl) #28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.no = phi ptr [ %i.nm, %bb.az ], [ %i.nn, %bb.ba ]
  store ptr %i.no, ptr %i.ni, align 8, !tbaa !12
  br label %Vec_IntGrow.exit.sink.split.i157

bb.bc:                                            ; preds = %Vec_IntPush.exit
  br i1 %.not.i.i146, label %bb.bd, label %Vec_IntGrow.exit.i147

bb.bd:                                            ; preds = %bb.bc
  %i.np = icmp slt i32 %i.nf, 1073741823
  %spec.select.i154 = select i1 %i.np, i32 %i.ng, i32 2147483647 ; 3 uses
  %.not.i22.i155 = icmp slt i32 %i.nf, %spec.select.i154
  br i1 %.not.i22.i155, label %bb.be, label %Vec_IntGrow.exit.i147

bb.be:                                            ; preds = %bb.bd
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !12 ; 2 uses
  %.not9.i23.i156 = icmp eq ptr %i.nr, null
  %i.ns = sext i32 %spec.select.i154 to i64
  %i.nt = shl nsw i64 %i.ns, 2                    ; 2 uses
  br i1 %.not9.i23.i156, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.nu = tail call ptr @realloc(ptr noundef nonnull %i.nr, i64 noundef %i.nt) #27
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.nv = tail call noalias ptr @malloc(i64 noundef %i.nt) #28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.nw = phi ptr [ %i.nu, %bb.bf ], [ %i.nv, %bb.bg ]
  store ptr %i.nw, ptr %i.nq, align 8, !tbaa !12
  br label %Vec_IntGrow.exit.sink.split.i157

Vec_IntGrow.exit.sink.split.i157:                 ; preds = %bb.bh, %bb.bb
  %spec.select.sink.i158 = phi i32 [ %spec.select.i154, %bb.bh ], [ %i.ne, %bb.bb ]
  store i32 %spec.select.sink.i158, ptr %i.mw, align 8, !tbaa !16
  %.pre195 = load i32, ptr %i.nd, align 4, !tbaa !8
  br label %Vec_IntGrow.exit.i147

Vec_IntGrow.exit.i147:                            ; preds = %Vec_IntGrow.exit.sink.split.i157, %bb.bd, %bb.bc, %bb.ax
  %i.nx = phi i32 [ %.pre195, %Vec_IntGrow.exit.sink.split.i157 ], [ %.val108, %bb.bd ], [ %.val108, %bb.bc ], [ %.val108, %bb.ax ] ; 2 uses
  %i.ny = icmp slt i32 %i.nx, %i.ne
  br i1 %i.ny, label %.lr.ph.i149, label %._crit_edge.i148

.lr.ph.i149:                                      ; preds = %Vec_IntGrow.exit.i147
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !12
  %i.ob = sext i32 %i.nx to i64                   ; 2 uses
  %i.oc = shl nsw i64 %i.ob, 2
  %scevgep183 = getelementptr i8, ptr %i.oa, i64 %i.oc
  %i.od = zext nneg i32 %i.km to i64
  %i.oe = sext i32 %.val108 to i64
  %i.of = add nsw i64 %i.od, %i.oe
  %i.og = sub nsw i64 %i.of, %i.ob
  %i.oh = shl nuw nsw i64 %i.og, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep183, i8 -1, i64 %i.oh, i1 false), !tbaa !13
  br label %._crit_edge.i148

._crit_edge.i148:                                 ; preds = %.lr.ph.i149, %Vec_IntGrow.exit.i147
  store i32 %i.ne, ptr %i.nd, align 4, !tbaa !8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.am, %._crit_edge.i148
  %indvars.iv.next185 = add nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.am, !llvm.loop !155

.critedge.preheader:                              ; preds = %bb.bm, %.preheader
  %i.oi = load ptr, ptr %i.hp, align 8, !tbaa !118
  %i.oj = getelementptr i8, ptr %i.oi, i64 8
  %.val118 = load ptr, ptr %i.oj, align 8, !tbaa !67
  %i.ok = sext i32 %1 to i64
  %i.ol = getelementptr inbounds [4 x i8], ptr %.val118, i64 %i.ok
  store float 0.000000e+00, ptr %i.ol, align 4, !tbaa !70
  %i.om = select i1 %i.ab, i32 3, i32 1
  %i.on = mul nsw i32 %.094.lcssa, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !143
  %i.oq = add nsw i32 %i.op, %i.on
  store i32 %i.oq, ptr %i.oo, align 4, !tbaa !143
  %i.or = select i1 %i.ab, i32 3, i32 0
  %i.os = mul nsw i32 %.094.lcssa, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !156
  %i.ov = add nsw i32 %i.ou, %i.os
  store i32 %i.ov, ptr %i.ot, align 8, !tbaa !156
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !142
  %i.oy = add nsw i32 %i.ox, 1
  store i32 %i.oy, ptr %i.ow, align 4, !tbaa !142
  ret void

bb.bj:                                            ; preds = %.lr.ph181, %bb.bm
  %.val196 = phi i32 [ %.val178, %.lr.ph181 ], [ %.val, %bb.bm ] ; 2 uses
  %indvars.iv187 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next188, %bb.bm ] ; 2 uses
  %.0180 = phi i32 [ -1, %.lr.ph181 ], [ %.1, %bb.bm ] ; 3 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %indvars.iv187
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !13 ; 4 uses
  %i.pb = icmp slt i32 %i.pa, 0
  br i1 %i.pb, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.pc = sub nsw i32 0, %i.pa
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.pd = load ptr, ptr %i.o, align 8, !tbaa !124 ; 2 uses
  %i.pe = getelementptr i8, ptr %i.pd, i64 8
  %.val111 = load ptr, ptr %i.pe, align 8, !tbaa !12
  %i.pf = zext nneg i32 %i.pa to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.val111, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !13 ; 3 uses
  %i.pi = icmp eq i32 %i.ph, -1
  br i1 %i.pi, label %bb.bm, label %Dam_DivSet.exit167

Dam_DivSet.exit167:                               ; preds = %bb.bl
  %i.pj = getelementptr i8, ptr %i.pd, i64 4
  %.val.i.i162 = load i32, ptr %i.pj, align 4, !tbaa !8
  %i.pk = icmp slt i32 %i.pa, %.val.i.i162
  %i.pl = icmp ne i32 %i.ph, 0
  tail call void @llvm.assume(i1 %i.pk)
  tail call void @llvm.assume(i1 %i.pl)
  %i.pm = load ptr, ptr %i.ke, align 8, !tbaa !125
  %i.pn = getelementptr i8, ptr %i.pm, i64 8
  %.val.i166 = load ptr, ptr %i.pn, align 8, !tbaa !12
  %i.po = sext i32 %i.ph to i64
  %i.pp = getelementptr inbounds [4 x i8], ptr %.val.i166, i64 %i.po ; 3 uses
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !13
  %i.pr = add nsw i32 %i.pq, 1                    ; 2 uses
  store i32 %i.pr, ptr %i.pp, align 4, !tbaa !13
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pp, i64 %i.ps
  store i32 %.0180, ptr %i.pt, align 4, !tbaa !13
  %.val.pre = load i32, ptr %i.he, align 4, !tbaa !8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %Dam_DivSet.exit167, %bb.bk
  %.val = phi i32 [ %.val196, %bb.bk ], [ %.val196, %bb.bl ], [ %.val.pre, %Dam_DivSet.exit167 ] ; 2 uses
  %.1 = phi i32 [ %i.pc, %bb.bk ], [ %.0180, %bb.bl ], [ %.0180, %Dam_DivSet.exit167 ]
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.pu = sext i32 %.val to i64
  %i.pv = icmp slt i64 %indvars.iv.next188, %i.pu
  br i1 %i.pv, label %bb.bj, label %.critedge.preheader, !llvm.loop !157
}

; Function Attrs: nounwind uwtable
define ptr @Dam_ManAreaBalanceInt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #31 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #29
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Dam_ManAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %6, align 8, !tbaa !78
  %i.e = mul nsw i64 %i.d, 1000000
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !80
  %i.h = sdiv i64 %i.g, 1000
  %i.i = add nsw i64 %i.h, %i.e
  br label %Dam_ManAlloc.exit

Dam_ManAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store i64 %.0.i.i, ptr %i.j, align 8, !tbaa !81
  %i.k = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !8
  store i32 1000, ptr %i.k, align 8, !tbaa !16
  %i.m = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #28
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.k, ptr %i.o, align 8, !tbaa !85
  store ptr %0, ptr %i.a, align 8, !tbaa !86
  %i.p = call i32 @Gia_ManSetLevels(ptr noundef %0, ptr noundef %1) #29
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %i.p, ptr %i.q, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.s = call ptr @Gia_ManReverseLevel(ptr noundef %i.r) #29
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.s, ptr %i.t, align 8, !tbaa !114
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40   ; 6 uses
  %i.x = getelementptr i8, ptr %i.u, i64 24
  %.val = load i32, ptr %i.x, align 8, !tbaa !57
  %i.y = mul nsw i32 %.val, 3
  %i.z = sdiv i32 %i.y, 2                         ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8  ; 3 uses
  %.not.i = icmp sgt i32 %i.z, %i.ab
  br i1 %.not.i, label %bb.c, label %Vec_IntFillExtra.exit

bb.c:                                             ; preds = %Dam_ManAlloc.exit
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !16  ; 2 uses
  %i.ad = shl nsw i32 %i.ac, 1                    ; 3 uses
  %i.ae = icmp sgt i32 %i.z, %i.ad
  %.not.i.i = icmp slt i32 %i.ac, %i.z            ; 2 uses
  br i1 %i.ae, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %bb.e, label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ag, null
  %i.ah = sext i32 %i.z to i64
  %i.ai = shl nsw i64 %i.ah, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = call ptr @realloc(ptr noundef nonnull %i.ag, i64 noundef %i.ai) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = call noalias ptr @malloc(i64 noundef %i.ai) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = phi ptr [ %i.aj, %bb.f ], [ %i.ak, %bb.g ]
  store ptr %i.al, ptr %i.af, align 8, !tbaa !12
  br label %Vec_IntGrow.exit.sink.split.i

bb.i:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %bb.j, label %Vec_IntGrow.exit.i

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.an, null
  %i.ao = sext i32 %i.ad to i64
  %i.ap = shl nsw i64 %i.ao, 2                    ; 2 uses
  br i1 %.not9.i23.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = call ptr @realloc(ptr noundef nonnull %i.an, i64 noundef %i.ap) #27
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ar = call noalias ptr @malloc(i64 noundef %i.ap) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = phi ptr [ %i.aq, %bb.k ], [ %i.ar, %bb.l ]
  store ptr %i.as, ptr %i.am, align 8, !tbaa !12
  br label %Vec_IntGrow.exit.sink.split.i

Vec_IntGrow.exit.sink.split.i:                    ; preds = %bb.m, %bb.h
  %spec.select.sink.i = phi i32 [ %i.ad, %bb.m ], [ %i.z, %bb.h ]
  store i32 %spec.select.sink.i, ptr %i.w, align 8, !tbaa !16
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !8
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %Vec_IntGrow.exit.sink.split.i, %bb.i, %bb.d
  %i.at = phi i32 [ %.pre, %Vec_IntGrow.exit.sink.split.i ], [ %i.ab, %bb.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.z
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
end_hunk_2
