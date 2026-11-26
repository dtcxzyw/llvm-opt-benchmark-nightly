Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMini?download=true
inline.NumInlined: 625
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Gia_MiniAigProcessFile:bb.a
  br i1 %.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %.012, 1                     ; 3 uses
  %i.l = load i8, ptr %i.a, align 16, !tbaa !62
  %.not15 = icmp eq i8 %i.l, 35
  br i1 %.not15, label %bb.f, label %bb.d, !llvm.loop !171

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i32 %.013.ph, 1              ; 2 uses
  %i.n = call ptr @strtok(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.31) #27 ; 2 uses
  %.not1618 = icmp eq ptr %i.n, null
  br i1 %.not1618, label %.outer, label %.lr.ph, !llvm.loop !171

.lr.ph:                                           ; preds = %bb.f
  %i.o = sext i32 %.val.ph to i64
  br label %bb.g, !llvm.loop !171

bb.g:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge25 = phi ptr [ %.promoted24.ph, %.lr.ph ], [ %storemerge26, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i23 = phi i32 [ %.promoted21.ph, %.lr.ph ], [ %spec.select.sink.i22, %Vec_IntPush.exit ] ; 3 uses
  %.019 = phi ptr [ %i.n, %.lr.ph ], [ %i.ae, %Vec_IntPush.exit ]
  %i.p = call i64 @strtol(ptr noundef nonnull captures(none) %.019, ptr noundef null, i32 noundef 10) #27, !inline_history !172
  %i.q = trunc i64 %i.p to i32
  %i.r = trunc nsw i64 %indvars.iv to i32
  %i.s = icmp eq i32 %spec.select.sink.i23, %i.r
  br i1 %i.s, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.t = icmp slt i64 %indvars.iv, 16
  br i1 %i.t, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %storemerge25, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge25, i64 noundef 64) #29
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.v = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.h
  %i.w = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.x = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.w, i32 %i.x, i32 2147483647 ; 4 uses
  %i.y = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.y
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %storemerge25, null
  %i.z = zext nneg i32 %spec.select.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = call ptr @realloc(ptr noundef nonnull %storemerge25, i64 noundef %i.aa) #29
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.m
  %i.ac = call noalias ptr @malloc(i64 noundef %i.aa) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.k, %bb.j, %bb.o, %bb.n, %bb.g, %bb.l
  %storemerge26 = phi ptr [ %storemerge25, %bb.g ], [ %storemerge25, %bb.l ], [ %i.v, %bb.k ], [ %i.u, %bb.j ], [ %i.ab, %bb.n ], [ %i.ac, %bb.o ] ; 4 uses
  %spec.select.sink.i22 = phi i32 [ %spec.select.sink.i23, %bb.g ], [ %spec.select.sink.i23, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %storemerge26, i64 %indvars.iv
  store i32 %i.q, ptr %i.ad, align 4, !tbaa !16
  %i.ae = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.31) #27 ; 2 uses
  %.not16 = icmp eq ptr %i.ae, null
  br i1 %.not16, label %..loopexit_crit_edge, label %bb.g, !llvm.loop !173

bb.p:                                             ; preds = %bb.d
  %i.af = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %.013.ph, i32 noundef %.012) ; 0 uses
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %.val.ph) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.b
  ret ptr %i.b
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_MiniAigGenerate_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 8          ; 3 uses
  %.val32 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %.val32, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %common.ret34, label %bb.b

common.ret34:                                     ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %3, i64 8
  %.val31 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds [4 x i8], ptr %.val31, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = mul nsw i32 %i.h, 3
  %i.j = getelementptr i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr [4 x i8], ptr %.val30, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16   ; 2 uses
  tail call void @Gia_MiniAigGenerate_rec(ptr noundef %0, ptr noundef %1, i32 noundef %i.o, ptr noundef %3, ptr noundef nonnull %4)
  tail call void @Gia_MiniAigGenerate_rec(ptr noundef %0, ptr noundef %1, i32 noundef %i.q, ptr noundef %3, ptr noundef nonnull %4)
  %.val27 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16
  %i.x = tail call fastcc i32 @Mini_AigAnd(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.w)
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.y = sext i32 %i.m to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.val33, i64 %i.y
  store i32 %i.x, ptr %i.z, align 4, !tbaa !16
  br label %common.ret34
}

; Function Attrs: nounwind uwtable
define void @Gia_MiniAigGenerateFromFile() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 8 uses
  store i32 255, ptr %i.a, align 8, !tbaa !48
  %i.b = tail call noalias dereferenceable_or_null(1020) ptr @malloc(i64 noundef 1020) #28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 2147483647, ptr %i.b, align 4, !tbaa !16
  store i32 2, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 2147483647, ptr %i.e, align 4, !tbaa !16
  %i.f = tail call ptr @Gia_MiniAigProcessFile()  ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val96 = load i32, ptr %i.g, align 4, !tbaa !40 ; 18 uses
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.i = add i32 %.val96, -1
  %or.cond.i.i = icmp ult i32 %i.i, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val96 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.h, align 8, !tbaa !39
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i120, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.k = sext i32 %spec.store.select.i.i to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 4 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #28 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !18
  store i32 %.val96, ptr %i.j, align 4, !tbaa !40
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %Vec_IntAlloc.exit.i105, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.o = sext i32 %.val96 to i64
  %i.p = shl nsw i64 %i.o, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 -1, i64 %i.p, i1 false)
  br label %Vec_IntAlloc.exit.i105

Vec_IntAlloc.exit.i105:                           ; preds = %Vec_IntAlloc.exit.i, %bb.b
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %spec.store.select.i.i, ptr %i.q, align 8, !tbaa !39
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.l) #28 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !18
  store i32 %.val96, ptr %i.r, align 4, !tbaa !40
  %.not.i106 = icmp eq ptr %i.s, null
  br i1 %.not.i106, label %Vec_IntAlloc.exit.i112, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i105
  %i.u = sext i32 %.val96 to i64
  %i.v = shl nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 -1, i64 %i.v, i1 false)
  br label %Vec_IntAlloc.exit.i112

Vec_IntAlloc.exit.i112:                           ; preds = %Vec_IntAlloc.exit.i105, %bb.c
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %spec.store.select.i.i, ptr %i.w, align 8, !tbaa !39
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.l) #28 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !18
  store i32 %.val96, ptr %i.x, align 4, !tbaa !40
  %.not.i113 = icmp eq ptr %i.y, null
  br i1 %.not.i113, label %Vec_IntAlloc.exit.i118, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit.i112
  %i.aa = sext i32 %.val96 to i64
  %i.ab = shl nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.ab, i1 false)
  br label %Vec_IntAlloc.exit.i118

Vec_IntAlloc.exit.thread.i120:                    ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !18
  store i32 %.val96, ptr %i.j, align 4, !tbaa !40
  %i.ad = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 0, ptr %i.ad, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !18
  store i32 %.val96, ptr %i.ae, align 4, !tbaa !40
  %i.ag = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 0, ptr %i.ag, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !18
  store i32 %.val96, ptr %i.ah, align 4, !tbaa !40
  %i.aj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.aj, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !18
  store i32 %.val96, ptr %i.ak, align 4, !tbaa !40
  br label %Vec_IntStart.exit121

Vec_IntAlloc.exit.i118:                           ; preds = %Vec_IntAlloc.exit.i112, %bb.d
  %i.am = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  store i32 %spec.store.select.i.i, ptr %i.am, align 8, !tbaa !39
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.l) #28 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !18
  store i32 %.val96, ptr %i.an, align 4, !tbaa !40
  %.not.i119 = icmp eq ptr %i.ao, null
  br i1 %.not.i119, label %Vec_IntStart.exit121, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit.i118
  %i.aq = sext i32 %.val96 to i64
  %i.ar = shl nsw i64 %i.aq, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ao, i8 0, i64 %i.ar, i1 false)
  br label %Vec_IntStart.exit121

Vec_IntStart.exit121:                             ; preds = %Vec_IntAlloc.exit.thread.i120, %Vec_IntAlloc.exit.i118, %bb.e
  %.val83 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i120 ], [ %i.y, %Vec_IntAlloc.exit.i118 ], [ %i.y, %bb.e ] ; 3 uses
  %.val84 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i120 ], [ null, %Vec_IntAlloc.exit.i118 ], [ %i.ao, %bb.e ] ; 2 uses
  %.val98 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i120 ], [ %i.m, %Vec_IntAlloc.exit.i118 ], [ %i.m, %bb.e ]
  %i.as = phi ptr [ %i.aj, %Vec_IntAlloc.exit.thread.i120 ], [ %i.am, %Vec_IntAlloc.exit.i118 ], [ %i.am, %bb.e ] ; 2 uses
  %i.at = phi ptr [ %i.ad, %Vec_IntAlloc.exit.thread.i120 ], [ %i.q, %Vec_IntAlloc.exit.i118 ], [ %i.q, %bb.e ] ; 5 uses
  %i.au = phi ptr [ %i.ag, %Vec_IntAlloc.exit.thread.i120 ], [ %i.w, %Vec_IntAlloc.exit.i118 ], [ %i.w, %bb.e ] ; 2 uses
  %i.av = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 4 uses
  store i32 0, ptr %i.aw, align 4, !tbaa !40
  store i32 100, ptr %i.av, align 8, !tbaa !39
  %i.ax = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 7 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !18
  %i.az = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 3 uses
  %i.ba = icmp sgt i32 %.val96, 2
  br i1 %i.ba, label %.lr.ph, label %.preheader145

.lr.ph:                                           ; preds = %Vec_IntStart.exit121
  %i.bb = udiv i32 %.val96, 3
  %i.bc = getelementptr i8, ptr %i.f, i64 8
  %.val87.a = load ptr, ptr %i.bc, align 8, !tbaa !18
  %wide.trip.count = zext nneg i32 %i.bb to i64
  br label %bb.f

.preheader145:                                    ; preds = %Vec_IntStart.exit121
  %i.bd = icmp sgt i32 %.val96, 0
  br i1 %i.bd, label %.critedge.lr.ph, label %.critedge9

.critedge.lr.ph:                                  ; preds = %bb.f, %.preheader145
  %wide.trip.count158 = zext nneg i32 %.val96 to i64
  br label %.critedge

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.be = getelementptr inbounds nuw i8, ptr %.val87.a, i64 %.idx ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !16
  %i.bk = sext i32 %i.bf to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val98, i64 %i.bk
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !16
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val84, i64 %i.bk ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !16
  %i.bq = sext i32 %i.bh to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.val83, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !16
  %i.bu = sext i32 %i.bj to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %.val83, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !16
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.lr.ph, label %bb.f, !llvm.loop !174

.preheader:                                       ; preds = %bb.z
  %.val90.pre = load i32, ptr %i.aw, align 4, !tbaa !40 ; 2 uses
  %i.by = icmp sgt i32 %.val90.pre, 0
  br i1 %i.by, label %.lr.ph149, label %.critedge5.preheader

.lr.ph149:                                        ; preds = %.preheader
  %.val82 = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.bz = getelementptr i8, ptr %i.at, i64 8
  %wide.trip.count163 = zext nneg i32 %.val90.pre to i64
  br label %bb.aa

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.z
  %i.ca = phi ptr [ %i.az, %.critedge.lr.ph ], [ %i.dp, %bb.z ] ; 4 uses
  %i.cb = phi ptr [ %i.az, %.critedge.lr.ph ], [ %i.dq, %bb.z ] ; 6 uses
  %i.cc = phi i32 [ 100, %.critedge.lr.ph ], [ %i.dr, %bb.z ] ; 9 uses
  %i.cd = phi i32 [ 0, %.critedge.lr.ph ], [ %i.ds, %bb.z ] ; 5 uses
  %indvars.iv155 = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next156, %bb.z ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val84, i64 %indvars.iv155
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.val83, i64 %indvars.iv155
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !16
  %i.ci = icmp eq i32 %i.cf, 0                    ; 2 uses
  %i.cj = icmp ne i32 %i.ch, 0                    ; 2 uses
  %or.cond = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond, label %bb.g, label %bb.p

bb.g:                                             ; preds = %.critedge
  %i.ck = load i32, ptr %i.aw, align 4, !tbaa !40 ; 7 uses
  %i.cl = load i32, ptr %i.av, align 8, !tbaa !39
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.h, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !18
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.cn = icmp slt i32 %i.ck, 16
  br i1 %i.cn, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.co = load ptr, ptr %i.ay, align 8, !tbaa !18 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.co, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.co, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.cq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.cr = icmp samesign ult i32 %i.ck, 1073741823
  %i.cs = shl nuw nsw i32 %i.ck, 1
  %spec.select.i = select i1 %i.cr, i32 %i.cs, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ck, %spec.select.i
  %.pre178 = load ptr, ptr %i.ay, align 8, !tbaa !18 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre178, null
  %i.ct = zext nneg i32 %spec.select.i to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = tail call ptr @realloc(ptr noundef nonnull %.pre178, i64 noundef %i.cu) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.cw = tail call noalias ptr @malloc(i64 noundef %i.cu) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge144 = phi ptr [ %i.cq, %bb.k ], [ %i.cp, %bb.j ], [ %i.cv, %bb.n ], [ %i.cw, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %storemerge144, ptr %i.ay, align 8, !tbaa !18
  store i32 %spec.select.sink.i, ptr %i.av, align 8, !tbaa !39
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.cx = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre178, %bb.l ], [ %storemerge144, %Vec_IntGrow.exit11.sink.split.i ]
  %i.cy = add nsw i32 %i.ck, 1
  store i32 %i.cy, ptr %i.aw, align 4, !tbaa !40
  br label %.sink.split

bb.p:                                             ; preds = %.critedge
  %or.cond3 = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond3, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = icmp eq i32 %i.cd, %i.cc
  br i1 %i.cz, label %bb.r, label %Vec_IntPush.exit129

bb.r:                                             ; preds = %bb.q
  %i.da = icmp slt i32 %i.cc, 16
  br i1 %i.da, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i127 = icmp eq ptr %i.cb, null
  br i1 %.not9.i.i127, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef 64) #29
  br label %Vec_IntPush.exit129

bb.u:                                             ; preds = %bb.s
  %i.dc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit129

bb.v:                                             ; preds = %bb.r
  %i.dd = icmp samesign ult i32 %i.cc, 1073741823
  %i.de = shl nuw nsw i32 %i.cc, 1
  %spec.select.i122 = select i1 %i.dd, i32 %i.de, i32 2147483647 ; 4 uses
  %.not.i9.i123 = icmp samesign ult i32 %i.cc, %spec.select.i122
  br i1 %.not.i9.i123, label %bb.w, label %Vec_IntPush.exit129

bb.w:                                             ; preds = %bb.v
  %.not9.i10.i124 = icmp eq ptr %i.cb, null
  %i.df = zext nneg i32 %spec.select.i122 to i64
  %i.dg = shl nuw nsw i64 %i.df, 2                ; 2 uses
  br i1 %.not9.i10.i124, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = tail call ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef %i.dg) #29
  br label %Vec_IntPush.exit129

bb.y:                                             ; preds = %bb.w
  %i.di = tail call noalias ptr @malloc(i64 noundef %i.dg) #28
  br label %Vec_IntPush.exit129

Vec_IntPush.exit129:                              ; preds = %bb.u, %bb.t, %bb.y, %bb.x, %bb.q, %bb.v
  %i.dj = phi ptr [ %i.ca, %bb.q ], [ %i.ca, %bb.v ], [ %i.dc, %bb.u ], [ %i.db, %bb.t ], [ %i.dh, %bb.x ], [ %i.di, %bb.y ] ; 3 uses
  %i.dk = phi i32 [ %i.cc, %bb.q ], [ %i.cc, %bb.v ], [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i122, %bb.x ], [ %spec.select.i122, %bb.y ]
  %i.dl = add nsw i32 %i.cd, 1
  br label %.sink.split

.sink.split:                                      ; preds = %Vec_IntPush.exit129, %Vec_IntPush.exit
  %.sink212 = phi i32 [ %i.ck, %Vec_IntPush.exit ], [ %i.cd, %Vec_IntPush.exit129 ]
  %.sink = phi ptr [ %i.cx, %Vec_IntPush.exit ], [ %i.dj, %Vec_IntPush.exit129 ]
  %.ph = phi ptr [ %i.ca, %Vec_IntPush.exit ], [ %i.dj, %Vec_IntPush.exit129 ]
  %.ph207.a = phi ptr [ %i.cb, %Vec_IntPush.exit ], [ %i.dj, %Vec_IntPush.exit129 ]
  %.ph208 = phi i32 [ %i.cc, %Vec_IntPush.exit ], [ %i.dk, %Vec_IntPush.exit129 ]
  %.ph209 = phi i32 [ %i.cd, %Vec_IntPush.exit ], [ %i.dl, %Vec_IntPush.exit129 ]
  %i.dm = sext i32 %.sink212 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %.sink, i64 %i.dm
  %i.do = trunc nuw nsw i64 %indvars.iv155 to i32
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !16
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.p
  %i.dp = phi ptr [ %i.ca, %bb.p ], [ %.ph, %.sink.split ] ; 5 uses
  %i.dq = phi ptr [ %i.cb, %bb.p ], [ %.ph207.a, %.sink.split ]
  %i.dr = phi i32 [ %i.cc, %bb.p ], [ %.ph208, %.sink.split ]
  %i.ds = phi i32 [ %i.cd, %bb.p ], [ %.ph209, %.sink.split ] ; 4 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %.preheader, label %.critedge, !llvm.loop !175

.critedge5.preheader:                             ; preds = %bb.aa, %.preheader
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph151, label %.critedge9

.lr.ph151:                                        ; preds = %.critedge5.preheader
  %wide.trip.count168 = zext nneg i32 %i.ds to i64
  br label %.critedge5

bb.aa:                                            ; preds = %.lr.ph149, %bb.aa
  %indvars.iv160 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next161, %bb.aa ] ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val82, i64 %indvars.iv160
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !16
  %i.dw = tail call fastcc i32 @Mini_AigCreatePi(ptr noundef nonnull %i.a)
  %.val97 = load ptr, ptr %i.bz, align 8, !tbaa !18
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.val97, i64 %i.dx
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !16
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %.critedge5.preheader, label %bb.aa, !llvm.loop !176

.lr.ph153:                                        ; preds = %.critedge5
  %i.dz = getelementptr i8, ptr %i.at, i64 8
  %wide.trip.count173 = zext nneg i32 %i.ds to i64
  br label %.critedge7

.critedge5:                                       ; preds = %.lr.ph151, %.critedge5
  %indvars.iv165 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next166, %.critedge5 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv165
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !16
  tail call void @Gia_MiniAigGenerate_rec(ptr noundef nonnull %i.a, ptr noundef %i.f, i32 noundef %i.eb, ptr noundef nonnull %i.h, ptr noundef nonnull %i.at)
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
end_hunk_0
