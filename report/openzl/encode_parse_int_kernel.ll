Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_parse_int_kernel?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @ZL_parseInt(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %.critedge78.preheader, label %.lr.ph

.critedge78.preheader:                            ; preds = %ZL_parseInt64_fallback.exit.thread54, %bb.a
  %.042.lcssa = phi ptr [ %1, %bb.a ], [ %i.f, %ZL_parseInt64_fallback.exit.thread54 ]
  %.037.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %ZL_parseInt64_fallback.exit.thread54 ] ; 2 uses
  %i.b = icmp ult i64 %.037.lcssa, %3
  br i1 %i.b, label %.lr.ph93, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %ZL_parseInt64_fallback.exit.thread54
  %.03589 = phi i64 [ %i.aj, %ZL_parseInt64_fallback.exit.thread54 ], [ 0, %bb.a ]
  %.03788 = phi i64 [ %i.ak, %ZL_parseInt64_fallback.exit.thread54 ], [ 0, %bb.a ] ; 3 uses
  %.04287 = phi ptr [ %i.f, %ZL_parseInt64_fallback.exit.thread54 ], [ %1, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03788
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.04287, i64 %i.e ; 4 uses
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load i8, ptr %.04287, align 1, !tbaa !12
  %i.i = icmp eq i8 %i.h, 45                      ; 4 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.04287, i64 1
  %i.k = icmp eq i32 %i.d, 1
  br i1 %i.k, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.037.i = phi ptr [ %i.j, %bb.c ], [ %.04287, %bb.b ] ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %.037.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 20
  br i1 %i.o, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.037.i, align 1, !tbaa !12
  %i.q = icmp eq i8 %i.p, 48
  br i1 %i.q, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %.not50.not.i = icmp eq ptr %i.f, %.037.i
  br i1 %.not50.not.i, label %.critedge.i.thread, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ne i64 %i.n, 1
  %or.cond.i = or i1 %i.i, %i.r
  br i1 %or.cond.i, label %.critedge, label %ZL_parseInt64_fallback.exit.thread54

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.052.i = phi i64 [ %i.ae, %bb.h ], [ 0, %.preheader.i ] ; 2 uses
  %.04851.i = phi i64 [ %i.ad, %bb.h ], [ 0, %.preheader.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.037.i, i64 %.052.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12    ; 2 uses
  %i.u = add i8 %i.t, -58
  %or.cond43.i = icmp ult i8 %i.u, -10
  br i1 %or.cond43.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.v = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.04851.i, i64 10) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = extractvalue { i64, i1 } %i.v, 0
  %i.y = zext nneg i8 %i.t to i64
  %i.z = add nsw i64 %i.y, -48
  %i.aa = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.x, i64 range(i64 -176, 80) %i.z) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = or i1 %i.w, %i.ab
  br i1 %i.ac, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = extractvalue { i64, i1 } %i.aa, 0       ; 4 uses
  %i.ae = add nuw i64 %.052.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.n
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.h
  br i1 %i.i, label %ZL_parseInt64_fallback.exit, label %.split

.critedge.i.thread:                               ; preds = %.preheader.i
  br i1 %i.i, label %ZL_parseInt64_fallback.exit, label %ZL_parseInt64_fallback.exit.thread54

.split:                                           ; preds = %.critedge.i
  %i.af = icmp sgt i64 %i.ad, -1
  br i1 %i.af, label %ZL_parseInt64_fallback.exit.thread54, label %.critedge

ZL_parseInt64_fallback.exit:                      ; preds = %.critedge.i.thread, %.critedge.i
  %.048.lcssa.i71 = phi i64 [ 0, %.critedge.i.thread ], [ %i.ad, %.critedge.i ]
  %i.ag = sub i64 0, %.048.lcssa.i71              ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %ZL_parseInt64_fallback.exit.thread54, label %.critedge

ZL_parseInt64_fallback.exit.thread54:             ; preds = %.critedge.i.thread, %bb.f, %.split, %ZL_parseInt64_fallback.exit
  %.05057 = phi i64 [ %i.ad, %.split ], [ %i.ag, %ZL_parseInt64_fallback.exit ], [ 0, %bb.f ], [ 0, %.critedge.i.thread ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03788
  store i64 %.05057, ptr %i.ai, align 8, !tbaa !15
  %i.aj = add nuw nsw i64 %.03589, %i.e           ; 2 uses
  %i.ak = add nuw i64 %.03788, 1                  ; 3 uses
  %i.al = icmp uge i64 %i.ak, %3
  %i.am = icmp samesign ugt i64 %i.aj, 31
  %.not48 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %.not48, label %.critedge78.preheader, label %.lr.ph, !llvm.loop !16

.lr.ph93:                                         ; preds = %.critedge78.preheader, %ZL_parseInt64Unsafe.exit.thread64
  %.13892 = phi i64 [ %i.bu, %ZL_parseInt64Unsafe.exit.thread64 ], [ %.037.lcssa, %.critedge78.preheader ] ; 3 uses
  %.34591 = phi ptr [ %i.aq, %ZL_parseInt64Unsafe.exit.thread64 ], [ %.042.lcssa, %.critedge78.preheader ] ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.13892
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18 ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.34591, i64 %i.ap ; 3 uses
  %i.ar = icmp eq i32 %i.ao, 0
  br i1 %i.ar, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph93
  %i.as = load i8, ptr %.34591, align 1, !tbaa !12
  %i.at = icmp eq i8 %i.as, 45                    ; 4 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.34591, i64 1
  %i.av = icmp eq i32 %i.ao, 1
  br i1 %i.av, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.037.i.i = phi ptr [ %i.au, %bb.j ], [ %.34591, %bb.i ] ; 4 uses
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = ptrtoint ptr %.037.i.i to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 20
  br i1 %i.az, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load i8, ptr %.037.i.i, align 1, !tbaa !12
  %i.bb = icmp eq i8 %i.ba, 48
  br i1 %i.bb, label %bb.m, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l
  %.not50.not.i.i = icmp eq ptr %i.aq, %.037.i.i
  br i1 %.not50.not.i.i, label %.critedge.i.i.thread, label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.l
  %i.bc = icmp ne i64 %i.ay, 1
  %or.cond.i.i = or i1 %i.at, %i.bc
  br i1 %or.cond.i.i, label %.critedge, label %ZL_parseInt64Unsafe.exit.thread64

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.o
  %.052.i.i = phi i64 [ %i.bp, %bb.o ], [ 0, %.preheader.i.i ] ; 2 uses
  %.04851.i.i = phi i64 [ %i.bo, %bb.o ], [ 0, %.preheader.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 %.052.i.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !12  ; 2 uses
  %i.bf = add i8 %i.be, -58
  %or.cond43.i.i = icmp ult i8 %i.bf, -10
  br i1 %or.cond43.i.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bg = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.04851.i.i, i64 10) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  %i.bj = zext nneg i8 %i.be to i64
  %i.bk = add nsw i64 %i.bj, -48
  %i.bl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bi, i64 range(i64 -176, 80) %i.bk) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  %i.bn = or i1 %i.bh, %i.bm
  br i1 %i.bn, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = extractvalue { i64, i1 } %i.bl, 0       ; 4 uses
  %i.bp = add nuw i64 %.052.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bp, %i.ay
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %bb.o
  br i1 %i.at, label %ZL_parseInt64Unsafe.exit, label %.split68

.critedge.i.i.thread:                             ; preds = %.preheader.i.i
  br i1 %i.at, label %ZL_parseInt64Unsafe.exit, label %ZL_parseInt64Unsafe.exit.thread64

.split68:                                         ; preds = %.critedge.i.i
  %i.bq = icmp sgt i64 %i.bo, -1
  br i1 %i.bq, label %ZL_parseInt64Unsafe.exit.thread64, label %.critedge

ZL_parseInt64Unsafe.exit:                         ; preds = %.critedge.i.i.thread, %.critedge.i.i
  %.048.lcssa.i.i76 = phi i64 [ 0, %.critedge.i.i.thread ], [ %i.bo, %.critedge.i.i ]
  %i.br = sub i64 0, %.048.lcssa.i.i76            ; 2 uses
  %i.bs = icmp slt i64 %i.br, 1
  br i1 %i.bs, label %ZL_parseInt64Unsafe.exit.thread64, label %.critedge

ZL_parseInt64Unsafe.exit.thread64:                ; preds = %.critedge.i.i.thread, %bb.m, %.split68, %ZL_parseInt64Unsafe.exit
  %.067 = phi i64 [ %i.bo, %.split68 ], [ %i.br, %ZL_parseInt64Unsafe.exit ], [ 0, %bb.m ], [ 0, %.critedge.i.i.thread ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.13892
  store i64 %.067, ptr %i.bt, align 8, !tbaa !15
  %i.bu = add nuw i64 %.13892, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph93, !llvm.loop !17

.critedge:                                        ; preds = %ZL_parseInt64_fallback.exit, %.split, %.lr.ph, %bb.c, %bb.f, %bb.d, %bb.g, %.lr.ph.i, %ZL_parseInt64Unsafe.exit.thread64, %.split68, %ZL_parseInt64Unsafe.exit, %.lr.ph93, %bb.j, %bb.m, %bb.k, %.lr.ph.i.i, %bb.n, %.critedge78.preheader
  %.5 = phi i1 [ false, %bb.k ], [ false, %bb.g ], [ true, %.critedge78.preheader ], [ false, %.lr.ph.i.i ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.j ], [ false, %.lr.ph93 ], [ false, %ZL_parseInt64Unsafe.exit ], [ false, %.split68 ], [ true, %ZL_parseInt64Unsafe.exit.thread64 ], [ false, %.lr.ph.i ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %.split ], [ false, %ZL_parseInt64_fallback.exit ]
  ret i1 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define zeroext i1 @ZL_parseInt64_fallback(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !12
  %i.c = icmp eq i8 %i.b, 45                      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = icmp eq ptr %i.d, %2
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.037 = phi ptr [ %i.d, %bb.c ], [ %1, %bb.b ]  ; 4 uses
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %.037 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp ugt i64 %i.h, 20
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %.037, align 1, !tbaa !12
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not50.not = icmp eq ptr %2, %.037
  br i1 %.not50.not, label %.critedge, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.l = icmp ne i64 %i.h, 1
  %or.cond = or i1 %i.c, %i.l
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %0, align 8, !tbaa !15
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.052 = phi i64 [ %i.y, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %.04851 = phi i64 [ %i.x, %bb.i ], [ 0, %.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.037, i64 %.052
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12    ; 2 uses
  %i.o = add i8 %i.n, -58
  %or.cond43 = icmp ult i8 %i.o, -10
  br i1 %or.cond43, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.p = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.04851, i64 10) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = zext nneg i8 %i.n to i64
  %i.t = add nsw i64 %i.s, -48
  %i.u = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.r, i64 range(i64 -176, 80) %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  %i.w = or i1 %i.q, %i.v
  br i1 %i.w, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %i.y = add nuw i64 %.052, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.h
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %bb.i, %.preheader
  %.048.lcssa = phi i64 [ 0, %.preheader ], [ %i.x, %bb.i ] ; 3 uses
  br i1 %i.c, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.z = sub i64 0, %.048.lcssa                   ; 2 uses
  store i64 %i.z, ptr %0, align 8, !tbaa !15
  %i.aa = icmp slt i64 %i.z, 1
  br label %.loopexit

bb.k:                                             ; preds = %.critedge
  store i64 %.048.lcssa, ptr %0, align 8, !tbaa !15
  %i.ab = icmp sgt i64 %.048.lcssa, -1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.j, %bb.k, %bb.c, %bb.f, %bb.d, %bb.g, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.d ], [ true, %bb.g ], [ %i.aa, %bb.j ], [ %i.ab, %bb.k ], [ false, %bb.h ], [ false, %.lr.ph ]
  ret i1 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define zeroext i1 @ZL_parseInt64Unsafe(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %ZL_parseInt64_fallback.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !12
  %i.c = icmp eq i8 %i.b, 45                      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = icmp eq ptr %i.d, %2
  br i1 %i.e, label %ZL_parseInt64_fallback.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.037.i = phi ptr [ %i.d, %bb.c ], [ %1, %bb.b ] ; 4 uses
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %.037.i to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp ugt i64 %i.h, 20
  br i1 %i.i, label %ZL_parseInt64_fallback.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %.037.i, align 1, !tbaa !12
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %.not50.not.i = icmp eq ptr %2, %.037.i
  br i1 %.not50.not.i, label %.critedge.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.l = icmp ne i64 %i.h, 1
  %or.cond.i = or i1 %i.c, %i.l
  br i1 %or.cond.i, label %ZL_parseInt64_fallback.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %0, align 8, !tbaa !15
  br label %ZL_parseInt64_fallback.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.052.i = phi i64 [ %i.y, %bb.i ], [ 0, %.preheader.i ] ; 2 uses
  %.04851.i = phi i64 [ %i.x, %bb.i ], [ 0, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.037.i, i64 %.052.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12    ; 2 uses
  %i.o = add i8 %i.n, -58
  %or.cond43.i = icmp ult i8 %i.o, -10
  br i1 %or.cond43.i, label %ZL_parseInt64_fallback.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.p = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.04851.i, i64 10) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = zext nneg i8 %i.n to i64
  %i.t = add nsw i64 %i.s, -48
  %i.u = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.r, i64 range(i64 -176, 80) %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  %i.w = or i1 %i.q, %i.v
  br i1 %i.w, label %ZL_parseInt64_fallback.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %i.y = add nuw i64 %.052.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.h
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.i, %.preheader.i
  %.048.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.x, %bb.i ] ; 3 uses
  br i1 %i.c, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.i
  %i.z = sub i64 0, %.048.lcssa.i                 ; 2 uses
  store i64 %i.z, ptr %0, align 8, !tbaa !15
  %i.aa = icmp slt i64 %i.z, 1
  br label %ZL_parseInt64_fallback.exit

bb.k:                                             ; preds = %.critedge.i
  store i64 %.048.lcssa.i, ptr %0, align 8, !tbaa !15
  %i.ab = icmp sgt i64 %.048.lcssa.i, -1
  br label %ZL_parseInt64_fallback.exit

ZL_parseInt64_fallback.exit:                      ; preds = %.lr.ph.i, %bb.h, %bb.a, %bb.c, %bb.d, %bb.f, %bb.g, %bb.j, %bb.k
  %.6.i = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.d ], [ true, %bb.g ], [ %i.aa, %bb.j ], [ %i.ab, %bb.k ], [ false, %bb.h ], [ false, %.lr.ph.i ]
  ret i1 %.6.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !13}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
end_hunk_0
