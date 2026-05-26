inline.NumInlined: 40
inline.NumDeleted: 13
begin_hunk_0_@_ZN8NArchive3N7z8CHandler10FillPopIDsEv:bb.a
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i124, 1 ; 2 uses
  %exitcond.not.i126 = icmp eq i64 %indvars.iv.next.i125, %wide.trip.count.i123
  br i1 %exitcond.not.i126, label %.loopexit.i121, label %bb.av, !llvm.loop !25

.loopexit.i121:                                   ; preds = %bb.ax, %bb.aw, %bb.au
  invoke void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp

bb.ay:                                            ; preds = %.loopexit.i121
  %i.iq = load ptr, ptr %i.hi, align 8, !tbaa !15 ; 2 uses
  store i64 6, ptr %i.iq, align 8, !tbaa !16
  %i.ir = load i32, ptr %i.gu, align 4, !tbaa !14 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph.i132, label %.loopexit.i131

.lr.ph.i132:                                      ; preds = %bb.ay
  %wide.trip.count.i133 = zext nneg i32 %i.ir to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %.lr.ph.i132
  %indvars.iv.i134 = phi i64 [ 0, %.lr.ph.i132 ], [ %indvars.iv.next.i135, %bb.bb ] ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i134
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !16
  %i.iv = icmp eq i64 %i.iu, 9
  br i1 %i.iv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.iw = trunc nuw nsw i64 %indvars.iv.i134 to i32
  %i.ix = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  invoke void %i.iz(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.iw, i32 noundef 1)
          to label %.loopexit.i131 unwind label %.loopexit.split-lp, !inline_history !24

bb.bb:                                            ; preds = %bb.az
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i134, 1 ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %indvars.iv.next.i135, %wide.trip.count.i133
  br i1 %exitcond.not.i136, label %.loopexit.i131, label %bb.az, !llvm.loop !25

.loopexit.i131:                                   ; preds = %bb.bb, %bb.ba, %bb.ay
  invoke void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 0)
          to label %bb.bc unwind label %.loopexit.split-lp

bb.bc:                                            ; preds = %.loopexit.i131
  %i.ja = load ptr, ptr %i.hi, align 8, !tbaa !15 ; 2 uses
  store i64 9, ptr %i.ja, align 8, !tbaa !16
  %i.jb = load i32, ptr %i.gu, align 4, !tbaa !14 ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph.i142, label %.loopexit.i141

.lr.ph.i142:                                      ; preds = %bb.bc
  %wide.trip.count.i143 = zext nneg i32 %i.jb to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %.lr.ph.i142
  %indvars.iv.i144 = phi i64 [ 0, %.lr.ph.i142 ], [ %indvars.iv.next.i145, %bb.bf ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.i144
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !16
  %i.jf = icmp eq i64 %i.je, 17
  br i1 %i.jf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jg = trunc nuw nsw i64 %indvars.iv.i144 to i32
  %i.jh = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  invoke void %i.jj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.jg, i32 noundef 1)
          to label %.loopexit.i141 unwind label %.loopexit.split-lp, !inline_history !24

bb.bf:                                            ; preds = %bb.bd
  %indvars.iv.next.i145 = add nuw nsw i64 %indvars.iv.i144, 1 ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %indvars.iv.next.i145, %wide.trip.count.i143
  br i1 %exitcond.not.i146, label %.loopexit.i141, label %bb.bd, !llvm.loop !25

.loopexit.i141:                                   ; preds = %bb.bf, %bb.be, %bb.bc
  invoke void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 0)
          to label %bb.bg unwind label %.loopexit.split-lp

bb.bg:                                            ; preds = %.loopexit.i141
  %i.jk = load ptr, ptr %i.hi, align 8, !tbaa !15
  store i64 17, ptr %i.jk, align 8, !tbaa !16
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void

.loopexit:                                        ; preds = %bb.an
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.e, %bb.h, %bb.k, %.noexc17, %bb.n, %.noexc25, %bb.q, %.noexc34, %bb.t, %.noexc43, %bb.w, %.noexc52, %bb.z, %.noexc61, %bb.ac, %.noexc70, %bb.af, %.noexc79, %bb.ai, %.noexc88, %bb.al, %.noexc97, %_ZN8NArchive3N7zL11CopyOneItemER13CRecordVectorIyES3_j.exit99, %_ZN13CRecordVectorIyEpLERKS0_.exit, %bb.ao, %bb.ap, %bb.as, %.loopexit.i112, %bb.aw, %.loopexit.i121, %bb.ba, %.loopexit.i131, %bb.be, %.loopexit.i141
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %common.resume
}

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z8CHandler21GetNumberOfPropertiesEPj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(912) %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  store i32 %i.b, ptr %1, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN8NArchive3N7z8CHandler15GetPropertyInfoEjPPwPjPt(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(912) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.b, label %_ZN8NArchive3N7zL13FindPropInMapEy.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 13 uses
  %i.h = load i64, ptr @_ZN8NArchive3N7z8kPropMapE, align 16, !tbaa !26
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 24), align 8, !tbaa !26
  %i.k = icmp eq i64 %i.j, %i.g
  br i1 %i.k, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 48), align 16, !tbaa !26
  %i.m = icmp eq i64 %i.l, %i.g
  br i1 %i.m, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 72), align 8, !tbaa !26
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 96), align 16, !tbaa !26
  %i.q = icmp eq i64 %i.p, %i.g
  br i1 %i.q, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 120), align 8, !tbaa !26
  %i.s = icmp eq i64 %i.r, %i.g
  br i1 %i.s, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 144), align 16, !tbaa !26
  %i.u = icmp eq i64 %i.t, %i.g
  br i1 %i.u, label %select.unfold, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 168), align 8, !tbaa !26
  %i.w = icmp eq i64 %i.v, %i.g
  br i1 %i.w, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 192), align 16, !tbaa !26
  %i.y = icmp eq i64 %i.x, %i.g
  br i1 %i.y, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 216), align 8, !tbaa !26
  %i.aa = icmp eq i64 %i.z, %i.g
  br i1 %i.aa, label %select.unfold, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 240), align 16, !tbaa !26
  %i.ac = icmp eq i64 %i.ab, %i.g
  br i1 %i.ac, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 264), align 8, !tbaa !26
  %i.ae = icmp eq i64 %i.ad, %i.g
  br i1 %i.ae, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z8kPropMapE, i64 288), align 16, !tbaa !26
  %i.ag = icmp eq i64 %i.af, %i.g
  %cond.fr = freeze i1 %i.ag
  br i1 %cond.fr, label %select.unfold, label %_ZN8NArchive3N7zL13FindPropInMapEy.exit

select.unfold:                                    ; preds = %bb.n, %bb.b, %bb.j, %bb.c, %bb.d, %bb.i, %bb.e, %bb.m, %bb.f, %bb.k, %bb.g, %bb.l, %bb.h
  %.ph = phi i64 [ 0, %bb.b ], [ 6, %bb.h ], [ 10, %bb.l ], [ 5, %bb.g ], [ 9, %bb.k ], [ 4, %bb.f ], [ 11, %bb.m ], [ 3, %bb.e ], [ 7, %bb.i ], [ 2, %bb.d ], [ 1, %bb.c ], [ 8, %bb.j ], [ 12, %bb.n ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr @_ZN8NArchive3N7z8kPropMapE, i64 %.ph ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !31
  store i32 %i.aj, ptr %3, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !32
  store i16 %i.al, ptr %4, align 2, !tbaa !33
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %_ZN8NArchive3N7zL13FindPropInMapEy.exit

_ZN8NArchive3N7zL13FindPropInMapEy.exit:          ; preds = %bb.n, %select.unfold, %bb.a
  %.1 = phi i32 [ -2147024809, %bb.a ], [ 0, %select.unfold ], [ -2147024809, %bb.n ]
  ret i32 %.1
}

declare void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIyED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #10
  ret void
}

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 24}
!9 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !10, i64 16, !11, i64 24}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !7, i64 0}
!14 = !{!9, !5, i64 12}
!15 = !{!9, !10, i64 16}
!16 = !{!17, !17, i64 0}
!17 = !{!"long long", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{null}
!21 = distinct !{!21, !19}
!22 = distinct !{null}
!23 = distinct !{!23, !19}
!24 = distinct !{null}
!25 = distinct !{!25, !19}
!26 = !{!27, !17, i64 0}
!27 = !{!"_ZTSN8NArchive3N7z8CPropMapE", !17, i64 0, !28, i64 8}
!28 = !{!"_ZTS14tagSTATPROPSTG", !29, i64 0, !5, i64 8, !30, i64 12}
!29 = !{!"p1 wchar_t", !10, i64 0}
!30 = !{!"short", !6, i64 0}
!31 = !{!28, !5, i64 8}
!32 = !{!28, !30, i64 12}
!33 = !{!30, !30, i64 0}
!34 = !{!29, !29, i64 0}
end_hunk_0
