Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@tohex:bb.a
  br label %lua_pushlstring.exit

lua_pushlstring.exit:                             ; preds = %._crit_edge, %luaC_step.exit.i
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %spec.select5458, i32 8)
  %i.fh = zext nneg i32 %spec.store.select to i64
  %i.fi = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %i.fj = call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.c, i64 noundef %i.fh)
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !81
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 4, ptr %i.fk, align 8, !tbaa !99
  %i.fl = load ptr, ptr %i.aj, align 8, !tbaa !95
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store ptr %i.fm, ptr %i.aj, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @errfile(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -2147483647, -2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #40
  %i.b = load i32, ptr %i.a, align 4, !tbaa !162
  %i.c = tail call ptr @strerror(i32 noundef %i.b) #33
  %i.d = tail call fastcc ptr @lua_tolstring(ptr noundef %0, i32 noundef %2, ptr noundef null)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.278, ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef %i.c) ; 0 uses
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114
  %i.j = zext nneg i32 %2 to i64
  %i.k = getelementptr [16 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -16      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95
  %.not28.i.i = icmp ult ptr %i.l, %i.n
  %.luaO_nilobject_.i.i = select i1 %.not28.i.i, ptr %i.l, ptr @luaO_nilobject_
  br label %index2adr.exit.i

bb.c:                                             ; preds = %bb.a
  %i.o = icmp sgt i32 %2, -10000
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.r = sext i32 %2 to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.r
  br label %index2adr.exit.i

bb.e:                                             ; preds = %bb.c
  switch i32 %2, label %bb.i [
    i32 -10000, label %bb.f
    i32 -10001, label %bb.g
    i32 -10002, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  br label %index2adr.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !81
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 5, ptr %i.ae, align 8, !tbaa !99
  br label %index2adr.exit.i

bb.h:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %index2adr.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !111
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !117
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 2 uses
  %i.al = sub nuw nsw i32 -10002, %2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 11
  %i.an = load i8, ptr %i.am, align 1, !tbaa !81
  %i.ao = zext i8 %i.an to i32
  %.not.i.i = icmp samesign ugt i32 %i.al, %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.aq = sub nuw nsw i32 -10003, %2
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ar
  %i.at = select i1 %.not.i.i, ptr @luaO_nilobject_, ptr %i.as
  br label %index2adr.exit.i

index2adr.exit.i:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.1.i.i = phi ptr [ %.luaO_nilobject_.i.i, %bb.b ], [ %i.s, %bb.d ], [ %i.at, %bb.i ], [ %i.v, %bb.f ], [ %i.ab, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !95 ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %lua_remove.exit

.lr.ph.i:                                         ; preds = %index2adr.exit.i, %.lr.ph.i
  %i.ay = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.av, %index2adr.exit.i ] ; 3 uses
  %.013.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.1.i.i, %index2adr.exit.i ] ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !81
  store i64 %i.az, ptr %.013.i, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !99
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !95 ; 2 uses
  %i.bf = icmp ult ptr %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %lua_remove.exit, !llvm.loop !4

lua_remove.exit:                                  ; preds = %.lr.ph.i, %index2adr.exit.i
  %.lcssa.i = phi ptr [ %i.aw, %index2adr.exit.i ], [ %i.be, %.lr.ph.i ]
  %i.bg = getelementptr inbounds i8, ptr %.lcssa.i, i64 -16
  store ptr %i.bg, ptr %i.au, align 8, !tbaa !95
  ret void
}

declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind uwtable
define internal noundef ptr @getF(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(ret: address, provenance) %1, ptr nofree noundef writeonly captures(none) %2) #23 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !122
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 8, !tbaa !122
  store i64 1, ptr %2, align 8, !tbaa !134
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = tail call i32 @feof(ptr noundef %i.c) #33
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.g = tail call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 8192, ptr noundef %i.f) ; 2 uses
  store i64 %i.g, ptr %2, align 8, !tbaa !134
  %.not12 = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not12, ptr null, ptr %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ @.str.279, %bb.b ], [ %i.h, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @f_call(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !108
  tail call fastcc void @luaD_call(ptr noundef %0, ptr noundef %i.a, i32 noundef %i.c)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @callallgcTM(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  %.not2.i = icmp eq ptr %i.d, null
  br i1 %.not2.i, label %luaC_callGCTM.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call fastcc void @GCTM(ptr noundef nonnull %0)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !190
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %luaC_callGCTM.exit, label %.lr.ph.i, !llvm.loop !569

luaC_callGCTM.exit:                               ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #33 = { nounwind }
attributes #34 = { cold nounwind }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { nounwind allocsize(1) }
attributes #37 = { nounwind returns_twice }
attributes #38 = { noreturn nounwind }
attributes #39 = { cold noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}
!llvm.errno.tbaa = !{!46}

!0 = distinct !{null}
!1 = distinct !{!1, !97}
!2 = distinct !{!2, !97}
!3 = distinct !{null}
!4 = distinct !{!4, !97}
!5 = distinct !{!5, !97}
!6 = distinct !{null}
!7 = distinct !{null, null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{ptr @resetstack, null}
!14 = distinct !{ptr @resetstack, null, null}
!15 = distinct !{!15, !97}
!16 = distinct !{null}
!17 = distinct !{!17, !97}
!18 = distinct !{!18, !97}
!19 = distinct !{!19, !97}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{!22, !97}
!23 = distinct !{!23, !97}
!24 = distinct !{!24, !97}
!25 = distinct !{null}
!26 = distinct !{!26, !97}
!27 = distinct !{!27, !97}
!28 = distinct !{!28, !97}
!29 = distinct !{!29, !97}
!30 = distinct !{null, ptr @luaZ_fill}
!31 = distinct !{null, null}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{null, null}
!35 = distinct !{!35, !97}
!36 = distinct !{!36, !97}
!37 = distinct !{null}
!38 = !{i32 8, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"omnipotent char", !42, i64 0}
!44 = !{!"int", !43, i64 0}
!45 = !{!"__libc_errno", !44, i64 0}
!46 = !{!45, !44, i64 0}
!47 = !{!"any pointer", !43, i64 0}
!48 = !{!"p1 _ZTS8GCObject", !47, i64 0}
!49 = !{!"p1 _ZTS10lua_TValue", !47, i64 0}
!50 = !{!"p1 _ZTS12global_State", !47, i64 0}
!51 = !{!"p1 _ZTS8CallInfo", !47, i64 0}
!52 = !{!"p1 int", !47, i64 0}
!53 = !{!"short", !43, i64 0}
!54 = !{!"lua_TValue", !43, i64 0, !44, i64 8}
!55 = !{!"p1 _ZTS11lua_longjmp", !47, i64 0}
!56 = !{!"long", !43, i64 0}
!57 = !{!"lua_State", !48, i64 0, !43, i64 8, !43, i64 9, !43, i64 10, !49, i64 16, !49, i64 24, !50, i64 32, !51, i64 40, !52, i64 48, !49, i64 56, !49, i64 64, !51, i64 72, !51, i64 80, !44, i64 88, !44, i64 92, !53, i64 96, !53, i64 98, !43, i64 100, !43, i64 101, !44, i64 104, !44, i64 108, !47, i64 112, !54, i64 120, !54, i64 136, !48, i64 152, !48, i64 160, !55, i64 168, !56, i64 176}
!58 = !{!57, !48, i64 0}
!59 = !{!"any p2 pointer", !47, i64 0}
!60 = !{!"p2 _ZTS8GCObject", !59, i64 0}
!61 = !{!"stringtable", !60, i64 0, !44, i64 8, !44, i64 12}
!62 = !{!"p1 omnipotent char", !47, i64 0}
!63 = !{!"Mbuffer", !62, i64 0, !56, i64 8, !56, i64 16}
!64 = !{!"p1 _ZTS9lua_State", !47, i64 0}
!65 = !{!"UpVal", !48, i64 0, !43, i64 8, !43, i64 9, !49, i64 16, !43, i64 24}
!66 = !{!"global_State", !61, i64 0, !47, i64 16, !47, i64 24, !43, i64 32, !43, i64 33, !44, i64 36, !48, i64 40, !60, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !63, i64 88, !56, i64 112, !56, i64 120, !56, i64 128, !56, i64 136, !44, i64 144, !44, i64 148, !47, i64 152, !54, i64 160, !64, i64 176, !65, i64 184, !43, i64 224, !43, i64 296}
!67 = !{!66, !43, i64 32}
!68 = !{!57, !50, i64 32}
!69 = !{!57, !49, i64 64}
!70 = !{!57, !44, i64 88}
!71 = !{!57, !55, i64 168}
!72 = !{!57, !43, i64 101}
!73 = !{!57, !48, i64 152}
!74 = !{!57, !43, i64 10}
!75 = !{!57, !51, i64 80}
!76 = !{!57, !56, i64 176}
!77 = !{!57, !44, i64 128}
!78 = !{!66, !47, i64 16}
!79 = !{!66, !47, i64 24}
!80 = !{!66, !64, i64 176}
!81 = !{!43, !43, i64 0}
!82 = !{!66, !44, i64 168}
!83 = !{!66, !62, i64 88}
!84 = !{!66, !47, i64 152}
!85 = !{!66, !43, i64 33}
!86 = !{!66, !48, i64 40}
!87 = !{!66, !44, i64 36}
!88 = !{!66, !60, i64 48}
!89 = !{!66, !56, i64 120}
!90 = !{!66, !44, i64 144}
!91 = !{!66, !44, i64 148}
!92 = !{!66, !56, i64 136}
!93 = !{!"p1 _ZTS5Table", !47, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!57, !49, i64 16}
!96 = !{!66, !56, i64 112}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!66, !56, i64 128}
!99 = !{!54, !44, i64 8}
!100 = !{!62, !62, i64 0}
!101 = !{!"p1 _ZTS4Node", !47, i64 0}
!102 = !{!"Table", !48, i64 0, !43, i64 8, !43, i64 9, !43, i64 10, !43, i64 11, !93, i64 16, !49, i64 24, !101, i64 32, !101, i64 40, !48, i64 48, !44, i64 56}
!103 = !{!102, !101, i64 32}
!104 = !{!66, !48, i64 64}
!105 = !{!102, !48, i64 48}
!106 = !{!"CallS", !49, i64 0, !44, i64 8}
!107 = !{!106, !49, i64 0}
!108 = !{!106, !44, i64 8}
!109 = !{!"p1 _ZTS8_IO_FILE", !47, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!57, !51, i64 40}
!112 = !{!"CallInfo", !49, i64 0, !49, i64 8, !49, i64 16, !52, i64 24, !44, i64 32, !44, i64 36}
!113 = !{!112, !49, i64 0}
!114 = !{!57, !49, i64 24}
!115 = !{!57, !53, i64 98}
!116 = !{!57, !53, i64 96}
!117 = !{!112, !49, i64 8}
!118 = !{!102, !44, i64 56}
!119 = !{!102, !49, i64 24}
!120 = !{!102, !43, i64 11}
!121 = !{!"LoadF", !44, i64 0, !109, i64 8, !43, i64 16}
!122 = !{!121, !44, i64 0}
!123 = !{!121, !109, i64 8}
!124 = !{!"Zio", !56, i64 0, !62, i64 8, !47, i64 16, !47, i64 24, !64, i64 32}
!125 = !{!124, !64, i64 32}
!126 = !{!124, !47, i64 16}
!127 = !{!124, !47, i64 24}
!128 = !{!"p1 _ZTS3Zio", !47, i64 0}
!129 = !{!"SParser", !128, i64 0, !63, i64 8, !62, i64 32}
!130 = !{!129, !128, i64 0}
!131 = !{!129, !62, i64 32}
!132 = !{!129, !62, i64 8}
!133 = !{!129, !56, i64 24}
!134 = !{!56, !56, i64 0}
!135 = !{!"lua_longjmp", !55, i64 0, !43, i64 8, !44, i64 208}
!136 = !{!135, !44, i64 208}
!137 = !{!57, !44, i64 92}
!138 = !{!57, !51, i64 72}
!139 = !{!57, !49, i64 56}
!140 = !{!112, !49, i64 16}
!141 = !{!"p1 _ZTS7TString", !47, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{!66, !44, i64 12}
!144 = !{!66, !60, i64 0}
!145 = !{!66, !56, i64 104}
!146 = !{!102, !93, i64 16}
!147 = !{!102, !43, i64 10}
!148 = !{!48, !48, i64 0}
!149 = !{!61, !44, i64 12}
!150 = !{!61, !60, i64 0}
!151 = !{!65, !49, i64 16}
!152 = !{!65, !48, i64 0}
!153 = !{!66, !48, i64 56}
!154 = !{!57, !52, i64 48}
!155 = !{!112, !52, i64 24}
!156 = !{!"p2 _ZTS5Proto", !59, i64 0}
!157 = !{!"p1 _ZTS6LocVar", !47, i64 0}
!158 = !{!"p2 _ZTS7TString", !59, i64 0}
!159 = !{!"Proto", !48, i64 0, !43, i64 8, !43, i64 9, !49, i64 16, !52, i64 24, !156, i64 32, !52, i64 40, !157, i64 48, !158, i64 56, !141, i64 64, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !48, i64 104, !43, i64 112, !43, i64 113, !43, i64 114, !43, i64 115}
!160 = !{!159, !52, i64 24}
!161 = !{!159, !52, i64 40}
!162 = !{!44, !44, i64 0}
!163 = !{!159, !141, i64 64}
!164 = !{!"double", !43, i64 0}
!165 = !{!164, !164, i64 0}
!166 = !{!63, !56, i64 16}
!167 = !{!63, !62, i64 0}
!168 = !{!"p1 _ZTS5Proto", !47, i64 0}
!169 = !{!"LClosure", !48, i64 0, !43, i64 8, !43, i64 9, !43, i64 10, !43, i64 11, !48, i64 16, !93, i64 24, !168, i64 32, !43, i64 40}
!170 = !{!169, !168, i64 32}
!171 = !{!159, !49, i64 16}
!172 = !{!112, !44, i64 36}
!173 = !{!112, !44, i64 32}
!174 = !{!"llvm.loop.unroll.disable"}
!175 = !{!"p1 short", !47, i64 0}
!176 = !{!175, !175, i64 0}
!177 = !{!53, !53, i64 0}
!178 = !{!159, !156, i64 32}
!179 = !{!168, !168, i64 0}
!180 = !{!159, !43, i64 112}
!181 = !{!159, !43, i64 113}
!182 = !{!159, !43, i64 115}
!183 = !{!159, !43, i64 114}
!184 = !{!"Node", !54, i64 0, !43, i64 16}
end_hunk_0
