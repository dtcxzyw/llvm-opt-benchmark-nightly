inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9RSCoder1619InvertDecoderMatrixEv:bb.a
  %i.fw = phi i32 [ %.pre123, %.lr.ph89 ], [ %i.go, %bb.j ]
  %indvars.iv116 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next117, %bb.j ] ; 5 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv116
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !17
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !17
  %i.gc = add i32 %i.fw, %i.gb
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !17
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv116 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !17
  %i.gi = xor i32 %i.gh, %i.gf
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !17
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv116
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !17
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !17
  %i.go = load i32, ptr %i.fv, align 4, !tbaa !17 ; 2 uses
  %i.gp = add i32 %i.go, %i.gn
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !17
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv116 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !17
  %i.gv = xor i32 %i.gu, %i.gs
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !17
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.gw = load i32, ptr %i.c, align 4, !tbaa !21  ; 3 uses
  %i.gx = zext i32 %i.gw to i64
  %i.gy = icmp samesign ult i64 %indvars.iv.next117, %i.gx
  br i1 %i.gy, label %bb.j, label %.loopexit.loopexit, !llvm.loop !53

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre124 = load i32, ptr %i.a, align 4, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.i, %.lr.ph91
  %i.gz = phi i32 [ %i.gw, %.loopexit.loopexit ], [ %i.fj, %bb.i ], [ %i.fj, %.lr.ph91 ] ; 2 uses
  %i.ha = phi i32 [ %.pre124, %.loopexit.loopexit ], [ %i.fk, %bb.i ], [ %i.fk, %.lr.ph91 ] ; 3 uses
  %i.hb = phi i32 [ %i.gw, %.loopexit.loopexit ], [ 0, %bb.i ], [ %i.fl, %.lr.ph91 ]
  %i.hc = add nuw i32 %.06890, 1                  ; 2 uses
  %i.hd = icmp ult i32 %i.hc, %i.ha
  br i1 %i.hd, label %.lr.ph91, label %._crit_edge, !llvm.loop !54

.critedge._crit_edge:                             ; preds = %._crit_edge, %.critedge
  %i.he = phi i32 [ %i.as, %.critedge ], [ %i.fe, %._crit_edge ]
  %i.hf = phi i32 [ %i.at, %.critedge ], [ %i.ff, %._crit_edge ]
  %i.hg = mul i32 %i.he, %i.hf
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %.critedge._crit_edge
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph97, %bb.k
  %indvars.iv119 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next120, %bb.k ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv119
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !17
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv119
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !17
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.hn = load i32, ptr %i.a, align 4, !tbaa !23
  %i.ho = load i32, ptr %i.c, align 4, !tbaa !21
  %i.hp = mul i32 %i.ho, %i.hn
  %i.hq = zext i32 %i.hp to i64
  %i.hr = icmp samesign ult i64 %indvars.iv.next120, %i.hq
  br i1 %i.hr, label %bb.k, label %._crit_edge98, !llvm.loop !55

._crit_edge98:                                    ; preds = %bb.k, %.preheader79, %.critedge._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN9RSCoder1617MakeEncoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge12, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.c, align 4, !tbaa !21   ; 2 uses
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %._crit_edge12, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.h = phi i32 [ %i.l, %._crit_edge ], [ %i.b, %.preheader.lr.ph ]
  %i.i = phi i32 [ %i.m, %._crit_edge ], [ %i.g, %.preheader.lr.ph ] ; 2 uses
  %.0811 = phi i32 [ %i.n, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = load ptr, ptr %0, align 8
  %i.k = load ptr, ptr %i.d, align 8
  br label %.lr.ph

._crit_edge12:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN9RSCoder165gfInvEj.exit
  %.pre = load i32, ptr %i.a, align 8, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.l = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.h, %.preheader ] ; 2 uses
  %i.m = phi i32 [ %i.ag, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.n = add nuw i32 %.0811, 1                    ; 2 uses
  %i.o = icmp ult i32 %i.n, %i.l
  br i1 %i.o, label %.preheader, label %._crit_edge12, !llvm.loop !37

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9RSCoder165gfInvEj.exit
  %i.p = phi i32 [ %i.ag, %_ZN9RSCoder165gfInvEj.exit ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.010 = phi i32 [ %i.af, %_ZN9RSCoder165gfInvEj.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.q = add i32 %i.p, %.0811                     ; 2 uses
  %i.r = icmp eq i32 %.010, %i.q
  br i1 %i.r, label %_ZN9RSCoder165gfInvEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = xor i32 %i.q, %.010
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  %i.w = sub i32 65535, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit

_ZN9RSCoder165gfInvEj.exit:                       ; preds = %.lr.ph, %bb.b
  %i.aa = phi i32 [ %i.z, %bb.b ], [ 0, %.lr.ph ]
  %i.ab = mul i32 %i.p, %.0811
  %i.ac = add i32 %i.ab, %.010
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad
  store i32 %i.aa, ptr %i.ae, align 4, !tbaa !17
  %i.af = add nuw i32 %.010, 1                    ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !21  ; 3 uses
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !56
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN9RSCoder169UpdateECCEjjPKhPhm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %5, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57
  %.not = icmp eq i64 %i.d, %5
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = icmp ugt i64 %5, 4611686018427387903
  %i.i = shl nuw i64 %5, 2
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #9
  store ptr %i.k, ptr %i.e, align 8, !tbaa !18
  store i64 %5, ptr %i.c, align 8, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.not52 = icmp eq i64 %5, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %epil.iter = phi i64 [ 0, %.lr.ph ], [ %epil.iter.next, %bb.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %epil.iter
  %i.q = load i16, ptr %i.p, align 2, !tbaa !58
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %epil.iter
  store i32 %i.t, ptr %i.u, align 4, !tbaa !17
  %epil.iter.next = add i64 %epil.iter, 2         ; 2 uses
  %6 = icmp ult i64 %epil.iter.next, %5
  br i1 %6, label %bb.i, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  %i.ab = mul i32 %i.aa, %2
  %i.ac = add i32 %i.ab, %1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17
  %.not53 = icmp eq i64 %5, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %.loopexit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph51, %bb.j
  %niter62 = phi i64 [ 0, %.lr.ph51 ], [ %niter62.next.1, %bb.j ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %niter62
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17
  %i.ao = add i32 %i.an, %i.ai
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 %niter62 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !58
  %i.au = trunc i32 %i.ar to i16
  %i.av = xor i16 %i.at, %i.au
  store i16 %i.av, ptr %i.as, align 2, !tbaa !58
  %niter62.next.1 = add i64 %niter62, 2           ; 2 uses
  %7 = icmp ult i64 %niter62.next.1, %5
  br i1 %7, label %bb.j, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.j, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 16}
!9 = !{!"_ZTS9RSCoder16", !10, i64 0, !10, i64 8, !12, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !13, i64 32, !10, i64 40, !10, i64 48, !14, i64 56}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"bool", !6, i64 0}
!13 = !{!"p1 bool", !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!9, !10, i64 0}
!16 = !{!9, !10, i64 8}
!17 = !{!5, !5, i64 0}
!18 = !{!9, !10, i64 48}
!19 = !{!9, !10, i64 40}
!20 = !{!9, !13, i64 32}
!21 = !{!9, !5, i64 20}
!22 = !{!9, !5, i64 24}
!23 = !{!9, !5, i64 28}
!24 = !{!12, !12, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = distinct !{!27, !28, !29, !30}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28, !30, !29}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28, !35}
!35 = !{!"llvm.loop.peeled.count", i32 1}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28, !38}
!38 = !{!"llvm.loop.unswitch.partial.disable"}
!39 = distinct !{!39, !28, !35}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !28, !29, !30}
!49 = distinct !{!49, !28, !29}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
!53 = distinct !{!53, !28}
!54 = distinct !{!54, !28}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !28}
!57 = !{!9, !14, i64 56}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !6, i64 0}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, !28}
end_hunk_0
