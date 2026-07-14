inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate scratch buffer for deflate of %lu bytes\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to compress buffer %lu -> %lu @ level %d\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @internal_zip_reconstruct_bytes(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = icmp samesign ugt i64 %2, 1
  br i1 %i.b, label %.lr.ph.preheader.i, label %reconstruct.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.09.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.pre.i = load i8, ptr %1, align 1, !tbaa !7
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.c = phi i8 [ %i.f, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.011.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.09.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.d = load i8, ptr %.011.i, align 1, !tbaa !7
  %i.e = add i8 %i.d, %i.c
  %i.f = xor i8 %i.e, -128                        ; 2 uses
  store i8 %i.f, ptr %.011.i, align 1, !tbaa !7
  %.0.i = getelementptr inbounds nuw i8, ptr %.011.i, i64 1 ; 2 uses
  %i.g = icmp ult ptr %.0.i, %i.a
  br i1 %i.g, label %.lr.ph.i, label %reconstruct.exit, !llvm.loop !8

reconstruct.exit:                                 ; preds = %.lr.ph.i, %bb.a
  %i.h = lshr i64 %2, 5                           ; 2 uses
  %i.i = add i64 %2, 1
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 2 uses
  %.not50.i = icmp eq i64 %i.h, 0
  br i1 %.not50.i, label %._crit_edge.i, label %.lr.ph.i4

._crit_edge.i:                                    ; preds = %.lr.ph.i4, %reconstruct.exit
  %.030.lcssa.i = phi ptr [ %0, %reconstruct.exit ], [ %i.t, %.lr.ph.i4 ]
  %.029.lcssa.i = phi ptr [ %i.k, %reconstruct.exit ], [ %i.o, %.lr.ph.i4 ]
  %.028.lcssa.i = phi ptr [ %1, %reconstruct.exit ], [ %i.m, %.lr.ph.i4 ]
  %i.l = and i64 %2, -32                          ; 2 uses
  %.not51.i = icmp eq i64 %i.l, %2
  br i1 %.not51.i, label %interleave.exit, label %.lr.ph48.i

.lr.ph.i4:                                        ; preds = %reconstruct.exit, %.lr.ph.i4
  %.02840.i = phi ptr [ %i.m, %.lr.ph.i4 ], [ %1, %reconstruct.exit ] ; 2 uses
  %.02939.i = phi ptr [ %i.o, %.lr.ph.i4 ], [ %i.k, %reconstruct.exit ] ; 2 uses
  %.03038.i = phi ptr [ %i.t, %.lr.ph.i4 ], [ %0, %reconstruct.exit ] ; 3 uses
  %.03237.i = phi i64 [ %i.u, %.lr.ph.i4 ], [ 0, %reconstruct.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.02840.i, i64 16 ; 2 uses
  %i.n = load <16 x i8>, ptr %.02840.i, align 1, !tbaa !7 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02939.i, i64 16 ; 2 uses
  %i.p = load <16 x i8>, ptr %.02939.i, align 1, !tbaa !7 ; 2 uses
  %i.q = shufflevector <16 x i8> %i.n, <16 x i8> %i.p, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.r = shufflevector <16 x i8> %i.n, <16 x i8> %i.p, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.s = getelementptr inbounds nuw i8, ptr %.03038.i, i64 16
  store <16 x i8> %i.q, ptr %.03038.i, align 1, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.03038.i, i64 32 ; 2 uses
  store <16 x i8> %i.r, ptr %i.s, align 1, !tbaa !7
  %i.u = add nuw nsw i64 %.03237.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i4, !llvm.loop !10

.lr.ph48.i:                                       ; preds = %._crit_edge.i, %.lr.ph48.i
  %.046.i = phi i64 [ %i.x, %.lr.ph48.i ], [ %i.l, %._crit_edge.i ] ; 2 uses
  %.03145.i = phi ptr [ %.1.i, %.lr.ph48.i ], [ %.028.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.03344.i = phi ptr [ %i.w, %.lr.ph48.i ], [ %.030.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.03443.i = phi ptr [ %.135.i, %.lr.ph48.i ], [ %.029.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.v = and i64 %.046.i, 1                       ; 3 uses
  %.not.i = icmp eq i64 %i.v, 0
  %.135.i = getelementptr inbounds nuw i8, ptr %.03443.i, i64 %i.v
  %.1.idx.i = xor i64 %i.v, 1
  %.1.i = getelementptr inbounds nuw i8, ptr %.03145.i, i64 %.1.idx.i
  %.in.in.i = select i1 %.not.i, ptr %.03145.i, ptr %.03443.i
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.03344.i, i64 1
  store i8 %.in.i, ptr %.03344.i, align 1, !tbaa !7
  %i.x = add nuw i64 %.046.i, 1                   ; 2 uses
  %i.y = icmp ult i64 %i.x, %2
  br i1 %i.y, label %.lr.ph48.i, label %interleave.exit, !llvm.loop !11

interleave.exit:                                  ; preds = %.lr.ph48.i, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @internal_zip_deconstruct_bytes(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = ptrtoint ptr %0 to i64                     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge42, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %2, 1
  %i.c = lshr i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.02636 = phi ptr [ %i.g, %bb.c ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.02735 = phi ptr [ %.128, %bb.c ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.02934 = phi ptr [ %.130, %bb.c ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02735, i64 1 ; 3 uses
  %i.f = load i8, ptr %.02735, align 1, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.02636, i64 1
  store i8 %i.f, ptr %.02636, align 1, !tbaa !7
  %i.h = icmp ult ptr %i.e, %i.a
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.02735, i64 2
  %i.j = load i8, ptr %i.e, align 1, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.02934, i64 1
  store i8 %i.j, ptr %.02934, align 1, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.130 = phi ptr [ %i.k, %bb.b ], [ %.02934, %.lr.ph ]
  %.128 = phi ptr [ %i.i, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.l = icmp ult ptr %.128, %i.a
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %.not44 = icmp eq i64 %2, 1
  br i1 %.not44, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %._crit_edge
  %.137 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.n = load i8, ptr %0, align 1, !tbaa !7       ; 2 uses
  %i.o = add i64 %2, %3
  %i.p = add i64 %3, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.p)
  %i.q = xor i64 %3, -1
  %i.r = add i64 %umax, %i.q                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 32
  br i1 %min.iters.check, label %.lr.ph41.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph41.preheader
  %n.vec = and i64 %i.r, -32                      ; 3 uses
  %i.s = getelementptr i8, ptr %.137, i64 %n.vec
  %vector.recur.init = insertelement <16 x i8> poison, i8 %i.n, i64 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load45, %vector.body ]
  %next.gep = getelementptr i8, ptr %.137, i64 %index ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !7 ; 3 uses
  %wide.load45 = load <16 x i8>, ptr %i.t, align 1, !tbaa !7 ; 4 uses
  %i.u = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.v = shufflevector <16 x i8> %wide.load, <16 x i8> %wide.load45, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.w = sub <16 x i8> %wide.load, %i.u
  %i.x = sub <16 x i8> %wide.load45, %i.v
  %i.y = xor <16 x i8> %i.w, splat (i8 -128)
  %i.z = xor <16 x i8> %i.x, splat (i8 -128)
  store <16 x i8> %i.y, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %i.z, ptr %i.t, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <16 x i8> %wide.load45, i64 15
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge42, label %.lr.ph41.preheader46

.lr.ph41.preheader46:                             ; preds = %.lr.ph41.preheader, %middle.block
  %.139.ph = phi ptr [ %.137, %.lr.ph41.preheader ], [ %i.s, %middle.block ]
  %.038.ph = phi i8 [ %i.n, %.lr.ph41.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader46, %.lr.ph41
  %.139 = phi ptr [ %.1, %.lr.ph41 ], [ %.139.ph, %.lr.ph41.preheader46 ] ; 3 uses
  %.038 = phi i8 [ %i.ab, %.lr.ph41 ], [ %.038.ph, %.lr.ph41.preheader46 ]
  %i.ab = load i8, ptr %.139, align 1, !tbaa !7   ; 2 uses
  %i.ac = sub i8 %i.ab, %.038
  %i.ad = xor i8 %i.ac, -128
  store i8 %i.ad, ptr %.139, align 1, !tbaa !7
  %.1 = getelementptr inbounds nuw i8, ptr %.139, i64 1 ; 2 uses
  %i.ae = icmp ult ptr %.1, %i.m
  br i1 %i.ae, label %.lr.ph41, label %._crit_edge42, !llvm.loop !16

._crit_edge42:                                    ; preds = %.lr.ph41, %middle.block, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_zip(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address) %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i64 %2, %4
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %2, ptr %i.c, align 8, !tbaa !17
  %.not33 = icmp eq ptr %1, %3
  br i1 %.not33, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %spec.select = tail call i64 @llvm.umax.i64(i64 %2, i64 %4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.f = tail call i32 @internal_decode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef %spec.select) #7 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !25   ; 7 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %undo_zip_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = call i32 @exr_uncompress_buffer(ptr noundef %i.k, ptr noundef %1, i64 noundef %2, ptr noundef %i.g, i64 noundef %i.h, ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %undo_zip_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !tbaa !28   ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = icmp ugt i64 %2, %i.n
  %i.q = icmp ugt i64 %i.n, %4
  %or.cond.i = or i1 %i.p, %i.q
  br i1 %or.cond.i, label %undo_zip_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.n
  %i.s = icmp samesign ugt i64 %i.n, 1
  br i1 %i.s, label %.lr.ph.preheader.i.i.i, label %reconstruct.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  %.09.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.pre.i.i.i = load i8, ptr %i.g, align 1, !tbaa !7
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.t = phi i8 [ %i.w, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ]
  %.011.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.u = load i8, ptr %.011.i.i.i, align 1, !tbaa !7
  %i.v = add i8 %i.u, %i.t
  %i.w = xor i8 %i.v, -128                        ; 2 uses
  store i8 %i.w, ptr %.011.i.i.i, align 1, !tbaa !7
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 1 ; 2 uses
  %i.x = icmp ult ptr %.0.i.i.i, %i.r
  br i1 %i.x, label %.lr.ph.i.i.i, label %reconstruct.exit.i.i, !llvm.loop !8

reconstruct.exit.i.i:                             ; preds = %.lr.ph.i.i.i, %bb.h
  %i.y = lshr i64 %i.n, 5                         ; 2 uses
  %i.z = add i64 %i.n, 1
  %i.aa = lshr i64 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aa ; 2 uses
  %.not50.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not50.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i4.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i4.i.i, %reconstruct.exit.i.i
  %.030.lcssa.i.i.i = phi ptr [ %3, %reconstruct.exit.i.i ], [ %i.ak, %.lr.ph.i4.i.i ]
  %.029.lcssa.i.i.i = phi ptr [ %i.ab, %reconstruct.exit.i.i ], [ %i.af, %.lr.ph.i4.i.i ]
  %.028.lcssa.i.i.i = phi ptr [ %i.g, %reconstruct.exit.i.i ], [ %i.ad, %.lr.ph.i4.i.i ]
  %i.ac = and i64 %i.n, -32                       ; 2 uses
  %.not51.i.i.i = icmp eq i64 %i.ac, %i.n
  br i1 %.not51.i.i.i, label %undo_zip_impl.exit, label %.lr.ph48.i.i.i

.lr.ph.i4.i.i:                                    ; preds = %reconstruct.exit.i.i, %.lr.ph.i4.i.i
  %.02840.i.i.i = phi ptr [ %i.ad, %.lr.ph.i4.i.i ], [ %i.g, %reconstruct.exit.i.i ] ; 2 uses
  %.02939.i.i.i = phi ptr [ %i.af, %.lr.ph.i4.i.i ], [ %i.ab, %reconstruct.exit.i.i ] ; 2 uses
  %.03038.i.i.i = phi ptr [ %i.ak, %.lr.ph.i4.i.i ], [ %3, %reconstruct.exit.i.i ] ; 3 uses
  %.03237.i.i.i = phi i64 [ %i.al, %.lr.ph.i4.i.i ], [ 0, %reconstruct.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.02840.i.i.i, i64 16 ; 2 uses
  %i.ae = load <16 x i8>, ptr %.02840.i.i.i, align 1, !tbaa !7 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02939.i.i.i, i64 16 ; 2 uses
  %i.ag = load <16 x i8>, ptr %.02939.i.i.i, align 1, !tbaa !7 ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.ae, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ai = shufflevector <16 x i8> %i.ae, <16 x i8> %i.ag, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aj = getelementptr inbounds nuw i8, ptr %.03038.i.i.i, i64 16
  store <16 x i8> %i.ah, ptr %.03038.i.i.i, align 1, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.03038.i.i.i, i64 32 ; 2 uses
  store <16 x i8> %i.ai, ptr %i.aj, align 1, !tbaa !7
  %i.al = add nuw nsw i64 %.03237.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.al, %i.y
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i4.i.i, !llvm.loop !10

.lr.ph48.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph48.i.i.i
  %.046.i.i.i = phi i64 [ %i.ao, %.lr.ph48.i.i.i ], [ %i.ac, %._crit_edge.i.i.i ] ; 2 uses
  %.03145.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph48.i.i.i ], [ %.028.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.03344.i.i.i = phi ptr [ %i.an, %.lr.ph48.i.i.i ], [ %.030.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.03443.i.i.i = phi ptr [ %.135.i.i.i, %.lr.ph48.i.i.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.am = and i64 %.046.i.i.i, 1                  ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.am, 0
  %.135.i.i.i = getelementptr inbounds nuw i8, ptr %.03443.i.i.i, i64 %i.am
  %.1.idx.i.i.i = xor i64 %i.am, 1
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.03145.i.i.i, i64 %.1.idx.i.i.i
  %.in.in.i.i.i = select i1 %.not.i.i.i, ptr %.03145.i.i.i, ptr %.03443.i.i.i
  %.in.i.i.i = load i8, ptr %.in.in.i.i.i, align 1, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.03344.i.i.i, i64 1
  store i8 %.in.i.i.i, ptr %.03344.i.i.i, align 1, !tbaa !7
  %i.ao = add nuw i64 %.046.i.i.i, 1              ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.n
  br i1 %i.ap, label %.lr.ph48.i.i.i, label %undo_zip_impl.exit, !llvm.loop !11

undo_zip_impl.exit:                               ; preds = %.lr.ph48.i.i.i, %bb.e, %bb.f, %bb.g, %._crit_edge.i.i.i
  %.014.i = phi i32 [ 3, %bb.e ], [ %i.l, %bb.f ], [ 23, %bb.g ], [ 0, %._crit_edge.i.i.i ], [ 0, %.lr.ph48.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.b, %bb.c, %undo_zip_impl.exit
  %.026 = phi i32 [ %.014.i, %undo_zip_impl.exit ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.f, %bb.d ]
  ret i32 %.026
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @internal_decode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_apply_zip(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.f) #7 ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = load i64, ptr %i.e, align 8, !tbaa !29
  %i.m = tail call i32 (ptr, i32, ptr, ...) %i.k(ptr noundef nonnull %i.i, i32 noundef %i.g, ptr noundef nonnull @.str, i64 noundef %i.l) #7 ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = call i32 @exr_get_zip_compression_level(ptr noundef %i.o, i32 noundef %i.q, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %apply_zip_impl.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !45   ; 6 uses
  %1 = ptrtoint ptr %i.s to i64                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46   ; 2 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !29   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %internal_zip_deconstruct_bytes.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %.02636.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.s, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02735.i.i = phi ptr [ %.128.i.i, %bb.g ], [ %i.u, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02934.i.i = phi ptr [ %.130.i.i, %bb.g ], [ %i.z, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02735.i.i, i64 1 ; 3 uses
  %i.ab = load i8, ptr %.02735.i.i, align 1, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.02636.i.i, i64 1
  store i8 %i.ab, ptr %.02636.i.i, align 1, !tbaa !7
  %i.ad = icmp ult ptr %i.aa, %i.w
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.02735.i.i, i64 2
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.02934.i.i, i64 1
  store i8 %i.af, ptr %.02934.i.i, align 1, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.130.i.i = phi ptr [ %i.ag, %bb.f ], [ %.02934.i.i, %.lr.ph.i.i ]
  %.128.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aa, %.lr.ph.i.i ] ; 2 uses
  %i.ah = icmp ult ptr %.128.i.i, %i.w
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !12

._crit_edge.i.i:                                  ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %.not44.i.i = icmp eq i64 %i.v, 1
  br i1 %.not44.i.i, label %internal_zip_deconstruct_bytes.exit.i, label %.lr.ph41.preheader.i.i

.lr.ph41.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %.137.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.aj = load i8, ptr %i.s, align 1, !tbaa !7    ; 2 uses
  %i.ak = add i64 %i.v, %1
  %i.al = add i64 %1, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.al)
  %i.am = xor i64 %1, -1
  %i.an = add i64 %umax, %i.am                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 32
  br i1 %min.iters.check, label %.lr.ph41.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph41.preheader.i.i
  %n.vec = and i64 %i.an, -32                     ; 3 uses
  %i.ao = getelementptr i8, ptr %.137.i.i, i64 %n.vec
  %vector.recur.init = insertelement <16 x i8> poison, i8 %i.aj, i64 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load25, %vector.body ]
  %next.gep = getelementptr i8, ptr %.137.i.i, i64 %index ; 3 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !7 ; 3 uses
  %wide.load25 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !7 ; 4 uses
  %i.aq = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ar = shufflevector <16 x i8> %wide.load, <16 x i8> %wide.load25, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.as = sub <16 x i8> %wide.load, %i.aq
  %i.at = sub <16 x i8> %wide.load25, %i.ar
  %i.au = xor <16 x i8> %i.as, splat (i8 -128)
  %i.av = xor <16 x i8> %i.at, splat (i8 -128)
  store <16 x i8> %i.au, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %i.av, ptr %i.ap, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <16 x i8> %wide.load25, i64 15
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %internal_zip_deconstruct_bytes.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %.lr.ph41.preheader.i.i, %middle.block
  %.139.i.i.ph = phi ptr [ %.137.i.i, %.lr.ph41.preheader.i.i ], [ %i.ao, %middle.block ]
  %.038.i.i.ph = phi i8 [ %i.aj, %.lr.ph41.preheader.i.i ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.preheader, %.lr.ph41.i.i
  %.139.i.i = phi ptr [ %.1.i.i, %.lr.ph41.i.i ], [ %.139.i.i.ph, %.lr.ph41.i.i.preheader ] ; 3 uses
  %.038.i.i = phi i8 [ %i.ax, %.lr.ph41.i.i ], [ %.038.i.i.ph, %.lr.ph41.i.i.preheader ]
  %i.ax = load i8, ptr %.139.i.i, align 1, !tbaa !7 ; 2 uses
  %i.ay = sub i8 %i.ax, %.038.i.i
  %i.az = xor i8 %i.ay, -128
  store i8 %i.az, ptr %.139.i.i, align 1, !tbaa !7
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.139.i.i, i64 1 ; 2 uses
  %i.ba = icmp ult ptr %.1.i.i, %i.ai
  br i1 %i.ba, label %.lr.ph41.i.i, label %internal_zip_deconstruct_bytes.exit.i, !llvm.loop !48

internal_zip_deconstruct_bytes.exit.i:            ; preds = %.lr.ph41.i.i, %middle.block, %._crit_edge.i.i, %bb.e
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.be = load i64, ptr %i.e, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !50
  %i.bj = call i32 @exr_compress_buffer(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef %i.bd, i64 noundef %i.be, ptr noundef %i.bg, i64 noundef %i.bi, ptr noundef nonnull %i.b) #7 ; 4 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.h, label %bb.k

bb.h:                                             ; preds = %internal_zip_deconstruct_bytes.exit.i
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !29  ; 2 uses
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !49
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bp, i64 %i.bm, i1 false)
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.br = phi i64 [ %i.bq, %bb.i ], [ %i.bl, %bb.h ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !51
  br label %apply_zip_impl.exit

bb.k:                                             ; preds = %internal_zip_deconstruct_bytes.exit.i
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !31  ; 3 uses
  %.not31.i = icmp eq ptr %i.bt, null
  br i1 %.not31.i, label %apply_zip_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !32
  %i.bw = load i64, ptr %i.e, align 8, !tbaa !29
  %i.bx = load i64, ptr %i.bh, align 8, !tbaa !50
  %i.by = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bz = call i32 (ptr, i32, ptr, ...) %i.bv(ptr noundef nonnull %i.bt, i32 noundef %i.bj, ptr noundef nonnull @.str.1, i64 noundef %i.bw, i64 noundef %i.bx, i32 noundef %i.by) #7, !inline_history !52 ; 0 uses
  br label %apply_zip_impl.exit

apply_zip_impl.exit:                              ; preds = %bb.d, %bb.j, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %i.bj, %bb.k ], [ %i.bj, %bb.l ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.c, %apply_zip_impl.exit
  %.0 = phi i32 [ %.0.i, %apply_zip_impl.exit ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  ret i32 %.0
}

declare i32 @internal_encode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @exr_uncompress_buffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @exr_get_zip_compression_level(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @exr_compress_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !9, !15, !14}
!17 = !{!18, !19, i64 104}
!18 = !{!"_exr_decode_pipeline", !19, i64 0, !20, i64 8, !21, i64 16, !21, i64 18, !4, i64 20, !22, i64 24, !23, i64 32, !4, i64 96, !4, i64 100, !19, i64 104, !20, i64 112, !20, i64 120, !19, i64 128, !20, i64 136, !19, i64 144, !20, i64 152, !19, i64 160, !24, i64 168, !19, i64 176, !20, i64 184, !19, i64 192, !20, i64 200, !19, i64 208, !20, i64 216, !20, i64 224, !20, i64 232, !20, i64 240, !20, i64 248, !20, i64 256, !5, i64 264}
!19 = !{!"long", !5, i64 0}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!"short", !5, i64 0}
!22 = !{!"p1 _ZTS19_priv_exr_context_t", !20, i64 0}
!23 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56}
!24 = !{!"p1 int", !20, i64 0}
!25 = !{!18, !20, i64 184}
!26 = !{!18, !19, i64 192}
!27 = !{!18, !22, i64 24}
!28 = !{!19, !19, i64 0}
!29 = !{!30, !19, i64 112}
!30 = !{!"_exr_encode_pipeline", !19, i64 0, !20, i64 8, !21, i64 16, !21, i64 18, !4, i64 20, !22, i64 24, !23, i64 32, !20, i64 96, !20, i64 104, !19, i64 112, !19, i64 120, !24, i64 128, !19, i64 136, !20, i64 144, !19, i64 152, !19, i64 160, !20, i64 168, !19, i64 176, !19, i64 184, !20, i64 192, !19, i64 200, !20, i64 208, !19, i64 216, !20, i64 224, !20, i64 232, !20, i64 240, !20, i64 248, !20, i64 256, !20, i64 264, !5, i64 272}
!31 = !{!30, !22, i64 24}
!32 = !{!33, !20, i64 72}
!33 = !{!"_priv_exr_context_t", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !34, i64 8, !34, i64 24, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !36, i64 124, !20, i64 128, !20, i64 136, !20, i64 144, !19, i64 152, !20, i64 160, !20, i64 168, !19, i64 176, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !37, i64 200, !42, i64 464, !43, i64 472, !38, i64 480, !5, i64 504, !5, i64 544, !5, i64 545, !5, i64 546, !4, i64 548}
!34 = !{!"", !4, i64 0, !4, i64 4, !35, i64 8}
!35 = !{!"p1 omnipotent char", !20, i64 0}
!36 = !{!"float", !5, i64 0}
!37 = !{!"_priv_exr_part_t", !4, i64 0, !4, i64 4, !38, i64 8, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !40, i64 144, !40, i64 160, !4, i64 176, !4, i64 180, !4, i64 184, !36, i64 188, !4, i64 192, !4, i64 196, !24, i64 200, !24, i64 208, !24, i64 216, !24, i64 224, !19, i64 232, !21, i64 240, !21, i64 242, !4, i64 244, !19, i64 248, !5, i64 256}
!38 = !{!"exr_attribute_list", !4, i64 0, !4, i64 4, !39, i64 8, !39, i64 16}
!39 = !{!"any p2 pointer", !20, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 8}
!41 = !{!"", !4, i64 0, !4, i64 4}
!42 = !{!"p1 _ZTS16_priv_exr_part_t", !20, i64 0}
!43 = !{!"p2 _ZTS16_priv_exr_part_t", !39, i64 0}
!44 = !{!30, !4, i64 20}
!45 = !{!30, !20, i64 192}
!46 = !{!30, !20, i64 104}
!47 = distinct !{!47, !9, !14, !15}
!48 = distinct !{!48, !9, !15, !14}
!49 = !{!30, !20, i64 168}
!50 = !{!30, !19, i64 184}
!51 = !{!30, !19, i64 176}
!52 = distinct !{null}
end_hunk_0
