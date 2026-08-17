inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BrotliConvertBitDepthsToSymbols:bb.a
.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.c = icmp ult i64 %1, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02124 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !46
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 2, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !46
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 2, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !46
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 2, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !15
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !46
  %i.ad = add i16 %i.ac, 1
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !46
  %i.ae = add nuw i64 %.02124, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !47

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02124.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod76)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02124.epil = phi i64 [ %i.al, %.lr.ph.epil ], [ %.02124.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.02124.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !46
  %i.ak = add i16 %i.aj, 1
  store i16 %i.ak, ptr %i.ai, align 2, !tbaa !46
  %i.al = add nuw i64 %.02124.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !48

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.pre = load i16, ptr %.phi.trans.insert34, align 2, !tbaa !46
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre37 = load i16, ptr %.phi.trans.insert36, align 4, !tbaa !46
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.pre40 = load i16, ptr %.phi.trans.insert39, align 2, !tbaa !46
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre43 = load i16, ptr %.phi.trans.insert42, align 8, !tbaa !46
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.pre46 = load i16, ptr %.phi.trans.insert45, align 2, !tbaa !46
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre49 = load i16, ptr %.phi.trans.insert48, align 4, !tbaa !46
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.pre52 = load i16, ptr %.phi.trans.insert51, align 2, !tbaa !46
  %.phi.trans.insert54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre55 = load i16, ptr %.phi.trans.insert54, align 16, !tbaa !46
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.pre58 = load i16, ptr %.phi.trans.insert57, align 2, !tbaa !46
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre61 = load i16, ptr %.phi.trans.insert60, align 4, !tbaa !46
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.pre64 = load i16, ptr %.phi.trans.insert63, align 2, !tbaa !46
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre67 = load i16, ptr %.phi.trans.insert66, align 8, !tbaa !46
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %.pre70 = load i16, ptr %.phi.trans.insert69, align 2, !tbaa !46
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre73 = load i16, ptr %.phi.trans.insert72, align 4, !tbaa !46
  %i.am = shl i16 %.pre, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.an = phi i16 [ %.pre73, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ao = phi i16 [ %.pre70, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ap = phi i16 [ %.pre67, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.aq = phi i16 [ %.pre64, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ar = phi i16 [ %.pre61, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.as = phi i16 [ %.pre58, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.at = phi i16 [ %.pre55, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.au = phi i16 [ %.pre52, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.av = phi i16 [ %.pre49, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.aw = phi i16 [ %.pre46, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ax = phi i16 [ %.pre43, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ay = phi i16 [ %.pre40, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.az = phi i16 [ %.pre37, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ba = phi i16 [ %i.am, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.bb, align 2, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.ba, ptr %i.bc, align 4, !tbaa !46
  %i.bd = add i16 %i.az, %i.ba
  %i.be = shl i16 %i.bd, 1                        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !46
  %i.bg = add i16 %i.ay, %i.be
  %i.bh = shl i16 %i.bg, 1                        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.bh, ptr %i.bi, align 8, !tbaa !46
  %i.bj = add i16 %i.ax, %i.bh
  %i.bk = shl i16 %i.bj, 1                        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !46
  %i.bm = add i16 %i.aw, %i.bk
  %i.bn = shl i16 %i.bm, 1                        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.bn, ptr %i.bo, align 4, !tbaa !46
  %i.bp = add i16 %i.av, %i.bn
  %i.bq = shl i16 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !46
  %i.bs = add i16 %i.au, %i.bq
  %i.bt = shl i16 %i.bs, 1                        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.bt, ptr %i.bu, align 16, !tbaa !46
  %i.bv = add i16 %i.at, %i.bt
  %i.bw = shl i16 %i.bv, 1                        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !46
  %i.by = add i16 %i.as, %i.bw
  %i.bz = shl i16 %i.by, 1                        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 %i.bz, ptr %i.ca, align 4, !tbaa !46
  %i.cb = add i16 %i.ar, %i.bz
  %i.cc = shl i16 %i.cb, 1                        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !46
  %i.ce = add i16 %i.aq, %i.cc
  %i.cf = shl i16 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.cf, ptr %i.cg, align 8, !tbaa !46
  %i.ch = add i16 %i.ap, %i.cf
  %i.ci = shl i16 %i.ch, 1                        ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !46
  %i.ck = add i16 %i.ao, %i.ci
  %i.cl = shl i16 %i.ck, 1                        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.cl, ptr %i.cm, align 4, !tbaa !46
  %i.cn = add i16 %i.an, %i.cl
  %i.co = shl i16 %i.cn, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !46
  br i1 %.not30, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %._crit_edge, %bb.c
  %.227 = phi i64 [ %i.ee, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.227
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15  ; 3 uses
  %.not = icmp eq i8 %i.cr, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph28
  %i.cs = zext i8 %i.cr to i64                    ; 3 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cs ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !46 ; 4 uses
  %i.cv = add i16 %i.cu, 1
  store i16 %i.cv, ptr %i.ct, align 2, !tbaa !46
  %i.cw = and i16 %i.cu, 15
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @BrotliReverseBits.kLut, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !22 ; 3 uses
  %i.da = icmp ugt i8 %i.cr, 4
  br i1 %i.da, label %.lr.ph.i.preheader, label %BrotliReverseBits.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.db = add nsw i64 %i.cs, -5                   ; 2 uses
  %i.dc = lshr i64 %i.db, 2                       ; 2 uses
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %3 = icmp eq i64 %i.dc, 0
  br i1 %3, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter82 = and i64 %i.dd, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01115.i = phi i64 [ %i.cz, %.lr.ph.i.preheader.new ], [ %i.dr, %.lr.ph.i ]
  %.01214.i = phi i16 [ %i.cu, %.lr.ph.i.preheader.new ], [ %i.dm, %.lr.ph.i ] ; 2 uses
  %niter83 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter83.next.1, %.lr.ph.i ]
  %i.de = lshr i16 %.01214.i, 4
  %i.df = and i16 %i.de, 15
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @BrotliReverseBits.kLut, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !22
  %i.dj = shl i64 %.01115.i, 8
  %i.dk = shl i64 %i.di, 4
  %i.dl = or i64 %i.dj, %i.dk
  %i.dm = lshr i16 %.01214.i, 8                   ; 3 uses
  %i.dn = and i16 %i.dm, 15
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @BrotliReverseBits.kLut, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !22
  %i.dr = or i64 %i.dq, %i.dl                     ; 3 uses
  %niter83.next.1 = add i64 %niter83, 2           ; 2 uses
  %niter83.ncmp.1.not = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1.not, label %BrotliReverseBits.exit.loopexit.unr-lcssa.a, label %.lr.ph.i, !llvm.loop !50

BrotliReverseBits.exit.loopexit.unr-lcssa.a:      ; preds = %.lr.ph.i
  %4 = and i64 %i.db, 4
  %lcmp.mod79.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod79.not.not, label %.lr.ph.i.epil.preheader, label %BrotliReverseBits.exit

.lr.ph.i.epil.preheader:                          ; preds = %BrotliReverseBits.exit.loopexit.unr-lcssa.a, %.lr.ph.i.preheader
  %.01115.i.epil.init.a = phi i64 [ %i.cz, %.lr.ph.i.preheader ], [ %i.dr, %BrotliReverseBits.exit.loopexit.unr-lcssa.a ]
  %.01214.i.epil.init.a = phi i16 [ %i.cu, %.lr.ph.i.preheader ], [ %i.dm, %BrotliReverseBits.exit.loopexit.unr-lcssa.a ]
  %lcmp.mod81 = trunc i64 %i.dd to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.ds = shl i64 %.01115.i.epil.init.a, 4
  %i.dt = lshr i16 %.01214.i.epil.init.a, 4
  %i.du = and i16 %i.dt, 15
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @BrotliReverseBits.kLut, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !22
  %i.dy = or i64 %i.dx, %i.ds
  br label %BrotliReverseBits.exit

BrotliReverseBits.exit:                           ; preds = %.lr.ph.i.epil.preheader, %BrotliReverseBits.exit.loopexit.unr-lcssa.a, %bb.b
  %.011.lcssa.i = phi i64 [ %i.cz, %bb.b ], [ %i.dr, %BrotliReverseBits.exit.loopexit.unr-lcssa.a ], [ %i.dy, %.lr.ph.i.epil.preheader ]
  %i.dz = sub nsw i64 0, %i.cs
  %i.ea = and i64 %i.dz, 3
  %i.eb = lshr i64 %.011.lcssa.i, %i.ea
  %i.ec = trunc i64 %i.eb to i16
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.227
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph28, %BrotliReverseBits.exit
  %i.ee = add nuw i64 %.227, 1                    ; 2 uses
  %exitcond33.not = icmp eq i64 %i.ee, %1
  br i1 %exitcond33.not, label %._crit_edge29, label %.lr.ph28, !llvm.loop !51

._crit_edge29:                                    ; preds = %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !13, i64 4}
!12 = !{!"HuffmanTree", !7, i64 0, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!12, !13, i64 6}
!15 = !{!8, !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!12, !7, i64 0}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !17, !30, !29}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17, !29, !30}
!37 = distinct !{!37, !17, !30, !29}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = !{!13, !13, i64 0}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
end_hunk_0
