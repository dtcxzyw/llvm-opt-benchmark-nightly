inline.NumInlined: 74
inline.NumDeleted: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.upb_MiniTable = type { ptr, i16, i16, i8, i8, i8, i8, [0 x %struct._upb_FastTable_Entry] }
%struct._upb_FastTable_Entry = type { i64, ptr }

@kUpbDefOptDefault = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [49 x i8] c"Extension range (%d, %d) is invalid, message=%s\0A\00", align 1
@google__protobuf__ExtensionRangeOptions_msg_init = external constant %struct.upb_MiniTable, align 8
@google__protobuf__FeatureSet_msg_init = external constant %struct.upb_MiniTable, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @_upb_ExtensionRange_At(ptr nofree noundef readnone captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [24 x i8], ptr %0, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @upb_ExtensionRange_Options(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @upb_ExtensionRange_HasOptions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = load ptr, ptr @kUpbDefOptDefault, align 8, !tbaa !12
  %i.c = icmp ne ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @upb_ExtensionRange_Start(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @upb_ExtensionRange_End(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_ExtensionRanges_New(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
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
  tail call void @_upb_DefBuilder_OomErr(ptr noundef %0) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = mul nuw nsw i64 %i.c, 24                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !26 ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val11.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.j = ptrtoint ptr %.val11.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.f
  br i1 %i.m, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !29

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.f
  store ptr %i.n, ptr %i.h, align 8, !tbaa !26
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %.lr.ph

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.d
  %i.o = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.h, i64 noundef %i.f) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #9
  unreachable

.lr.ph:                                           ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i.ph = phi ptr [ %i.o, %upb_Arena_Malloc.exit.i.i ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr i8, ptr %0, i64 56
  %i.r = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__ExtensionRangeOptions_msg_init, i64 8), align 8
  %i.s = zext i16 %i.r to i64                     ; 5 uses
  %i.t = and i64 %i.s, 7
  %i.u = icmp eq i64 %i.t, 0
  br label %bb.f

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.0.i83 = phi ptr [ null, %bb.a ], [ %.0.i.ph, %bb.p ]
  ret ptr %.0.i83

bb.f:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 6 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32
  %i.z = and i8 %i.y, 4
  %.not59 = icmp eq i8 %i.z, 0
  br i1 %.not59, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__ExtensionRangeOptions_msg_init) #10, !srcloc !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ae = call i32 @upb_Encode(ptr noundef %i.ac, ptr noundef nonnull @google__protobuf__ExtensionRangeOptions_msg_init, i32 noundef 0, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #9
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !35
  %i.ah = load ptr, ptr %0, align 8, !tbaa !36
  %i.ai = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ah) #10
  %.val = load ptr, ptr %i.q, align 8, !tbaa !16  ; 5 uses
  call void @llvm.assume(i1 %i.u)
  %.val.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !26 ; 4 uses
  %i.aj = getelementptr i8, ptr %.val, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !28
  %i.ak = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.al = ptrtoint ptr %.val.i.i.i.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, %i.s
  br i1 %i.an, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !29

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.s
  store ptr %i.ao, ptr %.val, align 8, !tbaa !26
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.j

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.i
  %i.ap = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.val, i64 noundef %i.s) #10 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !37

bb.j:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.ap, %upb_Arena_Malloc.exit.i.i.i ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.s, i1 false)
  %i.aq = call i32 @upb_Decode(ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__ExtensionRangeOptions_msg_init, ptr noundef %i.ai, i32 noundef 0, ptr noundef nonnull %.val) #10
  %.not10.i = icmp eq i32 %i.aq, 0
  br i1 %.not10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %upb_Arena_Malloc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %.0.i.ph, i64 %indvars.iv
  store ptr null, ptr %i.ar, align 8, !tbaa !7
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %.0.i.ph, i64 %indvars.iv
  store ptr %.0.i3.i.i.i, ptr %i.as, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.at = load ptr, ptr @kUpbDefOptDefault, align 8, !tbaa !12 ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.0.i.ph, i64 %indvars.iv
  store ptr %i.at, ptr %i.au, align 8, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = phi ptr [ %i.at, %bb.m ], [ %.0.i3.i.i.i, %bb.l ]
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %.0.i.ph, i64 %indvars.iv ; 3 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FeatureSet_msg_init) #10, !srcloc !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ay = load i64, ptr %i.ax, align 1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = call ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef %0, ptr noundef %3, ptr noundef %i.az, i1 noundef zeroext false) #10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !38
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !30  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load i32, ptr %i.bd, align 1            ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = load i32, ptr %i.bf, align 1            ; 4 uses
  %i.bh = call ptr @upb_MessageDef_Options(ptr noundef %4) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 9
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = icmp sgt i32 %i.be, 0
  %.not52 = icmp sgt i32 %i.bg, %i.be
  %or.cond = select i1 %i.bl, i1 %.not52, i1 false
  %i.bm = icmp slt i32 %i.bg, 536870913
  %.not54 = select i1 %i.bk, i1 true, i1 %i.bm
  %or.cond55 = select i1 %or.cond, i1 %.not54, i1 false
  br i1 %or.cond55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = call ptr @upb_MessageDef_FullName(ptr noundef %4) #10
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.be, i32 noundef %i.bg, ptr noundef %i.bn) #9
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 %i.be, ptr %i.bo, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i32 %i.bg, ptr %i.bp, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !39
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: noreturn
declare void @_upb_DefBuilder_OomErr(ptr noundef) local_unnamed_addr #5

declare ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare ptr @upb_MessageDef_Options(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_upb_DefBuilder_Errf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @upb_MessageDef_FullName(ptr noundef) local_unnamed_addr #6

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @upb_Encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @upb_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"upb_ExtensionRange", !9, i64 0, !11, i64 8, !4, i64 16, !4, i64 20}
!9 = !{!"p1 _ZTS37google_protobuf_ExtensionRangeOptions", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS26google_protobuf_FeatureSet", !10, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!8, !4, i64 16}
!15 = !{!8, !4, i64 20}
!16 = !{!17, !24, i64 56}
!17 = !{!"upb_DefBuilder", !18, i64 0, !19, i64 8, !11, i64 24, !13, i64 32, !22, i64 40, !23, i64 48, !24, i64 56, !24, i64 64, !10, i64 72, !25, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !5, i64 104}
!18 = !{!"p1 _ZTS11upb_DefPool", !10, i64 0}
!19 = !{!"", !20, i64 0}
!20 = !{!"", !21, i64 0, !4, i64 8, !4, i64 12}
!21 = !{!"p1 _ZTS11_upb_tabent", !10, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"p1 _ZTS11upb_FileDef", !10, i64 0}
!24 = !{!"p1 _ZTS9upb_Arena", !10, i64 0}
!25 = !{!"p1 _ZTS17upb_MiniTableFile", !10, i64 0}
!26 = !{!27, !13, i64 0}
!27 = !{!"upb_Arena", !13, i64 0, !13, i64 8}
!28 = !{!27, !13, i64 8}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS46google_protobuf_DescriptorProto_ExtensionRange", !10, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{i64 1670880}
!34 = !{!17, !24, i64 64}
!35 = !{!22, !22, i64 0}
!36 = !{!17, !18, i64 0}
!37 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!38 = !{!8, !11, i64 8}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
end_hunk_0
