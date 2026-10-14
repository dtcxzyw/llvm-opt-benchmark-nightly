Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LzmaDec?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@LzmaDec_DecodeReal2:bb.a

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.ago = add nsw i32 %spec.select.i, -1
  %i.agp = sub i64 %i.aft, %i.agn
  %i.agq = icmp ult i64 %i.aft, %i.agn
  %i.agr = select i1 %i.agq, i64 %i.agf, i64 0
  %i.ags = getelementptr i8, ptr %i.age, i64 %i.agp
  %i.agt = getelementptr i8, ptr %i.ags, i64 %i.agr
  %i.agu = load i8, ptr %i.agt, align 1, !tbaa !29
  %i.agv = getelementptr inbounds nuw i8, ptr %i.age, i64 %i.aft
  store i8 %i.agu, ptr %i.agv, align 1, !tbaa !29
  %i.agw = add i64 %i.aft, 1                      ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa172.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.agw, %.prol.loopexit.unr-lcssa ]
  %.141.i.unr = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.ago, %.prol.loopexit.unr-lcssa ]
  %.03340.i.unr = phi i64 [ %i.aft, %.lr.ph.i ], [ %i.agw, %.prol.loopexit.unr-lcssa ]
  %i.agx = icmp eq i64 %spec.select38.i, 1
  br i1 %i.agx, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.141.i = phi i32 [ %i.ahg, %.lr.ph.i.new ], [ %.141.i.unr, %.prol.loopexit ]
  %.03340.i = phi i64 [ %i.aho, %.lr.ph.i.new ], [ %.03340.i.unr, %.prol.loopexit ] ; 5 uses
  %i.agy = sub i64 %.03340.i, %i.agn
  %i.agz = icmp ult i64 %.03340.i, %i.agn
  %i.aha = select i1 %i.agz, i64 %i.agf, i64 0
  %i.ahb = getelementptr i8, ptr %i.age, i64 %i.agy
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 %i.aha
  %i.ahd = load i8, ptr %i.ahc, align 1, !tbaa !29
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.age, i64 %.03340.i
  store i8 %i.ahd, ptr %i.ahe, align 1, !tbaa !29
  %i.ahf = add i64 %.03340.i, 1                   ; 3 uses
  %i.ahg = add nsw i32 %.141.i, -2                ; 2 uses
  %i.ahh = sub i64 %i.ahf, %i.agn
  %i.ahi = icmp ult i64 %i.ahf, %i.agn
  %i.ahj = select i1 %i.ahi, i64 %i.agf, i64 0
  %i.ahk = getelementptr i8, ptr %i.age, i64 %i.ahh
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 %i.ahj
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !29
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.age, i64 %i.ahf
  store i8 %i.ahm, ptr %i.ahn, align 1, !tbaa !29
  %i.aho = add i64 %.03340.i, 2                   ; 2 uses
  %.not37.i.1 = icmp eq i32 %i.ahg, 0
  br i1 %.not37.i.1, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %._crit_edge42.i
  %.033.lcssa.i = phi i64 [ %i.aft, %._crit_edge42.i ], [ %.lcssa172.unr, %.prol.loopexit ], [ %i.aho, %.lr.ph.i.new ] ; 2 uses
  store i64 %.033.lcssa.i, ptr %i.l, align 8, !tbaa !24
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fb, %._crit_edge.i
  %i.ahp = phi i64 [ %i.aft, %bb.fb ], [ %.033.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ahq = icmp ult i64 %i.ahp, %1
  br i1 %i.ahq, label %bb.ff, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.fe
  %.pre68 = load i32, ptr %i.r, align 4, !tbaa !19
  br label %.critedge

bb.ff:                                            ; preds = %bb.fe
  %i.ahr = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.ahs = icmp ult ptr %i.ahr, %2
  %.pre69 = load i32, ptr %i.r, align 4, !tbaa !19 ; 2 uses
  %i.aht = icmp ult i32 %.pre69, 274
  %or.cond140 = select i1 %i.ahs, i1 %i.aht, i1 false
  br i1 %or.cond140, label %bb.b, label %.critedge, !llvm.loop !67

.critedge:                                        ; preds = %bb.ff, %..critedge_crit_edge
  %i.ahu = phi i32 [ %.pre68, %..critedge_crit_edge ], [ %.pre69, %bb.ff ]
  %i.ahv = icmp ugt i32 %i.ahu, 274
  br i1 %i.ahv, label %bb.fg, label %LzmaDec_WriteRem.exit

bb.fg:                                            ; preds = %.critedge
  store i32 274, ptr %i.r, align 4, !tbaa !19
  br label %LzmaDec_WriteRem.exit

LzmaDec_WriteRem.exit:                            ; preds = %bb.es, %bb.et, %bb.ev, %bb.aa, %.critedge, %bb.fg
  %.2 = phi i32 [ 0, %.critedge ], [ 0, %bb.fg ], [ 1, %bb.aa ], [ 1, %bb.ev ], [ 1, %bb.et ], [ 1, %bb.es ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @LzmaDec_DecodeToBuf(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !25
  %i.c = load i64, ptr %4, align 8, !tbaa !25
  store i64 0, ptr %2, align 8, !tbaa !25
  store i64 0, ptr %4, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.048 = phi ptr [ %3, %bb.a ], [ %i.aa, %bb.e ] ; 2 uses
  %.047 = phi ptr [ %1, %bb.a ], [ %i.y, %bb.e ]  ; 2 uses
  %.045 = phi i64 [ %i.b, %bb.a ], [ %i.x, %bb.e ] ; 3 uses
  %.044 = phi i64 [ %i.c, %bb.a ], [ %i.z, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %.044, ptr %i.a, align 8, !tbaa !25
  %i.g = load i64, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ 0, %bb.c ], [ %i.g, %bb.b ]    ; 5 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %.045, %i.k                 ; 2 uses
  %i.m = add i64 %i.j, %.045
  %.043 = select i1 %i.l, i64 %i.h, i64 %i.m
  %.042 = select i1 %i.l, i32 0, i32 %5
  %i.n = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %0, i64 noundef %.043, ptr noundef %.048, ptr noundef nonnull %i.a, i32 noundef %.042, ptr noundef %6)
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.p = load i64, ptr %4, align 8, !tbaa !25
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr %4, align 8, !tbaa !25
  %i.r = load i64, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.s = sub i64 %i.r, %i.j                       ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.047, ptr align 1 %i.u, i64 %i.s, i1 false)
  %i.v = load i64, ptr %2, align 8, !tbaa !25
  %i.w = add i64 %i.v, %i.s
  store i64 %i.w, ptr %2, align 8, !tbaa !25
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.x = sub i64 %.045, %i.s                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.047, i64 %i.s
  %i.z = sub i64 %.044, %i.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.048, i64 %i.o
  %i.ab = icmp ne i64 %i.r, %i.j
  %i.ac = icmp ne i64 %i.x, 0
  %or.cond.not = select i1 %i.ab, i1 %i.ac, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %or.cond.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.thread
  %.152 = phi i32 [ 1, %.thread ], [ 0, %bb.e ]
  ret i32 %.152
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaDec_FreeProbs(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #7
  store ptr null, ptr %i.c, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaDec_Free(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #7, !inline_history !45
  store ptr null, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  tail call void %i.e(ptr noundef %1, ptr noundef %i.g) #7, !inline_history !1
  store ptr null, ptr %i.f, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 5) i32 @LzmaProps_Decode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select, ptr %i.d, align 4, !tbaa !70
  %i.e = load i8, ptr %1, align 1, !tbaa !29      ; 4 uses
  %i.f = icmp ugt i8 %i.e, -32
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = udiv i8 %i.e, 9
  %i.h = udiv i8 %i.e, 45
  %.zext = zext nneg i8 %i.h to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.zext, ptr %i.i, align 4, !tbaa !71
  %3 = insertelement <2 x i8> poison, i8 %i.e, i64 0
  %4 = insertelement <2 x i8> %3, i8 %i.g, i64 1
  %5 = urem <2 x i8> %4, <i8 9, i8 5>
  %6 = zext nneg <2 x i8> %5 to <2 x i32>
  store <2 x i32> %6, ptr %0, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 4, %bb.a ], [ 4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @LzmaDec_AllocateProbs(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %LzmaProps_Decode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096)
  %i.d = load i8, ptr %1, align 1, !tbaa !29      ; 4 uses
  %i.e = icmp ugt i8 %i.d, -32
  br i1 %i.e, label %LzmaProps_Decode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = udiv i8 %i.d, 9
  %5 = udiv i8 %i.d, 45
  %i.f = zext nneg i8 %5 to i32
  %6 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %7 = insertelement <2 x i8> %6, i8 %4, i64 1
  %8 = urem <2 x i8> %7, <i8 9, i8 5>             ; 3 uses
  %9 = extractelement <2 x i8> %8, i64 0
  %10 = extractelement <2 x i8> %8, i64 1
  %narrow = add nuw nsw i8 %10, %9
  %11 = zext nneg i8 %narrow to i32
  %i.g = shl nuw nsw i32 768, %11
  %i.h = add nuw nsw i32 %i.g, 1846               ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !46
  %.not.i = icmp eq i32 %i.h, %i.m
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  tail call void %i.o(ptr noundef %3, ptr noundef %i.j) #7, !inline_history !2
  store ptr null, ptr %i.i, align 8, !tbaa !35
  %i.p = load ptr, ptr %3, align 8, !tbaa !47
  %i.q = shl nuw nsw i32 %i.h, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = tail call ptr %i.p(ptr noundef nonnull %3, i64 noundef %i.r) #7, !inline_history !3 ; 2 uses
  store ptr %i.s, ptr %i.i, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.h, ptr %i.t, align 8, !tbaa !46
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %LzmaProps_Decode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %12 = zext nneg <2 x i8> %8 to <2 x i32>
  store <2 x i32> %12, ptr %0, align 8, !tbaa !11
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !11
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !11
  br label %LzmaProps_Decode.exit.thread

LzmaProps_Decode.exit.thread:                     ; preds = %bb.e, %bb.b, %bb.a, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ 4, %bb.b ], [ 4, %bb.a ], [ 2, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @LzmaDec_Allocate(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %LzmaProps_Decode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i32, ptr %i.b, align 1
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.c, i32 4096) ; 2 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !29      ; 4 uses
  %i.e = icmp ugt i8 %i.d, -32
  br i1 %i.e, label %LzmaProps_Decode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = udiv i8 %i.d, 9
  %5 = udiv i8 %i.d, 45
  %i.f = zext nneg i8 %5 to i32
  %6 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %7 = insertelement <2 x i8> %6, i8 %4, i64 1
  %8 = urem <2 x i8> %7, <i8 9, i8 5>             ; 3 uses
  %9 = extractelement <2 x i8> %8, i64 0
  %10 = extractelement <2 x i8> %8, i64 1
  %narrow = add nuw nsw i8 %10, %9
  %11 = zext nneg i8 %narrow to i32
  %i.g = shl nuw nsw i32 768, %11
  %i.h = add nuw nsw i32 %i.g, 1846               ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !46
  %.not.i = icmp eq i32 %i.h, %i.m
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  tail call void %i.o(ptr noundef %3, ptr noundef %i.j) #7, !inline_history !2
  store ptr null, ptr %i.i, align 8, !tbaa !35
  %i.p = load ptr, ptr %3, align 8, !tbaa !47
  %i.q = shl nuw nsw i32 %i.h, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = tail call ptr %i.p(ptr noundef nonnull %3, i64 noundef %i.r) #7, !inline_history !3 ; 2 uses
  store ptr %i.s, ptr %i.i, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.h, ptr %i.t, align 8, !tbaa !46
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %LzmaProps_Decode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = zext i32 %spec.store.select.i to i64     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27
  %.not30 = icmp eq i64 %i.aa, %i.v
  br i1 %.not30, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  tail call void %i.ac(ptr noundef %3, ptr noundef %i.x) #7, !inline_history !1
  store ptr null, ptr %i.w, align 8, !tbaa !26
  %i.ad = load ptr, ptr %3, align 8, !tbaa !47
  %i.ae = tail call ptr %i.ad(ptr noundef nonnull %3, i64 noundef %i.v) #7 ; 2 uses
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !26
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !35
  tail call void %i.ag(ptr noundef nonnull %3, ptr noundef %i.ah) #7, !inline_history !45
  store ptr null, ptr %i.i, align 8, !tbaa !35
  br label %LzmaProps_Decode.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.v, ptr %i.ai, align 8, !tbaa !27
  %12 = zext nneg <2 x i8> %8 to <2 x i32>
  store <2 x i32> %12, ptr %0, align 8, !tbaa !11
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !11
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %spec.store.select.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !11
  br label %LzmaProps_Decode.exit.thread

LzmaProps_Decode.exit.thread:                     ; preds = %bb.e, %bb.b, %bb.a, %bb.j, %bb.i
  %.2 = phi i32 [ 2, %bb.i ], [ 0, %bb.j ], [ 4, %bb.b ], [ 4, %bb.a ], [ 2, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 7) i32 @LzmaDecode(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7, ptr noundef %8) local_unnamed_addr #4 {
bb.a:
  %9 = alloca %struct.CLzmaDec, align 8           ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.a = load i64, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  store i64 0, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %3, align 8, !tbaa !25
  %i.c = icmp ult i64 %i.a, 5
  br i1 %i.c, label %LzmaDec_AllocateProbs.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.f = icmp ult i32 %5, 5
  br i1 %i.f, label %LzmaDec_AllocateProbs.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.h = load i32, ptr %i.g, align 1
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 4096)
  %i.i = load i8, ptr %4, align 1, !tbaa !29      ; 4 uses
  %i.j = icmp ugt i8 %i.i, -32
  br i1 %i.j, label %LzmaDec_AllocateProbs.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %10 = udiv i8 %i.i, 9
  %11 = insertelement <2 x i8> poison, i8 %i.i, i64 0
  %12 = insertelement <2 x i8> %11, i8 %10, i64 1
  %13 = urem <2 x i8> %12, <i8 9, i8 5>           ; 3 uses
  %14 = extractelement <2 x i8> %13, i64 0
  %15 = extractelement <2 x i8> %13, i64 1
  %narrow = add nuw nsw i8 %15, %14
  %16 = zext nneg i8 %narrow to i32
  %i.k = shl nuw nsw i32 768, %16
  %i.l = add nuw nsw i32 %i.k, 1846               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  tail call void %i.n(ptr noundef %8, ptr noundef null) #7, !inline_history !72
  %i.o = load ptr, ptr %8, align 8, !tbaa !47
  %i.p = shl nuw nsw i32 %i.l, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = tail call ptr %i.o(ptr noundef nonnull %8, i64 noundef %i.q) #7, !inline_history !73 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 %i.l, ptr %i.s, align 8, !tbaa !46
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %LzmaDec_AllocateProbs.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = udiv i8 %i.i, 45
  %.zext.i.i = zext nneg i8 %i.u to i32
  %17 = zext nneg <2 x i8> %13 to <2 x i32>
  store <2 x i32> %17, ptr %9, align 8, !tbaa !11
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.zext.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %spec.store.select.i.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !11
  store ptr %0, ptr %i.d, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i64 %i.b, ptr %i.v, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 1, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 92
  store i32 0, ptr %i.y, align 4, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 108
  store i32 0, ptr %i.z, align 4, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 0, ptr %i.aa, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 68
  store i32 0, ptr %i.ab, align 4, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 100
  store i32 1, ptr %i.ac, align 4, !tbaa !23
  store i64 %i.a, ptr %3, align 8, !tbaa !25
  %i.ad = call i32 @LzmaDec_DecodeToDic(ptr noundef nonnull %9, i64 noundef %i.b, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %6, ptr noundef %7)
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load i32, ptr %7, align 4, !tbaa !11
  %i.ag = icmp eq i32 %i.af, 3
  %spec.select = select i1 %i.ag, i32 6, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ %spec.select, %bb.f ]
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !24
  store i64 %i.ah, ptr %1, align 8, !tbaa !25
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !35
  call void %i.ai(ptr noundef nonnull %8, ptr noundef %i.aj) #7, !inline_history !45
  br label %LzmaDec_AllocateProbs.exit.thread

LzmaDec_AllocateProbs.exit.thread:                ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.g
  %.024 = phi i32 [ %.0, %bb.g ], [ 6, %bb.a ], [ 2, %bb.d ], [ 4, %bb.b ], [ 4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i32 %.024
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !30}
!1 = distinct !{null}
!2 = distinct !{null, ptr @LzmaDec_FreeProbs}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_CLzmaProps", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 short", !13, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"", !12, i64 0, !14, i64 16, !15, i64 24, !15, i64 32, !10, i64 40, !10, i64 44, !16, i64 48, !16, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !9, i64 76, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !9, i64 112}
!18 = !{!17, !10, i64 96}
!19 = !{!17, !10, i64 92}
!20 = !{!17, !10, i64 108}
!21 = !{!17, !10, i64 64}
!22 = !{!17, !10, i64 68}
!23 = !{!17, !10, i64 100}
!24 = !{!17, !16, i64 48}
!25 = !{!16, !16, i64 0}
!26 = !{!17, !15, i64 24}
!27 = !{!17, !16, i64 56}
!28 = !{!17, !10, i64 12}
!29 = !{!9, !9, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!17, !10, i64 44}
!32 = !{!17, !10, i64 40}
!33 = !{!17, !10, i64 0}
!34 = !{!17, !10, i64 4}
!35 = !{!17, !14, i64 16}
!36 = !{!"short", !9, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!17, !15, i64 32}
!41 = !{!17, !10, i64 72}
!42 = !{!17, !10, i64 8}
!43 = !{!"", !13, i64 0, !13, i64 8}
!44 = !{!43, !13, i64 8}
!45 = !{ptr @LzmaDec_FreeProbs}
!46 = !{!17, !10, i64 104}
!47 = !{!43, !13, i64 0}
!48 = distinct !{!48, !30, !38, !39}
!49 = distinct !{!49, !30, !38}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30, !38, !39}
!62 = distinct !{!62, !30, !38, !39}
!63 = distinct !{!63, !69}
!64 = distinct !{!64, !30, !38}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = !{!"branch_weights", i32 8, i32 24}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!12, !10, i64 12}
!71 = !{!12, !10, i64 8}
!72 = distinct !{ptr @LzmaDec_AllocateProbs, null, ptr @LzmaDec_FreeProbs}
!73 = distinct !{ptr @LzmaDec_AllocateProbs, null}
end_hunk_0
