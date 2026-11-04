Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/extract_extradata?download=true
inline.NumInlined: 18
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@process_lcevc_nalu:bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bytestream2_init.exit:                            ; preds = %bytestream2_init.exit95
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.d, align 1, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bytestream2_init.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !31
  store i16 %i.p, ptr %i.q, align 1, !tbaa !52
  %i.r = load ptr, ptr %1, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.s, ptr %1, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bytestream2_init.exit
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = icmp samesign ugt i32 %i.b, 3
  br i1 %i.u, label %.lr.ph154, label %._crit_edge155

.lr.ph154:                                        ; preds = %bb.f
  %gepdiff = add nsw i64 %i.e, -2                 ; 2 uses
  %i.v = trunc nuw nsw i64 %gepdiff to i32
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.y = ptrtoint ptr %i.d to i64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ab = ptrtoint ptr %i.n to i64
  %.not93 = icmp eq ptr %0, null                  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph154, %bb.u
  %i.ac = phi i32 [ %i.v, %.lr.ph154 ], [ %i.dh, %bb.u ] ; 3 uses
  %i.ad = phi i64 [ %gepdiff, %.lr.ph154 ], [ %i.dg, %bb.u ]
  %i.ae = phi i64 [ %i.w, %.lr.ph154 ], [ %i.df, %bb.u ]
  %.062152 = phi i32 [ 2, %.lr.ph154 ], [ %.1, %bb.u ] ; 2 uses
  %.063151 = phi i32 [ 0, %.lr.ph154 ], [ %.265, %bb.u ] ; 4 uses
  %.066150 = phi i32 [ 0, %.lr.ph154 ], [ %.167.lcssa, %bb.u ] ; 4 uses
  %.sroa.0108.0146 = phi ptr [ %i.x, %.lr.ph154 ], [ %i.de, %bb.u ] ; 4 uses
  %.sroa.0115.0145 = phi ptr [ %i.o, %.lr.ph154 ], [ %i.dc, %bb.u ] ; 3 uses
  %i.af = phi <2 x i32> [ zeroinitializer, %.lr.ph154 ], [ %i.da, %bb.u ] ; 2 uses
  %or.cond.i98 = icmp samesign ugt i32 %i.ac, 268435455
  %i.ag = shl nuw nsw i32 %i.ac, 3
  %i.ah = select i1 %or.cond.i98, i32 -8, i32 %i.ag ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.ah, 2147483135
  %i.ai = add nuw nsw i32 %i.ah, 8
  %i.aj = select i1 %or.cond.i.i, i32 %i.ai, i32 8
  %i.ak = load i32, ptr %.sroa.0115.0145, align 1, !tbaa !52
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak) ; 2 uses
  %i.am = lshr i32 %i.al, 29                      ; 3 uses
  %i.an = lshr i32 %i.al, 24
  %i.ao = and i32 %i.an, 31                       ; 2 uses
  %i.ap = icmp eq i32 %i.am, 6
  br i1 %i.ap, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = icmp eq i32 %i.am, 7
  br i1 %i.ar, label %.preheader, label %get_mb.exit

.preheader:                                       ; preds = %bb.h, %.preheader
  %i.as = phi i32 [ %i.bc, %.preheader ], [ 8, %bb.h ] ; 3 uses
  %.09.i = phi i32 [ %i.bh, %.preheader ], [ 0, %bb.h ]
  %.08.i = phi i64 [ %i.bg, %.preheader ], [ 0, %bb.h ]
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0115.0145, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !52
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = and i32 %i.as, 7
  %i.az = shl i32 %i.ax, %i.ay                    ; 2 uses
  %i.ba = lshr i32 %i.az, 24
  %i.bb = add i32 %i.as, 8
  %i.bc = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.bb) ; 2 uses
  %i.bd = and i32 %i.ba, 127
  %i.be = shl i64 %.08.i, 7
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = or disjoint i64 %i.be, %i.bf            ; 2 uses
  %i.bh = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 10
  %.not.i = icmp sgt i32 %i.az, -1
  %or.cond.i99 = select i1 %i.bi, i1 true, i1 %.not.i
  br i1 %or.cond.i99, label %get_mb.exit.loopexit, label %.preheader, !llvm.loop !75

get_mb.exit.loopexit:                             ; preds = %.preheader
  %i.bj = lshr i32 %i.bc, 3
  br label %get_mb.exit

get_mb.exit:                                      ; preds = %get_mb.exit.loopexit, %bb.h
  %.sroa.7.0 = phi i32 [ 1, %bb.h ], [ %i.bj, %get_mb.exit.loopexit ] ; 3 uses
  %.060 = phi i64 [ %i.aq, %bb.h ], [ %i.bg, %get_mb.exit.loopexit ] ; 2 uses
  %i.bk = xor i32 %.sroa.7.0, 2147483647
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = icmp ugt i64 %.060, %i.bl
  br i1 %i.bm, label %.critedge, label %bb.i

bb.i:                                             ; preds = %get_mb.exit
  %i.bn = trunc nuw nsw i64 %.060 to i32          ; 2 uses
  %i.bo = add nuw i32 %.sroa.7.0, %i.bn           ; 5 uses
  %.not89 = icmp slt i32 %i.bo, %i.ac
  br i1 %.not89, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bp = sub i64 %i.ae, %i.y
  %i.bq = trunc i64 %i.bp to i32
  %i.br = add nsw i32 %i.bo, %i.bq
  %i.bs = load i32, ptr %i.aa, align 8, !tbaa !80 ; 4 uses
  %i.bt = icmp slt i32 %.066150, %i.bs
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.bu = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.bv = sext i32 %.066150 to i64
  %i.bw = sext i32 %i.bs to i64
  %i.bx = add i32 %i.bs, %.sroa.7.0
  %i.by = add i32 %i.bx, %i.bn
  %i.bz = sub i32 %i.by, %.066150
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.bv, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.0140 = phi i32 [ %i.bo, %.lr.ph ], [ %i.cc, %bb.l ] ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !32
  %.not90 = icmp slt i32 %i.cb, %i.br
  br i1 %.not90, label %bb.l, label %._crit_edge.loopexit.split.loop.exit

bb.l:                                             ; preds = %bb.k
  %i.cc = add nsw i32 %.0140, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bw
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !76

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.k
  %i.cd = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %._crit_edge.loopexit.split.loop.exit, %bb.j
  %.167.lcssa = phi i32 [ %.066150, %bb.j ], [ %i.cd, %._crit_edge.loopexit.split.loop.exit ], [ %i.bs, %bb.l ]
  %.0.lcssa = phi i32 [ %i.bo, %bb.j ], [ %.0140, %._crit_edge.loopexit.split.loop.exit ], [ %i.bz, %bb.l ] ; 6 uses
  %i.ce = ptrtoint ptr %.sroa.0108.0146 to i64
  %i.cf = sub i64 %i.ab, %i.ce                    ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp sgt i32 %.0.lcssa, %i.cg
  br i1 %i.ch, label %.critedge, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %trunc = trunc nuw nsw i32 %i.ao to i8
  switch i8 %trunc, label %bb.r [
    i8 0, label %bb.n
    i8 1, label %bb.n
    i8 5, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %.not91 = icmp eq i32 %.063151, 0
  br i1 %.not91, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %.not93, label %.thread, label %.thread129

.thread129:                                       ; preds = %bb.o
  %i.ci = load ptr, ptr %0, align 8, !tbaa !31
  store i16 %i.p, ptr %i.ci, align 1, !tbaa !52
  %i.cj = load ptr, ptr %0, align 8, !tbaa !31
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2 ; 2 uses
  store ptr %i.ck, ptr %0, align 8, !tbaa !31
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  br i1 %.not93, label %.thread, label %._crit_edge162

._crit_edge162:                                   ; preds = %bb.p
  %.pre = load ptr, ptr %0, align 8, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge162, %.thread129
  %i.cl = phi ptr [ %i.ck, %.thread129 ], [ %.pre, %._crit_edge162 ]
  %.164132 = phi i32 [ 2, %.thread129 ], [ %.063151, %._crit_edge162 ]
  %i.cm = zext i32 %.0.lcssa to i64               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %.sroa.0108.0146, i64 %i.cm, i1 false)
  %i.cn = load ptr, ptr %0, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store ptr %i.co, ptr %0, align 8, !tbaa !55
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.q, %bb.p
  %.164128 = phi i32 [ %.063151, %bb.p ], [ %.164132, %bb.q ], [ 2, %bb.o ]
  %i.cp = add nsw i32 %.164128, %.0.lcssa
  %i.cq = insertelement <2 x i32> poison, i32 %i.ao, i64 0
  %i.cr = shufflevector <2 x i32> %i.cq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cs = icmp eq <2 x i32> %i.cr, <i32 1, i32 0>
  %i.ct = zext <2 x i1> %i.cs to <2 x i32>
  %i.cu = or <2 x i32> %i.af, %i.ct
  %5 = freeze <2 x i32> %i.cu
  br label %bb.u

bb.r:                                             ; preds = %bb.m
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = load ptr, ptr %1, align 8, !tbaa !55
  %i.cw = zext i32 %.0.lcssa to i64               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %.sroa.0108.0146, i64 %i.cw, i1 false)
  %i.cx = load ptr, ptr %1, align 8, !tbaa !55
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store ptr %i.cy, ptr %1, align 8, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cz = add nsw i32 %.0.lcssa, %.062152
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %.265 = phi i32 [ %.063151, %bb.t ], [ %i.cp, %.thread ] ; 2 uses
  %.1 = phi i32 [ %i.cz, %bb.t ], [ %.062152, %.thread ] ; 2 uses
  %i.da = phi <2 x i32> [ %i.af, %bb.t ], [ %5, %.thread ] ; 2 uses
  %i.db = zext i32 %i.bo to i64
  %..i96 = tail call i64 @llvm.smin.i64(i64 %i.ad, i64 %i.db)
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0115.0145, i64 %..i96 ; 2 uses
  %i.dd = zext i32 %.0.lcssa to i64
  %..i = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 %i.dd)
  %i.de = getelementptr inbounds i8, ptr %.sroa.0108.0146, i64 %..i
  %i.df = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dg = sub i64 %i.t, %i.df                     ; 2 uses
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 1
  br i1 %i.di, label %bb.g, label %._crit_edge155.loopexit, !llvm.loop !77

._crit_edge155.loopexit:                          ; preds = %bb.u
  %i.dj = add nsw i32 %.1, 1
  %.fr.scalar = bitcast <2 x i32> %i.da to i64
  %.not183 = icmp eq i64 %.fr.scalar, 0
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.f
  %.072.lcssa = phi i1 [ true, %bb.f ], [ %.not183, %._crit_edge155.loopexit ]
  %.063.lcssa = phi i32 [ 0, %bb.f ], [ %.265, %._crit_edge155.loopexit ] ; 2 uses
  %.062.lcssa = phi i32 [ 3, %bb.f ], [ %i.dj, %._crit_edge155.loopexit ]
  store i32 %.062.lcssa, ptr %3, align 4, !tbaa !32
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge155
  %i.dk = load ptr, ptr %1, align 8, !tbaa !31
  store i8 -128, ptr %i.dk, align 1, !tbaa !52
  %i.dl = load ptr, ptr %1, align 8, !tbaa !31
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store ptr %i.dm, ptr %1, align 8, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge155
  %i.dn = icmp slt i32 %.063.lcssa, 1             ; 2 uses
  %brmerge = select i1 %i.dn, i1 true, i1 %.072.lcssa
  %.mux = select i1 %i.dn, i32 0, i32 -1094995529
  br i1 %brmerge, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not88 = icmp eq ptr %0, null
  br i1 %.not88, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = load ptr, ptr %0, align 8, !tbaa !31
  store i8 -128, ptr %i.do, align 1, !tbaa !52
  %i.dp = load ptr, ptr %0, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store ptr %i.dq, ptr %0, align 8, !tbaa !31
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.dr = add nuw nsw i32 %.063.lcssa, 1
  store i32 %i.dr, ptr %2, align 4, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %get_mb.exit, %bb.i, %._crit_edge, %bb.w, %bb.z, %bb.y, %bb.a
  %.378 = phi i32 [ -1094995529, %bb.a ], [ %.mux, %bb.w ], [ 1, %bb.z ], [ 1, %bb.y ], [ -1094995529, %._crit_edge ], [ -1094995529, %bb.i ], [ -1094995529, %get_mb.exit ], [ -1094995529, %bb.g ]
  ret i32 %.378
}

declare i32 @av_buffer_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_bsf_get_packet_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_packet_add_side_data(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

declare void @ff_av1_packet_uninit(ptr noundef) local_unnamed_addr #2

declare void @ff_h2645_packet_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS17AVBitStreamFilter", !9, i64 0}
!12 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!13 = !{!"AVRational", !6, i64 0, !6, i64 4}
!14 = !{!"AVBSFContext", !10, i64 0, !11, i64 8, !9, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !13, i64 48}
!15 = !{!14, !9, i64 16}
!16 = !{!14, !12, i64 24}
!17 = !{!"p1 omnipotent char", !9, i64 0}
!18 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!21 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !17, i64 16, !6, i64 24, !18, i64 32, !6, i64 40, !6, i64 44, !19, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !13, i64 80, !13, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !20, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!22 = !{!21, !6, i64 4}
!23 = !{!"p1 _ZTS6AV1OBU", !9, i64 0}
!24 = !{!"AV1Packet", !23, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!25 = !{!"p1 _ZTS8H2645NAL", !9, i64 0}
!26 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!27 = !{!"H2645RBSP", !17, i64 0, !26, i64 8, !6, i64 16, !6, i64 20}
!28 = !{!"H2645Packet", !25, i64 0, !27, i64 8, !6, i64 32, !6, i64 36, !6, i64 40}
!29 = !{!"ExtractExtradataContext", !10, i64 0, !9, i64 8, !24, i64 16, !28, i64 40, !6, i64 88}
!30 = !{!29, !9, i64 8}
!31 = !{!17, !17, i64 0}
!32 = !{!6, !6, i64 0}
!33 = !{!"AVPacket", !26, i64 0, !19, i64 8, !19, i64 16, !17, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !18, i64 48, !6, i64 56, !19, i64 64, !19, i64 72, !9, i64 80, !26, i64 88, !13, i64 96}
!34 = !{!33, !17, i64 24}
!35 = !{!33, !6, i64 32}
!36 = !{!"AV1OBU", !6, i64 0, !17, i64 8, !6, i64 16, !6, i64 20, !17, i64 24, !6, i64 32, !6, i64 36, !6, i64 40}
!37 = !{!36, !6, i64 32}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!26, !26, i64 0}
!40 = !{!29, !6, i64 88}
!41 = !{!"p1 _ZTS8AVBuffer", !9, i64 0}
!42 = !{!"AVBufferRef", !41, i64 0, !17, i64 8, !19, i64 16}
!43 = !{!42, !17, i64 8}
!44 = !{!33, !26, i64 0}
!45 = !{!29, !6, i64 72}
!46 = !{!29, !25, i64 40}
!47 = !{!"GetBitContext", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!48 = !{!"p1 int", !9, i64 0}
!49 = !{!"H2645NAL", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !17, i64 24, !47, i64 32, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !48, i64 80}
!50 = !{!49, !6, i64 56}
!51 = !{!49, !6, i64 16}
!52 = !{!5, !5, i64 0}
!53 = !{!49, !17, i64 24}
!54 = !{!"PutByteContext", !17, i64 0, !17, i64 8, !17, i64 16, !6, i64 24}
!55 = !{!54, !17, i64 0}
!56 = !{!"", !6, i64 0, !9, i64 8}
!57 = !{!56, !9, i64 8}
!58 = distinct !{!58, !38}
!59 = distinct !{!59, !38}
!60 = !{!29, !6, i64 24}
!61 = !{!29, !23, i64 16}
!62 = !{!36, !6, i64 20}
!63 = !{!36, !17, i64 24}
!64 = distinct !{!64, !38}
!65 = distinct !{!65, !38}
!66 = distinct !{!66, !38}
!67 = distinct !{!67, !38}
!68 = !{!54, !17, i64 16}
!69 = !{!54, !17, i64 8}
!70 = !{!54, !6, i64 24}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38}
!73 = !{!36, !17, i64 8}
!74 = !{!36, !6, i64 16}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !38}
!77 = distinct !{!77, !38}
!78 = !{!49, !6, i64 8}
!79 = !{!49, !17, i64 0}
!80 = !{!49, !6, i64 72}
!81 = !{!49, !48, i64 80}
end_hunk_0
