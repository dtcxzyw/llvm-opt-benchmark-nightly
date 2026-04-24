inline.NumInlined: 479
inline.NumDeleted: 218
begin_hunk_0_@_ZN5folly10symbolizer7ElfFile11openNoThrowEPKcRKNS1_7OptionsE:bb.a
  unreachable

_ZN5folly10symbolizer7ElfFile5resetEv.exit:       ; preds = %bb.k, %bb.m
  store <4 x i64> zeroinitializer, ptr %i.t, align 8
  %i.ap = tail call ptr @__errno_location() #35
  store i32 22, ptr %i.ap, align 4, !tbaa !7
  br label %.thread30
end_hunk_0
begin_hunk_1_@_ZN5folly10symbolizer7ElfFile11openNoThrowEPKcRKNS1_7OptionsE:bb.a

"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer7ElfFile11openNoThrowEPKcRKNS3_7OptionsEE3$_0Lb1EE7executeEv.exit.i": ; preds = %bb.s, %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 536
  store <4 x i64> zeroinitializer, ptr %i.az, align 8
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer7ElfFile11openNoThrowEPKcRKNS3_7OptionsEE3$_0Lb1EED2Ev.exit"

"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer7ElfFile11openNoThrowEPKcRKNS3_7OptionsEE3$_0Lb1EED2Ev.exit": ; preds = %bb.o, %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer7ElfFile11openNoThrowEPKcRKNS3_7OptionsEE3$_0Lb1EE7executeEv.exit.i"
end_hunk_1
begin_hunk_2_@_ZN5folly10symbolizer7ElfFile5resetEv:bb.a

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  store <4 x i64> zeroinitializer, ptr %i.i, align 8
  ret void

bb.g:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN5folly10symbolizer7ElfFile13openAndFollowEPKcRKNS1_7OptionsE:bb.a

_ZN5folly10symbolizer7ElfFile5resetEv.exit:       ; preds = %bb.f, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 536
  store <4 x i64> zeroinitializer, ptr %i.ae, align 8
  %i.af = call { i32, ptr } @_ZN5folly10symbolizer7ElfFile11openNoThrowEPKcRKNS1_7OptionsE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2) #31 ; 2 uses
  %i.ag = extractvalue { i32, ptr } %i.af, 0
  %i.ah = icmp eq i32 %i.ag, 0
end_hunk_3
begin_hunk_4_@_ZN5folly10symbolizer7ElfFileC2EOS1_:bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !37
  store i64 %i.i, ptr %i.g, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !tbaa.struct !974
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.n = load i64, ptr %i.m, align 8, !tbaa !964
  store i64 %i.n, ptr %i.l, align 8, !tbaa !964
  %i.o = invoke noundef i64 @_ZN5folly7strlcpyEPcPKcm(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 511)
end_hunk_4
begin_hunk_5_@_ZN5folly10symbolizer7ElfFileC2EOS1_:bb.a
  store i8 0, ptr %1, align 8, !tbaa !11
  store i32 -1, ptr %i.b, align 8, !tbaa !12
  store ptr inttoptr (i64 -1 to ptr), ptr %i.e, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
end_hunk_5
begin_hunk_6_@_ZN5folly10symbolizer7ElfFileaSEOS1_:bb.a

_ZN5folly10symbolizer7ElfFile5resetEv.exit:       ; preds = %bb.c, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.k, align 8
  %i.l = invoke noundef i64 @_ZN5folly7strlcpyEPcPKcm(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 511)
          to label %bb.g unwind label %bb.h       ; 0 uses

end_hunk_6
begin_hunk_7_@_ZN5folly10symbolizer7ElfFileaSEOS1_:bb.a
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.r, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !tbaa.struct !974
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.v = load i64, ptr %i.u, align 8, !tbaa !964
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 %i.v, ptr %i.w, align 8, !tbaa !964
  store i8 0, ptr %1, align 8, !tbaa !11
  store i32 -1, ptr %i.m, align 8, !tbaa !12
  store ptr inttoptr (i64 -1 to ptr), ptr %i.o, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  ret ptr %0

bb.h:                                             ; preds = %_ZN5folly10symbolizer7ElfFile5resetEv.exit
end_hunk_7
