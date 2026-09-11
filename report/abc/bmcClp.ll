Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcClp?download=true
inline.NumInlined: 556
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Bmc_CollapseOneOld:bb.a
bb.bp:                                            ; preds = %bb.bn
  %i.hq = call noalias ptr @malloc(i64 noundef %i.ho) #17
  br label %Vec_StrGrow.exit11.sink.split.i243

Vec_StrGrow.exit11.sink.split.i243:               ; preds = %bb.bo, %bb.bp, %bb.bk, %bb.bl
  %i.hr = phi ptr [ %i.hl, %bb.bl ], [ %i.hk, %bb.bk ], [ %i.hp, %bb.bo ], [ %i.hq, %bb.bp ] ; 2 uses
  %spec.select.sink.i244 = phi i32 [ 16, %bb.bl ], [ 16, %bb.bk ], [ %spec.select.i240, %bb.bo ], [ %spec.select.i240, %bb.bp ]
  store ptr %i.hr, ptr %i.q, align 8, !tbaa !46
  store i32 %spec.select.sink.i244, ptr %i.n, align 8, !tbaa !70
  %.pre442 = load i32, ptr %i.o, align 4, !tbaa !57
  br label %Vec_StrPush.exit247

Vec_StrPush.exit247:                              ; preds = %.critedge.Vec_StrPush.exit247_crit_edge, %bb.bm, %Vec_StrGrow.exit11.sink.split.i243
  %i.hs = phi i32 [ %i.hf, %.critedge.Vec_StrPush.exit247_crit_edge ], [ %i.hf, %bb.bm ], [ %.pre442, %Vec_StrGrow.exit11.sink.split.i243 ] ; 2 uses
  %i.ht = phi ptr [ %.pre440, %.critedge.Vec_StrPush.exit247_crit_edge ], [ %.pre441, %bb.bm ], [ %i.hr, %Vec_StrGrow.exit11.sink.split.i243 ]
  %i.hu = add nsw i32 %i.hs, 1
  store i32 %i.hu, ptr %i.o, align 4, !tbaa !57
  %i.hv = sext i32 %i.hs to i64
  %i.hw = getelementptr inbounds i8, ptr %i.ht, i64 %i.hv
  store i8 0, ptr %i.hw, align 1, !tbaa !52
  store i32 3, ptr %i.c, align 4, !tbaa !34
  %i.hx = call i32 @sat_solver_solve(ptr noundef %i.j, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cv, i64 noundef %i.cw, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.hx, label %.preheader323.1 [
    i32 0, label %.loopexit320
    i32 -1, label %Vec_StrPush.exit247..lr.ph.i_crit_edge
  ]

Vec_StrPush.exit247..lr.ph.i_crit_edge:           ; preds = %Vec_StrPush.exit247
  %.pre443 = load ptr, ptr %i.b, align 16, !tbaa !78
  br label %.lr.ph.i

.preheader323.1:                                  ; preds = %Vec_StrPush.exit247
  %.val180.1 = load i32, ptr %i.am, align 4, !tbaa !32 ; 2 uses
  %i.hy = icmp sgt i32 %.val180.1, 0
  br i1 %i.hy, label %.lr.ph359.1, label %.critedge.1

.lr.ph359.1:                                      ; preds = %.preheader323.1
  %.val184.1 = load ptr, ptr %i.aq, align 8, !tbaa !33
  %wide.trip.count.1 = zext nneg i32 %.val180.1 to i64
  br label %bb.bq

bb.bq:                                            ; preds = %Vec_IntPush.exit239.1, %.lr.ph359.1
  %indvars.iv408.1 = phi i64 [ 0, %.lr.ph359.1 ], [ %indvars.iv.next409.1, %Vec_IntPush.exit239.1 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.val184.1, i64 %indvars.iv408.1
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !34
  %i.ib = shl nsw i32 %i.ia, 1
  %i.ic = or disjoint i32 %i.ib, 1
  %i.id = load i32, ptr %i.af, align 4, !tbaa !32 ; 7 uses
  %i.ie = load i32, ptr %i.ae, align 8, !tbaa !44
  %i.if = icmp eq i32 %i.id, %i.ie
  br i1 %i.if, label %bb.br, label %.Vec_IntPush.exit239.1_crit_edge

.Vec_IntPush.exit239.1_crit_edge:                 ; preds = %bb.bq
  %.pre446 = load ptr, ptr %i.ak, align 8, !tbaa !33
  br label %Vec_IntPush.exit239.1

bb.br:                                            ; preds = %bb.bq
  %i.ig = icmp slt i32 %i.id, 16
  br i1 %i.ig, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ih = icmp samesign ult i32 %i.id, 1073741823
  %i.ii = shl nuw nsw i32 %i.id, 1
  %spec.select.i232.1 = select i1 %i.ih, i32 %i.ii, i32 2147483647 ; 4 uses
  %.not.i9.i233.1 = icmp samesign ult i32 %i.id, %spec.select.i232.1
  %.pre447 = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 3 uses
  br i1 %.not.i9.i233.1, label %bb.bt, label %Vec_IntPush.exit239.1

bb.bt:                                            ; preds = %bb.bs
  %.not9.i10.i234.1 = icmp eq ptr %.pre447, null
  %i.ij = zext nneg i32 %spec.select.i232.1 to i64
  %i.ik = shl nuw nsw i64 %i.ij, 2                ; 2 uses
  br i1 %.not9.i10.i234.1, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.il = call ptr @realloc(ptr noundef nonnull %.pre447, i64 noundef %i.ik) #16
  br label %Vec_IntGrow.exit11.sink.split.i235.1

bb.bv:                                            ; preds = %bb.bt
  %i.im = call noalias ptr @malloc(i64 noundef %i.ik) #17
  br label %Vec_IntGrow.exit11.sink.split.i235.1

bb.bw:                                            ; preds = %bb.br
  %i.in = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 2 uses
  %.not9.i.i237.1 = icmp eq ptr %i.in, null
  br i1 %.not9.i.i237.1, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.io = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.in, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i235.1

bb.by:                                            ; preds = %bb.bw
  %i.ip = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i235.1

Vec_IntGrow.exit11.sink.split.i235.1:             ; preds = %bb.bx, %bb.by, %bb.bu, %bb.bv
  %i.iq = phi ptr [ %i.im, %bb.bv ], [ %i.il, %bb.bu ], [ %i.io, %bb.bx ], [ %i.ip, %bb.by ] ; 2 uses
  %spec.select.sink.i236.1 = phi i32 [ %spec.select.i232.1, %bb.bv ], [ %spec.select.i232.1, %bb.bu ], [ 16, %bb.bx ], [ 16, %bb.by ]
  store ptr %i.iq, ptr %i.ak, align 8, !tbaa !33
  store i32 %spec.select.sink.i236.1, ptr %i.ae, align 8, !tbaa !44
  %.pre448 = load i32, ptr %i.af, align 4, !tbaa !32
  br label %Vec_IntPush.exit239.1

Vec_IntPush.exit239.1:                            ; preds = %.Vec_IntPush.exit239.1_crit_edge, %Vec_IntGrow.exit11.sink.split.i235.1, %bb.bs
  %i.ir = phi i32 [ %i.id, %.Vec_IntPush.exit239.1_crit_edge ], [ %.pre448, %Vec_IntGrow.exit11.sink.split.i235.1 ], [ %i.id, %bb.bs ] ; 2 uses
  %i.is = phi ptr [ %.pre446, %.Vec_IntPush.exit239.1_crit_edge ], [ %i.iq, %Vec_IntGrow.exit11.sink.split.i235.1 ], [ %.pre447, %bb.bs ]
  %i.it = add nsw i32 %i.ir, 1
  store i32 %i.it, ptr %i.af, align 4, !tbaa !32
  %i.iu = sext i32 %i.ir to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.iu
  store i32 %i.ic, ptr %i.iv, align 4, !tbaa !34
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408.1, 1 ; 2 uses
  %exitcond411.1.not = icmp eq i64 %indvars.iv.next409.1, %wide.trip.count.1
  br i1 %exitcond411.1.not, label %.critedge.1, label %bb.bq, !llvm.loop !153

.critedge.1:                                      ; preds = %Vec_IntPush.exit239.1, %.preheader323.1
  %i.iw = call i32 @sat_solver_addclause(ptr noundef %i.j, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cv) #18 ; 0 uses
  %i.ix = call i32 @sat_solver_addclause(ptr noundef %i.m, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cv) #18 ; 0 uses
  %i.iy = load ptr, ptr %i.r, align 8, !tbaa !78  ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4 ; 3 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !57 ; 7 uses
  %i.jb = load i32, ptr %i.iy, align 8, !tbaa !70
  %i.jc = icmp eq i32 %i.ja, %i.jb
  br i1 %i.jc, label %bb.bz, label %Vec_StrPush.exit247.1

bb.bz:                                            ; preds = %.critedge.1
  %i.jd = icmp slt i32 %i.ja, 16
  br i1 %i.jd, label %bb.cf, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.je = icmp samesign ult i32 %i.ja, 1073741823
  %i.jf = shl nuw nsw i32 %i.ja, 1
  %spec.select.i240.1 = select i1 %i.je, i32 %i.jf, i32 2147483647 ; 3 uses
  %.not.i9.i241.1 = icmp samesign ult i32 %i.ja, %spec.select.i240.1
  br i1 %.not.i9.i241.1, label %bb.cb, label %Vec_StrPush.exit247.1

bb.cb:                                            ; preds = %bb.ca
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i242.1 = icmp eq ptr %i.jh, null
  %i.ji = zext nneg i32 %spec.select.i240.1 to i64 ; 2 uses
  br i1 %.not9.i10.i242.1, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jj = call ptr @realloc(ptr noundef nonnull %i.jh, i64 noundef %i.ji) #16
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.jk = call noalias ptr @malloc(i64 noundef %i.ji) #17
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.jl = phi ptr [ %i.jj, %bb.cc ], [ %i.jk, %bb.cd ]
  store ptr %i.jl, ptr %i.jg, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i243.1

bb.cf:                                            ; preds = %bb.bz
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i245.1 = icmp eq ptr %i.jn, null
  br i1 %.not9.i.i245.1, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jo = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.jn, i64 noundef 16) #16
  br label %Vec_StrGrow.exit.i246.1

bb.ch:                                            ; preds = %bb.cf
  %i.jp = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit.i246.1

Vec_StrGrow.exit.i246.1:                          ; preds = %bb.ch, %bb.cg
  %i.jq = phi ptr [ %i.jo, %bb.cg ], [ %i.jp, %bb.ch ]
  store ptr %i.jq, ptr %i.jm, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i243.1

Vec_StrGrow.exit11.sink.split.i243.1:             ; preds = %Vec_StrGrow.exit.i246.1, %bb.ce
  %spec.select.sink.i244.1 = phi i32 [ %spec.select.i240.1, %bb.ce ], [ 16, %Vec_StrGrow.exit.i246.1 ]
  store i32 %spec.select.sink.i244.1, ptr %i.iy, align 8, !tbaa !70
  %.pre449 = load i32, ptr %i.iz, align 4, !tbaa !57
  br label %Vec_StrPush.exit247.1

Vec_StrPush.exit247.1:                            ; preds = %Vec_StrGrow.exit11.sink.split.i243.1, %bb.ca, %.critedge.1
  %i.jr = phi i32 [ %.pre449, %Vec_StrGrow.exit11.sink.split.i243.1 ], [ %i.ja, %bb.ca ], [ %i.ja, %.critedge.1 ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !46
  %i.ju = add nsw i32 %i.jr, 1
  store i32 %i.ju, ptr %i.iz, align 4, !tbaa !57
  %i.jv = sext i32 %i.jr to i64
  %i.jw = getelementptr inbounds i8, ptr %i.jt, i64 %i.jv
  store i8 0, ptr %i.jw, align 1, !tbaa !52
  %i.jx = icmp eq i32 %1, 0
  %i.jy = icmp sgt i32 %1, -1
  br i1 %i.jy, label %.preheader.lr.ph, label %.loopexit320

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.en
  %.0384 = phi i64 [ 0, %.preheader.lr.ph ], [ %.4, %bb.en ]
  %.0159383 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.sb, %bb.en ] ; 4 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.preheader, %bb.em
  %.not172 = phi i1 [ true, %.preheader ], [ false, %bb.em ]
  %indvars.iv433.sroa.phi = phi ptr [ %i.d, %.preheader ], [ %indvars.iv433.sroa.gep531, %bb.em ] ; 2 uses
  %indvars.iv433.sroa.phi532 = phi ptr [ %i.d, %.preheader ], [ %indvars.iv433.sroa.gep534, %bb.em ]
  %indvars.iv433.sroa.phi538 = phi ptr [ %.sroa.0, %.preheader ], [ %.sroa.5, %bb.em ] ; 2 uses
  %indvars.iv433.sroa.phi541 = phi ptr [ %i.b, %.preheader ], [ %indvars.iv433.sroa.gep543, %bb.em ]
  %indvars.iv433.sroa.phi547 = phi ptr [ %.sroa.0550, %.preheader ], [ %.sroa.5551, %bb.em ] ; 2 uses
  %indvars.iv433 = phi i64 [ 0, %.preheader ], [ 1, %bb.em ] ; 3 uses
  %.1382 = phi i64 [ %.0384, %.preheader ], [ %.3, %bb.em ]
  br i1 %.not170, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.jz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #18
  %i.ka = icmp slt i32 %i.jz, 0
  br i1 %i.ka, label %Abc_Clock.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kb = load i64, ptr %9, align 8, !tbaa !81
  %i.kc = mul nsw i64 %i.kb, 1000000
  %i.kd = load i64, ptr %i.cy, align 8, !tbaa !82
  %i.ke = sdiv i64 %i.kd, 1000
  %i.kf = add nsw i64 %i.ke, %i.kc
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.cj, %bb.ck
  %.0.i = phi i64 [ %i.kf, %bb.ck ], [ -1, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.cl

bb.cl:                                            ; preds = %Abc_Clock.exit, %bb.ci
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1382, %bb.ci ] ; 3 uses
  %i.kg = load ptr, ptr %indvars.iv433.sroa.phi547, align 8, !tbaa !72 ; 5 uses
  br i1 %.not171, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kh = load ptr, ptr %indvars.iv433.sroa.phi538, align 8, !tbaa !79 ; 2 uses
  call void @sat_solver_set_resource_limits(ptr noundef %i.kg, i64 noundef %i.cw, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  %i.ki = getelementptr i8, ptr %i.kh, i64 8
  %.val4.i = load ptr, ptr %i.ki, align 8, !tbaa !33
  %i.kj = getelementptr i8, ptr %i.kh, i64 4
  %.val.i = load i32, ptr %i.kj, align 4, !tbaa !32
  %i.kk = call i32 @sat_solver_solve_lexsat(ptr noundef %i.kg, ptr noundef %.val4.i, i32 noundef %.val.i) #18
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %.val187 = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 5 uses
  %.val179 = load i32, ptr %i.am, align 4, !tbaa !32 ; 3 uses
  %i.kl = icmp sgt i32 %.val179, 0
  br i1 %i.kl, label %.lr.ph.i248, label %sat_solver_clean_polarity.exit

.lr.ph.i248:                                      ; preds = %bb.cn
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 216 ; 5 uses
  %wide.trip.count.i249 = zext nneg i32 %.val179 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i249, 3    ; 3 uses
  %i.kn = icmp ult i32 %.val179, 4
  br i1 %i.kn, label %.epil.preheader, label %.lr.ph.i248.new

.lr.ph.i248.new:                                  ; preds = %.lr.ph.i248
  %unroll_iter = and i64 %wide.trip.count.i249, 2147483644
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph.i248.new
  %indvars.iv.i250 = phi i64 [ 0, %.lr.ph.i248.new ], [ %indvars.iv.next.i251.3, %bb.co ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i248.new ], [ %niter.next.3, %bb.co ]
  %i.ko = load ptr, ptr %i.km, align 8, !tbaa !76
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !34
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %i.ko, i64 %i.kr
  store i8 0, ptr %i.ks, align 1, !tbaa !52
  %i.kt = load ptr, ptr %i.km, align 8, !tbaa !76
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !34
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds i8, ptr %i.kt, i64 %i.kx
  store i8 0, ptr %i.ky, align 1, !tbaa !52
  %i.kz = load ptr, ptr %i.km, align 8, !tbaa !76
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !34
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %i.kz, i64 %i.ld
  store i8 0, ptr %i.le, align 1, !tbaa !52
  %i.lf = load ptr, ptr %i.km, align 8, !tbaa !76
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !34
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds i8, ptr %i.lf, i64 %i.lj
  store i8 0, ptr %i.lk, align 1, !tbaa !52
  %indvars.iv.next.i251.3 = add nuw nsw i64 %indvars.iv.i250, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.co, !llvm.loop !0

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i248
  %indvars.iv.i250.epil.init = phi i64 [ 0, %.lr.ph.i248 ], [ %indvars.iv.next.i251.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod528 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod528)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.epil.preheader
  %indvars.iv.i250.epil = phi i64 [ %indvars.iv.i250.epil.init, %.epil.preheader ], [ %indvars.iv.next.i251.epil, %bb.cp ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cp ]
  %i.ll = load ptr, ptr %i.km, align 8, !tbaa !76
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250.epil
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !34
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds i8, ptr %i.ll, i64 %i.lo
  store i8 0, ptr %i.lp, align 1, !tbaa !52
  %indvars.iv.next.i251.epil = add nuw nsw i64 %indvars.iv.i250.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.cp, !llvm.loop !154

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.cp, %bb.cn
  %i.lq = call i32 @sat_solver_solve(ptr noundef %i.kg, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br label %bb.cq

bb.cq:                                            ; preds = %sat_solver_clean_polarity.exit, %bb.cm
  %.0158 = phi i32 [ %i.kk, %bb.cm ], [ %i.lq, %sat_solver_clean_polarity.exit ]
  br i1 %.not170, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.lr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #18
  %i.ls = icmp slt i32 %i.lr, 0
  br i1 %i.ls, label %Abc_Clock.exit254, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lt = load i64, ptr %8, align 8, !tbaa !81
  %i.lu = mul nsw i64 %i.lt, 1000000
  %i.lv = load i64, ptr %i.cz, align 8, !tbaa !82
  %i.lw = sdiv i64 %i.lv, 1000
  %i.lx = add nsw i64 %i.lw, %i.lu
  br label %Abc_Clock.exit254

Abc_Clock.exit254:                                ; preds = %bb.cr, %bb.cs
  %.0.i253 = phi i64 [ %i.lx, %bb.cs ], [ -1, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ly = sub i64 %.0.i253, %.2
  %i.lz = load i64, ptr %indvars.iv433.sroa.phi, align 16, !tbaa !39
  %i.ma = add nsw i64 %i.ly, %i.lz
  store i64 %i.ma, ptr %indvars.iv433.sroa.phi, align 16, !tbaa !39
  br label %bb.ct

bb.ct:                                            ; preds = %Abc_Clock.exit254, %bb.cq
  switch i32 %.0158, label %bb.cu [
    i32 0, label %.loopexit320
    i32 -1, label %.loopexit.sink.split
  ]

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.as, align 4, !tbaa !32
  %i.mb = load ptr, ptr %indvars.iv433.sroa.phi538, align 8, !tbaa !79 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4 ; 4 uses
  store i32 0, ptr %i.mc, align 4, !tbaa !32
  %.val178 = load i32, ptr %i.am, align 4, !tbaa !32 ; 2 uses
  %i.md = icmp sgt i32 %.val178, 0
  br i1 %i.md, label %.lr.ph362, label %.critedge2

.lr.ph362:                                        ; preds = %bb.cu
  %.val183 = load ptr, ptr %i.aq, align 8, !tbaa !33
  %i.me = getelementptr i8, ptr %i.kg, i64 328
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 4 uses
  %.promoted365 = load i32, ptr %i.ar, align 8, !tbaa !44
  %.promoted368 = load ptr, ptr %i.ax, align 8, !tbaa !33
  %wide.trip.count422 = zext nneg i32 %.val178 to i64
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph362, %Vec_IntPush.exit270
  %indvars.iv417 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next418, %Vec_IntPush.exit270 ] ; 2 uses
  %indvars.iv415 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next416, %Vec_IntPush.exit270 ] ; 7 uses
  %storemerge318369 = phi ptr [ %.promoted368, %.lr.ph362 ], [ %storemerge318370, %Vec_IntPush.exit270 ] ; 6 uses
  %spec.select.sink.i259367 = phi i32 [ %.promoted365, %.lr.ph362 ], [ %spec.select.sink.i259366, %Vec_IntPush.exit270 ] ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv417
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !34 ; 2 uses
  %.val196 = load ptr, ptr %i.me, align 8, !tbaa !77
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %.val196, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !34
  %i.ml = icmp ne i32 %i.mk, 1
  %i.mm = zext i1 %i.ml to i32
  %i.mn = shl nsw i32 %i.mh, 1
  %i.mo = or disjoint i32 %i.mn, %i.mm            ; 2 uses
  store i32 %i.mo, ptr %i.c, align 4, !tbaa !34
  %i.mp = trunc nsw i64 %indvars.iv415 to i32
  %i.mq = icmp eq i32 %spec.select.sink.i259367, %i.mp
  br i1 %i.mq, label %bb.cw, label %Vec_IntPush.exit262

bb.cw:                                            ; preds = %bb.cv
  %i.mr = icmp samesign ult i64 %indvars.iv415, 16
  br i1 %i.mr, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %.not9.i.i260 = icmp eq ptr %storemerge318369, null
  br i1 %.not9.i.i260, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ms = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge318369, i64 noundef 64) #16
  br label %Vec_IntPush.exit262

end_hunk_0
begin_hunk_1_@Bmc_CollapseOneOld:bb.a

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit270
  %i.nw = trunc nsw i64 %indvars.iv.next416 to i32
  store i32 %i.nw, ptr %i.as, align 4, !tbaa !32
  store i32 %spec.select.sink.i259366, ptr %i.ar, align 8
  store ptr %storemerge318370, ptr %i.ax, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.cu
  br i1 %.not170, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.nx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #18
  %i.ny = icmp slt i32 %i.nx, 0
  br i1 %i.ny, label %Abc_Clock.exit272, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nz = load i64, ptr %7, align 8, !tbaa !81
  %i.oa = mul nsw i64 %i.nz, 1000000
  %i.ob = load i64, ptr %i.da, align 8, !tbaa !82
  %i.oc = sdiv i64 %i.ob, 1000
  %i.od = add nsw i64 %i.oc, %i.oa
  br label %Abc_Clock.exit272

Abc_Clock.exit272:                                ; preds = %bb.dm, %bb.dn
  %.0.i271 = phi i64 [ %i.od, %bb.dn ], [ -1, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.do

bb.do:                                            ; preds = %Abc_Clock.exit272, %.critedge2
  %.3 = phi i64 [ %.0.i271, %Abc_Clock.exit272 ], [ %.2, %.critedge2 ] ; 4 uses
  %i.oe = xor i64 %indvars.iv433, 1
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.oe
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !72
  %i.oh = load ptr, ptr %indvars.iv433.sroa.phi547, align 8, !tbaa !72 ; 2 uses
  %i.oi = call i32 @Bmc_CollapseExpand(ptr noundef %i.og, ptr noundef %i.oh, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bf, i32 noundef %2, i32 noundef %3, i32 noundef -1)
  br i1 %.not170, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.oj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #18
  %i.ok = icmp slt i32 %i.oj, 0
  br i1 %i.ok, label %Abc_Clock.exit274, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ol = load i64, ptr %6, align 8, !tbaa !81
  %i.om = mul nsw i64 %i.ol, 1000000
  %i.on = load i64, ptr %i.db, align 8, !tbaa !82
  %i.oo = sdiv i64 %i.on, 1000
  %i.op = add nsw i64 %i.oo, %i.om
  br label %Abc_Clock.exit274

Abc_Clock.exit274:                                ; preds = %bb.dp, %bb.dq
  %.0.i273 = phi i64 [ %i.op, %bb.dq ], [ -1, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.oq = sub i64 %.0.i273, %.3
  %i.or = getelementptr inbounds nuw i8, ptr %indvars.iv433.sroa.phi532, i64 8 ; 2 uses
  %i.os = load i64, ptr %i.or, align 8, !tbaa !39
  %i.ot = add nsw i64 %i.oq, %i.os
  store i64 %i.ot, ptr %i.or, align 8, !tbaa !39
  br label %bb.dr

bb.dr:                                            ; preds = %Abc_Clock.exit274, %bb.do
  %i.ou = icmp slt i32 %i.oi, 0
  br i1 %i.ou, label %.loopexit320, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ov = load ptr, ptr %indvars.iv433.sroa.phi541, align 8, !tbaa !78 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 12 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !46 ; 8 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 4 ; 4 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !57 ; 3 uses
  %i.pa = add nsw i32 %i.oz, -1                   ; 6 uses
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !57
  %i.pb = add nsw i32 %i.pa, %.val185.val         ; 3 uses
  %i.pc = add nsw i32 %i.pb, 4                    ; 9 uses
  %.not.i275.not = icmp slt i32 %i.pc, %i.oz
  br i1 %.not.i275.not, label %Vec_StrFillExtra.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pd = load i32, ptr %i.ov, align 8, !tbaa !70 ; 4 uses
  %i.pe = shl nsw i32 %i.pd, 1                    ; 2 uses
  %i.pf = icmp sgt i32 %i.pc, %i.pe
  %.not.i.i = icmp slt i32 %i.pd, %i.pc           ; 2 uses
  br i1 %i.pf, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  br i1 %.not.i.i, label %bb.dv, label %Vec_StrGrow.exit.i276

bb.dv:                                            ; preds = %bb.du
  %.not9.i.i284 = icmp eq ptr %i.ox, null
  %i.pg = sext i32 %i.pc to i64                   ; 2 uses
  br i1 %.not9.i.i284, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ph = call ptr @realloc(ptr noundef nonnull %i.ox, i64 noundef %i.pg) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.dx:                                            ; preds = %bb.dv
  %i.pi = call noalias ptr @malloc(i64 noundef %i.pg) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.dy:                                            ; preds = %bb.dt
  br i1 %.not.i.i, label %bb.dz, label %Vec_StrGrow.exit.i276

bb.dz:                                            ; preds = %bb.dy
  %i.pj = icmp slt i32 %i.pd, 1073741823
  %spec.select.i282 = select i1 %i.pj, i32 %i.pe, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.pd, %spec.select.i282
  br i1 %.not.i22.i, label %bb.ea, label %Vec_StrGrow.exit.i276

bb.ea:                                            ; preds = %bb.dz
  %.not9.i23.i = icmp eq ptr %i.ox, null
  %i.pk = sext i32 %spec.select.i282 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pl = call ptr @realloc(ptr noundef nonnull %i.ox, i64 noundef %i.pk) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.ec:                                            ; preds = %bb.ea
  %i.pm = call noalias ptr @malloc(i64 noundef %i.pk) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.eb, %bb.ec, %bb.dw, %bb.dx
  %storemerge316 = phi ptr [ %i.pi, %bb.dx ], [ %i.ph, %bb.dw ], [ %i.pl, %bb.eb ], [ %i.pm, %bb.ec ] ; 2 uses
  %spec.select.sink.i283 = phi i32 [ %i.pc, %bb.dx ], [ %i.pc, %bb.dw ], [ %spec.select.i282, %bb.eb ], [ %spec.select.i282, %bb.ec ]
  store ptr %storemerge316, ptr %i.ow, align 8, !tbaa !46
  store i32 %spec.select.sink.i283, ptr %i.ov, align 8, !tbaa !70
  %.pre453 = load i32, ptr %i.oy, align 4, !tbaa !57
  br label %Vec_StrGrow.exit.i276

Vec_StrGrow.exit.i276:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.dz, %bb.dy, %bb.du
  %.val195.pre458 = phi ptr [ %storemerge316, %Vec_StrGrow.exit.sink.split.i ], [ %i.ox, %bb.dz ], [ %i.ox, %bb.dy ], [ %i.ox, %bb.du ]
  %i.pn = phi i32 [ %.pre453, %Vec_StrGrow.exit.sink.split.i ], [ %i.pa, %bb.dz ], [ %i.pa, %bb.dy ], [ %i.pa, %bb.du ] ; 2 uses
  %i.po = icmp slt i32 %i.pn, %i.pc
  br i1 %i.po, label %.lr.ph.i277, label %._crit_edge.i

.lr.ph.i277:                                      ; preds = %Vec_StrGrow.exit.i276
  %i.pp = sext i32 %i.pn to i64                   ; 4 uses
  %wide.trip.count.i278 = sext i32 %i.pc to i64   ; 3 uses
  %i.pq = sub nsw i64 %wide.trip.count.i278, %i.pp
  %xtraiter529 = and i64 %i.pq, 3                 ; 2 uses
  %lcmp.mod530.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod530.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i277, %.prol.preheader
  %indvars.iv.i279.prol = phi i64 [ %indvars.iv.next.i280.prol, %.prol.preheader ], [ %i.pp, %.lr.ph.i277 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i277 ]
  %i.pr = load ptr, ptr %i.ow, align 8, !tbaa !46
  %i.ps = getelementptr inbounds i8, ptr %i.pr, i64 %indvars.iv.i279.prol
  store i8 45, ptr %i.ps, align 1, !tbaa !52
  %indvars.iv.next.i280.prol = add nsw i64 %indvars.iv.i279.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter529
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !156

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i277
  %indvars.iv.i279.unr = phi i64 [ %i.pp, %.lr.ph.i277 ], [ %indvars.iv.next.i280.prol, %.prol.preheader ]
  %i.pt = sub nsw i64 %i.pp, %wide.trip.count.i278
  %i.pu = icmp ugt i64 %i.pt, -4
  br i1 %i.pu, label %._crit_edge.i.loopexit, label %.lr.ph.i277.new

.lr.ph.i277.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i277.new
  %indvars.iv.i279 = phi i64 [ %indvars.iv.next.i280.3, %.lr.ph.i277.new ], [ %indvars.iv.i279.unr, %.prol.loopexit ] ; 5 uses
  %i.pv = load ptr, ptr %i.ow, align 8, !tbaa !46
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 %indvars.iv.i279
  store i8 45, ptr %i.pw, align 1, !tbaa !52
  %i.px = load ptr, ptr %i.ow, align 8, !tbaa !46
  %i.py = getelementptr i8, ptr %i.px, i64 %indvars.iv.i279
  %i.pz = getelementptr i8, ptr %i.py, i64 1
  store i8 45, ptr %i.pz, align 1, !tbaa !52
  %i.qa = load ptr, ptr %i.ow, align 8, !tbaa !46
  %i.qb = getelementptr i8, ptr %i.qa, i64 %indvars.iv.i279
  %i.qc = getelementptr i8, ptr %i.qb, i64 2
  store i8 45, ptr %i.qc, align 1, !tbaa !52
  %i.qd = load ptr, ptr %i.ow, align 8, !tbaa !46
  %i.qe = getelementptr i8, ptr %i.qd, i64 %indvars.iv.i279
  %i.qf = getelementptr i8, ptr %i.qe, i64 3
  store i8 45, ptr %i.qf, align 1, !tbaa !52
  %indvars.iv.next.i280.3 = add nsw i64 %indvars.iv.i279, 4 ; 2 uses
  %exitcond.not.i281.3 = icmp eq i64 %indvars.iv.next.i280.3, %wide.trip.count.i278
  br i1 %exitcond.not.i281.3, label %._crit_edge.i.loopexit, label %.lr.ph.i277.new, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i277.new, %.prol.loopexit
  %.val195.pre.pre = load ptr, ptr %i.ow, align 8, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i276
  %.val195.pre = phi ptr [ %.val195.pre.pre, %._crit_edge.i.loopexit ], [ %.val195.pre458, %Vec_StrGrow.exit.i276 ]
  store i32 %i.pc, ptr %i.oy, align 4, !tbaa !57
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.ds, %._crit_edge.i
  %.val195 = phi ptr [ %i.ox, %bb.ds ], [ %.val195.pre, %._crit_edge.i ]
  %i.qg = sext i32 %i.pb to i64                   ; 3 uses
  %i.qh = getelementptr inbounds i8, ptr %.val195, i64 %i.qg
  store i8 32, ptr %i.qh, align 1, !tbaa !52
  %i.qi = add i32 %i.oz, %.val185.val
  %10 = trunc nuw nsw i64 %indvars.iv433 to i8
  %11 = xor i8 %10, 49
  %.val194 = load ptr, ptr %i.ow, align 8, !tbaa !46
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds i8, ptr %.val194, i64 %i.qj
  store i8 %11, ptr %i.qk, align 1, !tbaa !52
  %.val193 = load ptr, ptr %i.ow, align 8, !tbaa !46
  %i.ql = getelementptr i8, ptr %.val193, i64 %i.qg
  %i.qm = getelementptr i8, ptr %i.ql, i64 2
  store i8 10, ptr %i.qm, align 1, !tbaa !52
  %.val192 = load ptr, ptr %i.ow, align 8, !tbaa !46
  %i.qn = getelementptr i8, ptr %.val192, i64 %i.qg
  %i.qo = getelementptr i8, ptr %i.qn, i64 3
  store i8 0, ptr %i.qo, align 1, !tbaa !52
  store i32 0, ptr %i.bg, align 4, !tbaa !32
  %.val = load i32, ptr %i.az, align 4, !tbaa !32 ; 2 uses
  %i.qp = icmp sgt i32 %.val, 0
  %.val186.pre = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  br i1 %i.qp, label %.lr.ph372, label %.critedge4

.lr.ph372:                                        ; preds = %Vec_StrFillExtra.exit
  %.val182 = load ptr, ptr %i.be, align 8, !tbaa !33
  %.val181 = load ptr, ptr %i.ax, align 8, !tbaa !33
  %.promoted375 = load i32, ptr %i.bf, align 8, !tbaa !44
  %wide.trip.count431 = zext nneg i32 %.val to i64
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph372, %Vec_IntPush.exit292
  %indvars.iv426 = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next427, %Vec_IntPush.exit292 ] ; 2 uses
  %indvars.iv424 = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next425, %Vec_IntPush.exit292 ] ; 7 uses
  %storemerge317379 = phi ptr [ %.val186.pre, %.lr.ph372 ], [ %storemerge317380, %Vec_IntPush.exit292 ] ; 6 uses
  %spec.select.sink.i289377 = phi i32 [ %.promoted375, %.lr.ph372 ], [ %spec.select.sink.i289376, %Vec_IntPush.exit292 ] ; 3 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.val182, i64 %indvars.iv426
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !34 ; 3 uses
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [4 x i8], ptr %.val181, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !34 ; 2 uses
  store i32 %i.qu, ptr %i.c, align 4, !tbaa !34
  %i.qv = xor i32 %i.qu, 1
  %i.qw = trunc nsw i64 %indvars.iv424 to i32
  %i.qx = icmp eq i32 %spec.select.sink.i289377, %i.qw
  br i1 %i.qx, label %bb.ee, label %Vec_IntPush.exit292

bb.ee:                                            ; preds = %bb.ed
  %i.qy = icmp samesign ult i64 %indvars.iv424, 16
  br i1 %i.qy, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %.not9.i.i290 = icmp eq ptr %storemerge317379, null
  br i1 %.not9.i.i290, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qz = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge317379, i64 noundef 64) #16
  br label %Vec_IntPush.exit292

bb.eh:                                            ; preds = %bb.ef
  %i.ra = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit292

bb.ei:                                            ; preds = %bb.ee
  %i.rb = icmp samesign ult i64 %indvars.iv424, 1073741823
  %indvars.iv424.tr = trunc nsw i64 %indvars.iv424 to i32
  %i.rc = shl nsw i32 %indvars.iv424.tr, 1
  %spec.select.i285 = select i1 %i.rb, i32 %i.rc, i32 2147483647 ; 4 uses
  %i.rd = sext i32 %spec.select.i285 to i64
  %.not.i9.i286 = icmp samesign ult i64 %indvars.iv424, %i.rd
  br i1 %.not.i9.i286, label %bb.ej, label %Vec_IntPush.exit292

bb.ej:                                            ; preds = %bb.ei
  %.not9.i10.i287 = icmp eq ptr %storemerge317379, null
  %i.re = zext nneg i32 %spec.select.i285 to i64
  %i.rf = shl nuw nsw i64 %i.re, 2                ; 2 uses
  br i1 %.not9.i10.i287, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.rg = call ptr @realloc(ptr noundef nonnull %storemerge317379, i64 noundef %i.rf) #16
  br label %Vec_IntPush.exit292

bb.el:                                            ; preds = %bb.ej
  %i.rh = call noalias ptr @malloc(i64 noundef %i.rf) #17
  br label %Vec_IntPush.exit292

Vec_IntPush.exit292:                              ; preds = %bb.eh, %bb.eg, %bb.el, %bb.ek, %bb.ed, %bb.ei
  %storemerge317380 = phi ptr [ %storemerge317379, %bb.ed ], [ %storemerge317379, %bb.ei ], [ %i.ra, %bb.eh ], [ %i.qz, %bb.eg ], [ %i.rg, %bb.ek ], [ %i.rh, %bb.el ] ; 4 uses
  %spec.select.sink.i289376 = phi i32 [ %spec.select.sink.i289377, %bb.ed ], [ %spec.select.sink.i289377, %bb.ei ], [ 16, %bb.eh ], [ 16, %bb.eg ], [ %spec.select.i285, %bb.ek ], [ %spec.select.i285, %bb.el ] ; 2 uses
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 3 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %storemerge317380, i64 %indvars.iv424
  store i32 %i.qv, ptr %i.ri, align 4, !tbaa !34
  %i.rj = xor i32 %i.qr, -1
  %i.rk = add i32 %i.pb, %i.rj
  %i.rl = add nsw i32 %i.qr, %i.pa
  %.sink515 = select i1 %.not, i32 %i.rl, i32 %i.rk
  %i.rm = load i32, ptr %i.c, align 4, !tbaa !34
  %i.rn = trunc i32 %i.rm to i8
  %i.ro = and i8 %i.rn, 1
  %i.rp = sub nuw nsw i8 49, %i.ro
  %.val191 = load ptr, ptr %i.ow, align 8, !tbaa !46
  %i.rq = sext i32 %.sink515 to i64
  %i.rr = getelementptr inbounds i8, ptr %.val191, i64 %i.rq
  store i8 %i.rp, ptr %i.rr, align 1, !tbaa !52
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count431
  br i1 %exitcond432.not, label %..critedge4_crit_edge, label %bb.ed, !llvm.loop !157

..critedge4_crit_edge:                            ; preds = %Vec_IntPush.exit292
  %i.rs = trunc nsw i64 %indvars.iv.next425 to i32
  store i32 %i.rs, ptr %i.bg, align 4, !tbaa !32
  store i32 %spec.select.sink.i289376, ptr %i.bf, align 8
  store ptr %storemerge317380, ptr %i.bl, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %Vec_StrFillExtra.exit
  %.val188 = phi i64 [ %indvars.iv.next425, %..critedge4_crit_edge ], [ 0, %Vec_StrFillExtra.exit ]
  %.val186 = phi ptr [ %storemerge317380, %..critedge4_crit_edge ], [ %.val186.pre, %Vec_StrFillExtra.exit ] ; 2 uses
  %i.rt = getelementptr inbounds [4 x i8], ptr %.val186, i64 %.val188
  %i.ru = call i32 @sat_solver_addclause(ptr noundef %i.oh, ptr noundef %.val186, ptr noundef %i.rt) #18
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %.loopexit.sink.split, label %bb.em

bb.em:                                            ; preds = %.critedge4
  br i1 %.not172, label %bb.ci, label %.loopexit, !llvm.loop !158

.loopexit.sink.split:                             ; preds = %.critedge4, %bb.ct
  %.4.ph = phi i64 [ %.2, %bb.ct ], [ %.3, %.critedge4 ]
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv433
  store i32 1, ptr %i.rw, align 4, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.em, %.loopexit.sink.split
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %.3, %bb.em ]
  %i.rx = load i32, ptr %i.e, align 8, !tbaa !34
  %i.ry = icmp ne i32 %i.rx, 0
  %i.rz = load i32, ptr %i.dc, align 4
  %i.sa = icmp ne i32 %i.rz, 0
  %or.cond = select i1 %i.ry, i1 true, i1 %i.sa
  br i1 %or.cond, label %.loopexit320, label %bb.en

bb.en:                                            ; preds = %.loopexit
  %i.sb = add nuw nsw i32 %.0159383, 1            ; 3 uses
  %i.sc = icmp slt i32 %i.sb, %1
  %i.sd = select i1 %i.jx, i1 true, i1 %i.sc
  br i1 %i.sd, label %.preheader, label %.loopexit320, !llvm.loop !159

.loopexit320:                                     ; preds = %.loopexit, %bb.en, %bb.ct, %bb.dr, %.loopexit326, %Vec_StrPush.exit247, %Vec_StrPush.exit247.1, %Vec_StrPush.exit
  %.1160 = phi i32 [ 0, %Vec_StrPush.exit247.1 ], [ 0, %Vec_StrPush.exit ], [ %.0159383, %bb.ct ], [ %i.hx, %Vec_StrPush.exit247 ], [ %i.cx, %.loopexit326 ], [ %.0159383, %bb.dr ], [ %i.sb, %bb.en ], [ %.0159383, %.loopexit ]
  %i.se = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 2 uses
  %.not.i293 = icmp eq ptr %i.se, null
  br i1 %.not.i293, label %Vec_IntFree.exit, label %bb.eo

bb.eo:                                            ; preds = %.loopexit320
  call void @free(ptr noundef nonnull %i.se) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit320, %bb.eo
  call void @free(ptr noundef nonnull %i.al) #18
  %i.sf = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 2 uses
  %.not.i294 = icmp eq ptr %i.sf, null
  br i1 %.not.i294, label %Vec_IntFree.exit295, label %bb.ep

bb.ep:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.sf) #18
  br label %Vec_IntFree.exit295

Vec_IntFree.exit295:                              ; preds = %Vec_IntFree.exit, %bb.ep
  call void @free(ptr noundef nonnull %i.ar) #18
  %i.sg = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %.not.i296 = icmp eq ptr %i.sg, null
  br i1 %.not.i296, label %Vec_IntFree.exit297, label %bb.eq

bb.eq:                                            ; preds = %Vec_IntFree.exit295
  call void @free(ptr noundef nonnull %i.sg) #18
  br label %Vec_IntFree.exit297

Vec_IntFree.exit297:                              ; preds = %Vec_IntFree.exit295, %bb.eq
  call void @free(ptr noundef nonnull %i.w) #18
  %i.sh = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 2 uses
  %.not.i298 = icmp eq ptr %i.sh, null
  br i1 %.not.i298, label %Vec_IntFree.exit299, label %bb.er

bb.er:                                            ; preds = %Vec_IntFree.exit297
  call void @free(ptr noundef nonnull %i.sh) #18
  br label %Vec_IntFree.exit299

Vec_IntFree.exit299:                              ; preds = %Vec_IntFree.exit297, %bb.er
  call void @free(ptr noundef nonnull %i.ae) #18
  %i.si = load ptr, ptr %i.be, align 8, !tbaa !33 ; 2 uses
  %.not.i300 = icmp eq ptr %i.si, null
  br i1 %.not.i300, label %Vec_IntFree.exit301, label %bb.es

bb.es:                                            ; preds = %Vec_IntFree.exit299
  call void @free(ptr noundef nonnull %i.si) #18
  br label %Vec_IntFree.exit301

Vec_IntFree.exit301:                              ; preds = %Vec_IntFree.exit299, %bb.es
  call void @free(ptr noundef nonnull %i.ay) #18
  %i.sj = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %.not.i302 = icmp eq ptr %i.sj, null
  br i1 %.not.i302, label %Vec_IntFree.exit303, label %bb.et

bb.et:                                            ; preds = %Vec_IntFree.exit301
  call void @free(ptr noundef nonnull %i.sj) #18
  br label %Vec_IntFree.exit303

Vec_IntFree.exit303:                              ; preds = %Vec_IntFree.exit301, %bb.et
  call void @free(ptr noundef nonnull %i.bf) #18
  call void @Cnf_DataFree(ptr noundef %i.h) #18
end_hunk_1
begin_hunk_2_@Bmc_CollapseOne_int3:bb.a
bb.bp:                                            ; preds = %bb.bn
  %i.hi = call noalias ptr @malloc(i64 noundef %i.hg) #17
  br label %Vec_StrGrow.exit11.sink.split.i239

Vec_StrGrow.exit11.sink.split.i239:               ; preds = %bb.bo, %bb.bp, %bb.bk, %bb.bl
  %i.hj = phi ptr [ %i.hd, %bb.bl ], [ %i.hc, %bb.bk ], [ %i.hh, %bb.bo ], [ %i.hi, %bb.bp ] ; 2 uses
  %spec.select.sink.i240 = phi i32 [ 16, %bb.bl ], [ 16, %bb.bk ], [ %spec.select.i236, %bb.bo ], [ %spec.select.i236, %bb.bp ]
  store ptr %i.hj, ptr %i.j, align 8, !tbaa !46
  store i32 %spec.select.sink.i240, ptr %i.g, align 8, !tbaa !70
  %.pre438 = load i32, ptr %i.h, align 4, !tbaa !57
  br label %Vec_StrPush.exit243

Vec_StrPush.exit243:                              ; preds = %.critedge.Vec_StrPush.exit243_crit_edge, %bb.bm, %Vec_StrGrow.exit11.sink.split.i239
  %i.hk = phi i32 [ %i.gx, %.critedge.Vec_StrPush.exit243_crit_edge ], [ %i.gx, %bb.bm ], [ %.pre438, %Vec_StrGrow.exit11.sink.split.i239 ] ; 2 uses
  %i.hl = phi ptr [ %.pre436, %.critedge.Vec_StrPush.exit243_crit_edge ], [ %.pre437, %bb.bm ], [ %i.hj, %Vec_StrGrow.exit11.sink.split.i239 ]
  %i.hm = add nsw i32 %i.hk, 1
  store i32 %i.hm, ptr %i.h, align 4, !tbaa !57
  %i.hn = sext i32 %i.hk to i64
  %i.ho = getelementptr inbounds i8, ptr %i.hl, i64 %i.hn
  store i8 0, ptr %i.ho, align 1, !tbaa !52
  store i32 3, ptr %i.c, align 4, !tbaa !34
  %i.hp = call i32 @sat_solver_solve(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cn, i64 noundef %i.co, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.hp, label %.preheader319.1 [
    i32 0, label %.loopexit316
    i32 -1, label %Vec_StrPush.exit243..lr.ph.i_crit_edge
  ]

Vec_StrPush.exit243..lr.ph.i_crit_edge:           ; preds = %Vec_StrPush.exit243
  %.pre439 = load ptr, ptr %i.b, align 16, !tbaa !78
  br label %.lr.ph.i

.preheader319.1:                                  ; preds = %Vec_StrPush.exit243
  %.val177.1 = load i32, ptr %i.af, align 4, !tbaa !32 ; 2 uses
  %i.hq = icmp sgt i32 %.val177.1, 0
  br i1 %i.hq, label %.lr.ph355.1, label %.critedge.1

.lr.ph355.1:                                      ; preds = %.preheader319.1
  %.val181.1 = load ptr, ptr %i.aj, align 8, !tbaa !33
  %wide.trip.count.1 = zext nneg i32 %.val177.1 to i64
  br label %bb.bq

bb.bq:                                            ; preds = %Vec_IntPush.exit235.1, %.lr.ph355.1
  %indvars.iv404.1 = phi i64 [ 0, %.lr.ph355.1 ], [ %indvars.iv.next405.1, %Vec_IntPush.exit235.1 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.val181.1, i64 %indvars.iv404.1
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !34
  %i.ht = shl nsw i32 %i.hs, 1
  %i.hu = or disjoint i32 %i.ht, 1
  %i.hv = load i32, ptr %i.y, align 4, !tbaa !32  ; 7 uses
  %i.hw = load i32, ptr %i.x, align 8, !tbaa !44
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.br, label %.Vec_IntPush.exit235.1_crit_edge

.Vec_IntPush.exit235.1_crit_edge:                 ; preds = %bb.bq
  %.pre442 = load ptr, ptr %i.ad, align 8, !tbaa !33
  br label %Vec_IntPush.exit235.1

bb.br:                                            ; preds = %bb.bq
  %i.hy = icmp slt i32 %i.hv, 16
  br i1 %i.hy, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = icmp samesign ult i32 %i.hv, 1073741823
  %i.ia = shl nuw nsw i32 %i.hv, 1
  %spec.select.i228.1 = select i1 %i.hz, i32 %i.ia, i32 2147483647 ; 4 uses
  %.not.i9.i229.1 = icmp samesign ult i32 %i.hv, %spec.select.i228.1
  %.pre443 = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 3 uses
  br i1 %.not.i9.i229.1, label %bb.bt, label %Vec_IntPush.exit235.1

bb.bt:                                            ; preds = %bb.bs
  %.not9.i10.i230.1 = icmp eq ptr %.pre443, null
  %i.ib = zext nneg i32 %spec.select.i228.1 to i64
  %i.ic = shl nuw nsw i64 %i.ib, 2                ; 2 uses
  br i1 %.not9.i10.i230.1, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.id = call ptr @realloc(ptr noundef nonnull %.pre443, i64 noundef %i.ic) #16
  br label %Vec_IntGrow.exit11.sink.split.i231.1

bb.bv:                                            ; preds = %bb.bt
  %i.ie = call noalias ptr @malloc(i64 noundef %i.ic) #17
  br label %Vec_IntGrow.exit11.sink.split.i231.1

bb.bw:                                            ; preds = %bb.br
  %i.if = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %.not9.i.i233.1 = icmp eq ptr %i.if, null
  br i1 %.not9.i.i233.1, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ig = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.if, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i231.1

bb.by:                                            ; preds = %bb.bw
  %i.ih = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i231.1

Vec_IntGrow.exit11.sink.split.i231.1:             ; preds = %bb.bx, %bb.by, %bb.bu, %bb.bv
  %i.ii = phi ptr [ %i.ie, %bb.bv ], [ %i.id, %bb.bu ], [ %i.ig, %bb.bx ], [ %i.ih, %bb.by ] ; 2 uses
  %spec.select.sink.i232.1 = phi i32 [ %spec.select.i228.1, %bb.bv ], [ %spec.select.i228.1, %bb.bu ], [ 16, %bb.bx ], [ 16, %bb.by ]
  store ptr %i.ii, ptr %i.ad, align 8, !tbaa !33
  store i32 %spec.select.sink.i232.1, ptr %i.x, align 8, !tbaa !44
  %.pre444 = load i32, ptr %i.y, align 4, !tbaa !32
  br label %Vec_IntPush.exit235.1

Vec_IntPush.exit235.1:                            ; preds = %.Vec_IntPush.exit235.1_crit_edge, %Vec_IntGrow.exit11.sink.split.i231.1, %bb.bs
  %i.ij = phi i32 [ %i.hv, %.Vec_IntPush.exit235.1_crit_edge ], [ %.pre444, %Vec_IntGrow.exit11.sink.split.i231.1 ], [ %i.hv, %bb.bs ] ; 2 uses
  %i.ik = phi ptr [ %.pre442, %.Vec_IntPush.exit235.1_crit_edge ], [ %i.ii, %Vec_IntGrow.exit11.sink.split.i231.1 ], [ %.pre443, %bb.bs ]
  %i.il = add nsw i32 %i.ij, 1
  store i32 %i.il, ptr %i.y, align 4, !tbaa !32
  %i.im = sext i32 %i.ij to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.im
  store i32 %i.hu, ptr %i.in, align 4, !tbaa !34
  %indvars.iv.next405.1 = add nuw nsw i64 %indvars.iv404.1, 1 ; 2 uses
  %exitcond407.1.not = icmp eq i64 %indvars.iv.next405.1, %wide.trip.count.1
  br i1 %exitcond407.1.not, label %.critedge.1, label %bb.bq, !llvm.loop !162

.critedge.1:                                      ; preds = %Vec_IntPush.exit235.1, %.preheader319.1
  %i.io = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cn) #18 ; 0 uses
  %i.ip = call i32 @sat_solver_addclause(ptr noundef %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cn) #18 ; 0 uses
  %i.iq = load ptr, ptr %i.k, align 8, !tbaa !78  ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 3 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !57 ; 7 uses
  %i.it = load i32, ptr %i.iq, align 8, !tbaa !70
  %i.iu = icmp eq i32 %i.is, %i.it
  br i1 %i.iu, label %bb.bz, label %Vec_StrPush.exit243.1

bb.bz:                                            ; preds = %.critedge.1
  %i.iv = icmp slt i32 %i.is, 16
  br i1 %i.iv, label %bb.cf, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iw = icmp samesign ult i32 %i.is, 1073741823
  %i.ix = shl nuw nsw i32 %i.is, 1
  %spec.select.i236.1 = select i1 %i.iw, i32 %i.ix, i32 2147483647 ; 3 uses
  %.not.i9.i237.1 = icmp samesign ult i32 %i.is, %spec.select.i236.1
  br i1 %.not.i9.i237.1, label %bb.cb, label %Vec_StrPush.exit243.1

bb.cb:                                            ; preds = %bb.ca
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i238.1 = icmp eq ptr %i.iz, null
  %i.ja = zext nneg i32 %spec.select.i236.1 to i64 ; 2 uses
  br i1 %.not9.i10.i238.1, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jb = call ptr @realloc(ptr noundef nonnull %i.iz, i64 noundef %i.ja) #16
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.jc = call noalias ptr @malloc(i64 noundef %i.ja) #17
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.jd = phi ptr [ %i.jb, %bb.cc ], [ %i.jc, %bb.cd ]
  store ptr %i.jd, ptr %i.iy, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i239.1

bb.cf:                                            ; preds = %bb.bz
  %i.je = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i241.1 = icmp eq ptr %i.jf, null
  br i1 %.not9.i.i241.1, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jg = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.jf, i64 noundef 16) #16
  br label %Vec_StrGrow.exit.i242.1

bb.ch:                                            ; preds = %bb.cf
  %i.jh = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit.i242.1

Vec_StrGrow.exit.i242.1:                          ; preds = %bb.ch, %bb.cg
  %i.ji = phi ptr [ %i.jg, %bb.cg ], [ %i.jh, %bb.ch ]
  store ptr %i.ji, ptr %i.je, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i239.1

Vec_StrGrow.exit11.sink.split.i239.1:             ; preds = %Vec_StrGrow.exit.i242.1, %bb.ce
  %spec.select.sink.i240.1 = phi i32 [ %spec.select.i236.1, %bb.ce ], [ 16, %Vec_StrGrow.exit.i242.1 ]
  store i32 %spec.select.sink.i240.1, ptr %i.iq, align 8, !tbaa !70
  %.pre445 = load i32, ptr %i.ir, align 4, !tbaa !57
  br label %Vec_StrPush.exit243.1

Vec_StrPush.exit243.1:                            ; preds = %Vec_StrGrow.exit11.sink.split.i239.1, %bb.ca, %.critedge.1
  %i.jj = phi i32 [ %.pre445, %Vec_StrGrow.exit11.sink.split.i239.1 ], [ %i.is, %bb.ca ], [ %i.is, %.critedge.1 ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !46
  %i.jm = add nsw i32 %i.jj, 1
  store i32 %i.jm, ptr %i.ir, align 4, !tbaa !57
  %i.jn = sext i32 %i.jj to i64
  %i.jo = getelementptr inbounds i8, ptr %i.jl, i64 %i.jn
  store i8 0, ptr %i.jo, align 1, !tbaa !52
  %i.jp = icmp eq i32 %5, 0
  %i.jq = icmp sgt i32 %5, -1
  br i1 %i.jq, label %.preheader.lr.ph, label %.loopexit316

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.en
  %.0380 = phi i64 [ 0, %.preheader.lr.ph ], [ %.4, %bb.en ]
  %.0156379 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.rt, %bb.en ] ; 4 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.preheader, %bb.em
  %.not169 = phi i1 [ true, %.preheader ], [ false, %bb.em ]
  %indvars.iv429.sroa.phi = phi ptr [ %i.d, %.preheader ], [ %indvars.iv429.sroa.gep529, %bb.em ] ; 2 uses
  %indvars.iv429.sroa.phi530 = phi ptr [ %i.d, %.preheader ], [ %indvars.iv429.sroa.gep532, %bb.em ]
  %indvars.iv429.sroa.phi536 = phi ptr [ %.sroa.0, %.preheader ], [ %.sroa.5, %bb.em ] ; 2 uses
  %indvars.iv429.sroa.phi539 = phi ptr [ %i.b, %.preheader ], [ %indvars.iv429.sroa.gep541, %bb.em ]
  %indvars.iv429.sroa.phi545 = phi ptr [ %.sroa.0548, %.preheader ], [ %.sroa.5549, %bb.em ] ; 2 uses
  %indvars.iv429 = phi i64 [ 0, %.preheader ], [ 1, %bb.em ] ; 3 uses
  %.1378 = phi i64 [ %.0380, %.preheader ], [ %.3, %bb.em ]
  br i1 %.not167, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.jr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %13) #18
  %i.js = icmp slt i32 %i.jr, 0
  br i1 %i.js, label %Abc_Clock.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jt = load i64, ptr %13, align 8, !tbaa !81
  %i.ju = mul nsw i64 %i.jt, 1000000
  %i.jv = load i64, ptr %i.cq, align 8, !tbaa !82
  %i.jw = sdiv i64 %i.jv, 1000
  %i.jx = add nsw i64 %i.jw, %i.ju
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.cj, %bb.ck
  %.0.i = phi i64 [ %i.jx, %bb.ck ], [ -1, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.cl

bb.cl:                                            ; preds = %Abc_Clock.exit, %bb.ci
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1378, %bb.ci ] ; 3 uses
  %i.jy = load ptr, ptr %indvars.iv429.sroa.phi545, align 8, !tbaa !72 ; 5 uses
  br i1 %.not168, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jz = load ptr, ptr %indvars.iv429.sroa.phi536, align 8, !tbaa !79 ; 2 uses
  call void @sat_solver_set_resource_limits(ptr noundef %i.jy, i64 noundef %i.co, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  %i.ka = getelementptr i8, ptr %i.jz, i64 8
  %.val4.i = load ptr, ptr %i.ka, align 8, !tbaa !33
  %i.kb = getelementptr i8, ptr %i.jz, i64 4
  %.val.i = load i32, ptr %i.kb, align 4, !tbaa !32
  %i.kc = call i32 @sat_solver_solve_lexsat(ptr noundef %i.jy, ptr noundef %.val4.i, i32 noundef %.val.i) #18
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %.val183 = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 5 uses
  %.val176 = load i32, ptr %i.af, align 4, !tbaa !32 ; 3 uses
  %i.kd = icmp sgt i32 %.val176, 0
  br i1 %i.kd, label %.lr.ph.i244, label %sat_solver_clean_polarity.exit

.lr.ph.i244:                                      ; preds = %bb.cn
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 216 ; 5 uses
  %wide.trip.count.i245 = zext nneg i32 %.val176 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i245, 3    ; 3 uses
  %i.kf = icmp ult i32 %.val176, 4
  br i1 %i.kf, label %.epil.preheader, label %.lr.ph.i244.new

.lr.ph.i244.new:                                  ; preds = %.lr.ph.i244
  %unroll_iter = and i64 %wide.trip.count.i245, 2147483644
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph.i244.new
  %indvars.iv.i246 = phi i64 [ 0, %.lr.ph.i244.new ], [ %indvars.iv.next.i247.3, %bb.co ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i244.new ], [ %niter.next.3, %bb.co ]
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !76
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !34
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds i8, ptr %i.kg, i64 %i.kj
  store i8 0, ptr %i.kk, align 1, !tbaa !52
  %i.kl = load ptr, ptr %i.ke, align 8, !tbaa !76
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !34
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds i8, ptr %i.kl, i64 %i.kp
  store i8 0, ptr %i.kq, align 1, !tbaa !52
  %i.kr = load ptr, ptr %i.ke, align 8, !tbaa !76
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !34
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds i8, ptr %i.kr, i64 %i.kv
  store i8 0, ptr %i.kw, align 1, !tbaa !52
  %i.kx = load ptr, ptr %i.ke, align 8, !tbaa !76
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !34
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds i8, ptr %i.kx, i64 %i.lb
  store i8 0, ptr %i.lc, align 1, !tbaa !52
  %indvars.iv.next.i247.3 = add nuw nsw i64 %indvars.iv.i246, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.co, !llvm.loop !0

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i244
  %indvars.iv.i246.epil.init = phi i64 [ 0, %.lr.ph.i244 ], [ %indvars.iv.next.i247.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod526 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod526)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.epil.preheader
  %indvars.iv.i246.epil = phi i64 [ %indvars.iv.i246.epil.init, %.epil.preheader ], [ %indvars.iv.next.i247.epil, %bb.cp ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cp ]
  %i.ld = load ptr, ptr %i.ke, align 8, !tbaa !76
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246.epil
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !34
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %i.ld, i64 %i.lg
  store i8 0, ptr %i.lh, align 1, !tbaa !52
  %indvars.iv.next.i247.epil = add nuw nsw i64 %indvars.iv.i246.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.cp, !llvm.loop !163

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.cp, %bb.cn
  %i.li = call i32 @sat_solver_solve(ptr noundef %i.jy, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br label %bb.cq

bb.cq:                                            ; preds = %sat_solver_clean_polarity.exit, %bb.cm
  %.0155 = phi i32 [ %i.kc, %bb.cm ], [ %i.li, %sat_solver_clean_polarity.exit ]
  br i1 %.not167, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.lj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %12) #18
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %Abc_Clock.exit250, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ll = load i64, ptr %12, align 8, !tbaa !81
  %i.lm = mul nsw i64 %i.ll, 1000000
  %i.ln = load i64, ptr %i.cr, align 8, !tbaa !82
  %i.lo = sdiv i64 %i.ln, 1000
  %i.lp = add nsw i64 %i.lo, %i.lm
  br label %Abc_Clock.exit250

Abc_Clock.exit250:                                ; preds = %bb.cr, %bb.cs
  %.0.i249 = phi i64 [ %i.lp, %bb.cs ], [ -1, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.lq = sub i64 %.0.i249, %.2
  %i.lr = load i64, ptr %indvars.iv429.sroa.phi, align 16, !tbaa !39
  %i.ls = add nsw i64 %i.lq, %i.lr
  store i64 %i.ls, ptr %indvars.iv429.sroa.phi, align 16, !tbaa !39
  br label %bb.ct

bb.ct:                                            ; preds = %Abc_Clock.exit250, %bb.cq
  switch i32 %.0155, label %bb.cu [
    i32 0, label %.loopexit316
    i32 -1, label %.loopexit.sink.split
  ]

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.al, align 4, !tbaa !32
  %i.lt = load ptr, ptr %indvars.iv429.sroa.phi536, align 8, !tbaa !79 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 4 uses
  store i32 0, ptr %i.lu, align 4, !tbaa !32
  %.val175 = load i32, ptr %i.af, align 4, !tbaa !32 ; 2 uses
  %i.lv = icmp sgt i32 %.val175, 0
  br i1 %i.lv, label %.lr.ph358, label %.critedge2

.lr.ph358:                                        ; preds = %bb.cu
  %.val180 = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.lw = getelementptr i8, ptr %i.jy, i64 328
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 4 uses
  %.promoted361 = load i32, ptr %i.ak, align 8, !tbaa !44
  %.promoted364 = load ptr, ptr %i.aq, align 8, !tbaa !33
  %wide.trip.count418 = zext nneg i32 %.val175 to i64
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph358, %Vec_IntPush.exit266
  %indvars.iv413 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next414, %Vec_IntPush.exit266 ] ; 2 uses
  %indvars.iv411 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next412, %Vec_IntPush.exit266 ] ; 7 uses
  %storemerge314365 = phi ptr [ %.promoted364, %.lr.ph358 ], [ %storemerge314366, %Vec_IntPush.exit266 ] ; 6 uses
  %spec.select.sink.i255363 = phi i32 [ %.promoted361, %.lr.ph358 ], [ %spec.select.sink.i255362, %Vec_IntPush.exit266 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val180, i64 %indvars.iv413
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !34 ; 2 uses
  %.val192 = load ptr, ptr %i.lw, align 8, !tbaa !77
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %.val192, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !34
  %i.md = icmp ne i32 %i.mc, 1
  %i.me = zext i1 %i.md to i32
  %i.mf = shl nsw i32 %i.lz, 1
  %i.mg = or disjoint i32 %i.mf, %i.me            ; 2 uses
  store i32 %i.mg, ptr %i.c, align 4, !tbaa !34
  %i.mh = trunc nsw i64 %indvars.iv411 to i32
  %i.mi = icmp eq i32 %spec.select.sink.i255363, %i.mh
  br i1 %i.mi, label %bb.cw, label %Vec_IntPush.exit258

bb.cw:                                            ; preds = %bb.cv
  %i.mj = icmp samesign ult i64 %indvars.iv411, 16
  br i1 %i.mj, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %.not9.i.i256 = icmp eq ptr %storemerge314365, null
  br i1 %.not9.i.i256, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mk = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge314365, i64 noundef 64) #16
  br label %Vec_IntPush.exit258

end_hunk_2
begin_hunk_3_@Bmc_CollapseOne_int3:bb.a

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit266
  %i.no = trunc nsw i64 %indvars.iv.next412 to i32
  store i32 %i.no, ptr %i.al, align 4, !tbaa !32
  store i32 %spec.select.sink.i255362, ptr %i.ak, align 8
  store ptr %storemerge314366, ptr %i.aq, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.cu
  br i1 %.not167, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.np = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #18
  %i.nq = icmp slt i32 %i.np, 0
  br i1 %i.nq, label %Abc_Clock.exit268, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nr = load i64, ptr %11, align 8, !tbaa !81
  %i.ns = mul nsw i64 %i.nr, 1000000
  %i.nt = load i64, ptr %i.cs, align 8, !tbaa !82
  %i.nu = sdiv i64 %i.nt, 1000
  %i.nv = add nsw i64 %i.nu, %i.ns
  br label %Abc_Clock.exit268

Abc_Clock.exit268:                                ; preds = %bb.dm, %bb.dn
  %.0.i267 = phi i64 [ %i.nv, %bb.dn ], [ -1, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.do

bb.do:                                            ; preds = %Abc_Clock.exit268, %.critedge2
  %.3 = phi i64 [ %.0.i267, %Abc_Clock.exit268 ], [ %.2, %.critedge2 ] ; 4 uses
  %i.nw = xor i64 %indvars.iv429, 1
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.nw
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !72
  %i.nz = load ptr, ptr %indvars.iv429.sroa.phi545, align 8, !tbaa !72 ; 2 uses
  %i.oa = call i32 @Bmc_CollapseExpand(ptr noundef %i.ny, ptr noundef %i.nz, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ay, i32 noundef %6, i32 noundef %7, i32 noundef -1)
  br i1 %.not167, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ob = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #18
  %i.oc = icmp slt i32 %i.ob, 0
  br i1 %i.oc, label %Abc_Clock.exit270, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.od = load i64, ptr %10, align 8, !tbaa !81
  %i.oe = mul nsw i64 %i.od, 1000000
  %i.of = load i64, ptr %i.ct, align 8, !tbaa !82
  %i.og = sdiv i64 %i.of, 1000
  %i.oh = add nsw i64 %i.og, %i.oe
  br label %Abc_Clock.exit270

Abc_Clock.exit270:                                ; preds = %bb.dp, %bb.dq
  %.0.i269 = phi i64 [ %i.oh, %bb.dq ], [ -1, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.oi = sub i64 %.0.i269, %.3
  %i.oj = getelementptr inbounds nuw i8, ptr %indvars.iv429.sroa.phi530, i64 8 ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !39
  %i.ol = add nsw i64 %i.oi, %i.ok
  store i64 %i.ol, ptr %i.oj, align 8, !tbaa !39
  br label %bb.dr

bb.dr:                                            ; preds = %Abc_Clock.exit270, %bb.do
  %i.om = icmp slt i32 %i.oa, 0
  br i1 %i.om, label %.loopexit316, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.on = load ptr, ptr %indvars.iv429.sroa.phi539, align 8, !tbaa !78 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 12 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !46 ; 8 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 4 ; 4 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !57 ; 3 uses
  %i.os = add nsw i32 %i.or, -1                   ; 6 uses
  store i32 %i.os, ptr %i.oq, align 4, !tbaa !57
  %i.ot = add nsw i32 %i.os, %4                   ; 3 uses
  %i.ou = add nsw i32 %i.ot, 4                    ; 9 uses
  %.not.i271.not = icmp slt i32 %i.ou, %i.or
  br i1 %.not.i271.not, label %Vec_StrFillExtra.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ov = load i32, ptr %i.on, align 8, !tbaa !70 ; 4 uses
  %i.ow = shl nsw i32 %i.ov, 1                    ; 2 uses
  %i.ox = icmp sgt i32 %i.ou, %i.ow
  %.not.i.i = icmp slt i32 %i.ov, %i.ou           ; 2 uses
  br i1 %i.ox, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  br i1 %.not.i.i, label %bb.dv, label %Vec_StrGrow.exit.i272

bb.dv:                                            ; preds = %bb.du
  %.not9.i.i280 = icmp eq ptr %i.op, null
  %i.oy = sext i32 %i.ou to i64                   ; 2 uses
  br i1 %.not9.i.i280, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oz = call ptr @realloc(ptr noundef nonnull %i.op, i64 noundef %i.oy) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.dx:                                            ; preds = %bb.dv
  %i.pa = call noalias ptr @malloc(i64 noundef %i.oy) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.dy:                                            ; preds = %bb.dt
  br i1 %.not.i.i, label %bb.dz, label %Vec_StrGrow.exit.i272

bb.dz:                                            ; preds = %bb.dy
  %i.pb = icmp slt i32 %i.ov, 1073741823
  %spec.select.i278 = select i1 %i.pb, i32 %i.ow, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.ov, %spec.select.i278
  br i1 %.not.i22.i, label %bb.ea, label %Vec_StrGrow.exit.i272

bb.ea:                                            ; preds = %bb.dz
  %.not9.i23.i = icmp eq ptr %i.op, null
  %i.pc = sext i32 %spec.select.i278 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pd = call ptr @realloc(ptr noundef nonnull %i.op, i64 noundef %i.pc) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.ec:                                            ; preds = %bb.ea
  %i.pe = call noalias ptr @malloc(i64 noundef %i.pc) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.eb, %bb.ec, %bb.dw, %bb.dx
  %storemerge312 = phi ptr [ %i.pa, %bb.dx ], [ %i.oz, %bb.dw ], [ %i.pd, %bb.eb ], [ %i.pe, %bb.ec ] ; 2 uses
  %spec.select.sink.i279 = phi i32 [ %i.ou, %bb.dx ], [ %i.ou, %bb.dw ], [ %spec.select.i278, %bb.eb ], [ %spec.select.i278, %bb.ec ]
  store ptr %storemerge312, ptr %i.oo, align 8, !tbaa !46
  store i32 %spec.select.sink.i279, ptr %i.on, align 8, !tbaa !70
  %.pre449 = load i32, ptr %i.oq, align 4, !tbaa !57
  br label %Vec_StrGrow.exit.i272

Vec_StrGrow.exit.i272:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.dz, %bb.dy, %bb.du
  %.val191.pre454 = phi ptr [ %storemerge312, %Vec_StrGrow.exit.sink.split.i ], [ %i.op, %bb.dz ], [ %i.op, %bb.dy ], [ %i.op, %bb.du ]
  %i.pf = phi i32 [ %.pre449, %Vec_StrGrow.exit.sink.split.i ], [ %i.os, %bb.dz ], [ %i.os, %bb.dy ], [ %i.os, %bb.du ] ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.ou
  br i1 %i.pg, label %.lr.ph.i273, label %._crit_edge.i

.lr.ph.i273:                                      ; preds = %Vec_StrGrow.exit.i272
  %i.ph = sext i32 %i.pf to i64                   ; 4 uses
  %wide.trip.count.i274 = sext i32 %i.ou to i64   ; 3 uses
  %i.pi = sub nsw i64 %wide.trip.count.i274, %i.ph
  %xtraiter527 = and i64 %i.pi, 3                 ; 2 uses
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, 0
  br i1 %lcmp.mod528.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i273, %.prol.preheader
  %indvars.iv.i275.prol = phi i64 [ %indvars.iv.next.i276.prol, %.prol.preheader ], [ %i.ph, %.lr.ph.i273 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i273 ]
  %i.pj = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 %indvars.iv.i275.prol
  store i8 45, ptr %i.pk, align 1, !tbaa !52
  %indvars.iv.next.i276.prol = add nsw i64 %indvars.iv.i275.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter527
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !165

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i273
  %indvars.iv.i275.unr = phi i64 [ %i.ph, %.lr.ph.i273 ], [ %indvars.iv.next.i276.prol, %.prol.preheader ]
  %i.pl = sub nsw i64 %i.ph, %wide.trip.count.i274
  %i.pm = icmp ugt i64 %i.pl, -4
  br i1 %i.pm, label %._crit_edge.i.loopexit, label %.lr.ph.i273.new

.lr.ph.i273.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i273.new
  %indvars.iv.i275 = phi i64 [ %indvars.iv.next.i276.3, %.lr.ph.i273.new ], [ %indvars.iv.i275.unr, %.prol.loopexit ] ; 5 uses
  %i.pn = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 %indvars.iv.i275
  store i8 45, ptr %i.po, align 1, !tbaa !52
  %i.pp = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.pq = getelementptr i8, ptr %i.pp, i64 %indvars.iv.i275
  %i.pr = getelementptr i8, ptr %i.pq, i64 1
  store i8 45, ptr %i.pr, align 1, !tbaa !52
  %i.ps = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.pt = getelementptr i8, ptr %i.ps, i64 %indvars.iv.i275
  %i.pu = getelementptr i8, ptr %i.pt, i64 2
  store i8 45, ptr %i.pu, align 1, !tbaa !52
  %i.pv = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.pw = getelementptr i8, ptr %i.pv, i64 %indvars.iv.i275
  %i.px = getelementptr i8, ptr %i.pw, i64 3
  store i8 45, ptr %i.px, align 1, !tbaa !52
  %indvars.iv.next.i276.3 = add nsw i64 %indvars.iv.i275, 4 ; 2 uses
  %exitcond.not.i277.3 = icmp eq i64 %indvars.iv.next.i276.3, %wide.trip.count.i274
  br i1 %exitcond.not.i277.3, label %._crit_edge.i.loopexit, label %.lr.ph.i273.new, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i273.new, %.prol.loopexit
  %.val191.pre.pre = load ptr, ptr %i.oo, align 8, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i272
  %.val191.pre = phi ptr [ %.val191.pre.pre, %._crit_edge.i.loopexit ], [ %.val191.pre454, %Vec_StrGrow.exit.i272 ]
  store i32 %i.ou, ptr %i.oq, align 4, !tbaa !57
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.ds, %._crit_edge.i
  %.val191 = phi ptr [ %i.op, %bb.ds ], [ %.val191.pre, %._crit_edge.i ]
  %i.py = sext i32 %i.ot to i64                   ; 3 uses
  %i.pz = getelementptr inbounds i8, ptr %.val191, i64 %i.py
  store i8 32, ptr %i.pz, align 1, !tbaa !52
  %i.qa = add i32 %i.or, %4
  %14 = trunc nuw nsw i64 %indvars.iv429 to i8
  %15 = xor i8 %14, 49
  %.val190 = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds i8, ptr %.val190, i64 %i.qb
  store i8 %15, ptr %i.qc, align 1, !tbaa !52
  %.val189 = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.qd = getelementptr i8, ptr %.val189, i64 %i.py
  %i.qe = getelementptr i8, ptr %i.qd, i64 2
  store i8 10, ptr %i.qe, align 1, !tbaa !52
  %.val188 = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.qf = getelementptr i8, ptr %.val188, i64 %i.py
  %i.qg = getelementptr i8, ptr %i.qf, i64 3
  store i8 0, ptr %i.qg, align 1, !tbaa !52
  store i32 0, ptr %i.az, align 4, !tbaa !32
  %.val = load i32, ptr %i.as, align 4, !tbaa !32 ; 2 uses
  %i.qh = icmp sgt i32 %.val, 0
  %.val182.pre = load ptr, ptr %i.be, align 8, !tbaa !33 ; 2 uses
  br i1 %i.qh, label %.lr.ph368, label %.critedge4

.lr.ph368:                                        ; preds = %Vec_StrFillExtra.exit
  %.val179 = load ptr, ptr %i.ax, align 8, !tbaa !33
  %.val178 = load ptr, ptr %i.aq, align 8, !tbaa !33
  %.promoted371 = load i32, ptr %i.ay, align 8, !tbaa !44
  %wide.trip.count427 = zext nneg i32 %.val to i64
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph368, %Vec_IntPush.exit288
  %indvars.iv422 = phi i64 [ 0, %.lr.ph368 ], [ %indvars.iv.next423, %Vec_IntPush.exit288 ] ; 2 uses
  %indvars.iv420 = phi i64 [ 0, %.lr.ph368 ], [ %indvars.iv.next421, %Vec_IntPush.exit288 ] ; 7 uses
  %storemerge313375 = phi ptr [ %.val182.pre, %.lr.ph368 ], [ %storemerge313376, %Vec_IntPush.exit288 ] ; 6 uses
  %spec.select.sink.i285373 = phi i32 [ %.promoted371, %.lr.ph368 ], [ %spec.select.sink.i285372, %Vec_IntPush.exit288 ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.val179, i64 %indvars.iv422
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !34 ; 3 uses
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %.val178, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !34 ; 2 uses
  store i32 %i.qm, ptr %i.c, align 4, !tbaa !34
  %i.qn = xor i32 %i.qm, 1
  %i.qo = trunc nsw i64 %indvars.iv420 to i32
  %i.qp = icmp eq i32 %spec.select.sink.i285373, %i.qo
  br i1 %i.qp, label %bb.ee, label %Vec_IntPush.exit288

bb.ee:                                            ; preds = %bb.ed
  %i.qq = icmp samesign ult i64 %indvars.iv420, 16
  br i1 %i.qq, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %.not9.i.i286 = icmp eq ptr %storemerge313375, null
  br i1 %.not9.i.i286, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge313375, i64 noundef 64) #16
  br label %Vec_IntPush.exit288

bb.eh:                                            ; preds = %bb.ef
  %i.qs = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit288

bb.ei:                                            ; preds = %bb.ee
  %i.qt = icmp samesign ult i64 %indvars.iv420, 1073741823
  %indvars.iv420.tr = trunc nsw i64 %indvars.iv420 to i32
  %i.qu = shl nsw i32 %indvars.iv420.tr, 1
  %spec.select.i281 = select i1 %i.qt, i32 %i.qu, i32 2147483647 ; 4 uses
  %i.qv = sext i32 %spec.select.i281 to i64
  %.not.i9.i282 = icmp samesign ult i64 %indvars.iv420, %i.qv
  br i1 %.not.i9.i282, label %bb.ej, label %Vec_IntPush.exit288

bb.ej:                                            ; preds = %bb.ei
  %.not9.i10.i283 = icmp eq ptr %storemerge313375, null
  %i.qw = zext nneg i32 %spec.select.i281 to i64
  %i.qx = shl nuw nsw i64 %i.qw, 2                ; 2 uses
  br i1 %.not9.i10.i283, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.qy = call ptr @realloc(ptr noundef nonnull %storemerge313375, i64 noundef %i.qx) #16
  br label %Vec_IntPush.exit288

bb.el:                                            ; preds = %bb.ej
  %i.qz = call noalias ptr @malloc(i64 noundef %i.qx) #17
  br label %Vec_IntPush.exit288

Vec_IntPush.exit288:                              ; preds = %bb.eh, %bb.eg, %bb.el, %bb.ek, %bb.ed, %bb.ei
  %storemerge313376 = phi ptr [ %storemerge313375, %bb.ed ], [ %storemerge313375, %bb.ei ], [ %i.qs, %bb.eh ], [ %i.qr, %bb.eg ], [ %i.qy, %bb.ek ], [ %i.qz, %bb.el ] ; 4 uses
  %spec.select.sink.i285372 = phi i32 [ %spec.select.sink.i285373, %bb.ed ], [ %spec.select.sink.i285373, %bb.ei ], [ 16, %bb.eh ], [ 16, %bb.eg ], [ %spec.select.i281, %bb.ek ], [ %spec.select.i281, %bb.el ] ; 2 uses
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 3 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %storemerge313376, i64 %indvars.iv420
  store i32 %i.qn, ptr %i.ra, align 4, !tbaa !34
  %i.rb = xor i32 %i.qj, -1
  %i.rc = add i32 %i.ot, %i.rb
  %i.rd = add nsw i32 %i.qj, %i.os
  %.sink513 = select i1 %.not, i32 %i.rd, i32 %i.rc
  %i.re = load i32, ptr %i.c, align 4, !tbaa !34
  %i.rf = trunc i32 %i.re to i8
  %i.rg = and i8 %i.rf, 1
  %i.rh = sub nuw nsw i8 49, %i.rg
  %.val187 = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.ri = sext i32 %.sink513 to i64
  %i.rj = getelementptr inbounds i8, ptr %.val187, i64 %i.ri
  store i8 %i.rh, ptr %i.rj, align 1, !tbaa !52
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond428.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count427
  br i1 %exitcond428.not, label %..critedge4_crit_edge, label %bb.ed, !llvm.loop !166

..critedge4_crit_edge:                            ; preds = %Vec_IntPush.exit288
  %i.rk = trunc nsw i64 %indvars.iv.next421 to i32
  store i32 %i.rk, ptr %i.az, align 4, !tbaa !32
  store i32 %spec.select.sink.i285372, ptr %i.ay, align 8
  store ptr %storemerge313376, ptr %i.be, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %Vec_StrFillExtra.exit
  %.val184 = phi i64 [ %indvars.iv.next421, %..critedge4_crit_edge ], [ 0, %Vec_StrFillExtra.exit ]
  %.val182 = phi ptr [ %storemerge313376, %..critedge4_crit_edge ], [ %.val182.pre, %Vec_StrFillExtra.exit ] ; 2 uses
  %i.rl = getelementptr inbounds [4 x i8], ptr %.val182, i64 %.val184
  %i.rm = call i32 @sat_solver_addclause(ptr noundef %i.nz, ptr noundef %.val182, ptr noundef %i.rl) #18
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %.loopexit.sink.split, label %bb.em

bb.em:                                            ; preds = %.critedge4
  br i1 %.not169, label %bb.ci, label %.loopexit, !llvm.loop !167

.loopexit.sink.split:                             ; preds = %.critedge4, %bb.ct
  %.4.ph = phi i64 [ %.2, %bb.ct ], [ %.3, %.critedge4 ]
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv429
  store i32 1, ptr %i.ro, align 4, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.em, %.loopexit.sink.split
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %.3, %bb.em ]
  %i.rp = load i32, ptr %i.e, align 8, !tbaa !34
  %i.rq = icmp ne i32 %i.rp, 0
  %i.rr = load i32, ptr %i.cu, align 4
  %i.rs = icmp ne i32 %i.rr, 0
  %or.cond = select i1 %i.rq, i1 true, i1 %i.rs
  br i1 %or.cond, label %.loopexit316, label %bb.en

bb.en:                                            ; preds = %.loopexit
  %i.rt = add nuw nsw i32 %.0156379, 1            ; 3 uses
  %i.ru = icmp slt i32 %i.rt, %5
  %i.rv = select i1 %i.jp, i1 true, i1 %i.ru
  br i1 %i.rv, label %.preheader, label %.loopexit316, !llvm.loop !168

.loopexit316:                                     ; preds = %.loopexit, %bb.en, %bb.ct, %bb.dr, %.loopexit322, %Vec_StrPush.exit243, %Vec_StrPush.exit243.1, %Vec_StrPush.exit
  %.1157 = phi i32 [ 0, %Vec_StrPush.exit243.1 ], [ 0, %Vec_StrPush.exit ], [ %.0156379, %bb.ct ], [ %i.hp, %Vec_StrPush.exit243 ], [ %i.cp, %.loopexit322 ], [ %.0156379, %bb.dr ], [ %i.rt, %bb.en ], [ %.0156379, %.loopexit ]
  %i.rw = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %.not.i289 = icmp eq ptr %i.rw, null
  br i1 %.not.i289, label %Vec_IntFree.exit, label %bb.eo

bb.eo:                                            ; preds = %.loopexit316
  call void @free(ptr noundef nonnull %i.rw) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit316, %bb.eo
  call void @free(ptr noundef nonnull %i.ae) #18
  %i.rx = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 2 uses
  %.not.i290 = icmp eq ptr %i.rx, null
  br i1 %.not.i290, label %Vec_IntFree.exit291, label %bb.ep

bb.ep:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.rx) #18
  br label %Vec_IntFree.exit291

Vec_IntFree.exit291:                              ; preds = %Vec_IntFree.exit, %bb.ep
  call void @free(ptr noundef nonnull %i.ak) #18
  %i.ry = load ptr, ptr %i.w, align 8, !tbaa !33  ; 2 uses
  %.not.i292 = icmp eq ptr %i.ry, null
  br i1 %.not.i292, label %Vec_IntFree.exit293, label %bb.eq

bb.eq:                                            ; preds = %Vec_IntFree.exit291
  call void @free(ptr noundef nonnull %i.ry) #18
  br label %Vec_IntFree.exit293

Vec_IntFree.exit293:                              ; preds = %Vec_IntFree.exit291, %bb.eq
  call void @free(ptr noundef nonnull %i.p) #18
  %i.rz = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %.not.i294 = icmp eq ptr %i.rz, null
  br i1 %.not.i294, label %Vec_IntFree.exit295, label %bb.er

bb.er:                                            ; preds = %Vec_IntFree.exit293
  call void @free(ptr noundef nonnull %i.rz) #18
  br label %Vec_IntFree.exit295

Vec_IntFree.exit295:                              ; preds = %Vec_IntFree.exit293, %bb.er
  call void @free(ptr noundef nonnull %i.x) #18
  %i.sa = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 2 uses
  %.not.i296 = icmp eq ptr %i.sa, null
  br i1 %.not.i296, label %Vec_IntFree.exit297, label %bb.es

bb.es:                                            ; preds = %Vec_IntFree.exit295
  call void @free(ptr noundef nonnull %i.sa) #18
  br label %Vec_IntFree.exit297

Vec_IntFree.exit297:                              ; preds = %Vec_IntFree.exit295, %bb.es
  call void @free(ptr noundef nonnull %i.ar) #18
  %i.sb = load ptr, ptr %i.be, align 8, !tbaa !33 ; 2 uses
  %.not.i298 = icmp eq ptr %i.sb, null
  br i1 %.not.i298, label %Vec_IntFree.exit299, label %bb.et

bb.et:                                            ; preds = %Vec_IntFree.exit297
  call void @free(ptr noundef nonnull %i.sb) #18
  br label %Vec_IntFree.exit299

Vec_IntFree.exit299:                              ; preds = %Vec_IntFree.exit297, %bb.et
  call void @free(ptr noundef nonnull %i.ay) #18
  %i.sc = load i32, ptr %i.e, align 8, !tbaa !34
  %i.sd = icmp ne i32 %i.sc, 0
  %i.se = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.sf = load i32, ptr %i.se, align 4            ; 2 uses
  %i.sg = icmp ne i32 %i.sf, 0
  %or.cond9 = select i1 %i.sd, i1 true, i1 %i.sg
  br i1 %or.cond9, label %bb.eu, label %.thread

bb.eu:                                            ; preds = %Vec_IntFree.exit299
  %i.sh = sext i32 %i.sf to i64
  %i.si = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.sh ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !78 ; 6 uses
  store ptr null, ptr %i.si, align 8, !tbaa !78
  %i.sk = icmp samesign ugt i32 %.1157, 1
  br i1 %i.sk, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.sl = getelementptr i8, ptr %i.sj, i64 4
  %.val193 = load i32, ptr %i.sl, align 4, !tbaa !57
  %i.sm = add nsw i32 %4, 3
  %i.sn = sdiv i32 %.val193, %i.sm
  %i.so = call i32 @Bmc_CollapseIrredundantFull(ptr noundef %i.sj, i32 noundef %i.sn, i32 noundef %4) ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %.not174 = icmp eq i32 %9, 0
  br i1 %.not174, label %bb.fb, label %bb.ex

.thread:                                          ; preds = %Vec_IntFree.exit299
  %.not174305 = icmp eq i32 %9, 0
  br i1 %.not174305, label %bb.fb, label %.thread308

.thread308:                                       ; preds = %.thread
  %i.sp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %4) ; 0 uses
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.sq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %4) ; 0 uses
  %i.sr = icmp eq ptr %i.sj, null
  br i1 %i.sr, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.thread308, %bb.ex
  %i.ss = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %5) ; 0 uses
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.st = getelementptr i8, ptr %i.sj, i64 4
  %.0165.val = load i32, ptr %i.st, align 4, !tbaa !57
  %i.su = add nsw i32 %4, 3
  %i.sv = sdiv i32 %.0165.val, %i.su
  %i.sw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.sv) ; 0 uses
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.0165306310 = phi ptr [ %i.sj, %bb.ez ], [ null, %bb.ey ]
  %i.sx = load i64, ptr %i.d, align 16, !tbaa !39
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19)
  %i.sy = sitofp i64 %i.sx to double
  %i.sz = fdiv double %i.sy, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.sz)
  %i.ta = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !39
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.20)
  %i.tc = sitofp i64 %i.tb to double
  %i.td = fdiv double %i.tc, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.td)
  %i.te = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.tf = load i64, ptr %i.te, align 16, !tbaa !39
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21)
  %i.tg = sitofp i64 %i.tf to double
  %i.th = fdiv double %i.tg, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.th)
  %i.ti = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !39
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22)
  %i.tk = sitofp i64 %i.tj to double
  %i.tl = fdiv double %i.tk, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.tl)
  br label %bb.fb

bb.fb:                                            ; preds = %.thread, %bb.fa, %bb.ew
  %.0165307 = phi ptr [ null, %.thread ], [ %.0165306310, %bb.fa ], [ %i.sj, %bb.ew ]
  %i.tm = load ptr, ptr %i.b, align 16, !tbaa !78 ; 3 uses
  %i.tn = icmp eq ptr %i.tm, null
  br i1 %i.tn, label %Vec_StrFreeP.exit, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !46 ; 2 uses
  %.not.i300 = icmp eq ptr %i.tp, null
  br i1 %.not.i300, label %bb.fd, label %.thread.i

.thread.i:                                        ; preds = %bb.fc
  call void @free(ptr noundef nonnull %i.tp) #18
  br label %bb.fd

bb.fd:                                            ; preds = %.thread.i, %bb.fc
  call void @free(ptr noundef nonnull %i.tm) #18
  br label %Vec_StrFreeP.exit

Vec_StrFreeP.exit:                                ; preds = %bb.fb, %bb.fd
  %i.tq = load ptr, ptr %i.k, align 8, !tbaa !78  ; 3 uses
  %i.tr = icmp eq ptr %i.tq, null
  br i1 %i.tr, label %Vec_StrFreeP.exit303, label %bb.fe

bb.fe:                                            ; preds = %Vec_StrFreeP.exit
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !46 ; 2 uses
  %.not.i301 = icmp eq ptr %i.tt, null
  br i1 %.not.i301, label %bb.ff, label %.thread.i302

.thread.i302:                                     ; preds = %bb.fe
  call void @free(ptr noundef nonnull %i.tt) #18
  br label %bb.ff

bb.ff:                                            ; preds = %.thread.i302, %bb.fe
  call void @free(ptr noundef nonnull %i.tq) #18
  br label %Vec_StrFreeP.exit303

Vec_StrFreeP.exit303:                             ; preds = %Vec_StrFreeP.exit, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0548)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5549)
  ret ptr %.0165307
}

declare i32 @sat_solver_nvars(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @Bmc_CollapseOne3(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18 ; 5 uses
  %i.b = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.a, i32 noundef 1, i32 noundef 0) #18 ; 2 uses
  %i.c = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.a, i32 noundef 1, i32 noundef 0) #18 ; 2 uses
  %i.d = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.a, i32 noundef 1, i32 noundef 0) #18 ; 2 uses
  %i.e = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.a, i32 noundef 1, i32 noundef 0) #18 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.g, align 4, !tbaa !32
  %i.h = tail call ptr @Bmc_CollapseOne_int3(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %.val.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  tail call void @sat_solver_delete(ptr noundef %i.b) #18
  tail call void @sat_solver_delete(ptr noundef %i.c) #18
  tail call void @sat_solver_delete(ptr noundef %i.d) #18
  tail call void @sat_solver_delete(ptr noundef %i.e) #18
  tail call void @Cnf_DataFree(ptr noundef %i.a) #18
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define ptr @Bmc_CollapseOne_int2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 8 uses
  %i.b = alloca [2 x ptr], align 16               ; 9 uses
  %i.c = alloca [2 x i32], align 4                ; 11 uses
  %i.d = alloca [2 x [2 x i64]], align 16         ; 11 uses
  %i.e = alloca [2 x i32], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 16, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 13 uses
  store i32 0, ptr %i.h, align 4, !tbaa !57
  store i32 1000, ptr %i.g, align 8, !tbaa !70
  %i.i = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 15 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !46
  store ptr %i.g, ptr %i.b, align 16, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !57
  store i32 1000, ptr %i.l, align 8, !tbaa !70
  %i.n = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !46
  store ptr %i.l, ptr %i.k, align 8, !tbaa !78
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.q = tail call i32 @llvm.umax.i32(i32 %2, i32 15)
  %spec.store.select.i = add nsw i32 %i.q, 1      ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  store i32 0, ptr %i.r, align 4, !tbaa !32
  store i32 %spec.store.select.i, ptr %i.p, align 8, !tbaa !44
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 4 uses
  %indvars.iv377.sroa.gep457 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %indvars.iv377.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %indvars.iv377.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %indvars.iv377.sroa.gep466 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = sext i32 %spec.store.select.i to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted307 = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store ptr %.promoted307, ptr %i.v, align 8, !tbaa !33
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !32
  store i32 %spec.store.select.i, ptr %i.w, align 8, !tbaa !44
  br i1 %.not.i, label %Vec_IntAlloc.exit177, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.y = sext i32 %spec.store.select.i to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #17
  br label %Vec_IntAlloc.exit177

Vec_IntAlloc.exit177:                             ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !33
  %i.ad = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !32
  store i32 %spec.store.select.i, ptr %i.ad, align 8, !tbaa !44
  br i1 %.not.i, label %Vec_IntAlloc.exit181, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit177
  %i.af = sext i32 %spec.store.select.i to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #17
  br label %Vec_IntAlloc.exit181

Vec_IntAlloc.exit181:                             ; preds = %Vec_IntAlloc.exit177, %bb.d
  %i.ai = phi ptr [ %i.ah, %bb.d ], [ null, %Vec_IntAlloc.exit177 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !33
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 4 uses
  store i32 0, ptr %i.al, align 4, !tbaa !32
  store i32 %spec.store.select.i, ptr %i.ak, align 8, !tbaa !44
  br i1 %.not.i, label %Vec_IntAlloc.exit185, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit181
  %i.am = sext i32 %spec.store.select.i to i64
  %i.an = shl nsw i64 %i.am, 2
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #17
  br label %Vec_IntAlloc.exit185

Vec_IntAlloc.exit185:                             ; preds = %Vec_IntAlloc.exit181, %bb.e
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ null, %Vec_IntAlloc.exit181 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 5 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 0, ptr %i.e, align 8
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.ar = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %.not, label %.preheader279, label %.preheader281

.preheader281:                                    ; preds = %Vec_IntAlloc.exit185
  br i1 %i.ar, label %.lr.ph, label %.loopexit280

.preheader279:                                    ; preds = %Vec_IntAlloc.exit185
  br i1 %i.ar, label %.lr.ph301, label %.loopexit280

.lr.ph:                                           ; preds = %.preheader281, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %.preheader281 ] ; 7 uses
  %storemerge298 = phi ptr [ %storemerge299, %Vec_IntPush.exit ], [ %.promoted307, %.preheader281 ] ; 6 uses
  %spec.select.sink.i296 = phi i32 [ %spec.select.sink.i295, %Vec_IntPush.exit ], [ %spec.store.select.i, %.preheader281 ] ; 3 uses
  %.0140.in293 = phi i32 [ %.0140, %Vec_IntPush.exit ], [ %2, %.preheader281 ] ; 3 uses
  %.0140 = add nsw i32 %.0140.in293, -1
  %i.as = add nuw nsw i32 %.0140.in293, 2
  %i.at = trunc nsw i64 %indvars.iv to i32
  %i.au = icmp eq i32 %spec.select.sink.i296, %i.at
  br i1 %i.au, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %.lr.ph
  %i.av = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.av, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %storemerge298, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge298, i64 noundef 64) #16
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.f
  %i.ay = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.az = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ay, i32 %i.az, i32 2147483647 ; 4 uses
  %i.ba = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ba
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %storemerge298, null
  %i.bb = zext nneg i32 %spec.select.i to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call ptr @realloc(ptr noundef nonnull %storemerge298, i64 noundef %i.bc) #16
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.k
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bc) #17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %.lr.ph, %bb.j
  %storemerge299 = phi ptr [ %storemerge298, %.lr.ph ], [ %storemerge298, %bb.j ], [ %i.ax, %bb.i ], [ %i.aw, %bb.h ], [ %i.bd, %bb.l ], [ %i.be, %bb.m ] ; 3 uses
  %spec.select.sink.i295 = phi i32 [ %spec.select.sink.i296, %.lr.ph ], [ %spec.select.sink.i296, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %storemerge299, i64 %indvars.iv
  store i32 %i.as, ptr %i.bf, align 4, !tbaa !34
  %i.bg = icmp samesign ugt i32 %.0140.in293, 1
  br i1 %i.bg, label %.lr.ph, label %.loopexit280.sink.split, !llvm.loop !169

.lr.ph301:                                        ; preds = %.preheader279, %Vec_IntPush.exit193
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %Vec_IntPush.exit193 ], [ 0, %.preheader279 ] ; 7 uses
  %storemerge274308 = phi ptr [ %storemerge274309, %Vec_IntPush.exit193 ], [ %.promoted307, %.preheader279 ] ; 6 uses
  %spec.select.sink.i190306 = phi i32 [ %spec.select.sink.i190305, %Vec_IntPush.exit193 ], [ %spec.store.select.i, %.preheader279 ] ; 3 uses
  %.1141300 = phi i32 [ %i.bv, %Vec_IntPush.exit193 ], [ 0, %.preheader279 ] ; 2 uses
  %i.bh = add nuw nsw i32 %.1141300, 3
  %i.bi = trunc nsw i64 %indvars.iv354 to i32
  %i.bj = icmp eq i32 %spec.select.sink.i190306, %i.bi
  br i1 %i.bj, label %bb.n, label %Vec_IntPush.exit193

bb.n:                                             ; preds = %.lr.ph301
  %i.bk = icmp samesign ult i64 %indvars.iv354, 16
  br i1 %i.bk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i191 = icmp eq ptr %storemerge274308, null
  br i1 %.not9.i.i191, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge274308, i64 noundef 64) #16
  br label %Vec_IntPush.exit193

bb.q:                                             ; preds = %bb.o
  %i.bm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit193

bb.r:                                             ; preds = %bb.n
  %i.bn = icmp samesign ult i64 %indvars.iv354, 1073741823
  %indvars.iv354.tr = trunc nsw i64 %indvars.iv354 to i32
  %i.bo = shl nsw i32 %indvars.iv354.tr, 1
  %spec.select.i186 = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 4 uses
  %i.bp = sext i32 %spec.select.i186 to i64
  %.not.i9.i187 = icmp samesign ult i64 %indvars.iv354, %i.bp
  br i1 %.not.i9.i187, label %bb.s, label %Vec_IntPush.exit193

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i188 = icmp eq ptr %storemerge274308, null
  %i.bq = zext nneg i32 %spec.select.i186 to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  br i1 %.not9.i10.i188, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = tail call ptr @realloc(ptr noundef nonnull %storemerge274308, i64 noundef %i.br) #16
  br label %Vec_IntPush.exit193

bb.u:                                             ; preds = %bb.s
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.br) #17
  br label %Vec_IntPush.exit193

Vec_IntPush.exit193:                              ; preds = %bb.q, %bb.p, %bb.u, %bb.t, %.lr.ph301, %bb.r
  %storemerge274309 = phi ptr [ %storemerge274308, %.lr.ph301 ], [ %storemerge274308, %bb.r ], [ %i.bm, %bb.q ], [ %i.bl, %bb.p ], [ %i.bs, %bb.t ], [ %i.bt, %bb.u ] ; 3 uses
  %spec.select.sink.i190305 = phi i32 [ %spec.select.sink.i190306, %.lr.ph301 ], [ %spec.select.sink.i190306, %bb.r ], [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i186, %bb.t ], [ %spec.select.i186, %bb.u ] ; 2 uses
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %storemerge274309, i64 %indvars.iv354
  store i32 %i.bh, ptr %i.bu, align 4, !tbaa !34
  %i.bv = add nuw nsw i32 %.1141300, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, %2
  br i1 %exitcond.not, label %.loopexit280.sink.split, label %.lr.ph301, !llvm.loop !170

.loopexit280.sink.split:                          ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit193
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next355, %Vec_IntPush.exit193 ], [ %indvars.iv.next, %Vec_IntPush.exit ]
  %spec.select.sink.i295.lcssa.sink = phi i32 [ %spec.select.sink.i190305, %Vec_IntPush.exit193 ], [ %spec.select.sink.i295, %Vec_IntPush.exit ]
  %storemerge299.lcssa.sink = phi ptr [ %storemerge274309, %Vec_IntPush.exit193 ], [ %storemerge299, %Vec_IntPush.exit ]
  %i.bw = trunc nsw i64 %indvars.iv.next.lcssa.sink to i32
  store i32 %i.bw, ptr %i.r, align 4, !tbaa !32
  store i32 %spec.select.sink.i295.lcssa.sink, ptr %i.p, align 8
  store ptr %storemerge299.lcssa.sink, ptr %i.v, align 8
  br label %.loopexit280

.loopexit280:                                     ; preds = %.loopexit280.sink.split, %.preheader281, %.preheader279
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  %i.by = sext i32 %4 to i64                      ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !34
  %i.bz = call i32 @sat_solver_solve(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.bz, label %bb.ax [
    i32 0, label %.loopexit275
    i32 -1, label %.lr.ph.i
  ]

.preheader.lr.ph:                                 ; preds = %Vec_StrPush.exit206.1
  %.not149 = icmp eq i32 %7, 0                    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %.preheader

.lr.ph.i:                                         ; preds = %Vec_StrPush.exit206, %.loopexit280
  %.not154 = phi ptr [ @.str.13, %.loopexit280 ], [ @.str.12, %Vec_StrPush.exit206 ] ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !57
  %i.cf = load i8, ptr %.not154, align 1, !tbaa !52
  %i.cg = load i32, ptr %i.g, align 8, !tbaa !70
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !46  ; 3 uses
  br i1 %i.ch, label %bb.v, label %Vec_StrPush.exit.i

bb.v:                                             ; preds = %.lr.ph.i
  %.not9.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not9.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ci, i64 noundef 16) #16
  %.pre9.i.pre = load i32, ptr %i.h, align 4, !tbaa !57
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.x:                                             ; preds = %bb.v
  %i.ck = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.x, %bb.w
  %.pre9.i = phi i32 [ 0, %bb.x ], [ %.pre9.i.pre, %bb.w ]
  %i.cl = phi ptr [ %i.ck, %bb.x ], [ %i.cj, %bb.w ] ; 2 uses
  store ptr %i.cl, ptr %i.j, align 8, !tbaa !46
  store i32 16, ptr %i.g, align 8, !tbaa !70
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %.lr.ph.i, %Vec_StrGrow.exit11.sink.split.i.i
  %i.cm = phi i32 [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cn = phi ptr [ %i.cl, %Vec_StrGrow.exit11.sink.split.i.i ], [ %i.ci, %.lr.ph.i ]
  %i.co = add nsw i32 %i.cm, 1
  store i32 %i.co, ptr %i.h, align 4, !tbaa !57
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %i.cp
  store i8 %i.cf, ptr %i.cq, align 1, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %.not154, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !52
  %i.ct = load i32, ptr %i.h, align 4, !tbaa !57  ; 7 uses
  %i.cu = load i32, ptr %i.g, align 8, !tbaa !70
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.y, label %.Vec_StrPush.exit_crit_edge.i.1

.Vec_StrPush.exit_crit_edge.i.1:                  ; preds = %Vec_StrPush.exit.i
  %.pre.i.1 = load ptr, ptr %i.j, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i.1

bb.y:                                             ; preds = %Vec_StrPush.exit.i
  %i.cw = icmp slt i32 %i.ct, 16
  br i1 %i.cw, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = icmp samesign ult i32 %i.ct, 1073741823
  %i.cy = shl nuw nsw i32 %i.ct, 1
  %spec.select.i.i.1 = select i1 %i.cx, i32 %i.cy, i32 2147483647 ; 4 uses
  %.not.i9.i.i.1 = icmp samesign ult i32 %i.ct, %spec.select.i.i.1
  %.pre8.i.1 = load ptr, ptr %i.j, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i.1, label %bb.aa, label %Vec_StrPush.exit.i.1

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i.i.1 = icmp eq ptr %.pre8.i.1, null
  %i.cz = zext nneg i32 %spec.select.i.i.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = call ptr @realloc(ptr noundef nonnull %.pre8.i.1, i64 noundef %i.cz) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ac:                                            ; preds = %bb.aa
  %i.db = call noalias ptr @malloc(i64 noundef %i.cz) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ad:                                            ; preds = %bb.y
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !46  ; 2 uses
  %.not9.i.i.i.1 = icmp eq ptr %i.dc, null
  br i1 %.not9.i.i.i.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dc, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.af:                                            ; preds = %bb.ad
  %i.de = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

Vec_StrGrow.exit11.sink.split.i.i.1:              ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %i.df = phi ptr [ %i.de, %bb.af ], [ %i.dd, %bb.ae ], [ %i.da, %bb.ab ], [ %i.db, %bb.ac ] ; 2 uses
  %spec.select.sink.i.i.1 = phi i32 [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i.i.1, %bb.ab ], [ %spec.select.i.i.1, %bb.ac ]
  store ptr %i.df, ptr %i.j, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i.1, ptr %i.g, align 8, !tbaa !70
  %.pre9.i.1 = load i32, ptr %i.h, align 4, !tbaa !57
  br label %Vec_StrPush.exit.i.1

Vec_StrPush.exit.i.1:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.1, %bb.z, %.Vec_StrPush.exit_crit_edge.i.1
  %i.dg = phi i32 [ %i.ct, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %i.ct, %bb.z ], [ %.pre9.i.1, %Vec_StrGrow.exit11.sink.split.i.i.1 ] ; 2 uses
  %i.dh = phi ptr [ %.pre.i.1, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %.pre8.i.1, %bb.z ], [ %i.df, %Vec_StrGrow.exit11.sink.split.i.i.1 ]
  %i.di = add nsw i32 %i.dg, 1
  store i32 %i.di, ptr %i.h, align 4, !tbaa !57
  %i.dj = sext i32 %i.dg to i64
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.dj
  store i8 %i.cs, ptr %i.dk, align 1, !tbaa !52
  %i.dl = getelementptr inbounds nuw i8, ptr %.not154, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !52
  %i.dn = load i32, ptr %i.h, align 4, !tbaa !57  ; 7 uses
  %i.do = load i32, ptr %i.g, align 8, !tbaa !70
  %i.dp = icmp eq i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.ag, label %.Vec_StrPush.exit_crit_edge.i.2

.Vec_StrPush.exit_crit_edge.i.2:                  ; preds = %Vec_StrPush.exit.i.1
  %.pre.i.2 = load ptr, ptr %i.j, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i.2

bb.ag:                                            ; preds = %Vec_StrPush.exit.i.1
  %i.dq = icmp slt i32 %i.dn, 16
  br i1 %i.dq, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = icmp samesign ult i32 %i.dn, 1073741823
  %i.ds = shl nuw nsw i32 %i.dn, 1
  %spec.select.i.i.2 = select i1 %i.dr, i32 %i.ds, i32 2147483647 ; 4 uses
  %.not.i9.i.i.2 = icmp samesign ult i32 %i.dn, %spec.select.i.i.2
  %.pre8.i.2 = load ptr, ptr %i.j, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i.2, label %bb.ai, label %Vec_StrPush.exit.i.2

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i.i.2 = icmp eq ptr %.pre8.i.2, null
  %i.dt = zext nneg i32 %spec.select.i.i.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = call ptr @realloc(ptr noundef nonnull %.pre8.i.2, i64 noundef %i.dt) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.ak:                                            ; preds = %bb.ai
  %i.dv = call noalias ptr @malloc(i64 noundef %i.dt) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.al:                                            ; preds = %bb.ag
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !46  ; 2 uses
  %.not9.i.i.i.2 = icmp eq ptr %i.dw, null
  br i1 %.not9.i.i.i.2, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dw, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.an:                                            ; preds = %bb.al
  %i.dy = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

Vec_StrGrow.exit11.sink.split.i.i.2:              ; preds = %bb.an, %bb.am, %bb.ak, %bb.aj
  %i.dz = phi ptr [ %i.dy, %bb.an ], [ %i.dx, %bb.am ], [ %i.du, %bb.aj ], [ %i.dv, %bb.ak ] ; 2 uses
  %spec.select.sink.i.i.2 = phi i32 [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i.i.2, %bb.aj ], [ %spec.select.i.i.2, %bb.ak ]
  store ptr %i.dz, ptr %i.j, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i.2, ptr %i.g, align 8, !tbaa !70
  %.pre9.i.2 = load i32, ptr %i.h, align 4, !tbaa !57
  br label %Vec_StrPush.exit.i.2

Vec_StrPush.exit.i.2:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.2, %bb.ah, %.Vec_StrPush.exit_crit_edge.i.2
  %i.ea = phi i32 [ %i.dn, %.Vec_StrPush.exit_crit_edge.i.2 ], [ %i.dn, %bb.ah ], [ %.pre9.i.2, %Vec_StrGrow.exit11.sink.split.i.i.2 ] ; 2 uses
  %i.eb = phi ptr [ %.pre.i.2, %.Vec_StrPush.exit_crit_edge.i.2 ], [ %.pre8.i.2, %bb.ah ], [ %i.dz, %Vec_StrGrow.exit11.sink.split.i.i.2 ]
  %i.ec = add nsw i32 %i.ea, 1
  store i32 %i.ec, ptr %i.h, align 4, !tbaa !57
  %i.ed = sext i32 %i.ea to i64
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed
  store i8 %i.dm, ptr %i.ee, align 1, !tbaa !52
  %i.ef = load ptr, ptr %i.b, align 16, !tbaa !78 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !57 ; 7 uses
  %i.ei = load i32, ptr %i.ef, align 8, !tbaa !70
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ao, label %Vec_StrPush.exit

bb.ao:                                            ; preds = %Vec_StrPush.exit.i.2
  %i.ek = icmp slt i32 %i.eh, 16
  br i1 %i.ek, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i198 = icmp eq ptr %i.em, null
  br i1 %.not9.i.i198, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.em, i64 noundef 16) #16
  br label %Vec_StrGrow.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.eo = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit.i

Vec_StrGrow.exit.i:                               ; preds = %bb.ar, %bb.aq
end_hunk_3
begin_hunk_4_@Bmc_CollapseOne_int2:bb.a
  %.not.i9.i195 = icmp samesign ult i32 %i.eh, %spec.select.i194
  br i1 %.not.i9.i195, label %bb.at, label %Vec_StrPush.exit

bb.at:                                            ; preds = %bb.as
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i196 = icmp eq ptr %i.et, null
  %i.eu = zext nneg i32 %spec.select.i194 to i64  ; 2 uses
  br i1 %.not9.i10.i196, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ev = call ptr @realloc(ptr noundef nonnull %i.et, i64 noundef %i.eu) #16
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ew = call noalias ptr @malloc(i64 noundef %i.eu) #17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ex = phi ptr [ %i.ev, %bb.au ], [ %i.ew, %bb.av ]
  store ptr %i.ex, ptr %i.es, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.aw, %Vec_StrGrow.exit.i
  %spec.select.sink.i197 = phi i32 [ %spec.select.i194, %bb.aw ], [ 16, %Vec_StrGrow.exit.i ]
  store i32 %spec.select.sink.i197, ptr %i.ef, align 8, !tbaa !70
  %.pre383.a = load i32, ptr %i.eg, align 4, !tbaa !57
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %Vec_StrPush.exit.i.2, %bb.as, %Vec_StrGrow.exit11.sink.split.i
  %i.ey = phi i32 [ %i.eh, %Vec_StrPush.exit.i.2 ], [ %i.eh, %bb.as ], [ %.pre383.a, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.fb = add nsw i32 %i.ey, 1
  store i32 %i.fb, ptr %i.eg, align 4, !tbaa !57
  %i.fc = sext i32 %i.ey to i64
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 %i.fc
  store i8 0, ptr %i.fd, align 1, !tbaa !52
  store i32 1, ptr %i.e, align 8, !tbaa !34
  br label %.loopexit275

bb.ax:                                            ; preds = %.loopexit280
  %i.fe = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx) #18 ; 0 uses
  %i.ff = load i32, ptr %i.h, align 4, !tbaa !57  ; 7 uses
  %i.fg = load i32, ptr %i.g, align 8, !tbaa !70
  %i.fh = icmp eq i32 %i.ff, %i.fg
  br i1 %i.fh, label %bb.ay, label %.Vec_StrPush.exit206_crit_edge

.Vec_StrPush.exit206_crit_edge:                   ; preds = %bb.ax
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !46
  br label %Vec_StrPush.exit206

bb.ay:                                            ; preds = %bb.ax
  %i.fi = icmp slt i32 %i.ff, 16
  br i1 %i.fi, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.fj = load ptr, ptr %i.j, align 8, !tbaa !46  ; 2 uses
  %.not9.i.i204 = icmp eq ptr %i.fj, null
  br i1 %.not9.i.i204, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fj, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i202

bb.bb:                                            ; preds = %bb.az
  %i.fl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i202

bb.bc:                                            ; preds = %bb.ay
  %i.fm = icmp samesign ult i32 %i.ff, 1073741823
  %i.fn = shl nuw nsw i32 %i.ff, 1
  %spec.select.i199 = select i1 %i.fm, i32 %i.fn, i32 2147483647 ; 4 uses
  %.not.i9.i200 = icmp samesign ult i32 %i.ff, %spec.select.i199
  %.pre380 = load ptr, ptr %i.j, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i200, label %bb.bd, label %Vec_StrPush.exit206

bb.bd:                                            ; preds = %bb.bc
  %.not9.i10.i201 = icmp eq ptr %.pre380, null
  %i.fo = zext nneg i32 %spec.select.i199 to i64  ; 2 uses
  br i1 %.not9.i10.i201, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fp = call ptr @realloc(ptr noundef nonnull %.pre380, i64 noundef %i.fo) #16
  br label %Vec_StrGrow.exit11.sink.split.i202

bb.bf:                                            ; preds = %bb.bd
  %i.fq = call noalias ptr @malloc(i64 noundef %i.fo) #17
  br label %Vec_StrGrow.exit11.sink.split.i202

Vec_StrGrow.exit11.sink.split.i202:               ; preds = %bb.be, %bb.bf, %bb.ba, %bb.bb
  %i.fr = phi ptr [ %i.fl, %bb.bb ], [ %i.fk, %bb.ba ], [ %i.fp, %bb.be ], [ %i.fq, %bb.bf ] ; 2 uses
  %spec.select.sink.i203 = phi i32 [ 16, %bb.bb ], [ 16, %bb.ba ], [ %spec.select.i199, %bb.be ], [ %spec.select.i199, %bb.bf ]
  store ptr %i.fr, ptr %i.j, align 8, !tbaa !46
  store i32 %spec.select.sink.i203, ptr %i.g, align 8, !tbaa !70
  %.pre381 = load i32, ptr %i.h, align 4, !tbaa !57
  br label %Vec_StrPush.exit206

Vec_StrPush.exit206:                              ; preds = %.Vec_StrPush.exit206_crit_edge, %bb.bc, %Vec_StrGrow.exit11.sink.split.i202
  %i.fs = phi i32 [ %i.ff, %.Vec_StrPush.exit206_crit_edge ], [ %i.ff, %bb.bc ], [ %.pre381, %Vec_StrGrow.exit11.sink.split.i202 ] ; 2 uses
  %i.ft = phi ptr [ %.pre, %.Vec_StrPush.exit206_crit_edge ], [ %.pre380, %bb.bc ], [ %i.fr, %Vec_StrGrow.exit11.sink.split.i202 ]
  %i.fu = add nsw i32 %i.fs, 1
  store i32 %i.fu, ptr %i.h, align 4, !tbaa !57
  %i.fv = sext i32 %i.fs to i64
  %i.fw = getelementptr inbounds i8, ptr %i.ft, i64 %i.fv
  store i8 0, ptr %i.fw, align 1, !tbaa !52
  store i32 5, ptr %i.c, align 4, !tbaa !34
  %i.fx = call i32 @sat_solver_solve(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.fx, label %bb.bg [
    i32 0, label %.loopexit275
    i32 -1, label %.lr.ph.i
  ]

bb.bg:                                            ; preds = %Vec_StrPush.exit206
  %i.fy = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx) #18 ; 0 uses
  %i.fz = load ptr, ptr %i.k, align 8, !tbaa !78  ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !57 ; 7 uses
  %i.gc = load i32, ptr %i.fz, align 8, !tbaa !70
  %i.gd = icmp eq i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.bh, label %Vec_StrPush.exit206.1

bb.bh:                                            ; preds = %bb.bg
  %i.ge = icmp slt i32 %i.gb, 16
  br i1 %i.ge, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gf = icmp samesign ult i32 %i.gb, 1073741823
  %i.gg = shl nuw nsw i32 %i.gb, 1
  %spec.select.i199.1 = select i1 %i.gf, i32 %i.gg, i32 2147483647 ; 3 uses
  %.not.i9.i200.1 = icmp samesign ult i32 %i.gb, %spec.select.i199.1
  br i1 %.not.i9.i200.1, label %bb.bj, label %Vec_StrPush.exit206.1

bb.bj:                                            ; preds = %bb.bi
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i201.1 = icmp eq ptr %i.gi, null
  %i.gj = zext nneg i32 %spec.select.i199.1 to i64 ; 2 uses
  br i1 %.not9.i10.i201.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gk = call ptr @realloc(ptr noundef nonnull %i.gi, i64 noundef %i.gj) #16
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.gl = call noalias ptr @malloc(i64 noundef %i.gj) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gm = phi ptr [ %i.gk, %bb.bk ], [ %i.gl, %bb.bl ]
  store ptr %i.gm, ptr %i.gh, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i202.1

bb.bn:                                            ; preds = %bb.bh
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i204.1 = icmp eq ptr %i.go, null
  br i1 %.not9.i.i204.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gp = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.go, i64 noundef 16) #16
  br label %Vec_StrGrow.exit.i205.1

bb.bp:                                            ; preds = %bb.bn
  %i.gq = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit.i205.1

Vec_StrGrow.exit.i205.1:                          ; preds = %bb.bp, %bb.bo
  %i.gr = phi ptr [ %i.gp, %bb.bo ], [ %i.gq, %bb.bp ]
  store ptr %i.gr, ptr %i.gn, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i202.1

Vec_StrGrow.exit11.sink.split.i202.1:             ; preds = %Vec_StrGrow.exit.i205.1, %bb.bm
  %spec.select.sink.i203.1 = phi i32 [ %spec.select.i199.1, %bb.bm ], [ 16, %Vec_StrGrow.exit.i205.1 ]
  store i32 %spec.select.sink.i203.1, ptr %i.fz, align 8, !tbaa !70
  %.pre384 = load i32, ptr %i.ga, align 4, !tbaa !57
  br label %Vec_StrPush.exit206.1

Vec_StrPush.exit206.1:                            ; preds = %Vec_StrGrow.exit11.sink.split.i202.1, %bb.bi, %bb.bg
  %i.gs = phi i32 [ %.pre384, %Vec_StrGrow.exit11.sink.split.i202.1 ], [ %i.gb, %bb.bi ], [ %i.gb, %bb.bg ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !46
  %i.gv = add nsw i32 %i.gs, 1
  store i32 %i.gv, ptr %i.ga, align 4, !tbaa !57
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gu, i64 %i.gw
  store i8 0, ptr %i.gx, align 1, !tbaa !52
  %i.gy = icmp eq i32 %3, 0
  %i.gz = icmp sgt i32 %3, -1
  br i1 %i.gz, label %.preheader.lr.ph, label %.loopexit275

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.dh
  %.0334 = phi i64 [ 0, %.preheader.lr.ph ], [ %.4, %bb.dh ]
  %.0138333 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.oe, %bb.dh ] ; 4 uses
  br label %bb.br

bb.bq:                                            ; preds = %.critedge2
  br i1 %.not150, label %bb.br, label %.loopexit, !llvm.loop !171

bb.br:                                            ; preds = %.preheader, %bb.bq
  %.not150 = phi i1 [ true, %.preheader ], [ false, %bb.bq ]
  %indvars.iv377.sroa.phi = phi ptr [ %i.d, %.preheader ], [ %indvars.iv377.sroa.gep457, %bb.bq ] ; 2 uses
  %indvars.iv377.sroa.phi458 = phi ptr [ %i.d, %.preheader ], [ %indvars.iv377.sroa.gep460, %bb.bq ]
  %indvars.iv377.sroa.phi461 = phi ptr [ %i.b, %.preheader ], [ %indvars.iv377.sroa.gep463, %bb.bq ]
  %indvars.iv377.sroa.phi464 = phi ptr [ %i.a, %.preheader ], [ %indvars.iv377.sroa.gep466, %bb.bq ]
  %indvars.iv377 = phi i64 [ 0, %.preheader ], [ 1, %bb.bq ] ; 5 uses
  %.1332 = phi i64 [ %.0334, %.preheader ], [ %.3264, %bb.bq ]
  br i1 %.not149, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ha = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #18
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %Abc_Clock.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hc = load i64, ptr %11, align 8, !tbaa !81
  %i.hd = mul nsw i64 %i.hc, 1000000
  %i.he = load i64, ptr %i.ca, align 8, !tbaa !82
  %i.hf = sdiv i64 %i.he, 1000
  %i.hg = add nsw i64 %i.hf, %i.hd
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.bs, %bb.bt
  %.0.i = phi i64 [ %i.hg, %bb.bt ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bu

bb.bu:                                            ; preds = %Abc_Clock.exit, %bb.br
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1332, %bb.br ] ; 3 uses
  %i.hh = load ptr, ptr %indvars.iv377.sroa.phi464, align 8, !tbaa !72 ; 4 uses
  %.val162 = load ptr, ptr %i.v, align 8, !tbaa !33 ; 6 uses
  %.val157 = load i32, ptr %i.r, align 4, !tbaa !32 ; 4 uses
  %i.hi = icmp sgt i32 %.val157, 0                ; 2 uses
  br i1 %i.hi, label %.lr.ph.i207, label %sat_solver_clean_polarity.exit

.lr.ph.i207:                                      ; preds = %bb.bu
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 216 ; 5 uses
  %wide.trip.count.i208 = zext nneg i32 %.val157 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i208, 3    ; 3 uses
  %i.hk = icmp ult i32 %.val157, 4
  br i1 %i.hk, label %.epil.preheader, label %.lr.ph.i207.new

.lr.ph.i207.new:                                  ; preds = %.lr.ph.i207
  %unroll_iter = and i64 %wide.trip.count.i208, 2147483644
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i207.new
  %indvars.iv.i209 = phi i64 [ 0, %.lr.ph.i207.new ], [ %indvars.iv.next.i210.3, %bb.bv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i207.new ], [ %niter.next.3, %bb.bv ]
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !34
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hl, i64 %i.ho
  store i8 0, ptr %i.hp, align 1, !tbaa !52
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !34
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %i.hq, i64 %i.hu
  store i8 0, ptr %i.hv, align 1, !tbaa !52
  %i.hw = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !34
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hw, i64 %i.ia
  store i8 0, ptr %i.ib, align 1, !tbaa !52
  %i.ic = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !34
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds i8, ptr %i.ic, i64 %i.ig
  store i8 0, ptr %i.ih, align 1, !tbaa !52
  %indvars.iv.next.i210.3 = add nuw nsw i64 %indvars.iv.i209, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !0

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.bv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i207
  %indvars.iv.i209.epil.init = phi i64 [ 0, %.lr.ph.i207 ], [ %indvars.iv.next.i210.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod454 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod454)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.epil.preheader
  %indvars.iv.i209.epil = phi i64 [ %indvars.iv.i209.epil.init, %.epil.preheader ], [ %indvars.iv.next.i210.epil, %bb.bw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bw ]
  %i.ii = load ptr, ptr %i.hj, align 8, !tbaa !76
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209.epil
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !34
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %i.ii, i64 %i.il
  store i8 0, ptr %i.im, align 1, !tbaa !52
  %indvars.iv.next.i210.epil = add nuw nsw i64 %indvars.iv.i209.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.bw, !llvm.loop !172

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.bw, %bb.bu
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @__const.Bmc_CollapseOne_int.iOOVars, i64 %indvars.iv377
  %i.io = load i32, ptr %i.in, align 4, !tbaa !34
  %i.ip = shl nsw i32 %i.io, 1                    ; 2 uses
  %i.iq = or disjoint i32 %i.ip, 1
  store i32 %i.iq, ptr %i.c, align 4, !tbaa !34
  %i.ir = call i32 @sat_solver_solve(ptr noundef %i.hh, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br i1 %.not149, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %sat_solver_clean_polarity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.is = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #18
  %i.it = icmp slt i32 %i.is, 0
  br i1 %i.it, label %Abc_Clock.exit213, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iu = load i64, ptr %10, align 8, !tbaa !81
  %i.iv = mul nsw i64 %i.iu, 1000000
  %i.iw = load i64, ptr %i.cb, align 8, !tbaa !82
  %i.ix = sdiv i64 %i.iw, 1000
  %i.iy = add nsw i64 %i.ix, %i.iv
  br label %Abc_Clock.exit213

Abc_Clock.exit213:                                ; preds = %bb.bx, %bb.by
  %.0.i212 = phi i64 [ %i.iy, %bb.by ], [ -1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.iz = sub i64 %.0.i212, %.2
  %i.ja = load i64, ptr %indvars.iv377.sroa.phi, align 16, !tbaa !39
  %i.jb = add nsw i64 %i.iz, %i.ja
  store i64 %i.jb, ptr %indvars.iv377.sroa.phi, align 16, !tbaa !39
  br label %bb.bz

bb.bz:                                            ; preds = %Abc_Clock.exit213, %sat_solver_clean_polarity.exit
  switch i32 %i.ir, label %bb.ca [
    i32 0, label %.loopexit275
    i32 -1, label %.loopexit.sink.split
  ]

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.x, align 4, !tbaa !32
  br i1 %i.hi, label %.lr.ph312, label %.critedge

.lr.ph312:                                        ; preds = %bb.ca
  %i.jc = getelementptr i8, ptr %i.hh, i64 328
  %.promoted315 = load i32, ptr %i.w, align 8, !tbaa !44
  %.promoted318 = load ptr, ptr %i.ac, align 8, !tbaa !33
  %wide.trip.count = zext nneg i32 %.val157 to i64
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph312, %Vec_IntPush.exit221
  %indvars.iv362 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next363, %Vec_IntPush.exit221 ] ; 2 uses
  %indvars.iv360 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next361, %Vec_IntPush.exit221 ] ; 7 uses
  %storemerge273319 = phi ptr [ %.promoted318, %.lr.ph312 ], [ %storemerge273320, %Vec_IntPush.exit221 ] ; 6 uses
  %spec.select.sink.i218317 = phi i32 [ %.promoted315, %.lr.ph312 ], [ %spec.select.sink.i218316, %Vec_IntPush.exit221 ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv362
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !34 ; 2 uses
  %.val171 = load ptr, ptr %i.jc, align 8, !tbaa !77
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %.val171, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !34
  %i.ji = icmp ne i32 %i.jh, 1
  %i.jj = zext i1 %i.ji to i32
  %i.jk = shl nsw i32 %i.je, 1
  %i.jl = or disjoint i32 %i.jk, %i.jj
  %i.jm = trunc nsw i64 %indvars.iv360 to i32
  %i.jn = icmp eq i32 %spec.select.sink.i218317, %i.jm
  br i1 %i.jn, label %bb.cc, label %Vec_IntPush.exit221

bb.cc:                                            ; preds = %bb.cb
  %i.jo = icmp samesign ult i64 %indvars.iv360, 16
  br i1 %i.jo, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %.not9.i.i219 = icmp eq ptr %storemerge273319, null
  br i1 %.not9.i.i219, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jp = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge273319, i64 noundef 64) #16
  br label %Vec_IntPush.exit221

bb.cf:                                            ; preds = %bb.cd
  %i.jq = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit221

bb.cg:                                            ; preds = %bb.cc
  %i.jr = icmp samesign ult i64 %indvars.iv360, 1073741823
  %indvars.iv360.tr = trunc nsw i64 %indvars.iv360 to i32
  %i.js = shl nsw i32 %indvars.iv360.tr, 1
  %spec.select.i214 = select i1 %i.jr, i32 %i.js, i32 2147483647 ; 4 uses
  %i.jt = sext i32 %spec.select.i214 to i64
  %.not.i9.i215 = icmp samesign ult i64 %indvars.iv360, %i.jt
  br i1 %.not.i9.i215, label %bb.ch, label %Vec_IntPush.exit221

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i216 = icmp eq ptr %storemerge273319, null
  %i.ju = zext nneg i32 %spec.select.i214 to i64
  %i.jv = shl nuw nsw i64 %i.ju, 2                ; 2 uses
  br i1 %.not9.i10.i216, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jw = call ptr @realloc(ptr noundef nonnull %storemerge273319, i64 noundef %i.jv) #16
  br label %Vec_IntPush.exit221

bb.cj:                                            ; preds = %bb.ch
  %i.jx = call noalias ptr @malloc(i64 noundef %i.jv) #17
  br label %Vec_IntPush.exit221

Vec_IntPush.exit221:                              ; preds = %bb.cf, %bb.ce, %bb.cj, %bb.ci, %bb.cb, %bb.cg
  %storemerge273320 = phi ptr [ %storemerge273319, %bb.cb ], [ %storemerge273319, %bb.cg ], [ %i.jq, %bb.cf ], [ %i.jp, %bb.ce ], [ %i.jw, %bb.ci ], [ %i.jx, %bb.cj ] ; 3 uses
  %spec.select.sink.i218316 = phi i32 [ %spec.select.sink.i218317, %bb.cb ], [ %spec.select.sink.i218317, %bb.cg ], [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i214, %bb.ci ], [ %spec.select.i214, %bb.cj ] ; 2 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %storemerge273320, i64 %indvars.iv360
  store i32 %i.jl, ptr %i.jy, align 4, !tbaa !34
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond367.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count
  br i1 %exitcond367.not, label %..critedge_crit_edge, label %bb.cb, !llvm.loop !173

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit221
  %i.jz = trunc nsw i64 %indvars.iv.next361 to i32
  store i32 %i.jz, ptr %i.x, align 4, !tbaa !32
  store i32 %spec.select.sink.i218316, ptr %i.w, align 8
  store ptr %storemerge273320, ptr %i.ac, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.ca
  br i1 %.not149, label %.thread, label %bb.ck

.thread:                                          ; preds = %.critedge
  %12 = xor i64 %indvars.iv377, 1
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = call i32 @Bmc_CollapseExpand(ptr noundef %14, ptr noundef null, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ak, i32 noundef %4, i32 noundef %5, i32 noundef -1)
  br label %bb.co

bb.ck:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ka = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #18
  %i.kb = icmp slt i32 %i.ka, 0
  br i1 %i.kb, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kc = load i64, ptr %9, align 8, !tbaa !81
  %i.kd = mul nsw i64 %i.kc, 1000000
  %i.ke = load i64, ptr %i.cc, align 8, !tbaa !82
  %i.kf = sdiv i64 %i.ke, 1000
  %i.kg = add nsw i64 %i.kf, %i.kd
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %.3 = phi i64 [ %i.kg, %bb.cl ], [ -1, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.kh = xor i64 %indvars.iv377, 1
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kh
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !72
  %i.kk = call i32 @Bmc_CollapseExpand(ptr noundef %i.kj, ptr noundef null, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ak, i32 noundef %4, i32 noundef %5, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %16 = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #18
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %Abc_Clock.exit225, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kl = load i64, ptr %8, align 8, !tbaa !81
  %i.km = mul nsw i64 %i.kl, 1000000
  %i.kn = load i64, ptr %i.cd, align 8, !tbaa !82
  %i.ko = sdiv i64 %i.kn, 1000
  %i.kp = add nsw i64 %i.ko, %i.km
  br label %Abc_Clock.exit225

Abc_Clock.exit225:                                ; preds = %bb.cm, %bb.cn
  %.0.i224 = phi i64 [ %i.kp, %bb.cn ], [ -1, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.kq = sub i64 %.0.i224, %.3
  %i.kr = getelementptr inbounds nuw i8, ptr %indvars.iv377.sroa.phi458, i64 8 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !39
  %i.kt = add nsw i64 %i.kq, %i.ks
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !39
  br label %bb.co

bb.co:                                            ; preds = %.thread, %Abc_Clock.exit225
  %18 = phi i32 [ %15, %.thread ], [ %i.kk, %Abc_Clock.exit225 ]
  %.3264 = phi i64 [ %.2, %.thread ], [ %.3, %Abc_Clock.exit225 ] ; 3 uses
  %i.ku = icmp slt i32 %18, 0
  br i1 %i.ku, label %.loopexit275, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kv = load ptr, ptr %indvars.iv377.sroa.phi461, align 8, !tbaa !78 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 12 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !46 ; 8 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 4 ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !57 ; 3 uses
  %i.la = add nsw i32 %i.kz, -1                   ; 6 uses
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !57
  %i.lb = add nsw i32 %i.la, %2                   ; 3 uses
  %i.lc = add nsw i32 %i.lb, 4                    ; 9 uses
  %.not.i226.not = icmp slt i32 %i.lc, %i.kz
  br i1 %.not.i226.not, label %Vec_StrFillExtra.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ld = load i32, ptr %i.kv, align 8, !tbaa !70 ; 4 uses
  %i.le = shl nsw i32 %i.ld, 1                    ; 2 uses
  %i.lf = icmp sgt i32 %i.lc, %i.le
  %.not.i.i = icmp slt i32 %i.ld, %i.lc           ; 2 uses
  br i1 %i.lf, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not.i.i, label %bb.cs, label %Vec_StrGrow.exit.i227

bb.cs:                                            ; preds = %bb.cr
  %.not9.i.i235 = icmp eq ptr %i.kx, null
  %i.lg = sext i32 %i.lc to i64                   ; 2 uses
  br i1 %.not9.i.i235, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lh = call ptr @realloc(ptr noundef nonnull %i.kx, i64 noundef %i.lg) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cu:                                            ; preds = %bb.cs
  %i.li = call noalias ptr @malloc(i64 noundef %i.lg) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.cv:                                            ; preds = %bb.cq
  br i1 %.not.i.i, label %bb.cw, label %Vec_StrGrow.exit.i227

bb.cw:                                            ; preds = %bb.cv
  %i.lj = icmp slt i32 %i.ld, 1073741823
  %spec.select.i233 = select i1 %i.lj, i32 %i.le, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.ld, %spec.select.i233
  br i1 %.not.i22.i, label %bb.cx, label %Vec_StrGrow.exit.i227

bb.cx:                                            ; preds = %bb.cw
  %.not9.i23.i = icmp eq ptr %i.kx, null
  %i.lk = sext i32 %spec.select.i233 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ll = call ptr @realloc(ptr noundef nonnull %i.kx, i64 noundef %i.lk) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cz:                                            ; preds = %bb.cx
  %i.lm = call noalias ptr @malloc(i64 noundef %i.lk) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.cy, %bb.cz, %bb.ct, %bb.cu
  %storemerge271 = phi ptr [ %i.li, %bb.cu ], [ %i.lh, %bb.ct ], [ %i.ll, %bb.cy ], [ %i.lm, %bb.cz ] ; 2 uses
  %spec.select.sink.i234 = phi i32 [ %i.lc, %bb.cu ], [ %i.lc, %bb.ct ], [ %spec.select.i233, %bb.cy ], [ %spec.select.i233, %bb.cz ]
  store ptr %storemerge271, ptr %i.kw, align 8, !tbaa !46
  store i32 %spec.select.sink.i234, ptr %i.kv, align 8, !tbaa !70
  %.pre385 = load i32, ptr %i.ky, align 4, !tbaa !57
  br label %Vec_StrGrow.exit.i227

Vec_StrGrow.exit.i227:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.cw, %bb.cv, %bb.cr
  %.val170.pre391 = phi ptr [ %storemerge271, %Vec_StrGrow.exit.sink.split.i ], [ %i.kx, %bb.cw ], [ %i.kx, %bb.cv ], [ %i.kx, %bb.cr ]
  %i.ln = phi i32 [ %.pre385, %Vec_StrGrow.exit.sink.split.i ], [ %i.la, %bb.cw ], [ %i.la, %bb.cv ], [ %i.la, %bb.cr ] ; 2 uses
  %i.lo = icmp slt i32 %i.ln, %i.lc
  br i1 %i.lo, label %.lr.ph.i228, label %._crit_edge.i

.lr.ph.i228:                                      ; preds = %Vec_StrGrow.exit.i227
  %i.lp = sext i32 %i.ln to i64                   ; 4 uses
  %wide.trip.count.i229 = sext i32 %i.lc to i64   ; 3 uses
  %i.lq = sub nsw i64 %wide.trip.count.i229, %i.lp
  %xtraiter455 = and i64 %i.lq, 3                 ; 2 uses
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod456.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i228, %.prol.preheader
  %indvars.iv.i230.prol = phi i64 [ %indvars.iv.next.i231.prol, %.prol.preheader ], [ %i.lp, %.lr.ph.i228 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i228 ]
  %i.lr = load ptr, ptr %i.kw, align 8, !tbaa !46
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 %indvars.iv.i230.prol
  store i8 45, ptr %i.ls, align 1, !tbaa !52
  %indvars.iv.next.i231.prol = add nsw i64 %indvars.iv.i230.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter455
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !174

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i228
  %indvars.iv.i230.unr = phi i64 [ %i.lp, %.lr.ph.i228 ], [ %indvars.iv.next.i231.prol, %.prol.preheader ]
  %i.lt = sub nsw i64 %i.lp, %wide.trip.count.i229
  %i.lu = icmp ugt i64 %i.lt, -4
  br i1 %i.lu, label %._crit_edge.i.loopexit, label %.lr.ph.i228.new

.lr.ph.i228.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i228.new
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i231.3, %.lr.ph.i228.new ], [ %indvars.iv.i230.unr, %.prol.loopexit ] ; 5 uses
  %i.lv = load ptr, ptr %i.kw, align 8, !tbaa !46
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 %indvars.iv.i230
  store i8 45, ptr %i.lw, align 1, !tbaa !52
  %i.lx = load ptr, ptr %i.kw, align 8, !tbaa !46
  %i.ly = getelementptr i8, ptr %i.lx, i64 %indvars.iv.i230
  %i.lz = getelementptr i8, ptr %i.ly, i64 1
  store i8 45, ptr %i.lz, align 1, !tbaa !52
  %i.ma = load ptr, ptr %i.kw, align 8, !tbaa !46
  %i.mb = getelementptr i8, ptr %i.ma, i64 %indvars.iv.i230
  %i.mc = getelementptr i8, ptr %i.mb, i64 2
  store i8 45, ptr %i.mc, align 1, !tbaa !52
  %i.md = load ptr, ptr %i.kw, align 8, !tbaa !46
  %i.me = getelementptr i8, ptr %i.md, i64 %indvars.iv.i230
  %i.mf = getelementptr i8, ptr %i.me, i64 3
  store i8 45, ptr %i.mf, align 1, !tbaa !52
  %indvars.iv.next.i231.3 = add nsw i64 %indvars.iv.i230, 4 ; 2 uses
  %exitcond.not.i232.3 = icmp eq i64 %indvars.iv.next.i231.3, %wide.trip.count.i229
  br i1 %exitcond.not.i232.3, label %._crit_edge.i.loopexit, label %.lr.ph.i228.new, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i228.new, %.prol.loopexit
  %.val170.pre.pre = load ptr, ptr %i.kw, align 8, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i227
  %.val170.pre = phi ptr [ %.val170.pre.pre, %._crit_edge.i.loopexit ], [ %.val170.pre391, %Vec_StrGrow.exit.i227 ]
  store i32 %i.lc, ptr %i.ky, align 4, !tbaa !57
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.cp, %._crit_edge.i
  %.val170 = phi ptr [ %i.kx, %bb.cp ], [ %.val170.pre, %._crit_edge.i ]
  %i.mg = sext i32 %i.lb to i64                   ; 3 uses
  %i.mh = getelementptr inbounds i8, ptr %.val170, i64 %i.mg
  store i8 32, ptr %i.mh, align 1, !tbaa !52
  %i.mi = add i32 %i.kz, %2
  %19 = trunc nuw nsw i64 %indvars.iv377 to i8
  %20 = xor i8 %19, 49
  %.val169 = load ptr, ptr %i.kw, align 8, !tbaa !46
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %.val169, i64 %i.mj
  store i8 %20, ptr %i.mk, align 1, !tbaa !52
  %.val168 = load ptr, ptr %i.kw, align 8, !tbaa !46
  %i.ml = getelementptr i8, ptr %.val168, i64 %i.mg
  %i.mm = getelementptr i8, ptr %i.ml, i64 2
  store i8 10, ptr %i.mm, align 1, !tbaa !52
  %.val167 = load ptr, ptr %i.kw, align 8, !tbaa !46
  %i.mn = getelementptr i8, ptr %.val167, i64 %i.mg
  %i.mo = getelementptr i8, ptr %i.mn, i64 3
  store i8 0, ptr %i.mo, align 1, !tbaa !52
  %i.mp = load i32, ptr %i.ak, align 8, !tbaa !44
  %i.mq = icmp eq i32 %i.mp, 0
  %.pre387 = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 3 uses
  br i1 %i.mq, label %bb.da, label %Vec_IntPush.exit243

bb.da:                                            ; preds = %Vec_StrFillExtra.exit
  %.not9.i.i241 = icmp eq ptr %.pre387, null
  br i1 %.not9.i.i241, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre387, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i239

bb.dc:                                            ; preds = %bb.da
  %i.ms = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i239

Vec_IntGrow.exit11.sink.split.i239:               ; preds = %bb.db, %bb.dc
  %i.mt = phi ptr [ %i.mr, %bb.db ], [ %i.ms, %bb.dc ] ; 2 uses
  store ptr %i.mt, ptr %i.aq, align 8, !tbaa !33
  store i32 16, ptr %i.ak, align 8, !tbaa !44
  br label %Vec_IntPush.exit243

Vec_IntPush.exit243:                              ; preds = %Vec_StrFillExtra.exit, %Vec_IntGrow.exit11.sink.split.i239
  %.promoted328.a = phi ptr [ %.pre387, %Vec_StrFillExtra.exit ], [ %i.mt, %Vec_IntGrow.exit11.sink.split.i239 ] ; 3 uses
  store i32 1, ptr %i.al, align 4, !tbaa !32
  store i32 %i.ip, ptr %.promoted328.a, align 4, !tbaa !34
  %.val = load i32, ptr %i.ae, align 4, !tbaa !32 ; 2 uses
  %i.mu = icmp sgt i32 %.val, 0
  %.val163.pre = load i32, ptr %i.al, align 4, !tbaa !32 ; 2 uses
  br i1 %i.mu, label %.lr.ph322, label %.critedge2

.lr.ph322:                                        ; preds = %Vec_IntPush.exit243
  %.val159 = load ptr, ptr %i.aj, align 8, !tbaa !33
  %.val158 = load ptr, ptr %i.ac, align 8, !tbaa !33
  %.promoted325 = load i32, ptr %i.ak, align 8, !tbaa !44
  %i.mv = sext i32 %.val163.pre to i64
  %wide.trip.count375 = zext nneg i32 %.val to i64
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph322, %Vec_IntPush.exit251
  %indvars.iv370 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next371, %Vec_IntPush.exit251 ] ; 2 uses
  %indvars.iv368 = phi i64 [ %i.mv, %.lr.ph322 ], [ %indvars.iv.next369, %Vec_IntPush.exit251 ] ; 7 uses
  %storemerge272329 = phi ptr [ %.promoted328.a, %.lr.ph322 ], [ %storemerge272330, %Vec_IntPush.exit251 ] ; 3 uses
  %spec.select.sink.i248327 = phi i32 [ %.promoted325, %.lr.ph322 ], [ %spec.select.sink.i248326, %Vec_IntPush.exit251 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.val159, i64 %indvars.iv370
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !34 ; 3 uses
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %.val158, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !34 ; 2 uses
  %i.nb = xor i32 %i.na, 1
  %i.nc = trunc nsw i64 %indvars.iv368 to i32
  %i.nd = icmp eq i32 %spec.select.sink.i248327, %i.nc
  br i1 %i.nd, label %bb.de, label %Vec_IntPush.exit251

bb.de:                                            ; preds = %bb.dd
  %i.ne = icmp slt i64 %indvars.iv368, 16
  br i1 %i.ne, label %Vec_IntPush.exit251.sink.split, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nf = icmp samesign ult i64 %indvars.iv368, 1073741823
  %indvars.iv368.tr = trunc nsw i64 %indvars.iv368 to i32
  %i.ng = shl nsw i32 %indvars.iv368.tr, 1
  %spec.select.i244 = select i1 %i.nf, i32 %i.ng, i32 2147483647 ; 3 uses
  %i.nh = sext i32 %spec.select.i244 to i64
  %.not.i9.i245 = icmp samesign ult i64 %indvars.iv368, %i.nh
  br i1 %.not.i9.i245, label %bb.dg, label %Vec_IntPush.exit251

bb.dg:                                            ; preds = %bb.df
  %i.ni = zext nneg i32 %spec.select.i244 to i64
  %i.nj = shl nuw nsw i64 %i.ni, 2
  br label %Vec_IntPush.exit251.sink.split

Vec_IntPush.exit251.sink.split:                   ; preds = %bb.de, %bb.dg
  %.sink = phi i64 [ %i.nj, %bb.dg ], [ 64, %bb.de ]
  %spec.select.sink.i248326.ph = phi i32 [ %spec.select.i244, %bb.dg ], [ 16, %bb.de ]
  %i.nk = call ptr @realloc(ptr noundef nonnull %storemerge272329, i64 noundef %.sink) #16
  br label %Vec_IntPush.exit251

Vec_IntPush.exit251:                              ; preds = %Vec_IntPush.exit251.sink.split, %bb.dd, %bb.df
  %storemerge272330 = phi ptr [ %storemerge272329, %bb.dd ], [ %storemerge272329, %bb.df ], [ %i.nk, %Vec_IntPush.exit251.sink.split ] ; 4 uses
  %spec.select.sink.i248326 = phi i32 [ %spec.select.sink.i248327, %bb.dd ], [ %spec.select.sink.i248327, %bb.df ], [ %spec.select.sink.i248326.ph, %Vec_IntPush.exit251.sink.split ] ; 2 uses
  %indvars.iv.next369 = add nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.nl = getelementptr inbounds [4 x i8], ptr %storemerge272330, i64 %indvars.iv368
  store i32 %i.nb, ptr %i.nl, align 4, !tbaa !34
  %i.nm = add nsw i32 %i.mx, %i.la
  %i.nn = xor i32 %i.mx, -1
  %i.no = add i32 %i.lb, %i.nn
  %.sink440 = select i1 %.not, i32 %i.nm, i32 %i.no
  %i.np = trunc i32 %i.na to i8
  %i.nq = and i8 %i.np, 1
  %i.nr = sub nuw nsw i8 49, %i.nq
  %.val165 = load ptr, ptr %i.kw, align 8, !tbaa !46
  %i.ns = sext i32 %.sink440 to i64
  %i.nt = getelementptr inbounds i8, ptr %.val165, i64 %i.ns
  store i8 %i.nr, ptr %i.nt, align 1, !tbaa !52
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count375
  br i1 %exitcond376.not, label %..critedge2_crit_edge, label %bb.dd, !llvm.loop !175

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit251
  %i.nu = trunc nsw i64 %indvars.iv.next369 to i32 ; 2 uses
  store i32 %i.nu, ptr %i.al, align 4, !tbaa !32
  store i32 %spec.select.sink.i248326, ptr %i.ak, align 8
  store ptr %storemerge272330, ptr %i.aq, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %Vec_IntPush.exit243
  %.val163 = phi i32 [ %i.nu, %..critedge2_crit_edge ], [ %.val163.pre, %Vec_IntPush.exit243 ]
  %.val161 = phi ptr [ %storemerge272330, %..critedge2_crit_edge ], [ %.promoted328.a, %Vec_IntPush.exit243 ] ; 2 uses
  %i.nv = sext i32 %.val163 to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %.val161, i64 %i.nv
  %i.nx = call i32 @sat_solver_addclause(ptr noundef %i.hh, ptr noundef nonnull %.val161, ptr noundef %i.nw) #18
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %.loopexit.sink.split, label %bb.bq

.loopexit.sink.split:                             ; preds = %.critedge2, %bb.bz
  %.4.ph = phi i64 [ %.2, %bb.bz ], [ %.3264, %.critedge2 ]
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv377
  store i32 1, ptr %i.nz, align 4, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bq, %.loopexit.sink.split
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %.3264, %bb.bq ]
  %i.oa = load i32, ptr %i.e, align 8, !tbaa !34
  %i.ob = icmp ne i32 %i.oa, 0
  %i.oc = load i32, ptr %i.ce, align 4
  %i.od = icmp ne i32 %i.oc, 0
  %or.cond = select i1 %i.ob, i1 true, i1 %i.od
  br i1 %or.cond, label %.loopexit275, label %bb.dh

bb.dh:                                            ; preds = %.loopexit
  %i.oe = add nuw nsw i32 %.0138333, 1            ; 3 uses
  %i.of = icmp slt i32 %i.oe, %3
  %i.og = select i1 %i.gy, i1 true, i1 %i.of
  br i1 %i.og, label %.preheader, label %.loopexit275, !llvm.loop !176

.loopexit275:                                     ; preds = %.loopexit, %bb.dh, %bb.bz, %bb.co, %.loopexit280, %Vec_StrPush.exit206, %Vec_StrPush.exit206.1, %Vec_StrPush.exit
  %.1139 = phi i32 [ 0, %Vec_StrPush.exit206.1 ], [ 0, %Vec_StrPush.exit ], [ %.0138333, %bb.bz ], [ %i.fx, %Vec_StrPush.exit206 ], [ %i.bz, %.loopexit280 ], [ %.0138333, %bb.co ], [ %i.oe, %bb.dh ], [ %.0138333, %.loopexit ]
  %i.oh = load ptr, ptr %i.v, align 8, !tbaa !33  ; 2 uses
  %.not.i252 = icmp eq ptr %i.oh, null
  br i1 %.not.i252, label %Vec_IntFree.exit, label %bb.di

bb.di:                                            ; preds = %.loopexit275
  call void @free(ptr noundef nonnull %i.oh) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit275, %bb.di
  call void @free(ptr noundef nonnull %i.p) #18
  %i.oi = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %.not.i253 = icmp eq ptr %i.oi, null
  br i1 %.not.i253, label %Vec_IntFree.exit254, label %bb.dj

bb.dj:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.oi) #18
  br label %Vec_IntFree.exit254

Vec_IntFree.exit254:                              ; preds = %Vec_IntFree.exit, %bb.dj
  call void @free(ptr noundef nonnull %i.w) #18
  %i.oj = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %.not.i255 = icmp eq ptr %i.oj, null
  br i1 %.not.i255, label %Vec_IntFree.exit256, label %bb.dk

bb.dk:                                            ; preds = %Vec_IntFree.exit254
  call void @free(ptr noundef nonnull %i.oj) #18
  br label %Vec_IntFree.exit256

Vec_IntFree.exit256:                              ; preds = %Vec_IntFree.exit254, %bb.dk
  call void @free(ptr noundef nonnull %i.ad) #18
  %i.ok = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 2 uses
  %.not.i257 = icmp eq ptr %i.ok, null
  br i1 %.not.i257, label %Vec_IntFree.exit258, label %bb.dl

bb.dl:                                            ; preds = %Vec_IntFree.exit256
  call void @free(ptr noundef nonnull %i.ok) #18
  br label %Vec_IntFree.exit258

Vec_IntFree.exit258:                              ; preds = %Vec_IntFree.exit256, %bb.dl
  call void @free(ptr noundef nonnull %i.ak) #18
  %i.ol = load i32, ptr %i.e, align 8, !tbaa !34
  %i.om = icmp ne i32 %i.ol, 0
  %i.on = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.oo = load i32, ptr %i.on, align 4            ; 2 uses
  %i.op = icmp ne i32 %i.oo, 0
  %or.cond7 = select i1 %i.om, i1 true, i1 %i.op
  br i1 %or.cond7, label %bb.dm, label %.thread.a

bb.dm:                                            ; preds = %Vec_IntFree.exit258
  %i.oq = sext i32 %i.oo to i64
  %i.or = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.oq ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !78 ; 6 uses
  store ptr null, ptr %i.or, align 8, !tbaa !78
  %i.ot = icmp samesign ugt i32 %.1139, 1
  br i1 %i.ot, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ou = getelementptr i8, ptr %i.os, i64 4
  %.val172 = load i32, ptr %i.ou, align 4, !tbaa !57
  %i.ov = add nsw i32 %2, 3
  %i.ow = sdiv i32 %.val172, %i.ov
  %i.ox = call i32 @Bmc_CollapseIrredundantFull(ptr noundef %i.os, i32 noundef %i.ow, i32 noundef %2) ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn
  %.not155 = icmp eq i32 %7, 0
  br i1 %.not155, label %bb.dt, label %bb.dp

.thread.a:                                        ; preds = %Vec_IntFree.exit258
  %.not155264 = icmp eq i32 %7, 0
  br i1 %.not155264, label %bb.dt, label %.thread267

.thread267:                                       ; preds = %.thread.a
  %i.oy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %2) ; 0 uses
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.oz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %2) ; 0 uses
  %i.pa = icmp eq ptr %i.os, null
  br i1 %i.pa, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.thread267, %bb.dp
  %i.pb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %3) ; 0 uses
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.pc = getelementptr i8, ptr %i.os, i64 4
  %.0146.val = load i32, ptr %i.pc, align 4, !tbaa !57
  %i.pd = add nsw i32 %2, 3
  %i.pe = sdiv i32 %.0146.val, %i.pd
  %i.pf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.pe) ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.0146265269 = phi ptr [ %i.os, %bb.dr ], [ null, %bb.dq ]
  %i.pg = load i64, ptr %i.d, align 16, !tbaa !39
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19)
  %i.ph = sitofp i64 %i.pg to double
  %i.pi = fdiv double %i.ph, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.pi)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !39
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.20)
  %i.pl = sitofp i64 %i.pk to double
  %i.pm = fdiv double %i.pl, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.pm)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.po = load i64, ptr %i.pn, align 16, !tbaa !39
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21)
  %i.pp = sitofp i64 %i.po to double
  %i.pq = fdiv double %i.pp, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.pq)
  %i.pr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !39
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22)
  %i.pt = sitofp i64 %i.ps to double
  %i.pu = fdiv double %i.pt, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.pu)
  br label %bb.dt

bb.dt:                                            ; preds = %.thread.a, %bb.ds, %bb.do
  %.0146266 = phi ptr [ null, %.thread.a ], [ %.0146265269, %bb.ds ], [ %i.os, %bb.do ]
  %i.pv = load ptr, ptr %i.b, align 16, !tbaa !78 ; 3 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %Vec_StrFreeP.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !46 ; 2 uses
  %.not.i259 = icmp eq ptr %i.py, null
  br i1 %.not.i259, label %bb.dv, label %.thread.i

.thread.i:                                        ; preds = %bb.du
  call void @free(ptr noundef nonnull %i.py) #18
  br label %bb.dv

bb.dv:                                            ; preds = %.thread.i, %bb.du
  call void @free(ptr noundef nonnull %i.pv) #18
  br label %Vec_StrFreeP.exit

Vec_StrFreeP.exit:                                ; preds = %bb.dt, %bb.dv
  %i.pz = load ptr, ptr %i.k, align 8, !tbaa !78  ; 3 uses
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %Vec_StrFreeP.exit262, label %bb.dw

bb.dw:                                            ; preds = %Vec_StrFreeP.exit
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !46 ; 2 uses
  %.not.i260 = icmp eq ptr %i.qc, null
  br i1 %.not.i260, label %bb.dx, label %.thread.i261

.thread.i261:                                     ; preds = %bb.dw
  call void @free(ptr noundef nonnull %i.qc) #18
  br label %bb.dx

bb.dx:                                            ; preds = %.thread.i261, %bb.dw
  call void @free(ptr noundef nonnull %i.pz) #18
  br label %Vec_StrFreeP.exit262

Vec_StrFreeP.exit262:                             ; preds = %Vec_StrFreeP.exit, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0146266
}

; Function Attrs: nounwind uwtable
define ptr @Bmc_CollapseOne_int(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 9 uses
  %i.b = alloca [2 x i32], align 4                ; 10 uses
  %i.c = alloca [2 x [2 x i64]], align 16         ; 11 uses
  %i.d = alloca [2 x i32], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 13 uses
  store i32 0, ptr %i.f, align 4, !tbaa !57
  store i32 1000, ptr %i.e, align 8, !tbaa !70
  %i.g = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 15 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !46
  store ptr %i.e, ptr %i.a, align 16, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !57
  store i32 1000, ptr %i.j, align 8, !tbaa !70
  %i.l = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !46
  store ptr %i.j, ptr %i.i, align 8, !tbaa !78
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.o = tail call i32 @llvm.umax.i32(i32 %1, i32 15)
  %spec.store.select.i = add nsw i32 %i.o, 1      ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  store i32 0, ptr %i.p, align 4, !tbaa !32
  store i32 %spec.store.select.i, ptr %i.n, align 8, !tbaa !44
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 4 uses
  %indvars.iv381.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %indvars.iv381.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %indvars.iv381.sroa.gep466 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = sext i32 %spec.store.select.i to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted308 = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %.promoted308, ptr %i.t, align 8, !tbaa !33
  %i.u = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  store i32 0, ptr %i.v, align 4, !tbaa !32
  store i32 %spec.store.select.i, ptr %i.u, align 8, !tbaa !44
  br i1 %.not.i, label %Vec_IntAlloc.exit178, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.w = sext i32 %spec.store.select.i to i64
  %i.x = shl nsw i64 %i.w, 2
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #17
  br label %Vec_IntAlloc.exit178

Vec_IntAlloc.exit178:                             ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.z = phi ptr [ %i.y, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !33
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !32
  store i32 %spec.store.select.i, ptr %i.ab, align 8, !tbaa !44
  br i1 %.not.i, label %Vec_IntAlloc.exit182, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit178
  %i.ad = sext i32 %spec.store.select.i to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #17
  br label %Vec_IntAlloc.exit182

Vec_IntAlloc.exit182:                             ; preds = %Vec_IntAlloc.exit178, %bb.d
  %i.ag = phi ptr [ %i.af, %bb.d ], [ null, %Vec_IntAlloc.exit178 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !33
  %i.ai = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 4 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !32
  store i32 %spec.store.select.i, ptr %i.ai, align 8, !tbaa !44
  br i1 %.not.i, label %Vec_IntAlloc.exit186, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit182
  %i.ak = sext i32 %spec.store.select.i to i64
  %i.al = shl nsw i64 %i.ak, 2
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #17
  br label %Vec_IntAlloc.exit186

Vec_IntAlloc.exit186:                             ; preds = %Vec_IntAlloc.exit182, %bb.e
  %i.an = phi ptr [ %i.am, %bb.e ], [ null, %Vec_IntAlloc.exit182 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 5 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 0, ptr %i.d, align 8
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  %i.ap = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %.not, label %.preheader280, label %.preheader282

.preheader282:                                    ; preds = %Vec_IntAlloc.exit186
  br i1 %i.ap, label %.lr.ph, label %.loopexit281

.preheader280:                                    ; preds = %Vec_IntAlloc.exit186
  br i1 %i.ap, label %.lr.ph302, label %.loopexit281

.lr.ph:                                           ; preds = %.preheader282, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %.preheader282 ] ; 7 uses
  %storemerge299 = phi ptr [ %storemerge300, %Vec_IntPush.exit ], [ %.promoted308, %.preheader282 ] ; 6 uses
  %spec.select.sink.i297 = phi i32 [ %spec.select.sink.i296, %Vec_IntPush.exit ], [ %spec.store.select.i, %.preheader282 ] ; 3 uses
  %.0141.in294 = phi i32 [ %.0141, %Vec_IntPush.exit ], [ %1, %.preheader282 ] ; 3 uses
  %.0141 = add nsw i32 %.0141.in294, -1
  %i.aq = add nuw nsw i32 %.0141.in294, 2
  %i.ar = trunc nsw i64 %indvars.iv to i32
  %i.as = icmp eq i32 %spec.select.sink.i297, %i.ar
  br i1 %i.as, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %.lr.ph
  %i.at = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %storemerge299, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge299, i64 noundef 64) #16
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.g
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.f
  %i.aw = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.ax = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 4 uses
  %i.ay = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ay
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %storemerge299, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %storemerge299, i64 noundef %i.ba) #16
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %.lr.ph, %bb.j
  %storemerge300 = phi ptr [ %storemerge299, %.lr.ph ], [ %storemerge299, %bb.j ], [ %i.av, %bb.i ], [ %i.au, %bb.h ], [ %i.bb, %bb.l ], [ %i.bc, %bb.m ] ; 3 uses
  %spec.select.sink.i296 = phi i32 [ %spec.select.sink.i297, %.lr.ph ], [ %spec.select.sink.i297, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %storemerge300, i64 %indvars.iv
  store i32 %i.aq, ptr %i.bd, align 4, !tbaa !34
  %i.be = icmp samesign ugt i32 %.0141.in294, 1
  br i1 %i.be, label %.lr.ph, label %.loopexit281.sink.split, !llvm.loop !177

.lr.ph302:                                        ; preds = %.preheader280, %Vec_IntPush.exit194
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %Vec_IntPush.exit194 ], [ 0, %.preheader280 ] ; 7 uses
  %storemerge275309 = phi ptr [ %storemerge275310, %Vec_IntPush.exit194 ], [ %.promoted308, %.preheader280 ] ; 6 uses
  %spec.select.sink.i191307 = phi i32 [ %spec.select.sink.i191306, %Vec_IntPush.exit194 ], [ %spec.store.select.i, %.preheader280 ] ; 3 uses
  %.1142301 = phi i32 [ %i.bt, %Vec_IntPush.exit194 ], [ 0, %.preheader280 ] ; 2 uses
  %i.bf = add nuw nsw i32 %.1142301, 3
  %i.bg = trunc nsw i64 %indvars.iv355 to i32
  %i.bh = icmp eq i32 %spec.select.sink.i191307, %i.bg
  br i1 %i.bh, label %bb.n, label %Vec_IntPush.exit194

bb.n:                                             ; preds = %.lr.ph302
  %i.bi = icmp samesign ult i64 %indvars.iv355, 16
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i192 = icmp eq ptr %storemerge275309, null
  br i1 %.not9.i.i192, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge275309, i64 noundef 64) #16
  br label %Vec_IntPush.exit194

bb.q:                                             ; preds = %bb.o
  %i.bk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit194

bb.r:                                             ; preds = %bb.n
  %i.bl = icmp samesign ult i64 %indvars.iv355, 1073741823
  %indvars.iv355.tr = trunc nsw i64 %indvars.iv355 to i32
  %i.bm = shl nsw i32 %indvars.iv355.tr, 1
  %spec.select.i187 = select i1 %i.bl, i32 %i.bm, i32 2147483647 ; 4 uses
  %i.bn = sext i32 %spec.select.i187 to i64
  %.not.i9.i188 = icmp samesign ult i64 %indvars.iv355, %i.bn
  br i1 %.not.i9.i188, label %bb.s, label %Vec_IntPush.exit194

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i189 = icmp eq ptr %storemerge275309, null
  %i.bo = zext nneg i32 %spec.select.i187 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  br i1 %.not9.i10.i189, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %storemerge275309, i64 noundef %i.bp) #16
  br label %Vec_IntPush.exit194

bb.u:                                             ; preds = %bb.s
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #17
  br label %Vec_IntPush.exit194

Vec_IntPush.exit194:                              ; preds = %bb.q, %bb.p, %bb.u, %bb.t, %.lr.ph302, %bb.r
  %storemerge275310 = phi ptr [ %storemerge275309, %.lr.ph302 ], [ %storemerge275309, %bb.r ], [ %i.bk, %bb.q ], [ %i.bj, %bb.p ], [ %i.bq, %bb.t ], [ %i.br, %bb.u ] ; 3 uses
  %spec.select.sink.i191306 = phi i32 [ %spec.select.sink.i191307, %.lr.ph302 ], [ %spec.select.sink.i191307, %bb.r ], [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i187, %bb.t ], [ %spec.select.i187, %bb.u ] ; 2 uses
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %storemerge275310, i64 %indvars.iv355
  store i32 %i.bf, ptr %i.bs, align 4, !tbaa !34
  %i.bt = add nuw nsw i32 %.1142301, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, %1
  br i1 %exitcond.not, label %.loopexit281.sink.split, label %.lr.ph302, !llvm.loop !178

.loopexit281.sink.split:                          ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit194
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next356, %Vec_IntPush.exit194 ], [ %indvars.iv.next, %Vec_IntPush.exit ]
  %spec.select.sink.i296.lcssa.sink = phi i32 [ %spec.select.sink.i191306, %Vec_IntPush.exit194 ], [ %spec.select.sink.i296, %Vec_IntPush.exit ]
  %storemerge300.lcssa.sink = phi ptr [ %storemerge275310, %Vec_IntPush.exit194 ], [ %storemerge300, %Vec_IntPush.exit ]
  %i.bu = trunc nsw i64 %indvars.iv.next.lcssa.sink to i32
  store i32 %i.bu, ptr %i.p, align 4, !tbaa !32
  store i32 %spec.select.sink.i296.lcssa.sink, ptr %i.n, align 8
end_hunk_4
begin_hunk_5_@Bmc_CollapseOne_int:bb.a

bb.as:                                            ; preds = %bb.ao
  %i.er = icmp samesign ult i32 %i.ei, 1073741823
  %i.es = shl nuw nsw i32 %i.ei, 1
  %spec.select.i195 = select i1 %i.er, i32 %i.es, i32 2147483647 ; 3 uses
  %.not.i9.i196 = icmp samesign ult i32 %i.ei, %spec.select.i195
  br i1 %.not.i9.i196, label %bb.at, label %Vec_StrPush.exit

bb.at:                                            ; preds = %bb.as
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i197 = icmp eq ptr %i.eu, null
  %i.ev = zext nneg i32 %spec.select.i195 to i64  ; 2 uses
  br i1 %.not9.i10.i197, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ew = call ptr @realloc(ptr noundef nonnull %i.eu, i64 noundef %i.ev) #16
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ex = call noalias ptr @malloc(i64 noundef %i.ev) #17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ey = phi ptr [ %i.ew, %bb.au ], [ %i.ex, %bb.av ]
  store ptr %i.ey, ptr %i.et, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.aw, %Vec_StrGrow.exit.i
  %spec.select.sink.i198 = phi i32 [ %spec.select.i195, %bb.aw ], [ 16, %Vec_StrGrow.exit.i ]
  store i32 %spec.select.sink.i198, ptr %i.eg, align 8, !tbaa !70
  %.pre384.a = load i32, ptr %i.eh, align 4, !tbaa !57
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %Vec_StrPush.exit.i.2, %bb.as, %Vec_StrGrow.exit11.sink.split.i
  %i.ez = phi i32 [ %i.ei, %Vec_StrPush.exit.i.2 ], [ %i.ei, %bb.as ], [ %.pre384.a, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !46
  %i.fc = add nsw i32 %i.ez, 1
  store i32 %i.fc, ptr %i.eh, align 4, !tbaa !57
  %i.fd = sext i32 %i.ez to i64
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %i.fd
  store i8 0, ptr %i.fe, align 1, !tbaa !52
  store i32 1, ptr %i.d, align 8, !tbaa !34
  br label %.loopexit276

bb.ax:                                            ; preds = %.loopexit281
  %i.ff = load i32, ptr %i.f, align 4, !tbaa !57  ; 7 uses
  %i.fg = load i32, ptr %i.e, align 8, !tbaa !70
  %i.fh = icmp eq i32 %i.ff, %i.fg
  br i1 %i.fh, label %bb.ay, label %.Vec_StrPush.exit207_crit_edge

.Vec_StrPush.exit207_crit_edge:                   ; preds = %bb.ax
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !46
  br label %Vec_StrPush.exit207

bb.ay:                                            ; preds = %bb.ax
  %i.fi = icmp slt i32 %i.ff, 16
  br i1 %i.fi, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !46  ; 2 uses
  %.not9.i.i205 = icmp eq ptr %i.fj, null
  br i1 %.not9.i.i205, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fj, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i203

bb.bb:                                            ; preds = %bb.az
  %i.fl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i203

bb.bc:                                            ; preds = %bb.ay
  %i.fm = icmp samesign ult i32 %i.ff, 1073741823
  %i.fn = shl nuw nsw i32 %i.ff, 1
  %spec.select.i200 = select i1 %i.fm, i32 %i.fn, i32 2147483647 ; 4 uses
  %.not.i9.i201 = icmp samesign ult i32 %i.ff, %spec.select.i200
  %.pre381 = load ptr, ptr %i.h, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i201, label %bb.bd, label %Vec_StrPush.exit207

bb.bd:                                            ; preds = %bb.bc
  %.not9.i10.i202 = icmp eq ptr %.pre381, null
  %i.fo = zext nneg i32 %spec.select.i200 to i64  ; 2 uses
  br i1 %.not9.i10.i202, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fp = call ptr @realloc(ptr noundef nonnull %.pre381, i64 noundef %i.fo) #16
  br label %Vec_StrGrow.exit11.sink.split.i203

bb.bf:                                            ; preds = %bb.bd
  %i.fq = call noalias ptr @malloc(i64 noundef %i.fo) #17
  br label %Vec_StrGrow.exit11.sink.split.i203

Vec_StrGrow.exit11.sink.split.i203:               ; preds = %bb.be, %bb.bf, %bb.ba, %bb.bb
  %i.fr = phi ptr [ %i.fl, %bb.bb ], [ %i.fk, %bb.ba ], [ %i.fp, %bb.be ], [ %i.fq, %bb.bf ] ; 2 uses
  %spec.select.sink.i204 = phi i32 [ 16, %bb.bb ], [ 16, %bb.ba ], [ %spec.select.i200, %bb.be ], [ %spec.select.i200, %bb.bf ]
  store ptr %i.fr, ptr %i.h, align 8, !tbaa !46
  store i32 %spec.select.sink.i204, ptr %i.e, align 8, !tbaa !70
  %.pre382 = load i32, ptr %i.f, align 4, !tbaa !57
  br label %Vec_StrPush.exit207

Vec_StrPush.exit207:                              ; preds = %.Vec_StrPush.exit207_crit_edge, %bb.bc, %Vec_StrGrow.exit11.sink.split.i203
  %i.fs = phi i32 [ %i.ff, %.Vec_StrPush.exit207_crit_edge ], [ %i.ff, %bb.bc ], [ %.pre382, %Vec_StrGrow.exit11.sink.split.i203 ] ; 2 uses
  %i.ft = phi ptr [ %.pre, %.Vec_StrPush.exit207_crit_edge ], [ %.pre381, %bb.bc ], [ %i.fr, %Vec_StrGrow.exit11.sink.split.i203 ]
  %i.fu = add nsw i32 %i.fs, 1
  store i32 %i.fu, ptr %i.f, align 4, !tbaa !57
  %i.fv = sext i32 %i.fs to i64
  %i.fw = getelementptr inbounds i8, ptr %i.ft, i64 %i.fv
  store i8 0, ptr %i.fw, align 1, !tbaa !52
  store i32 5, ptr %i.b, align 4, !tbaa !34
  %i.fx = call i32 @sat_solver_solve(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bv, i64 noundef %i.bw, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.fx, label %bb.bg [
    i32 0, label %.loopexit276
    i32 -1, label %.lr.ph.i
  ]

bb.bg:                                            ; preds = %Vec_StrPush.exit207
  %i.fy = load ptr, ptr %i.i, align 8, !tbaa !78  ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !57 ; 7 uses
  %i.gb = load i32, ptr %i.fy, align 8, !tbaa !70
  %i.gc = icmp eq i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.bh, label %Vec_StrPush.exit207.1

bb.bh:                                            ; preds = %bb.bg
  %i.gd = icmp slt i32 %i.ga, 16
  br i1 %i.gd, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ge = icmp samesign ult i32 %i.ga, 1073741823
  %i.gf = shl nuw nsw i32 %i.ga, 1
  %spec.select.i200.1 = select i1 %i.ge, i32 %i.gf, i32 2147483647 ; 3 uses
  %.not.i9.i201.1 = icmp samesign ult i32 %i.ga, %spec.select.i200.1
  br i1 %.not.i9.i201.1, label %bb.bj, label %Vec_StrPush.exit207.1

bb.bj:                                            ; preds = %bb.bi
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i202.1 = icmp eq ptr %i.gh, null
  %i.gi = zext nneg i32 %spec.select.i200.1 to i64 ; 2 uses
  br i1 %.not9.i10.i202.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gj = call ptr @realloc(ptr noundef nonnull %i.gh, i64 noundef %i.gi) #16
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.gk = call noalias ptr @malloc(i64 noundef %i.gi) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gl = phi ptr [ %i.gj, %bb.bk ], [ %i.gk, %bb.bl ]
  store ptr %i.gl, ptr %i.gg, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i203.1

bb.bn:                                            ; preds = %bb.bh
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i205.1 = icmp eq ptr %i.gn, null
  br i1 %.not9.i.i205.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.go = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.gn, i64 noundef 16) #16
  br label %Vec_StrGrow.exit.i206.1

bb.bp:                                            ; preds = %bb.bn
  %i.gp = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit.i206.1

Vec_StrGrow.exit.i206.1:                          ; preds = %bb.bp, %bb.bo
  %i.gq = phi ptr [ %i.go, %bb.bo ], [ %i.gp, %bb.bp ]
  store ptr %i.gq, ptr %i.gm, align 8, !tbaa !46
  br label %Vec_StrGrow.exit11.sink.split.i203.1

Vec_StrGrow.exit11.sink.split.i203.1:             ; preds = %Vec_StrGrow.exit.i206.1, %bb.bm
  %spec.select.sink.i204.1 = phi i32 [ %spec.select.i200.1, %bb.bm ], [ 16, %Vec_StrGrow.exit.i206.1 ]
  store i32 %spec.select.sink.i204.1, ptr %i.fy, align 8, !tbaa !70
  %.pre385 = load i32, ptr %i.fz, align 4, !tbaa !57
  br label %Vec_StrPush.exit207.1

Vec_StrPush.exit207.1:                            ; preds = %Vec_StrGrow.exit11.sink.split.i203.1, %bb.bi, %bb.bg
  %i.gr = phi i32 [ %.pre385, %Vec_StrGrow.exit11.sink.split.i203.1 ], [ %i.ga, %bb.bi ], [ %i.ga, %bb.bg ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !46
  %i.gu = add nsw i32 %i.gr, 1
  store i32 %i.gu, ptr %i.fz, align 4, !tbaa !57
  %i.gv = sext i32 %i.gr to i64
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 %i.gv
  store i8 0, ptr %i.gw, align 1, !tbaa !52
  %i.gx = icmp eq i32 %2, 0
  %i.gy = icmp sgt i32 %2, -1
  br i1 %i.gy, label %.preheader.lr.ph, label %.loopexit276

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.dh
  %.0335 = phi i64 [ 0, %.preheader.lr.ph ], [ %.4, %bb.dh ]
  %.0139334 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.oh, %bb.dh ] ; 4 uses
  br label %bb.br

bb.bq:                                            ; preds = %.critedge2
  br i1 %11, label %bb.br, label %.loopexit, !llvm.loop !179

bb.br:                                            ; preds = %.preheader, %bb.bq
  %11 = phi i1 [ true, %.preheader ], [ false, %bb.bq ]
  %indvars.iv381.sroa.phi = phi ptr [ %i.c, %.preheader ], [ %indvars.iv381.sroa.gep460, %bb.bq ] ; 2 uses
  %indvars.iv381.sroa.phi461 = phi ptr [ %i.c, %.preheader ], [ %indvars.iv381.sroa.gep463, %bb.bq ]
  %indvars.iv381.sroa.phi464 = phi ptr [ %i.a, %.preheader ], [ %indvars.iv381.sroa.gep466, %bb.bq ]
  %indvars.iv378 = phi i64 [ 0, %.preheader ], [ 1, %bb.bq ] ; 6 uses
  %.1333 = phi i64 [ %.0335, %.preheader ], [ %.3432, %bb.bq ]
  br i1 %.not150, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.gz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #18
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %Abc_Clock.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hb = load i64, ptr %10, align 8, !tbaa !81
  %i.hc = mul nsw i64 %i.hb, 1000000
  %i.hd = load i64, ptr %i.by, align 8, !tbaa !82
  %i.he = sdiv i64 %i.hd, 1000
  %i.hf = add nsw i64 %i.he, %i.hc
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.bs, %bb.bt
  %.0.i = phi i64 [ %i.hf, %bb.bt ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.bu

bb.bu:                                            ; preds = %Abc_Clock.exit, %bb.br
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1333, %bb.br ] ; 3 uses
  %.val163 = load ptr, ptr %i.t, align 8, !tbaa !33 ; 6 uses
  %.val158 = load i32, ptr %i.p, align 4, !tbaa !32 ; 4 uses
  %i.hg = icmp sgt i32 %.val158, 0                ; 2 uses
  br i1 %i.hg, label %.lr.ph.i208, label %sat_solver_clean_polarity.exit

.lr.ph.i208:                                      ; preds = %bb.bu
  %wide.trip.count.i209 = zext nneg i32 %.val158 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i209, 3    ; 3 uses
  %i.hh = icmp ult i32 %.val158, 4
  br i1 %i.hh, label %.epil.preheader, label %.lr.ph.i208.new

.lr.ph.i208.new:                                  ; preds = %.lr.ph.i208
  %unroll_iter = and i64 %wide.trip.count.i209, 2147483644
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i208.new
  %indvars.iv.i210 = phi i64 [ 0, %.lr.ph.i208.new ], [ %indvars.iv.next.i211.3, %bb.bv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i208.new ], [ %niter.next.3, %bb.bv ]
  %i.hi = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !34
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 %i.hl
  store i8 0, ptr %i.hm, align 1, !tbaa !52
  %i.hn = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !34
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.hn, i64 %i.hr
  store i8 0, ptr %i.hs, align 1, !tbaa !52
  %i.ht = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !34
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds i8, ptr %i.ht, i64 %i.hx
  store i8 0, ptr %i.hy, align 1, !tbaa !52
  %i.hz = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !34
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %i.hz, i64 %i.id
  store i8 0, ptr %i.ie, align 1, !tbaa !52
  %indvars.iv.next.i211.3 = add nuw nsw i64 %indvars.iv.i210, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !0

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.bv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i208
  %indvars.iv.i210.epil.init = phi i64 [ 0, %.lr.ph.i208 ], [ %indvars.iv.next.i211.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod460 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod460)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.epil.preheader
  %indvars.iv.i210.epil = phi i64 [ %indvars.iv.i210.epil.init, %.epil.preheader ], [ %indvars.iv.next.i211.epil, %bb.bw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bw ]
  %i.if = load ptr, ptr %i.bz, align 8, !tbaa !76
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210.epil
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !34
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %i.if, i64 %i.ii
  store i8 0, ptr %i.ij, align 1, !tbaa !52
  %indvars.iv.next.i211.epil = add nuw nsw i64 %indvars.iv.i210.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.bw, !llvm.loop !180

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.bw, %bb.bu
  %i.ik = trunc nuw nsw i64 %indvars.iv378 to i32
  %i.il = or disjoint i32 %i.ik, 4
  store i32 %i.il, ptr %i.b, align 4, !tbaa !34
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @__const.Bmc_CollapseOne_int.iOOVars, i64 %indvars.iv378
  %i.in = load i32, ptr %i.im, align 4, !tbaa !34
  %i.io = shl nsw i32 %i.in, 1                    ; 2 uses
  %i.ip = or disjoint i32 %i.io, 1
  store i32 %i.ip, ptr %i.bv, align 4, !tbaa !34
  %i.iq = call i32 @sat_solver_solve(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ca, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br i1 %.not150, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %sat_solver_clean_polarity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ir = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #18
  %i.is = icmp slt i32 %i.ir, 0
  br i1 %i.is, label %Abc_Clock.exit214, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.it = load i64, ptr %9, align 8, !tbaa !81
  %i.iu = mul nsw i64 %i.it, 1000000
  %i.iv = load i64, ptr %i.cb, align 8, !tbaa !82
  %i.iw = sdiv i64 %i.iv, 1000
  %i.ix = add nsw i64 %i.iw, %i.iu
  br label %Abc_Clock.exit214

Abc_Clock.exit214:                                ; preds = %bb.bx, %bb.by
  %.0.i213 = phi i64 [ %i.ix, %bb.by ], [ -1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.iy = sub i64 %.0.i213, %.2
  %i.iz = load i64, ptr %indvars.iv381.sroa.phi, align 16, !tbaa !39
  %i.ja = add nsw i64 %i.iy, %i.iz
  store i64 %i.ja, ptr %indvars.iv381.sroa.phi, align 16, !tbaa !39
  br label %bb.bz

bb.bz:                                            ; preds = %Abc_Clock.exit214, %sat_solver_clean_polarity.exit
  switch i32 %i.iq, label %bb.ca [
    i32 0, label %.loopexit276
    i32 -1, label %.loopexit.sink.split
  ]

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.v, align 4, !tbaa !32
  br i1 %i.hg, label %.lr.ph313, label %.critedge

.lr.ph313:                                        ; preds = %bb.ca
  %.promoted316 = load i32, ptr %i.u, align 8, !tbaa !44
  %.promoted319 = load ptr, ptr %i.aa, align 8, !tbaa !33
  %wide.trip.count = zext nneg i32 %.val158 to i64
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph313, %Vec_IntPush.exit222
  %indvars.iv363 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next364, %Vec_IntPush.exit222 ] ; 2 uses
  %indvars.iv361 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next362, %Vec_IntPush.exit222 ] ; 7 uses
  %storemerge274320 = phi ptr [ %.promoted319, %.lr.ph313 ], [ %storemerge274321, %Vec_IntPush.exit222 ] ; 6 uses
  %spec.select.sink.i219318 = phi i32 [ %.promoted316, %.lr.ph313 ], [ %spec.select.sink.i219317, %Vec_IntPush.exit222 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv363
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !34 ; 2 uses
  %.val172 = load ptr, ptr %i.cc, align 8, !tbaa !77
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %.val172, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !34
  %i.jg = icmp ne i32 %i.jf, 1
  %i.jh = zext i1 %i.jg to i32
  %i.ji = shl nsw i32 %i.jc, 1
  %i.jj = or disjoint i32 %i.ji, %i.jh
  %i.jk = trunc nsw i64 %indvars.iv361 to i32
  %i.jl = icmp eq i32 %spec.select.sink.i219318, %i.jk
  br i1 %i.jl, label %bb.cc, label %Vec_IntPush.exit222

bb.cc:                                            ; preds = %bb.cb
  %i.jm = icmp samesign ult i64 %indvars.iv361, 16
  br i1 %i.jm, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %.not9.i.i220 = icmp eq ptr %storemerge274320, null
  br i1 %.not9.i.i220, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jn = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge274320, i64 noundef 64) #16
  br label %Vec_IntPush.exit222

bb.cf:                                            ; preds = %bb.cd
  %i.jo = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit222

bb.cg:                                            ; preds = %bb.cc
  %i.jp = icmp samesign ult i64 %indvars.iv361, 1073741823
  %indvars.iv361.tr = trunc nsw i64 %indvars.iv361 to i32
  %i.jq = shl nsw i32 %indvars.iv361.tr, 1
  %spec.select.i215 = select i1 %i.jp, i32 %i.jq, i32 2147483647 ; 4 uses
  %i.jr = sext i32 %spec.select.i215 to i64
  %.not.i9.i216 = icmp samesign ult i64 %indvars.iv361, %i.jr
  br i1 %.not.i9.i216, label %bb.ch, label %Vec_IntPush.exit222

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i217 = icmp eq ptr %storemerge274320, null
  %i.js = zext nneg i32 %spec.select.i215 to i64
  %i.jt = shl nuw nsw i64 %i.js, 2                ; 2 uses
  br i1 %.not9.i10.i217, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ju = call ptr @realloc(ptr noundef nonnull %storemerge274320, i64 noundef %i.jt) #16
  br label %Vec_IntPush.exit222

bb.cj:                                            ; preds = %bb.ch
  %i.jv = call noalias ptr @malloc(i64 noundef %i.jt) #17
  br label %Vec_IntPush.exit222

Vec_IntPush.exit222:                              ; preds = %bb.cf, %bb.ce, %bb.cj, %bb.ci, %bb.cb, %bb.cg
  %storemerge274321 = phi ptr [ %storemerge274320, %bb.cb ], [ %storemerge274320, %bb.cg ], [ %i.jo, %bb.cf ], [ %i.jn, %bb.ce ], [ %i.ju, %bb.ci ], [ %i.jv, %bb.cj ] ; 3 uses
  %spec.select.sink.i219317 = phi i32 [ %spec.select.sink.i219318, %bb.cb ], [ %spec.select.sink.i219318, %bb.cg ], [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i215, %bb.ci ], [ %spec.select.i215, %bb.cj ] ; 2 uses
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %storemerge274321, i64 %indvars.iv361
  store i32 %i.jj, ptr %i.jw, align 4, !tbaa !34
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next364, %wide.trip.count
  br i1 %exitcond368.not, label %..critedge_crit_edge, label %bb.cb, !llvm.loop !181

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit222
  %i.jx = trunc nsw i64 %indvars.iv.next362 to i32
  store i32 %i.jx, ptr %i.v, align 4, !tbaa !32
  store i32 %spec.select.sink.i219317, ptr %i.u, align 8
  store ptr %storemerge274321, ptr %i.aa, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.ca
  br i1 %.not150, label %.thread429, label %bb.ck

.thread429:                                       ; preds = %.critedge
  %i.jy = trunc nuw nsw i64 %indvars.iv378 to i32
  %i.jz = xor i32 %i.jy, 5
  %i.ka = call i32 @Bmc_CollapseExpand(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ai, i32 noundef %3, i32 noundef %4, i32 noundef %i.jz)
  br label %bb.co

bb.ck:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.kb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #18
  %i.kc = icmp slt i32 %i.kb, 0
  br i1 %i.kc, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kd = load i64, ptr %8, align 8, !tbaa !81
  %i.ke = mul nsw i64 %i.kd, 1000000
  %i.kf = load i64, ptr %i.cd, align 8, !tbaa !82
  %i.kg = sdiv i64 %i.kf, 1000
  %i.kh = add nsw i64 %i.kg, %i.ke
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %.0.i223 = phi i64 [ %i.kh, %bb.cl ], [ -1, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ki = trunc nuw nsw i64 %indvars.iv378 to i32
  %i.kj = xor i32 %i.ki, 5
  %i.kk = call i32 @Bmc_CollapseExpand(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ai, i32 noundef %3, i32 noundef %4, i32 noundef %i.kj)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.kl = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #18
  %i.km = icmp slt i32 %i.kl, 0
  br i1 %i.km, label %Abc_Clock.exit226, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kn = load i64, ptr %7, align 8, !tbaa !81
  %i.ko = mul nsw i64 %i.kn, 1000000
  %i.kp = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.kq = sdiv i64 %i.kp, 1000
  %i.kr = add nsw i64 %i.kq, %i.ko
  br label %Abc_Clock.exit226

Abc_Clock.exit226:                                ; preds = %bb.cm, %bb.cn
  %.0.i225 = phi i64 [ %i.kr, %bb.cn ], [ -1, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ks = sub i64 %.0.i225, %.0.i223
  %i.kt = getelementptr inbounds nuw i8, ptr %indvars.iv381.sroa.phi461, i64 8 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !39
  %i.kv = add nsw i64 %i.ks, %i.ku
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !39
  br label %bb.co

bb.co:                                            ; preds = %.thread429, %Abc_Clock.exit226
  %i.kw = phi i32 [ %i.ka, %.thread429 ], [ %i.kk, %Abc_Clock.exit226 ]
  %.3432 = phi i64 [ %.2, %.thread429 ], [ %.0.i223, %Abc_Clock.exit226 ] ; 3 uses
  %i.kx = icmp slt i32 %i.kw, 0
  br i1 %i.kx, label %.loopexit276, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ky = load ptr, ptr %indvars.iv381.sroa.phi464, align 8, !tbaa !78 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 12 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !46 ; 8 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 4 ; 4 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !57 ; 3 uses
  %i.ld = add nsw i32 %i.lc, -1                   ; 6 uses
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !57
  %i.le = add nsw i32 %i.ld, %1                   ; 3 uses
  %i.lf = add nsw i32 %i.le, 4                    ; 9 uses
  %.not.i227.not = icmp slt i32 %i.lf, %i.lc
  br i1 %.not.i227.not, label %Vec_StrFillExtra.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lg = load i32, ptr %i.ky, align 8, !tbaa !70 ; 4 uses
  %i.lh = shl nsw i32 %i.lg, 1                    ; 2 uses
  %i.li = icmp sgt i32 %i.lf, %i.lh
  %.not.i.i = icmp slt i32 %i.lg, %i.lf           ; 2 uses
  br i1 %i.li, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not.i.i, label %bb.cs, label %Vec_StrGrow.exit.i228

bb.cs:                                            ; preds = %bb.cr
  %.not9.i.i236 = icmp eq ptr %i.la, null
  %i.lj = sext i32 %i.lf to i64                   ; 2 uses
  br i1 %.not9.i.i236, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lk = call ptr @realloc(ptr noundef nonnull %i.la, i64 noundef %i.lj) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cu:                                            ; preds = %bb.cs
  %i.ll = call noalias ptr @malloc(i64 noundef %i.lj) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.cv:                                            ; preds = %bb.cq
  br i1 %.not.i.i, label %bb.cw, label %Vec_StrGrow.exit.i228

bb.cw:                                            ; preds = %bb.cv
  %i.lm = icmp slt i32 %i.lg, 1073741823
  %spec.select.i234 = select i1 %i.lm, i32 %i.lh, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.lg, %spec.select.i234
  br i1 %.not.i22.i, label %bb.cx, label %Vec_StrGrow.exit.i228

bb.cx:                                            ; preds = %bb.cw
  %.not9.i23.i = icmp eq ptr %i.la, null
  %i.ln = sext i32 %spec.select.i234 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lo = call ptr @realloc(ptr noundef nonnull %i.la, i64 noundef %i.ln) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cz:                                            ; preds = %bb.cx
  %i.lp = call noalias ptr @malloc(i64 noundef %i.ln) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.cy, %bb.cz, %bb.ct, %bb.cu
  %storemerge272 = phi ptr [ %i.ll, %bb.cu ], [ %i.lk, %bb.ct ], [ %i.lo, %bb.cy ], [ %i.lp, %bb.cz ] ; 2 uses
  %spec.select.sink.i235 = phi i32 [ %i.lf, %bb.cu ], [ %i.lf, %bb.ct ], [ %spec.select.i234, %bb.cy ], [ %spec.select.i234, %bb.cz ]
  store ptr %storemerge272, ptr %i.kz, align 8, !tbaa !46
  store i32 %spec.select.sink.i235, ptr %i.ky, align 8, !tbaa !70
  %.pre386 = load i32, ptr %i.lb, align 4, !tbaa !57
  br label %Vec_StrGrow.exit.i228

Vec_StrGrow.exit.i228:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.cw, %bb.cv, %bb.cr
  %.val171.pre392 = phi ptr [ %storemerge272, %Vec_StrGrow.exit.sink.split.i ], [ %i.la, %bb.cw ], [ %i.la, %bb.cv ], [ %i.la, %bb.cr ]
  %i.lq = phi i32 [ %.pre386, %Vec_StrGrow.exit.sink.split.i ], [ %i.ld, %bb.cw ], [ %i.ld, %bb.cv ], [ %i.ld, %bb.cr ] ; 2 uses
  %i.lr = icmp slt i32 %i.lq, %i.lf
  br i1 %i.lr, label %.lr.ph.i229, label %._crit_edge.i

.lr.ph.i229:                                      ; preds = %Vec_StrGrow.exit.i228
  %i.ls = sext i32 %i.lq to i64                   ; 4 uses
  %wide.trip.count.i230 = sext i32 %i.lf to i64   ; 3 uses
  %i.lt = sub nsw i64 %wide.trip.count.i230, %i.ls
  %xtraiter461 = and i64 %i.lt, 3                 ; 2 uses
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i229, %.prol.preheader
  %indvars.iv.i231.prol = phi i64 [ %indvars.iv.next.i232.prol, %.prol.preheader ], [ %i.ls, %.lr.ph.i229 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i229 ]
  %i.lu = load ptr, ptr %i.kz, align 8, !tbaa !46
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %indvars.iv.i231.prol
  store i8 45, ptr %i.lv, align 1, !tbaa !52
  %indvars.iv.next.i232.prol = add nsw i64 %indvars.iv.i231.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter461
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !182

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i229
  %indvars.iv.i231.unr = phi i64 [ %i.ls, %.lr.ph.i229 ], [ %indvars.iv.next.i232.prol, %.prol.preheader ]
  %i.lw = sub nsw i64 %i.ls, %wide.trip.count.i230
  %i.lx = icmp ugt i64 %i.lw, -4
  br i1 %i.lx, label %._crit_edge.i.loopexit, label %.lr.ph.i229.new

.lr.ph.i229.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i229.new
  %indvars.iv.i231 = phi i64 [ %indvars.iv.next.i232.3, %.lr.ph.i229.new ], [ %indvars.iv.i231.unr, %.prol.loopexit ] ; 5 uses
  %i.ly = load ptr, ptr %i.kz, align 8, !tbaa !46
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 %indvars.iv.i231
  store i8 45, ptr %i.lz, align 1, !tbaa !52
  %i.ma = load ptr, ptr %i.kz, align 8, !tbaa !46
  %i.mb = getelementptr i8, ptr %i.ma, i64 %indvars.iv.i231
  %i.mc = getelementptr i8, ptr %i.mb, i64 1
  store i8 45, ptr %i.mc, align 1, !tbaa !52
  %i.md = load ptr, ptr %i.kz, align 8, !tbaa !46
  %i.me = getelementptr i8, ptr %i.md, i64 %indvars.iv.i231
  %i.mf = getelementptr i8, ptr %i.me, i64 2
  store i8 45, ptr %i.mf, align 1, !tbaa !52
  %i.mg = load ptr, ptr %i.kz, align 8, !tbaa !46
  %i.mh = getelementptr i8, ptr %i.mg, i64 %indvars.iv.i231
  %i.mi = getelementptr i8, ptr %i.mh, i64 3
  store i8 45, ptr %i.mi, align 1, !tbaa !52
  %indvars.iv.next.i232.3 = add nsw i64 %indvars.iv.i231, 4 ; 2 uses
  %exitcond.not.i233.3 = icmp eq i64 %indvars.iv.next.i232.3, %wide.trip.count.i230
  br i1 %exitcond.not.i233.3, label %._crit_edge.i.loopexit, label %.lr.ph.i229.new, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i229.new, %.prol.loopexit
  %.val171.pre.pre = load ptr, ptr %i.kz, align 8, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i228
  %.val171.pre = phi ptr [ %.val171.pre.pre, %._crit_edge.i.loopexit ], [ %.val171.pre392, %Vec_StrGrow.exit.i228 ]
  store i32 %i.lf, ptr %i.lb, align 4, !tbaa !57
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.cp, %._crit_edge.i
  %.val171 = phi ptr [ %i.la, %bb.cp ], [ %.val171.pre, %._crit_edge.i ]
  %i.mj = sext i32 %i.le to i64                   ; 3 uses
  %i.mk = getelementptr inbounds i8, ptr %.val171, i64 %i.mj
  store i8 32, ptr %i.mk, align 1, !tbaa !52
  %i.ml = add i32 %i.lc, %1
  %12 = trunc nuw nsw i64 %indvars.iv378 to i8
  %13 = xor i8 %12, 49
  %.val170 = load ptr, ptr %i.kz, align 8, !tbaa !46
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds i8, ptr %.val170, i64 %i.mm
  store i8 %13, ptr %i.mn, align 1, !tbaa !52
  %.val169 = load ptr, ptr %i.kz, align 8, !tbaa !46
  %i.mo = getelementptr i8, ptr %.val169, i64 %i.mj
  %i.mp = getelementptr i8, ptr %i.mo, i64 2
  store i8 10, ptr %i.mp, align 1, !tbaa !52
  %.val168 = load ptr, ptr %i.kz, align 8, !tbaa !46
  %i.mq = getelementptr i8, ptr %.val168, i64 %i.mj
  %i.mr = getelementptr i8, ptr %i.mq, i64 3
  store i8 0, ptr %i.mr, align 1, !tbaa !52
  %i.ms = load i32, ptr %i.ai, align 8, !tbaa !44
  %i.mt = icmp eq i32 %i.ms, 0
  %.pre388 = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 3 uses
  br i1 %i.mt, label %bb.da, label %Vec_IntPush.exit244

bb.da:                                            ; preds = %Vec_StrFillExtra.exit
  %.not9.i.i242 = icmp eq ptr %.pre388, null
  br i1 %.not9.i.i242, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre388, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i240

bb.dc:                                            ; preds = %bb.da
  %i.mv = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i240

Vec_IntGrow.exit11.sink.split.i240:               ; preds = %bb.db, %bb.dc
  %i.mw = phi ptr [ %i.mu, %bb.db ], [ %i.mv, %bb.dc ] ; 2 uses
  store ptr %i.mw, ptr %i.ao, align 8, !tbaa !33
  store i32 16, ptr %i.ai, align 8, !tbaa !44
  br label %Vec_IntPush.exit244

Vec_IntPush.exit244:                              ; preds = %Vec_StrFillExtra.exit, %Vec_IntGrow.exit11.sink.split.i240
  %.promoted329.a = phi ptr [ %.pre388, %Vec_StrFillExtra.exit ], [ %i.mw, %Vec_IntGrow.exit11.sink.split.i240 ] ; 3 uses
  store i32 1, ptr %i.aj, align 4, !tbaa !32
  store i32 %i.io, ptr %.promoted329.a, align 4, !tbaa !34
  %.val = load i32, ptr %i.ac, align 4, !tbaa !32 ; 2 uses
  %i.mx = icmp sgt i32 %.val, 0
  %.val164.pre = load i32, ptr %i.aj, align 4, !tbaa !32 ; 2 uses
  br i1 %i.mx, label %.lr.ph323, label %.critedge2

.lr.ph323:                                        ; preds = %Vec_IntPush.exit244
  %.val160 = load ptr, ptr %i.ah, align 8, !tbaa !33
  %.val159 = load ptr, ptr %i.aa, align 8, !tbaa !33
  %.promoted326 = load i32, ptr %i.ai, align 8, !tbaa !44
  %i.my = sext i32 %.val164.pre to i64
  %wide.trip.count376 = zext nneg i32 %.val to i64
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph323, %Vec_IntPush.exit252
  %indvars.iv371 = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next372, %Vec_IntPush.exit252 ] ; 2 uses
  %indvars.iv369 = phi i64 [ %i.my, %.lr.ph323 ], [ %indvars.iv.next370, %Vec_IntPush.exit252 ] ; 7 uses
  %storemerge273330 = phi ptr [ %.promoted329.a, %.lr.ph323 ], [ %storemerge273331, %Vec_IntPush.exit252 ] ; 3 uses
  %spec.select.sink.i249328 = phi i32 [ %.promoted326, %.lr.ph323 ], [ %spec.select.sink.i249327, %Vec_IntPush.exit252 ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.val160, i64 %indvars.iv371
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !34 ; 3 uses
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %.val159, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !34 ; 2 uses
  %i.ne = xor i32 %i.nd, 1
  %i.nf = trunc nsw i64 %indvars.iv369 to i32
  %i.ng = icmp eq i32 %spec.select.sink.i249328, %i.nf
  br i1 %i.ng, label %bb.de, label %Vec_IntPush.exit252

bb.de:                                            ; preds = %bb.dd
  %i.nh = icmp slt i64 %indvars.iv369, 16
  br i1 %i.nh, label %Vec_IntPush.exit252.sink.split, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ni = icmp samesign ult i64 %indvars.iv369, 1073741823
  %indvars.iv369.tr = trunc nsw i64 %indvars.iv369 to i32
  %i.nj = shl nsw i32 %indvars.iv369.tr, 1
  %spec.select.i245 = select i1 %i.ni, i32 %i.nj, i32 2147483647 ; 3 uses
  %i.nk = sext i32 %spec.select.i245 to i64
  %.not.i9.i246 = icmp samesign ult i64 %indvars.iv369, %i.nk
  br i1 %.not.i9.i246, label %bb.dg, label %Vec_IntPush.exit252

bb.dg:                                            ; preds = %bb.df
  %i.nl = zext nneg i32 %spec.select.i245 to i64
  %i.nm = shl nuw nsw i64 %i.nl, 2
  br label %Vec_IntPush.exit252.sink.split

Vec_IntPush.exit252.sink.split:                   ; preds = %bb.de, %bb.dg
  %.sink = phi i64 [ %i.nm, %bb.dg ], [ 64, %bb.de ]
  %spec.select.sink.i249327.ph = phi i32 [ %spec.select.i245, %bb.dg ], [ 16, %bb.de ]
  %i.nn = call ptr @realloc(ptr noundef nonnull %storemerge273330, i64 noundef %.sink) #16
  br label %Vec_IntPush.exit252

Vec_IntPush.exit252:                              ; preds = %Vec_IntPush.exit252.sink.split, %bb.dd, %bb.df
  %storemerge273331 = phi ptr [ %storemerge273330, %bb.dd ], [ %storemerge273330, %bb.df ], [ %i.nn, %Vec_IntPush.exit252.sink.split ] ; 4 uses
  %spec.select.sink.i249327 = phi i32 [ %spec.select.sink.i249328, %bb.dd ], [ %spec.select.sink.i249328, %bb.df ], [ %spec.select.sink.i249327.ph, %Vec_IntPush.exit252.sink.split ] ; 2 uses
  %indvars.iv.next370 = add nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %storemerge273331, i64 %indvars.iv369
  store i32 %i.ne, ptr %i.no, align 4, !tbaa !34
  %i.np = add nsw i32 %i.na, %i.ld
  %i.nq = xor i32 %i.na, -1
  %i.nr = add i32 %i.le, %i.nq
  %.sink446 = select i1 %.not, i32 %i.np, i32 %i.nr
  %i.ns = trunc i32 %i.nd to i8
  %i.nt = and i8 %i.ns, 1
  %i.nu = sub nuw nsw i8 49, %i.nt
  %.val166 = load ptr, ptr %i.kz, align 8, !tbaa !46
  %i.nv = sext i32 %.sink446 to i64
  %i.nw = getelementptr inbounds i8, ptr %.val166, i64 %i.nv
  store i8 %i.nu, ptr %i.nw, align 1, !tbaa !52
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count376
  br i1 %exitcond377.not, label %..critedge2_crit_edge, label %bb.dd, !llvm.loop !183

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit252
  %i.nx = trunc nsw i64 %indvars.iv.next370 to i32 ; 2 uses
  store i32 %i.nx, ptr %i.aj, align 4, !tbaa !32
  store i32 %spec.select.sink.i249327, ptr %i.ai, align 8
  store ptr %storemerge273331, ptr %i.ao, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %Vec_IntPush.exit244
  %.val164 = phi i32 [ %i.nx, %..critedge2_crit_edge ], [ %.val164.pre, %Vec_IntPush.exit244 ]
  %.val162 = phi ptr [ %storemerge273331, %..critedge2_crit_edge ], [ %.promoted329.a, %Vec_IntPush.exit244 ] ; 2 uses
  %i.ny = sext i32 %.val164 to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %.val162, i64 %i.ny
  %i.oa = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %.val162, ptr noundef %i.nz) #18
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %.loopexit.sink.split, label %bb.bq

.loopexit.sink.split:                             ; preds = %.critedge2, %bb.bz
  %.4.ph = phi i64 [ %.2, %bb.bz ], [ %.3432, %.critedge2 ]
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv378
  store i32 1, ptr %i.oc, align 4, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bq, %.loopexit.sink.split
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %.3432, %bb.bq ]
  %i.od = load i32, ptr %i.d, align 8, !tbaa !34
  %i.oe = icmp ne i32 %i.od, 0
  %i.of = load i32, ptr %i.cf, align 4
  %i.og = icmp ne i32 %i.of, 0
  %or.cond = select i1 %i.oe, i1 true, i1 %i.og
  br i1 %or.cond, label %.loopexit276, label %bb.dh

bb.dh:                                            ; preds = %.loopexit
  %i.oh = add nuw nsw i32 %.0139334, 1            ; 3 uses
  %i.oi = icmp slt i32 %i.oh, %2
  %i.oj = select i1 %i.gx, i1 true, i1 %i.oi
  br i1 %i.oj, label %.preheader, label %.loopexit276, !llvm.loop !184

.loopexit276:                                     ; preds = %.loopexit, %bb.dh, %bb.bz, %bb.co, %.loopexit281, %Vec_StrPush.exit207, %Vec_StrPush.exit207.1, %Vec_StrPush.exit
  %.1140 = phi i32 [ 0, %Vec_StrPush.exit207.1 ], [ 0, %Vec_StrPush.exit ], [ %.0139334, %bb.bz ], [ %i.fx, %Vec_StrPush.exit207 ], [ %i.bx, %.loopexit281 ], [ %.0139334, %bb.co ], [ %i.oh, %bb.dh ], [ %.0139334, %.loopexit ]
  %i.ok = load ptr, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %.not.i253 = icmp eq ptr %i.ok, null
  br i1 %.not.i253, label %Vec_IntFree.exit, label %bb.di

bb.di:                                            ; preds = %.loopexit276
  call void @free(ptr noundef nonnull %i.ok) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit276, %bb.di
  call void @free(ptr noundef nonnull %i.n) #18
  %i.ol = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %.not.i254 = icmp eq ptr %i.ol, null
  br i1 %.not.i254, label %Vec_IntFree.exit255, label %bb.dj

bb.dj:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.ol) #18
  br label %Vec_IntFree.exit255

Vec_IntFree.exit255:                              ; preds = %Vec_IntFree.exit, %bb.dj
  call void @free(ptr noundef nonnull %i.u) #18
  %i.om = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %.not.i256 = icmp eq ptr %i.om, null
  br i1 %.not.i256, label %Vec_IntFree.exit257, label %bb.dk

bb.dk:                                            ; preds = %Vec_IntFree.exit255
  call void @free(ptr noundef nonnull %i.om) #18
  br label %Vec_IntFree.exit257

Vec_IntFree.exit257:                              ; preds = %Vec_IntFree.exit255, %bb.dk
  call void @free(ptr noundef nonnull %i.ab) #18
  %i.on = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %.not.i258 = icmp eq ptr %i.on, null
  br i1 %.not.i258, label %Vec_IntFree.exit259, label %bb.dl

bb.dl:                                            ; preds = %Vec_IntFree.exit257
  call void @free(ptr noundef nonnull %i.on) #18
  br label %Vec_IntFree.exit259

Vec_IntFree.exit259:                              ; preds = %Vec_IntFree.exit257, %bb.dl
  call void @free(ptr noundef nonnull %i.ai) #18
  %i.oo = load i32, ptr %i.d, align 8, !tbaa !34
  %i.op = icmp ne i32 %i.oo, 0
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.or = load i32, ptr %i.oq, align 4            ; 2 uses
  %i.os = icmp ne i32 %i.or, 0
  %or.cond7 = select i1 %i.op, i1 true, i1 %i.os
  br i1 %or.cond7, label %bb.dm, label %.thread

bb.dm:                                            ; preds = %Vec_IntFree.exit259
  %i.ot = sext i32 %i.or to i64
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ot ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !78 ; 6 uses
  store ptr null, ptr %i.ou, align 8, !tbaa !78
end_hunk_5
