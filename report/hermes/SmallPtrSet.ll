Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SmallPtrSet?download=true
inline.NumInlined: 79
inline.NumDeleted: 30
begin_hunk_0_@_ZN4llvh19SmallPtrSetImplBase4swapERS0_:bb.a
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.b, align 8, !tbaa !28
  store ptr %i.c, ptr %i.f, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !7
  %i.m = load i32, ptr %i.k, align 8, !tbaa !7
  store i32 %i.m, ptr %i.j, align 8, !tbaa !7
  store i32 %i.l, ptr %i.k, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !7
  %i.q = load i32, ptr %i.o, align 4, !tbaa !7
  store i32 %i.q, ptr %i.n, align 4, !tbaa !7
  store i32 %i.p, ptr %i.o, align 4, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !7
  %i.u = load i32, ptr %i.s, align 8, !tbaa !7
  store i32 %i.u, ptr %i.r, align 8, !tbaa !7
  store i32 %i.t, ptr %i.s, align 8, !tbaa !7
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12   ; 3 uses
  %i.x = icmp ugt i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %i.w to i64
  %.idx = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.g, i64 %.idx, i1 false)
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.w, 1
  br i1 %i.z, label %bb.h, label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !16
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !16
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit

_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit:               ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !7
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !7
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !7
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !7
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !7
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !7
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !7
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !7
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !7
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !11
  store ptr %i.am, ptr %i.f, align 8, !tbaa !11
  %i.an = load ptr, ptr %0, align 8, !tbaa !20
  store ptr %i.an, ptr %i.b, align 8, !tbaa !11
  br label %bb.v

bb.i:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  br i1 %i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12 ; 3 uses
  %i.aq = icmp ugt i32 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.ar = zext i32 %i.ap to i64
  %.idx42 = shl nuw nsw i64 %i.ar, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.c, i64 %.idx42, i1 false)
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit38

bb.l:                                             ; preds = %bb.j
  %i.as = icmp eq i32 %i.ap, 1
  br i1 %i.as, label %bb.m, label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit38

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !16
  store ptr %i.at, ptr %i.h, align 8, !tbaa !16
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit38

_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit38:             ; preds = %bb.k, %bb.l, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !7
  %i.ax = load i32, ptr %i.av, align 8, !tbaa !7
  store i32 %i.ax, ptr %i.au, align 8, !tbaa !7
  store i32 %i.aw, ptr %i.av, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !7
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !7
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !7
  %i.be = load i32, ptr %i.bc, align 8, !tbaa !7
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !7
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !7
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !11
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !11
  %i.bg = load ptr, ptr %1, align 8, !tbaa !20
  store ptr %i.bg, ptr %i.f, align 8, !tbaa !11
  br label %bb.v

bb.n:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7  ; 3 uses
  %i.bj = load i32, ptr %i.ao, align 4, !tbaa !7  ; 3 uses
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.bj) ; 3 uses
  %i.bl = zext i32 %i.bk to i64                   ; 4 uses
  %.idx44 = shl nuw nsw i64 %i.bl, 3              ; 5 uses
  %i.bm = getelementptr i8, ptr %i.d, i64 %.idx44 ; 2 uses
  %.not8.i = icmp eq i32 %i.bk, 0
  br i1 %.not8.i, label %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.bn = add nsw i64 %.idx44, -8                 ; 2 uses
  %i.bo = lshr exact i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 40
  br i1 %min.iters.check, label %.lr.ph.i.preheader71, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %i.h, i64 %.idx44
  %bound0 = icmp ult ptr %i.d, %scevgep
  %bound1 = icmp ult ptr %i.h, %i.bm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 4611686018427387900     ; 3 uses
  %i.bq = shl i64 %n.vec, 3                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.h, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bt ; 3 uses
  %next.gep66 = getelementptr i8, ptr %i.d, i64 %i.bt ; 3 uses
  %i.bu = getelementptr i8, ptr %next.gep66, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep66, align 8, !tbaa !16, !alias.scope !29, !noalias !30
  %wide.load67.a = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !16, !alias.scope !29, !noalias !30
  %i.bv = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load68.a = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !16, !alias.scope !30
  %wide.load69 = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !16, !alias.scope !30
  store <2 x ptr> %wide.load68.a, ptr %next.gep66, align 8, !tbaa !16, !alias.scope !29, !noalias !30
  store <2 x ptr> %wide.load69, ptr %i.bu, align 8, !tbaa !16, !alias.scope !29, !noalias !30
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !16, !alias.scope !30
  store <2 x ptr> %wide.load67.a, ptr %i.bv, align 8, !tbaa !16, !alias.scope !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader71

.lr.ph.i.preheader71:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.br, %middle.block ]
  %.079.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader71, %.lr.ph.i
  %.010.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader71 ] ; 3 uses
  %.079.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader71 ] ; 3 uses
  %i.bx = load ptr, ptr %.079.i, align 8, !tbaa !16
  %i.by = load ptr, ptr %.010.i, align 8, !tbaa !16
  store ptr %i.by, ptr %.079.i, align 8, !tbaa !16
  store ptr %i.bx, ptr %.010.i, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.bz, %i.bm
  br i1 %.not.i, label %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !27

_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit:       ; preds = %.lr.ph.i, %middle.block, %bb.n
  %i.cb = icmp ult i32 %i.bi, %i.bj
  br i1 %i.cb, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx44 ; 2 uses
  %i.ce = zext i32 %i.bj to i64
  %i.cf = load ptr, ptr %1, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.bl ; 2 uses
  %i.ch = sub nuw nsw i64 %i.ce, %i.bl            ; 3 uses
  %i.ci = icmp samesign ugt i64 %i.ch, 1
  br i1 %i.ci, label %bb.p, label %2, !prof !15

bb.p:                                             ; preds = %bb.o
  %gepdiff49 = shl nuw nsw i64 %i.ch, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cg, ptr align 8 %i.cd, i64 %gepdiff49, i1 false)
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39

2:                                                ; preds = %bb.o
  %3 = icmp eq i64 %i.ch, 1
  br i1 %3, label %bb.q, label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39

bb.q:                                             ; preds = %2
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !16
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !16
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39

bb.r:                                             ; preds = %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit
  %i.ck = load ptr, ptr %1, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx44 ; 2 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.bl ; 2 uses
  %narrow = sub nuw i32 %i.bi, %i.bk              ; 3 uses
  %i.co = icmp ugt i32 %narrow, 1
  br i1 %i.co, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.cp = zext i32 %narrow to i64
  %gepdiff = shl nuw nsw i64 %i.cp, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cn, ptr align 8 %i.cl, i64 %gepdiff, i1 false)
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39

bb.t:                                             ; preds = %bb.r
  %i.cq = icmp eq i32 %narrow, 1
  br i1 %i.cq, label %bb.u, label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39

bb.u:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !16
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !16
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39

_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39:             ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %2, %bb.p
  %i.cs = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.ct = load i32, ptr %i.bh, align 4, !tbaa !7
  store i32 %i.ct, ptr %i.ao, align 4, !tbaa !7
  store i32 %i.cs, ptr %i.bh, align 4, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 8, !tbaa !7
  %i.cx = load i32, ptr %i.cv, align 8, !tbaa !7
  store i32 %i.cx, ptr %i.cu, align 8, !tbaa !7
  store i32 %i.cw, ptr %i.cv, align 8, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39, %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit38, %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !19}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !9, i64 0, !9, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!11 = !{!10, !9, i64 8}
!12 = !{!10, !6, i64 20}
!13 = !{!10, !6, i64 24}
!14 = !{!10, !6, i64 16}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!8, !8, i64 0}
!17 = !{!"branch_weights", i32 1999, i32 1}
!18 = !{!"branch_weights", i32 1, i32 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!10, !9, i64 0}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !19, !31, !32}
!27 = distinct !{!27, !19, !31}
!28 = !{!9, !9, i64 0}
!29 = !{!24}
!30 = !{!25}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
