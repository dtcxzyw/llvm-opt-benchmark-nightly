Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/UTFConvert?download=true
inline.NumInlined: 24
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z20ConvertUnicodeToUTF8RK11CStringBaseIwERS_IcE:bb.a
._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #5
  %.pre = load i32, ptr %i.a, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.j
  %i.bl = phi i32 [ %.pre, %._crit_edge.thread.i.i ], [ %.pre35, %._crit_edge.i.i ], [ %.pre35, %bb.j ]
  store ptr %i.ae, ptr %1, align 8, !tbaa !17
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.ae, i64 %i.bm
  store i8 0, ptr %i.bn, align 1, !tbaa !19
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !36
  %.pre36 = load ptr, ptr %0, align 8, !tbaa !12
  %.pre37 = load i32, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %.pre38 = sext i32 %.pre37 to i64
  br label %_ZN11CStringBaseIcE9GetBufferEi.exit

_ZN11CStringBaseIcE9GetBufferEi.exit:             ; preds = %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, %bb.k
  %.pre-phi = phi i64 [ %i.f, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %.pre38, %bb.k ] ; 4 uses
  %i.bo = phi i32 [ %i.e, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %.pre37, %bb.k ]
  %i.bp = phi ptr [ %i.c, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %.pre36, %bb.k ] ; 4 uses
  %i.bq = phi ptr [ %.pre.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %i.ae, %bb.k ] ; 6 uses
  %i.br = icmp eq i32 %i.bo, 0
  br i1 %i.br, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN11CStringBaseIcE9GetBufferEi.exit
  %.not.i10 = icmp eq ptr %i.bq, null
  br i1 %.not.i10, label %.lr.ph.split.us.split.us.i13, label %.lr.ph.split.i

.lr.ph.split.us.split.us.i13:                     ; preds = %.lr.ph.i9, %.loopexit.split.us.us.us.i21
  %.05388.us.us.i14 = phi i64 [ %.3.us.us.i23, %.loopexit.split.us.us.us.i21 ], [ 0, %.lr.ph.i9 ] ; 3 uses
  %.05587.us.us.i15 = phi i64 [ %.257.us.us.i22, %.loopexit.split.us.us.us.i21 ], [ 0, %.lr.ph.i9 ] ; 4 uses
  %i.bs = add i64 %.05388.us.us.i14, 1            ; 7 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.05388.us.us.i14
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !14 ; 7 uses
  %i.bv = icmp ult i32 %i.bu, 128
  br i1 %i.bv, label %bb.s, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.split.us.i13
  %i.bw = and i32 %i.bu, -2048
  %or.cond.us.us.i16 = icmp eq i32 %i.bw, 55296
  br i1 %or.cond.us.us.i16, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = icmp samesign ugt i32 %i.bu, 56319
  %i.by = icmp eq i64 %i.bs, %.pre-phi
  %or.cond72.us.us.i24 = or i1 %i.by, %i.bx
  br i1 %or.cond72.us.us.i24, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !14
  %i.cb = add i32 %i.ca, -57344
  %or.cond3.us.us.i25 = icmp ult i32 %i.cb, -1024
  br i1 %or.cond3.us.us.i25, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.thread126.i26

.thread126.i26:                                   ; preds = %bb.n
  %i.cc = add i64 %.05388.us.us.i14, 2
  br label %.split.us.us.us.i18

bb.o:                                             ; preds = %bb.l
  %i.cd = icmp ult i32 %i.bu, 2048
  br i1 %i.cd, label %.split.us.us.us.i18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = icmp ult i32 %i.bu, 65536
  br i1 %i.ce, label %.split.us.us.us.i18, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = icmp ult i32 %i.bu, 2097152
  br i1 %i.cf, label %.split.us.us.us.i18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = icmp ult i32 %i.bu, 67108864
  %spec.select.i17 = select i1 %i.cg, i64 3, i64 4
  br label %.split.us.us.us.i18

.split.us.us.us.i18:                              ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %.thread126.i26
  %.2.us.us119.i19 = phi i64 [ %i.bs, %bb.o ], [ %i.cc, %.thread126.i26 ], [ %i.bs, %bb.p ], [ %i.bs, %bb.r ], [ %i.bs, %bb.q ]
  %.051.lcssa.us.us.i20 = phi i64 [ 0, %bb.o ], [ 2, %.thread126.i26 ], [ 1, %bb.p ], [ %spec.select.i17, %bb.r ], [ 2, %bb.q ]
  %i.ch = add i64 %.05587.us.us.i15, 2
  %i.ci = add i64 %i.ch, %.051.lcssa.us.us.i20
  br label %.loopexit.split.us.us.us.i21

bb.s:                                             ; preds = %.lr.ph.split.us.split.us.i13
  %i.cj = add i64 %.05587.us.us.i15, 1
  br label %.loopexit.split.us.us.us.i21, !llvm.loop !30

.loopexit.split.us.us.us.i21:                     ; preds = %bb.s, %.split.us.us.us.i18
  %.257.us.us.i22 = phi i64 [ %i.cj, %bb.s ], [ %i.ci, %.split.us.us.us.i18 ] ; 2 uses
  %.3.us.us.i23 = phi i64 [ %i.bs, %bb.s ], [ %.2.us.us119.i19, %.split.us.us.us.i18 ] ; 2 uses
  %i.ck = icmp eq i64 %.3.us.us.i23, %.pre-phi
  br i1 %i.ck, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.lr.ph.split.us.split.us.i13

.lr.ph.split.i:                                   ; preds = %.lr.ph.i9, %.loopexit.split.i
  %.05388.i = phi i64 [ %.3.i, %.loopexit.split.i ], [ 0, %.lr.ph.i9 ] ; 3 uses
  %.05587.i = phi i64 [ %.257.i, %.loopexit.split.i ], [ 0, %.lr.ph.i9 ] ; 6 uses
  %i.cl = add i64 %.05388.i, 1                    ; 7 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.05388.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !14 ; 13 uses
  %i.co = icmp ult i32 %i.cn, 128
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i
  %i.cp = trunc nuw nsw i32 %i.cn to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.05587.i
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !19
  %i.cr = add i64 %.05587.i, 1
  br label %.loopexit.split.i, !llvm.loop !30

bb.u:                                             ; preds = %.lr.ph.split.i
  %i.cs = and i32 %i.cn, -2048
  %or.cond.i = icmp eq i32 %i.cs, 55296
  br i1 %or.cond.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ct = icmp samesign ugt i32 %i.cn, 56319
  %i.cu = icmp eq i64 %i.cl, %.pre-phi
  %or.cond72.i = or i1 %i.cu, %i.ct
  br i1 %or.cond72.i, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cl
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !14 ; 2 uses
  %i.cx = add i32 %i.cw, -57344
  %or.cond3.i = icmp ult i32 %i.cx, -1024
  br i1 %or.cond3.i, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.thread141.i

.thread141.i:                                     ; preds = %bb.w
  %i.cy = add i64 %.05388.i, 2
  %i.cz = shl nuw nsw i32 %i.cn, 10
  %i.da = add nsw i32 %i.cz, -56613888
  %i.db = add nuw nsw i32 %i.da, %i.cw
  br label %.split.i

bb.x:                                             ; preds = %bb.u
  %i.dc = icmp ult i32 %i.cn, 2048
  br i1 %i.dc, label %.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = icmp ult i32 %i.cn, 65536
  br i1 %i.dd, label %.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = icmp ult i32 %i.cn, 2097152
  br i1 %i.de, label %.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = icmp ult i32 %i.cn, 67108864
  %spec.select147.i = select i1 %i.df, i32 4, i32 5
  br label %.split.i

.split.i:                                         ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %.thread141.i
  %.150135.i = phi i32 [ %i.cn, %bb.x ], [ %i.db, %.thread141.i ], [ %i.cn, %bb.y ], [ %i.cn, %bb.aa ], [ %i.cn, %bb.z ] ; 3 uses
  %.2133.i = phi i64 [ %i.cl, %bb.x ], [ %i.cy, %.thread141.i ], [ %i.cl, %bb.y ], [ %i.cl, %bb.aa ], [ %i.cl, %bb.z ] ; 2 uses
  %.051.lcssa.i = phi i32 [ 1, %bb.x ], [ 3, %.thread141.i ], [ 2, %bb.y ], [ %spec.select147.i, %bb.aa ], [ 3, %bb.z ] ; 7 uses
  %i.dg = zext nneg i32 %.051.lcssa.i to i64
  %i.dh = getelementptr i8, ptr @_ZL11kUtf8Limits, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !19
  %i.dk = mul nuw nsw i32 %.051.lcssa.i, 6
  %i.dl = lshr i32 %.150135.i, %i.dk
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = add i8 %i.dj, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.05587.i
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !19
  %i.dp = add i64 %.05587.i, 1                    ; 3 uses
  %i.dq = zext nneg i32 %.051.lcssa.i to i64      ; 2 uses
  %min.iters.check59 = icmp samesign ult i32 %.051.lcssa.i, 4
  br i1 %min.iters.check59, label %scalar.ph.preheader, label %vector.body64

vector.body64:                                    ; preds = %.split.i
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %.051.lcssa.i, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.150135.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec61 = and i64 %i.dq, 4                     ; 3 uses
  %i.dr = trunc nuw nsw i64 %n.vec61 to i32
  %i.ds = sub nsw i32 %.051.lcssa.i, %i.dr
  %i.dt = add i64 %i.dp, %n.vec61                 ; 2 uses
  %i.du = mul <4 x i32> %broadcast.splatinsert62, <i32 6, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x i32> %i.du, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dw = add nsw <4 x i32> %i.dv, <i32 -6, i32 -12, i32 -18, i32 -24>
  %i.dx = lshr <4 x i32> %broadcast.splat, %i.dw
  %i.dy = trunc <4 x i32> %i.dx to <4 x i8>
  %i.dz = and <4 x i8> %i.dy, splat (i8 63)
  %i.ea = or disjoint <4 x i8> %i.dz, splat (i8 -128)
  %i.eb = getelementptr i8, ptr %i.bq, i64 %i.dp
  store <4 x i8> %i.ea, ptr %i.eb, align 1, !tbaa !19
  %cmp.n68 = icmp eq i64 %n.vec61, %i.dq
  br i1 %cmp.n68, label %.loopexit.split.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.split.i, %vector.body64
  %.156.i.ph = phi i64 [ %i.dp, %.split.i ], [ %i.dt, %vector.body64 ]
  %.152.i.ph = phi i32 [ %.051.lcssa.i, %.split.i ], [ %i.ds, %vector.body64 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.156.i = phi i64 [ %i.ej, %scalar.ph ], [ %.156.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.152.i = phi i32 [ %i.ec, %scalar.ph ], [ %.152.i.ph, %scalar.ph.preheader ]
  %i.ec = add nsw i32 %.152.i, -1                 ; 3 uses
  %i.ed = mul nsw i32 %i.ec, 6
  %i.ee = lshr i32 %.150135.i, %i.ed
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = and i8 %i.ef, 63
  %i.eh = or disjoint i8 %i.eg, -128
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.156.i
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !19
  %i.ej = add i64 %.156.i, 1                      ; 2 uses
  %.not70.i = icmp eq i32 %i.ec, 0
  br i1 %.not70.i, label %.loopexit.split.i, label %scalar.ph, !llvm.loop !35

.loopexit.split.i:                                ; preds = %scalar.ph, %vector.body64, %bb.t
  %.257.i = phi i64 [ %i.cr, %bb.t ], [ %i.dt, %vector.body64 ], [ %i.ej, %scalar.ph ] ; 2 uses
  %.3.i = phi i64 [ %i.cl, %bb.t ], [ %.2133.i, %vector.body64 ], [ %.2133.i, %scalar.ph ] ; 2 uses
  %i.ek = icmp eq i64 %.3.i, %.pre-phi
  br i1 %i.ek, label %_ZL13Utf16_To_Utf8PcPmPKwm.exit27, label %.lr.ph.split.i

_ZL13Utf16_To_Utf8PcPmPKwm.exit27:                ; preds = %bb.v, %bb.w, %.loopexit.split.i, %bb.m, %bb.n, %.loopexit.split.us.us.us.i21, %_ZN11CStringBaseIcE9GetBufferEi.exit
  %.055.lcssa.i11 = phi i64 [ 0, %_ZN11CStringBaseIcE9GetBufferEi.exit ], [ %.257.us.us.i22, %.loopexit.split.us.us.us.i21 ], [ %.05587.us.us.i15, %bb.m ], [ %.05587.us.us.i15, %bb.n ], [ %.257.i, %.loopexit.split.i ], [ %.05587.i, %bb.v ], [ %.05587.i, %bb.w ]
  %i.el = phi i1 [ true, %_ZN11CStringBaseIcE9GetBufferEi.exit ], [ true, %.loopexit.split.us.us.us.i21 ], [ false, %bb.m ], [ false, %bb.n ], [ true, %.loopexit.split.i ], [ false, %bb.v ], [ false, %bb.w ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.055.lcssa.i11
  store i8 0, ptr %i.em, align 1, !tbaa !19
  %i.en = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.en) ; 2 uses
  %i.eo = trunc i64 %strlen.i.i to i32
  %sext.i = shl i64 %strlen.i.i, 32
  %i.ep = ashr exact i64 %sext.i, 32
  %i.eq = getelementptr inbounds i8, ptr %i.en, i64 %i.ep
  store i8 0, ptr %i.eq, align 1, !tbaa !19
  store i32 %i.eo, ptr %i.a, align 8, !tbaa !18
  ret i1 %i.el
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { builtin allocsize(0) }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 wchar_t", !8, i64 0}
!10 = !{!"_ZTS11CStringBaseIwE", !9, i64 0, !6, i64 8, !6, i64 12}
!11 = !{!10, !6, i64 8}
!12 = !{!10, !9, i64 0}
!13 = !{!"wchar_t", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 omnipotent char", !8, i64 0}
!16 = !{!"_ZTS11CStringBaseIcE", !15, i64 0, !6, i64 8, !6, i64 12}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !6, i64 8}
!19 = !{!5, !5, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20, !21, !22}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !20, !21}
!28 = distinct !{!28, !20}
!29 = !{!10, !6, i64 12}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20, !21, !22}
!32 = distinct !{!32, !20, !21, !22}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !20, !21}
!35 = distinct !{!35, !20, !22, !21}
!36 = !{!16, !6, i64 12}
!37 = !{!"branch_weights", i32 4, i32 28}
end_hunk_0
