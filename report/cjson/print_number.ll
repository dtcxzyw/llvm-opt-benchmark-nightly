Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/print_number?download=true
inline.NumInlined: 125
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@print_string_ptr:bb.a
  br label %ensure.exit.thread

.preheader:                                       ; preds = %bb.a, %bb.s
  %.056 = phi ptr [ %i.ao, %bb.s ], [ %0, %bb.a ] ; 3 uses
  %.0 = phi i64 [ %.1, %bb.s ], [ 0, %bb.a ]      ; 5 uses
  %i.ak = load i8, ptr %.056, align 1, !tbaa !44  ; 2 uses
  switch i8 %i.ak, label %bb.r [
    i8 0, label %bb.t
    i8 34, label %bb.q
    i8 92, label %bb.q
    i8 8, label %bb.q
    i8 12, label %bb.q
    i8 10, label %bb.q
    i8 13, label %bb.q
    i8 9, label %bb.q
  ]

bb.q:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.al = add i64 %.0, 1
  br label %bb.s

bb.r:                                             ; preds = %.preheader
  %i.am = icmp ult i8 %i.ak, 32
  %i.an = add i64 %.0, 5
  %spec.select = select i1 %i.am, i64 %i.an, i64 %.0
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i64 [ %i.al, %bb.q ], [ %spec.select, %bb.r ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.056, i64 1
  br label %.preheader

bb.t:                                             ; preds = %.preheader
  %i.ap = ptrtoint ptr %.056 to i64
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = add i64 %i.ar, %.0                      ; 4 uses
  %i.at = add i64 %i.as, 3
  %i.au = tail call fastcc ptr @ensure(ptr noundef %1, i64 noundef %i.at) ; 6 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %ensure.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = icmp eq i64 %.0, 0
  store i8 34, ptr %i.au, align 1, !tbaa !44
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %0, i64 %i.as, i1 false)
  %i.ay = getelementptr i8, ptr %i.au, i64 %i.as  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 1
  store i8 34, ptr %i.az, align 1, !tbaa !44
  %i.ba = getelementptr i8, ptr %i.ay, i64 2
  store i8 0, ptr %i.ba, align 1, !tbaa !44
  br label %ensure.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.bb = load i8, ptr %0, align 1, !tbaa !44
  %.fr71 = freeze i8 %i.bb                        ; 2 uses
  %.not6572 = icmp eq i8 %.fr71, 0
  br i1 %.not6572, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %bb.ah
  %.fr76 = phi i8 [ %.fr, %bb.ah ], [ %.fr71, %bb.w ] ; 3 uses
  %.pn74 = phi ptr [ %.155, %bb.ah ], [ %i.au, %bb.w ] ; 3 uses
  %.15773 = phi ptr [ %i.bi, %bb.ah ], [ %0, %bb.w ] ; 2 uses
  %.05475 = getelementptr inbounds nuw i8, ptr %.pn74, i64 1 ; 3 uses
  %i.bc = icmp ult i8 %.fr76, 32
  br i1 %i.bc, label %bb.y, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  switch i8 %.fr76, label %bb.x [
    i8 92, label %bb.y
    i8 34, label %bb.y
  ]

bb.x:                                             ; preds = %switch.early.test
  store i8 %.fr76, ptr %.05475, align 1, !tbaa !44
  br label %bb.ah

bb.y:                                             ; preds = %switch.early.test, %switch.early.test, %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn74, i64 2 ; 15 uses
  store i8 92, ptr %.05475, align 1, !tbaa !44
  %i.be = load i8, ptr %.15773, align 1, !tbaa !44 ; 2 uses
  switch i8 %i.be, label %bb.ag [
    i8 92, label %bb.z
    i8 34, label %bb.aa
    i8 8, label %bb.ab
    i8 12, label %bb.ac
    i8 10, label %bb.ad
    i8 13, label %bb.ae
    i8 9, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  store i8 92, ptr %i.bd, align 1, !tbaa !44
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  store i8 34, ptr %i.bd, align 1, !tbaa !44
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y
  store i8 98, ptr %i.bd, align 1, !tbaa !44
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y
  store i8 102, ptr %i.bd, align 1, !tbaa !44
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  store i8 110, ptr %i.bd, align 1, !tbaa !44
  br label %bb.ah

bb.ae:                                            ; preds = %bb.y
  store i8 114, ptr %i.bd, align 1, !tbaa !44
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  store i8 116, ptr %i.bd, align 1, !tbaa !44
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.bf) #28 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn74, i64 6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.x, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.155 = phi ptr [ %.05475, %bb.x ], [ %i.bh, %bb.ag ], [ %i.bd, %bb.z ], [ %i.bd, %bb.aa ], [ %i.bd, %bb.ab ], [ %i.bd, %bb.ac ], [ %i.bd, %bb.ad ], [ %i.bd, %bb.ae ], [ %i.bd, %bb.af ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.15773, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !44
  %.fr = freeze i8 %i.bj                          ; 2 uses
  %.not65 = icmp eq i8 %.fr, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ah, %bb.w
  %i.bk = getelementptr i8, ptr %i.au, i64 %i.as  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  store i8 34, ptr %i.bl, align 1, !tbaa !44
  %i.bm = getelementptr i8, ptr %i.bk, i64 2
  store i8 0, ptr %i.bm, align 1, !tbaa !44
  br label %ensure.exit.thread

ensure.exit.thread:                               ; preds = %bb.c, %bb.n, %bb.l, %bb.h, %bb.b, %bb.f, %bb.t, %._crit_edge, %bb.v, %ensure.exit
  %.058 = phi i32 [ 1, %._crit_edge ], [ 1, %bb.v ], [ 1, %ensure.exit ], [ 0, %bb.n ], [ 0, %bb.t ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.l ]
  ret i32 %.058
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #26

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @assert_print_number(ptr noundef %0, double noundef nofpclass(nan inf nzero sub) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 7 uses
  %2 = alloca [1 x %struct.cJSON], align 16       ; 6 uses
  %3 = alloca %struct.printbuffer, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1024, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !42
  store ptr %i.a, ptr %3, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  %i.g = fcmp ult double %1, f0x41DFFFFFFFC00000
  %.inv.i = fcmp ole double %1, f0xC1E0000000000000
  %spec.select15.i = select i1 %.inv.i, double f0xC1E0000000000000, double %1
  %spec.select.i = fptosi double %spec.select15.i to i32
  %.sink.i = select i1 %i.g, i32 %spec.select.i, i32 2147483647
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sink.i, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %1, ptr %i.i, align 16, !tbaa !29
  %i.j = call fastcc i32 @print_number(ptr noundef %2, ptr noundef %3)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  call void @UnityFail(ptr noundef nonnull @.str.20, i64 noundef 44) #28
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.loopexit
  %i.k = phi i64 [ %i.af, %.loopexit ], [ 0, %.preheader ]
  %.018 = phi i32 [ %i.ae, %.loopexit ], [ 0, %.preheader ] ; 8 uses
  %i.l = icmp samesign ugt i32 %.018, 3
  br i1 %i.l, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !tbaa !44
  %i.o = icmp eq i8 %i.n, 48
  br i1 %i.o, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %.018 to i64
  %i.q = getelementptr i8, ptr %i.a, i64 %i.p     ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !44
  %i.t = icmp eq i8 %i.s, 101
  %i.u = getelementptr i8, ptr %i.q, i64 -2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !44    ; 2 uses
  %i.w = icmp eq i8 %i.v, 45
  %or.cond = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %i.x = icmp eq i8 %i.v, 101
  br i1 %i.x, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.y = getelementptr i8, ptr %i.q, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !44
  %i.aa = icmp eq i8 %i.z, 43
  br i1 %i.aa, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ab = load i8, ptr %i.q, align 1, !tbaa !44
  %.not1516 = icmp eq i8 %i.ab, 0
  br i1 %.not1516, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %4 = phi ptr [ %i.ac, %.lr.ph ], [ %i.q, %bb.g ]
  %.117 = phi i32 [ %5, %.lr.ph ], [ %.018, %bb.g ]
  %5 = add i32 %.117, 1                           ; 3 uses
  %6 = zext i32 %5 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %6 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !44  ; 2 uses
  store i8 %i.ad, ptr %4, align 1, !tbaa !44
  %.not15 = icmp eq i8 %i.ad, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.c, %bb.d, %bb.f, %._crit_edge
  %.2 = phi i32 [ %.018, %bb.c ], [ %.018, %bb.f ], [ %.018, %._crit_edge ], [ %.018, %bb.d ], [ %.018, %bb.g ], [ %5, %.lr.ph ]
  %i.ae = add i32 %.2, 1                          ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = icmp ult i32 %i.ae, 26
  br i1 %i.ag, label %bb.c, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ah = load ptr, ptr %3, align 8, !tbaa !56
  call void @UnityAssertEqualString(ptr noundef %0, ptr noundef %i.ah, ptr noundef nonnull @.str.21, i64 noundef 62) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare void @UnityFail(ptr noundef, i64 noundef) local_unnamed_addr #22

declare void @UnityAssertEqualString(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #22

declare void @UnityIgnore(ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind allocsize(0) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{null}
!4 = distinct !{null, null}
!5 = distinct !{ptr @cJSON_CreateNumber, null}
!6 = distinct !{ptr @cJSON_CreateString, null}
!7 = distinct !{ptr @cJSON_CreateString, null}
!8 = distinct !{ptr @cJSON_CreateArray, null}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"long", !14, i64 0}
!21 = !{!"", !19, i64 0, !20, i64 8}
!22 = !{!21, !19, i64 0}
!23 = !{!21, !20, i64 8}
!24 = !{!"p1 _ZTS5cJSON", !18, i64 0}
!25 = !{!"double", !14, i64 0}
!26 = !{!"cJSON", !24, i64 0, !24, i64 8, !24, i64 16, !15, i64 24, !19, i64 32, !15, i64 40, !25, i64 48, !19, i64 56}
!27 = !{!26, !15, i64 24}
!28 = !{!26, !19, i64 32}
!29 = !{!26, !25, i64 48}
!30 = !{!"internal_hooks", !18, i64 0, !18, i64 8, !18, i64 16}
!31 = !{!30, !18, i64 0}
!32 = !{!30, !18, i64 8}
!33 = !{!26, !24, i64 0}
!34 = !{!26, !24, i64 16}
!35 = !{!26, !19, i64 56}
!36 = !{!26, !15, i64 40}
!37 = !{ptr @cJSON_free}
!38 = !{!"", !19, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !30, i64 32}
!39 = !{!38, !19, i64 0}
!40 = !{!38, !20, i64 8}
!41 = !{!18, !18, i64 0}
!42 = !{i64 0, i64 8, !41, i64 8, i64 8, !41, i64 16, i64 8, !41}
!43 = !{!38, !20, i64 16}
!44 = !{!14, !14, i64 0}
!45 = !{!19, !19, i64 0}
!46 = !{!20, !20, i64 0}
!47 = !{!"lconv", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !14, i64 80, !14, i64 81, !14, i64 82, !14, i64 83, !14, i64 84, !14, i64 85, !14, i64 86, !14, i64 87, !14, i64 88, !14, i64 89, !14, i64 90, !14, i64 91, !14, i64 92, !14, i64 93}
!48 = !{!47, !19, i64 0}
!49 = !{!38, !18, i64 32}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!38, !18, i64 40}
!53 = !{!38, !20, i64 24}
!54 = !{!26, !24, i64 8}
!55 = !{!"", !19, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !15, i64 32, !15, i64 36, !30, i64 40}
!56 = !{!55, !19, i64 0}
!57 = !{!55, !20, i64 8}
!58 = !{!55, !15, i64 36}
!59 = !{!55, !20, i64 16}
!60 = !{!55, !15, i64 32}
!61 = !{!55, !18, i64 56}
!62 = !{ptr @ensure}
!63 = !{!55, !18, i64 48}
!64 = !{!55, !18, i64 40}
!65 = !{!24, !24, i64 0}
!66 = !{!"p1 int", !18, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!15, !15, i64 0}
!69 = !{!"llvm.loop.peeled.count", i32 1}
!70 = !{!25, !25, i64 0}
!71 = !{!"cJSON_Hooks", !18, i64 0, !18, i64 8}
!72 = !{!71, !18, i64 0}
!73 = !{!71, !18, i64 8}
!74 = distinct !{null}
!75 = distinct !{!75, !50, !51}
!76 = distinct !{!76, !50, !51}
!77 = distinct !{!77, !51, !50}
!78 = distinct !{null, null}
!79 = distinct !{null}
!80 = !{!"branch_weights", i32 8, i32 24}
!81 = !{!30, !18, i64 16}
!82 = distinct !{null}
!83 = distinct !{null}
!84 = !{!55, !20, i64 24}
!85 = distinct !{ptr @cJSON_CreateNull, null}
!86 = distinct !{ptr @cJSON_CreateTrue, null}
!87 = distinct !{ptr @cJSON_CreateFalse, null}
!88 = distinct !{ptr @cJSON_CreateBool, null}
!89 = distinct !{ptr @cJSON_CreateRaw, null}
!90 = distinct !{ptr @cJSON_CreateRaw, null}
!91 = distinct !{ptr @cJSON_CreateObject, null}
!92 = distinct !{!92, !69}
!93 = distinct !{!93, !69}
!94 = !{!"float", !14, i64 0}
!95 = !{!94, !94, i64 0}
!96 = distinct !{!96, !69}
!97 = distinct !{!97, !69}
!98 = distinct !{!98, !51, !50}
end_hunk_0
