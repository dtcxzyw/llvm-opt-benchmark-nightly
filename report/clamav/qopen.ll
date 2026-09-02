Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/qopen?download=true
inline.NumInlined: 27
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9QuickOpen8ReadNextEv:bb.a
  %.pre10.i.i = load i64, ptr %i.n, align 8, !tbaa !82
  br label %bb.n

bb.n:                                             ; preds = %.noexc16, %bb.l
  %i.r = phi i64 [ %.pre10.i.i, %.noexc16 ], [ %i.e, %bb.l ]
  %i.s = phi i64 [ %.pre.i.i, %.noexc16 ], [ %i.l, %bb.l ] ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add i64 %i.s, 32
  %i.v = add i64 %i.u, %i.t
  %..i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 %i.v) ; 2 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.x = call ptr @realloc(ptr noundef %i.w, i64 noundef %..i.i) #21 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.o, label %_ZN5ArrayIhE3AddEm.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIhE3AddEm.exit.i unwind label %bb.j

_ZN5ArrayIhE3AddEm.exit.i:                        ; preds = %bb.o, %bb.n
  store ptr %i.x, ptr %i.j, align 8, !tbaa !25
  store i64 %..i.i, ptr %i.k, align 8, !tbaa !97
  br label %_ZN5ArrayIhE5AllocEm.exit

_ZN5ArrayIhE5AllocEm.exit:                        ; preds = %._ZN5ArrayIhE5AllocEm.exit_crit_edge, %_ZN5ArrayIhE3AddEm.exit.i
  %i.z = phi ptr [ %.pre, %._ZN5ArrayIhE5AllocEm.exit_crit_edge ], [ %i.x, %_ZN5ArrayIhE3AddEm.exit.i ]
  %i.aa = invoke noundef i64 @_ZN7RawRead4GetBEPvm(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.z, i64 noundef %i.e)
          to label %bb.p unwind label %bb.j       ; 0 uses

bb.p:                                             ; preds = %_ZN5ArrayIhE5AllocEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !75
  %i.ad = sub i64 %i.ac, %i.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2656
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !79
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g, %bb.b
  %.111 = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ true, %bb.p ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.af, null
  br i1 %.not.i.i18, label %_ZN7RawReadD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.af) #17
  br label %_ZN7RawReadD2Ev.exit

_ZN7RawReadD2Ev.exit:                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i1 %.111

bb.s:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.g, %bb.h ], [ %i.i, %bb.j ], [ %i.h, %bb.i ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i19, label %_ZN7RawReadD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ag) #17
  br label %_ZN7RawReadD2Ev.exit20

_ZN7RawReadD2Ev.exit20:                           ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN4File4SeekEli(ptr noundef nonnull align 8 dereferenceable(8256), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare noundef i32 @_ZN4File4ReadEPvm(ptr noundef nonnull align 8 dereferenceable(8256), ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9QuickOpen4SeekEli(ptr noundef nonnull align 8 dereferenceable(2673) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 0                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %1, %i.f
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %1, %i.i
  %or.cond15 = select i1 %or.cond, i1 %i.j, i1 false
  br i1 %or.cond15, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.l = load i64, ptr %i.k, align 8, !tbaa !75
  tail call void @_ZN9QuickOpen4LoadEm(ptr noundef nonnull align 8 dereferenceable(2673) %0, i64 noundef %i.l)
  br label %.thread17

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.thread17, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %2, 1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %i.f, %1
  br label %.thread17

.thread17:                                        ; preds = %.thread, %bb.c, %bb.e
  %storemerge = phi i64 [ %i.n, %bb.e ], [ %1, %bb.c ], [ %1, %.thread ]
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2672
  store i8 1, ptr %i.o, align 8, !tbaa !36
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  store i8 1, ptr %i.p, align 8, !tbaa !36
  %i.q = icmp eq i32 %2, 2
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @_ZN4File4SeekEli(ptr noundef nonnull align 8 dereferenceable(8256) %i.r, i64 noundef %1, i32 noundef 2)
  %i.s = load ptr, ptr %0, align 8, !tbaa !20
  %i.t = tail call noundef i64 @_ZN4File4TellEv(ptr noundef nonnull align 8 dereferenceable(8256) %i.s)
  store i64 %i.t, ptr %i.e, align 8, !tbaa !35
  store i8 0, ptr %i.p, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %.thread17, %bb.f, %bb.g, %bb.a
  ret i1 %i.c
}

declare noundef i64 @_ZN4File4TellEv(ptr noundef nonnull align 8 dereferenceable(8256)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN9QuickOpen4TellEPl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2673) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  store i64 %i.e, ptr %1, align 8, !tbaa !81
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

declare void @_ZN9CryptData12DecryptBlockEPhm(ptr noundef nonnull align 8 dereferenceable(2516), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9QuickOpen7ReadRawER7RawRead(ptr noundef nonnull align 8 dereferenceable(2673) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2616 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 4 uses
  %i.c = add i64 %i.b, -65281
  %i.d = icmp ult i64 %i.c, 256
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = sub i64 %i.f, %i.b                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.j, i64 %i.g, i1 false)
  store i64 0, ptr %i.a, align 8, !tbaa !100
  store i64 %i.g, ptr %i.e, align 8, !tbaa !80
  %i.k = tail call noundef i32 @_ZN9QuickOpen10ReadBufferEv(ptr noundef nonnull align 8 dereferenceable(2673) %0) ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.m = add i64 %i.l, 7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !80
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  tail call void @_ZN7RawRead4ReadEPhm(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.s, i64 noundef 7)
  %i.t = load i64, ptr %i.a, align 8, !tbaa !100
  %i.u = add i64 %i.t, 7
  store i64 %i.u, ptr %i.a, align 8, !tbaa !100
  %i.v = tail call noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.w = tail call noundef i32 @_ZN7RawRead8GetVSizeEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 4) ; 2 uses
  %i.x = tail call noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %2 = zext i32 %i.w to i64
  %.neg = add nuw nsw i64 %2, 4294967293
  %3 = add i64 %.neg, %i.x
  %4 = trunc i64 %3 to i32                        ; 3 uses
  %i.y = icmp slt i32 %4, 0
  %i.z = icmp eq i32 %i.w, 0
  %or.cond = or i1 %i.z, %i.y
  %i.aa = icmp eq i64 %i.x, 0
  %or.cond3 = or i1 %i.aa, %or.cond
  br i1 %or.cond3, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not36 = icmp eq i32 %4, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i8 0, ptr %i.ab, align 8, !tbaa !24
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.033 = phi i32 [ %i.am, %bb.f ], [ %4, %.preheader ] ; 2 uses
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !80
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = zext nneg i32 %.033 to i64
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 3 uses
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  tail call void @_ZN7RawRead4ReadEPhm(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.ai, i64 noundef %i.ag)
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !100
  %i.ak = add i64 %i.aj, %i.ag
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !100
  %i.al = trunc nuw nsw i64 %i.ag to i32
  %i.am = sub nuw nsw i32 %.033, %i.al            ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.an = tail call noundef i32 @_ZN9QuickOpen10ReadBufferEv(ptr noundef nonnull align 8 dereferenceable(2673) %0)
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %.lr.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.ap = tail call noundef i32 @_ZN7RawRead8GetCRC50Ev(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.aq = icmp eq i32 %i.v, %i.ap
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.c
  %.3 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ %i.aq, %._crit_edge ], [ false, %bb.f ]
  ret i1 %.3
}

declare void @_ZN7RawRead4ReadEPhm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN7RawRead8GetVSizeEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN7RawRead8GetCRC50Ev(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN7RawReadC1EP4File(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #1

declare noundef i64 @_ZN7RawRead4GetBEPvm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25)) unnamed_addr #10

declare void @_Z9cleandataPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14), ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !29}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7Archive", !9, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"p1 _ZTS13QuickOpenItem", !9, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTS12CRYPT_METHOD", !5, i64 0}
!16 = !{!"_ZTS8Rijndael", !11, i64 0, !6, i64 4, !5, i64 8, !5, i64 24}
!17 = !{!"_ZTS9CryptData", !5, i64 0, !6, i64 320, !5, i64 328, !6, i64 936, !15, i64 940, !16, i64 944, !5, i64 1208, !5, i64 2232, !5, i64 2488, !5, i64 2504, !5, i64 2508}
!18 = !{!"_ZTS5ArrayIhE", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!19 = !{!"_ZTS9QuickOpen", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !14, i64 40, !17, i64 48, !11, i64 2568, !14, i64 2576, !14, i64 2584, !14, i64 2592, !14, i64 2600, !14, i64 2608, !14, i64 2616, !18, i64 2624, !14, i64 2656, !14, i64 2664, !11, i64 2672}
!20 = !{!19, !10, i64 0}
!21 = !{!19, !11, i64 8}
!22 = !{!19, !13, i64 32}
!23 = !{!19, !14, i64 40}
!24 = !{!19, !11, i64 2568}
!25 = !{!18, !13, i64 0}
!26 = !{!"_ZTS13QuickOpenItem", !13, i64 0, !14, i64 8, !14, i64 16, !12, i64 24}
!27 = !{!26, !12, i64 24}
!28 = !{!26, !13, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!19, !12, i64 16}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"vtable pointer", !4, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!19, !14, i64 2664}
!36 = !{!19, !11, i64 2672}
!37 = !{!"_ZTS15FILE_HANDLETYPE", !5, i64 0}
!38 = !{!"_ZTS20FILE_READ_ERROR_MODE", !5, i64 0}
!39 = !{!"_ZTS14FILE_ERRORTYPE", !5, i64 0}
!40 = !{!"_ZTS4File", !14, i64 8, !11, i64 16, !37, i64 20, !11, i64 24, !11, i64 25, !38, i64 28, !11, i64 32, !11, i64 33, !11, i64 34, !11, i64 35, !11, i64 36, !14, i64 40, !11, i64 48, !5, i64 52, !39, i64 8244, !13, i64 8248}
!41 = !{!"p1 _ZTS4File", !9, i64 0}
!42 = !{!"p1 _ZTS6CmdAdd", !9, i64 0}
!43 = !{!"p1 _ZTS10FileHeader", !9, i64 0}
!44 = !{!"p1 long", !9, i64 0}
!45 = !{!"p1 _ZTS9CryptData", !9, i64 0}
!46 = !{!"wchar_t", !5, i64 0}
!47 = !{!"_ZTS9HASH_TYPE", !5, i64 0}
!48 = !{!"p1 _ZTS14blake2sp_state", !9, i64 0}
!49 = !{!"_ZTS8DataHash", !47, i64 0, !6, i64 4, !48, i64 8}
!50 = !{!"_ZTS11ComprDataIO", !11, i64 0, !14, i64 8, !13, i64 16, !11, i64 24, !14, i64 32, !13, i64 40, !14, i64 48, !13, i64 56, !14, i64 64, !14, i64 72, !11, i64 80, !11, i64 81, !11, i64 82, !11, i64 83, !41, i64 88, !41, i64 96, !42, i64 104, !43, i64 112, !44, i64 120, !45, i64 128, !45, i64 136, !6, i64 144, !46, i64 148, !11, i64 152, !11, i64 153, !11, i64 154, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !49, i64 216, !49, i64 232, !49, i64 248, !11, i64 264, !11, i64 265}
!51 = !{!"p1 _ZTS11CommandData", !9, i64 0}
!52 = !{!"_ZTS7RarTime", !14, i64 0}
!53 = !{!"_ZTS11HEADER_TYPE", !5, i64 0}
!54 = !{!"_ZTS9BaseBlock", !6, i64 0, !53, i64 4, !6, i64 8, !6, i64 12, !11, i64 16}
!55 = !{!"_ZTS10MarkHeader", !5, i64 0, !6, i64 8}
!56 = !{!"short", !5, i64 0}
!57 = !{!"p1 wchar_t", !9, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !57, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !58, i64 0, !14, i64 8, !5, i64 16}
!60 = !{!"_ZTS10MainHeader", !54, i64 0, !56, i64 20, !6, i64 24, !11, i64 28, !11, i64 29, !11, i64 30, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !59, i64 72, !52, i64 104}
!61 = !{!"_ZTS11CryptHeader", !54, i64 0, !11, i64 20, !6, i64 24, !5, i64 28, !5, i64 44}
!62 = !{!"_ZTS11BlockHeader", !54, i64 0, !6, i64 20}
!63 = !{!"_ZTS9HashValue", !47, i64 0, !5, i64 4}
!64 = !{!"_ZTS16HOST_SYSTEM_TYPE", !5, i64 0}
!65 = !{!"_ZTS20FILE_SYSTEM_REDIRECT", !5, i64 0}
!66 = !{!"_ZTS10FileHeader", !62, i64 0, !5, i64 24, !6, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !18, i64 8232, !52, i64 8264, !52, i64 8272, !52, i64 8280, !14, i64 8288, !14, i64 8296, !14, i64 8304, !63, i64 8312, !6, i64 8348, !11, i64 8352, !11, i64 8353, !11, i64 8354, !11, i64 8355, !15, i64 8356, !11, i64 8360, !5, i64 8361, !5, i64 8377, !11, i64 8393, !5, i64 8394, !11, i64 8402, !5, i64 8403, !6, i64 8436, !11, i64 8440, !11, i64 8441, !11, i64 8442, !11, i64 8443, !14, i64 8448, !11, i64 8456, !11, i64 8457, !11, i64 8458, !64, i64 8460, !65, i64 8464, !5, i64 8468, !11, i64 16660, !11, i64 16661, !11, i64 16662, !11, i64 16663, !5, i64 16664, !5, i64 16920, !6, i64 17176, !6, i64 17180}
!67 = !{!"_ZTS12EndArcHeader", !54, i64 0, !6, i64 20, !6, i64 24, !11, i64 28, !11, i64 29, !11, i64 30, !11, i64 31}
!68 = !{!"_ZTS14SubBlockHeader", !62, i64 0, !56, i64 24, !5, i64 26}
!69 = !{!"_ZTS13CommentHeader", !54, i64 0, !56, i64 20, !5, i64 22, !5, i64 23, !56, i64 24}
!70 = !{!"_ZTS13ProtectHeader", !62, i64 0, !5, i64 24, !56, i64 26, !6, i64 28, !5, i64 32}
!71 = !{!"_ZTS8EAHeader", !68, i64 0, !6, i64 28, !5, i64 32, !5, i64 33, !6, i64 36}
!72 = !{!"_ZTS12StreamHeader", !68, i64 0, !6, i64 28, !5, i64 32, !5, i64 33, !6, i64 36, !56, i64 40, !5, i64 42}
!73 = !{!"_ZTS9RARFORMAT", !5, i64 0}
!74 = !{!"_ZTS7Archive", !40, i64 0, !17, i64 8256, !50, i64 10776, !11, i64 11048, !51, i64 11056, !52, i64 11064, !6, i64 11072, !53, i64 11076, !11, i64 11080, !19, i64 11088, !11, i64 13768, !54, i64 13772, !55, i64 13792, !60, i64 13808, !61, i64 13920, !66, i64 13976, !67, i64 31160, !68, i64 31192, !66, i64 31224, !69, i64 48408, !70, i64 48436, !71, i64 48476, !72, i64 48516, !14, i64 48824, !14, i64 48832, !73, i64 48840, !11, i64 48844, !11, i64 48845, !11, i64 48846, !11, i64 48847, !11, i64 48848, !11, i64 48849, !11, i64 48850, !11, i64 48851, !11, i64 48852, !14, i64 48856, !11, i64 48864, !11, i64 48865, !5, i64 48866, !11, i64 48882, !6, i64 48884, !14, i64 48888, !14, i64 48896, !14, i64 48904, !11, i64 48912, !5, i64 48916}
!75 = !{!19, !14, i64 2576}
!76 = !{!19, !14, i64 2584}
!77 = !{!19, !14, i64 2592}
!78 = !{!74, !11, i64 39579}
!79 = !{!19, !14, i64 2656}
!80 = !{!19, !14, i64 2608}
!81 = !{!14, !14, i64 0}
!82 = !{!18, !14, i64 8}
!83 = !{!74, !11, i64 13768}
!84 = !{!74, !53, i64 11076}
!85 = !{!74, !14, i64 48824}
!86 = !{!74, !14, i64 39520}
!87 = !{!74, !51, i64 11056}
!88 = !{!"_ZTSNSt12_Vector_baseIwSaIwEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIwSaIwEE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIwSaIwEE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIwSaIwEE", !90, i64 0}
!92 = !{!"_ZTS11SecPassword", !91, i64 0, !11, i64 24}
!93 = !{!92, !11, i64 24}
!94 = !{!74, !6, i64 39660}
!95 = !{!19, !14, i64 2600}
!96 = distinct !{!96, !29}
!97 = !{!18, !14, i64 16}
!98 = !{!18, !14, i64 24}
!99 = distinct !{!99, !29}
end_hunk_0
