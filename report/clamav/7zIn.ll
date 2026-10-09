Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/7zIn?download=true
inline.NumInlined: 85
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@SzAr_Free:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %SzFolder_Free.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %SzFolder_Free.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %indvars.iv ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %SzFolder_Free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13
  %.not20.i = icmp eq i32 %i.j, 0
  br i1 %.not20.i, label %SzFolder_Free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  tail call void @Buf_Free(ptr noundef nonnull %i.m, ptr noundef %1) #12
  tail call void @Buf_Init(ptr noundef nonnull %i.m) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = load i32, ptr %i.i, align 8, !tbaa !13
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %i.p, label %.lr.ph.i, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !12
  br label %SzFolder_Free.exit

SzFolder_Free.exit:                               ; preds = %bb.b, %.preheader.i, %.loopexit.loopexit.i
  %i.q = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.h, %.preheader.i ], [ null, %bb.b ]
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !15
  tail call void %i.r(ptr noundef %1, ptr noundef %i.q) #12, !inline_history !77
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  tail call void %i.s(ptr noundef %1, ptr noundef %i.u) #12, !inline_history !77
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  tail call void %i.v(ptr noundef %1, ptr noundef %i.x) #12, !inline_history !77
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  tail call void %i.y(ptr noundef %1, ptr noundef %i.aa) #12, !inline_history !77
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !36
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %SzFolder_Free.exit, %.preheader, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ag = load ptr, ptr %0, align 8, !tbaa !37
  tail call void %i.af(ptr noundef %1, ptr noundef %i.ag) #12
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78
  tail call void %i.ah(ptr noundef %1, ptr noundef %i.aj) #12
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79
  tail call void %i.ak(ptr noundef %1, ptr noundef %i.am) #12
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void %i.an(ptr noundef %1, ptr noundef %i.ao) #12
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80
  tail call void %i.ap(ptr noundef %1, ptr noundef %i.ar) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @SzArEx_Init(ptr noundef initializes((0, 52), (72, 112)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  tail call void @Buf_Init(ptr noundef nonnull %i.b) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @SzArEx_Free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #12
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  tail call void %i.e(ptr noundef %1, ptr noundef %i.g) #12
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  tail call void %i.h(ptr noundef %1, ptr noundef %i.j) #12
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  tail call void %i.k(ptr noundef %1, ptr noundef %i.m) #12
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  tail call void %i.n(ptr noundef %1, ptr noundef %i.p) #12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @Buf_Free(ptr noundef nonnull %i.q, ptr noundef %1) #12
  tail call void @SzAr_Free(ptr noundef %0, ptr noundef %1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  tail call void @Buf_Init(ptr noundef nonnull %i.q) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SzArEx_GetFolderStreamPos(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = add i32 %i.i, %2
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = add i64 %i.m, %i.b
  ret i64 %i.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 12) i32 @SzArEx_GetFolderFullPackSize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %.not25 = icmp eq i32 %i.j, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !49
  %wide.trip.count = zext i32 %i.j to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.01823 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.l = trunc nuw i64 %indvars.iv to i32
  %i.m = add i32 %i.e, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = add i64 %i.p, %.01823                    ; 3 uses
  %.not = icmp ult i64 %i.q, %.01823
  br i1 %.not, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %i.q, %bb.b ]
  store i64 %.018.lcssa, ptr %2, align 8, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge
  %.2 = phi i32 [ 0, %._crit_edge ], [ 11, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SzArEx_GetFileNameUtf16(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50   ; 4 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !50   ; 5 uses
  %i.h = sub i64 %i.f, %i.g                       ; 9 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = shl i64 %i.g, 1                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l ; 7 uses
  %.not17 = icmp eq i64 %i.f, %i.g
  br i1 %.not17, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = add i64 %i.l, %i.k
  %i.o = sub i64 %i.n, %i.a
  %diff.check = icmp ugt i64 %i.o, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %i.h, 16
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.h, 12
  %n.vec = and i64 %i.h, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl nuw i64 %index, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 1, !tbaa !52
  %wide.load19 = load <8 x i16>, ptr %i.s, align 1, !tbaa !52
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <8 x i16> %wide.load, ptr %i.t, align 2, !tbaa !86
  store <8 x i16> %wide.load19, ptr %i.u, align 2, !tbaa !86
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.h, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.w = shl nuw i64 %index21, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %wide.load22 = load <4 x i16>, ptr %i.x, align 1, !tbaa !52
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index21
  store <4 x i16> %wide.load22, ptr %i.y, align 2, !tbaa !86
  %index.next23 = add nuw i64 %index21, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next23, %n.vec20
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.h, %n.vec20
  br i1 %cmp.n24, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec20, %vec.epilog.middle.block ] ; 3 uses
  %3 = sub i64 %i.f, %i.g
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.016.prol = phi i64 [ %i.ae, %.lr.ph.prol ], [ %.016.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.aa = shl nuw i64 %.016.prol, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !52
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.prol
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !86
  %i.ae = add nuw i64 %.016.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !83

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.016.unr = phi i64 [ %.016.ph, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %i.af = sub i64 %.016.ph, %i.f
  %i.ag = add i64 %i.af, %i.g
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.016 = phi i64 [ %i.bb, %.lr.ph ], [ %.016.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ai = shl nuw i64 %.016, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !52
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !86
  %i.am = add nuw i64 %.016, 1                    ; 2 uses
  %i.an = shl nuw i64 %i.am, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !52
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.am
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !86
  %i.ar = add nuw i64 %.016, 2                    ; 2 uses
  %i.as = shl nuw i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.as
  %i.au = load i16, ptr %i.at, align 1, !tbaa !52
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ar
  store i16 %i.au, ptr %i.av, align 2, !tbaa !86
  %i.aw = add nuw i64 %.016, 3                    ; 2 uses
  %i.ax = shl nuw i64 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !52
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !86
  %i.bb = add nuw i64 %.016, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bb, %i.h
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !84

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define i32 @SzArEx_Open(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 18 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %4 = alloca %struct.CBuf, align 8               ; 14 uses
  %i.c = alloca [500 x i8], align 16              ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct._CSzState, align 8          ; 10 uses
  %i.h = alloca i64, align 8                      ; 7 uses
  %6 = alloca %struct.CBuf, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i64 0, ptr %i.b, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.k = call i32 %i.j(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1) #12, !inline_history !88 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @LookInStream_Read2(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 32, i32 noundef 17) #12 ; 2 uses
  %.not159.i = icmp eq i32 %i.l, 0
  br i1 %.not159.i, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.a, align 16, !tbaa !52
  %i.n = load i8, ptr @k7zSignature, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.i.i, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 1), align 1, !tbaa !52
  %.not.1.i.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.1.i.i, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.s = load i8, ptr %i.r, align 2, !tbaa !52
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 2), align 1, !tbaa !52
  %.not.2.i.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.2.i.i, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 3), align 1, !tbaa !52
  %.not.3.i.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.3.i.i, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !52
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 4), align 1, !tbaa !52
  %.not.4.i.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.4.i.i, label %TestSignatureCandidate.exit.i, label %.sink.split

TestSignatureCandidate.exit.i:                    ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !52
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 5), align 1, !tbaa !52
  %.not.5.i.not.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.5.i.not.i, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %TestSignatureCandidate.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !52
  %.not161.i = icmp eq i8 %i.ae, 0
  br i1 %.not161.i, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !52
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !52
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 32
  %i.am = or i64 %i.al, %i.ah                     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !52
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !52
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 32
  %i.au = or i64 %i.at, %i.ap                     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !52 ; 2 uses
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !31
  %i.ay = add nsw i64 %i.ax, 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !52
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = icmp ne i64 %i.am, 0
  %or.cond.i = select i1 %i.bc, i1 true, i1 %i.bd
  %i.be = icmp ne i64 %i.au, 0
  %or.cond13.i = select i1 %or.cond.i, i1 true, i1 %i.be
  %i.bf = icmp ne i32 %i.aw, 0
  %or.cond15.i = select i1 %or.cond13.i, i1 true, i1 %i.bf
  br i1 %or.cond15.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 0, ptr %i.d, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i64 0, ptr %i.e, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.bh = call i32 %i.bg(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 1) #12, !inline_history !88 ; 2 uses
  %.not162.i = icmp eq i32 %i.bh, 0
  br i1 %.not162.i, label %bb.k, label %.thread181.i

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.bj = call i32 %i.bi(ptr noundef nonnull %1, ptr noundef nonnull %i.e, i32 noundef 2) #12, !inline_history !88 ; 2 uses
  %.not163.i = icmp eq i32 %i.bj, 0
  br i1 %.not163.i, label %bb.l, label %.thread181.i

bb.l:                                             ; preds = %bb.k
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !31  ; 2 uses
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !31
  %i.bm = sub i64 %i.bk, %i.bl
  %spec.select191.i = call i64 @llvm.smin.i64(i64 %i.bm, i64 500) ; 4 uses
  %spec.select.i = trunc i64 %spec.select191.i to i32
  %sext.i = shl i64 %spec.select191.i, 32
  %i.bn = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.bo = sub nsw i64 %i.bk, %i.bn
  store i64 %i.bo, ptr %i.f, align 8, !tbaa !31
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.bq = call i32 %i.bp(ptr noundef nonnull %1, ptr noundef nonnull %i.f, i32 noundef 0) #12, !inline_history !88 ; 2 uses
  %.not164.i = icmp eq i32 %i.bq, 0
  br i1 %.not164.i, label %bb.m, label %.thread181.i

bb.m:                                             ; preds = %bb.l
end_hunk_0
