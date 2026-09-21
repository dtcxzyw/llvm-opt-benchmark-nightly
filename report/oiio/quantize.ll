Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/quantize?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@GifQuantizeBuffer:bb.a
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i8 %i.ig, ptr %i.ih, align 4, !tbaa !7
  %i.ii = load <4 x i8>, ptr %i.ej, align 16, !tbaa !7
  store <4 x i8> %i.ii, ptr %i.hw, align 16, !tbaa !7
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ej, i64 5
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !7
  %i.il = getelementptr inbounds nuw i8, ptr %i.hw, i64 5
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !7
  %i.im = shl i8 %i.ht, 3
  %i.in = shl i8 %i.hv, 3                         ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hr ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !7
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hr ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !7
  %i.is = sub i8 %i.ip, %i.in
  %i.it = add i8 %i.is, %i.ir
  store i8 %i.it, ptr %i.iq, align 1, !tbaa !7
  store i8 %i.in, ptr %i.io, align 1, !tbaa !7
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.hr
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !7
  %i.iw = sub i8 %i.im, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hr
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !7
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %.loopexit234.loopexit, label %.preheader141.i, !llvm.loop !20

SubdivColorMap.exit:                              ; preds = %bb.q
  tail call void @free(ptr noundef %i.a) #8
  br label %bb.w

.loopexit234.loopexit.split.loop.exit345:         ; preds = %._crit_edge.i
  %i.iy = trunc nuw i64 %indvars.iv307 to i32
  br label %.loopexit234.loopexit

.loopexit234.loopexit:                            ; preds = %.critedge.i, %.loopexit234.loopexit.split.loop.exit345
  %.1228.ph.ph = phi i32 [ %i.iy, %.loopexit234.loopexit.split.loop.exit345 ], [ %i.di, %.critedge.i ]
  %.pre = load i32, ptr %2, align 4, !tbaa !6
  br label %.loopexit234

.loopexit234:                                     ; preds = %.loopexit234.loopexit, %._crit_edge
  %i.iz = phi i32 [ %i.di, %._crit_edge ], [ %.pre, %.loopexit234.loopexit ] ; 3 uses
  %.1228.ph = phi i32 [ 1, %._crit_edge ], [ %.1228.ph.ph, %.loopexit234.loopexit ] ; 6 uses
  %i.ja = icmp ult i32 %.1228.ph, %i.iz
  %i.jb = icmp slt i32 %.1228.ph, %i.iz
  %or.cond = and i1 %i.ja, %i.jb
  br i1 %or.cond, label %.lr.ph263.preheader, label %.loopexit

.lr.ph263.preheader:                              ; preds = %.loopexit234
  %i.jc = sext i32 %.1228.ph to i64
  %i.jd = mul nsw i64 %i.jc, 3
  %scevgep = getelementptr i8, ptr %7, i64 %i.jd
  %i.je = xor i32 %.1228.ph, -1
  %i.jf = add i32 %i.iz, %i.je
  %i.jg = zext i32 %i.jf to i64
  %i.jh = mul nuw nsw i64 %i.jg, 3
  %i.ji = add nuw nsw i64 %i.jh, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.ji, i1 false), !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph263.preheader, %.loopexit234
  %wide.trip.count318 = zext i32 %.1228.ph to i64
  br label %bb.s

.preheader:                                       ; preds = %bb.v
  br i1 %i.d, label %.lr.ph282.preheader, label %._crit_edge283

.lr.ph282.preheader:                              ; preds = %.preheader
  %wide.trip.count323 = zext nneg i32 %i.c to i64
  br label %.lr.ph282

bb.s:                                             ; preds = %.loopexit, %bb.v
  %indvars.iv315 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next316, %bb.v ] ; 4 uses
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %8, i64 %indvars.iv315 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !29 ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %.2264 = load ptr, ptr %i.jn, align 8, !tbaa !10 ; 2 uses
  %.not211265 = icmp eq ptr %.2264, null
  br i1 %.not211265, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %bb.t
  %i.jo = trunc i64 %indvars.iv315 to i8
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph271, %bb.u
  %.2269 = phi ptr [ %.2264, %.lr.ph271 ], [ %.2, %bb.u ] ; 5 uses
  %.0183268 = phi i64 [ 0, %.lr.ph271 ], [ %i.ka, %bb.u ]
  %.0184267 = phi i64 [ 0, %.lr.ph271 ], [ %i.jw, %bb.u ]
  %.0185266 = phi i64 [ 0, %.lr.ph271 ], [ %i.js, %bb.u ]
  %i.jp = getelementptr inbounds nuw i8, ptr %.2269, i64 3
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !35
  %i.jq = load i8, ptr %.2269, align 8, !tbaa !7
  %i.jr = zext i8 %i.jq to i64
  %i.js = add nuw nsw i64 %.0185266, %i.jr        ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.2269, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !7
  %i.jv = zext i8 %i.ju to i64
  %i.jw = add nuw nsw i64 %.0184267, %i.jv        ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.2269, i64 2
  %i.jy = load i8, ptr %i.jx, align 2, !tbaa !7
  %i.jz = zext i8 %i.jy to i64
  %i.ka = add nuw nsw i64 %.0183268, %i.jz        ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.2269, i64 16
  %.2 = load ptr, ptr %i.kb, align 8, !tbaa !10   ; 2 uses
  %.not211 = icmp eq ptr %.2, null
  br i1 %.not211, label %._crit_edge272.loopexit, label %bb.u, !llvm.loop !21

._crit_edge272.loopexit:                          ; preds = %bb.u
  %i.kc = shl i64 %i.js, 3
  %i.kd = shl i64 %i.jw, 3
  %i.ke = shl i64 %i.ka, 3
  br label %._crit_edge272

._crit_edge272:                                   ; preds = %._crit_edge272.loopexit, %bb.t
  %.0185.lcssa = phi i64 [ 0, %bb.t ], [ %i.kc, %._crit_edge272.loopexit ]
  %.0184.lcssa = phi i64 [ 0, %bb.t ], [ %i.kd, %._crit_edge272.loopexit ]
  %.0183.lcssa = phi i64 [ 0, %bb.t ], [ %i.ke, %._crit_edge272.loopexit ]
  %i.kf = zext nneg i32 %i.jl to i64              ; 3 uses
  %i.kg = sdiv i64 %.0185.lcssa, %i.kf
  %i.kh = trunc i64 %i.kg to i8
  %i.ki = getelementptr inbounds nuw [3 x i8], ptr %7, i64 %indvars.iv315 ; 3 uses
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !37
  %i.kj = sdiv i64 %.0184.lcssa, %i.kf
  %i.kk = trunc i64 %i.kj to i8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !38
  %i.km = sdiv i64 %.0183.lcssa, %i.kf
  %i.kn = trunc i64 %i.km to i8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 2
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !39
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %._crit_edge272
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next316, %wide.trip.count318
  br i1 %exitcond319.not, label %.preheader, label %bb.s, !llvm.loop !22

.lr.ph282:                                        ; preds = %.lr.ph282.preheader, %.lr.ph282
  %indvars.iv320 = phi i64 [ 0, %.lr.ph282.preheader ], [ %indvars.iv.next321, %.lr.ph282 ] ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv320
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !7
  %i.kr = lshr i8 %i.kq, 3
  %i.ks = zext nneg i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv320
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !7
  %i.kv = lshr i8 %i.ku, 3
  %i.kw = zext nneg i8 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv320
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !7
  %i.kz = lshr i8 %i.ky, 3
  %i.la = zext nneg i8 %i.kz to i64
  %.idx = mul nuw nsw i64 %i.ks, 24576
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.idx210 = mul nuw nsw i64 %i.kw, 768
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.idx210
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.lc, i64 %i.la
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 3
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !35
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv320
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !7
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %wide.trip.count323
  br i1 %exitcond324.not, label %._crit_edge283, label %.lr.ph282, !llvm.loop !23

._crit_edge283:                                   ; preds = %.lr.ph282, %.preheader
  tail call void @free(ptr noundef %i.a) #8
  store i32 %.1228.ph, ptr %2, align 4, !tbaa !6
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %._crit_edge283, %SubdivColorMap.exit
  %.0192 = phi i32 [ 1, %._crit_edge283 ], [ 0, %SubdivColorMap.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  ret i32 %.0192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -16777215, 16777216) i32 @SortCmpRtn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  %i.c = load i32, ptr @SortRGBAxis, align 4, !tbaa !6 ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %2 = insertelement <2 x i32> poison, i32 %i.c, i64 0
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <2 x i32> zeroinitializer
  %4 = add nuw nsw <2 x i32> %3, <i32 1, i32 2>
  %5 = urem <2 x i32> %4, splat (i32 3)           ; 2 uses
  %6 = extractelement <2 x i32> %5, i64 0
  %i.i = zext nneg i32 %6 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = or disjoint i32 %i.m, %i.h
  %7 = extractelement <2 x i32> %5, i64 1
  %i.o = zext nneg i32 %7 to i64                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.u = load i8, ptr %i.t, align 1, !tbaa !7
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = sub nsw i32 %i.s, %i.af
  ret i32 %i.ag
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!4, !4, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS18QuantizedColorType", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, !27}
!12 = distinct !{!12, !27}
!13 = distinct !{!13, !27}
!14 = distinct !{!14, !27}
!15 = distinct !{!15, !27}
!16 = distinct !{!16, !27}
!17 = distinct !{!17, !27}
!18 = distinct !{!18, !27}
!19 = distinct !{!19, !33}
!20 = distinct !{!20, !27}
!21 = distinct !{!21, !27}
!22 = distinct !{!22, !27}
!23 = distinct !{!23, !27}
!24 = !{!"long", !4, i64 0}
!25 = !{!"QuantizedColorType", !4, i64 0, !4, i64 3, !24, i64 8, !9, i64 16}
!26 = !{!25, !24, i64 8}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"NewColorMapType", !4, i64 0, !4, i64 3, !5, i64 8, !24, i64 16, !9, i64 24}
!29 = !{!28, !5, i64 8}
!30 = !{!28, !9, i64 24}
!31 = !{!25, !9, i64 16}
!32 = !{!28, !24, i64 16}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{}
!35 = !{!25, !4, i64 3}
!36 = !{!"GifColorType", !4, i64 0, !4, i64 1, !4, i64 2}
!37 = !{!36, !4, i64 0}
!38 = !{!36, !4, i64 1}
!39 = !{!36, !4, i64 2}
end_hunk_0
