Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@b3AddHullToDatabase:bb.a
  store i32 %i.g, ptr %i.e, align 8, !tbaa !74
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !75
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call ptr @b3CloneHull(ptr noundef %1) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @b3HullMap_insert(ptr dead_on_unwind nonnull writable sret(%struct.b3HullMap_itr) align 8 %3, ptr noundef %i.b, ptr noundef %i.i, i32 noundef 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @b3HullMap_get(ptr dead_on_unwind writable sret(%struct.b3HullMap_itr) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @b3HullMap_is_end(ptr noundef byval(%struct.b3HullMap_itr) align 8) local_unnamed_addr #2

declare ptr @b3CloneHull(ptr noundef) local_unnamed_addr #2

declare void @b3HullMap_insert(ptr dead_on_unwind writable sret(%struct.b3HullMap_itr) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden ptr @b3AddOwnedHullToDatabase(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3HullMap_itr, align 8      ; 6 uses
  %3 = alloca %struct.b3HullMap_itr, align 8      ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @b3HullMap_get(ptr dead_on_unwind nonnull writable sret(%struct.b3HullMap_itr) align 8 %2, ptr noundef %i.b, ptr noundef %1) #21
  %i.c = call zeroext i1 @b3HullMap_is_end(ptr noundef nonnull byval(%struct.b3HullMap_itr) align 8 %2) #21
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !74
  call void @b3DestroyHull(ptr noundef %1) #21
  %i.h = load ptr, ptr %2, align 8, !tbaa !71
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @b3HullMap_insert(ptr dead_on_unwind nonnull writable sret(%struct.b3HullMap_itr) align 8 %3, ptr noundef %i.b, ptr noundef %1, i32 noundef 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %.0
}

declare void @b3DestroyHull(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @b3RemoveHullFromDatabase(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3HullMap_itr, align 8      ; 4 uses
  %3 = alloca %struct.b3HullMap_itr, align 8      ; 6 uses
  %4 = alloca %struct.b3HullMap_itr, align 8      ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @b3HullMap_get(ptr dead_on_unwind nonnull writable sret(%struct.b3HullMap_itr) align 8 %3, ptr noundef %i.b, ptr noundef %1) #21
  %i.c = load ptr, ptr %3, align 8, !tbaa !71     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !74
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !74
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.i = call zeroext i1 @b3HullMap_erase_itr_raw(ptr noundef %i.b, ptr noundef nonnull byval(%struct.b3HullMap_itr) align 8 %3) #21
  br i1 %i.i, label %bb.c, label %b3HullMap_erase_itr.exit

bb.c:                                             ; preds = %bb.b
  call void @b3HullMap_next(ptr dead_on_unwind nonnull writable sret(%struct.b3HullMap_itr) align 8 %4, ptr noundef nonnull byval(%struct.b3HullMap_itr) align 8 %2) #21
  br label %b3HullMap_erase_itr.exit

b3HullMap_erase_itr.exit:                         ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @b3DestroyHull(ptr noundef %i.h) #21
  br label %bb.d

bb.d:                                             ; preds = %b3HullMap_erase_itr.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @b3GetUnlockedWorldFromId(i32 %0) local_unnamed_addr #3 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4768 x i8], ptr @b3_worlds, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !76, !range !77, !noundef !78
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr i8, ptr %i.c, i64 -4768
  %.0 = select i1 %i.f, ptr null, ptr %i.g
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @b3GetWorldFromId(i32 %0) local_unnamed_addr #4 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4768 x i8], ptr @b3_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -4768
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @b3GetWorld(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [4768 x i8], ptr @b3_worlds, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @b3GetUnlockedWorld(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [4768 x i8], ptr @b3_worlds, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4763
  %i.d = load i8, ptr %i.c, align 1, !tbaa !76, !range !77, !noundef !78
  %i.e = trunc nuw i8 %i.d to i1
  %. = select i1 %i.e, ptr null, ptr %i.b
  ret ptr %.
}

; Function Attrs: nounwind uwtable
define range(i32 0, -65407) i32 @b3CreateWorld(ptr noundef %0) local_unnamed_addr #0 {
vector.ph:
  %1 = alloca %struct.b3Stack, align 8            ; 4 uses
  %2 = alloca %struct.b3IdPool, align 8           ; 4 uses
  %3 = alloca %struct.b3IdPool, align 8           ; 4 uses
  %4 = alloca %struct.b3IdPool, align 8           ; 4 uses
  %5 = alloca %struct.b3NameCache, align 8        ; 4 uses
  %6 = alloca %struct.b3IdPool, align 8           ; 4 uses
  %7 = alloca %struct.b3IdPool, align 8           ; 4 uses
  %8 = alloca %struct.b3IdPool, align 8           ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 18 uses
  %i.a = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4767
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 9535
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 14303
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 19071
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 23839
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 28607
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 33375
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 38143
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 42911
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 47679
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 52447
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 57215
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 61983
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 66751
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 71519
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 76287
  %i.ag = load i8, ptr %i.q, align 1, !tbaa !359
  %i.ah = load i8, ptr %i.r, align 1, !tbaa !359
  %i.ai = load i8, ptr %i.s, align 1, !tbaa !359
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !359
  %i.ak = load i8, ptr %i.u, align 1, !tbaa !359
  %i.al = load i8, ptr %i.v, align 1, !tbaa !359
  %i.am = load i8, ptr %i.w, align 1, !tbaa !359
  %i.an = load i8, ptr %i.x, align 1, !tbaa !359
  %i.ao = load i8, ptr %i.y, align 1, !tbaa !359
  %i.ap = load i8, ptr %i.z, align 1, !tbaa !359
  %i.aq = load i8, ptr %i.aa, align 1, !tbaa !359
  %i.ar = load i8, ptr %i.ab, align 1, !tbaa !359
  %i.as = load i8, ptr %i.ac, align 1, !tbaa !359
  %i.at = load i8, ptr %i.ad, align 1, !tbaa !359
  %i.au = load i8, ptr %i.ae, align 1, !tbaa !359
  %i.av = load i8, ptr %i.af, align 1, !tbaa !359
  %i.aw = insertelement <16 x i8> poison, i8 %i.ag, i64 0
  %i.ax = insertelement <16 x i8> %i.aw, i8 %i.ah, i64 1
  %i.ay = insertelement <16 x i8> %i.ax, i8 %i.ai, i64 2
  %i.az = insertelement <16 x i8> %i.ay, i8 %i.aj, i64 3
  %i.ba = insertelement <16 x i8> %i.az, i8 %i.ak, i64 4
  %i.bb = insertelement <16 x i8> %i.ba, i8 %i.al, i64 5
  %i.bc = insertelement <16 x i8> %i.bb, i8 %i.am, i64 6
  %i.bd = insertelement <16 x i8> %i.bc, i8 %i.an, i64 7
  %i.be = insertelement <16 x i8> %i.bd, i8 %i.ao, i64 8
  %i.bf = insertelement <16 x i8> %i.be, i8 %i.ap, i64 9
  %i.bg = insertelement <16 x i8> %i.bf, i8 %i.aq, i64 10
  %i.bh = insertelement <16 x i8> %i.bg, i8 %i.ar, i64 11
  %i.bi = insertelement <16 x i8> %i.bh, i8 %i.as, i64 12
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 13
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 14
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 15
  %.fr = freeze <16 x i8> %i.bl
  %i.bm = icmp eq <16 x i8> %.fr, zeroinitializer ; 2 uses
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %.not447 = icmp eq i16 %i.bn, 0
  br i1 %.not447, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bo = icmp eq i64 %index.next, 128
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !358

vector.early.exit:                                ; preds = %vector.body
  %i.bp = insertelement <2 x ptr> poison, ptr %i.o, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.p, i64 1
  %i.br = getelementptr inbounds nuw i8, <2 x ptr> %i.bq, <2 x i64> <i64 66752, i64 71520>
  %i.bs = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %i.l, i64 1
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %i.m, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %i.n, i64 3
  %i.bw = getelementptr inbounds nuw i8, <4 x ptr> %i.bv, <4 x i64> <i64 47680, i64 52448, i64 57216, i64 61984>
  %i.bx = insertelement <8 x ptr> poison, ptr %i.c, i64 0
  %i.by = insertelement <8 x ptr> %i.bx, ptr %i.d, i64 1
  %i.bz = insertelement <8 x ptr> %i.by, ptr %i.e, i64 2
  %i.ca = insertelement <8 x ptr> %i.bz, ptr %i.f, i64 3
  %i.cb = insertelement <8 x ptr> %i.ca, ptr %i.g, i64 4
  %i.cc = insertelement <8 x ptr> %i.cb, ptr %i.h, i64 5
  %i.cd = insertelement <8 x ptr> %i.cc, ptr %i.i, i64 6
  %i.ce = insertelement <8 x ptr> %i.cd, ptr %i.j, i64 7
  %i.cf = getelementptr inbounds nuw i8, <8 x ptr> %i.ce, <8 x i64> <i64 9536, i64 14304, i64 19072, i64 23840, i64 28608, i64 33376, i64 38144, i64 42912>
  %i.cg = insertelement <2 x ptr> poison, ptr %i.a, i64 0
  %i.ch = insertelement <2 x ptr> %i.cg, ptr %i.b, i64 1
  %i.ci = getelementptr inbounds nuw i8, <2 x ptr> %i.ch, <2 x i64> <i64 0, i64 4768>
  %i.cj = shufflevector <2 x ptr> %i.ci, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ck = shufflevector <8 x ptr> %i.cf, <8 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cl = shufflevector <16 x ptr> %i.cj, <16 x ptr> %i.ck, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x ptr> %i.bw, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <16 x ptr> %i.cl, <16 x ptr> %i.cm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison>
  %i.co = shufflevector <2 x ptr> %i.br, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cp = shufflevector <16 x ptr> %i.cn, <16 x ptr> %i.co, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bm, i1 false) ; 2 uses
  %i.cq = extractelement <16 x ptr> %i.cp, i64 %first.active.lane ; 90 uses
  %i.cr = add i64 %index, %first.active.lane      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4767
  %i.ct = trunc nuw nsw i64 %i.cr to i32
  %i.cu = atomicrmw add ptr @b3_worldCount, i32 1 seq_cst, align 4
  %i.cv = load i32, ptr @b3_maxWorldCount, align 4, !tbaa !82
  %i.cw = add nsw i32 %i.cu, 1
  %i.cx = tail call noundef i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  store i32 %i.cx, ptr @b3_maxWorldCount, align 4, !tbaa !82
  tail call void @b3InitializeContactRegisters() #21
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 4488 ; 3 uses
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4768) %i.cq, i8 0, i64 4768, i1 false)
  %i.da = trunc i64 %i.cr to i16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 4760
  store i16 %i.da, ptr %i.db, align 8, !tbaa !84
  store i16 %i.cz, ptr %i.cy, align 8, !tbaa !83
  store i8 1, ptr %i.cs, align 1, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @b3CreateStack(ptr dead_on_unwind nonnull writable sret(%struct.b3Stack) align 8 %1, i32 noundef 2048) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %i.cq, ptr noundef nonnull align 8 dereferenceable(800) %1, i64 800, i1 false), !tbaa.struct !360
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 3844 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !87 ; 2 uses
  %i.de = icmp slt i32 %i.dd, 16
  br i1 %i.de, label %bb.a, label %bb.b

middle.block:                                     ; preds = %vector.body.interim
  tail call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef 128) #21
  br label %bb.bc

bb.a:                                             ; preds = %vector.early.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 3832 ; 2 uses
  %i.dg = mul i32 %i.dd, 40
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.di = call ptr @b3GrowAlloc(ptr noundef %i.dh, i32 noundef %i.dg, i32 noundef 640) #21
  store ptr %i.di, ptr %i.df, align 8, !tbaa !88
  store i32 16, ptr %i.dc, align 4, !tbaa !87
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %vector.early.exit
  %i.dj = call ptr @b3CreateMutex() #21
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 3848
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !89
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cq, i64 800
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  call void @b3CreateBroadPhase(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dm) #21
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cq, i64 1144
  call void @b3CreateGraph(ptr noundef nonnull %i.dn, i32 noundef 16) #21
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 3856
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @b3CreateIdPool(ptr dead_on_unwind nonnull writable sret(%struct.b3IdPool) align 8 %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !364
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 6 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !365
  %i.dt = add nsw i32 %i.ds, %i.dq
  %i.du = call noundef i32 @llvm.smax.i32(i32 %i.dt, i32 16) ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cq, i64 3892 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !90 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.du
  br i1 %i.dx, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 3880 ; 2 uses
  %i.dz = shl i32 %i.dw, 7
  %i.ea = shl i32 %i.du, 7
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !91
  %i.ec = call ptr @b3GrowAlloc(ptr noundef %i.eb, i32 noundef %i.dz, i32 noundef %i.ea) #21
  store ptr %i.ec, ptr %i.dy, align 8, !tbaa !91
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !90
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cq, i64 3920 ; 14 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 3932 ; 8 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !92 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 8
  br i1 %i.eg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.eh = mul i32 %i.ef, 88
  %i.ei = load ptr, ptr %i.ed, align 16, !tbaa !93
  %i.ej = call ptr @b3GrowAlloc(ptr noundef %i.ei, i32 noundef %i.eh, i32 noundef 704) #21
  store ptr %i.ej, ptr %i.ed, align 16, !tbaa !93
  store i32 8, ptr %i.ee, align 4, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cq, i64 3896 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @b3CreateIdPool(ptr dead_on_unwind nonnull writable sret(%struct.b3IdPool) align 8 %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !362
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.el = call i32 @b3AllocId(ptr noundef nonnull %i.ek) #21
  %i.em = getelementptr inbounds nuw i8, ptr %i.cq, i64 3928 ; 9 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !94 ; 2 uses
  %i.eo = load i32, ptr %i.ee, align 4, !tbaa !92 ; 4 uses
  %.not = icmp slt i32 %i.en, %i.eo
  %.pre = load ptr, ptr %i.ed, align 16, !tbaa !93 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ep = mul i32 %i.eo, 88
  %i.eq = icmp eq i32 %i.eo, 0
  %i.er = shl nsw i32 %i.eo, 1
  %spec.select = select i1 %i.eq, i32 8, i32 %i.er ; 2 uses
  %i.es = mul i32 %spec.select, 88
  %i.et = call ptr @b3GrowAlloc(ptr noundef %.pre, i32 noundef %i.ep, i32 noundef %i.es) #21 ; 2 uses
  store ptr %i.et, ptr %i.ed, align 16, !tbaa !93
  store i32 %spec.select, ptr %i.ee, align 4, !tbaa !92
  %.pre384 = load i32, ptr %i.em, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.eu = phi i32 [ %.pre384, %bb.g ], [ %i.en, %bb.f ] ; 2 uses
  %i.ev = phi ptr [ %i.et, %bb.g ], [ %.pre, %bb.f ]
  %i.ew = add nsw i32 %i.eu, 1
  store i32 %i.ew, ptr %i.em, align 8, !tbaa !94
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds [88 x i8], ptr %i.ev, i64 %i.ex ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ey, i8 0, i64 80, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  store i32 %i.el, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !82
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 84
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %i.ez = load ptr, ptr %i.ed, align 16, !tbaa !93 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !104 ; 2 uses
  %i.fc = load i32, ptr %i.dp, align 8, !tbaa !364
  %i.fd = call noundef i32 @llvm.smax.i32(i32 %i.fc, i32 16) ; 2 uses
  %i.fe = icmp slt i32 %i.fb, %i.fd
  br i1 %i.fe, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ff = mul i32 %i.fb, 216
  %i.fg = mul i32 %i.fd, 216
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !105
  %i.fi = call ptr @b3GrowAlloc(ptr noundef %i.fh, i32 noundef %i.ff, i32 noundef %i.fg) #21
  %i.fj = load ptr, ptr %i.ed, align 16, !tbaa !93 ; 2 uses
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !105
  %i.fk = load i32, ptr %i.dp, align 8, !tbaa !364
  %i.fl = call noundef i32 @llvm.smax.i32(i32 %i.fk, i32 16)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !104
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fn = call i32 @b3AllocId(ptr noundef nonnull %i.ek) #21
  %i.fo = load i32, ptr %i.em, align 8, !tbaa !94 ; 2 uses
  %i.fp = load i32, ptr %i.ee, align 4, !tbaa !92 ; 4 uses
  %.not369 = icmp slt i32 %i.fo, %i.fp
  %.pre385 = load ptr, ptr %i.ed, align 16, !tbaa !93 ; 2 uses
  br i1 %.not369, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fq = mul i32 %i.fp, 88
  %i.fr = icmp eq i32 %i.fp, 0
  %i.fs = shl nsw i32 %i.fp, 1
  %spec.select374 = select i1 %i.fr, i32 8, i32 %i.fs ; 2 uses
end_hunk_0
