Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/msexpand?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@cli_msexpand:bb.a
  %.2162250 = phi ptr [ %.1161, %bb.l ], [ %.6166, %.loopexit ] ; 4 uses
  %.0168249 = phi i32 [ 1, %bb.l ], [ %i.cn, %.loopexit ] ; 2 uses
  %.0169248 = phi i8 [ 0, %bb.l ], [ %i.co, %.loopexit ]
  %i.ab = and i32 %.0168249, %i.aa
  %.not204 = icmp eq i32 %i.ab, 0
  %i.ac = icmp eq i32 %.2148256, %.2134253        ; 2 uses
  br i1 %.not204, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !34  ; 2 uses
  %i.ae = sub i64 %i.ad, %.2255
  %spec.select216224 = call i64 @llvm.umin.i64(i64 %i.ae, i64 2048) ; 3 uses
  %spec.select216 = trunc nuw nsw i64 %spec.select216224 to i32
  %.not212 = icmp eq i64 %i.ad, %.2255
  br i1 %.not212, label %.loopexit287, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.ag = call ptr %i.af(ptr noundef nonnull %i.d, i64 noundef %.2255, i64 noundef range(i64 1, 2049) %spec.select216224, i32 noundef 0) #5, !inline_history !27 ; 2 uses
  %.not213 = icmp eq ptr %i.ag, null
  br i1 %.not213, label %.loopexit227, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = add nsw i64 %spec.select216224, %.2255
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.3163 = phi ptr [ %i.ag, %bb.q ], [ %.2162250, %bb.n ] ; 2 uses
  %.3149 = phi i32 [ 0, %bb.q ], [ %.2148256, %bb.n ] ; 2 uses
  %.3135 = phi i32 [ %spec.select216, %bb.q ], [ %.2134253, %bb.n ]
  %.3 = phi i64 [ %i.ah, %bb.q ], [ %.2255, %bb.n ]
  %i.ai = icmp eq i32 %.1141252, 2048
  br i1 %i.ai, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.aj = call i64 @cli_writen(i32 noundef %1, ptr noundef nonnull %i.b, i64 noundef 2048) #5
  %i.ak = and i64 %i.aj, 4294967295
  %.not214 = icmp eq i64 %i.ak, 2048
  br i1 %.not214, label %bb.t, label %.loopexit227

bb.t:                                             ; preds = %bb.s
  %i.al = add i32 %.1127254, 2048                 ; 2 uses
  %.not215 = icmp ult i32 %i.al, %i.n
  br i1 %.not215, label %bb.u, label %.loopexit227

bb.u:                                             ; preds = %bb.t, %bb.r
  %.2142 = phi i32 [ %.1141252, %bb.r ], [ 0, %bb.t ] ; 2 uses
  %.2128 = phi i32 [ %.1127254, %bb.r ], [ %i.al, %bb.t ]
  %i.am = zext i32 %.3149 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.3163, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35  ; 2 uses
  %i.ap = zext i32 %.1157251 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !35
  %i.ar = zext i32 %.2142 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ar
  store i8 %i.ao, ptr %i.as, align 1, !tbaa !35
  %i.at = add i32 %.2142, 1
  %i.au = add i32 %.1157251, 1
  %i.av = and i32 %i.au, 4095
  br label %.loopexit

bb.v:                                             ; preds = %bb.m
  br i1 %i.ac, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !34  ; 2 uses
  %i.ax = sub i64 %i.aw, %.2255
  %spec.select218225 = call i64 @llvm.umin.i64(i64 %i.ax, i64 2048) ; 3 uses
  %spec.select218 = trunc nuw nsw i64 %spec.select218225 to i32
  %.not205 = icmp eq i64 %i.aw, %.2255
  br i1 %.not205, label %.loopexit287, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.az = call ptr %i.ay(ptr noundef nonnull %i.d, i64 noundef %.2255, i64 noundef range(i64 1, 2049) %spec.select218225, i32 noundef 0) #5, !inline_history !27 ; 2 uses
  %.not206 = icmp eq ptr %i.az, null
  br i1 %.not206, label %.loopexit227, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = add nsw i64 %spec.select218225, %.2255
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.4164 = phi ptr [ %i.az, %bb.y ], [ %.2162250, %bb.v ] ; 3 uses
  %.4150 = phi i32 [ 0, %bb.y ], [ %.2148256, %bb.v ] ; 2 uses
  %.4136 = phi i32 [ %spec.select218, %bb.y ], [ %.2134253, %bb.v ] ; 3 uses
  %.4 = phi i64 [ %i.ba, %bb.y ], [ %.2255, %bb.v ] ; 6 uses
  %i.bb = zext i32 %.4150 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.4164, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !35
  %i.be = zext i8 %i.bd to i32
  %i.bf = add i32 %.4150, 1                       ; 2 uses
  %i.bg = icmp eq i32 %i.bf, %.4136
  br i1 %i.bg, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bh = load i64, ptr %i.q, align 8, !tbaa !34  ; 2 uses
  %i.bi = sub i64 %i.bh, %.4
  %spec.select219226 = call i64 @llvm.umin.i64(i64 %i.bi, i64 2048) ; 3 uses
  %spec.select219 = trunc nuw nsw i64 %spec.select219226 to i32
  %.not207 = icmp eq i64 %i.bh, %.4
  br i1 %.not207, label %.loopexit287, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.bk = call ptr %i.bj(ptr noundef nonnull %i.d, i64 noundef %.4, i64 noundef range(i64 1, 2049) %spec.select219226, i32 noundef 0) #5, !inline_history !27 ; 2 uses
  %.not208 = icmp eq ptr %i.bk, null
  br i1 %.not208, label %.loopexit227, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = add nsw i64 %spec.select219226, %.4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.5165 = phi ptr [ %i.bk, %bb.ac ], [ %.4164, %bb.z ] ; 2 uses
  %.5151 = phi i32 [ 0, %bb.ac ], [ %i.bf, %bb.z ] ; 2 uses
  %.5137 = phi i32 [ %spec.select219, %bb.ac ], [ %.4136, %bb.z ]
  %.5 = phi i64 [ %i.bl, %bb.ac ], [ %.4, %bb.z ]
  %i.bm = zext i32 %.5151 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.5165, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = shl nuw nsw i32 %i.bp, 4
  %i.br = and i32 %i.bq, 3840
  %i.bs = or disjoint i32 %i.br, %i.be
  %i.bt = and i32 %i.bp, 15
  %.reass = add nuw nsw i32 %i.bt, 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ah
  %i.bu = phi i32 [ %.reass, %bb.ad ], [ %i.cl, %bb.ah ] ; 2 uses
  %.3129246 = phi i32 [ %.1127254, %bb.ad ], [ %.4130, %bb.ah ] ; 2 uses
  %.3143245 = phi i32 [ %.1141252, %bb.ad ], [ %i.cg, %bb.ah ] ; 2 uses
  %.0155244 = phi i32 [ %i.bs, %bb.ad ], [ %i.ci, %bb.ah ] ; 2 uses
  %.2158243 = phi i32 [ %.1157251, %bb.ad ], [ %i.ck, %bb.ah ] ; 2 uses
  %i.bv = icmp eq i32 %.3143245, 2048
  br i1 %i.bv, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bw = call i64 @cli_writen(i32 noundef %1, ptr noundef nonnull %i.b, i64 noundef 2048) #5
  %i.bx = and i64 %i.bw, 4294967295
  %.not210 = icmp eq i64 %i.bx, 2048
  br i1 %.not210, label %bb.ag, label %.loopexit227

bb.ag:                                            ; preds = %bb.af
  %i.by = add i32 %.3129246, 2048                 ; 2 uses
  %.not211 = icmp ult i32 %i.by, %i.n
  br i1 %.not211, label %bb.ah, label %.loopexit227

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.4144 = phi i32 [ %.3143245, %bb.ae ], [ 0, %bb.ag ] ; 2 uses
  %.4130 = phi i32 [ %.3129246, %bb.ae ], [ %i.by, %bb.ag ] ; 2 uses
  %i.bz = zext nneg i32 %.0155244 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !35  ; 2 uses
  %i.cc = zext i32 %.2158243 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc
  store i8 %i.cb, ptr %i.cd, align 1, !tbaa !35
  %i.ce = zext i32 %.4144 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ce
  store i8 %i.cb, ptr %i.cf, align 1, !tbaa !35
  %i.cg = add i32 %.4144, 1                       ; 2 uses
  %i.ch = add nuw nsw i32 %.0155244, 1
  %i.ci = and i32 %i.ch, 4095
  %i.cj = add i32 %.2158243, 1
  %i.ck = and i32 %i.cj, 4095                     ; 2 uses
  %i.cl = add nsw i32 %i.bu, -1
  %.not209 = icmp eq i32 %i.bu, 0
  br i1 %.not209, label %.loopexit, label %bb.ae

.loopexit:                                        ; preds = %bb.ah, %bb.u
  %.6166 = phi ptr [ %.3163, %bb.u ], [ %.5165, %bb.ah ] ; 2 uses
  %.3159 = phi i32 [ %i.av, %bb.u ], [ %i.ck, %bb.ah ] ; 2 uses
  %.6152.in = phi i32 [ %.3149, %bb.u ], [ %.5151, %bb.ah ]
  %.5145 = phi i32 [ %i.at, %bb.u ], [ %i.cg, %bb.ah ] ; 2 uses
  %.6138 = phi i32 [ %.3135, %bb.u ], [ %.5137, %bb.ah ] ; 2 uses
  %.5131 = phi i32 [ %.2128, %bb.u ], [ %.4130, %bb.ah ] ; 2 uses
  %.6 = phi i64 [ %.3, %bb.u ], [ %.5, %bb.ah ]   ; 2 uses
  %i.cm = shl nuw nsw i32 %.0168249, 1
  %i.cn = and i32 %i.cm, 510
  %i.co = add nuw nsw i8 %.0169248, 1             ; 2 uses
  %.2148 = add i32 %.6152.in, 1                   ; 2 uses
  %exitcond.not = icmp eq i8 %i.co, 8
  br i1 %exitcond.not, label %.loopexit287, label %bb.m

bb.ai:                                            ; preds = %bb.i
  %.not200 = icmp eq i32 %.0140, 0
  br i1 %.not200, label %.loopexit227, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cp = zext i32 %.0140 to i64
  %i.cq = call i64 @cli_writen(i32 noundef %1, ptr noundef nonnull %i.b, i64 noundef %i.cp) #5 ; 2 uses
  %i.cr = icmp ne i64 %i.cq, -1
  %i.cs = trunc i64 %i.cq to i32
  %.not201 = icmp eq i32 %.0140, %i.cs
  %or.cond221 = select i1 %i.cr, i1 %.not201, i1 false
  br i1 %or.cond221, label %2, label %.loopexit227

2:                                                ; preds = %bb.aj
  br label %.loopexit227

.loopexit227:                                     ; preds = %bb.j, %bb.ab, %bb.x, %bb.t, %bb.s, %bb.p, %bb.ag, %bb.af, %2, %bb.ai, %bb.aj, %bb.f, %bb.a, %bb.e
  %.0170 = phi i32 [ 26, %bb.e ], [ 12, %bb.a ], [ 14, %bb.af ], [ 0, %bb.f ], [ 14, %bb.s ], [ 0, %2 ], [ 0, %bb.ai ], [ 14, %bb.aj ], [ 0, %bb.ag ], [ 0, %bb.t ], [ 12, %bb.x ], [ 12, %bb.ab ], [ 12, %bb.p ], [ 12, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0170
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !18, i64 88}
!9 = !{!"cli_ctx_tag", !10, i64 0, !10, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !15, i64 40, !16, i64 48, !5, i64 56, !5, i64 60, !17, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !18, i64 88, !15, i64 96, !19, i64 104, !20, i64 112, !11, i64 120, !21, i64 128, !22, i64 136, !22, i64 144, !23, i64 152, !24, i64 168, !24, i64 169}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 long", !11, i64 0}
!13 = !{!"p1 _ZTS11cli_matcher", !11, i64 0}
!14 = !{!"p1 _ZTS9cl_engine", !11, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"p1 _ZTS15cl_scan_options", !11, i64 0}
!17 = !{!"p1 _ZTS14cli_scan_layer", !11, i64 0}
!18 = !{!"p1 _ZTS7cl_fmap", !11, i64 0}
!19 = !{!"p1 _ZTS9cli_dconf", !11, i64 0}
!20 = !{!"p1 _ZTS10bitset_tag", !11, i64 0}
!21 = !{!"p1 _ZTS10cli_events", !11, i64 0}
!22 = !{!"p1 _ZTS11json_object", !11, i64 0}
!23 = !{!"timeval", !15, i64 0, !15, i64 8}
!24 = !{!"_Bool", !6, i64 0}
!25 = !{!26, !11, i64 104}
!26 = !{!"cl_fmap", !11, i64 0, !11, i64 8, !11, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !24, i64 56, !24, i64 57, !24, i64 58, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !6, i64 152, !6, i64 155, !6, i64 158, !12, i64 256, !10, i64 264, !10, i64 272}
!27 = distinct !{null}
!28 = !{!29, !5, i64 0}
!29 = !{!"msexp_hdr", !5, i64 0, !5, i64 4, !30, i64 8, !5, i64 10}
!30 = !{!"short", !6, i64 0}
!31 = !{!29, !5, i64 4}
!32 = !{!29, !30, i64 8}
!33 = !{!29, !5, i64 10}
!34 = !{!26, !15, i64 88}
!35 = !{!6, !6, i64 0}
end_hunk_0
