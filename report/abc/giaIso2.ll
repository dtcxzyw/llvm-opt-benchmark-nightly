Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIso2?download=true
inline.NumInlined: 422
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Gia_Iso2ManDerivePoClasses:bb.a
  %i.id = tail call noalias ptr @malloc(i64 noundef %i.ib) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.al, %bb.ak, %bb.ah, %bb.ag
  %storemerge.i = phi ptr [ %i.hx, %bb.ah ], [ %i.hw, %bb.ag ], [ %i.ic, %bb.ak ], [ %i.id, %bb.al ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i, %bb.ak ], [ %spec.select.i.i, %bb.al ]
  store ptr %storemerge.i, ptr %i.at, align 8, !tbaa !34
  store i32 %spec.select.sink.i.i, ptr %i.aq, align 8, !tbaa !33
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.ai, %Hsh_IntManAdd.exit.i
  %i.ie = phi ptr [ %i.bv, %Hsh_IntManAdd.exit.i ], [ %i.bv, %bb.ai ], [ %storemerge.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.if = add nsw i32 %i.hs, 1
  store i32 %i.if, ptr %i.ar, align 4, !tbaa !30
  %i.ig = sext i32 %i.hs to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.ig
  store i32 %.030.i.i, ptr %i.ih, align 4, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.o, !llvm.loop !97

._crit_edge.loopexit.i:                           ; preds = %Vec_IntPush.exit.i
  %.pre59.i = load ptr, ptr %i.bi, align 8, !tbaa !34
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %Hsh_IntManStart.exit.i
  %i.ii = phi ptr [ %i.ie, %._crit_edge.loopexit.i ], [ %i.as, %Hsh_IntManStart.exit.i ] ; 6 uses
  %i.ij = phi ptr [ %.pre59.i, %._crit_edge.loopexit.i ], [ %i.bh, %Hsh_IntManStart.exit.i ] ; 2 uses
  %.not.i.i22.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i22.i, label %Vec_IntFree.exit.i.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.ij) #27
  br label %Vec_IntFree.exit.i.i

Vec_IntFree.exit.i.i:                             ; preds = %bb.am, %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.bd) #27
  %i.ik = load ptr, ptr %i.bs, align 8, !tbaa !87 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i4.i.i, label %Hsh_IntManHashArray.exit, label %bb.an

bb.an:                                            ; preds = %Vec_IntFree.exit.i.i
  tail call void @free(ptr noundef nonnull %i.ik) #27
  br label %Hsh_IntManHashArray.exit

Hsh_IntManHashArray.exit:                         ; preds = %Vec_IntFree.exit.i.i, %bb.an
  tail call void @free(ptr noundef nonnull %i.bm) #27
  tail call void @free(ptr noundef nonnull %i.au) #27
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %.not.i18 = icmp eq ptr %i.il, null
  br i1 %.not.i18, label %Vec_IntFree.exit, label %bb.ao

bb.ao:                                            ; preds = %Hsh_IntManHashArray.exit
  tail call void @free(ptr noundef nonnull %i.il) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Hsh_IntManHashArray.exit, %bb.ao
  tail call void @free(ptr noundef nonnull %i.e) #27
  %i.im = load i32, ptr %i.ar, align 4, !tbaa !30 ; 6 uses
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %Vec_IntFindMax.exit.thread.i, label %bb.ap

Vec_IntFindMax.exit.thread.i:                     ; preds = %Vec_IntFree.exit
  %i.io = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  br label %.thread.i

bb.ap:                                            ; preds = %Vec_IntFree.exit
  %i.ip = load i32, ptr %i.ii, align 4, !tbaa !36 ; 3 uses
  %i.iq = icmp sgt i32 %i.im, 1
  br i1 %i.iq, label %.lr.ph.preheader.i.i, label %Vec_IntFindMax.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ap
  %wide.trip.count.i.i = zext nneg i32 %i.im to i64 ; 2 uses
  %i.ir = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %min.iters.check = icmp ult i32 %i.im, 9
  br i1 %min.iters.check, label %.lr.ph.i.i31.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ir, -8                      ; 3 uses
  %i.is = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ip, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.iw, %vector.body ]
  %vec.phi137 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ix, %vector.body ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %index ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 20
  %wide.load = load <4 x i32>, ptr %i.iu, align 4, !tbaa !36
  %wide.load138 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !36
  %i.iw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.ix = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi137, <4 x i32> %wide.load138) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.iw, <4 x i32> %i.ix)
  %i.iz = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ir, %n.vec
  br i1 %cmp.n, label %Vec_IntFindMax.exit.i, label %.lr.ph.i.i31.preheader

.lr.ph.i.i31.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i32.ph = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %i.is, %middle.block ]
  %.015.i.i.ph = phi i32 [ %i.ip, %.lr.ph.preheader.i.i ], [ %i.iz, %middle.block ]
  br label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %.lr.ph.i.i31.preheader, %.lr.ph.i.i31
  %indvars.iv.i.i32 = phi i64 [ %indvars.iv.next.i.i34, %.lr.ph.i.i31 ], [ %indvars.iv.i.i32.ph, %.lr.ph.i.i31.preheader ] ; 2 uses
  %.015.i.i = phi i32 [ %spec.select.i.i33, %.lr.ph.i.i31 ], [ %.015.i.i.ph, %.lr.ph.i.i31.preheader ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i.i32
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !36
  %spec.select.i.i33 = tail call i32 @llvm.smax.i32(i32 %.015.i.i, i32 %i.jb) ; 2 uses
  %indvars.iv.next.i.i34 = add nuw nsw i64 %indvars.iv.i.i32, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i34, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Vec_IntFindMax.exit.i, label %.lr.ph.i.i31, !llvm.loop !101

Vec_IntFindMax.exit.i:                            ; preds = %.lr.ph.i.i31, %middle.block, %bb.ap
  %.012.i.i = phi i32 [ %i.ip, %bb.ap ], [ %i.iz, %middle.block ], [ %spec.select.i.i33, %.lr.ph.i.i31 ]
  %.012.i.fr.i = freeze i32 %.012.i.i             ; 2 uses
  %i.jc = add nsw i32 %.012.i.fr.i, 1             ; 5 uses
  %i.jd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %or.cond.i.i.i19 = icmp ult i32 %.012.i.fr.i, 7
  br i1 %or.cond.i.i.i19, label %.thread.i, label %bb.aq

.thread.i:                                        ; preds = %Vec_IntFindMax.exit.i, %Vec_IntFindMax.exit.thread.i
  %.ph.i = phi ptr [ %i.io, %Vec_IntFindMax.exit.thread.i ], [ %i.jd, %Vec_IntFindMax.exit.i ] ; 2 uses
  %.ph14.i = phi i32 [ 1, %Vec_IntFindMax.exit.thread.i ], [ %i.jc, %Vec_IntFindMax.exit.i ]
  store i32 8, ptr %.ph.i, align 8, !tbaa !102
  br label %bb.ar

bb.aq:                                            ; preds = %Vec_IntFindMax.exit.i
  store i32 %i.jc, ptr %i.jd, align 8, !tbaa !102
  %.not.i.i.i20 = icmp eq i32 %i.jc, 0
  br i1 %.not.i.i.i20, label %Vec_WecStart.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread.i
  %i.je = phi i32 [ 8, %.thread.i ], [ %i.jc, %bb.aq ]
  %i.jf = phi i32 [ %.ph14.i, %.thread.i ], [ %i.jc, %bb.aq ]
  %i.jg = phi ptr [ %.ph.i, %.thread.i ], [ %i.jd, %bb.aq ]
  %i.jh = sext i32 %i.je to i64
  %i.ji = tail call noalias ptr @calloc(i64 noundef %i.jh, i64 noundef 16) #28
  br label %Vec_WecStart.exit.i

Vec_WecStart.exit.i:                              ; preds = %bb.ar, %bb.aq
  %i.jj = phi i32 [ %i.jf, %bb.ar ], [ 0, %bb.aq ]
  %i.jk = phi ptr [ %i.jg, %bb.ar ], [ %i.jd, %bb.aq ] ; 5 uses
  %i.jl = phi ptr [ %i.ji, %bb.ar ], [ null, %bb.aq ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 4 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 4 uses
  store ptr %i.jl, ptr %i.jn, align 8, !tbaa !104
  store i32 %i.jj, ptr %i.jm, align 4, !tbaa !105
  %i.jo = icmp sgt i32 %i.im, 0
  br i1 %i.jo, label %.lr.ph.i21.preheader, label %Vec_WecCreateClasses.exit

.lr.ph.i21.preheader:                             ; preds = %Vec_WecStart.exit.i
  %i.jp = zext nneg i32 %i.im to i64
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %Vec_WecPush.exit.i
  %indvars.iv.i22 = phi i64 [ %indvars.iv.next.i24, %Vec_WecPush.exit.i ], [ 0, %.lr.ph.i21.preheader ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i22
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !36 ; 3 uses
  %i.js = load i32, ptr %i.jm, align 4, !tbaa !105 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.js, %i.jr
  br i1 %.not.i.i, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i21
  %i.jt = add nsw i32 %i.jr, 1                    ; 2 uses
  %i.ju = shl nsw i32 %i.js, 1
  %i.jv = tail call noundef i32 @llvm.smax.i32(i32 %i.ju, i32 %i.jt) ; 4 uses
  %i.jw = load i32, ptr %i.jk, align 8, !tbaa !102 ; 3 uses
  %.not.i.i10.i = icmp slt i32 %i.jw, %i.jv
  br i1 %.not.i.i10.i, label %bb.at, label %Vec_WecGrow.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.jx = load ptr, ptr %i.jn, align 8, !tbaa !104 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.jx, null
  %i.jy = sext i32 %i.jv to i64
  %i.jz = shl nsw i64 %i.jy, 4                    ; 2 uses
  br i1 %.not13.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ka = tail call ptr @realloc(ptr noundef nonnull %i.jx, i64 noundef %i.jz) #26
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.kb = tail call noalias ptr @malloc(i64 noundef %i.jz) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.kc = phi ptr [ %i.ka, %bb.au ], [ %i.kb, %bb.av ] ; 2 uses
  store ptr %i.kc, ptr %i.jn, align 8, !tbaa !104
  %i.kd = sext i32 %i.jw to i64
  %i.ke = getelementptr inbounds [16 x i8], ptr %i.kc, i64 %i.kd
  %i.kf = sub nsw i32 %i.jv, %i.jw
  %i.kg = sext i32 %i.kf to i64
  %i.kh = shl nsw i64 %i.kg, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ke, i8 0, i64 %i.kh, i1 false)
  store i32 %i.jv, ptr %i.jk, align 8, !tbaa !102
  br label %Vec_WecGrow.exit.i.i

Vec_WecGrow.exit.i.i:                             ; preds = %bb.aw, %bb.as
  store i32 %i.jt, ptr %i.jm, align 4, !tbaa !105
  br label %bb.ax

bb.ax:                                            ; preds = %Vec_WecGrow.exit.i.i, %.lr.ph.i21
  %.val.i.i23 = load ptr, ptr %i.jn, align 8, !tbaa !104
  %i.ki = sext i32 %i.jr to i64
  %i.kj = getelementptr inbounds [16 x i8], ptr %.val.i.i23, i64 %i.ki ; 6 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4 ; 3 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !30 ; 7 uses
  %i.km = load i32, ptr %i.kj, align 8, !tbaa !33
  %i.kn = icmp eq i32 %i.kl, %i.km
  br i1 %i.kn, label %bb.ay, label %Vec_WecPush.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.ko = icmp slt i32 %i.kl, 16
  br i1 %i.ko, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !34 ; 2 uses
  %.not9.i.i.i.i30 = icmp eq ptr %i.kq, null
  br i1 %.not9.i.i.i.i30, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kr = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.kq, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ks = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %bb.bb, %bb.ba
  %i.kt = phi ptr [ %i.kr, %bb.ba ], [ %i.ks, %bb.bb ]
  store ptr %i.kt, ptr %i.kp, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.bc:                                            ; preds = %bb.ay
  %i.ku = icmp samesign ult i32 %i.kl, 1073741823
  %i.kv = shl nuw nsw i32 %i.kl, 1
  %spec.select.i.i.i26 = select i1 %i.ku, i32 %i.kv, i32 2147483647 ; 3 uses
  %.not.i9.i.i.i27 = icmp samesign ult i32 %i.kl, %spec.select.i.i.i26
  br i1 %.not.i9.i.i.i27, label %bb.bd, label %Vec_WecPush.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !34 ; 2 uses
  %.not9.i10.i.i.i28 = icmp eq ptr %i.kx, null
  %i.ky = zext nneg i32 %spec.select.i.i.i26 to i64
  %i.kz = shl nuw nsw i64 %i.ky, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i28, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.la = tail call ptr @realloc(ptr noundef nonnull %i.kx, i64 noundef %i.kz) #26
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.lb = tail call noalias ptr @malloc(i64 noundef %i.kz) #25
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.lc = phi ptr [ %i.la, %bb.be ], [ %i.lb, %bb.bf ]
  store ptr %i.lc, ptr %i.kw, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.bg, %Vec_IntGrow.exit.i.i.i
  %spec.select.sink.i.i.i29 = phi i32 [ %spec.select.i.i.i26, %bb.bg ], [ 16, %Vec_IntGrow.exit.i.i.i ]
  store i32 %spec.select.sink.i.i.i29, ptr %i.kj, align 8, !tbaa !33
  %.pre.i.i = load i32, ptr %i.kk, align 4, !tbaa !30
  br label %Vec_WecPush.exit.i

Vec_WecPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.bc, %bb.ax
  %i.ld = phi i32 [ %i.kl, %bb.ax ], [ %i.kl, %bb.bc ], [ %.pre.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !34
  %i.lg = add nsw i32 %i.ld, 1
  store i32 %i.lg, ptr %i.kk, align 4, !tbaa !30
  %i.lh = sext i32 %i.ld to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lh
  %i.lj = trunc nuw nsw i64 %indvars.iv.i22 to i32
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !36
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i24, %i.jp
  br i1 %exitcond.not, label %Vec_WecCreateClasses.exit.thread, label %.lr.ph.i21, !llvm.loop !106

Vec_WecCreateClasses.exit:                        ; preds = %Vec_WecStart.exit.i
  %.not.i35 = icmp eq ptr %i.ii, null
  br i1 %.not.i35, label %Vec_IntFree.exit36, label %Vec_WecCreateClasses.exit.thread

Vec_WecCreateClasses.exit.thread:                 ; preds = %Vec_WecPush.exit.i, %Vec_WecCreateClasses.exit
  tail call void @free(ptr noundef nonnull %i.ii) #27
  br label %Vec_IntFree.exit36

Vec_IntFree.exit36:                               ; preds = %Vec_WecCreateClasses.exit, %Vec_WecCreateClasses.exit.thread
  tail call void @free(ptr noundef nonnull %i.aq) #27
  ret ptr %i.jk
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_Iso2ManCollectOrder2_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 176
  %.val39 = load i32, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 624
  %.val40 = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %.val40, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %.not = icmp eq i32 %i.e, %.val39
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.val39, ptr %i.d, align 4, !tbaa !36
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.c ; 5 uses
  %.val36 = load i64, ptr %i.g, align 4           ; 5 uses
  %i.h = and i64 %.val36, 2147483648              ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = and i64 %.val36, 536870911               ; 2 uses
  %i.j = icmp ne i64 %i.i, 536870911              ; 2 uses
  %narrow.i = and i1 %.not.i, %i.j
  br i1 %narrow.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !39
  %i.o = lshr i64 %.val36, 32                     ; 2 uses
  %i.p = and i64 %i.o, 536870911
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !39
  %.not35 = icmp ugt i32 %i.n, %i.t
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = trunc i64 %.val36 to i32
  %i.v = and i32 %i.u, 536870911
  %i.w = sub nsw i32 %1, %i.v
  tail call void @Gia_Iso2ManCollectOrder2_rec(ptr noundef nonnull %0, i32 noundef %i.w, ptr noundef %2)
  %.val47 = load i64, ptr %i.g, align 4
  %i.x = lshr i64 %.val47, 32
  br label %Gia_ObjIsPi.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.y = trunc nuw i64 %i.o to i32
  %i.z = and i32 %i.y, 536870911
  %i.aa = sub nsw i32 %1, %i.z
  tail call void @Gia_Iso2ManCollectOrder2_rec(ptr noundef nonnull %0, i32 noundef %i.aa, ptr noundef %2)
  %.val44 = load i64, ptr %i.g, align 4
  br label %Gia_ObjIsPi.exit.sink.split

bb.f:                                             ; preds = %bb.b
  %.not.i48 = icmp ne i64 %i.h, 0
  %narrow.i49 = and i1 %.not.i48, %i.j
  br i1 %narrow.i49, label %Gia_ObjIsPi.exit.sink.split, label %Gia_ObjIsPi.exit

Gia_ObjIsPi.exit.sink.split:                      ; preds = %bb.f, %bb.e, %bb.d
  %.val36.sink = phi i64 [ %.val44, %bb.e ], [ %i.x, %bb.d ], [ %.val36, %bb.f ]
  %i.ab = trunc i64 %.val36.sink to i32
  %i.ac = and i32 %i.ab, 536870911
  %i.ad = sub nsw i32 %1, %i.ac
  tail call void @Gia_Iso2ManCollectOrder2_rec(ptr noundef nonnull %0, i32 noundef %i.ad, ptr noundef %2)
  br label %Gia_ObjIsPi.exit

Gia_ObjIsPi.exit:                                 ; preds = %Gia_ObjIsPi.exit.sink.split, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !30 ; 7 uses
  %i.ag = load i32, ptr %2, align 8, !tbaa !33
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %Gia_ObjIsPi.exit
  %i.ai = icmp slt i32 %i.af, 16
  br i1 %i.ai, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ak, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.j:                                             ; preds = %bb.h
  %i.am = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.j, %bb.i
  %i.an = phi ptr [ %i.al, %bb.i ], [ %i.am, %bb.j ]
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !34
end_hunk_0
begin_hunk_1_@Gia_ManIsoReduce2:bb.a
  %.1.i80.1 = add nuw nsw i32 %.1.i80, %i.ds      ; 3 uses
  %indvars.iv.next.i81.1 = add nuw nsw i64 %indvars.iv.i75, 2 ; 2 uses
  %niter141.next.1 = add i64 %niter141, 2         ; 2 uses
  %niter141.ncmp.1 = icmp eq i64 %niter141.next.1, %unroll_iter140
  br i1 %niter141.ncmp.1, label %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa, label %bb.z, !llvm.loop !123

Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa: ; preds = %bb.z
  %lcmp.mod136.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod136.not, label %Vec_WecCountNonTrivial.exit82, label %.epil.preheader132

.epil.preheader132:                               ; preds = %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa, %.lr.ph.i72
  %.3.epil.init = phi i32 [ 0, %.lr.ph.i72 ], [ %.4.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ]
  %.epil.init135 = phi i32 [ 0, %.lr.ph.i72 ], [ %i.dr, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ]
  %indvars.iv.i75.epil.init = phi i64 [ 0, %.lr.ph.i72 ], [ %indvars.iv.next.i81.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ]
  %.016.i76.epil.init = phi i32 [ 0, %.lr.ph.i72 ], [ %.1.i80.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i32 %.val1314.i70 to i1
  call void @llvm.assume(i1 %lcmp.mod139)
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.val12.i73, i64 %indvars.iv.i75.epil.init
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  %.val11.i77.epil = load i32, ptr %i.du, align 4, !tbaa !30 ; 2 uses
  %i.dv = icmp sgt i32 %.val11.i77.epil, 1        ; 2 uses
  %i.dw = add nuw nsw i32 %.val11.i77.epil, %.epil.init135
  %.4.epil = select i1 %i.dv, i32 %i.dw, i32 %.3.epil.init
  %i.dx = zext i1 %i.dv to i32
  %.1.i80.epil = add nuw nsw i32 %.016.i76.epil.init, %i.dx
  br label %Vec_WecCountNonTrivial.exit82

Vec_WecCountNonTrivial.exit82:                    ; preds = %.epil.preheader132, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa, %Vec_IntFree.exit
  %.5 = phi i32 [ 0, %Vec_IntFree.exit ], [ %.4.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ], [ %.4.epil, %.epil.preheader132 ]
  %.0.lcssa.i71 = phi i32 [ 0, %Vec_IntFree.exit ], [ %.1.i80.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ], [ %.1.i80.epil, %.epil.preheader132 ]
  %.val44 = load i32, ptr %i.ag, align 8, !tbaa !42
  %.val45 = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.dy = getelementptr i8, ptr %.val45, i64 4
  %.val45.val = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.dz = sub nsw i32 %.val45.val, %.val44
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.dz, i32 noundef %.val1314.i70, i32 noundef %.5, i32 noundef %.0.lcssa.i71) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.eb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #27
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %Abc_Clock.exit84, label %bb.aa

bb.aa:                                            ; preds = %Vec_WecCountNonTrivial.exit82
  %i.ed = load i64, ptr %8, align 8, !tbaa !119
  %i.ee = mul nsw i64 %i.ed, 1000000
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !121
  %i.eh = sdiv i64 %i.eg, 1000
  %i.ei = add nsw i64 %i.eh, %i.ee
  br label %Abc_Clock.exit84

Abc_Clock.exit84:                                 ; preds = %Vec_WecCountNonTrivial.exit82, %bb.aa
  %.0.i83 = phi i64 [ %i.ei, %bb.aa ], [ -1, %Vec_WecCountNonTrivial.exit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ej = sub nsw i64 %.0.i83, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8)
  %i.ek = sitofp i64 %i.ej to double
  %i.el = fdiv double %i.ek, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.12, double noundef %i.el)
  %.not41 = icmp eq i32 %6, 0
  br i1 %.not41, label %Vec_WecPrint.exit, label %bb.ab

bb.ab:                                            ; preds = %Abc_Clock.exit84
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.val1922.i = load i32, ptr %i.bn, align 4, !tbaa !105 ; 2 uses
  %i.em = icmp sgt i32 %.val1922.i, 0
  br i1 %i.em, label %.lr.ph24.i, label %Vec_WecPrint.exit

.lr.ph24.i:                                       ; preds = %bb.ab, %bb.ae
  %.val1929.i = phi i32 [ %.val19.i, %bb.ae ], [ %.val1922.i, %bb.ab ]
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %bb.ae ], [ 0, %bb.ab ] ; 3 uses
  %.val18.i = load ptr, ptr %i.bo, align 8, !tbaa !104
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.val18.i, i64 %indvars.iv26.i ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 4      ; 3 uses
  %.val16.i = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.ep = icmp eq i32 %.val16.i, 1
  br i1 %i.ep, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph24.i
  %i.eq = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.eq) ; 0 uses
  %.val20.i = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.es = icmp sgt i32 %.val20.i, 0
  br i1 %i.es, label %.lr.ph.i85, label %.critedge2.i

.lr.ph.i85:                                       ; preds = %bb.ac
  %i.et = getelementptr i8, ptr %i.en, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ 0, %.lr.ph.i85 ], [ %indvars.iv.next.i87, %bb.ad ] ; 2 uses
  %.val17.i = load ptr, ptr %i.et, align 8, !tbaa !34
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv.i86
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !36
  %i.ew = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ev) ; 0 uses
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %.val.i88 = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.ex = sext i32 %.val.i88 to i64
  %i.ey = icmp slt i64 %indvars.iv.next.i87, %i.ex
  br i1 %i.ey, label %bb.ad, label %.critedge2.i, !llvm.loop !126

.critedge2.i:                                     ; preds = %bb.ad, %bb.ac
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %.val19.pre.i = load i32, ptr %i.bn, align 4, !tbaa !105
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge2.i, %.lr.ph24.i
  %.val19.i = phi i32 [ %.val1929.i, %.lr.ph24.i ], [ %.val19.pre.i, %.critedge2.i ] ; 2 uses
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.ez = sext i32 %.val19.i to i64
  %i.fa = icmp slt i64 %indvars.iv.next27.i, %i.ez
  br i1 %i.fa, label %.lr.ph24.i, label %Vec_WecPrint.exit, !llvm.loop !127

Vec_WecPrint.exit:                                ; preds = %bb.ae, %bb.ab, %Abc_Clock.exit84
  %.not42 = icmp eq ptr %2, null
  br i1 %.not42, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %Vec_WecPrint.exit
  store ptr null, ptr %2, align 8, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %Vec_WecPrint.exit
  %.not43 = icmp eq ptr %1, null
  br i1 %.not43, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val9.i89 = load i32, ptr %i.bn, align 4, !tbaa !105 ; 3 uses
  %i.fb = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.fc = add i32 %.val9.i89, -1
  %or.cond.i.i90 = icmp ult i32 %i.fc, 7
  %spec.store.select.i.i91 = select i1 %or.cond.i.i90, i32 8, i32 %.val9.i89 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  store i32 0, ptr %i.fd, align 4, !tbaa !57
  store i32 %spec.store.select.i.i91, ptr %i.fb, align 8, !tbaa !60
  %.not.i.i92 = icmp eq i32 %spec.store.select.i.i91, 0
  br i1 %.not.i.i92, label %Vec_PtrAlloc.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fe = sext i32 %spec.store.select.i.i91 to i64
  %i.ff = shl nsw i64 %i.fe, 3
  %i.fg = call noalias ptr @malloc(i64 noundef %i.ff) #25
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.ai, %bb.ah
  %.promoted16.i = phi ptr [ %i.fg, %bb.ai ], [ null, %bb.ah ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  store ptr %.promoted16.i, ptr %i.fh, align 8, !tbaa !61
  %i.fi = icmp sgt i32 %.val9.i89, 0
  br i1 %i.fi, label %.lr.ph.i93, label %Vec_WecConvertToVecPtr.exit

.lr.ph.i93:                                       ; preds = %Vec_PtrAlloc.exit.i, %Vec_PtrPush.exit.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %Vec_PtrPush.exit.i ], [ 0, %Vec_PtrAlloc.exit.i ] ; 7 uses
  %storemerge17.i = phi ptr [ %storemerge18.i, %Vec_PtrPush.exit.i ], [ %.promoted16.i, %Vec_PtrAlloc.exit.i ] ; 6 uses
  %spec.select.sink.i15.i = phi i32 [ %spec.select.sink.i14.i, %Vec_PtrPush.exit.i ], [ %spec.store.select.i.i91, %Vec_PtrAlloc.exit.i ] ; 4 uses
  %.val.i95 = load ptr, ptr %i.bo, align 8, !tbaa !104
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.val.i95, i64 %indvars.iv19.i ; 2 uses
  %i.fk = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !30 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !30
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !33
  %.not.i10.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i10.i, label %Vec_IntDup.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i93
  %i.fo = sext i32 %i.fm to i64
  %i.fp = shl nsw i64 %i.fo, 2                    ; 2 uses
  %i.fq = call noalias ptr @malloc(i64 noundef %i.fp) #25
  br label %Vec_IntDup.exit.i

Vec_IntDup.exit.i:                                ; preds = %bb.aj, %.lr.ph.i93
  %.pre-phi12.i.i = phi i64 [ %i.fp, %bb.aj ], [ 0, %.lr.ph.i93 ]
  %i.fr = phi ptr [ %i.fq, %bb.aj ], [ null, %.lr.ph.i93 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !34
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fr, ptr align 4 %i.fu, i64 %.pre-phi12.i.i, i1 false)
  %i.fv = trunc nsw i64 %indvars.iv19.i to i32
  %i.fw = icmp eq i32 %spec.select.sink.i15.i, %i.fv
  br i1 %i.fw, label %bb.ak, label %Vec_PtrPush.exit.i

bb.ak:                                            ; preds = %Vec_IntDup.exit.i
  %i.fx = icmp samesign ult i64 %indvars.iv19.i, 16
  br i1 %i.fx, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not9.i.i.i98 = icmp eq ptr %storemerge17.i, null
  br i1 %.not9.i.i.i98, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef 128) #26
  br label %Vec_PtrPush.exit.i

bb.an:                                            ; preds = %bb.al
  %i.fz = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrPush.exit.i

bb.ao:                                            ; preds = %bb.ak
  %i.ga = icmp samesign ult i64 %indvars.iv19.i, 1073741823
  %i.gb = shl nsw i32 %spec.select.sink.i15.i, 1
  %spec.select.i.i97 = select i1 %i.ga, i32 %i.gb, i32 2147483647 ; 4 uses
  %11 = sext i32 %spec.select.i.i97 to i64
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv19.i, %11
  br i1 %.not.i10.i.i, label %bb.ap, label %Vec_PtrPush.exit.i

bb.ap:                                            ; preds = %bb.ao
  %.not9.i11.i.i = icmp eq ptr %storemerge17.i, null
  %12 = zext nneg i32 %spec.select.i.i97 to i64
  %i.gc = shl nuw nsw i64 %12, 3                  ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gd = call ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef %i.gc) #26
  br label %Vec_PtrPush.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.ge = call noalias ptr @malloc(i64 noundef %i.gc) #25
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.am, %Vec_IntDup.exit.i
  %storemerge18.i = phi ptr [ %storemerge17.i, %Vec_IntDup.exit.i ], [ %storemerge17.i, %bb.ao ], [ %i.fz, %bb.an ], [ %i.fy, %bb.am ], [ %i.gd, %bb.aq ], [ %i.ge, %bb.ar ] ; 3 uses
  %spec.select.sink.i14.i = phi i32 [ %spec.select.sink.i15.i, %Vec_IntDup.exit.i ], [ %spec.select.sink.i15.i, %bb.ao ], [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i.i97, %bb.aq ], [ %spec.select.i.i97, %bb.ar ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i, i64 %indvars.iv19.i
  store ptr %i.fk, ptr %i.gf, align 8, !tbaa !75
  %.val8.i = load i32, ptr %i.bn, align 4, !tbaa !105
  %i.gg = sext i32 %.val8.i to i64
  %i.gh = icmp slt i64 %indvars.iv.next20.i, %i.gg
  br i1 %i.gh, label %.lr.ph.i93, label %..critedge_crit_edge.i, !llvm.loop !129

..critedge_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i
  %i.gi = trunc nsw i64 %indvars.iv.next20.i to i32
  store i32 %i.gi, ptr %i.fd, align 4, !tbaa !57
  store i32 %spec.select.sink.i14.i, ptr %i.fb, align 8
  store ptr %storemerge18.i, ptr %i.fh, align 8
  br label %Vec_WecConvertToVecPtr.exit

Vec_WecConvertToVecPtr.exit:                      ; preds = %Vec_PtrAlloc.exit.i, %..critedge_crit_edge.i
  store ptr %i.fb, ptr %1, align 8, !tbaa !128
  br label %bb.as

bb.as:                                            ; preds = %Vec_WecConvertToVecPtr.exit, %bb.ag
  %i.gj = load i32, ptr %.0, align 8, !tbaa !102  ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  %.pre.i.i99 = load ptr, ptr %i.bo, align 8, !tbaa !104 ; 3 uses
  br i1 %i.gk, label %.lr.ph.i.i103.preheader, label %._crit_edge.i.i100

.lr.ph.i.i103.preheader:                          ; preds = %bb.as
  %i.gl = zext nneg i32 %i.gj to i64
  br label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %.lr.ph.i.i103.preheader, %bb.au
  %indvars.iv.i.i104 = phi i64 [ %indvars.iv.next.i.i107, %bb.au ], [ 0, %.lr.ph.i.i103.preheader ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i99, i64 %indvars.iv.i.i104
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !34 ; 2 uses
  %.not15.i.i105 = icmp eq ptr %i.go, null
  br i1 %.not15.i.i105, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i103
  call void @free(ptr noundef nonnull %i.go) #27
  store ptr null, ptr %i.gn, align 8, !tbaa !34
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.i103
  %indvars.iv.next.i.i107 = add nuw nsw i64 %indvars.iv.i.i104, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next.i.i107, %i.gl
  br i1 %exitcond114.not, label %._crit_edge.thread.i.i102, label %.lr.ph.i.i103, !llvm.loop !124

._crit_edge.i.i100:                               ; preds = %bb.as
  %.not.i.i101 = icmp eq ptr %.pre.i.i99, null
  br i1 %.not.i.i101, label %Vec_WecFree.exit108, label %._crit_edge.thread.i.i102

._crit_edge.thread.i.i102:                        ; preds = %bb.au, %._crit_edge.i.i100
  call void @free(ptr noundef nonnull %.pre.i.i99) #27
  br label %Vec_WecFree.exit108

Vec_WecFree.exit108:                              ; preds = %._crit_edge.i.i100, %._crit_edge.thread.i.i102
  call void @free(ptr noundef nonnull %.0) #27
  br label %bb.av

bb.av:                                            ; preds = %Vec_WecFree.exit108, %Vec_WecFree.exit
  %.037 = phi ptr [ %i.bd, %Vec_WecFree.exit ], [ %i.dc, %Vec_WecFree.exit108 ]
  ret ptr %.037
}

declare ptr @Gia_ManDup(ptr noundef) local_unnamed_addr #5

declare ptr @Gia_ManDupCones(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #18 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !36
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #27 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #27
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #27 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !69
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #29
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #27 ; 0 uses
  call void @free(ptr noundef %i.d) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !69, !noalias !130
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #27, !inline_history !133 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @Vec_WecSortCompare3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.b = load i32, ptr %.val6, align 4, !tbaa !36
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.d = load i32, ptr %.val5, align 4, !tbaa !36
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
