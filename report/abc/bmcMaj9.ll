Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj9?download=true
inline.NumInlined: 239
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Exa9_ManAddOneHot:bb.a
bb.an:                                            ; preds = %._crit_edge.i92.i
  %i.gw = load i32, ptr %i.fu, align 8, !tbaa !80
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.fu, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit96.i

Exa9_KissatAddClause.exit96.i:                    ; preds = %bb.an, %bb.am, %bb.al
  %i.gy = load ptr, ptr %i.eq, align 8, !tbaa !63
  %i.gz = tail call i32 @kissat_is_inconsistent(ptr noundef %i.gy) #19
  %.not13.i95.not.i = icmp eq i32 %i.gz, 0
  br i1 %.not13.i95.not.i, label %bb.aj, label %Exa9_ManAddOneHotSeq.exit

.preheader.i39:                                   ; preds = %.preheader.i39.preheader, %.critedge.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %.critedge.i ], [ %indvars.iv24.i, %.preheader.i39.preheader ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val82.i, i64 %indvars.iv34.i
  br label %._crit_edge.i102.i

._crit_edge.i102.i:                               ; preds = %bb.as, %.preheader.i39
  %indvars.iv29.i = phi i64 [ 0, %.preheader.i39 ], [ %indvars.iv.next30.i, %bb.as ] ; 2 uses
  %.0629.i = phi i32 [ %.06412.i, %.preheader.i39 ], [ %i.hy, %bb.as ] ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !81 ; 2 uses
  %i.hc = and i32 %.0629.i, 1
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val29, i64 %indvars.iv29.i
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !81 ; 2 uses
  %i.hf = load ptr, ptr %i.eq, align 8, !tbaa !63
  %i.hg = ashr i32 %i.hb, 1                       ; 2 uses
  %i.hh = and i32 %i.hb, 1
  %.not.i.i99.not.i = icmp eq i32 %i.hh, 0
  %i.hi = sub nsw i32 0, %i.hg
  %i.hj = select i1 %.not.i.i99.not.i, i32 %i.hi, i32 %i.hg
  tail call void @kissat_add(ptr noundef %i.hf, i32 noundef %i.hj) #19
  %i.hk = load ptr, ptr %i.eq, align 8, !tbaa !63
  %.not.i.i99.1.not.i = icmp eq i32 %i.hc, 0
  %i.hl = sub nsw i32 0, %i.he
  %i.hm = select i1 %.not.i.i99.1.not.i, i32 %i.hl, i32 %i.he
  tail call void @kissat_add(ptr noundef %i.hk, i32 noundef %i.hm) #19
  %i.hn = load ptr, ptr %i.eq, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.hn, i32 noundef 0) #19
  %i.ho = load i32, ptr %i.ez, align 4, !tbaa !71
  %.not.i103.i = icmp eq i32 %i.ho, 0
  br i1 %.not.i103.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i102.i
  %i.hp = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i104.i = icmp eq i32 %i.hp, 0
  br i1 %.not12.i104.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hq = load i32, ptr %i.fs, align 4, !tbaa !78
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.fs, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit106.i

bb.aq:                                            ; preds = %bb.ao
  %i.hs = load i32, ptr %i.ft, align 8, !tbaa !79
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.ft, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit106.i

bb.ar:                                            ; preds = %._crit_edge.i102.i
  %i.hu = load i32, ptr %i.fu, align 8, !tbaa !80
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.fu, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit106.i

Exa9_KissatAddClause.exit106.i:                   ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.hw = load ptr, ptr %i.eq, align 8, !tbaa !63
  %i.hx = tail call i32 @kissat_is_inconsistent(ptr noundef %i.hw) #19
  %.not13.i105.not.i = icmp eq i32 %i.hx, 0
  br i1 %.not13.i105.not.i, label %bb.as, label %Exa9_ManAddOneHotSeq.exit

bb.as:                                            ; preds = %Exa9_KissatAddClause.exit106.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %i.hy = lshr i32 %.0629.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next30.i, %wide.trip.count32.i
  br i1 %exitcond33.not.i, label %.critedge.i, label %._crit_edge.i102.i, !llvm.loop !130

.critedge.i:                                      ; preds = %bb.as
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.hz = icmp samesign ult i64 %indvars.iv.next35.i, %i.fz
  br i1 %i.hz, label %.preheader.i39, label %._crit_edge.i36, !llvm.loop !131

._crit_edge.i36:                                  ; preds = %.critedge.i, %bb.ai
  %i.ia = add nuw nsw i32 %.06412.i, 1            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 6
  %exitcond37.not.i = icmp eq i32 %i.ia, %i.fo
  br i1 %exitcond37.not.i, label %Exa9_ManAddOneHotSeq.exit, label %bb.ai, !llvm.loop !132

.lr.ph.i.i64:                                     ; preds = %bb.c
  %i.ib = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val106.i = load ptr, ptr %i.ib, align 8, !tbaa !74 ; 5 uses
  %i.ic = getelementptr i8, ptr %2, i64 8
  %.val105.i = load ptr, ptr %i.ic, align 8, !tbaa !74
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 18 uses
  %wide.trip.count.i.i65 = zext nneg i32 %.val to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i.i64
  %indvars.iv.i.i66 = phi i64 [ 0, %.lr.ph.i.i64 ], [ %indvars.iv.next.i.i68, %bb.at ] ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv.i.i66
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !81 ; 2 uses
  %i.ih = ashr i32 %i.ig, 1                       ; 2 uses
  %i.ii = and i32 %i.ig, 1
  %.not.i.i.i67 = icmp eq i32 %i.ii, 0
  %i.ij = sub nsw i32 0, %i.ih
  %i.ik = select i1 %.not.i.i.i67, i32 %i.ih, i32 %i.ij
  tail call void @kissat_add(ptr noundef %i.ie, i32 noundef %i.ik) #19
  %indvars.iv.next.i.i68 = add nuw nsw i64 %indvars.iv.i.i66, 1 ; 2 uses
  %exitcond.not.i.i69 = icmp eq i64 %indvars.iv.next.i.i68, %wide.trip.count.i.i65
  br i1 %exitcond.not.i.i69, label %._crit_edge.i.i48, label %bb.at, !llvm.loop !88

._crit_edge.i.i48:                                ; preds = %bb.at
  %i.il = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.il, i32 noundef 0) #19
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !71
  %.not.i.i49 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i49, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.i48
  %i.io = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i.i50 = icmp eq i32 %i.io, 0
  br i1 %.not12.i.i50, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !78
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit.i51

bb.aw:                                            ; preds = %bb.au
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !79
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.is, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit.i51

bb.ax:                                            ; preds = %._crit_edge.i.i48
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !80
  %i.ix = add nsw i32 %i.iw, 1
  store i32 %i.ix, ptr %i.iv, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit.i51

Exa9_KissatAddClause.exit.i51:                    ; preds = %bb.ax, %bb.aw, %bb.av
  %i.iy = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.iz = tail call i32 @kissat_is_inconsistent(ptr noundef %i.iy) #19
  %.not13.i.not.i52 = icmp eq i32 %i.iz, 0
  br i1 %.not13.i.not.i52, label %bb.ay, label %Exa9_ManAddOneHotSeq.exit

bb.ay:                                            ; preds = %Exa9_KissatAddClause.exit.i51
  %i.ja = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 12 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 5 uses
  store i32 0, ptr %i.jb, align 4, !tbaa !75
  store i32 16, ptr %i.ja, align 8, !tbaa !72
  %i.jc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 5 uses
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !74
  %i.je = add nuw nsw i32 %.val, 3
  %i.jf = lshr i32 %i.je, 2                       ; 3 uses
  %i.jg = getelementptr i8, ptr %2, i64 4
  %.val.i53 = load i32, ptr %i.jg, align 4, !tbaa !75
  %i.jh = icmp sgt i32 %i.jf, %.val.i53
  br i1 %i.jh, label %bb.az, label %.lr.ph177.i

.lr.ph177.i:                                      ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.trip.count.i54 = zext nneg i32 %i.jf to i64 ; 4 uses
  br label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %.not.i113.i = icmp eq ptr %i.jc, null
  br i1 %.not.i113.i, label %Vec_IntFree.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @free(ptr noundef nonnull %i.jc) #19
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.ba, %bb.az
  tail call void @free(ptr noundef nonnull %i.ja) #19
  %.val107.i = load i32, ptr %i.d, align 4, !tbaa !75
  %.val108.i = load ptr, ptr %i.ib, align 8, !tbaa !74
  %i.jl = tail call fastcc i32 @Exa9_ManAddOneHotQuad(ptr noundef nonnull %0, i32 %.val107.i, ptr %.val108.i)
  br label %Exa9_ManAddOneHotSeq.exit

bb.bb:                                            ; preds = %._crit_edge175.i, %.lr.ph177.i
  %indvars.iv102 = phi i32 [ %indvars.iv.next103, %._crit_edge175.i ], [ -1, %.lr.ph177.i ] ; 2 uses
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i, %._crit_edge175.i ], [ 0, %.lr.ph177.i ] ; 8 uses
  %indvars.iv221.i = phi i32 [ %indvars.iv.next222.i, %._crit_edge175.i ], [ 4, %.lr.ph177.i ] ; 2 uses
  %indvars.iv214.i = phi i64 [ %indvars.iv.next215.i, %._crit_edge175.i ], [ 1, %.lr.ph177.i ] ; 2 uses
  %indvars.iv204.i = phi i64 [ %indvars.iv.next205.i, %._crit_edge175.i ], [ 0, %.lr.ph177.i ] ; 4 uses
  %storemerge188.i = phi ptr [ %storemerge189.i, %._crit_edge175.i ], [ %i.jc, %.lr.ph177.i ] ; 6 uses
  %spec.select.sink.i183.i = phi i32 [ %spec.select.sink.i182.i, %._crit_edge175.i ], [ 16, %.lr.ph177.i ] ; 4 uses
  %indvars108 = trunc i64 %indvars.iv214.i to i32
  %smin105 = tail call i32 @llvm.smin.i32(i32 %.val, i32 %indvars.iv221.i) ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %smin105, i32 %indvars108)
  %i.jm = add i32 %smax, %indvars.iv102
  %i.jn = zext i32 %i.jm to i64
  %i.jo = add nuw nsw i64 %i.jn, 2
  %i.jp = shl nuw nsw i64 %indvars.iv227.i, 4
  %scevgep203.i = getelementptr i8, ptr %.val106.i, i64 %i.jp
  %indvar.i.tr = trunc i64 %indvars.iv227.i to i32 ; 2 uses
  %i.jq = shl i32 %indvar.i.tr, 2                 ; 4 uses
  %i.jr = add i32 %i.jq, 4
  %smin.i55 = tail call i32 @llvm.smin.i32(i32 %.val, i32 %i.jr) ; 3 uses
  %i.js = or disjoint i32 %i.jq, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %smin.i55, i32 %i.js)
  %i.jt = xor i32 %i.jq, -1
  %i.ju = add i32 %smax.i, %i.jt
  %i.jv = zext i32 %i.ju to i64
  %i.jw = shl nuw nsw i64 %i.jv, 2
  %i.jx = add nuw nsw i64 %i.jw, 4
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val105.i, i64 %indvars.iv227.i
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !81 ; 2 uses
  %i.ka = shl nsw i32 %i.jz, 1                    ; 2 uses
  %i.kb = icmp eq i32 %spec.select.sink.i183.i, %indvar.i.tr
  br i1 %i.kb, label %bb.bc, label %Vec_IntPush.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.kc = icmp samesign ult i64 %indvars.iv227.i, 16
  br i1 %i.kc, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %.not9.i.i.i = icmp eq ptr %storemerge188.i, null
  br i1 %.not9.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge188.i, i64 noundef 64) #22
  br label %Vec_IntPush.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.ke = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit.i

bb.bg:                                            ; preds = %bb.bc
  %i.kf = icmp samesign ult i64 %indvars.iv227.i, 1073741823
  %i.kg = shl i32 %spec.select.sink.i183.i, 1
  %spec.select.i.i = select i1 %i.kf, i32 %i.kg, i32 2147483647 ; 4 uses
  %i.kh = sext i32 %spec.select.i.i to i64
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv227.i, %i.kh
  br i1 %.not.i9.i.i, label %bb.bh, label %Vec_IntPush.exit.i

bb.bh:                                            ; preds = %bb.bg
  %.not9.i10.i.i = icmp eq ptr %storemerge188.i, null
  %i.ki = zext nneg i32 %spec.select.i.i to i64
  %i.kj = shl nuw nsw i64 %i.ki, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kk = tail call ptr @realloc(ptr noundef nonnull %storemerge188.i, i64 noundef %i.kj) #22
  br label %Vec_IntPush.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.kl = tail call noalias ptr @malloc(i64 noundef %i.kj) #21
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.be, %bb.bb
  %storemerge189.i = phi ptr [ %storemerge188.i, %bb.bb ], [ %storemerge188.i, %bb.bg ], [ %i.ke, %bb.bf ], [ %i.kd, %bb.be ], [ %i.kk, %bb.bi ], [ %i.kl, %bb.bj ] ; 14 uses
  %spec.select.sink.i182.i = phi i32 [ %spec.select.sink.i183.i, %bb.bb ], [ %spec.select.sink.i183.i, %bb.bg ], [ 16, %bb.bf ], [ 16, %bb.be ], [ %spec.select.i.i, %bb.bi ], [ %spec.select.i.i, %bb.bj ] ; 5 uses
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 5 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %storemerge189.i, i64 %indvars.iv227.i
  store i32 %i.ka, ptr %i.km, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.kn = or disjoint i32 %i.ka, 1
  store i32 %i.kn, ptr %i.a, align 16, !tbaa !81
  %i.ko = icmp sgt i32 %.val, %i.jq               ; 2 uses
  br i1 %i.ko, label %.lr.ph.preheader.i, label %._crit_edge.i56

.lr.ph.preheader.i:                               ; preds = %Vec_IntPush.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep203.i, i64 %i.jx, i1 false), !tbaa !81
  br label %._crit_edge.i56

._crit_edge.i56:                                  ; preds = %.lr.ph.preheader.i, %Vec_IntPush.exit.i
  %.0.lcssa.i = phi i64 [ 1, %Vec_IntPush.exit.i ], [ %i.jo, %.lr.ph.preheader.i ]
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %._crit_edge.i56
  %indvars.iv.i120.i = phi i64 [ 0, %._crit_edge.i56 ], [ %indvars.iv.next.i122.i, %bb.bk ] ; 2 uses
  %i.kp = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i120.i
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !81 ; 2 uses
  %i.ks = ashr i32 %i.kr, 1                       ; 2 uses
  %i.kt = and i32 %i.kr, 1
  %.not.i.i121.i = icmp eq i32 %i.kt, 0
  %i.ku = sub nsw i32 0, %i.ks
  %i.kv = select i1 %.not.i.i121.i, i32 %i.ks, i32 %i.ku
  tail call void @kissat_add(ptr noundef %i.kp, i32 noundef %i.kv) #19
  %indvars.iv.next.i122.i = add nuw nsw i64 %indvars.iv.i120.i, 1 ; 2 uses
  %exitcond.not.i123.i = icmp eq i64 %indvars.iv.next.i122.i, %.0.lcssa.i
  br i1 %exitcond.not.i123.i, label %._crit_edge.i114.i, label %bb.bk, !llvm.loop !88

._crit_edge.i114.i:                               ; preds = %bb.bk
  %i.kw = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.kw, i32 noundef 0) #19
  %i.kx = load i32, ptr %i.im, align 4, !tbaa !71
  %.not.i115.i = icmp eq i32 %i.kx, 0
  br i1 %.not.i115.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i114.i
  %i.ky = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i116.i = icmp eq i32 %i.ky, 0
  br i1 %.not12.i116.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kz = load i32, ptr %i.ji, align 4, !tbaa !78
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %i.ji, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit124.i

bb.bn:                                            ; preds = %bb.bl
  %i.lb = load i32, ptr %i.jj, align 8, !tbaa !79
  %i.lc = add nsw i32 %i.lb, 1
  store i32 %i.lc, ptr %i.jj, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit124.i

bb.bo:                                            ; preds = %._crit_edge.i114.i
  %i.ld = load i32, ptr %i.jk, align 8, !tbaa !80
  %i.le = add nsw i32 %i.ld, 1
  store i32 %i.le, ptr %i.jk, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit124.i

Exa9_KissatAddClause.exit124.i:                   ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.lf = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.lg = tail call i32 @kissat_is_inconsistent(ptr noundef %i.lf) #19
  %.not13.i117.not.i = icmp eq i32 %i.lg, 0
  br i1 %.not13.i117.not.i, label %.critedge.i57, label %bb.bp

bb.bp:                                            ; preds = %Exa9_KissatAddClause.exit124.i
  %i.lh = trunc nsw i64 %indvars.iv.next228.i to i32
  store i32 %i.lh, ptr %i.jb, align 4, !tbaa !75
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  tail call fastcc void @Vec_IntFree(ptr noundef nonnull %i.ja)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %Exa9_ManAddOneHotSeq.exit

.critedge.i57:                                    ; preds = %Exa9_KissatAddClause.exit124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.ko, label %.lr.ph169.i.preheader, label %._crit_edge175.i

.lr.ph169.i.preheader:                            ; preds = %.critedge.i57
  %sext = sext i32 %smin.i55 to i64               ; 2 uses
  br label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %.lr.ph169.i.preheader, %.critedge99.i
  %indvars.iv211.i = phi i64 [ %indvars.iv.next212.i, %.critedge99.i ], [ %indvars.iv204.i, %.lr.ph169.i.preheader ] ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv211.i
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !81 ; 2 uses
  %i.lk = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.ll = ashr i32 %i.lj, 1                       ; 2 uses
  %i.lm = and i32 %i.lj, 1
  %.not.i.i127.not.i = icmp eq i32 %i.lm, 0
  %i.ln = sub nsw i32 0, %i.ll
  %i.lo = select i1 %.not.i.i127.not.i, i32 %i.ln, i32 %i.ll
  tail call void @kissat_add(ptr noundef %i.lk, i32 noundef %i.lo) #19
  %i.lp = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.lp, i32 noundef %i.jz) #19
  %i.lq = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.lq, i32 noundef 0) #19
  %i.lr = load i32, ptr %i.im, align 4, !tbaa !71
  %.not.i131.i = icmp eq i32 %i.lr, 0
  br i1 %.not.i131.i, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph169.i
  %i.ls = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i132.i = icmp eq i32 %i.ls, 0
  br i1 %.not12.i132.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lt = load i32, ptr %i.ji, align 4, !tbaa !78
  %i.lu = add nsw i32 %i.lt, 1
  store i32 %i.lu, ptr %i.ji, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit134.i

bb.bs:                                            ; preds = %bb.bq
  %i.lv = load i32, ptr %i.jj, align 8, !tbaa !79
  %i.lw = add nsw i32 %i.lv, 1
  store i32 %i.lw, ptr %i.jj, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit134.i

bb.bt:                                            ; preds = %.lr.ph169.i
  %i.lx = load i32, ptr %i.jk, align 8, !tbaa !80
  %i.ly = add nsw i32 %i.lx, 1
  store i32 %i.ly, ptr %i.jk, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit134.i

Exa9_KissatAddClause.exit134.i:                   ; preds = %bb.bt, %bb.bs, %bb.br
  %i.lz = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.ma = tail call i32 @kissat_is_inconsistent(ptr noundef %i.lz) #19
  %.not13.i133.not.i = icmp eq i32 %i.ma, 0
  br i1 %.not13.i133.not.i, label %.critedge99.i, label %bb.bu

bb.bu:                                            ; preds = %Exa9_KissatAddClause.exit134.i
  %i.mb = trunc nsw i64 %indvars.iv.next228.i to i32
  store i32 %i.mb, ptr %i.jb, align 4, !tbaa !75
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  %.not.i135.i = icmp eq ptr %storemerge189.i, null
  br i1 %.not.i135.i, label %Vec_IntFree.exit136.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @free(ptr noundef nonnull %storemerge189.i) #19
  br label %Vec_IntFree.exit136.i

Vec_IntFree.exit136.i:                            ; preds = %bb.bv, %bb.bu
  tail call void @free(ptr noundef nonnull %i.ja) #19
  br label %Exa9_ManAddOneHotSeq.exit

.critedge99.i:                                    ; preds = %Exa9_KissatAddClause.exit134.i
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %3 = icmp slt i64 %indvars.iv.next212.i, %sext
  br i1 %3, label %.lr.ph169.i, label %.lr.ph174.i.preheader, !llvm.loop !133

.lr.ph174.i.preheader:                            ; preds = %.critedge99.i
  %indvars.iv.next225.i82 = or disjoint i64 %indvars.iv204.i, 1 ; 2 uses
  %i.mc = trunc nuw i64 %indvars.iv.next225.i82 to i32
  %i.md = icmp sgt i32 %smin.i55, %i.mc
  br i1 %i.md, label %.lr.ph172.i, label %._crit_edge175.i

.loopexit.i60:                                    ; preds = %.critedge101.i
  %indvars.iv.next225.i = add nuw nsw i64 %indvars.iv.next225.i85, 1 ; 2 uses
  %4 = icmp slt i64 %indvars.iv.next225.i, %sext
  br i1 %4, label %.lr.ph172.i, label %._crit_edge175.i

.lr.ph172.i:                                      ; preds = %.lr.ph174.i.preheader, %.loopexit.i60
  %indvars.iv.next225.i85 = phi i64 [ %indvars.iv.next225.i, %.loopexit.i60 ], [ %indvars.iv.next225.i82, %.lr.ph174.i.preheader ] ; 3 uses
  %indvars.iv224.i83 = phi i64 [ %indvars.iv.next225.i85, %.loopexit.i60 ], [ %indvars.iv204.i, %.lr.ph174.i.preheader ]
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv224.i83
  br label %._crit_edge.i142.i

._crit_edge.i142.i:                               ; preds = %.critedge101.i, %.lr.ph172.i
  %indvars.iv218.i = phi i64 [ %indvars.iv.next225.i85, %.lr.ph172.i ], [ %indvars.iv.next219.i, %.critedge101.i ] ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !81 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv218.i
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !81 ; 2 uses
  %i.mi = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.mj = ashr i32 %i.mf, 1                       ; 2 uses
  %i.mk = and i32 %i.mf, 1
  %.not.i.i139.not.i = icmp eq i32 %i.mk, 0
  %i.ml = sub nsw i32 0, %i.mj
  %i.mm = select i1 %.not.i.i139.not.i, i32 %i.ml, i32 %i.mj
  tail call void @kissat_add(ptr noundef %i.mi, i32 noundef %i.mm) #19
  %i.mn = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.mo = ashr i32 %i.mh, 1                       ; 2 uses
  %i.mp = and i32 %i.mh, 1
  %.not.i.i139.1.not.i = icmp eq i32 %i.mp, 0
  %i.mq = sub nsw i32 0, %i.mo
  %i.mr = select i1 %.not.i.i139.1.not.i, i32 %i.mq, i32 %i.mo
  tail call void @kissat_add(ptr noundef %i.mn, i32 noundef %i.mr) #19
  %i.ms = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.ms, i32 noundef 0) #19
  %i.mt = load i32, ptr %i.im, align 4, !tbaa !71
  %.not.i143.i = icmp eq i32 %i.mt, 0
  br i1 %.not.i143.i, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i142.i
  %i.mu = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i144.i = icmp eq i32 %i.mu, 0
  br i1 %.not12.i144.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mv = load i32, ptr %i.ji, align 4, !tbaa !78
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.ji, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit146.i

bb.by:                                            ; preds = %bb.bw
  %i.mx = load i32, ptr %i.jj, align 8, !tbaa !79
  %i.my = add nsw i32 %i.mx, 1
  store i32 %i.my, ptr %i.jj, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit146.i

bb.bz:                                            ; preds = %._crit_edge.i142.i
  %i.mz = load i32, ptr %i.jk, align 8, !tbaa !80
  %i.na = add nsw i32 %i.mz, 1
  store i32 %i.na, ptr %i.jk, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit146.i

Exa9_KissatAddClause.exit146.i:                   ; preds = %bb.bz, %bb.by, %bb.bx
  %i.nb = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.nc = tail call i32 @kissat_is_inconsistent(ptr noundef %i.nb) #19
  %.not13.i145.not.i = icmp eq i32 %i.nc, 0
  br i1 %.not13.i145.not.i, label %.critedge101.i, label %bb.ca

bb.ca:                                            ; preds = %Exa9_KissatAddClause.exit146.i
  %i.nd = trunc nsw i64 %indvars.iv.next228.i to i32
  store i32 %i.nd, ptr %i.jb, align 4, !tbaa !75
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  %.not.i147.i = icmp eq ptr %storemerge189.i, null
  br i1 %.not.i147.i, label %Vec_IntFree.exit148.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @free(ptr noundef nonnull %storemerge189.i) #19
  br label %Vec_IntFree.exit148.i

Vec_IntFree.exit148.i:                            ; preds = %bb.cb, %bb.ca
  tail call void @free(ptr noundef nonnull %i.ja) #19
  br label %Exa9_ManAddOneHotSeq.exit

.critedge101.i:                                   ; preds = %Exa9_KissatAddClause.exit146.i
  %indvars.iv.next219.i = add nuw i64 %indvars.iv218.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next219.i to i32
  %exitcond = icmp eq i32 %smin105, %lftr.wideiv
  br i1 %exitcond, label %.loopexit.i60, label %._crit_edge.i142.i, !llvm.loop !134

._crit_edge175.i:                                 ; preds = %.loopexit.i60, %.lr.ph174.i.preheader, %.critedge.i57
  %indvars.iv.next205.i = add nuw nsw i64 %indvars.iv204.i, 4
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 4
  %indvars.iv.next222.i = add nuw nsw i32 %indvars.iv221.i, 4
  %exitcond232.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count.i54
  %indvars.iv.next103 = add i32 %indvars.iv102, -4
  br i1 %exitcond232.not.i, label %.lr.ph5.i.i, label %bb.bb, !llvm.loop !135

.lr.ph5.i.i:                                      ; preds = %._crit_edge175.i
  store i32 %i.jf, ptr %i.jb, align 4, !tbaa !75
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  br label %bb.cc

.loopexit.i.i:                                    ; preds = %bb.cd, %bb.cc
  %indvars.iv.next.i150.i = add nuw nsw i64 %indvars.iv.i149.i, 1
  %exitcond14.not.i.i = icmp eq i64 %indvars.iv.next11.i.i, %wide.trip.count.i54
  br i1 %exitcond14.not.i.i, label %Exa9_ManAddAtMostOnePair.exit.i, label %bb.cc, !llvm.loop !136

bb.cc:                                            ; preds = %.loopexit.i.i, %.lr.ph5.i.i
  %indvars.iv10.i.i = phi i64 [ 0, %.lr.ph5.i.i ], [ %indvars.iv.next11.i.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.i149.i = phi i64 [ 1, %.lr.ph5.i.i ], [ %indvars.iv.next.i150.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.next11.i.i = add nuw nsw i64 %indvars.iv10.i.i, 1 ; 3 uses
  %i.ne = icmp samesign ult i64 %indvars.iv.next11.i.i, %wide.trip.count.i54
  br i1 %i.ne, label %.lr.ph.i151.i, label %.loopexit.i.i

.lr.ph.i151.i:                                    ; preds = %bb.cc
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %storemerge189.i, i64 %indvars.iv10.i.i
  br label %._crit_edge.i.i.i

bb.cd:                                            ; preds = %Exa9_KissatAddClause.exit.i.i
  %indvars.iv.next8.i.i = add nuw nsw i64 %indvars.iv7.i.i, 1 ; 2 uses
  %exitcond.not.i153.i = icmp eq i64 %indvars.iv.next8.i.i, %wide.trip.count.i54
  br i1 %exitcond.not.i153.i, label %.loopexit.i.i, label %._crit_edge.i.i.i, !llvm.loop !137

._crit_edge.i.i.i:                                ; preds = %bb.cd, %.lr.ph.i151.i
  %indvars.iv7.i.i = phi i64 [ %indvars.iv.i149.i, %.lr.ph.i151.i ], [ %indvars.iv.next8.i.i, %bb.cd ] ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !81 ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %storemerge189.i, i64 %indvars.iv7.i.i
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !81 ; 2 uses
  %i.nj = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.nk = ashr i32 %i.ng, 1                       ; 2 uses
  %i.nl = and i32 %i.ng, 1
  %.not.i.i.not.i.i = icmp eq i32 %i.nl, 0
  %i.nm = sub nsw i32 0, %i.nk
  %i.nn = select i1 %.not.i.i.not.i.i, i32 %i.nm, i32 %i.nk
  tail call void @kissat_add(ptr noundef %i.nj, i32 noundef %i.nn) #19
  %i.no = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.np = ashr i32 %i.ni, 1                       ; 2 uses
  %i.nq = and i32 %i.ni, 1
  %.not.i.i.1.not.i.i = icmp eq i32 %i.nq, 0
  %i.nr = sub nsw i32 0, %i.np
  %i.ns = select i1 %.not.i.i.1.not.i.i, i32 %i.nr, i32 %i.np
  tail call void @kissat_add(ptr noundef %i.no, i32 noundef %i.ns) #19
  %i.nt = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.nt, i32 noundef 0) #19
  %i.nu = load i32, ptr %i.im, align 4, !tbaa !71
  %.not.i.i152.i = icmp eq i32 %i.nu, 0
  br i1 %.not.i.i152.i, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i.i.i
  %i.nv = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i.i.i = icmp eq i32 %i.nv, 0
  br i1 %.not12.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nw = load i32, ptr %i.ji, align 4, !tbaa !78
  %i.nx = add nsw i32 %i.nw, 1
  store i32 %i.nx, ptr %i.ji, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.ny = load i32, ptr %i.jj, align 8, !tbaa !79
  %i.nz = add nsw i32 %i.ny, 1
  store i32 %i.nz, ptr %i.jj, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit.i.i

bb.ch:                                            ; preds = %._crit_edge.i.i.i
  %i.oa = load i32, ptr %i.jk, align 8, !tbaa !80
  %i.ob = add nsw i32 %i.oa, 1
  store i32 %i.ob, ptr %i.jk, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit.i.i

Exa9_KissatAddClause.exit.i.i:                    ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.oc = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.od = tail call i32 @kissat_is_inconsistent(ptr noundef %i.oc) #19
  %.not13.i.not.i.i = icmp eq i32 %i.od, 0
  br i1 %.not13.i.not.i.i, label %bb.cd, label %Exa9_ManAddAtMostOnePair.exit.thread.i

Exa9_ManAddAtMostOnePair.exit.i:                  ; preds = %.loopexit.i.i
  %.not.i154.i = icmp eq ptr %storemerge189.i, null
  br i1 %.not.i154.i, label %Vec_IntFree.exit155.i, label %Exa9_ManAddAtMostOnePair.exit.thread.i

Exa9_ManAddAtMostOnePair.exit.thread.i:           ; preds = %Exa9_KissatAddClause.exit.i.i, %Exa9_ManAddAtMostOnePair.exit.i
  %i.oe = phi i32 [ 1, %Exa9_ManAddAtMostOnePair.exit.i ], [ 0, %Exa9_KissatAddClause.exit.i.i ]
  tail call void @free(ptr noundef nonnull %storemerge189.i) #19
  br label %Vec_IntFree.exit155.i

Vec_IntFree.exit155.i:                            ; preds = %Exa9_ManAddAtMostOnePair.exit.thread.i, %Exa9_ManAddAtMostOnePair.exit.i
  %.not97162.i = phi i32 [ 1, %Exa9_ManAddAtMostOnePair.exit.i ], [ %i.oe, %Exa9_ManAddAtMostOnePair.exit.thread.i ]
  tail call void @free(ptr noundef nonnull %i.ja) #19
  br label %Exa9_ManAddOneHotSeq.exit

bb.ci:                                            ; preds = %bb.c
  %i.of = getelementptr i8, ptr %1, i64 8
  %.val23 = load ptr, ptr %i.of, align 8, !tbaa !74
  %i.og = tail call fastcc i32 @Exa9_ManAddOneHotQuad(ptr noundef nonnull %0, i32 %.val, ptr %.val23)
  br label %Exa9_ManAddOneHotSeq.exit

Exa9_ManAddOneHotSeq.exit:                        ; preds = %._crit_edge.i36, %Exa9_KissatAddClause.exit96.i, %Exa9_KissatAddClause.exit106.i, %Exa9_KissatAddClause.exit81.i, %Exa9_KissatAddClause.exit71.i, %Exa9_KissatAddClause.exit61.i, %Vec_IntFree.exit155.i, %Vec_IntFree.exit148.i, %Vec_IntFree.exit136.i, %bb.bp, %Vec_IntFree.exit.i, %Exa9_KissatAddClause.exit.i51, %Exa9_KissatAddClause.exit.i33, %Exa9_KissatAddClause.exit91.i, %Exa9_KissatAddClause.exit51.i, %Exa9_KissatAddClause.exit.i, %bb.ci, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.og, %bb.ci ], [ 0, %bb.bp ], [ 0, %Exa9_KissatAddClause.exit81.i ], [ 0, %Exa9_KissatAddClause.exit.i ], [ %i.en, %Exa9_KissatAddClause.exit91.i ], [ %.not97162.i, %Vec_IntFree.exit155.i ], [ 0, %Exa9_KissatAddClause.exit51.i ], [ 0, %Vec_IntFree.exit136.i ], [ 0, %Exa9_KissatAddClause.exit96.i ], [ 0, %Exa9_KissatAddClause.exit.i33 ], [ 0, %Exa9_KissatAddClause.exit106.i ], [ %i.jl, %Vec_IntFree.exit.i ], [ 0, %Exa9_KissatAddClause.exit.i51 ], [ 0, %Vec_IntFree.exit148.i ], [ 0, %Exa9_KissatAddClause.exit61.i ], [ 0, %Exa9_KissatAddClause.exit71.i ], [ 1, %._crit_edge.i36 ]
  store i32 %i.c, ptr %i.b, align 8, !tbaa !77
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Exa9_ManAddOneHotQuad(ptr nofree noundef captures(none) %0, i32 %.4.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %.4.val, 1                  ; 2 uses
  br i1 %i.a, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count.i = zext nneg i32 %.4.val to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !81   ; 2 uses
  %i.f = ashr i32 %i.e, 1                         ; 2 uses
  %i.g = and i32 %i.e, 1
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.h = sub nsw i32 0, %i.f
  %i.i = select i1 %.not.i.i, i32 %i.f, i32 %i.h
  tail call void @kissat_add(ptr noundef %i.c, i32 noundef %i.i) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !88

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.k, i32 noundef 0) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !71
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !77
  %.not12.i = icmp eq i32 %i.o, 0
  br i1 %.not12.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !78
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !79
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !80
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit

Exa9_KissatAddClause.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.z = tail call i32 @kissat_is_inconsistent(ptr noundef %i.y) #19
  %.not13.i.not = icmp ne i32 %i.z, 0             ; 2 uses
  %brmerge = or i1 %.not13.i.not, %i.a
  %not..not13.i.not = xor i1 %.not13.i.not, true
  %.mux = zext i1 %not..not13.i.not to i32
  br i1 %brmerge, label %.loopexit1, label %.lr.ph5

.lr.ph5:                                          ; preds = %Exa9_KissatAddClause.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = zext nneg i32 %.4.val to i64
  %wide.trip.count13 = zext nneg i32 %.4.val to i64 ; 2 uses
  br label %bb.g

.loopexit:                                        ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %.loopexit1, label %bb.g, !llvm.loop !138

bb.g:                                             ; preds = %.lr.ph5, %.loopexit
  %indvars.iv10 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next11, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 3 uses
end_hunk_0
