Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SmallPtrSet?download=true
inline.NumInlined: 112
inline.NumDeleted: 55
begin_hunk_0_@_ZN4llvm19SmallPtrSetImplBase8copyFromEPPKvRKS0_:bb.a
bb.q:                                             ; preds = %bb.p
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !18
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !18
  br label %_ZN4llvm19SmallPtrSetImplBase10copyHelperERKS0_.exit

_ZN4llvm19SmallPtrSetImplBase10copyHelperERKS0_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ap = phi i32 [ %.pre.i, %bb.o ], [ %i.al, %bb.p ], [ %i.al, %bb.q ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN4llvm19SmallPtrSetImplBase8moveFromEPPKvjS3_OS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) initializes((8, 16)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.d) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %0, align 8, !tbaa !14
  %i.h = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15   ; 3 uses
  %i.k = icmp ugt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.l = zext i32 %i.j to i64
  %.idx.i = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %i.h, i64 %.idx.i, i1 false)
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !20, !range !21
  br label %_ZN4llvm19SmallPtrSetImplBase10moveHelperEPPKvjS3_OS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.j, 1
  br i1 %i.m, label %bb.g, label %_ZN4llvm19SmallPtrSetImplBase10moveHelperEPPKvjS3_OS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !18
  store ptr %i.n, ptr %1, align 8, !tbaa !18
  br label %_ZN4llvm19SmallPtrSetImplBase10moveHelperEPPKvjS3_OS0_.exit

bb.h:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %4, align 8, !tbaa !14
  store ptr %i.o, ptr %0, align 8, !tbaa !14
  store ptr %3, ptr %4, align 8, !tbaa !14
  br label %_ZN4llvm19SmallPtrSetImplBase10moveHelperEPPKvjS3_OS0_.exit

_ZN4llvm19SmallPtrSetImplBase10moveHelperEPPKvjS3_OS0_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.p = phi i8 [ 1, %bb.g ], [ 1, %bb.f ], [ %.pre.i, %bb.e ], [ 0, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.t = load <2 x i32>, ptr %i.q, align 8, !tbaa !23
  store <2 x i32> %i.t, ptr %i.r, align 8, !tbaa !23
  store i8 %i.p, ptr %i.a, align 8, !tbaa !20
  store i32 %2, ptr %i.q, align 8, !tbaa !16
  store i32 0, ptr %i.s, align 4, !tbaa !15
  store i8 1, ptr %i.e, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm19SmallPtrSetImplBase4swapEPPKvS3_RS0_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(17) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(17) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %3
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !20, !range !21, !noundef !22
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !35
  %i.i = load ptr, ptr %3, align 8, !tbaa !35
  store ptr %i.i, ptr %0, align 8, !tbaa !35
  store ptr %i.h, ptr %3, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !23
  %i.m = load i32, ptr %i.k, align 8, !tbaa !23
  store i32 %i.m, ptr %i.j, align 8, !tbaa !23
  store i32 %i.l, ptr %i.k, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !23
  %i.q = load i32, ptr %i.o, align 4, !tbaa !23
  store i32 %i.q, ptr %i.n, align 4, !tbaa !23
  store i32 %i.p, ptr %i.o, align 4, !tbaa !23
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23   ; 3 uses
  %i.u = load i32, ptr %i.r, align 4, !tbaa !23   ; 3 uses
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.u) ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !14     ; 6 uses
  %i.x = zext i32 %i.v to i64                     ; 4 uses
  %.idx39 = shl nuw nsw i64 %i.x, 3               ; 5 uses
  %i.y = getelementptr i8, ptr %i.w, i64 %.idx39  ; 2 uses
  %.not8.i = icmp eq i32 %i.v, 0
  br i1 %.not8.i, label %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.z = load ptr, ptr %3, align 8, !tbaa !14     ; 6 uses
  %i.aa = add nsw i64 %.idx39, -8                 ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 40
  br i1 %min.iters.check, label %.lr.ph.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %i.z, i64 %.idx39
  %bound0 = icmp ult ptr %i.w, %scevgep
  %bound1 = icmp ult ptr %i.z, %i.y
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ag ; 3 uses
  %next.gep51 = getelementptr i8, ptr %i.w, i64 %i.ag ; 3 uses
  %i.ah = getelementptr i8, ptr %next.gep51, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep51, align 8, !tbaa !18, !alias.scope !36, !noalias !37
  %wide.load52.a = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !18, !alias.scope !36, !noalias !37
  %i.ai = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load53.a = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !18, !alias.scope !37
  %wide.load54 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !18, !alias.scope !37
  store <2 x ptr> %wide.load53.a, ptr %next.gep51, align 8, !tbaa !18, !alias.scope !36, !noalias !37
  store <2 x ptr> %wide.load54, ptr %i.ah, align 8, !tbaa !18, !alias.scope !36, !noalias !37
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !18, !alias.scope !37
  store <2 x ptr> %wide.load52.a, ptr %i.ai, align 8, !tbaa !18, !alias.scope !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader56

.lr.ph.i.preheader56:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.preheader ], [ %i.ae, %middle.block ]
  %.079.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader56, %.lr.ph.i
  %.010.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader56 ] ; 3 uses
  %.079.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader56 ] ; 3 uses
  %i.ak = load ptr, ptr %.079.i, align 8, !tbaa !18
  %i.al = load ptr, ptr %.010.i, align 8, !tbaa !18
  store ptr %i.al, ptr %.079.i, align 8, !tbaa !18
  store ptr %i.ak, ptr %.010.i, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.am, %i.y
  br i1 %.not.i, label %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !34

_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i, %middle.block, %bb.f
  %i.ao = icmp ult i32 %i.t, %i.u
  br i1 %i.ao, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx39 ; 2 uses
  %i.ar = zext i32 %i.u to i64
  %i.as = load ptr, ptr %3, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.x ; 2 uses
  %i.au = sub nuw nsw i64 %i.ar, %i.x             ; 2 uses
  %i.av = icmp samesign ugt i64 %i.au, 1
  br i1 %i.av, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
  %gepdiff44 = shl nuw nsw i64 %i.au, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.at, ptr align 8 %i.aq, i64 %gepdiff44, i1 false)
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !18
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !18
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit
  %i.ax = load ptr, ptr %3, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx39 ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.x ; 2 uses
  %narrow = sub nuw i32 %i.t, %i.v                ; 3 uses
  %i.bb = icmp ugt i32 %narrow, 1
  br i1 %i.bb, label %bb.k, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.bc = zext i32 %narrow to i64
  %gepdiff = shl nuw nsw i64 %i.bc, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ba, ptr align 8 %i.ay, i64 %gepdiff, i1 false)
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %narrow, 1
  br i1 %i.bd, label %bb.m, label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !18
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !18
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit:               ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  %i.bf = load i32, ptr %i.r, align 4, !tbaa !23
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !23
  store i32 %i.bg, ptr %i.r, align 4, !tbaa !23
  store i32 %i.bf, ptr %i.s, align 4, !tbaa !23
  br label %bb.r

bb.n:                                             ; preds = %bb.c, %bb.e
  %i.bh = phi ptr [ %1, %bb.c ], [ %2, %bb.e ]    ; 3 uses
  %i.bi = phi ptr [ %0, %bb.c ], [ %3, %bb.e ]    ; 5 uses
  %i.bj = phi ptr [ %3, %bb.c ], [ %0, %bb.e ]    ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !15 ; 3 uses
  %i.bn = icmp ugt i32 %i.bm, 1
  br i1 %i.bn, label %bb.o, label %bb.p, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.bo = zext i32 %i.bm to i64
  %.idx = shl nuw nsw i64 %i.bo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bh, ptr align 8 %i.bk, i64 %.idx, i1 false)
  br label %_ZN4llvm4copyINS_14iterator_rangeIPPKvEES4_EET0_OT_S6_.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = icmp eq i32 %i.bm, 1
  br i1 %i.bp, label %bb.q, label %_ZN4llvm4copyINS_14iterator_rangeIPPKvEES4_EET0_OT_S6_.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !18
  store ptr %i.bq, ptr %i.bh, align 8, !tbaa !18
  br label %_ZN4llvm4copyINS_14iterator_rangeIPPKvEES4_EET0_OT_S6_.exit

_ZN4llvm4copyINS_14iterator_rangeIPPKvEES4_EET0_OT_S6_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !23
  %i.bu = load i32, ptr %i.bs, align 8, !tbaa !23
  store i32 %i.bu, ptr %i.br, align 8, !tbaa !23
  store i32 %i.bt, ptr %i.bs, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !23
  %i.bx = load i32, ptr %i.bl, align 4, !tbaa !23
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !23
  store i32 %i.bw, ptr %i.bl, align 4, !tbaa !23
  %i.by = load ptr, ptr %i.bi, align 8, !tbaa !14
  store ptr %i.by, ptr %i.bj, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i8 0, ptr %i.bz, align 8, !tbaa !20
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i8 1, ptr %i.ca, align 8, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN4llvm4copyINS_14iterator_rangeIPPKvEES4_EET0_OT_S6_.exit, %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN4llvm22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(1) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"bool", !6, i64 0}
!13 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !11, i64 0, !7, i64 8, !7, i64 12, !12, i64 16}
!14 = !{!13, !11, i64 0}
!15 = !{!13, !7, i64 12}
!16 = !{!13, !7, i64 8}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!10, !10, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!13, !12, i64 16}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!7, !7, i64 0}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = !{!"branch_weights", i32 1999, i32 1}
!28 = !{!"branch_weights", i32 1, i32 0}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !19, !38, !39}
!34 = distinct !{!34, !19, !38}
!35 = !{!11, !11, i64 0}
!36 = !{!31}
!37 = !{!32}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
