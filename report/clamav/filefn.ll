Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filefn?download=true
inline.NumInlined: 33
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z11CalcFileSumP4FilePjPhjlj:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.bq = sub nsw i64 %.041, %i.bm
  %spec.select = select i1 %i.bb, i64 9223372034707292159, i64 %i.bq
  br label %.preheader.split.split

.split68.us:                                      ; preds = %bb.aa, %bb.s, %bb.n, %bb.j
  %i.br = load ptr, ptr %0, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8256) %0, i64 noundef %i.d, i32 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %.split68.us
  %i.bu = and i32 %5, 2
  %.not50 = icmp eq i32 %i.bu, 0
  br i1 %.not50, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store <4 x ptr> <ptr @.str, ptr @.str, ptr @.str, ptr @.str>, ptr %6, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <4 x ptr> <ptr @.str, ptr @.str, ptr @.str, ptr @.str>, ptr %i.bv, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i8 0, i64 40, i1 false)
  store i32 144, ptr %i.bx, align 8, !tbaa !25
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %6)
          to label %_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit unwind label %bb.ai

_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit:          ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ak, %.split68.us
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.aj:                                            ; preds = %_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_.exit, %bb.ag
  br i1 %.not47, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bz = invoke noundef i32 @_ZN8DataHash8GetCRC32Ev(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.al unwind label %bb.ai

bb.al:                                            ; preds = %bb.ak
  store i32 %i.bz, ptr %1, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  br i1 %.not48, label %_ZN5ArrayIhED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  invoke void @_ZN8DataHash6ResultEP9HashValue(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %10)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %i.ca, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %_ZN5ArrayIhED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %.split.us

_ZN5ArrayIhED2Ev.exit:                            ; preds = %bb.ao, %bb.am
  call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @free(ptr noundef nonnull %malloc.i) #13
  ret void

.split.us:                                        ; preds = %.split.us.split.us, %.split.us.split, %.split.split.us, %.split.split, %bb.ai, %bb.ap, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.z ], [ %i.cb, %bb.ap ], [ %i.by, %bb.ai ], [ %i.aa, %.split.us.split.us ], [ %i.an, %.split.us.split ], [ %i.bl, %.split.split ], [ %i.ba, %.split.split.us ]
  call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  br label %bb.aq

bb.aq:                                            ; preds = %.split.us, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.split.us ], [ %i.bi, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aq ], [ %i.bh, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br i1 %i.n, label %_ZN5ArrayIhED2Ev.exit58, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %malloc.i) #13
  br label %_ZN5ArrayIhED2Ev.exit58

_ZN5ArrayIhED2Ev.exit58:                          ; preds = %bb.ar, %bb.as
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN8DataHashC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z4Waitv() local_unnamed_addr #2

declare void @_ZN8DataHash6UpdateEPKvm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN8DataHash8GetCRC32Ev(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN8DataHash6ResultEP9HashValue(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN8DataHashD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z10RenameFilePKwS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca [2048 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.d = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 2048) ; 0 uses
  %i.e = call i32 @rename(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %i.f = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.f
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z7DelFilePKw(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.c = call i32 @remove(ptr noundef nonnull %i.a) #13
  %i.d = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z6DelDirPKw(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.c = call i32 @rmdir(ptr noundef nonnull %i.a) #13
  %i.d = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z11LinksToDirsPKwS0_RNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef %0, ptr nofree noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca [2048 x i32], align 16            ; 12 uses
  %3 = alloca %struct.FindData, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = tail call i64 @wcslen(ptr noundef %0) #15
  %i.d = icmp ugt i64 %i.c, 2047
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.b, ptr noundef %0, i64 noundef 2048)
  %i.e = call i64 @wcslen(ptr noundef %1) #15     ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @wcsncmp(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %i.e) #15
  %.not46 = icmp eq i32 %i.f, 0
  %spec.store.select = select i1 %.not46, i64 %i.e, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.036 = phi i64 [ %spec.store.select, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.b, align 16, !tbaa !10  ; 2 uses
  %.not4755 = icmp eq i32 %i.h, 0
  br i1 %.not4755, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %4 = phi i32 [ %i.s, %bb.f ], [ %i.h, %bb.d ]   ; 2 uses
  %i.i = phi i64 [ %6, %bb.f ], [ 0, %bb.d ]      ; 3 uses
  %.03557 = phi i32 [ %5, %bb.f ], [ 0, %bb.d ]
  %.13756 = phi i64 [ %.2, %bb.f ], [ %.036, %bb.d ] ; 4 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !31
  %i.k = icmp ugt i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %2, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
  %i.o = icmp eq i32 %4, %i.n
  br i1 %i.o, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f, %.lr.ph, %bb.d
  %.137.lcssa = phi i64 [ %.036, %bb.d ], [ %.13756, %.lr.ph ], [ %.2, %bb.f ], [ %.13756, %bb.e ] ; 2 uses
  %.not48 = icmp eq i64 %.137.lcssa, 0
  br i1 %.not48, label %.loopexit, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %4)
  %i.q = call i64 @llvm.umax.i64(i64 %.13756, i64 %i.i)
  %.2 = select i1 %i.p, i64 %i.q, i64 %.13756     ; 2 uses
  %5 = add i32 %.03557, 1                         ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %6
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10   ; 2 uses
  %.not47 = icmp eq i32 %i.s, 0
  br i1 %.not47, label %.critedge, label %.lr.ph, !llvm.loop !26

bb.g:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.137.lcssa
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.034 = phi ptr [ %i.t, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  %i.u = load i32, ptr %.034, align 4, !tbaa !10
  %i.v = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %.034, i64 4
  br i1 %i.v, label %bb.h, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %bb.h, %.critedge
  %.1 = phi ptr [ %i.b, %.critedge ], [ %.034, %bb.h ] ; 2 uses
  %i.x = call i64 @wcslen(ptr noundef nonnull %i.b) #15
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x
  %.062 = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %.not49.not63 = icmp ugt ptr %.062, %.1
  br i1 %.not49.not63, label %.lr.ph65, label %.critedge54

.lr.ph65:                                         ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8208
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8205
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph65, %bb.m
  %.064 = phi ptr [ %.062, %.lr.ph65 ], [ %.0, %bb.m ] ; 3 uses
  %i.ab = load i32, ptr %.064, align 4, !tbaa !10
  %i.ac = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.ab)
  br i1 %i.ac, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %.064, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.ad = call noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i1 noundef zeroext true)
  %i.ae = load i8, ptr %i.aa, align 1, !range !33
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.k, label %.critedge52

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ag = call noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 2048) ; 0 uses
  %i.ah = call i32 @remove(ptr noundef nonnull %i.a) #13
  %i.ai = icmp eq i32 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.ai, label %.critedge52, label %bb.l

.critedge52:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.n

bb.m:                                             ; preds = %.critedge52, %bb.i
  %.0 = getelementptr inbounds i8, ptr %.064, i64 -4 ; 2 uses
  %.not49.not = icmp ugt ptr %.0, %.1
  br i1 %.not49.not, label %bb.i, label %.critedge54, !llvm.loop !28

.critedge54:                                      ; preds = %bb.m, %.loopexit
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !31
  %i.ak = call noundef i64 @wcslen(ptr noundef %0) #15
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.aj, ptr noundef %0, i64 noundef %i.ak) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge54, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.l ], [ true, %.critedge54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i1 %.5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"wchar_t", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"long", !4, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 wchar_t", !13, i64 0}
!15 = distinct !{!15, !11}
!16 = !{!4, !4, i64 0}
!17 = distinct !{!17, !11}
!18 = !{!"_ZTS7RarTime", !12, i64 0}
!19 = !{!18, !12, i64 0}
!20 = !{!"vtable pointer", !3, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!14, !14, i64 0}
!23 = !{!"_ZTS14UIMESSAGE_CODE", !4, i64 0}
!24 = !{!"_ZTS10uiMsgStore", !4, i64 0, !4, i64 64, !5, i64 96, !5, i64 100, !23, i64 104}
!25 = !{!24, !23, i64 104}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !14, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !29, i64 0, !12, i64 8, !4, i64 16}
!31 = !{!30, !12, i64 8}
!32 = !{!30, !14, i64 0}
!33 = !{i8 0, i8 2}
end_hunk_0
