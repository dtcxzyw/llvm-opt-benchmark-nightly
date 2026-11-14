Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/strcodec?download=true
inline.NumInlined: 45
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@advanceMRPtr
define void @advanceMRPtr(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @cblkChromas, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
  %i.f = shl nsw i32 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 35672
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = icmp ne ptr %i.h, null
  %i.j = sext i32 %i.f to i64                     ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.not.not = phi i1 [ %i.i, %bb.a ], [ false, %._crit_edge ]
  %.02225 = phi ptr [ %0, %bb.a ], [ %i.aj, %._crit_edge ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02225, i64 34256
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41   ; 5 uses
  %.not27 = icmp eq i64 %i.l, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %.02225, i64 35120 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02225, i64 34736 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02225, i64 35248 ; 4 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !95   ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1024
  store ptr %i.q, ptr %i.m, align 8, !tbaa !95
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1024
  store ptr %i.s, ptr %i.o, align 8, !tbaa !95
  %exitcond.peel.not = icmp eq i64 %i.l, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.lr.ph
  %i.t = add i64 %i.l, -1                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.l, 3
  br i1 %min.iters.check, label %.peel.next.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.peel.next.preheader
  %n.vec = and i64 %i.t, -2                       ; 2 uses
  %i.u = or i64 %i.t, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = or disjoint i64 %index, 1                ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.v ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.w, align 8, !tbaa !95 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v
  store <2 x ptr> %wide.load, ptr %i.x, align 8, !tbaa !95
  %wide.gep = getelementptr inbounds [4 x i8], <2 x ptr> %wide.load, i64 %i.j
  store <2 x ptr> %wide.gep, ptr %i.w, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v ; 2 uses
  %wide.load29 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !95
  %wide.gep30 = getelementptr inbounds [4 x i8], <2 x ptr> %wide.load29, i64 %i.j
  store <2 x ptr> %wide.gep30, ptr %i.y, align 8, !tbaa !95
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.peel.next.preheader31

.peel.next.preheader31:                           ; preds = %.peel.next.preheader, %middle.block
  %.02123.ph = phi i64 [ 1, %.peel.next.preheader ], [ %i.u, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader31, %.peel.next
  %.02123 = phi i64 [ %i.ah, %.peel.next ], [ %.02123.ph, %.peel.next.preheader31 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02123 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.02123
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !95
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.j
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !95
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02123 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.j
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !95
  %i.ah = add nuw i64 %.02123, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !92

._crit_edge:                                      ; preds = %.peel.next, %middle.block, %.lr.ph, %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %.02225, i64 35672
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40
  br i1 %.not.not, label %.preheader, label %bb.b, !llvm.loop !93

bb.b:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @advanceOneMBRow(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 35672
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = icmp ne ptr %i.b, null
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.not.not = phi i1 [ %i.c, %bb.a ], [ false, %._crit_edge ]
  %.01719 = phi ptr [ %0, %bb.a ], [ %i.q, %._crit_edge ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01719, i64 34256
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41   ; 5 uses
  %.not21 = icmp eq i64 %i.e, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.01719, i64 35392 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01719, i64 35520 ; 2 uses
  %min.iters.check = icmp eq i64 %i.e, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, -2                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.h, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %wide.load22 = load <2 x ptr>, ptr %i.i, align 8, !tbaa !99
  store <2 x ptr> %wide.load22, ptr %i.h, align 8, !tbaa !99
  store <2 x ptr> %wide.load, ptr %i.i, align 8, !tbaa !99
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.01618.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01618 = phi i64 [ %i.o, %scalar.ph ], [ %.01618.ph, %scalar.ph.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01618 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01618 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  store ptr %i.n, ptr %i.k, align 8, !tbaa !99
  store ptr %i.l, ptr %i.m, align 8, !tbaa !99
  %i.o = add nuw i64 %.01618, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !97

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %.01719, i64 35672
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  br i1 %.not.not, label %.preheader, label %bb.b, !llvm.loop !98

bb.b:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @swapMRPtr(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
.peel.begin:
  %i.a = alloca [16 x ptr], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 35672
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34864 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 34992 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 35672
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  br i1 %.not, label %bb.a, label %.peel.newph

.peel.newph:                                      ; preds = %.peel.begin
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 34864 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34992 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false)
  br label %bb.a

bb.a:                                             ; preds = %.peel.newph, %.peel.begin
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @IDPEmpty(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #6 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define noundef range(i64 -101, 1) i64 @WMPAlloc(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %1) #27 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, i64 -101, i64 0
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i64 @WMPFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #28
  store ptr null, ptr %0, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define range(i64 -102, 1) i64 @CreateWS_File(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #27 ; 9 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @CloseWS_File, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @EOSWS_File, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @ReadWS_File, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @WriteWS_File, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @SetPosWS_File, ptr %i.f, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @GetPosWS_File, ptr %i.g, align 8, !tbaa !53
  %i.h = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef %2) ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !54
  %i.i = icmp eq ptr %i.h, null
  %i.j = select i1 %i.i, i64 -102, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ -101, %bb.a ], [ %i.j, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define noundef i64 @CloseWS_File(ptr nofree noundef captures(none) %0) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call i32 @fclose(ptr noundef %i.b)  ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %WMPFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.d) #28
  store ptr null, ptr %0, align 8, !tbaa !46
  br label %WMPFree.exit

WMPFree.exit:                                     ; preds = %bb.a, %bb.b
  ret i64 0
}

; Function Attrs: nofree nounwind uwtable
define noundef i32 @EOSWS_File(ptr nofree noundef readonly captures(none) %0) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = tail call i32 @feof(ptr noundef %i.a) #28
  ret i32 %i.b
}

; Function Attrs: nofree nounwind uwtable
define noundef range(i64 -102, 1) i64 @ReadWS_File(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef %2, i64 noundef 1, ptr noundef %i.a)
  %i.c = icmp eq i64 %i.b, 1
  %i.d = select i1 %i.c, i64 0, i64 -102
  ret i64 %i.d
}

; Function Attrs: nofree nounwind uwtable
define range(i64 -102, 1) i64 @WriteWS_File(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #11 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef %2, i64 noundef 1, ptr noundef %i.a)
  %.not7 = icmp eq i64 %i.b, 1
  %i.c = select i1 %.not7, i64 0, i64 -102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree nounwind uwtable
define noundef range(i64 -102, 1) i64 @SetPosWS_File(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = tail call i32 @fseek(ptr noundef %i.a, i64 noundef %1, i32 noundef 0)
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, i64 0, i64 -102
  ret i64 %.
}

; Function Attrs: nofree nounwind uwtable
define range(i64 -102, 1) i64 @GetPosWS_File(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = tail call i64 @ftell(ptr noundef %i.a)   ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %1, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ 0, %bb.b ], [ -102, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i64 -101, 1) i64 @CreateWS_Memory(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #27 ; 10 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @CloseWS_Memory, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @EOSWS_Memory, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @ReadWS_Memory, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @WriteWS_Memory, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @SetPosWS_Memory, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @GetPosWS_Memory, ptr %i.h, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ -101, %bb.a ], [ 0, %bb.b ]
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i64 @CloseWS_Memory(ptr nofree noundef captures(none) %0) #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %WMPFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #28
  store ptr null, ptr %0, align 8, !tbaa !46
  br label %WMPFree.exit

WMPFree.exit:                                     ; preds = %bb.a, %bb.b
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @EOSWS_Memory(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  %i.e = icmp ule i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -103, 1) i64 @ReadWS_Memory(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54   ; 5 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, %2                         ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i64 %i.b, %i.f
  %i.i = sub nuw i64 %i.b, %i.d
  %spec.select = select i1 %i.h, i64 %i.i, i64 %2 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.k, i64 %spec.select, i1 false)
  %i.l = load i64, ptr %i.c, align 8, !tbaa !54
  %i.m = add i64 %i.l, %spec.select
  store i64 %i.m, ptr %i.c, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.021 = phi i64 [ 0, %bb.a ], [ -103, %bb.b ], [ 0, %bb.c ]
  ret i64 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -103, 1) i64 @WriteWS_Memory(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %2, i1 false)
  %i.j = load i64, ptr %i.a, align 8, !tbaa !54
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.a, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ -103, %bb.a ], [ -103, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @SetPosWS_Memory(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, i64 noundef %1) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !54
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @GetPosWS_Memory(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.b, ptr %1, align 8, !tbaa !56
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i64 -101, 1) i64 @CreateWS_List(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4192) ptr @calloc(i64 noundef 1, i64 noundef 4192) #27 ; 10 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.b, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4096, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @CloseWS_List, ptr %i.d, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @ReadWS_List, ptr %i.e, align 8, !tbaa !50
end_hunk_0
