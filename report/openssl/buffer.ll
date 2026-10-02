Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/buffer?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BUF_MEM_grow:bb.a

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noalias ptr @CRYPTO_secure_malloc(i64 noundef range(i64 4, 2147483645) %i.l, ptr noundef nonnull @.str, i32 noundef 60) #6 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 3 uses
  %i.s = icmp ne ptr %i.r, null
  %i.t = icmp ne ptr %i.p, null
  %or.cond.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i, label %sec_alloc_realloc.exit.thread, label %sec_alloc_realloc.exit

sec_alloc_realloc.exit.thread:                    ; preds = %bb.j
  %i.u = load i64, ptr %0, align 8, !tbaa !15     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.r, i64 %i.u, i1 false)
  tail call void @CRYPTO_secure_clear_free(ptr noundef nonnull %i.r, i64 noundef %i.u, ptr noundef nonnull @.str, i32 noundef 64) #6
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.x = tail call ptr @CRYPTO_realloc(ptr noundef %i.w, i64 noundef %i.l, ptr noundef nonnull @.str, i32 noundef 95) #6
  br label %sec_alloc_realloc.exit

sec_alloc_realloc.exit:                           ; preds = %bb.j, %bb.k
  %.0 = phi ptr [ %i.x, %bb.k ], [ %i.p, %bb.j ]  ; 2 uses
  %i.y = icmp eq ptr %.0, null
  br i1 %i.y, label %bb.m, label %bb.l

bb.l:                                             ; preds = %sec_alloc_realloc.exit.thread, %sec_alloc_realloc.exit
  %.043 = phi ptr [ %i.p, %sec_alloc_realloc.exit.thread ], [ %.0, %sec_alloc_realloc.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.043, ptr %i.z, align 8, !tbaa !13
  store i64 %i.l, ptr %i.b, align 8, !tbaa !14
  %i.aa = load i64, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.043, i64 %i.aa
  %i.ac = sub i64 %1, %i.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.ac, i1 false)
  store i64 %1, ptr %0, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %sec_alloc_realloc.exit, %bb.h, %bb.f, %bb.b
  %.035 = phi i64 [ %1, %bb.b ], [ %1, %bb.f ], [ 0, %bb.h ], [ %1, %bb.l ], [ 0, %sec_alloc_realloc.exit ]
  ret i64 %.035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef i64 @BUF_MEM_grow_clean(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !15     ; 4 uses
  %.not = icmp ult i64 %i.a, %1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not48 = icmp eq ptr %i.c, null
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %1
  %i.e = sub nuw i64 %i.a, %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %1, ptr %0, align 8, !tbaa !15
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %.not46 = icmp ult i64 %i.g, %1
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.a
  %i.k = sub nuw i64 %1, %i.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %i.k, i1 false)
  store i64 %1, ptr %0, align 8, !tbaa !15
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.l = icmp ugt i64 %1, 1610612732
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @__func__.BUF_MEM_grow_clean) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 7, i32 noundef 524550, ptr noundef null) #6
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.m = trunc nuw nsw i64 %1 to i32
  %.lhs.trunc = add nuw nsw i32 %i.m, 3
  %i.n = udiv i32 %.lhs.trunc, 3
  %i.o = shl nuw nsw i32 %i.n, 2
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12
  %i.s = and i64 %i.r, 1
  %.not47 = icmp eq i64 %i.s, 0
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noalias ptr @CRYPTO_secure_malloc(i64 noundef range(i64 4, 2147483645) %i.p, ptr noundef nonnull @.str, i32 noundef 60) #6 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 3 uses
  %i.w = icmp ne ptr %i.v, null
  %i.x = icmp ne ptr %i.t, null
  %or.cond.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i, label %sec_alloc_realloc.exit.thread, label %sec_alloc_realloc.exit

sec_alloc_realloc.exit.thread:                    ; preds = %bb.j
  %i.y = load i64, ptr %0, align 8, !tbaa !15     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.v, i64 %i.y, i1 false)
  tail call void @CRYPTO_secure_clear_free(ptr noundef nonnull %i.v, i64 noundef %i.y, ptr noundef nonnull @.str, i32 noundef 64) #6
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = tail call ptr @CRYPTO_clear_realloc(ptr noundef %i.aa, i64 noundef %i.g, i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 132) #6
  br label %sec_alloc_realloc.exit

sec_alloc_realloc.exit:                           ; preds = %bb.j, %bb.k
  %.0 = phi ptr [ %i.ab, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  %i.ac = icmp eq ptr %.0, null
  br i1 %i.ac, label %bb.m, label %bb.l

bb.l:                                             ; preds = %sec_alloc_realloc.exit.thread, %sec_alloc_realloc.exit
  %.050 = phi ptr [ %i.t, %sec_alloc_realloc.exit.thread ], [ %.0, %sec_alloc_realloc.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.050, ptr %i.ad, align 8, !tbaa !13
  store i64 %i.p, ptr %i.f, align 8, !tbaa !14
  %i.ae = load i64, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.050, i64 %i.ae
  %i.ag = sub i64 %1, %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.af, i8 0, i64 %i.ag, i1 false)
  store i64 %1, ptr %0, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %sec_alloc_realloc.exit, %bb.h, %bb.f, %bb.d
  %.040 = phi i64 [ %1, %bb.d ], [ %1, %bb.f ], [ 0, %bb.h ], [ %1, %bb.l ], [ 0, %sec_alloc_realloc.exit ]
  ret i64 %.040
}

declare ptr @CRYPTO_clear_realloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @BUF_reverse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.a = getelementptr i8, ptr %0, i64 %2         ; 7 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.b = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %1, %i.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %2, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 6 uses
  %i.d = sub i64 0, %n.vec
  %i.e = getelementptr i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.g ; 2 uses
  %next.gep41 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep41, align 1, !tbaa !25, !alias.scope !26
  %wide.load42 = load <16 x i8>, ptr %i.h, align 1, !tbaa !25, !alias.scope !26
  %i.i = getelementptr i8, ptr %next.gep, i64 -16
  %i.j = getelementptr i8, ptr %next.gep, i64 -32
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse43 = shufflevector <16 x i8> %wide.load42, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.i, align 1, !tbaa !25, !alias.scope !27, !noalias !26
  store <16 x i8> %reverse43, ptr %i.j, align 1, !tbaa !25, !alias.scope !27, !noalias !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %2, -8                       ; 5 uses
  %i.l = sub i64 0, %n.vec45
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %1, i64 %n.vec45
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 3 uses
  %i.o = sub i64 0, %index46
  %next.gep47 = getelementptr i8, ptr %i.a, i64 %i.o
  %next.gep48 = getelementptr i8, ptr %1, i64 %index46
  %wide.load49 = load <8 x i8>, ptr %next.gep48, align 1, !tbaa !25, !alias.scope !26
  %i.p = getelementptr i8, ptr %next.gep47, i64 -8
  %reverse50 = shufflevector <8 x i8> %wide.load49, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse50, ptr %i.p, align 1, !tbaa !25, !alias.scope !27, !noalias !26
  %index.next51 = add nuw i64 %index46, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %2, %n.vec45
  br i1 %cmp.n52, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01726.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 3 uses
  %.pn2225.ph = phi ptr [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.e, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 2 uses
  %.02024.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.f, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %2, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.01726.prol = phi i64 [ %i.t, %.lr.ph.prol ], [ %.01726.ph, %.lr.ph.preheader ]
  %.pn2225.prol = phi ptr [ %.018.prol, %.lr.ph.prol ], [ %.pn2225.ph, %.lr.ph.preheader ]
  %.02024.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.02024.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.018.prol = getelementptr i8, ptr %.pn2225.prol, i64 -1 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02024.prol, i64 1 ; 2 uses
  %i.s = load i8, ptr %.02024.prol, align 1, !tbaa !25
  store i8 %i.s, ptr %.018.prol, align 1, !tbaa !25
  %i.t = add nuw i64 %.01726.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.01726.unr = phi i64 [ %.01726.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.pn2225.unr = phi ptr [ %.pn2225.ph, %.lr.ph.preheader ], [ %.018.prol, %.lr.ph.prol ]
  %.02024.unr = phi ptr [ %.02024.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.u = sub i64 %.01726.ph, %2
  %i.v = icmp ugt i64 %i.u, -8
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01726 = phi i64 [ %i.am, %.lr.ph ], [ %.01726.unr, %.lr.ph.prol.loopexit ]
  %.pn2225 = phi ptr [ %.018.7, %.lr.ph ], [ %.pn2225.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %.02024 = phi ptr [ %i.ak, %.lr.ph ], [ %.02024.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.018 = getelementptr i8, ptr %.pn2225, i64 -1
  %i.w = getelementptr inbounds nuw i8, ptr %.02024, i64 1
  %i.x = load i8, ptr %.02024, align 1, !tbaa !25
  store i8 %i.x, ptr %.018, align 1, !tbaa !25
  %.018.1 = getelementptr i8, ptr %.pn2225, i64 -2
  %i.y = getelementptr inbounds nuw i8, ptr %.02024, i64 2
  %i.z = load i8, ptr %i.w, align 1, !tbaa !25
  store i8 %i.z, ptr %.018.1, align 1, !tbaa !25
  %.018.2 = getelementptr i8, ptr %.pn2225, i64 -3
  %i.aa = getelementptr inbounds nuw i8, ptr %.02024, i64 3
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !25
  store i8 %i.ab, ptr %.018.2, align 1, !tbaa !25
  %.018.3 = getelementptr i8, ptr %.pn2225, i64 -4
  %i.ac = getelementptr inbounds nuw i8, ptr %.02024, i64 4
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !25
  store i8 %i.ad, ptr %.018.3, align 1, !tbaa !25
  %.018.4 = getelementptr i8, ptr %.pn2225, i64 -5
  %i.ae = getelementptr inbounds nuw i8, ptr %.02024, i64 5
  %i.af = load i8, ptr %i.ac, align 1, !tbaa !25
  store i8 %i.af, ptr %.018.4, align 1, !tbaa !25
  %.018.5 = getelementptr i8, ptr %.pn2225, i64 -6
  %i.ag = getelementptr inbounds nuw i8, ptr %.02024, i64 6
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !25
  store i8 %i.ah, ptr %.018.5, align 1, !tbaa !25
  %.018.6 = getelementptr i8, ptr %.pn2225, i64 -7
  %i.ai = getelementptr inbounds nuw i8, ptr %.02024, i64 7
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !25
  store i8 %i.aj, ptr %.018.6, align 1, !tbaa !25
  %.018.7 = getelementptr i8, ptr %.pn2225, i64 -8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02024, i64 8
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !25
  store i8 %i.al, ptr %.018.7, align 1, !tbaa !25
  %i.am = add nuw i64 %.01726, 8                  ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.am, %2
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !22

bb.c:                                             ; preds = %bb.a
  %i.an = lshr i64 %2, 1                          ; 3 uses
  %.not32 = icmp eq i64 %i.an, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  %xtraiter57 = and i64 %i.an, 3                  ; 3 uses
  %i.ap = icmp ult i64 %2, 8
  br i1 %i.ap, label %.lr.ph30.epil.preheader, label %.lr.ph30.preheader.new

.lr.ph30.preheader.new:                           ; preds = %.lr.ph30.preheader
  %unroll_iter = and i64 %i.an, 9223372036854775804
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30, %.lr.ph30.preheader.new
  %.pn29 = phi ptr [ %i.ao, %.lr.ph30.preheader.new ], [ %.0.3, %.lr.ph30 ] ; 4 uses
  %.11927 = phi ptr [ %0, %.lr.ph30.preheader.new ], [ %i.bb, %.lr.ph30 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph30.preheader.new ], [ %niter.next.3, %.lr.ph30 ]
  %.0 = getelementptr inbounds i8, ptr %.pn29, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %.0, align 1, !tbaa !25
  %i.ar = load i8, ptr %.11927, align 1, !tbaa !25
  store i8 %i.ar, ptr %.0, align 1, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %.11927, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.11927, align 1, !tbaa !25
  %.0.1 = getelementptr inbounds i8, ptr %.pn29, i64 -2 ; 2 uses
  %i.at = load i8, ptr %.0.1, align 1, !tbaa !25
  %i.au = load i8, ptr %i.as, align 1, !tbaa !25
  store i8 %i.au, ptr %.0.1, align 1, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %.11927, i64 2 ; 2 uses
  store i8 %i.at, ptr %i.as, align 1, !tbaa !25
  %.0.2 = getelementptr inbounds i8, ptr %.pn29, i64 -3 ; 2 uses
  %i.aw = load i8, ptr %.0.2, align 1, !tbaa !25
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !25
  store i8 %i.ax, ptr %.0.2, align 1, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %.11927, i64 3 ; 2 uses
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !25
  %.0.3 = getelementptr inbounds i8, ptr %.pn29, i64 -4 ; 4 uses
  %i.az = load i8, ptr %.0.3, align 1, !tbaa !25
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !25
  store i8 %i.ba, ptr %.0.3, align 1, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %.11927, i64 4 ; 2 uses
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !25
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph30, !llvm.loop !23

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph30
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.loopexit, label %.lr.ph30.epil.preheader

.lr.ph30.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph30.preheader
  %.pn29.epil.init = phi ptr [ %i.ao, %.lr.ph30.preheader ], [ %.0.3, %.loopexit.loopexit.unr-lcssa ]
  %.11927.epil.init = phi ptr [ %0, %.lr.ph30.preheader ], [ %i.bb, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %.lr.ph30.epil

.lr.ph30.epil:                                    ; preds = %.lr.ph30.epil, %.lr.ph30.epil.preheader
  %.pn29.epil = phi ptr [ %.0.epil, %.lr.ph30.epil ], [ %.pn29.epil.init, %.lr.ph30.epil.preheader ]
  %.11927.epil = phi ptr [ %i.be, %.lr.ph30.epil ], [ %.11927.epil.init, %.lr.ph30.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph30.epil ], [ 0, %.lr.ph30.epil.preheader ]
  %.0.epil = getelementptr inbounds i8, ptr %.pn29.epil, i64 -1 ; 3 uses
  %i.bc = load i8, ptr %.0.epil, align 1, !tbaa !25
  %i.bd = load i8, ptr %.11927.epil, align 1, !tbaa !25
  store i8 %i.bd, ptr %.0.epil, align 1, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %.11927.epil, i64 1
  store i8 %i.bc, ptr %.11927.epil, align 1, !tbaa !25
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter57
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph30.epil, !llvm.loop !24

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.loopexit.loopexit.unr-lcssa, %.lr.ph30.epil, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.c
  ret void
}

declare noalias ptr @CRYPTO_secure_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"buf_mem_st", !8, i64 0, !10, i64 8, !8, i64 16, !8, i64 24}
!12 = !{!11, !8, i64 24}
!13 = !{!11, !10, i64 8}
!14 = !{!11, !8, i64 16}
!15 = !{!11, !8, i64 0}
!16 = distinct !{!16, i1 false, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !28, !29, !30}
!20 = distinct !{!20, !28, !29, !30}
!21 = distinct !{!21, !32}
!22 = distinct !{!22, !28, !29}
!23 = distinct !{!23, !28}
!24 = distinct !{!24, !32}
!25 = !{!4, !4, i64 0}
!26 = !{!17}
!27 = !{!18}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 8, i32 24}
!32 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
