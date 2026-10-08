Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/predtest?download=true
inline.NumInlined: 59
inline.NumDeleted: 20
begin_hunk_0_@lookup_proof_cache:bb.a
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = call ptr @get_op_index_interpretation(i32 noundef %0) #7 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  %.not99 = icmp eq ptr %i.u, null
  br i1 %.not99, label %.critedge, label %.lr.ph199.split

.lr.ph199.split:                                  ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.v, align 4
  %i.aa = icmp sgt i32 %i.z, 0                    ; 2 uses
  br i1 %2, label %.lr.ph199.split.split.us.preheader, label %.lr.ph199.split.split.preheader

.lr.ph199.split.split.preheader:                  ; preds = %.lr.ph199.split
  br i1 %i.aa, label %.lr.ph, label %.critedge

.lr.ph199.split.split.us.preheader:               ; preds = %.lr.ph199.split
  br i1 %i.aa, label %.lr.ph.us, label %.critedge

.lr.ph.us:                                        ; preds = %.lr.ph199.split.split.us.preheader, %.loopexit
  %.087196.us215296 = phi i8 [ %.491.us217.ph, %.loopexit ], [ 0, %.lr.ph199.split.split.us.preheader ] ; 2 uses
  %indvars.iv244295 = phi i64 [ %indvars.iv.next245257, %.loopexit ], [ 0, %.lr.ph199.split.split.us.preheader ] ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv244295
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.x, align 4
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph192.us, label %.loopexit

.lr.ph192.us:                                     ; preds = %.lr.ph.us, %.thread112.us.us
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %.thread112.us.us ], [ 0, %.lr.ph.us ] ; 2 uses
  %.188123.us191.us = phi i8 [ %.390.ph.us.us, %.thread112.us.us ], [ %.087196.us215296, %.lr.ph.us ] ; 2 uses
  %i.aj = load ptr, ptr %i.y, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv242
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = load i32, ptr %i.al, align 4
  %.not102.us.us = icmp eq i32 %i.ae, %i.am
  br i1 %.not102.us.us, label %bb.j, label %.thread112.us.us

bb.j:                                             ; preds = %.lr.ph192.us
  %i.an = load i32, ptr %i.af, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, -1
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [6 x i8], ptr @RC_refutes_table, i64 %i.ar
  %i.at = add i32 %i.an, -1
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !range !6, !noundef !7
  %i.ax = or i8 %i.aw, %.188123.us191.us          ; 5 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr @RC_refute_table, i64 %i.ar
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.au
  %.0.us.us = load i32, ptr %i.az, align 4        ; 2 uses
  switch i32 %.0.us.us, label %bb.m [
    i32 0, label %.thread112.us.us
    i32 6, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %i.ag, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = call i32 @get_opfamily_member_for_cmptype(i32 noundef %i.ae, i32 noundef %i.ba, i32 noundef %i.bc, i32 noundef 3) #7 ; 2 uses
  %.not103.us.us = icmp eq i32 %i.bd, 0
  br i1 %.not103.us.us, label %.thread112.us.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = call i32 @get_negator(i32 noundef %i.bd) #7
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bf = load i32, ptr %i.ag, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = call i32 @get_opfamily_member_for_cmptype(i32 noundef %i.ae, i32 noundef %i.bf, i32 noundef %i.bh, i32 noundef %.0.us.us) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.284.us.us = phi i32 [ %i.be, %bb.l ], [ %i.bi, %bb.m ] ; 3 uses
  %.not104.us.us = icmp eq i32 %.284.us.us, 0
  br i1 %.not104.us.us, label %.thread112.us.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call signext i8 @op_volatile(i32 noundef %.284.us.us) #7
  %i.bk = icmp eq i8 %i.bj, 105
  br i1 %i.bk, label %.critedge, label %.thread112.us.us

.thread112.us.us:                                 ; preds = %bb.o, %bb.n, %bb.k, %bb.j, %.lr.ph192.us
  %.390.ph.us.us = phi i8 [ %i.ax, %bb.j ], [ %i.ax, %bb.n ], [ %i.ax, %bb.o ], [ %.188123.us191.us, %.lr.ph192.us ], [ %i.ax, %bb.k ] ; 2 uses
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %i.bl = load i32, ptr %i.x, align 4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next243, %i.bm
  br i1 %i.bn, label %.lr.ph192.us, label %.loopexit

.loopexit:                                        ; preds = %.thread112.us.us, %.lr.ph.us
  %.491.us217.ph = phi i8 [ %.087196.us215296, %.lr.ph.us ], [ %.390.ph.us.us, %.thread112.us.us ] ; 2 uses
  %indvars.iv.next245257 = add nuw nsw i64 %indvars.iv244295, 1 ; 2 uses
  %i.bo = load i32, ptr %i.v, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next245257, %i.bp
  br i1 %i.bq, label %.lr.ph.us, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph199.split.split.preheader, %.loopexit282
  %.087196294 = phi i8 [ %.491.ph, %.loopexit282 ], [ 0, %.lr.ph199.split.split.preheader ] ; 2 uses
  %indvars.iv240293 = phi i64 [ %indvars.iv.next241270, %.loopexit282 ], [ 0, %.lr.ph199.split.split.preheader ] ; 2 uses
  %i.br = load ptr, ptr %i.w, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv240293
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 12 ; 2 uses
  %i.bx = load i32, ptr %i.x, align 4
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph176, label %.loopexit282

.lr.ph176:                                        ; preds = %.lr.ph, %.thread112
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread112 ], [ 0, %.lr.ph ] ; 2 uses
  %.188123175 = phi i8 [ %.390.ph, %.thread112 ], [ %.087196294, %.lr.ph ] ; 2 uses
  %i.bz = load ptr, ptr %i.y, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cb = load ptr, ptr %i.ca, align 8            ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %.not102 = icmp eq i32 %i.bu, %i.cc
  br i1 %.not102, label %bb.p, label %.thread112

bb.p:                                             ; preds = %.lr.ph176
  %i.cd = load i32, ptr %i.bv, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, -1
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [6 x i8], ptr @RC_implies_table, i64 %i.ch
  %i.cj = add i32 %i.cd, -1
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !range !6, !noundef !7
  %i.cn = or i8 %i.cm, %.188123175                ; 5 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr @RC_implic_table, i64 %i.ch
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ck
  %.0 = load i32, ptr %i.cp, align 4              ; 2 uses
  switch i32 %.0, label %bb.s [
    i32 0, label %.thread112
    i32 6, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.cq = load i32, ptr %i.bw, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = call i32 @get_opfamily_member_for_cmptype(i32 noundef %i.bu, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef 3) #7 ; 2 uses
  %.not103 = icmp eq i32 %i.ct, 0
  br i1 %.not103, label %.thread112, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = call i32 @get_negator(i32 noundef %i.ct) #7
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.cv = load i32, ptr %i.bw, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = call i32 @get_opfamily_member_for_cmptype(i32 noundef %i.bu, i32 noundef %i.cv, i32 noundef %i.cx, i32 noundef %.0) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.284 = phi i32 [ %i.cu, %bb.r ], [ %i.cy, %bb.s ] ; 3 uses
  %.not104 = icmp eq i32 %.284, 0
  br i1 %.not104, label %.thread112, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = call signext i8 @op_volatile(i32 noundef %.284) #7
  %i.da = icmp eq i8 %i.cz, 105
  br i1 %i.da, label %.critedge, label %.thread112

.thread112:                                       ; preds = %bb.q, %bb.p, %.lr.ph176, %bb.u, %bb.t
  %.390.ph = phi i8 [ %i.cn, %bb.p ], [ %i.cn, %bb.t ], [ %i.cn, %bb.u ], [ %.188123175, %.lr.ph176 ], [ %i.cn, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = load i32, ptr %i.x, align 4
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %.lr.ph176, label %.loopexit282

.loopexit282:                                     ; preds = %.thread112, %.lr.ph
  %.491.ph = phi i8 [ %.087196294, %.lr.ph ], [ %.390.ph, %.thread112 ] ; 2 uses
  %indvars.iv.next241270 = add nuw nsw i64 %indvars.iv240293, 1 ; 2 uses
  %i.de = load i32, ptr %i.v, align 4
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next241270, %i.df
  br i1 %i.dg, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.loopexit282, %bb.u, %.loopexit, %bb.o, %.lr.ph199.split.split.preheader, %.lr.ph199.split.split.us.preheader, %bb.h, %bb.i
  %.079253 = phi ptr [ %i.u, %bb.o ], [ %i.u, %.lr.ph199.split.split.preheader ], [ null, %bb.i ], [ null, %bb.h ], [ %i.u, %.lr.ph199.split.split.us.preheader ], [ %i.u, %bb.u ], [ %i.u, %.loopexit ], [ %i.u, %.loopexit282 ]
  %.not100109 = phi i32 [ %.284.us.us, %bb.o ], [ 0, %.lr.ph199.split.split.preheader ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %.lr.ph199.split.split.us.preheader ], [ %.284, %bb.u ], [ 0, %.loopexit ], [ 0, %.loopexit282 ] ; 2 uses
  %.592 = phi i8 [ %i.ax, %bb.o ], [ 0, %.lr.ph199.split.split.preheader ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %.lr.ph199.split.split.us.preheader ], [ %i.cn, %bb.u ], [ %.491.us217.ph, %.loopexit ], [ %.491.ph, %.loopexit282 ]
  call void @list_free_deep(ptr noundef %.079253) #7
  call void @list_free_deep(ptr noundef %i.t) #7
  %i.dh = trunc nuw i8 %.592 to i1
  br i1 %i.dh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge
  %i.di = call signext i8 @op_volatile(i32 noundef %1) #7
  %.not105 = icmp eq i8 %i.di, 105
  %spec.select108 = zext i1 %.not105 to i8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge
  %.693 = phi i8 [ 0, %.critedge ], [ %spec.select108, %bb.v ] ; 2 uses
  br i1 %2, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %.not100109, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 11
  store i8 %.693, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  store i8 1, ptr %i.dl, align 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %.not100109, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  store i8 %.693, ptr %i.dn, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 1, ptr %i.do, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret ptr %i.i
}

declare ptr @hash_create(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CacheRegisterSyscacheCallback(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @InvalidateOprProofCacheCallBack(i64 %0, i32 %1, i32 %2) #0 {
bb.a:
  %3 = alloca %struct.HASH_SEQ_STATUS, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = load ptr, ptr @OprProofCacheHash, align 8
  call void @hash_seq_init(ptr noundef nonnull %3, ptr noundef %i.a) #7
  %i.b = call ptr @hash_seq_search(ptr noundef nonnull %3) #7 ; 2 uses
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 0, ptr %i.e, align 1
  %i.f = call ptr @hash_seq_search(ptr noundef nonnull %3) #7 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare ptr @hash_search(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_op_index_interpretation(i32 noundef) local_unnamed_addr #2

declare i32 @get_opfamily_member_for_cmptype(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare signext i8 @op_volatile(i32 noundef) local_unnamed_addr #2

declare void @list_free_deep(ptr noundef) local_unnamed_addr #2

declare void @hash_seq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hash_seq_search(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.peeled.count", i32 1}
!27 = distinct !{null}
!28 = distinct !{!28, !4}
end_hunk_0
