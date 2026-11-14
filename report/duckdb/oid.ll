Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/oid?download=true
inline.NumInlined: 12
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mbedtls_oid_from_numeric_string:bb.a
bb.e:                                             ; preds = %bb.d
  %i.aj = mul nuw i32 %.075, 10
  %i.ak = zext nneg i8 %i.ag to i32
  %i.al = add i32 %i.aj, -48
  %i.am = add i32 %i.al, %i.ak                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.an, %i.e
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i, %bb.e
  %i.ao = phi ptr [ %i.e, %bb.e ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %.1.ph.ph = phi i32 [ %i.am, %bb.e ], [ %.075, %.lr.ph.i ]
  store ptr %i.ao, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.c
  %i.ap = phi ptr [ %i.ae, %bb.c ], [ %i.ao, %.loopexit ] ; 3 uses
  %.1.ph = phi i32 [ %i.ad, %bb.c ], [ %.1.ph.ph, %.loopexit ] ; 3 uses
  %i.aq = icmp ult i32 %.1.ph, 3
  %.not67 = icmp ult ptr %i.ap, %i.e
  %or.cond102 = select i1 %i.aq, i1 %.not67, i1 false
  br i1 %or.cond102, label %bb.g, label %_ZL16oid_parse_numberPjPPKcS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !186
  %.not68 = icmp eq i8 %i.ar, 46
  br i1 %.not68, label %bb.h, label %_ZL16oid_parse_numberPjPPKcS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.as, ptr %i.a, align 8, !tbaa !178
  %i.at = call fastcc noundef i32 @_ZL16oid_parse_numberPjPPKcS1_(ptr noundef %i.c, ptr noundef %i.a, ptr noundef nonnull %i.e) ; 2 uses
  %.not69 = icmp eq i32 %i.at, 0
  br i1 %.not69, label %bb.i, label %_ZL16oid_parse_numberPjPPKcS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.au = icmp ne i32 %.1.ph, 2
  %i.av = load i32, ptr %i.c, align 4             ; 3 uses
  %i.aw = icmp ugt i32 %i.av, 39
  %or.cond3 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond3, label %_ZL16oid_parse_numberPjPPKcS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !178 ; 4 uses
  %i.ay = icmp ult ptr %i.ax, %i.e
  br i1 %i.ay, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !186
  %i.ba = icmp eq i8 %i.az, 46
  br i1 %i.ba, label %bb.l, label %_ZL16oid_parse_numberPjPPKcS1_.exit

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !178
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bc = phi ptr [ %i.bb, %bb.l ], [ %i.ax, %bb.j ]
  %i.bd = mul nuw nsw i32 %.1.ph, 40              ; 2 uses
  %i.be = xor i32 %i.bd, -1
  %i.bf = icmp ugt i32 %i.av, %i.be
  br i1 %i.bf, label %_ZL16oid_parse_numberPjPPKcS1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add i32 %i.av, %i.bd
  %i.bh = call fastcc noundef i32 @_ZL29oid_subidentifier_encode_intoPPhS_j(ptr noundef %i.d, ptr noundef nonnull %i.z, i32 noundef %i.bg) ; 2 uses
  %.not70 = icmp eq i32 %i.bh, 0
  br i1 %.not70, label %.preheader, label %_ZL16oid_parse_numberPjPPKcS1_.exit

.preheader:                                       ; preds = %bb.n, %bb.s
  %i.bi = phi ptr [ %i.bq, %bb.s ], [ %i.bc, %bb.n ]
  %i.bj = icmp ult ptr %i.bi, %i.e
  br i1 %i.bj, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.preheader
  %i.bk = call fastcc noundef i32 @_ZL16oid_parse_numberPjPPKcS1_(ptr noundef %i.b, ptr noundef %i.a, ptr noundef nonnull %i.e) ; 2 uses
  %.not71 = icmp eq i32 %i.bk, 0
  br i1 %.not71, label %bb.p, label %_ZL16oid_parse_numberPjPPKcS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !178 ; 4 uses
  %i.bm = icmp ult ptr %i.bl, %i.e
  br i1 %i.bm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !186
  %i.bo = icmp eq i8 %i.bn, 46
  br i1 %i.bo, label %bb.r, label %_ZL16oid_parse_numberPjPPKcS1_.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !178
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.bq = phi ptr [ %i.bp, %bb.r ], [ %i.bl, %bb.p ]
  %i.br = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bs = call fastcc noundef i32 @_ZL29oid_subidentifier_encode_intoPPhS_j(ptr noundef %i.d, ptr noundef nonnull %i.z, i32 noundef %i.br) ; 2 uses
  %.not72 = icmp eq i32 %i.bs, 0
  br i1 %.not72, label %.preheader, label %_ZL16oid_parse_numberPjPPKcS1_.exit, !llvm.loop !221

bb.t:                                             ; preds = %.preheader
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !178
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !176 ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = tail call noalias ptr @calloc(i64 noundef %i.bx, i64 noundef 1) #14 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZL16oid_parse_numberPjPPKcS1_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.bu, i64 %i.bx, i1 false)
  tail call void @free(ptr noundef %i.bu) #13
  store ptr %i.by, ptr %i.x, align 8, !tbaa !176
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !175
  store i32 6, ptr %0, align 8, !tbaa !225
  br label %bb.v

_ZL16oid_parse_numberPjPPKcS1_.exit:              ; preds = %bb.d, %bb.q, %bb.s, %bb.o, %.lr.ph.preheader.i, %bb.t, %bb.m, %bb.k, %bb.i, %bb.g, %bb.f, %bb.n, %bb.h
  %.053 = phi i32 [ -106, %bb.t ], [ -104, %bb.i ], [ -104, %bb.f ], [ %i.at, %bb.h ], [ -104, %bb.q ], [ -104, %bb.k ], [ %i.bh, %bb.n ], [ -104, %bb.g ], [ -104, %.lr.ph.preheader.i ], [ -104, %bb.m ], [ %i.bs, %bb.s ], [ %i.bk, %bb.o ], [ -104, %bb.d ]
  %i.cb = load ptr, ptr %i.x, align 8, !tbaa !176
  tail call void @free(ptr noundef %i.cb) #13
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %_ZL16oid_parse_numberPjPPKcS1_.exit, %bb.u
  %.054 = phi i32 [ %.053, %_ZL16oid_parse_numberPjPPKcS1_.exit ], [ 0, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.v, %bb.b, %._crit_edge
  %.2 = phi i32 [ -104, %._crit_edge ], [ %.054, %bb.v ], [ -106, %bb.b ], [ -104, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -104, 1) i32 @_ZL16oid_parse_numberPjPPKcS1_(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #7 !guid !226 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !7
  %i.a = load ptr, ptr %1, align 8, !tbaa !178    ; 4 uses
  %i.b = icmp ult ptr %i.a, %2
  br i1 %i.b, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !186
  %i.d = add i8 %i.c, -48
  %or.cond.peel = icmp ult i8 %i.d, 10
  br i1 %or.cond.peel, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.e = load i8, ptr %i.a, align 1, !tbaa !186
  %i.f = sext i8 %i.e to i32
  %i.g = add nsw i32 %i.f, -48                    ; 2 uses
  store i32 %i.g, ptr %0, align 4, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !178
  %exitcond.peel.not = icmp eq ptr %i.h, %2
  br i1 %exitcond.peel.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.i = phi i32 [ %i.r, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.s, %bb.d ], [ %i.h, %bb.b ] ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !186
  %i.l = add i8 %i.k, -48
  %or.cond = icmp ult i8 %i.l, 10
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp ugt i32 %i.i, 429496729
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = mul nuw i32 %i.i, 10                     ; 2 uses
  store i32 %i.n, ptr %0, align 4, !tbaa !7
  %i.o = load i8, ptr %i.j, align 1, !tbaa !186
  %i.p = sext i8 %i.o to i32
  %i.q = add i32 %i.n, -48
  %i.r = add i32 %i.q, %i.p                       ; 2 uses
  store i32 %i.r, ptr %0, align 4, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.s, ptr %1, align 8, !tbaa !178
  %exitcond.not = icmp eq ptr %i.s, %2
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.d, %.lr.ph.preheader, %bb.b, %bb.a
  %.011 = phi i32 [ -104, %bb.a ], [ -104, %.lr.ph.preheader ], [ 0, %bb.b ], [ -104, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -11, 1) i32 @_ZL29oid_subidentifier_encode_intoPPhS_j(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #8 !guid !229 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 2, %bb.a ] ; 2 uses
  %.04.i = phi i32 [ %3, %bb.b ], [ %2, %bb.a ]
  %.0.i = phi i64 [ %4, %bb.b ], [ 0, %bb.a ]     ; 8 uses
  %3 = lshr i32 %.04.i, 7                         ; 2 uses
  %4 = add nuw nsw i64 %.0.i, 1                   ; 4 uses
  %.not.i = icmp eq i32 %3, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not.i, label %_ZL27oid_subidentifier_num_bytesj.exit, label %bb.b, !llvm.loop !227

_ZL27oid_subidentifier_num_bytesj.exit:           ; preds = %bb.b
  %i.a = load ptr, ptr %0, align 8, !tbaa !178    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %.not21 = icmp ugt i64 %i.d, %.0.i
  br i1 %.not21, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZL27oid_subidentifier_num_bytesj.exit
  %i.e = trunc i32 %2 to i8
  %i.f = and i8 %i.e, 127
  %i.g = getelementptr i8, ptr %i.a, i64 %.0.i
  store i8 %i.f, ptr %i.g, align 1, !tbaa !186
  %.not22 = icmp eq i64 %.0.i, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %.0.i, 1
  %5 = icmp eq i64 %indvars.iv, 3
  br i1 %5, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0.i, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 2, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %.018.in23.epil.init = phi i32 [ %2, %.lr.ph.preheader ], [ %.018.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %.0.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %.018.epil = lshr i32 %.018.in23.epil.init, 7
  %i.h = trunc i32 %.018.epil to i8
  %i.i = or i8 %i.h, -128
  %i.j = load ptr, ptr %0, align 8, !tbaa !178
  %i.k = sub nuw nsw i64 %4, %.024.epil.init
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %i.i, ptr %i.l, align 1, !tbaa !186
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !178
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %4
  store ptr %i.n, ptr %0, align 8, !tbaa !178
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.024 = phi i64 [ 2, %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ] ; 3 uses
  %.018.in23 = phi i32 [ %2, %.lr.ph.preheader.new ], [ %.018.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.018 = lshr i32 %.018.in23, 7
  %i.o = trunc i32 %.018 to i8
  %i.p = or i8 %i.o, -128
  %i.q = load ptr, ptr %0, align 8, !tbaa !178
  %i.r = sub nuw nsw i64 %4, %.024
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 %i.p, ptr %i.s, align 1, !tbaa !186
  %.018.1 = lshr i32 %.018.in23, 14               ; 3 uses
  %i.t = trunc i32 %.018.1 to i8
  %i.u = or i8 %i.t, -128
  %i.v = load ptr, ptr %0, align 8, !tbaa !178
  %6 = sub nsw i64 %.0.i, %.024
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %6
  store i8 %i.u, ptr %i.w, align 1, !tbaa !186
  %i.x = add nuw nsw i64 %.024, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !228

bb.d:                                             ; preds = %_ZL27oid_subidentifier_num_bytesj.exit, %._crit_edge
  %.019 = phi i32 [ 0, %._crit_edge ], [ -11, %_ZL27oid_subidentifier_num_bytesj.exit ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !187, !188}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 3916919537516672149}
!9 = !{i64 3637378267694887150}
!10 = !{i64 -7256596113012926338}
!11 = !{i64 -3375084469297878810}
!12 = !{i64 -5493784549890170845}
!13 = !{i64 -761662682868221710}
!14 = !{i64 6125418223386094705}
!15 = !{i64 -7816630603294187136}
!16 = !{i64 7546878283159629099}
!17 = !{i64 1429283448140390892}
!18 = !{i64 1309264971216949067}
!19 = !{i64 -1165888843668610096}
!20 = !{i64 -521113505054071477}
!21 = !{i64 1862661009957873086}
!22 = !{i64 7415000324776978740}
!23 = !{i64 8471592000481995676}
!24 = !{i64 -2974200184789805308}
!25 = !{i64 -7392320507850225094}
!26 = !{i64 8212390819432162608}
!27 = !{i64 -558955068458721208}
!28 = !{i64 -3960999656776538246}
!29 = !{i64 -6503698540416949163}
!30 = !{i64 8452917472642138672}
!31 = !{i64 -3337229404137204298}
!32 = !{i64 -2029729387684243434}
!33 = !{i64 2879577416835185016}
!34 = !{i64 -5347397661265231705}
!35 = !{i64 8793310985106950152}
!36 = !{i64 787870333397035607}
!37 = !{i64 -2598730230317283937}
!38 = !{i64 5468691150453614199}
!39 = !{i64 4238332714494999207}
!40 = !{i64 -6378038036712800907}
!41 = !{i64 -5054808448351848873}
!42 = !{i64 1725733209617851779}
!43 = !{i64 6939018836423103188}
!44 = !{i64 -6094459208202676914}
!45 = !{i64 621088314813591229}
!46 = !{i64 -198109466312147825}
!47 = !{i64 -4391413265948278367}
!48 = !{i64 -7254258692800689607}
!49 = !{i64 8797177579917808710}
!50 = !{i64 8176572210380565285}
!51 = !{i64 7982369292346650738}
!52 = !{i64 -7542759058504059509}
!53 = !{i64 7531946329655875164}
!54 = !{i64 -236132218572496917}
!55 = !{i64 -3409919651129371425}
!56 = !{i64 6280271661973613537}
!57 = !{i64 -2740556713522776379}
!58 = !{i64 -5266753439196958255}
!59 = !{i64 4690638893948580119}
!60 = !{i64 -1496574023803052397}
!61 = !{i64 1086723476944161104}
!62 = !{i64 64988117119095962}
!63 = !{i64 -721728867126630987}
!64 = !{i64 -4186233226647452599}
!65 = !{i64 -3629366489089635434}
!66 = !{i64 -1164542503842309799}
!67 = !{i64 -9193868675544338304}
!68 = !{i64 7329471235993755341}
!69 = !{i64 6236839386141989423}
!70 = !{i64 -3003567413933800201}
!71 = !{i64 910525991937442516}
!72 = !{i64 8020162013261434916}
!73 = !{i64 6241820314815652829}
!74 = !{i64 -2952696944537561658}
!75 = !{i64 -2602819660807028526}
!76 = !{i64 975007153554403524}
!77 = !{i64 -5345220894346941746}
!78 = !{i64 -1492383346725299625}
!79 = !{i64 -5308886081314387491}
!80 = !{i64 8577079762916602107}
!81 = !{i64 -2422383004961527056}
!82 = !{i64 -864980113691134349}
!83 = !{i64 -1350622321798747521}
!84 = !{i64 6077984747269982930}
!85 = !{i64 -2996459702147424188}
!86 = !{i64 4135614708497232763}
!87 = !{i64 286784087085410159}
!88 = !{i64 -7736102477176388005}
!89 = !{i64 -5954560973633917346}
!90 = !{i64 2381134791047288592}
!91 = !{i64 4860969757929329563}
!92 = !{i64 6139333454219954175}
!93 = !{i64 8562483116577255785}
!94 = !{i64 -3396616934807496864}
!95 = !{i64 -5335313388782530155}
!96 = !{i64 5875069779381500427}
!97 = !{i64 795798879288817321}
!98 = !{i64 -8741931263602840861}
!99 = !{i64 2602438247811803335}
!100 = !{i64 1144591449377262064}
!101 = !{i64 -1148336020349440008}
!102 = !{i64 2014453874082020356}
!103 = !{i64 -6666223702323447364}
!104 = !{i64 -8138251813557172128}
!105 = !{i64 -8668683205559500543}
!106 = !{i64 5438954190877742999}
!107 = !{i64 8880385981577722591}
!108 = !{i64 8429199045781741477}
!109 = !{i64 -6128081557160233367}
!110 = !{i64 4830898206461428256}
!111 = !{i64 -3815964946474483574}
!112 = !{i64 5151900685123115251}
!113 = !{i64 5238730836130409795}
!114 = !{i64 -8652608930837195107}
!115 = !{i64 831955719088926118}
!116 = !{i64 6146672348964776409}
!117 = !{i64 160467866054737856}
!118 = !{i64 1870614002319878112}
!119 = !{i64 -6109408563934814199}
!120 = !{i64 6831704056126481492}
!121 = !{i64 2246086452945597227}
!122 = !{i64 7582961311621086115}
!123 = !{i64 2714035895477288109}
!124 = !{i64 -3059024834500993873}
!125 = !{i64 5044432008469714263}
!126 = !{i64 -8984424942136958493}
!127 = !{i64 4987736292554560072}
!128 = !{i64 722654580385184576}
!129 = !{i64 -4310533513894957881}
!130 = !{i64 2107079116123895126}
!131 = !{i64 -7246142396257777519}
!132 = !{i64 -3258683463062937289}
!133 = !{i64 -6337111560923590826}
!134 = !{i64 -2325283247423571028}
!135 = !{i64 -1552905303781375827}
!136 = !{i64 5848805181717325321}
!137 = !{i64 4370408904198583393}
!138 = !{i64 1062529738064640527}
!139 = !{i64 3748880868726128711}
!140 = !{i64 7489272567030506543}
!141 = !{i64 7838685021534466460}
!142 = !{i64 -5387271453732689611}
!143 = !{i64 -612672492277295778}
!144 = !{i64 8105621080190549297}
!145 = !{i64 -2272384378864344916}
!146 = !{i64 3382868286142582700}
!147 = !{i64 -5712305927418999923}
!148 = !{i64 8784617014594848844}
!149 = !{i64 -3714808123260072528}
!150 = !{i64 5160335994582822964}
!151 = !{i64 1151937759139561004}
!152 = !{i64 -6714381419188179844}
!153 = !{i64 -2993689642515774549}
!154 = !{i64 -5205981858485910884}
!155 = !{i64 -7651770217638123395}
!156 = !{i64 6045796376521199924}
!157 = !{i64 -5147052273867844709}
!158 = !{i64 1695042425427029241}
!159 = !{i64 -1750413247420577740}
!160 = !{i64 3420847204663537986}
!161 = !{i64 -5834049541172462710}
!162 = !{i64 1891994904002150177}
!163 = !{i64 1643276474123655834}
!164 = !{i64 2864861730193877808}
!165 = !{i64 6577390551053844217}
!166 = !{i64 -4555275481594919765}
!167 = !{i64 5399740401070323893}
!168 = !{i64 9107857722997695002}
!169 = !{i64 -5289801270453244129}
!170 = !{i64 3067077935513732110}
!171 = !{!"long", !5, i64 0}
!172 = !{!"any pointer", !5, i64 0}
!173 = !{!"p1 omnipotent char", !172, i64 0}
!174 = !{!"_ZTS16mbedtls_asn1_buf", !6, i64 0, !171, i64 8, !173, i64 16}
!175 = !{!174, !171, i64 8}
!176 = !{!174, !173, i64 16}
!177 = !{!"_ZTS24mbedtls_oid_descriptor_t", !173, i64 0, !171, i64 8, !173, i64 16, !173, i64 24}
!178 = !{!173, !173, i64 0}
!179 = !{!"_ZTS17mbedtls_md_type_t", !5, i64 0}
!180 = !{!"_ZTS17mbedtls_pk_type_t", !5, i64 0}
!181 = !{!"_ZTS13oid_sig_alg_t", !177, i64 0, !179, i64 32, !180, i64 36}
!182 = !{!179, !179, i64 0}
!183 = !{!180, !180, i64 0}
!184 = !{!171, !171, i64 0}
!185 = !{!"_ZTS12oid_pk_alg_t", !177, i64 0, !180, i64 32}
!186 = !{!5, !5, i64 0}
!187 = !{!"llvm.loop.mustprogress"}
!188 = !{!"llvm.loop.peeled.count", i32 1}
!189 = !{i64 -222001342293058331}
!190 = !{!"_ZTS15oid_x520_attr_t", !177, i64 0, !173, i64 32}
!191 = !{!190, !173, i64 32}
!192 = !{i64 -1784327365729802017}
!193 = !{!"_ZTS14oid_x509_ext_t", !177, i64 0, !6, i64 32}
!194 = !{!193, !6, i64 32}
!195 = !{i64 2820820202198015466}
!196 = !{!177, !173, i64 24}
!197 = !{i64 5880869470672568774}
!198 = !{i64 4114902377559094093}
!199 = !{!181, !173, i64 24}
!200 = !{i64 -6583239978990205873}
!201 = !{!181, !179, i64 32}
!202 = !{!181, !180, i64 36}
!203 = !{i64 6739411414266363177}
!204 = !{!181, !171, i64 8}
!205 = !{i64 -4830081056296326357}
!206 = !{!185, !180, i64 32}
!207 = !{i64 -7956314534623132262}
!208 = !{!185, !171, i64 8}
!209 = !{i64 -571693473031533303}
!210 = !{!"_ZTS21mbedtls_cipher_type_t", !5, i64 0}
!211 = !{!"_ZTS16oid_cipher_alg_t", !177, i64 0, !210, i64 32}
!212 = !{!211, !210, i64 32}
!213 = !{!210, !210, i64 0}
!214 = !{i64 -176042337851682832}
!215 = !{i64 1524485588376197997}
!216 = !{i64 -7352639956901027235}
!217 = distinct !{!217, !187}
!218 = !{i64 1724988064436277695}
!219 = distinct !{!219, !187, !223, !224}
!220 = distinct !{!220, !187, !224, !223}
!221 = distinct !{!221, !187}
!222 = !{i64 -6062532192449648680}
!223 = !{!"llvm.loop.isvectorized", i32 1}
!224 = !{!"llvm.loop.unroll.runtime.disable"}
!225 = !{!174, !6, i64 0}
!226 = !{i64 2336552327384082166}
!227 = distinct !{!227, !187}
!228 = distinct !{!228, !187}
!229 = !{i64 5229344897515646823}
end_hunk_0
