Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ldo?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z10luaD_pcallP9lua_StatePFvS0_PvES1_ll:bb.a

_Z16luaD_seterrorobjP9lua_StateiP10lua_TValue.exit63: ; preds = %.critedge, %bb.n, %bb.o, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !34
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !42  ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.j ; 2 uses
  store ptr %i.az, ptr %i.d, align 8, !tbaa !28
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !46 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 20000
  %i.bf = sdiv exact i64 %i.j, 48
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp slt i32 %i.bg, 19999
  %or.cond66 = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %or.cond66, label %bb.q, label %_ZL19restore_stack_limitP9lua_State.exit

bb.q:                                             ; preds = %_Z16luaD_seterrorobjP9lua_StateiP10lua_TValue.exit63
  %i.bi = ptrtoint ptr %i.ay to i64
  %i.bj = zext nneg i32 %i.bd to i64
  %i.bk = mul nuw nsw i64 %i.bj, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !37
  %i.bn = tail call noundef ptr @_Z13luaM_realloc_P9lua_StatePvmmh(ptr noundef nonnull %0, ptr noundef nonnull %i.ay, i64 noundef %i.bk, i64 noundef 960000, i8 noundef zeroext %i.bm) ; 3 uses
  store ptr %i.bn, ptr %i.f, align 8, !tbaa !42
  store i32 20000, ptr %i.bc, align 4, !tbaa !46
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bi
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  store ptr %i.br, ptr %i.d, align 8, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 959952
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !47
  br label %_ZL19restore_stack_limitP9lua_State.exit

_ZL19restore_stack_limitP9lua_State.exit:         ; preds = %bb.q, %_Z16luaD_seterrorobjP9lua_StateiP10lua_TValue.exit63, %bb.a, %bb.m
  %.1 = phi i32 [ 0, %bb.m ], [ 0, %bb.a ], [ %.154, %_Z16luaD_seterrorobjP9lua_StateiP10lua_TValue.exit63 ], [ %.154, %bb.q ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL11callerrfuncP9lua_StatePv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !73
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !73
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp slt i64 %i.k, 17
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %.not.i = icmp slt i32 %i.n, 1
  %i.o = shl nsw i32 %i.n, 1
  %i.p = add nsw i32 %i.n, 1
  %i.q = select i1 %.not.i, i32 %i.p, i32 %i.o
  tail call void @_Z17luaD_reallocstackP9lua_Stateii(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef 0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.h, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -16
  tail call void @_Z11luaD_callnyP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 1)
  ret void
}

declare hidden void @_Z10luaF_closeP9lua_StateP10lua_TValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13lua_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13lua_exception4whatEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = invoke noundef ptr @_Z13lua_tolstringP9lua_StateiPm(ptr noundef %i.e, i32 noundef -1, ptr noundef null)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.not = icmp eq ptr %i.f, null
  br i1 %.not.not, label %thread-pre-split, label %bb.e

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i32, ptr %i.a, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %bb.a
  %i.g = phi i32 [ %.pr, %thread-pre-split ], [ %i.b, %bb.a ]
  %switch.tableidx = add i32 %i.g, -2             ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 4
  br i1 %i.h, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK13lua_exception4whatEv, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup, %bb.c
  %.1 = phi ptr [ %switch.load, %switch.lookup ], [ %i.f, %bb.c ], [ @.str.11, %bb.d ]
  ret ptr %.1

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #17
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef ptr @_Z13lua_tolstringP9lua_StateiPm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden noundef i32 @_Z12luau_precallP9lua_StateP10lua_TValuei(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @_Z16luaC_barrierbackP9lua_StateP8GCObjectPS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @_Z12luau_executeP9lua_State(ptr noundef) local_unnamed_addr #2

declare hidden void @_Z12luau_poscallP9lua_StateP10lua_TValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15resume_continueP9lua_State(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.thread

.thread:                                          ; preds = %.thread.backedge, %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !54
  switch i8 %i.e, label %.critedge [
    i8 0, label %bb.b
    i8 127, label %bb.b
  ]

bb.b:                                             ; preds = %.thread, %.thread
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !28   ; 4 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.h = icmp ugt ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !71
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50
  %i.p = and i32 %i.o, -3
  store i32 %i.p, ptr %i.n, align 4, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull %0, i32 noundef 0)
  %i.t = load i8, ptr %i.a, align 1, !tbaa !54
  switch i8 %i.t, label %bb.e [
    i8 6, label %.critedge
    i8 1, label %.critedge
    i8 127, label %.thread.backedge
  ]

.thread.backedge:                                 ; preds = %bb.d, %bb.i, %bb.e
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.v = sext i32 %i.s to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.w
  tail call void @_Z12luau_poscallP9lua_StateP10lua_TValue(ptr noundef nonnull %0, ptr noundef %i.x)
  br label %.thread.backedge

bb.f:                                             ; preds = %bb.c
  %i.y = load i8, ptr @_ZN5FFlag14LuauYieldIter2E, align 8, !tbaa !78, !range !52, !noundef !53
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !50
  %i.ac = and i32 %i.ab, 8
  %.not22 = icmp eq i32 %i.ac, 0
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_Z13luau_finishopP9lua_State(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_Z12luau_executeP9lua_State(ptr noundef nonnull %0)
  br label %.thread.backedge

.critedge:                                        ; preds = %bb.d, %bb.d, %.thread, %bb.b
  ret void
}

declare hidden void @_Z13luau_finishopP9lua_State(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_ldo.cpp() #14 section ".text.startup" {
bb.a:
  store i8 0, ptr @_ZN5FFlag29LuauXpcallFixMessageYieldPathE, align 8, !tbaa !78
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag29LuauXpcallFixMessageYieldPathE, i64 1), align 1, !tbaa !86
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag29LuauXpcallFixMessageYieldPathE, i64 8), align 8, !tbaa !87
  %i.a = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !88
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag29LuauXpcallFixMessageYieldPathE, i64 16), align 8, !tbaa !89
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag29LuauXpcallFixMessageYieldPathE, i64 24), align 8, !tbaa !90
  store ptr @_ZN5FFlag29LuauXpcallFixMessageYieldPathE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !88
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !44}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTSSt9exception"}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!13 = !{!"_ZTS13lua_exception", !10, i64 0, !12, i64 8, !7, i64 16}
!14 = !{!13, !7, i64 16}
!15 = !{!"vtable pointer", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!13, !12, i64 8}
!18 = !{!"bool", !6, i64 0}
!19 = !{!"p1 _ZTS10lua_TValue", !11, i64 0}
!20 = !{!"p1 _ZTS12global_State", !11, i64 0}
!21 = !{!"p1 _ZTS8CallInfo", !11, i64 0}
!22 = !{!"short", !6, i64 0}
!23 = !{!"p1 _ZTS8LuaTable", !11, i64 0}
!24 = !{!"p1 _ZTS5UpVal", !11, i64 0}
!25 = !{!"p1 _ZTS8GCObject", !11, i64 0}
!26 = !{!"p1 _ZTS7TString", !11, i64 0}
!27 = !{!"_ZTS9lua_State", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !18, i64 5, !18, i64 6, !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !19, i64 40, !19, i64 48, !21, i64 56, !21, i64 64, !7, i64 72, !7, i64 76, !22, i64 80, !22, i64 82, !7, i64 84, !23, i64 88, !24, i64 96, !25, i64 104, !26, i64 112, !11, i64 120}
!28 = !{!27, !21, i64 32}
!29 = !{!"p1 _ZTS5Proto", !11, i64 0}
!30 = !{!"_ZTS8CallInfo", !19, i64 0, !19, i64 8, !19, i64 16, !29, i64 24, !6, i64 32, !7, i64 40, !7, i64 44}
!31 = !{!30, !19, i64 0}
!32 = !{!27, !19, i64 16}
!33 = !{!30, !19, i64 16}
!34 = !{!27, !19, i64 8}
!35 = !{!27, !19, i64 48}
!36 = !{!27, !7, i64 72}
!37 = !{!27, !6, i64 2}
!38 = !{!"_ZTS10lua_TValue", !6, i64 0, !6, i64 8, !7, i64 12}
!39 = !{!38, !7, i64 12}
!40 = !{!27, !19, i64 40}
!41 = !{!6, !6, i64 0}
!42 = !{!27, !21, i64 64}
!43 = !{!"_ZTS5UpVal", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !19, i64 8, !6, i64 16}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!30, !19, i64 8}
!46 = !{!27, !7, i64 76}
!47 = !{!27, !21, i64 56}
!48 = !{!27, !22, i64 80}
!49 = !{!27, !22, i64 82}
!50 = !{!30, !7, i64 44}
!51 = !{!27, !18, i64 5}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!27, !6, i64 3}
!55 = !{!22, !22, i64 0}
!56 = !{!27, !20, i64 24}
!57 = !{!"any p2 pointer", !11, i64 0}
!58 = !{!"p2 _ZTS7TString", !57, i64 0}
!59 = !{!"_ZTS11stringtable", !58, i64 0, !7, i64 8, !7, i64 12}
!60 = !{!"long", !6, i64 0}
!61 = !{!"p1 _ZTS8lua_Page", !11, i64 0}
!62 = !{!"p1 _ZTS10lua_jmpbuf", !11, i64 0}
!63 = !{!"_ZTS13lua_Callbacks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!64 = !{!"_ZTS22lua_ExecutionCallbacks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
!65 = !{!"double", !6, i64 0}
!66 = !{!"_ZTS7GCStats", !6, i64 0, !7, i64 128, !7, i64 132, !60, i64 136, !60, i64 144, !60, i64 152, !65, i64 160, !65, i64 168, !65, i64 176}
!67 = !{!"_ZTS12global_State", !59, i64 0, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 33, !25, i64 40, !25, i64 48, !25, i64 56, !60, i64 64, !60, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !6, i64 96, !6, i64 416, !61, i64 736, !61, i64 744, !61, i64 752, !12, i64 760, !43, i64 768, !6, i64 808, !6, i64 920, !6, i64 1032, !38, i64 1200, !38, i64 1216, !7, i64 1232, !62, i64 1240, !60, i64 1248, !6, i64 1256, !63, i64 1288, !64, i64 1368, !6, i64 1440, !6, i64 1952, !6, i64 11312, !6, i64 13360, !6, i64 14384, !6, i64 15408, !38, i64 16432, !7, i64 16448, !11, i64 16456, !6, i64 16464, !6, i64 17488, !66, i64 18528, !7, i64 18712}
!68 = !{!67, !60, i64 72}
!69 = !{!67, !60, i64 64}
!70 = !{!"_ZTS7Closure", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !25, i64 8, !23, i64 16, !6, i64 24}
!71 = !{!70, !6, i64 3}
!72 = !{!7, !7, i64 0}
!73 = !{i64 0, i64 8, !41, i64 8, i64 4, !41, i64 12, i64 4, !72}
!74 = !{!67, !11, i64 1352}
!75 = !{!"p1 omnipotent char", !11, i64 0}
!76 = !{!"p1 _ZTSN4Luau6FValueIbEE", !11, i64 0}
!77 = !{!"_ZTSN4Luau6FValueIbEE", !18, i64 0, !18, i64 1, !75, i64 8, !76, i64 16, !7, i64 24}
!78 = !{!77, !18, i64 0}
!79 = distinct !{!79, !83}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!43, !19, i64 8}
!85 = distinct !{!85, !44}
!86 = !{!77, !18, i64 1}
!87 = !{!77, !75, i64 8}
!88 = !{!76, !76, i64 0}
!89 = !{!77, !76, i64 16}
!90 = !{!77, !7, i64 24}
end_hunk_0
