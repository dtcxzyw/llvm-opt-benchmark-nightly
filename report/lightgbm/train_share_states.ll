Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/train_share_states?download=true
inline.NumInlined: 659
inline.NumDeleted: 262
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM18MultiValBinWrapper9HistMergeILb0ELi0ELi8EEEvPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.omp_outlined:bb.a
._crit_edge36.split.us:                           ; preds = %._crit_edge.us, %.lr.ph35.us
  %i.bx = add nsw i32 %.02837.us, 1
  %.not30.us.not = icmp slt i32 %.02837.us, %i.ag
  %indvars.iv.next49 = add i32 %indvars.iv48, %i.z
  %indvar.next76 = add i32 %indvar75, 1
  br i1 %.not30.us.not, label %.lr.ph35.us, label %.split.us

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %i.by = phi i32 [ %i.cc, %.preheader ], [ %i.i, %.preheader.lr.ph ]
  %i.bz = phi i32 [ %i.ca, %.preheader ], [ %.promoted38, %.preheader.lr.ph ]
  %i.ca = add nsw i32 %i.p, %i.bz                 ; 3 uses
  %i.cb = add nsw i32 %i.p, %i.by
  %i.cc = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.f) ; 3 uses
  %.not = icmp sgt i32 %i.ca, %i.cc
  br i1 %.not, label %._crit_edge40, label %.preheader

._crit_edge40:                                    ; preds = %.preheader, %.split.us
  %.us-phi = phi i32 [ %i.bm, %.split.us ], [ %i.ca, %.preheader ]
  %.us-phi42 = phi i32 [ %i.bo, %.split.us ], [ %i.cc, %.preheader ]
  store i32 %.us-phi, ptr %i.a, align 4, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge40, %bb.b
  %.lcssa = phi i32 [ %.us-phi42, %._crit_edge40 ], [ %i.i, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !42
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM18MultiValBinWrapper9HistMergeILb1ELi16ELi8EEEvPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %i.j = add i32 %i.g, 511
  %i.k = sdiv i32 %i.j, 512
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 4 uses
  store i32 %.sroa.speculated.i, ptr %i.b, align 4, !tbaa !42
  %i.l = icmp sgt i32 %.sroa.speculated.i, 1
  br i1 %i.l, label %bb.b, label %_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = add i32 %i.g, -1
  %i.n = add i32 %i.m, %.sroa.speculated.i
  %i.o = sdiv i32 %i.n, %.sroa.speculated.i
  %i.p = add nsw i32 %i.o, 31
  %i.q = sdiv i32 %i.p, 32
  %i.r = shl nsw i32 %i.q, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi i32 [ %i.r, %bb.b ], [ %i.g, %bb.a ]
  store i32 %storemerge.i, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.s = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = lshr i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z ; 2 uses
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !49
  %i.ab = sext i32 %i.g to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !62
  %i.ae = mul i64 %i.ad, %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 0, i64 %i.ae, i1 false)
  %i.af = load i32, ptr %i.h, align 8, !tbaa !39
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.af)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN8LightGBM18MultiValBinWrapper9HistMergeILb1ELi16ELi8EEEvPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM18MultiValBinWrapper9HistMergeILb1ELi16ELi8EEEvPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !42     ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.f, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.h = load i32, ptr %0, align 4, !tbaa !42     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !42
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !42
  %i.k = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge45, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge43
  %i.o = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.bu, %._crit_edge43 ] ; 4 uses
  %i.p = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.bs, %._crit_edge43 ] ; 4 uses
  %.not3340 = icmp sgt i32 %i.p, %i.o
  br i1 %.not3340, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader
  %i.q = load i32, ptr %i.m, align 4, !tbaa !58   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph42.split, label %._crit_edge43

.lr.ph42.split:                                   ; preds = %.lr.ph42, %._crit_edge39.split
  %i.s = phi i32 [ %i.ah, %._crit_edge39.split ], [ %i.o, %.lr.ph42 ] ; 2 uses
  %i.t = phi i32 [ %i.ai, %._crit_edge39.split ], [ %i.q, %.lr.ph42 ] ; 3 uses
  %.041 = phi i32 [ %i.aj, %._crit_edge39.split ], [ %i.p, %.lr.ph42 ] ; 3 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !42     ; 2 uses
  %i.v = mul i32 %i.u, %.041                      ; 3 uses
  %i.w = add nsw i32 %i.v, %i.u
  %i.x = load i32, ptr %i.l, align 4, !tbaa !42
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.w) ; 2 uses
  %i.y = icmp sgt i32 %i.t, 0
  br i1 %i.y, label %.lr.ph38, label %._crit_edge39.split

.lr.ph38:                                         ; preds = %.lr.ph42.split
  %i.z = load ptr, ptr %5, align 8, !tbaa !57
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = icmp slt i32 %i.v, %.sroa.speculated
  br i1 %i.ab, label %.lr.ph38.split, label %._crit_edge39.split

.lr.ph38.split:                                   ; preds = %.lr.ph38
  %i.ac = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.ad = sext i32 %i.v to i64                    ; 4 uses
  %i.ae = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.af = sub nsw i64 %i.ae, %i.ad                ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  %n.vec = and i64 %i.af, -8                      ; 3 uses
  %i.ag = add nsw i64 %n.vec, %i.ad
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br label %.lr.ph

._crit_edge39.split.loopexit:                     ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !42
  br label %._crit_edge39.split

._crit_edge39.split:                              ; preds = %._crit_edge39.split.loopexit, %.lr.ph38, %.lr.ph42.split
  %i.ah = phi i32 [ %.pre, %._crit_edge39.split.loopexit ], [ %i.s, %.lr.ph38 ], [ %i.s, %.lr.ph42.split ] ; 3 uses
  %i.ai = phi i32 [ %i.be, %._crit_edge39.split.loopexit ], [ %i.t, %.lr.ph38 ], [ %i.t, %.lr.ph42.split ]
  %i.aj = add i32 %.041, 1
  %.not33.not = icmp slt i32 %.041, %i.ah
  br i1 %.not33.not, label %.lr.ph42.split, label %._crit_edge43.loopexit, !llvm.loop !155

.lr.ph:                                           ; preds = %.lr.ph38.split, %._crit_edge
  %indvars.iv49 = phi i64 [ 0, %.lr.ph38.split ], [ %indvars.iv.next50, %._crit_edge ] ; 2 uses
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !37
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %indvars.iv49, %i.al
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.am ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.ao = add i64 %index, %i.ad                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %wide.load = load <4 x i16>, ptr %i.ap, align 2, !tbaa !160 ; 2 uses
  %wide.load69 = load <4 x i16>, ptr %i.aq, align 2, !tbaa !160 ; 2 uses
  %7 = ashr <4 x i16> %wide.load, splat (i16 8)
  %8 = ashr <4 x i16> %wide.load69, splat (i16 8)
  %9 = sext <4 x i16> %7 to <4 x i32>
  %10 = sext <4 x i16> %8 to <4 x i32>
  %i.ar = shl nsw <4 x i32> %9, splat (i32 16)
  %i.as = shl nsw <4 x i32> %10, splat (i32 16)
  %i.at = and <4 x i16> %wide.load, splat (i16 255)
  %i.au = and <4 x i16> %wide.load69, splat (i16 255)
  %i.av = zext nneg <4 x i16> %i.at to <4 x i32>
  %i.aw = zext nneg <4 x i16> %i.au to <4 x i32>
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ao ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load70 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !42
  %wide.load71 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !42
  %i.az = add <4 x i32> %wide.load70, %i.av
  %i.ba = add <4 x i32> %wide.load71, %i.aw
  %i.bb = add <4 x i32> %i.az, %i.ar
  %i.bc = add <4 x i32> %i.ba, %i.as
  store <4 x i32> %i.bb, ptr %i.ax, align 4, !tbaa !42
  store <4 x i32> %i.bc, ptr %i.ay, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ad, %.lr.ph ], [ %i.ag, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.be = load i32, ptr %i.m, align 4, !tbaa !58  ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next50, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge39.split.loopexit, !llvm.loop !157

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !160 ; 2 uses
  %11 = ashr i16 %i.bi, 8
  %12 = sext i16 %11 to i32
  %sext = shl nsw i32 %12, 16
  %i.bj = and i16 %i.bi, 255
  %i.bk = zext nneg i16 %i.bj to i32
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42
  %i.bn = add i32 %i.bm, %i.bk
  %i.bo = add i32 %i.bn, %sext
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !42
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bp = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.bp, label %scalar.ph, label %._crit_edge, !llvm.loop !158

._crit_edge43.loopexit:                           ; preds = %._crit_edge39.split
  %.pre52 = load i32, ptr %i.a, align 4, !tbaa !42
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge43.loopexit, %.preheader
  %i.bq = phi i32 [ %i.p, %.preheader ], [ %.pre52, %._crit_edge43.loopexit ], [ %i.p, %.lr.ph42 ]
  %.lcssa = phi i32 [ %i.o, %.preheader ], [ %i.ah, %._crit_edge43.loopexit ], [ %i.o, %.lr.ph42 ]
  %i.br = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %i.bs = add nsw i32 %i.br, %i.bq                ; 3 uses
  store i32 %i.bs, ptr %i.a, align 4, !tbaa !42
  %i.bt = add nsw i32 %i.br, %.lcssa
  %i.bu = call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.f) ; 3 uses
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !42
  %.not = icmp sgt i32 %i.bs, %i.bu
  br i1 %.not, label %._crit_edge45, label %.preheader

._crit_edge45:                                    ; preds = %._crit_edge43, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge45, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM18MultiValBinWrapper9HistMergeILb1ELi16ELi16EEEvPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %i.j = add i32 %i.g, 511
  %i.k = sdiv i32 %i.j, 512
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 4 uses
  store i32 %.sroa.speculated.i, ptr %i.b, align 4, !tbaa !42
  %i.l = icmp sgt i32 %.sroa.speculated.i, 1
  br i1 %i.l, label %bb.b, label %_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = add i32 %i.g, -1
  %i.n = add i32 %i.m, %.sroa.speculated.i
  %i.o = sdiv i32 %i.n, %.sroa.speculated.i
  %i.p = add nsw i32 %i.o, 31
  %i.q = sdiv i32 %i.p, 32
  %i.r = shl nsw i32 %i.q, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi i32 [ %i.r, %bb.b ], [ %i.g, %bb.a ]
  store i32 %storemerge.i, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  store ptr %i.t, ptr %i.d, align 8, !tbaa !49
  %i.u = load i8, ptr %0, align 8, !tbaa !31, !range !32, !noundef !33
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit
  %i.w = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !37
  %i.ah = sext i32 %i.ag to i64
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN8LightGBM9Threading9BlockInfoIiEEviT_S2_PiPS2_.exit
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.i)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN8LightGBM18MultiValBinWrapper9HistMergeILb1ELi16ELi16EEEvPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM18MultiValBinWrapper9HistMergeILb1ELi16ELi16EEEvPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !42     ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.f, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.h = load i32, ptr %0, align 4, !tbaa !42     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !42
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !42
  %i.k = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %.not41 = icmp sgt i32 %i.k, %i.j
  br i1 %.not41, label %._crit_edge42, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 128
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge40
  %i.o = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.bo, %._crit_edge40 ] ; 4 uses
  %i.p = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.bm, %._crit_edge40 ] ; 4 uses
  %.not3037 = icmp sgt i32 %i.p, %i.o
  br i1 %.not3037, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %.preheader
  %i.q = load i32, ptr %i.m, align 4, !tbaa !58   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph39.split, label %._crit_edge40

.lr.ph39.split:                                   ; preds = %.lr.ph39, %._crit_edge36.split
  %i.s = phi i32 [ %i.aj, %._crit_edge36.split ], [ %i.o, %.lr.ph39 ] ; 2 uses
  %i.t = phi i32 [ %i.ak, %._crit_edge36.split ], [ %i.q, %.lr.ph39 ] ; 3 uses
  %.02838 = phi i32 [ %i.al, %._crit_edge36.split ], [ %i.p, %.lr.ph39 ] ; 3 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !42     ; 2 uses
  %i.v = mul i32 %i.u, %.02838                    ; 3 uses
  %i.w = add nsw i32 %i.v, %i.u
  %i.x = load i32, ptr %i.l, align 4, !tbaa !42
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.w) ; 2 uses
  %i.y = icmp sgt i32 %i.t, 1
  br i1 %i.y, label %.lr.ph35, label %._crit_edge36.split

.lr.ph35:                                         ; preds = %.lr.ph39.split
  %i.z = load ptr, ptr %5, align 8, !tbaa !57
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 3 uses
  %i.ab = icmp slt i32 %i.v, %.sroa.speculated
  br i1 %i.ab, label %.lr.ph35.split, label %._crit_edge36.split

.lr.ph35.split:                                   ; preds = %.lr.ph35
  %i.ac = load ptr, ptr %6, align 8, !tbaa !49    ; 4 uses
  %i.ad = sext i32 %i.v to i64                    ; 6 uses
  %i.ae = sext i32 %.sroa.speculated to i64       ; 3 uses
  %i.af = shl nsw i64 %i.ad, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.af
  %i.ag = shl nsw i64 %i.ae, 2                    ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.ac, i64 %i.ag
  %scevgep67 = getelementptr i8, ptr %i.aa, i64 %i.af
  %scevgep69 = getelementptr i8, ptr %i.aa, i64 %i.ag
  %i.ah = sub nsw i64 %i.ae, %i.ad                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 8
  %n.vec = and i64 %i.ah, -8                      ; 3 uses
  %i.ai = add nsw i64 %n.vec, %i.ad
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %.lr.ph

._crit_edge36.split.loopexit:                     ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !42
  br label %._crit_edge36.split

._crit_edge36.split:                              ; preds = %._crit_edge36.split.loopexit, %.lr.ph35, %.lr.ph39.split
  %i.aj = phi i32 [ %.pre, %._crit_edge36.split.loopexit ], [ %i.s, %.lr.ph35 ], [ %i.s, %.lr.ph39.split ] ; 3 uses
  %i.ak = phi i32 [ %i.bb, %._crit_edge36.split.loopexit ], [ %i.t, %.lr.ph35 ], [ %i.t, %.lr.ph39.split ]
  %i.al = add i32 %.02838, 1
  %.not30.not = icmp slt i32 %.02838, %i.aj
  br i1 %.not30.not, label %.lr.ph39.split, label %._crit_edge40.loopexit, !llvm.loop !161

.lr.ph:                                           ; preds = %.lr.ph35.split, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph35.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv46 = phi i64 [ 1, %.lr.ph35.split ], [ %indvars.iv.next47, %._crit_edge ] ; 2 uses
  %i.am = load i32, ptr %i.n, align 8, !tbaa !37
  %i.an = sext i32 %i.am to i64                   ; 2 uses
end_hunk_0
