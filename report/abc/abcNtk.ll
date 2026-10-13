Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcNtk?download=true
inline.NumInlined: 921
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Abc_NtkSelectPos:bb.a
  br i1 %.not46, label %bb.ab, label %.sink.split

bb.aa:                                            ; preds = %Vec_PtrFree.exit74
  %i.db = getelementptr i8, ptr %i.a, i64 128
  %.val55 = load i32, ptr %i.db, align 8, !tbaa !48
  %.not45 = icmp eq i32 %.val55, 0
  br i1 %.not45, label %bb.ab, label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.z
  %str.5.sink = phi ptr [ @str.8, %bb.z ], [ @str.7, %bb.aa ]
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.5.sink) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.aa, %bb.z
  %i.dc = tail call i32 @Abc_NtkCheck(ptr noundef nonnull %i.a) #20
  %.not48 = icmp eq i32 %i.dc, 0
  br i1 %.not48, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dd = load ptr, ptr @stdout, align 8, !tbaa !76
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.37, i64 45, i64 1, ptr %i.dd) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.a
  ret ptr %i.a
}

declare void @Abc_NtkDeleteObjPo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_NtkMakeOnePo(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 48
  %.val53 = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr i8, ptr %.val53, i64 4
  %.val53.val = load i32, ptr %i.c, align 4, !tbaa !29
  %.not = icmp slt i32 %1, %.val53.val
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %puts49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @Abc_NtkDup(ptr noundef nonnull %0) ; 10 uses
  %i.e = getelementptr i8, ptr %i.d, i64 48       ; 4 uses
  %.val52 = load ptr, ptr %i.e, align 8, !tbaa !35 ; 3 uses
  %i.f = getelementptr i8, ptr %.val52, i64 4
  %.val52.val = load i32, ptr %i.f, align 4, !tbaa !29 ; 3 uses
  %i.g = icmp eq i32 %.val52.val, 1
  br i1 %i.g, label %bb.af, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %2, i32 8) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !29
  store i32 %spec.store.select.i, ptr %i.h, align 8, !tbaa !30
  %i.j = zext nneg i32 %spec.store.select.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #19 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !31
  %i.n = icmp sgt i32 %.val52.val, 0
  br i1 %i.n, label %.lr.ph, label %Vec_PtrDup.exit

.lr.ph:                                           ; preds = %bb.e
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %i.o = add nuw nsw i32 %spec.store.select, %1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = zext nneg i32 %1 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.q
  %i.r = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.ar, %bb.q ] ; 3 uses
  %i.s = phi ptr [ %i.l, %.lr.ph ], [ %i.as, %bb.q ] ; 3 uses
  %i.t = phi ptr [ %i.l, %.lr.ph ], [ %i.at, %bb.q ] ; 5 uses
  %i.u = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.au, %bb.q ] ; 9 uses
  %i.v = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.q ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %.val5175 = phi ptr [ %.val52, %.lr.ph ], [ %.val51, %bb.q ]
  %i.w = getelementptr i8, ptr %.val5175, i64 8
  %.val54.val = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val54.val, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43   ; 2 uses
  %i.z = icmp samesign uge i64 %indvars.iv, %i.q
  %.not48 = icmp samesign ult i64 %indvars.iv, %i.p
  %or.cond = select i1 %i.z, i1 %.not48, i1 false
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @Abc_NtkDeleteObjPo(ptr noundef %i.y) #20
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp eq i32 %i.v, %i.u
  br i1 %i.aa, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp slt i32 %i.u, 16
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.ad = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.m:                                             ; preds = %bb.i
  %i.ae = icmp samesign ult i32 %i.u, 1073741823
  %i.af = shl nuw nsw i32 %i.u, 1
  %spec.select.i = select i1 %i.ae, i32 %i.af, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.u, %spec.select.i
  br i1 %.not.i10.i, label %bb.n, label %Vec_PtrPush.exit

bb.n:                                             ; preds = %bb.m
  %.not9.i11.i = icmp eq ptr %i.t, null
  %i.ag = zext nneg i32 %spec.select.i to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.ah) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #19
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.o, %bb.p, %bb.k, %bb.l
  %storemerge71 = phi ptr [ %i.ad, %bb.l ], [ %i.ac, %bb.k ], [ %i.ai, %bb.o ], [ %i.aj, %bb.p ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ] ; 3 uses
  store ptr %storemerge71, ptr %i.m, align 8, !tbaa !31
  store i32 %spec.select.sink.i, ptr %i.h, align 8, !tbaa !30
  %.pre = load i32, ptr %i.i, align 4, !tbaa !29
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.h, %bb.m, %Vec_PtrGrow.exit12.sink.split.i
  %i.ak = phi i32 [ %i.r, %bb.h ], [ %i.r, %bb.m ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.al = phi i32 [ %i.v, %bb.h ], [ %i.u, %bb.m ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.am = phi ptr [ %i.s, %bb.h ], [ %i.s, %bb.m ], [ %storemerge71, %Vec_PtrGrow.exit12.sink.split.i ] ; 3 uses
  %i.an = phi i32 [ %i.u, %bb.h ], [ %i.u, %bb.m ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.ao = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.ao, ptr %i.i, align 4, !tbaa !29
  %i.ap = sext i32 %i.al to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ap
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %Vec_PtrPush.exit
  %i.ar = phi i32 [ %i.r, %bb.g ], [ %i.ak, %Vec_PtrPush.exit ] ; 2 uses
  %i.as = phi ptr [ %i.s, %bb.g ], [ %i.am, %Vec_PtrPush.exit ] ; 2 uses
  %i.at = phi ptr [ %i.t, %bb.g ], [ %i.am, %Vec_PtrPush.exit ]
  %i.au = phi i32 [ %i.u, %bb.g ], [ %i.an, %Vec_PtrPush.exit ]
  %i.av = phi i32 [ %i.v, %bb.g ], [ %i.ao, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val51 = load ptr, ptr %i.e, align 8, !tbaa !35 ; 3 uses
  %i.aw = getelementptr i8, ptr %.val51, i64 4
  %.val51.val = load i32, ptr %i.aw, align 4, !tbaa !29 ; 2 uses
  %i.ax = sext i32 %.val51.val to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.f, label %Vec_PtrDup.exit, !llvm.loop !207

Vec_PtrDup.exit:                                  ; preds = %bb.q, %bb.e
  %.val50.val = phi i32 [ %.val52.val, %bb.e ], [ %.val51.val, %bb.q ] ; 2 uses
  %.val50 = phi ptr [ %.val52, %bb.e ], [ %.val51, %bb.q ]
  %i.az = phi ptr [ %i.l, %bb.e ], [ %i.as, %bb.q ]
  %i.ba = phi i32 [ %spec.store.select.i, %bb.e ], [ %i.ar, %bb.q ] ; 3 uses
  %i.bb = phi i32 [ 0, %bb.e ], [ %i.av, %bb.q ]  ; 3 uses
  %i.bc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 3 uses
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !29
  store i32 %i.ba, ptr %i.bc, align 8, !tbaa !30
  %i.be = zext nneg i32 %i.ba to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bf) #19 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !31
  %i.bi = sext i32 %i.bb to i64
  %i.bj = shl nsw i64 %i.bi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bg, ptr align 8 %i.az, i64 %i.bj, i1 false)
  %i.bk = getelementptr i8, ptr %i.d, i64 64      ; 4 uses
  %.val5776 = load ptr, ptr %i.bk, align 8, !tbaa !37 ; 2 uses
  %i.bl = getelementptr i8, ptr %.val5776, i64 4
  %.val57.val77 = load i32, ptr %i.bl, align 4, !tbaa !29
  %i.bm = icmp slt i32 %.val50.val, %.val57.val77
  br i1 %i.bm, label %.lr.ph80.preheader, label %._crit_edge

.lr.ph80.preheader:                               ; preds = %Vec_PtrDup.exit
  %i.bn = sext i32 %.val50.val to i64
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %Vec_PtrPush.exit66
  %i.bo = phi ptr [ %i.bg, %.lr.ph80.preheader ], [ %i.cf, %Vec_PtrPush.exit66 ] ; 6 uses
  %i.bp = phi i32 [ %i.ba, %.lr.ph80.preheader ], [ %i.cg, %Vec_PtrPush.exit66 ] ; 8 uses
  %i.bq = phi i32 [ %i.bb, %.lr.ph80.preheader ], [ %i.ch, %Vec_PtrPush.exit66 ] ; 2 uses
  %indvars.iv82 = phi i64 [ %i.bn, %.lr.ph80.preheader ], [ %indvars.iv.next83, %Vec_PtrPush.exit66 ] ; 2 uses
  %.val5779 = phi ptr [ %.val5776, %.lr.ph80.preheader ], [ %.val57, %Vec_PtrPush.exit66 ]
  %i.br = getelementptr i8, ptr %.val5779, i64 8
  %.val58.val = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bs = getelementptr inbounds [8 x i8], ptr %.val58.val, i64 %indvars.iv82
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !43
  %i.bu = icmp eq i32 %i.bq, %i.bp
  br i1 %i.bu, label %bb.r, label %Vec_PtrPush.exit66

bb.r:                                             ; preds = %.lr.ph80
  %i.bv = icmp slt i32 %i.bp, 16
  br i1 %i.bv, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i64 = icmp eq ptr %i.bo, null
  br i1 %.not9.i.i64, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bo, i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i62

bb.u:                                             ; preds = %bb.s
  %i.bx = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i62

bb.v:                                             ; preds = %bb.r
  %i.by = icmp samesign ult i32 %i.bp, 1073741823
  %i.bz = shl nuw nsw i32 %i.bp, 1
  %spec.select.i59 = select i1 %i.by, i32 %i.bz, i32 2147483647 ; 4 uses
  %.not.i10.i60 = icmp samesign ult i32 %i.bp, %spec.select.i59
  br i1 %.not.i10.i60, label %bb.w, label %Vec_PtrPush.exit66

bb.w:                                             ; preds = %bb.v
  %.not9.i11.i61 = icmp eq ptr %i.bo, null
  %i.ca = zext nneg i32 %spec.select.i59 to i64
  %i.cb = shl nuw nsw i64 %i.ca, 3                ; 2 uses
  br i1 %.not9.i11.i61, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = tail call ptr @realloc(ptr noundef nonnull %i.bo, i64 noundef %i.cb) #21
  br label %Vec_PtrGrow.exit12.sink.split.i62

bb.y:                                             ; preds = %bb.w
  %i.cd = tail call noalias ptr @malloc(i64 noundef %i.cb) #19
  br label %Vec_PtrGrow.exit12.sink.split.i62

Vec_PtrGrow.exit12.sink.split.i62:                ; preds = %bb.x, %bb.y, %bb.t, %bb.u
  %storemerge = phi ptr [ %i.bx, %bb.u ], [ %i.bw, %bb.t ], [ %i.cc, %bb.x ], [ %i.cd, %bb.y ] ; 2 uses
  %spec.select.sink.i63 = phi i32 [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i59, %bb.x ], [ %spec.select.i59, %bb.y ] ; 2 uses
  store ptr %storemerge, ptr %i.bh, align 8, !tbaa !31
  store i32 %spec.select.sink.i63, ptr %i.bc, align 8, !tbaa !30
  %.pre87 = load i32, ptr %i.bd, align 4, !tbaa !29
  br label %Vec_PtrPush.exit66

Vec_PtrPush.exit66:                               ; preds = %.lr.ph80, %bb.v, %Vec_PtrGrow.exit12.sink.split.i62
  %i.ce = phi i32 [ %i.bq, %.lr.ph80 ], [ %i.bp, %bb.v ], [ %.pre87, %Vec_PtrGrow.exit12.sink.split.i62 ] ; 2 uses
  %i.cf = phi ptr [ %i.bo, %.lr.ph80 ], [ %i.bo, %bb.v ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i62 ] ; 2 uses
  %i.cg = phi i32 [ %i.bp, %.lr.ph80 ], [ %i.bp, %bb.v ], [ %spec.select.sink.i63, %Vec_PtrGrow.exit12.sink.split.i62 ]
  %i.ch = add nsw i32 %i.ce, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.bd, align 4, !tbaa !29
  %i.ci = sext i32 %i.ce to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.ci
  store ptr %i.bt, ptr %i.cj, align 8, !tbaa !43
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %.val57 = load ptr, ptr %i.bk, align 8, !tbaa !37 ; 2 uses
  %i.ck = getelementptr i8, ptr %.val57, i64 4
  %.val57.val = load i32, ptr %i.ck, align 4, !tbaa !29
  %i.cl = sext i32 %.val57.val to i64
  %i.cm = icmp slt i64 %indvars.iv.next83, %i.cl
  br i1 %i.cm, label %.lr.ph80, label %._crit_edge.loopexit, !llvm.loop !208

._crit_edge.loopexit:                             ; preds = %Vec_PtrPush.exit66
  %.pre88 = load ptr, ptr %i.e, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Vec_PtrDup.exit
  %i.cn = phi ptr [ %.pre88, %._crit_edge.loopexit ], [ %.val50, %Vec_PtrDup.exit ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31 ; 2 uses
  %.not.i67 = icmp eq ptr %i.cp, null
  br i1 %.not.i67, label %Vec_PtrFree.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.cp) #20
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %._crit_edge, %bb.z
  tail call void @free(ptr noundef nonnull %i.cn) #20
  store ptr %i.h, ptr %i.e, align 8, !tbaa !35
  %i.cq = load ptr, ptr %i.bk, align 8, !tbaa !37 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !31 ; 2 uses
  %.not.i68 = icmp eq ptr %i.cs, null
  br i1 %.not.i68, label %Vec_PtrFree.exit69, label %bb.aa

bb.aa:                                            ; preds = %Vec_PtrFree.exit
  tail call void @free(ptr noundef nonnull %i.cs) #20
  br label %Vec_PtrFree.exit69

Vec_PtrFree.exit69:                               ; preds = %Vec_PtrFree.exit, %bb.aa
  tail call void @free(ptr noundef nonnull %i.cq) #20
  store ptr %i.bc, ptr %i.bk, align 8, !tbaa !37
  %.val = load i32, ptr %i.d, align 8, !tbaa !25
  %.not70 = icmp eq i32 %.val, 3
  br i1 %.not70, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %Vec_PtrFree.exit69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !44
  %i.cv = tail call i32 @Abc_AigCleanup(ptr noundef %i.cu) #20 ; 0 uses
  %i.cw = getelementptr i8, ptr %i.d, i64 128
  %.val56 = load i32, ptr %i.cw, align 8, !tbaa !48
  %.not45 = icmp eq i32 %.val56, 0
  br i1 %.not45, label %bb.ad, label %.sink.split

bb.ac:                                            ; preds = %Vec_PtrFree.exit69
  %i.cx = getelementptr i8, ptr %i.d, i64 128
  %.val55 = load i32, ptr %i.cx, align 8, !tbaa !48
  %.not44 = icmp eq i32 %.val55, 0
  br i1 %.not44, label %bb.ad, label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.ab
  %str.7.sink = phi ptr [ @str.8, %bb.ab ], [ @str.7, %bb.ac ]
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.7.sink) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ac, %bb.ab
  %i.cy = tail call i32 @Abc_NtkCheck(ptr noundef nonnull %i.d) #20
  %.not47 = icmp eq i32 %i.cy, 0
  br i1 %.not47, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load ptr, ptr @stdout, align 8, !tbaa !76
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.37, i64 45, i64 1, ptr %i.cz) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.d, %bb.c
  %.041 = phi ptr [ null, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.ae ], [ %i.d, %bb.ad ]
  ret ptr %.041
}

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_NtkTrim(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val78119 = load ptr, ptr %i.a, align 8, !tbaa !37 ; 3 uses
  %i.b = getelementptr i8, ptr %.val78119, i64 4
  %.val78.val120 = load i32, ptr %i.b, align 4, !tbaa !29
  %i.c = icmp sgt i32 %.val78.val120, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %.val78124 = phi ptr [ %.val78119, %.lr.ph ], [ %.val78, %bb.n ]
  %.0123 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.n ] ; 5 uses
  %.068122 = phi i32 [ 0, %.lr.ph ], [ %.169, %bb.n ] ; 4 uses
  %i.h = getelementptr i8, ptr %.val78124, i64 8
  %.val79.val = load ptr, ptr %i.h, align 8, !tbaa !31 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val79.val, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 13 uses
  %i.k = getelementptr i8, ptr %i.j, i64 20       ; 3 uses
  %.val111 = load i32, ptr %i.k, align 4
  %i.l = and i32 %.val111, 15
  %.not115 = icmp eq i32 %i.l, 3
  br i1 %.not115, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %.val100 = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.m = getelementptr i8, ptr %i.j, i64 32       ; 3 uses
  %.val101 = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.n = getelementptr i8, ptr %.val100, i64 32
  %.val100.val = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val101.val = load i32, ptr %.val101, align 4, !tbaa !48
  %i.o = getelementptr i8, ptr %.val100.val, i64 8
  %.val100.val.val = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.p = sext i32 %.val101.val to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %.val100.val.val, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 28
  %.val106 = load i32, ptr %i.s, align 4, !tbaa !71
  switch i32 %.val106, label %bb.l [
    i32 0, label %bb.d
    i32 1, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @Abc_ObjDeleteFanin(ptr noundef nonnull %i.j, ptr noundef nonnull %i.r) #20
  %.val96 = load ptr, ptr %i.j, align 8, !tbaa !65
  %.val97 = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.t = getelementptr i8, ptr %.val96, i64 32
  %.val96.val = load ptr, ptr %i.t, align 8, !tbaa !32
  %.val97.val = load i32, ptr %.val97, align 4, !tbaa !48
  %i.u = getelementptr i8, ptr %.val96.val, i64 8
  %.val96.val.val = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.v = sext i32 %.val97.val to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.val96.val.val, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43   ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 44
  %.val104 = load i32, ptr %i.y, align 4, !tbaa !70
  %i.z = icmp eq i32 %.val104, 0
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.x, i64 20
  %.val114 = load i32, ptr %i.aa, align 4
  %i.ab = and i32 %.val114, 15
  %.not117 = icmp eq i32 %i.ab, 2
  br i1 %.not117, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @Abc_NtkDeleteObj_rec(ptr noundef nonnull %i.x, i32 noundef 1) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !72
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ah
  store ptr null, ptr %i.ai, align 8, !tbaa !43
  store i32 67108863, ptr %i.af, align 8, !tbaa !72
  %i.aj = load i32, ptr %i.k, align 4
  %i.ak = and i32 %i.aj, 15
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !48
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !48
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !211
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.f, align 4, !tbaa !211
  tail call void @Abc_ObjRecycle(ptr noundef nonnull %i.j) #20
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %.val86 = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.ar = getelementptr i8, ptr %i.r, i64 32
  %.val87 = load ptr, ptr %i.ar, align 8, !tbaa !66
  %i.as = getelementptr i8, ptr %.val86, i64 32
  %.val86.val = load ptr, ptr %i.as, align 8, !tbaa !32
  %.val87.val = load i32, ptr %.val87, align 4, !tbaa !48
  %i.at = getelementptr i8, ptr %.val86.val, i64 8
  %.val86.val.val = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.au = sext i32 %.val87.val to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %.val86.val.val, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.ax = getelementptr i8, ptr %i.aw, i64 20
  %.val113 = load i32, ptr %i.ax, align 4
  %i.ay = and i32 %.val113, 15
  %.not116 = icmp eq i32 %i.ay, 2
end_hunk_0
