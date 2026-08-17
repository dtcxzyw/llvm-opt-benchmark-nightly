begin_hunk_0_@Blit_XRGB8888_RGB555:bb.a
bb.c:                                             ; preds = %bb.b, %bb.f
  %.143 = phi ptr [ %.04249, %bb.b ], [ %i.bp, %bb.f ] ; 2 uses
  %.139 = phi ptr [ %.03850, %bb.b ], [ %i.bo, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.p, %bb.b ], [ %i.bq, %bb.f ]
  %i.u = load i32, ptr %.139, align 4             ; 3 uses
  %i.v = lshr i32 %i.u, 9
  %i.w = and i32 %i.v, 31744
  %i.x = lshr i32 %i.u, 6
  %i.y = and i32 %i.x, 992
  %i.z = or disjoint i32 %i.w, %i.y
  %i.aa = lshr i32 %i.u, 3
  %i.ab = and i32 %i.aa, 31
  %i.ac = or disjoint i32 %i.z, %i.ab
  %i.ad = trunc nuw nsw i32 %i.ac to i16
  store i16 %i.ad, ptr %.143, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.139, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %.143, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.244 = phi ptr [ %i.af, %bb.c ], [ %.04249, %bb.b ] ; 2 uses
  %.240 = phi ptr [ %i.ae, %bb.c ], [ %.03850, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.p, %bb.b ]
  %i.ag = load i32, ptr %.240, align 4            ; 3 uses
  %i.ah = lshr i32 %i.ag, 9
  %i.ai = and i32 %i.ah, 31744
  %i.aj = lshr i32 %i.ag, 6
  %i.ak = and i32 %i.aj, 992
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = lshr i32 %i.ag, 3
  %i.an = and i32 %i.am, 31
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = trunc nuw nsw i32 %i.ao to i16
  store i16 %i.ap, ptr %.244, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.240, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.244, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.345 = phi ptr [ %i.ar, %bb.d ], [ %.04249, %bb.b ] ; 2 uses
  %.341 = phi ptr [ %i.aq, %bb.d ], [ %.03850, %bb.b ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.p, %bb.b ]
  %i.as = load i32, ptr %.341, align 4            ; 3 uses
  %i.at = lshr i32 %i.as, 9
  %i.au = and i32 %i.at, 31744
  %i.av = lshr i32 %i.as, 6
  %i.aw = and i32 %i.av, 992
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = lshr i32 %i.as, 3
  %i.az = and i32 %i.ay, 31
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = trunc nuw nsw i32 %i.ba to i16
  store i16 %i.bb, ptr %.345, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.341, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.345, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.446 = phi ptr [ %i.bd, %bb.e ], [ %.04249, %bb.b ] ; 2 uses
  %.4 = phi ptr [ %i.bc, %bb.e ], [ %.03850, %bb.b ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.e ], [ %i.p, %bb.b ]   ; 2 uses
  %i.be = load i32, ptr %.4, align 4              ; 3 uses
  %i.bf = lshr i32 %i.be, 9
  %i.bg = and i32 %i.bf, 31744
  %i.bh = lshr i32 %i.be, 6
  %i.bi = and i32 %i.bh, 992
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = lshr i32 %i.be, 3
  %i.bl = and i32 %i.bk, 31
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = trunc nuw nsw i32 %i.bm to i16
  store i16 %i.bn, ptr %.446, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.446, i64 2 ; 2 uses
  %i.bq = add nsw i32 %.3, -1
  %i.br = icmp sgt i32 %.3, 1
  br i1 %i.br, label %bb.c, label %bb.g, !llvm.loop !63

default.unreachable53:                            ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.r
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.s
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @get_permutation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 4
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 67305985
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i8, ptr %i.k, align 4
  %i.m = zext nneg i8 %i.l to i32
  %i.n = lshr i32 %i.j, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 67305985
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = lshr i32 %i.x, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.af = load i8, ptr %i.ae, align 2
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 67305985
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.an = load i8, ptr %i.am, align 2
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = lshr i32 %i.al, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq
  %.083.in = load i8, ptr %i.ar, align 1
  %.083 = zext i8 %.083.in to i32                 ; 3 uses
  %.085.in = load i8, ptr %i.ad, align 1
  %.085 = zext i8 %.085.in to i32                 ; 3 uses
  %.087.in = load i8, ptr %i.p, align 1
  %.087 = zext i8 %.087.in to i32                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.at = load i32, ptr %i.as, align 4
  %.not97 = icmp eq i32 %i.at, 0                  ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  br i1 %.not97, label %bb.d, label %bb.c

.thread:                                          ; preds = %bb.a
  br i1 %.not97, label %bb.d, label %.thread119

.thread119:                                       ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = and i32 %i.b, 67305985
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = lshr i32 %i.az, %i.bc
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = zext i8 %i.bj to i32
  %i.bl = sub nsw i32 8, %i.bk
  %i.bm = lshr i32 %.087, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = shl i32 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = sub nsw i32 8, %i.bt
  %i.bv = lshr i32 %.085, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = shl i32 %i.bv, %i.by
  %i.ca = or i32 %i.bz, %i.bq
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.cc = load i8, ptr %i.cb, align 2
  %i.cd = zext i8 %i.cc to i32
  %i.ce = sub nsw i32 8, %i.cd
  %i.cf = lshr i32 %.083, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ch = load i8, ptr %i.cg, align 2
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = shl i32 %i.cf, %i.ci
  %i.ck = or i32 %i.ca, %i.cj
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 27
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = load i8, ptr %i.cl, align 4
  %i.cn = zext i8 %i.cm to i32
  %i.co = sub nsw i32 8, %i.cn
  %i.cp = lshr i32 %.087, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cr = load i8, ptr %i.cq, align 4
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = shl i32 %i.cp, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sub nsw i32 8, %i.cw
  %i.cy = lshr i32 %.085, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = shl i32 %i.cy, %i.db
  %i.dd = or i32 %i.dc, %i.ct
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 26
  br label %bb.e

bb.d:                                             ; preds = %.thread, %bb.b
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load i8, ptr %i.de, align 4
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 8, %i.dg
  %i.di = lshr i32 %.087, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dk = load i8, ptr %i.dj, align 4
  %i.dl = zext nneg i8 %i.dk to i32
  %i.dm = shl i32 %i.di, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i32
  %i.dq = sub nsw i32 8, %i.dp
  %i.dr = lshr i32 %.085, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = shl i32 %i.dr, %i.du
  %i.dw = or i32 %i.dv, %i.dm
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 26
  br label %bb.e

bb.e:                                             ; preds = %.thread119, %bb.c, %bb.d
  %.sink141.in = phi ptr [ %7, %.thread119 ], [ %8, %bb.c ], [ %9, %bb.d ]
  %.sink138.a = phi i32 [ %i.bh, %.thread119 ], [ %.083, %bb.c ], [ %.083, %bb.d ]
  %.sink137 = phi i64 [ 31, %.thread119 ], [ 30, %bb.c ], [ 30, %bb.d ]
  %.sink = phi i32 [ %i.ck, %.thread119 ], [ %i.dd, %bb.c ], [ %i.dw, %bb.d ]
  %.sink141 = load i8, ptr %.sink141.in, align 1
  %i.dx = zext i8 %.sink141 to i32
  %i.dy = sub nsw i32 8, %i.dx
  %i.dz = lshr i32 %.sink138.a, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %.sink137
  %.sink136 = load i8, ptr %i.ea, align 1
  %i.eb = zext nneg i8 %.sink136 to i32
  %i.ec = shl i32 %i.dz, %i.eb
  %i.ed = or i32 %.sink, %i.ec                    ; 4 uses
  %i.ee = and i32 %i.ed, 255                      ; 4 uses
  %i.ef = lshr i32 %i.ed, 8
  %i.eg = and i32 %i.ef, 255                      ; 4 uses
  %i.eh = lshr i32 %i.ed, 16
  %i.ei = and i32 %i.eh, 255                      ; 4 uses
  %i.ej = lshr i32 %i.ed, 24                      ; 5 uses
  %i.ek = icmp eq i32 %i.ee, 0
  br i1 %i.ek, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.el = icmp eq i32 %i.eg, 0
  br i1 %i.el, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = icmp eq i32 %i.ei, 0
  br i1 %i.em, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.en = icmp eq i32 %i.ej, 0
  %spec.select = select i1 %i.en, i32 3, i32 0
  %spec.select100 = tail call i32 @llvm.umax.i32(i32 %i.ej, i32 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.089 = phi i32 [ %spec.select, %bb.h ], [ 0, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ]
  %.188 = phi i32 [ %i.ee, %bb.h ], [ 1, %bb.e ], [ %i.ee, %bb.f ], [ %i.ee, %bb.g ]
  %.186 = phi i32 [ %i.eg, %bb.h ], [ %i.eg, %bb.e ], [ 1, %bb.f ], [ %i.eg, %bb.g ]
  %.184 = phi i32 [ %i.ei, %bb.h ], [ %i.ei, %bb.e ], [ %i.ei, %bb.f ], [ 1, %bb.g ]
  %.1 = phi i32 [ %spec.select100, %bb.h ], [ %i.ej, %bb.e ], [ %i.ej, %bb.f ], [ %i.ej, %bb.g ]
  %i.eo = add nsw i32 %.188, -1
  store i32 %i.eo, ptr %2, align 4
  %i.ep = add nsw i32 %.186, -1
  store i32 %i.ep, ptr %3, align 4
  %i.eq = add nsw i32 %.184, -1
  store i32 %i.eq, ptr %4, align 4
  %i.er = add nsw i32 %.1, -1
  store i32 %i.er, ptr %5, align 4
  %.not99 = icmp eq ptr %6, null
  br i1 %.not99, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.089, ptr %6, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, !4}
!41 = distinct !{!41, !4}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !4}
!47 = distinct !{!47, !4}
!48 = distinct !{!48, !4}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !4}
!55 = distinct !{!55, !4}
!56 = distinct !{!56, !4}
!57 = distinct !{!57, !4}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !4}
!61 = distinct !{!61, !4}
!62 = distinct !{!62, !4}
!63 = distinct !{!63, !4}
!64 = distinct !{!64, !4}
end_hunk_0
