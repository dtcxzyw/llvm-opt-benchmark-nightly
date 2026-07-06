inline.NumInlined: 95
inline.NumDeleted: 44
begin_hunk_0_@_upb_DefBuilder_FullToShort
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @upb_MethodDef_Index(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @upb_MethodDef_InputType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @upb_MethodDef_OutputType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @upb_MethodDef_ClientStreaming(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i8, ptr %i.a, align 4, !tbaa !23, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @upb_MethodDef_ServerStreaming(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_MethodDefs_New(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %1, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_upb_DefBuilder_OomErr(ptr noundef %0) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = mul nuw nsw i64 %i.c, 56                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !37 ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val11.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.j = ptrtoint ptr %.val11.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.f
  br i1 %i.m, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !40

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.f
  store ptr %i.n, ptr %i.h, align 8, !tbaa !37
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %.lr.ph

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.d
  %i.o = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.h, i64 noundef %i.f) #9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #10
  unreachable

.lr.ph:                                           ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i.ph = phi ptr [ %i.o, %upb_Arena_Malloc.exit.i.i ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr i8, ptr %0, i64 56
  %i.r = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__MethodOptions_msg_init, i64 8), align 8
  %i.s = zext i16 %i.r to i64                     ; 5 uses
  %i.t = and i64 %i.s, 7
  %i.u = icmp eq i64 %i.t, 0
  br label %bb.f

._crit_edge:                                      ; preds = %create_method.exit, %bb.a
  %.0.i28 = phi ptr [ null, %bb.a ], [ %.0.i.ph, %create_method.exit ]
  ret ptr %.0.i28

bb.f:                                             ; preds = %.lr.ph, %create_method.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %create_method.exit ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41   ; 10 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %.0.i.ph, i64 %indvars.iv ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !43
  %i.aa = and i8 %i.z, 8
  %.not52.i = icmp eq i8 %i.aa, 0
  br i1 %.not52.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__MethodOptions_msg_init) #9, !srcloc !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.af = call i32 @upb_Encode(ptr noundef %i.ad, ptr noundef nonnull @google__protobuf__MethodOptions_msg_init, i32 noundef 0, ptr noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !46
  %i.ai = load ptr, ptr %0, align 8, !tbaa !47
  %i.aj = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ai) #9
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !27 ; 5 uses
  call void @llvm.assume(i1 %i.u)
  %.val.i.i.i.i.i = load ptr, ptr %.val.i, align 8, !tbaa !37 ; 4 uses
  %i.ak = getelementptr i8, ptr %.val.i, i64 8
  %.val11.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.al = ptrtoint ptr %.val11.i.i.i.i.i to i64
  %i.am = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, %i.s
  br i1 %i.ao, label %upb_Arena_Malloc.exit.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i, !prof !40

upb_Arena_Malloc.exit.thread.i.i.i.i:             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.s
  store ptr %i.ap, ptr %.val.i, align 8, !tbaa !37
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  br label %bb.j

upb_Arena_Malloc.exit.i.i.i.i:                    ; preds = %bb.i
  %i.aq = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.val.i, i64 noundef %i.s) #9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j, !prof !48

bb.j:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i
  %.0.i3.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i ], [ %i.aq, %upb_Arena_Malloc.exit.i.i.i.i ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i.i, i8 0, i64 %i.s, i1 false)
  %i.ar = call i32 @upb_Decode(ptr noundef nonnull %i.ag, i64 noundef %i.ah, ptr noundef nonnull %.0.i3.i.i.i.i, ptr noundef nonnull @google__protobuf__MethodOptions_msg_init, ptr noundef %i.aj, i32 noundef 0, ptr noundef nonnull %.val.i) #9
  %.not10.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %upb_Arena_Malloc.exit.i.i.i.i
  store ptr null, ptr %i.x, align 8, !tbaa !16
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  store ptr %.0.i3.i.i.i.i, ptr %i.x, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %create_method.exit

bb.m:                                             ; preds = %bb.f
  %i.as = load ptr, ptr @kUpbDefOptDefault, align 8, !tbaa !17 ; 2 uses
  store ptr %i.as, ptr %i.x, align 8, !tbaa !16
  br label %create_method.exit

create_method.exit:                               ; preds = %bb.l, %bb.m
  %i.at = phi ptr [ %i.as, %bb.m ], [ %.0.i3.i.i.i.i, %bb.l ]
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FeatureSet_msg_init) #9, !srcloc !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 1
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = call ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef %0, ptr noundef %3, ptr noundef %i.aw, i1 noundef zeroext false) #9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.013.0.copyload14.i.i = load ptr, ptr %i.az, align 1
  %.sroa.9.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.9.0.copyload16.i.i = load i64, ptr %.sroa.9.0..sroa_idx15.i.i, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %4, ptr %i.ba, align 8, !tbaa !7
  %i.bb = call ptr @upb_ServiceDef_FullName(ptr noundef %4) #9
  %i.bc = call ptr @_upb_DefBuilder_MakeFullName(ptr noundef %0, ptr noundef %i.bb, ptr %.sroa.013.0.copyload14.i.i, i64 %.sroa.9.0.copyload16.i.i) #9 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %5 = and i8 %i.bf, 1
  store i8 %5, ptr %i.bg, align 4, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 53
  %6 = and i8 %i.bi, 1
  store i8 %6, ptr %i.bj, align 1, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.013.0.copyload14.i40.i = load ptr, ptr %i.bk, align 1
  %.sroa.9.0..sroa_idx15.i41.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.9.0.copyload16.i42.i = load i64, ptr %.sroa.9.0..sroa_idx15.i41.i, align 1
  %i.bl = call ptr @_upb_DefBuilder_Resolve(ptr noundef %0, ptr noundef %i.bc, ptr noundef %i.bc, ptr %.sroa.013.0.copyload14.i40.i, i64 %.sroa.9.0.copyload16.i42.i, i32 noundef 1) #9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !21
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !19 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.013.0.copyload14.i45.i = load ptr, ptr %i.bo, align 1
  %.sroa.9.0..sroa_idx15.i46.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.9.0.copyload16.i47.i = load i64, ptr %.sroa.9.0..sroa_idx15.i46.i, align 1
  %i.bp = call ptr @_upb_DefBuilder_Resolve(ptr noundef %0, ptr noundef %i.bn, ptr noundef %i.bn, ptr %.sroa.013.0.copyload14.i45.i, i64 %.sroa.9.0.copyload16.i47.i, i32 noundef 1) #9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !49
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: noreturn
declare void @_upb_DefBuilder_OomErr(ptr noundef) local_unnamed_addr #6

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef) local_unnamed_addr #4

declare ptr @_upb_DefBuilder_MakeFullName(ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #4

declare ptr @upb_ServiceDef_FullName(ptr noundef) local_unnamed_addr #4

declare ptr @_upb_DefBuilder_Resolve(ptr noundef, ptr noundef, ptr noundef, ptr, i64, i32 noundef) local_unnamed_addr #4

declare i32 @upb_Encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @upb_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !12, i64 16}
!8 = !{!"upb_MethodDef", !9, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !14, i64 40, !4, i64 48, !15, i64 52, !15, i64 53}
!9 = !{!"p1 _ZTS29google_protobuf_MethodOptions", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS26google_protobuf_FeatureSet", !10, i64 0}
!12 = !{!"p1 _ZTS14upb_ServiceDef", !10, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"p1 _ZTS14upb_MessageDef", !10, i64 0}
!15 = !{!"_Bool", !5, i64 0}
!16 = !{!8, !9, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!8, !11, i64 8}
!19 = !{!8, !13, i64 24}
!20 = !{!8, !4, i64 48}
!21 = !{!8, !14, i64 32}
!22 = !{!8, !14, i64 40}
!23 = !{!8, !15, i64 52}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!8, !15, i64 53}
!27 = !{!28, !35, i64 56}
!28 = !{!"upb_DefBuilder", !29, i64 0, !30, i64 8, !11, i64 24, !13, i64 32, !33, i64 40, !34, i64 48, !35, i64 56, !35, i64 64, !10, i64 72, !36, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !5, i64 104}
!29 = !{!"p1 _ZTS11upb_DefPool", !10, i64 0}
!30 = !{!"", !31, i64 0}
!31 = !{!"", !32, i64 0, !4, i64 8, !4, i64 12}
!32 = !{!"p1 _ZTS11_upb_tabent", !10, i64 0}
!33 = !{!"long", !5, i64 0}
!34 = !{!"p1 _ZTS11upb_FileDef", !10, i64 0}
!35 = !{!"p1 _ZTS9upb_Arena", !10, i64 0}
!36 = !{!"p1 _ZTS17upb_MiniTableFile", !10, i64 0}
!37 = !{!38, !13, i64 0}
!38 = !{!"upb_Arena", !13, i64 0, !13, i64 8}
!39 = !{!38, !13, i64 8}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTS37google_protobuf_MethodDescriptorProto", !10, i64 0}
!43 = !{!5, !5, i64 0}
!44 = !{i64 1671841}
!45 = !{!28, !35, i64 64}
!46 = !{!33, !33, i64 0}
!47 = !{!28, !29, i64 0}
!48 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
end_hunk_0
