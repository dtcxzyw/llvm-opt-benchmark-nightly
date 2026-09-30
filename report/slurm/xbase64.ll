Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/xbase64?download=true
begin_hunk_0_@xbase64_encode:bb.a
  %i.u = or disjoint i8 %i.q, %i.t
  %i.v = zext nneg i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @encode, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = getelementptr i8, ptr %i.n, i64 1
  store i8 %i.x, ptr %i.y, align 1
  %i.z = load i8, ptr %i.r, align 1
  %i.aa = shl i8 %i.z, 2
  %i.ab = and i8 %i.aa, 60
  %i.ac = getelementptr i8, ptr %i.h, i64 2       ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = lshr i8 %i.ad, 6
  %i.af = or disjoint i8 %i.ab, %i.ae
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @encode, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr i8, ptr %i.n, i64 2
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.ac, align 1
  %i.al = and i8 %i.ak, 63
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @encode, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i64 %.059, 4                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %i.ao, ptr %i.aq, align 1
  %i.ar = add i64 %.05558, 3                      ; 2 uses
  %i.as = add i64 %.05558, 5
  %i.at = icmp ult i64 %i.as, %i.f
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i64 [ 0, %bb.a ], [ %i.ar, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ap, %.lr.ph ] ; 4 uses
  %i.au = srem i32 %1, 3
  switch i32 %i.au, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.055.lcssa ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = lshr i8 %i.aw, 2
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @encode, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.lcssa ; 2 uses
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = load i8, ptr %i.av, align 1
  %i.bd = shl i8 %i.bc, 4
  %i.be = and i8 %i.bd, 48
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @encode, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 16
  %i.bi = getelementptr i8, ptr %i.bb, i64 1
  store i8 %i.bh, ptr %i.bi, align 1
  br label %.sink.split

bb.c:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.055.lcssa ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = lshr i8 %i.bk, 2
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @encode, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.lcssa ; 2 uses
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = load i8, ptr %i.bj, align 1
  %i.br = shl i8 %i.bq, 4
  %i.bs = and i8 %i.br, 48
  %i.bt = getelementptr i8, ptr %i.bj, i64 1      ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = lshr i8 %i.bu, 4
  %i.bw = or disjoint i8 %i.bs, %i.bv
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @encode, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr i8, ptr %i.bp, i64 1
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = load i8, ptr %i.bt, align 1
  %i.cc = shl i8 %i.cb, 2
  %i.cd = and i8 %i.cc, 60
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @encode, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i8 [ %i.cg, %bb.c ], [ 61, %bb.b ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.lcssa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.lcssa
  %i.cj = getelementptr i8, ptr %i.ci, i64 2
  store i8 %.sink, ptr %i.cj, align 1
  %i.ck = getelementptr i8, ptr %i.ch, i64 3
  store i8 61, ptr %i.ck, align 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %._crit_edge
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xbase64_decode(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #6 ; 5 uses
  store ptr null, ptr %0, align 8
  %.not = icmp ne i64 %i.b, 0
  %i.c = and i64 %i.b, 3
  %.not95 = icmp eq i64 %i.c, 0
  %or.cond104 = and i1 %.not, %.not95
  br i1 %or.cond104, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = lshr exact i64 %i.b, 2
  %i.e = mul nuw i64 %i.d, 3                      ; 4 uses
  %i.f = add nuw i64 %i.e, 1
  %i.g = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.f, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull @__func__.xbase64_decode) #5 ; 4 uses
  store ptr %i.g, ptr %i.a, align 8
  %i.h = icmp ugt i64 %i.b, 7
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv111 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i32
  %memchr100 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @encode, i32 %i.k, i64 65) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = sext i8 %i.m to i32
  %memchr101 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @encode, i32 %i.n, i64 65) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = sext i8 %i.p to i32
  %memchr102 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @encode, i32 %i.q, i64 65) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = sext i8 %i.s to i32
  %memchr103 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @encode, i32 %i.t, i64 65) ; 2 uses
  %i.u = insertelement <4 x ptr> poison, ptr %memchr100, i64 0
  %i.v = insertelement <4 x ptr> %i.u, ptr %memchr101, i64 1
  %i.w = insertelement <4 x ptr> %i.v, ptr %memchr102, i64 2
  %i.x = insertelement <4 x ptr> %i.w, ptr %memchr103, i64 3
  %.fr = freeze <4 x ptr> %i.x
  %i.y = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.z = bitcast <4 x i1> %i.y to i4
  %i.aa = icmp eq i4 %i.z, 0
  br i1 %i.aa, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.ab = ptrtoint ptr %memchr100 to i64
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = sub i8 %i.ac, ptrtoint (ptr @encode to i8)
  %i.ae = ptrtoint ptr %memchr101 to i64
  %i.af = trunc i64 %i.ae to i8                   ; 2 uses
  %i.ag = sub i8 %i.af, ptrtoint (ptr @encode to i8)
  %i.ah = ptrtoint ptr %memchr102 to i64
  %i.ai = trunc i64 %i.ah to i8                   ; 2 uses
  %i.aj = sub i8 %i.ai, ptrtoint (ptr @encode to i8)
  %i.ak = ptrtoint ptr %memchr103 to i64
  %i.al = trunc i64 %i.ak to i8
  %i.am = sub i8 %i.al, ptrtoint (ptr @encode to i8)
  %i.an = shl i8 %i.ad, 2
  %i.ao = ashr i8 %i.ag, 4
  %i.ap = or i8 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.g, i64 %indvars.iv ; 3 uses
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = shl i8 %i.af, 4
  %i.as = ashr i8 %i.aj, 2
  %i.at = or i8 %i.as, %i.ar
  %i.au = getelementptr i8, ptr %i.aq, i64 1
  store i8 %i.at, ptr %i.au, align 1
  %i.av = shl i8 %i.ai, 6
  %i.aw = or i8 %i.am, %i.av
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i8 %i.aw, ptr %i.ax, align 1
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 4 ; 2 uses
  %i.ay = add nuw nsw i64 %indvars.iv111, 11
  %i.az = icmp ugt i64 %i.b, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.084.lcssa = phi i64 [ 0, %bb.b ], [ %indvars.iv.next112, %bb.c ]
  %.083.lcssa = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.084.lcssa ; 4 uses
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = sext i8 %i.bb to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @encode, i32 %i.bc, i64 65) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i8 %i.be to i32
  %memchr96 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @encode, i32 %i.bf, i64 65) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bh = load i8, ptr %i.bg, align 1             ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 61
  br i1 %i.bk, label %bb.d, label %.thread

bb.d:                                             ; preds = %._crit_edge
  %2 = icmp eq i8 %i.bh, 61
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = add i64 %i.e, -2
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bm = sext i8 %i.bh to i32
  %memchr99 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @encode, i32 %i.bm, i64 65)
  %i.bn = add i64 %i.e, -1
  br label %bb.g

.thread:                                          ; preds = %._crit_edge
  %i.bo = sext i8 %i.bj to i32
  %i.bp = sext i8 %i.bh to i32
  %memchr97 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @encode, i32 %i.bp, i64 65)
  %memchr98 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @encode, i32 %i.bo, i64 65)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread, %bb.e
  %.085 = phi i64 [ %i.bl, %bb.e ], [ %i.bn, %bb.f ], [ %i.e, %.thread ]
  %.082 = phi ptr [ @encode, %bb.e ], [ %memchr99, %bb.f ], [ %memchr97, %.thread ] ; 2 uses
  %.0 = phi ptr [ @encode, %bb.e ], [ @encode, %bb.f ], [ %memchr98, %.thread ] ; 2 uses
  %i.bq = insertelement <4 x ptr> poison, ptr %memchr, i64 0
  %i.br = insertelement <4 x ptr> %i.bq, ptr %memchr96, i64 1
  %i.bs = insertelement <4 x ptr> %i.br, ptr %.082, i64 2
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %.0, i64 3
  %.fr119 = freeze <4 x ptr> %i.bt
  %i.bu = icmp eq <4 x ptr> %.fr119, splat (ptr null)
  %i.bv = bitcast <4 x i1> %i.bu to i4
  %i.bw = icmp eq i4 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bx = ptrtoint ptr %memchr to i64
  %i.by = trunc i64 %i.bx to i8
  %i.bz = sub i8 %i.by, ptrtoint (ptr @encode to i8)
  %i.ca = ptrtoint ptr %memchr96 to i64
  %i.cb = trunc i64 %i.ca to i8                   ; 2 uses
  %i.cc = sub i8 %i.cb, ptrtoint (ptr @encode to i8)
  %i.cd = ptrtoint ptr %.082 to i64
  %i.ce = trunc i64 %i.cd to i8                   ; 2 uses
  %i.cf = sub i8 %i.ce, ptrtoint (ptr @encode to i8)
  %i.cg = ptrtoint ptr %.0 to i64
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = sub i8 %i.ch, ptrtoint (ptr @encode to i8)
  %i.cj = shl i8 %i.bz, 2
  %i.ck = ashr i8 %i.cc, 4
  %i.cl = or i8 %i.ck, %i.cj
  %i.cm = getelementptr i8, ptr %i.g, i64 %.083.lcssa ; 3 uses
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = shl i8 %i.cb, 4
  %i.co = ashr i8 %i.cf, 2
  %i.cp = or i8 %i.co, %i.cn
  %i.cq = getelementptr i8, ptr %i.cm, i64 1
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = shl i8 %i.ce, 6
  %i.cs = or i8 %i.ci, %i.cr
  %i.ct = getelementptr i8, ptr %i.cm, i64 2
  store i8 %i.cs, ptr %i.ct, align 1
  store ptr %i.g, ptr %0, align 8
  %i.cu = trunc i64 %.085 to i32
  br label %bb.i

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.a
  call void @slurm_xfree(ptr noundef nonnull %i.a) #5
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h
  %.086 = phi i32 [ -1, %.loopexit ], [ %i.cu, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.086
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !8, !9}
!11 = distinct !{!11, !8, !9}
end_hunk_0
