Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTruth?download=true
inline.NumInlined: 491
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Vec_MemHashInsert:bb.a
  %.0.lcssa.i31 = phi ptr [ %i.gj, %Vec_MemHashKey.exit.i ], [ %i.hq, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !85 ; 6 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.ht, align 4, !tbaa !42 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i31, align 4, !tbaa !39
  %i.hu = load i32, ptr %i.hs, align 8, !tbaa !43
  %i.hv = icmp eq i32 %.val14, %i.hu
  br i1 %i.hv, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.hw = icmp slt i32 %.val14, 16
  br i1 %i.hw, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hy, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hy, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ia = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.ib = phi ptr [ %i.hz, %bb.y ], [ %i.ia, %bb.z ]
  store ptr %i.ib, ptr %i.hx, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.ic = icmp samesign ult i32 %.val14, 1073741823
  %i.id = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.ic, i32 %i.id, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !38 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.if, null
  %i.ig = zext nneg i32 %spec.select.i to i64
  %i.ih = shl nuw nsw i64 %i.ig, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ii = tail call ptr @realloc(ptr noundef nonnull %i.if, i64 noundef %i.ih) #26
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ih) #25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ik = phi ptr [ %i.ii, %bb.ac ], [ %i.ij, %bb.ad ]
  store ptr %i.ik, ptr %i.ie, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.hs, align 8, !tbaa !43
  %.pre = load i32, ptr %i.ht, align 4, !tbaa !42
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.il = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !38
  %i.io = add nsw i32 %i.il, 1
  store i32 %i.io, ptr %i.ht, align 4, !tbaa !42
  %i.ip = sext i32 %i.il to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.ip
  store i32 -1, ptr %i.iq, align 4, !tbaa !39
  %i.ir = load i32, ptr %i.a, align 4, !tbaa !86  ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !81 ; 3 uses
  %i.iu = ashr i32 %i.ir, %i.it                   ; 7 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !83 ; 3 uses
  %i.ix = icmp slt i32 %i.iw, %i.iu
  br i1 %i.ix, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !180 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.iu, %i.iz
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !87 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.jb, null
  %.not38.i.i = icmp eq i32 %i.iz, 0
  %i.jc = shl nsw i32 %i.iz, 1
  %i.jd = add nsw i32 %i.iu, 32
  %i.je = select i1 %.not38.i.i, i32 %i.jd, i32 %i.jc ; 2 uses
  store i32 %i.je, ptr %i.iy, align 8, !tbaa !180
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jh = tail call ptr @realloc(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #26
  %.pre.pre.i.i = load i32, ptr %i.iv, align 4, !tbaa !83
  %.pre.pre.pre.pre.i = load i32, ptr %i.is, align 8, !tbaa !81
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ji = tail call noalias ptr @malloc(i64 noundef %i.jg) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.it, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.iw, %bb.ai ]
  %i.jj = phi ptr [ %i.jh, %bb.ah ], [ %i.ji, %bb.ai ]
  store ptr %i.jj, ptr %i.ja, align 8, !tbaa !87
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.it, %bb.af ] ; 2 uses
  %i.jk = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.iw, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.jk, %i.iu
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i24, label %._crit_edge.i.i

.lr.ph.i.i24:                                     ; preds = %bb.ak
  %i.jl = load i32, ptr %0, align 8, !tbaa !80
  %i.jm = shl i32 %i.jl, %.pre.pre.i
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !87
  %i.jr = sext i32 %i.jk to i64
  %wide.trip.count.i.i25 = sext i32 %i.iu to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i24
  %indvars.iv.i.i26 = phi i64 [ %i.jr, %.lr.ph.i.i24 ], [ %indvars.iv.next.i.i27, %bb.al ]
  %indvars.iv.next.i.i27 = add nsw i64 %indvars.iv.i.i26, 1 ; 3 uses
  %i.js = tail call noalias ptr @malloc(i64 noundef %i.jo) #25
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %indvars.iv.next.i.i27
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !88
  %exitcond.not.i.i28 = icmp eq i64 %indvars.iv.next.i.i27, %wide.trip.count.i.i25
  br i1 %exitcond.not.i.i28, label %._crit_edge.i.i, label %bb.al, !llvm.loop !179

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !83
  %.pre.i = ashr i32 %i.ir, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i23 = phi i32 [ %i.iu, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.ju = add nsw i32 %i.ir, 1
  store i32 %i.ju, ptr %i.a, align 4, !tbaa !86
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !87
  %i.jx = sext i32 %.pre-phi.i23 to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !88
  %i.ka = load i32, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !82
  %i.kd = and i32 %i.kc, %i.ir
  %i.ke = mul nsw i32 %i.kd, %i.ka
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kf
  %i.kh = sext i32 %i.ka to i64
  %i.ki = shl nsw i64 %i.kh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kg, ptr readonly align 8 %1, i64 %i.ki, i1 false)
  %i.kj = load ptr, ptr %i.hr, align 8, !tbaa !85
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %.val = load i32, ptr %i.kk, align 4, !tbaa !42
  %i.kl = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.kl, %Vec_MemPush.exit ], [ %i.gk, %.lr.ph.i18 ], [ %i.hp, %bb.u ]
  ret i32 %.0
}

declare ptr @Gia_ManDupCones(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Gia_ManNodeFunctionProfile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 3 uses
  %i.b = alloca [64 x i64], align 16              ; 3 uses
  %i.c = alloca [64 x i64], align 16              ; 5 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !42
  store i32 100, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #25
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !38
  %i.i = icmp slt i32 %1, 7
  %i.j = add nsw i32 %1, -6
  %i.k = shl nuw i32 1, %i.j
  %i.l = select i1 %i.i, i32 1, i32 %i.k          ; 4 uses
  %i.m = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #27 ; 12 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i32 12, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  store i32 4095, ptr %i.o, align 4, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  store i32 -1, ptr %i.p, align 4, !tbaa !83
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.a
  %.012.i.i = phi i32 [ 999, %bb.a ], [ %i.q, %.critedge.i.i.backedge ] ; 3 uses
  %i.q = add i32 %.012.i.i, 1                     ; 7 uses
  %i.r = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.q, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.t = mul nuw nsw i32 %i.s, %i.s
  %.not.i.i = icmp ugt i32 %i.t, %i.q
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !4

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.b
  %.01116.i.i = phi i32 [ %i.s, %bb.b ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.u = urem i32 %i.q, %.01116.i.i
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge.i.i.backedge, label %bb.b

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.b
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.q ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #25 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !38
  store i32 %i.q, ptr %i.x, align 4, !tbaa !42
  %.not.i3.i = icmp eq ptr %i.aa, null
  br i1 %.not.i3.i, label %Vec_MemHashAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.ac = zext nneg i32 %i.q to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aa, i8 -1, i64 %i.ad, i1 false)
  br label %Vec_MemHashAlloc.exit

Vec_MemHashAlloc.exit:                            ; preds = %Abc_PrimeCudd.exit.i, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.ae, align 8, !tbaa !84
  %i.af = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !42
  store i32 1000, ptr %i.af, align 8, !tbaa !43
  %i.ah = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !85
  %i.ak = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #25 ; 4 uses
  %i.al = tail call ptr @setPermInfoPtr(i32 noundef %1) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  tail call void @Gia_ObjComputeTruthTableStart(ptr noundef %0, i32 noundef %1)
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !61
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_MemHashAlloc.exit
  %i.aq = sext i32 %i.l to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = getelementptr i8, ptr %i.m, i64 4       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %.val51 = phi ptr [ %i.ak, %.lr.ph ], [ %.val5182, %bb.r ] ; 9 uses
  %i.at = phi ptr [ %i.ak, %.lr.ph ], [ %i.bz, %bb.r ] ; 4 uses
  %i.au = phi ptr [ %i.ak, %.lr.ph ], [ %i.ca, %bb.r ] ; 6 uses
  %i.av = phi i32 [ 100, %.lr.ph ], [ %i.cb, %bb.r ] ; 10 uses
  %i.aw = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.r ] ; 6 uses
  %.val50 = phi i32 [ 0, %.lr.ph ], [ %.val5080, %bb.r ] ; 4 uses
  %storemerge67 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %bb.r ]
  %.val = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %i.ax = sext i32 %storemerge67 to i64
  %i.ay = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.ax ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val46 = load i64, ptr %i.ay, align 4          ; 2 uses
  %i.az = and i64 %.val46, 2147483648
  %.not.i = icmp ne i64 %i.az, 0
  %i.ba = and i64 %.val46, 536870911
  %i.bb = icmp eq i64 %i.ba, 536870911
  %narrow.i.not = or i1 %.not.i, %i.bb
  br i1 %narrow.i.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = call i32 @Gia_ManSuppSize(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1) #24
  %.not45 = icmp eq i32 %i.bc, %1
  br i1 %.not45, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  call void @Gia_ManCollectCis(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef nonnull %i.e) #24
  %i.bd = call ptr @Gia_ObjComputeTruthTableCut(ptr noundef nonnull %0, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.ar, i1 false)
  call void @simpleMinimal(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.al, i32 noundef %1) #24
  %i.be = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c)
  %.val49 = load i32, ptr %i.as, align 4, !tbaa !86 ; 2 uses
  %i.bf = icmp eq i32 %.val49, %.val50
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %.val51, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !39
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !39
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.bk = icmp eq i32 %i.aw, %i.av
  br i1 %i.bk, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.bl = icmp slt i32 %i.av, 16
  br i1 %i.bl, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not9.i.i = icmp eq ptr %i.au, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.au, i64 noundef 64) #26 ; 2 uses
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.k
  %i.bn = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25 ; 2 uses
  br label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.j
  %i.bo = icmp samesign ult i32 %i.av, 1073741823
  %i.bp = shl nuw nsw i32 %i.av, 1
  %spec.select.i = select i1 %i.bo, i32 %i.bp, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.av, %spec.select.i
  br i1 %.not.i9.i, label %bb.o, label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i = icmp eq ptr %i.au, null
  %i.bq = zext nneg i32 %spec.select.i to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = call ptr @realloc(ptr noundef nonnull %i.au, i64 noundef %i.br) #26 ; 2 uses
  br label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.o
  %i.bt = call noalias ptr @malloc(i64 noundef %i.br) #25 ; 2 uses
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.l, %bb.q, %bb.p, %bb.i, %bb.n
  %.val5183 = phi ptr [ %.val51, %bb.i ], [ %.val51, %bb.n ], [ %i.bn, %bb.m ], [ %i.bm, %bb.l ], [ %i.bs, %bb.p ], [ %i.bt, %bb.q ]
  %i.bu = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.n ], [ %i.bn, %bb.m ], [ %i.bm, %bb.l ], [ %i.bs, %bb.p ], [ %i.bt, %bb.q ] ; 3 uses
  %i.bv = phi i32 [ %i.av, %bb.i ], [ %i.av, %bb.n ], [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.q ]
  %i.bw = add nsw i32 %i.aw, 1
  %i.bx = sext i32 %i.aw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bx
  store i32 1, ptr %i.by, align 4, !tbaa !39
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %Vec_IntPush.exit, %bb.e, %bb.f
  %.val5182 = phi ptr [ %.val51, %bb.h ], [ %.val5183, %Vec_IntPush.exit ], [ %.val51, %bb.e ], [ %.val51, %bb.f ] ; 2 uses
  %i.bz = phi ptr [ %.val51, %bb.h ], [ %i.bu, %Vec_IntPush.exit ], [ %i.at, %bb.e ], [ %i.at, %bb.f ]
  %i.ca = phi ptr [ %.val51, %bb.h ], [ %i.bu, %Vec_IntPush.exit ], [ %i.au, %bb.e ], [ %i.au, %bb.f ]
  %i.cb = phi i32 [ %i.av, %bb.h ], [ %i.bv, %Vec_IntPush.exit ], [ %i.av, %bb.e ], [ %i.av, %bb.f ]
  %i.cc = phi i32 [ %i.aw, %bb.h ], [ %i.bw, %Vec_IntPush.exit ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ]
  %.val5080 = phi i32 [ %.val50, %bb.h ], [ %.val49, %Vec_IntPush.exit ], [ %.val50, %bb.e ], [ %.val50, %bb.f ]
  %i.cd = load i32, ptr %i.d, align 4, !tbaa !39
  %i.ce = add nsw i32 %i.cd, 1                    ; 3 uses
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !39
  %i.cf = load i32, ptr %i.an, align 8, !tbaa !61
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.d, label %.critedge, !llvm.loop !181

.critedge:                                        ; preds = %bb.d, %bb.r
  %.val4786 = phi ptr [ %.val5182, %bb.r ], [ %.val51, %bb.d ] ; 7 uses
  %.val48.pre = load i32, ptr %i.as, align 4, !tbaa !86 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.ch = icmp sgt i32 %.val48.pre, 0
  br i1 %i.ch, label %.lr.ph70, label %._crit_edge

.lr.ph70:                                         ; preds = %.critedge
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !87 ; 2 uses
  %i.ck = load i32, ptr %i.n, align 8, !tbaa !81  ; 2 uses
  %i.cl = load i32, ptr %i.m, align 8, !tbaa !80  ; 2 uses
  %i.cm = load i32, ptr %i.o, align 4, !tbaa !82  ; 2 uses
  %i.cn = icmp samesign ugt i32 %1, 5
  %i.co = add nsw i32 %1, -2
  %i.cp = icmp slt i32 %1, 2
  %i.cq = zext nneg i32 %i.l to i64
  %.idx.i = shl nuw nsw i64 %i.cq, 3
  %notmask.i = shl nsw i32 -1, %i.co
  %i.cr = xor i32 %notmask.i, -1
  %i.cs = select i1 %i.cn, i32 15, i32 %i.cr
  %i.ct = zext nneg i32 %i.cs to i64
  br i1 %i.cp, label %Abc_TtPrintHexRev.exit.us, label %.lr.ph70.split

Abc_TtPrintHexRev.exit.us:                        ; preds = %.lr.ph70, %Abc_TtPrintHexRev.exit.us
  %storemerge4369.us = phi i32 [ %i.do, %Abc_TtPrintHexRev.exit.us ], [ 0, %.lr.ph70 ] ; 3 uses
  %i.cu = ashr i32 %storemerge4369.us, %i.ck
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !88
  %i.cy = and i32 %i.cm, %storemerge4369.us
  %i.cz = mul nsw i32 %i.cy, %i.cl
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.da
  %i.dc = sext i32 %storemerge4369.us to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %.val4786, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !39
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !90
  %i.dg = load i64, ptr %i.db, align 8, !tbaa !36
  %i.dh = trunc i64 %i.dg to i32
  %i.di = and i32 %i.dh, 15                       ; 3 uses
  %i.dj = icmp samesign ult i32 %i.di, 10
  %i.dk = or disjoint i32 %i.di, 48
  %i.dl = add nuw nsw i32 %i.di, 55
  %.0.i.i.us = select i1 %i.dj, i32 %i.dk, i32 %i.dl
  %fputc17.i.us = call i32 @fputc(i32 %.0.i.i.us, ptr %i.df) ; 0 uses
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.de) ; 0 uses
  %i.dn = load i32, ptr %i.d, align 4, !tbaa !39
  %i.do = add nsw i32 %i.dn, 1                    ; 3 uses
  store i32 %i.do, ptr %i.d, align 4, !tbaa !39
  %i.dp = icmp slt i32 %i.do, %.val48.pre
  br i1 %i.dp, label %Abc_TtPrintHexRev.exit.us, label %._crit_edge, !llvm.loop !182

.lr.ph70.split:                                   ; preds = %.lr.ph70
  %.not22.i = icmp slt i32 %i.l, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit.us72, label %.lr.ph.i

Abc_TtPrintHexRev.exit.us72:                      ; preds = %.lr.ph70.split, %Abc_TtPrintHexRev.exit.us72
  %storemerge4369.us71 = phi i32 [ %i.dv, %Abc_TtPrintHexRev.exit.us72 ], [ 0, %.lr.ph70.split ]
  %i.dq = sext i32 %storemerge4369.us71 to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.val4786, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !39
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ds) ; 0 uses
  %i.du = load i32, ptr %i.d, align 4, !tbaa !39
  %i.dv = add nsw i32 %i.du, 1                    ; 3 uses
  store i32 %i.dv, ptr %i.d, align 4, !tbaa !39
  %i.dw = icmp slt i32 %i.dv, %.val48.pre
  br i1 %i.dw, label %Abc_TtPrintHexRev.exit.us72, label %._crit_edge, !llvm.loop !182

.lr.ph.i:                                         ; preds = %.lr.ph70.split, %Abc_TtPrintHexRev.exit.loopexit
  %storemerge4369 = phi i32 [ %i.ew, %Abc_TtPrintHexRev.exit.loopexit ], [ 0, %.lr.ph70.split ] ; 3 uses
  %i.dx = ashr i32 %storemerge4369, %i.ck
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !88
  %i.eb = and i32 %i.cm, %storemerge4369
  %i.ec = mul nsw i32 %i.eb, %i.cl
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ed ; 2 uses
  %i.ef = sext i32 %storemerge4369 to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %.val4786, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !39
  %i.ei = load ptr, ptr @stdout, align 8, !tbaa !90
  %i.ej = getelementptr i8, ptr %i.ee, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.ej, i64 -8
  br label %bb.s

.loopexit.i:                                      ; preds = %bb.t
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i52 = icmp ult ptr %.015.i, %i.ee
  br i1 %.not.i52, label %Abc_TtPrintHexRev.exit.loopexit, label %bb.s, !llvm.loop !183

bb.s:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.i = phi i64 [ %i.ct, %bb.s ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.ek = load i64, ptr %.01523.i, align 8, !tbaa !36
  %i.el = shl nsw i64 %indvars.iv.i, 2
  %i.em = and i64 %i.el, 4294967292
  %i.en = lshr i64 %i.ek, %i.em
  %i.eo = trunc i64 %i.en to i32
  %i.ep = and i32 %i.eo, 15                       ; 3 uses
  %i.eq = icmp samesign ult i32 %i.ep, 10
  %i.er = or disjoint i32 %i.ep, 48
  %i.es = add nuw nsw i32 %i.ep, 55
  %.0.i18.i = select i1 %i.eq, i32 %i.er, i32 %i.es
  %fputc.i = call i32 @fputc(i32 %.0.i18.i, ptr %i.ei) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.et = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.et, label %bb.t, label %.loopexit.i, !llvm.loop !184

Abc_TtPrintHexRev.exit.loopexit:                  ; preds = %.loopexit.i
  %i.eu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.eh) ; 0 uses
  %i.ev = load i32, ptr %i.d, align 4, !tbaa !39
  %i.ew = add nsw i32 %i.ev, 1                    ; 3 uses
  store i32 %i.ew, ptr %i.d, align 4, !tbaa !39
  %i.ex = icmp slt i32 %i.ew, %.val48.pre
  br i1 %i.ex, label %.lr.ph.i, label %._crit_edge, !llvm.loop !182

._crit_edge:                                      ; preds = %Abc_TtPrintHexRev.exit.loopexit, %Abc_TtPrintHexRev.exit.us72, %Abc_TtPrintHexRev.exit.us, %Vec_MemHashAlloc.exit, %.critedge
  %i.ey = phi ptr [ %.val4786, %Abc_TtPrintHexRev.exit.us72 ], [ %i.ak, %Vec_MemHashAlloc.exit ], [ %.val4786, %Abc_TtPrintHexRev.exit.us ], [ %.val4786, %.critedge ], [ %.val4786, %Abc_TtPrintHexRev.exit.loopexit ] ; 2 uses
  call void @Gia_ObjComputeTruthTableStop(ptr noundef %0)
  %i.ez = load ptr, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  %.not.i53 = icmp eq ptr %i.ez, null
  br i1 %.not.i53, label %Vec_IntFree.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.ez) #24
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.u
  call void @free(ptr noundef nonnull %i.e) #24
  %.not.i54 = icmp eq ptr %i.ey, null
  br i1 %.not.i54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.ey) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %Vec_IntFree.exit
  %i.fa = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %Vec_IntFreeP.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !38 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i56, label %bb.y, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.fd) #24
  br label %bb.y

bb.y:                                             ; preds = %.thread.i.i, %bb.x
  call void @free(ptr noundef nonnull %i.fa) #24
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.y, %bb.w
  %i.fe = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %Vec_MemHashFree.exit, label %bb.z

bb.z:                                             ; preds = %Vec_IntFreeP.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !38 ; 2 uses
  %.not.i3.i57 = icmp eq ptr %i.fh, null
  br i1 %.not.i3.i57, label %bb.aa, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.fh) #24
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.i4.i, %bb.z
  call void @free(ptr noundef nonnull %i.fe) #24
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %Vec_IntFreeP.exit.i, %bb.aa
  %i.fi = load i32, ptr %i.p, align 4, !tbaa !83  ; 2 uses
  %.not19.i = icmp slt i32 %i.fi, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !87 ; 3 uses
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %Vec_MemHashFree.exit
  %narrow = add nuw i32 %i.fi, 1
  %i.fj = zext i32 %narrow to i64
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %bb.ac
  %indvars.iv.i59 = phi i64 [ %indvars.iv.next.i60, %bb.ac ], [ 0, %.lr.ph.i58.preheader ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.pre23.i, i64 %indvars.iv.i59 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !88 ; 2 uses
  %.not18.i = icmp eq ptr %i.fl, null
  br i1 %.not18.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i58
  call void @free(ptr noundef nonnull %i.fl) #24
  store ptr null, ptr %i.fk, align 8, !tbaa !88
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i58
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i60, %i.fj
  br i1 %exitcond.not, label %._crit_edge.thread.i, label %.lr.ph.i58, !llvm.loop !5

._crit_edge.i:                                    ; preds = %Vec_MemHashFree.exit
  %.not16.i = icmp eq ptr %.pre23.i, null
  br i1 %.not16.i, label %Vec_MemFree.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.ac, %._crit_edge.i
  call void @free(ptr noundef nonnull %.pre23.i) #24
  br label %Vec_MemFree.exit

Vec_MemFree.exit:                                 ; preds = %._crit_edge.i, %._crit_edge.thread.i
  call void @free(ptr noundef nonnull %i.m) #24
  call void @freePermInfoPtr(ptr noundef %i.al) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare ptr @setPermInfoPtr(i32 noundef) local_unnamed_addr #3

declare i32 @Gia_ManSuppSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @simpleMinimal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @freePermInfoPtr(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 22 uses
  %i.b = icmp slt i32 %1, %2
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val80 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %.val80 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %1, 1
  %i.j = sub i32 %i.h, %i.i
  %i.k = load i64, ptr %i.a, align 4              ; 2 uses
  %i.l = and i32 %i.j, 536870911
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_0
