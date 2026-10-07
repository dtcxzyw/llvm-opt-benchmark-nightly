Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/body?download=true
inline.NumInlined: 207
inline.NumDeleted: 28
begin_hunk_0_@b2RemoveBodySim:bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [104 x i8], ptr %i.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %2, ptr %i.p, align 4, !tbaa !28
  %i.q = load i32, ptr %i.a, align 8, !tbaa !12
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @b2GetBodyFullId(ptr nofree noundef readonly captures(none) %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = shl i64 %1, 32
  %sext = add i64 %i.c, -4294967296
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr inbounds [104 x i8], ptr %i.b, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !82
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [88 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [96 x i8], ptr %i.g, i64 %i.j ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.k, align 4, !tbaa !15
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !15
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [104 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !82
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [88 x i8], ptr %i.f, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [96 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.o, align 4, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !15
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.2.0.copyload.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @b2MakeBodyId(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [104 x i8], ptr %i.b, i64 %i.c
  %i.e = add nsw i32 %1, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.g = load i16, ptr %i.f, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.i = load i16, ptr %i.h, align 8, !tbaa !94
  %.sroa.3.0.insert.ext = zext i16 %i.i to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 48
  %.sroa.2.0.insert.ext = zext i16 %i.g to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.e to i64
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, %.sroa.3.0.insert.shift
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @b2GetBodySim(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !82
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [88 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [96 x i8], ptr %i.g, i64 %i.j
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @b2GetBodyState(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2SyncBodyFlags(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = and i32 %i.b, -105                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [88 x i8], ptr %i.e, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds [96 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  store i32 %i.c, ptr %i.o, align 4, !tbaa !97
  %i.p = icmp eq i32 %i.g, 2
  br i1 %i.p, label %b2GetBodyState.exit, label %b2GetBodyState.exit.thread

b2GetBodyState.exit:                              ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !95   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %b2GetBodyState.exit.thread, label %bb.b

bb.b:                                             ; preds = %b2GetBodyState.exit
  %i.s = getelementptr inbounds [32 x i8], ptr %i.r, i64 %i.m
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.c, ptr %i.t, align 4, !tbaa !99
  br label %b2GetBodyState.exit.thread

b2GetBodyState.exit.thread:                       ; preds = %bb.a, %bb.b, %b2GetBodyState.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @b2CreateBody(i32 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.b2RecArgs_CreateBody, align 8 ; 6 uses
  %i.a = tail call ptr @b2GetWorldFromId(i32 %0) #13 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2739
  %i.c = load i8, ptr %i.b, align 1, !tbaa !175, !range !100, !noundef !101
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.f = load i8, ptr %i.e, align 4, !tbaa !178, !range !100, !noundef !101
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.i = load i8, ptr %i.h, align 1, !tbaa !179, !range !100, !noundef !101
  %3 = trunc nuw i8 %i.i to i1
  br i1 %3, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 78
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !180, !range !100
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.k = load i8, ptr %i.j, align 2, !tbaa !180, !range !100, !noundef !101 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.m = phi i8 [ %.pre, %._crit_edge ], [ %i.k, %bb.d ]
  %i.n = phi i1 [ false, %._crit_edge ], [ %i.l, %bb.d ]
  %4 = trunc nuw i8 %i.m to i1
  br i1 %4, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %1, align 8, !tbaa !181
  %i.p = icmp eq i32 %i.o, 0                      ; 2 uses
  %brmerge = select i1 %i.p, i1 true, i1 %i.n
  %.mux = select i1 %i.p, i32 0, i32 2
  br i1 %brmerge, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1936
  %i.r = tail call i32 @b2AllocId(ptr noundef nonnull %i.q) #13 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1960 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1968 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !182
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1972 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !183  ; 4 uses
  %.not = icmp slt i32 %i.r, %i.x
  %.pre183 = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = mul nsw i32 %i.x, 88
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = shl nsw i32 %i.x, 1
  %spec.select = select i1 %i.z, i32 8, i32 %i.aa ; 2 uses
  %i.ab = mul nsw i32 %spec.select, 88
  %i.ac = sext i32 %i.y to i64
  %i.ad = sext i32 %i.ab to i64
  %i.ae = tail call ptr @b2GrowAlloc(ptr noundef %.pre183, i64 noundef %i.ac, i64 noundef %i.ad) #13 ; 2 uses
  store ptr %i.ae, ptr %i.s, align 8, !tbaa !81
  store i32 %spec.select, ptr %i.w, align 4, !tbaa !183
  %.pre184 = load i32, ptr %i.t, align 8, !tbaa !182
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi i32 [ %.pre184, %bb.i ], [ %i.r, %bb.h ]
  %i.ag = phi ptr [ %i.ae, %bb.i ], [ %.pre183, %bb.h ]
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [88 x i8], ptr %i.ag, i64 %i.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ai, i8 0, i64 88, i1 false)
  %i.aj = load i32, ptr %i.t, align 8, !tbaa !182
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.t, align 8, !tbaa !182
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.am = sext i32 %i.r to i64
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i32 %i.r, ptr %i.ao, align 8, !tbaa !102
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.k
  %.0 = phi i32 [ %i.r, %bb.k ], [ 1, %bb.e ], [ %.mux, %bb.f ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1896
  %i.aq = tail call i32 @b2AllocId(ptr noundef nonnull %i.ap) #13 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !184, !range !100, !noundef !101
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.au = load i8, ptr %i.at, align 1, !tbaa !185, !range !100, !noundef !101
  %i.av = shl nuw nsw i8 %i.au, 1
  %i.aw = or disjoint i8 %i.av, %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !186, !range !100, !noundef !101
  %i.az = shl nuw nsw i8 %i.ay, 2
  %i.ba = or disjoint i8 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 1960
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !81
  %i.bd = sext i32 %.0 to i64
  %i.be = getelementptr inbounds [88 x i8], ptr %i.bc, i64 %i.bd ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !16 ; 2 uses
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !16 ; 4 uses
  %.not.i = icmp slt i32 %i.bh, %i.bi
  %.pre.i = load ptr, ptr %i.be, align 8, !tbaa !187 ; 2 uses
  br i1 %.not.i, label %b2EmplaceHelper.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = mul nsw i32 %i.bi, 96
  %i.bk = icmp eq i32 %i.bi, 0
  %i.bl = shl nsw i32 %i.bi, 1
  %i.bm = select i1 %i.bk, i32 8, i32 %i.bl       ; 2 uses
  %i.bn = mul nsw i32 %i.bm, 96
  %i.bo = sext i32 %i.bj to i64
  %i.bp = sext i32 %i.bn to i64
  %i.bq = tail call ptr @b2GrowAlloc(ptr noundef %.pre.i, i64 noundef %i.bo, i64 noundef %i.bp) #13 ; 2 uses
  store ptr %i.bq, ptr %i.be, align 8, !tbaa !187
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !16
  %.pre17.i = load i32, ptr %i.bf, align 8, !tbaa !16
  br label %b2EmplaceHelper.exit

b2EmplaceHelper.exit:                             ; preds = %bb.l, %bb.m
  %i.br = phi i32 [ %.pre17.i, %bb.m ], [ %i.bh, %bb.l ] ; 2 uses
  %i.bs = phi ptr [ %i.bq, %bb.m ], [ %.pre.i, %bb.l ]
  %i.bt = add nsw i32 %i.br, 1
  store i32 %i.bt, ptr %i.bf, align 8, !tbaa !16
  %i.bu = mul nsw i32 %i.br, 96
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.bw, i8 0, i64 96, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 4, !tbaa !15
  store i64 %i.by, ptr %i.bw, align 4, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cb = load i64, ptr %i.ca, align 4, !tbaa !15 ; 2 uses
  store i64 %i.cb, ptr %i.bz, align 4, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cd = load i64, ptr %i.bx, align 4, !tbaa !15 ; 2 uses
  store i64 %i.cd, ptr %i.cc, align 4, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 %i.cb, ptr %i.ce, align 4, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i64 %i.cd, ptr %i.cf, align 4, !tbaa !15
  %i.cg = tail call float @b2GetLengthUnitsPerMeter() #13
  %i.ch = fmul float %i.cg, 1.000000e+05
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 68
  store float %i.ch, ptr %i.ci, align 4, !tbaa !103
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store float 0.000000e+00, ptr %i.cj, align 4, !tbaa !104
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 76
  %i.cm = load <2 x float>, ptr %i.ck, align 8, !tbaa !15
  store <2 x float> %i.cm, ptr %i.cl, align 4, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.co = load float, ptr %i.cn, align 8, !tbaa !188
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 84
  store float %i.co, ptr %i.cp, align 4, !tbaa !105
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  store i32 %i.aq, ptr %i.cq, align 4, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 92 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !189, !range !100, !noundef !101
  %i.cu = shl nuw nsw i8 %i.ct, 4
  %i.cv = or disjoint i8 %i.cu, %i.ba
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 79
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !190, !range !100, !noundef !101
  %i.cy = shl nuw i8 %i.cx, 7
  %i.cz = or disjoint i8 %i.cy, %i.cv
  %i.da = zext i8 %i.cz to i32
  %i.db = load i32, ptr %1, align 8, !tbaa !181
  %i.dc = icmp eq i32 %i.db, 2
  %i.dd = select i1 %i.dc, i32 512, i32 0
  %i.de = or disjoint i32 %i.dd, %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !179, !range !100, !noundef !101
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 11
  %i.dj = or disjoint i32 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !191, !range !100, !noundef !101
  %i.dm = zext nneg i8 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 12
  %i.do = or disjoint i32 %i.dn, %i.dj
  store i32 %i.do, ptr %i.cr, align 4, !tbaa !97
  %i.dp = icmp eq i32 %.0, 2
  br i1 %i.dp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %b2EmplaceHelper.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 2 uses
  %i.dt = load i32, ptr %i.dr, align 8, !tbaa !16 ; 2 uses
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !16 ; 4 uses
  %.not.i177 = icmp slt i32 %i.dt, %i.du
  %.pre.i178 = load ptr, ptr %i.dq, align 8, !tbaa !187 ; 2 uses
  br i1 %.not.i177, label %b2EmplaceHelper.exit180, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = shl nsw i32 %i.du, 5
  %i.dw = icmp eq i32 %i.du, 0
  %i.dx = shl nsw i32 %i.du, 1
  %i.dy = select i1 %i.dw, i32 8, i32 %i.dx       ; 2 uses
  %i.dz = shl nsw i32 %i.dy, 5
  %i.ea = sext i32 %i.dv to i64
  %i.eb = sext i32 %i.dz to i64
  %i.ec = tail call ptr @b2GrowAlloc(ptr noundef %.pre.i178, i64 noundef %i.ea, i64 noundef %i.eb) #13 ; 2 uses
  store ptr %i.ec, ptr %i.dq, align 8, !tbaa !187
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !16
  %.pre17.i179 = load i32, ptr %i.dr, align 8, !tbaa !16
  br label %b2EmplaceHelper.exit180

b2EmplaceHelper.exit180:                          ; preds = %bb.n, %bb.o
  %i.ed = phi i32 [ %.pre17.i179, %bb.o ], [ %i.dt, %bb.n ] ; 2 uses
  %i.ee = phi ptr [ %i.ec, %bb.o ], [ %.pre.i178, %bb.n ]
  %i.ef = add nsw i32 %i.ed, 1
  store i32 %i.ef, ptr %i.dr, align 8, !tbaa !16
  %i.eg = shl nsw i32 %i.ed, 5
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ei, i8 0, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ek = load i64, ptr %i.ej, align 4, !tbaa !15
  store i64 %i.ek, ptr %i.ei, align 4, !tbaa !15
end_hunk_0
begin_hunk_1_@b2DestroyBody:bb.a
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !121 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !119
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16 ; 2 uses
  %i.bq = sext i32 %i.bh to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bq
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !16
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.bt = sext i32 %i.bp to i64
  %i.bu = getelementptr inbounds [104 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store i32 %i.bh, ptr %i.bv, align 8, !tbaa !109
  %i.bw = load i32, ptr %i.bk, align 8, !tbaa !119
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %i.bk, align 8, !tbaa !119
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !122
  call void @b2DestroyIsland(ptr noundef nonnull %i.c, i32 noundef %i.ca) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @b2ValidateIsland(ptr noundef nonnull %i.c, i32 noundef %i.ba) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 -1, ptr %i.az, align 4, !tbaa !123
  store i32 -1, ptr %i.bg, align 8, !tbaa !109
  br label %b2RemoveBodyFromIsland.exit

b2RemoveBodyFromIsland.exit:                      ; preds = %._crit_edge79, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !81
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !82
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [88 x i8], ptr %i.cc, i64 %i.cf ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !28 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !12
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !13 ; 2 uses
  %i.cm = sext i32 %i.ci to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [96 x i8], ptr %i.cl, i64 %i.cm
  %i.co = sext i32 %i.ck to i64
  %i.cp = getelementptr [96 x i8], ptr %i.cl, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.cn, ptr noundef nonnull align 4 dereferenceable(96) %i.cq, i64 96, i1 false), !tbaa.struct !17
  %i.cr = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.cs = load ptr, ptr %i.cg, align 8, !tbaa !13
  %i.ct = getelementptr inbounds [96 x i8], ptr %i.cs, i64 %i.cm
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !25
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [104 x i8], ptr %i.cr, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 %i.ci, ptr %i.cy, align 4, !tbaa !28
  %i.cz = load i32, ptr %i.cj, align 8, !tbaa !12
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.cj, align 8, !tbaa !12
  %i.db = load i32, ptr %i.cd, align 8, !tbaa !82
  %i.dc = icmp eq i32 %i.db, 2
  br i1 %i.dc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %b2RemoveBodyFromIsland.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !95 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.dg = load i32, ptr %i.ch, align 4, !tbaa !28 ; 2 uses
  %i.dh = load i32, ptr %i.df, align 8, !tbaa !16
  %i.di = add nsw i32 %i.dh, -1                   ; 3 uses
  store i32 %i.di, ptr %i.df, align 8, !tbaa !16
  %.not.i66 = icmp eq i32 %i.dg, %i.di
  br i1 %.not.i66, label %b2RemoveHelper.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = shl nsw i32 %i.dg, 5
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.de, i64 %i.dk
  %i.dm = shl nsw i32 %i.di, 5
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.de, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dl, ptr noundef nonnull align 1 dereferenceable(32) %i.do, i64 32, i1 false)
  br label %b2RemoveHelper.exit

bb.q:                                             ; preds = %b2RemoveBodyFromIsland.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !102 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 2
  %i.ds = icmp eq i32 %i.da, 0
  %or.cond = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond, label %bb.r, label %b2RemoveHelper.exit

bb.r:                                             ; preds = %bb.q
  call void @b2DestroySolverSet(ptr noundef nonnull %i.c, i32 noundef %i.dq) #13
  br label %b2RemoveHelper.exit

b2RemoveHelper.exit:                              ; preds = %bb.p, %bb.o, %bb.q, %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 1896
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !110
  call void @b2FreeId(ptr noundef nonnull %i.dt, i32 noundef %i.dv) #13
  store i32 -1, ptr %i.cd, align 8, !tbaa !82
  store i32 -1, ptr %i.ch, align 4, !tbaa !28
  store i32 -1, ptr %i.du, align 4, !tbaa !110
  call void @b2ValidateSolverSets(ptr noundef nonnull %i.c) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %b2RemoveHelper.exit
  ret void
}

declare ptr @b2GetWorldLocked(i32 noundef) local_unnamed_addr #6

declare void @b2RecWrite_DestroyBody(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b2DestroyJointInternal(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b2DestroySensor(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b2DestroyShapeProxy(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b2FreeId(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @b2FreeChainData(ptr noundef) local_unnamed_addr #6

declare void @b2DestroySolverSet(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @b2Body_GetContactCapacity(i64 %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorldLocked(i32 noundef %i.b) #13 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.g = shl i64 %0, 32
  %sext.i = add i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext.i, 32
  %i.i = getelementptr inbounds [104 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !212
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @b2Body_GetContactData(i64 %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.sroa.242.0.extract.shift = lshr i64 %0, 32    ; 2 uses
  %.sroa.242.0.extract.trunc = trunc i64 %.sroa.242.0.extract.shift to i16 ; 3 uses
  %i.a = trunc nuw i64 %.sroa.242.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorldLocked(i32 noundef %i.b) #13 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.g = shl i64 %0, 32
  %sext.i = add i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext.i, 32
  %i.i = getelementptr inbounds [104 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.04750 = load i32, ptr %i.j, align 4, !tbaa !16 ; 2 uses
  %i.k = icmp ne i32 %.04750, -1
  %i.l = icmp sgt i32 %2, 0
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2040
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2144
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.04752 = phi i32 [ %.04750, %.lr.ph ], [ %.047, %bb.e ] ; 2 uses
  %.04851 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ] ; 3 uses
  %i.p = ashr i32 %.04752, 1
  %i.q = and i32 %.04752, 1
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [64 x i8], ptr %i.r, i64 %i.s ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i32, ptr %i.u, align 4, !tbaa !214
  %.not = trunc i32 %i.v to i1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !136  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !144
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [296 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !145
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [296 x i8], ptr %i.w, i64 %i.ad ; 2 uses
  %i.af = sext i32 %.04851 to i64
  %i.ag = getelementptr inbounds [140 x i8], ptr %1, i64 %i.af ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !215
  %i.aj = add nsw i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !216
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !16
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i16 %.sroa.242.0.extract.trunc, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !125
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store i16 0, ptr %.sroa.36.0..sroa_idx, align 2, !tbaa !125
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.al, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.an = load i32, ptr %i.aa, align 8, !tbaa !141
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !146
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i16 %.sroa.242.0.extract.trunc, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !125
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 18
  store i16 %i.aq, ptr %.sroa.33.0..sroa_idx, align 2, !tbaa !125
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.as = load i32, ptr %i.ae, align 8, !tbaa !141
  %i.at = add nsw i32 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 288
  %i.av = load i16, ptr %i.au, align 8, !tbaa !146
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i16 %.sroa.242.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !125
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 26
  store i16 %i.av, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !125
  %i.aw = tail call ptr @b2GetContactSim(ptr noundef nonnull %i.c, ptr noundef nonnull %i.t) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.ax, ptr noundef nonnull align 4 dereferenceable(112) %i.ay, i64 112, i1 false), !tbaa.struct !217
  %i.az = add nsw i32 %.04851, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.az, %bb.d ], [ %.04851, %bb.c ] ; 3 uses
  %i.ba = zext nneg i32 %i.q to i64
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.047 = load i32, ptr %i.bc, align 4, !tbaa !16 ; 2 uses
  %i.bd = icmp ne i32 %.047, -1
  %i.be = icmp slt i32 %.1, %2
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.c, label %.loopexit, !llvm.loop !213

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1, %bb.e ]
  ret i32 %.0
}

declare ptr @b2GetContactSim(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b2Body_ComputeAABB(i64 %0) local_unnamed_addr #9 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorldLocked(i32 noundef %i.b) #13 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = shl i64 %0, 32
  %sext.i = add i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext.i, 32
  %i.i = getelementptr inbounds [104 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !147  ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !110
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [104 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !82
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.r, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !28
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [96 x i8], ptr %i.w, i64 %i.z
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.aa, align 4, !tbaa !15 ; 2 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !136 ; 2 uses
  %i.ad = sext i32 %i.k to i64
  %i.ae = getelementptr inbounds [296 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.af, align 8, !tbaa !15 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !148 ; 2 uses
  %.not34 = icmp eq i32 %i.ah, -1
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.ai = phi i32 [ %i.au, %.lr.ph ], [ %i.ah, %bb.d ]
  %.sroa.8.036 = phi <2 x float> [ %i.as, %.lr.ph ], [ %.sroa.8.0.copyload, %bb.d ] ; 2 uses
  %.sroa.022.035 = phi <2 x float> [ %i.aq, %.lr.ph ], [ %.sroa.022.0.copyload, %bb.d ] ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [296 x i8], ptr %i.ac, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load <2 x float>, ptr %i.al, align 8    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.ao = load <2 x float>, ptr %i.an, align 8    ; 2 uses
  %i.ap = fcmp olt <2 x float> %.sroa.022.035, %i.am
  %i.aq = select <2 x i1> %i.ap, <2 x float> %.sroa.022.035, <2 x float> %i.am ; 2 uses
  %i.ar = fcmp ogt <2 x float> %.sroa.8.036, %i.ao
  %i.as = select <2 x i1> %i.ar, <2 x float> %.sroa.8.036, <2 x float> %i.ao ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !148 ; 2 uses
  %.not = icmp eq i32 %i.au, -1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !218

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a
  %.sroa.022.2 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.022.0.copyload, %bb.d ], [ %i.aq, %.lr.ph ]
  %.sroa.8.2 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.8.0.copyload, %bb.d ], [ %i.as, %.lr.ph ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.022.2, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.8.2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define hidden void @b2UpdateBodyMassData(ptr noundef %0, ptr nofree noundef captures(none) initializes((52, 60)) %1) local_unnamed_addr #9 {
bb.a:
  %2 = alloca %struct.b2MassData, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !82
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [88 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [96 x i8], ptr %i.g, i64 %i.j ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !96
  %i.n = and i32 %i.m, -1025
  store i32 %i.n, ptr %i.l, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store <2 x float> zeroinitializer, ptr %i.o, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store <2 x float> zeroinitializer, ptr %i.q, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store i64 0, ptr %i.s, align 4, !tbaa !15
  %i.t = tail call float @b2GetLengthUnitsPerMeter() #13
  %i.u = fmul float %i.t, 1.000000e+05
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 5 uses
  store float %i.u, ptr %i.v, align 4, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !104
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.y = load i32, ptr %i.x, align 4, !tbaa !113  ; 2 uses
  %.not = icmp eq i32 %i.y, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aa = load i64, ptr %i.k, align 4, !tbaa !15  ; 2 uses
  store i64 %i.aa, ptr %i.z, align 4, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.aa, ptr %i.ab, align 4, !tbaa !15
  %i.ac = icmp eq i32 %i.y, 1
  br i1 %i.ac, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@b2Body_GetWorld:bb.a

; Function Attrs: nounwind uwtable
define i32 @b2Body_GetShapeCount(i64 %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !149
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483648) i32 @b2Body_GetShapes(i64 %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i16
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.017 = load i32, ptr %i.i, align 4, !tbaa !16  ; 2 uses
  %i.j = icmp ne i32 %.017, -1
  %i.k = icmp sgt i32 %2, 0
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !136
  %i.o = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.019 = phi i32 [ %.017, %.lr.ph ], [ %.0, %bb.b ]
  %i.p = sext i32 %.019 to i64
  %i.q = getelementptr inbounds [296 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !141
  %i.s = add nsw i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.u = load i16, ptr %i.t, align 8, !tbaa !146
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store i32 %i.s, ptr %i.v, align 4, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i16 %.sroa.2.0.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  store i16 %i.u, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.0 = load i32, ptr %i.w, align 4, !tbaa !16    ; 2 uses
  %i.x = icmp ne i32 %.0, -1
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.o
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !253

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.016.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  ret i32 %.016.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @b2Body_GetJointCount(i64 %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !174
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483648) i32 @b2Body_GetJoints(i64 %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i16
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %.020 = load i32, ptr %i.i, align 4, !tbaa !16  ; 2 uses
  %i.j = icmp ne i32 %.020, -1
  %i.k = icmp sgt i32 %2, 0
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  %i.o = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.022 = phi i32 [ %.020, %.lr.ph ], [ %.0, %bb.b ] ; 2 uses
  %i.p = ashr i32 %.022, 1                        ; 2 uses
  %i.q = and i32 %.022, 1
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [72 x i8], ptr %i.n, i64 %i.r ; 2 uses
  %i.t = add nsw i32 %i.p, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = load i16, ptr %i.u, align 8, !tbaa !255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store i32 %i.t, ptr %i.w, align 4, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i16 %.sroa.2.0.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  store i16 %i.v, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.x = zext nneg i32 %i.q to i64
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %.0 = load i32, ptr %i.z, align 4, !tbaa !16    ; 2 uses
  %i.aa = icmp ne i32 %.0, -1
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.o
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !254

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ad = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.019.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit ]
  ret i32 %.019.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @b2ShouldBodiesCollide(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !113
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !113
  %.not26 = icmp eq i32 %i.d, 2
  br i1 %.not26, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !174
  %i.i = icmp slt i32 %i.f, %i.h                  ; 2 uses
  %. = select i1 %i.i, ptr %1, ptr %2
  %.29 = select i1 %i.i, ptr %2, ptr %1
  %.021.in = getelementptr inbounds nuw i8, ptr %.29, i64 76
  %.021 = load i32, ptr %.021.in, align 4, !tbaa !110
  %.022.in = getelementptr inbounds nuw i8, ptr %., i64 36
  %.130 = load i32, ptr %.022.in, align 4, !tbaa !16 ; 2 uses
  %.not2831 = icmp eq i32 %.130, -1
  br i1 %.not2831, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.132 = phi i32 [ %.130, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %i.l = ashr i32 %.132, 1
  %i.m = and i32 %.132, 1                         ; 2 uses
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [72 x i8], ptr %i.k, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 66
  %i.q = load i8, ptr %i.p, align 2, !tbaa !257, !range !100, !noundef !101
  %3 = trunc nuw i8 %i.q to i1
  br i1 %3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = xor i32 %i.m, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !169
  %i.w = icmp eq i32 %i.v, %.021
  br i1 %i.w, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = zext nneg i32 %i.m to i64
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %.1 = load i32, ptr %i.z, align 4, !tbaa !16    ; 2 uses
  %.not28 = icmp eq i32 %.1, -1
  br i1 %.not28, label %.critedge, label %bb.d, !llvm.loop !256

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.c, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.e ], [ true, %bb.f ]
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define float @b2Body_GetMinExtent(i64 %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [88 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [96 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.u = load float, ptr %i.t, align 4, !tbaa !103
  ret float %i.u
}

; Function Attrs: nounwind uwtable
define float @b2Body_GetMaxExtent(i64 %0) local_unnamed_addr #5 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [88 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [96 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load float, ptr %i.t, align 4, !tbaa !104
  ret float %i.u
}

; Function Attrs: nounwind uwtable
define float @b2Body_GetMaxExtentOrigin(i64 %0) local_unnamed_addr #9 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1960
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [88 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [96 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load float, ptr %i.t, align 4, !tbaa !104
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.w = load <2 x float>, ptr %i.v, align 4      ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.w
  %i.y = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.x)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.y)
  %i.z = fadd float %i.u, %sqrt.i
  ret float %i.z
}

declare ptr @b2CreateIsland(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @b2DestroyContact(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b2DestroyIsland(ptr noundef, i32 noundef) local_unnamed_addr #6

declare float @b2Atan2(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !131}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS9b2BodySim", !9, i64 0}
!11 = !{!"b2DynamicArray_b2BodySim", !10, i64 0, !6, i64 8, !6, i64 12}
!12 = !{!11, !6, i64 8}
!13 = !{!11, !10, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15, i64 36, i64 4, !15, i64 40, i64 4, !15, i64 44, i64 4, !15, i64 48, i64 4, !15, i64 52, i64 4, !15, i64 56, i64 4, !15, i64 60, i64 4, !15, i64 64, i64 4, !15, i64 68, i64 4, !15, i64 72, i64 4, !15, i64 76, i64 4, !15, i64 80, i64 4, !15, i64 84, i64 4, !15, i64 88, i64 4, !16, i64 92, i64 4, !16}
!18 = !{!"p1 _ZTS6b2Body", !9, i64 0}
!19 = !{!"b2DynamicArray_b2Body", !18, i64 0, !6, i64 8, !6, i64 12}
!20 = !{!19, !18, i64 0}
!21 = !{!"b2Vec2", !14, i64 0, !14, i64 4}
!22 = !{!"b2Rot", !14, i64 0, !14, i64 4}
!23 = !{!"b2Transform", !21, i64 0, !22, i64 8}
!24 = !{!"b2BodySim", !23, i64 0, !21, i64 16, !22, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !6, i64 88, !6, i64 92}
!25 = !{!24, !6, i64 88}
!26 = !{!"short", !5, i64 0}
!27 = !{!"b2Body", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !26, i64 88, !5, i64 90}
!28 = !{!27, !6, i64 12}
!29 = !{!"p1 omnipotent char", !9, i64 0}
!30 = !{!"p1 _ZTS12b2StackEntry", !9, i64 0}
!31 = !{!"b2DynamicArray_b2StackEntry", !30, i64 0, !6, i64 8, !6, i64 12}
!32 = !{!"b2Stack", !29, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !31, i64 24}
!33 = !{!"p1 int", !9, i64 0}
!34 = !{!"b2DynamicArray_int", !33, i64 0, !6, i64 8, !6, i64 12}
!35 = !{!"p1 _ZTS12b2MoveResult", !9, i64 0}
!36 = !{!"p1 _ZTS10b2MovePair", !9, i64 0}
!37 = !{!"b2AtomicInt", !6, i64 0}
!38 = !{!"p1 _ZTS9b2SetItem", !9, i64 0}
!39 = !{!"b2HashSet", !38, i64 0, !6, i64 8, !6, i64 12}
!40 = !{!"b2BroadPhase", !5, i64 0, !5, i64 216, !34, i64 264, !35, i64 280, !36, i64 288, !6, i64 296, !37, i64 300, !39, i64 304}
!41 = !{!"b2ConstraintGraph", !5, i64 0}
!42 = !{!"b2IdPool", !34, i64 0, !6, i64 16}
!43 = !{!"p1 _ZTS11b2SolverSet", !9, i64 0}
!44 = !{!"b2DynamicArray_b2SolverSet", !43, i64 0, !6, i64 8, !6, i64 12}
!45 = !{!"p1 _ZTS7b2Joint", !9, i64 0}
!46 = !{!"b2DynamicArray_b2Joint", !45, i64 0, !6, i64 8, !6, i64 12}
!47 = !{!"p1 _ZTS9b2Contact", !9, i64 0}
end_hunk_2
