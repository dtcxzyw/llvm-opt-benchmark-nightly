Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaGlitch?download=true
inline.NumInlined: 137
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Gli_ManSetPiFromSaved:bb.a
  store i32 %spec.select.sink.i, ptr %i.w, align 8, !tbaa !18
  %.pre = load i32, ptr %i.z, align 4, !tbaa !17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.as = phi i32 [ %i.aa, %bb.d ], [ %i.aa, %bb.i ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19
  %i.av = add nsw i32 %i.as, 1
  store i32 %i.av, ptr %i.z, align 4, !tbaa !17
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %i.y, ptr %i.ax, align 4, !tbaa !31
  %i.ay = load i32, ptr %i.o, align 8
  %i.az = xor i32 %i.ay, 6
  store i32 %i.az, ptr %i.o, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.bb = load <2 x i32>, ptr %i.ba, align 4, !tbaa !33
  %i.bc = add nsw <2 x i32> %i.bb, splat (i32 1)
  store <2 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !33
  %.pre24 = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %i.bd = phi ptr [ %i.j, %bb.c ], [ %.pre24, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %.val18 = load i32, ptr %i.be, align 4, !tbaa !17
  %i.bf = sext i32 %.val18 to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.b, label %.critedge, !llvm.loop !43

.critedge:                                        ; preds = %bb.b, %bb.n, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gli_ManSwitching(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %i.e = phi i32 [ %i.cj, %bb.k ], [ %i.c, %bb.a ] ; 2 uses
  %.014 = phi i32 [ %i.co, %bb.k ], [ 0, %bb.a ]  ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.f = zext nneg i32 %.014 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.f ; 18 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.val13 = load i32, ptr %i.g, align 8           ; 6 uses
  %i.h = and i32 %.val13, 1
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = lshr exact i32 %.val13, 1
  %i.j = lshr i32 %.val13, 4
  %i.k = and i32 %i.j, 7                          ; 7 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %Gli_NodeComputeValue.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.o
  %i.q = load i32, ptr %i.p, align 8
  %i.r = lshr i32 %i.q, 1
  %i.s = and i32 %i.r, 1                          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.k, 1
  br i1 %exitcond.not.i, label %Gli_NodeComputeValue.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31
  %i.v = sext i32 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.w
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 2
  %i.aa = or disjoint i32 %i.z, %i.s              ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.k, 2
  br i1 %exitcond.not.i.1, label %Gli_NodeComputeValue.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = shl i32 %i.ag, 1
  %i.ai = and i32 %i.ah, 4
  %i.aj = or disjoint i32 %i.ai, %i.aa            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.k, 3
  br i1 %exitcond.not.i.2, label %Gli_NodeComputeValue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !31
  %i.am = sext i32 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = shl i32 %i.ap, 2
  %i.ar = and i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ar, %i.aj            ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.k, 4
  br i1 %exitcond.not.i.3, label %Gli_NodeComputeValue.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = shl i32 %i.ay, 3
  %i.ba = and i32 %i.az, 16
  %i.bb = or disjoint i32 %i.ba, %i.as            ; 2 uses
  %exitcond.not.i.4 = icmp eq i32 %i.k, 5
  br i1 %exitcond.not.i.4, label %Gli_NodeComputeValue.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !31
  %i.be = sext i32 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = shl i32 %i.bh, 4
  %i.bj = and i32 %i.bi, 32
  %i.bk = or disjoint i32 %i.bj, %i.bb            ; 2 uses
  %exitcond.not.i.5 = icmp eq i32 %i.k, 6
  br i1 %exitcond.not.i.5, label %Gli_NodeComputeValue.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = shl i32 %i.bq, 5
  %i.bs = and i32 %i.br, 64
  %i.bt = or i32 %i.bs, %i.bk
  br label %Gli_NodeComputeValue.exit

Gli_NodeComputeValue.exit:                        ; preds = %.lr.ph.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.s, %.lr.ph.i ], [ %i.aa, %bb.d ], [ %i.aj, %bb.e ], [ %i.as, %bb.f ], [ %i.bb, %bb.g ], [ %i.bk, %bb.h ], [ %i.bt, %bb.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bw = lshr i32 %.0.lcssa.i, 5
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !31
  %i.ca = and i32 %.0.lcssa.i, 31
  %i.cb = lshr i32 %i.bz, %i.ca
  %i.cc = xor i32 %i.cb, %i.i
  %i.cd = and i32 %i.cc, 1
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Gli_NodeComputeValue.exit
  %i.cf = xor i32 %.val13, 2                      ; 2 uses
  store i32 %i.cf, ptr %i.g, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !33
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !33
  %.pre = load i32, ptr %i.b, align 8, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %Gli_NodeComputeValue.exit
  %i.cj = phi i32 [ %.pre, %bb.j ], [ %i.e, %bb.b ], [ %i.e, %Gli_NodeComputeValue.exit ] ; 2 uses
  %.val12 = phi i32 [ %i.cf, %bb.j ], [ %.val13, %bb.b ], [ %.val13, %Gli_NodeComputeValue.exit ] ; 2 uses
  %i.ck = lshr i32 %.val12, 4
  %i.cl = and i32 %i.ck, 7
  %i.cm = lshr i32 %.val12, 7
  %i.cn = add nuw nsw i32 %.014, 8
  %narrow.i = add nuw nsw i32 %i.cn, %i.cm
  %i.co = add nuw nsw i32 %narrow.i, %i.cl        ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.cj
  br i1 %i.cp, label %.lr.ph, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %.lr.ph, %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gli_ManGlitching(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val5678 = load i32, ptr %i.f, align 4, !tbaa !17
  %i.g = icmp sgt i32 %.val5678, 0
  br i1 %i.g, label %.lr.ph, label %.critedge._crit_edge

.critedge.preheader:                              ; preds = %Vec_IntPush.exit
  %.pre103 = load ptr, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre103, i64 4
  %.val5592.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !17
  %i.h = icmp sgt i32 %.val5592.pre, 0
  br i1 %i.h, label %.lr.ph93, label %.critedge._crit_edge

.lr.ph93:                                         ; preds = %.critedge.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.pre105.a = load ptr, ptr %i.i, align 8, !tbaa !24
  br label %bb.k

.lr.ph:                                           ; preds = %bb.a, %Vec_IntPush.exit
  %i.k = phi ptr [ %i.ai, %Vec_IntPush.exit ], [ %i.e, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val59 = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val59, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17   ; 7 uses
  %i.r = load i32, ptr %i.o, align 8, !tbaa !18
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %.lr.ph
  %i.t = icmp slt i32 %i.q, 16
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.y = phi ptr [ %i.w, %bb.d ], [ %i.x, %bb.e ]
  store ptr %i.y, ptr %i.u, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.z = icmp samesign ult i32 %i.q, 1073741823
  %i.aa = shl nuw nsw i32 %i.q, 1
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.q, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ac, null
  %i.ad = zext nneg i32 %spec.select.i to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef %i.ae) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ae) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.af, %bb.h ], [ %i.ag, %bb.i ]
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.o, align 8, !tbaa !18
  %.pre = load i32, ptr %i.p, align 4, !tbaa !17
  %.pre102 = load ptr, ptr %i.d, align 8, !tbaa !22
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.ai = phi ptr [ %i.k, %.lr.ph ], [ %i.k, %bb.f ], [ %.pre102, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aj = phi i32 [ %i.q, %.lr.ph ], [ %i.q, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.am = add nsw i32 %i.aj, 1
  store i32 %i.am, ptr %i.p, align 4, !tbaa !17
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.n, ptr %i.ao, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ai, i64 4
  %.val56 = load i32, ptr %i.ap, align 4, !tbaa !17
  %i.aq = sext i32 %.val56 to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.critedge.preheader, !llvm.loop !44

bb.k:                                             ; preds = %.lr.ph93, %.critedge6
  %i.as = phi ptr [ %.pre103, %.lr.ph93 ], [ %i.hz, %.critedge6 ] ; 5 uses
  %i.at = phi ptr [ %.pre105.a, %.lr.ph93 ], [ %i.ia, %.critedge6 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !17
  %i.av = getelementptr i8, ptr %i.as, i64 4
  %.val5483 = load i32, ptr %i.av, align 4, !tbaa !17
  %i.aw = icmp sgt i32 %.val5483, 0
  br i1 %i.aw, label %.lr.ph85, label %.critedge2

.lr.ph85:                                         ; preds = %bb.k, %.critedge4
  %i.ax = phi ptr [ %i.cy, %.critedge4 ], [ %i.as, %bb.k ] ; 2 uses
  %i.ay = phi ptr [ %i.cz, %.critedge4 ], [ %i.as, %bb.k ] ; 3 uses
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.critedge4 ], [ 0, %bb.k ] ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val58 = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val58, i64 %indvars.iv96
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !31
  %.val52 = load ptr, ptr %i.j, align 8, !tbaa !26 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val52, i64 %i.bc ; 4 uses
  %.not = icmp eq ptr %.val52, null
  br i1 %.not, label %.critedge2.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph85
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %.not94 = icmp ult i32 %i.be, 128
  br i1 %.not94, label %.critedge4, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph81, %bb.w
  %i.bg = phi i32 [ %i.be, %.lr.ph81 ], [ %i.cu, %bb.w ] ; 2 uses
  %.080 = phi i32 [ 0, %.lr.ph81 ], [ %i.cv, %bb.w ] ; 2 uses
  %i.bh = lshr i32 %i.bg, 4
  %i.bi = and i32 %i.bh, 7
  %i.bj = add nuw nsw i32 %i.bi, %.080
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bn ; 3 uses
  %.val60 = load i32, ptr %i.bo, align 8          ; 3 uses
  %i.bp = and i32 %.val60, 113
  %narrow.i = icmp ne i32 %i.bp, 17
  %i.bq = and i32 %.val60, 8
  %.not51 = icmp eq i32 %i.bq, 0
  %or.cond = and i1 %narrow.i, %.not51
  br i1 %or.cond, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.br = or disjoint i32 %.val60, 8
  store i32 %i.br, ptr %i.bo, align 8
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !24  ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17 ; 7 uses
  %i.bx = load i32, ptr %i.bs, align 8, !tbaa !18
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.n, label %Vec_IntPush.exit68

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp slt i32 %i.bw, 16
  br i1 %i.bz, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !19 ; 2 uses
  %.not9.i.i66 = icmp eq ptr %i.cb, null
  br i1 %.not9.i.i66, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i67

bb.q:                                             ; preds = %bb.o
  %i.cd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i67

Vec_IntGrow.exit.i67:                             ; preds = %bb.q, %bb.p
  %i.ce = phi ptr [ %i.cc, %bb.p ], [ %i.cd, %bb.q ]
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i64

bb.r:                                             ; preds = %bb.n
  %i.cf = icmp samesign ult i32 %i.bw, 1073741823
  %i.cg = shl nuw nsw i32 %i.bw, 1
  %spec.select.i61 = select i1 %i.cf, i32 %i.cg, i32 2147483647 ; 3 uses
  %.not.i9.i62 = icmp samesign ult i32 %i.bw, %spec.select.i61
  br i1 %.not.i9.i62, label %bb.s, label %Vec_IntPush.exit68

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19 ; 2 uses
  %.not9.i10.i63 = icmp eq ptr %i.ci, null
  %i.cj = zext nneg i32 %spec.select.i61 to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  br i1 %.not9.i10.i63, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = tail call ptr @realloc(ptr noundef nonnull %i.ci, i64 noundef %i.ck) #27
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.ck) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cn = phi ptr [ %i.cl, %bb.t ], [ %i.cm, %bb.u ]
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i64

Vec_IntGrow.exit11.sink.split.i64:                ; preds = %bb.v, %Vec_IntGrow.exit.i67
  %spec.select.sink.i65 = phi i32 [ %spec.select.i61, %bb.v ], [ 16, %Vec_IntGrow.exit.i67 ]
  store i32 %spec.select.sink.i65, ptr %i.bs, align 8, !tbaa !18
  %.pre106.a = load i32, ptr %i.bv, align 4, !tbaa !17
  br label %Vec_IntPush.exit68

Vec_IntPush.exit68:                               ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i64
  %i.co = phi i32 [ %i.bw, %bb.m ], [ %i.bw, %bb.r ], [ %.pre106.a, %Vec_IntGrow.exit11.sink.split.i64 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !19
  %i.cr = add nsw i32 %i.co, 1
  store i32 %i.cr, ptr %i.bv, align 4, !tbaa !17
  %i.cs = sext i32 %i.co to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cs
  store i32 %i.bu, ptr %i.ct, align 4, !tbaa !31
  %.pre107.a = load i32, ptr %i.bd, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %Vec_IntPush.exit68
  %i.cu = phi i32 [ %i.bg, %bb.l ], [ %.pre107.a, %Vec_IntPush.exit68 ] ; 2 uses
  %i.cv = add nuw nsw i32 %.080, 1                ; 2 uses
  %i.cw = lshr i32 %i.cu, 7
  %i.cx = icmp samesign ult i32 %i.cv, %i.cw
  br i1 %i.cx, label %bb.l, label %.critedge4.loopexit, !llvm.loop !45

.critedge4.loopexit:                              ; preds = %bb.w
  %.pre108.a = load ptr, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.preheader
  %i.cy = phi ptr [ %.pre108.a, %.critedge4.loopexit ], [ %i.ax, %.preheader ] ; 2 uses
  %i.cz = phi ptr [ %.pre108.a, %.critedge4.loopexit ], [ %i.ay, %.preheader ] ; 3 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 4
  %.val54 = load i32, ptr %i.da, align 4, !tbaa !17
  %i.db = sext i32 %.val54 to i64
  %i.dc = icmp slt i64 %indvars.iv.next97, %i.db
  br i1 %i.dc, label %.lr.ph85, label %.critedge2.loopexit, !llvm.loop !46

.critedge2.loopexit:                              ; preds = %.critedge4, %.lr.ph85
  %i.dd = phi ptr [ %i.ax, %.lr.ph85 ], [ %i.cy, %.critedge4 ]
  %.lcssa82.ph = phi ptr [ %i.ay, %.lr.ph85 ], [ %i.cz, %.critedge4 ]
  %.pre109.a = load ptr, ptr %i.i, align 8, !tbaa !24
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.k
  %i.de = phi ptr [ %i.as, %bb.k ], [ %i.dd, %.critedge2.loopexit ]
  %i.df = phi ptr [ %i.at, %bb.k ], [ %.pre109.a, %.critedge2.loopexit ] ; 3 uses
  %.lcssa82 = phi ptr [ %i.as, %bb.k ], [ %.lcssa82.ph, %.critedge2.loopexit ]
  %i.dg = getelementptr i8, ptr %.lcssa82, i64 4
  store i32 0, ptr %i.dg, align 4, !tbaa !17
  %i.dh = getelementptr i8, ptr %i.df, i64 4
  %.val5388 = load i32, ptr %i.dh, align 4, !tbaa !17
  %i.di = icmp sgt i32 %.val5388, 0
  br i1 %i.di, label %.lr.ph90, label %.critedge6

.lr.ph90:                                         ; preds = %.critedge2, %bb.ao
  %i.dj = phi ptr [ %i.hu, %bb.ao ], [ %i.df, %.critedge2 ] ; 2 uses
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.ao ], [ 0, %.critedge2 ] ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %.val57 = load ptr, ptr %i.dk, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val57, i64 %indvars.iv99
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !31
  %.val = load ptr, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.dn ; 20 uses
  %.not49 = icmp eq ptr %.val, null
  br i1 %.not49, label %.critedge6.loopexit, label %bb.x

bb.x:                                             ; preds = %.lr.ph90
  %i.dp = load i32, ptr %i.do, align 8            ; 3 uses
  %i.dq = and i32 %i.dp, -9                       ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8
  %i.dr = lshr i32 %i.dp, 2
  %i.ds = lshr i32 %i.dp, 4
  %i.dt = and i32 %i.ds, 7                        ; 7 uses
  %.not.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i, label %Gli_NodeComputeValue2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !31
  %i.dw = sext i32 %i.dv to i64
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = lshr i32 %i.dz, 2
end_hunk_0
begin_hunk_1_@Gli_ManGlitching:bb.a
  %exitcond.not.i = icmp eq i32 %i.dt, 1
  br i1 %exitcond.not.i, label %Gli_NodeComputeValue2.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !31
  %i.ee = sext i32 %i.ed to i64
  %i.ef = sub nsw i64 0, %i.ee
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = lshr i32 %i.eh, 1
  %i.ej = and i32 %i.ei, 2
  %i.ek = or disjoint i32 %i.ej, %i.eb            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.dt, 2
  br i1 %exitcond.not.i.1, label %Gli_NodeComputeValue2.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.em = load i32, ptr %i.el, align 4, !tbaa !31
  %i.en = sext i32 %i.em to i64
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 8
  %i.er = and i32 %i.eq, 4
  %i.es = or disjoint i32 %i.er, %i.ek            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.dt, 3
  br i1 %exitcond.not.i.2, label %Gli_NodeComputeValue2.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !31
  %i.ev = sext i32 %i.eu to i64
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = shl i32 %i.ey, 1
  %i.fa = and i32 %i.ez, 8
  %i.fb = or disjoint i32 %i.fa, %i.es            ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.dt, 4
  br i1 %exitcond.not.i.3, label %Gli_NodeComputeValue2.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !31
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = shl i32 %i.fh, 2
  %i.fj = and i32 %i.fi, 16
  %i.fk = or disjoint i32 %i.fj, %i.fb            ; 2 uses
  %exitcond.not.i.4 = icmp eq i32 %i.dt, 5
  br i1 %exitcond.not.i.4, label %Gli_NodeComputeValue2.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fl = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !31
  %i.fn = sext i32 %i.fm to i64
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = shl i32 %i.fq, 3
  %i.fs = and i32 %i.fr, 32
  %i.ft = or disjoint i32 %i.fs, %i.fk            ; 2 uses
  %exitcond.not.i.5 = icmp eq i32 %i.dt, 6
  br i1 %exitcond.not.i.5, label %Gli_NodeComputeValue2.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw i8, ptr %i.do, i64 52
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !31
  %i.fw = sext i32 %i.fv to i64
  %i.fx = sub nsw i64 0, %i.fw
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 8
  %i.ga = shl i32 %i.fz, 4
  %i.gb = and i32 %i.ga, 64
  %i.gc = or i32 %i.gb, %i.ft
  br label %Gli_NodeComputeValue2.exit

Gli_NodeComputeValue2.exit:                       ; preds = %.lr.ph.i, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.x
  %.0.lcssa.i = phi i32 [ 0, %bb.x ], [ %i.eb, %.lr.ph.i ], [ %i.ek, %bb.y ], [ %i.es, %bb.z ], [ %i.fb, %bb.aa ], [ %i.fk, %bb.ab ], [ %i.ft, %bb.ac ], [ %i.gc, %bb.ad ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !36
  %i.gf = lshr i32 %.0.lcssa.i, 5
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !31
  %i.gj = and i32 %.0.lcssa.i, 31
  %i.gk = lshr i32 %i.gi, %i.gj
  %i.gl = xor i32 %i.gk, %i.dr
  %i.gm = and i32 %i.gl, 1
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %Gli_NodeComputeValue2.exit
  %i.go = xor i32 %i.dq, 4
  store i32 %i.go, ptr %i.do, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !33
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 8, !tbaa !33
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !23  ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !30
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 4 ; 3 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !17 ; 7 uses
  %i.gx = load i32, ptr %i.gs, align 8, !tbaa !18
  %i.gy = icmp eq i32 %i.gw, %i.gx
  br i1 %i.gy, label %bb.af, label %Vec_IntPush.exit76

bb.af:                                            ; preds = %bb.ae
  %i.gz = icmp slt i32 %i.gw, 16
  br i1 %i.gz, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !19 ; 2 uses
  %.not9.i.i74 = icmp eq ptr %i.hb, null
  br i1 %.not9.i.i74, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hb, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i75

bb.ai:                                            ; preds = %bb.ag
  %i.hd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i75

Vec_IntGrow.exit.i75:                             ; preds = %bb.ai, %bb.ah
  %i.he = phi ptr [ %i.hc, %bb.ah ], [ %i.hd, %bb.ai ]
  store ptr %i.he, ptr %i.ha, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i72

bb.aj:                                            ; preds = %bb.af
  %i.hf = icmp samesign ult i32 %i.gw, 1073741823
  %i.hg = shl nuw nsw i32 %i.gw, 1
  %spec.select.i69 = select i1 %i.hf, i32 %i.hg, i32 2147483647 ; 3 uses
  %.not.i9.i70 = icmp samesign ult i32 %i.gw, %spec.select.i69
  br i1 %.not.i9.i70, label %bb.ak, label %Vec_IntPush.exit76

bb.ak:                                            ; preds = %bb.aj
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !19 ; 2 uses
  %.not9.i10.i71 = icmp eq ptr %i.hi, null
  %i.hj = zext nneg i32 %spec.select.i69 to i64
  %i.hk = shl nuw nsw i64 %i.hj, 2                ; 2 uses
  br i1 %.not9.i10.i71, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hl = tail call ptr @realloc(ptr noundef nonnull %i.hi, i64 noundef %i.hk) #27
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hm = tail call noalias ptr @malloc(i64 noundef %i.hk) #25
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hn = phi ptr [ %i.hl, %bb.al ], [ %i.hm, %bb.am ]
  store ptr %i.hn, ptr %i.hh, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i72

Vec_IntGrow.exit11.sink.split.i72:                ; preds = %bb.an, %Vec_IntGrow.exit.i75
  %spec.select.sink.i73 = phi i32 [ %spec.select.i69, %bb.an ], [ 16, %Vec_IntGrow.exit.i75 ]
  store i32 %spec.select.sink.i73, ptr %i.gs, align 8, !tbaa !18
  %.pre110.a = load i32, ptr %i.gv, align 4, !tbaa !17
  br label %Vec_IntPush.exit76

Vec_IntPush.exit76:                               ; preds = %bb.ae, %bb.aj, %Vec_IntGrow.exit11.sink.split.i72
  %i.ho = phi i32 [ %i.gw, %bb.ae ], [ %i.gw, %bb.aj ], [ %.pre110.a, %Vec_IntGrow.exit11.sink.split.i72 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !19
  %i.hr = add nsw i32 %i.ho, 1
  store i32 %i.hr, ptr %i.gv, align 4, !tbaa !17
  %i.hs = sext i32 %i.ho to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hs
  store i32 %i.gu, ptr %i.ht, align 4, !tbaa !31
  br label %bb.ao

bb.ao:                                            ; preds = %Gli_NodeComputeValue2.exit, %Vec_IntPush.exit76
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.hu = load ptr, ptr %i.i, align 8, !tbaa !24  ; 3 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 4
  %.val53 = load i32, ptr %i.hv, align 4, !tbaa !17
  %i.hw = sext i32 %.val53 to i64
  %i.hx = icmp slt i64 %indvars.iv.next100, %i.hw
  br i1 %i.hx, label %.lr.ph90, label %.critedge6.loopexit, !llvm.loop !47

.critedge6.loopexit:                              ; preds = %bb.ao, %.lr.ph90
  %i.hy = phi ptr [ %i.hu, %bb.ao ], [ %i.dj, %.lr.ph90 ]
  %.pre111 = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge2
  %i.hz = phi ptr [ %.pre111, %.critedge6.loopexit ], [ %i.de, %.critedge2 ] ; 2 uses
  %i.ia = phi ptr [ %i.hy, %.critedge6.loopexit ], [ %i.df, %.critedge2 ]
  %i.ib = getelementptr i8, ptr %i.hz, i64 4
  %.val55 = load i32, ptr %i.ib, align 4, !tbaa !17
  %i.ic = icmp sgt i32 %.val55, 0
  br i1 %i.ic, label %bb.k, label %.critedge._crit_edge, !llvm.loop !48

.critedge._crit_edge:                             ; preds = %.critedge6, %bb.a, %.critedge.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @Gli_ManVerify(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
.critedge:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gli_ManSimulateSeqNode(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %.val = load i32, ptr %1, align 8
  %i.a = lshr i32 %.val, 4
  %i.b = and i32 %i.a, 7                          ; 12 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge.preheader.split, label %.lr.ph

.preheader.us.preheader:                          ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %.lr.ph
  %.sroa.12.0 = phi i32 [ undef, %.lr.ph ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ %i.bt, %bb.k ]
  %.sroa.10.0 = phi i32 [ undef, %.lr.ph ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.bm, %bb.j ], [ %i.bm, %bb.k ]
  %.sroa.8.0 = phi i32 [ undef, %.lr.ph ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.bf, %bb.i ], [ %i.bf, %bb.j ], [ %i.bf, %bb.k ]
  %.sroa.6.0 = phi i32 [ undef, %.lr.ph ], [ undef, %bb.g ], [ %i.ay, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %bb.j ], [ %i.ay, %bb.k ]
  %.sroa.4.0 = phi i32 [ undef, %.lr.ph ], [ %i.ar, %bb.g ], [ %i.ar, %bb.h ], [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %i.ar, %bb.k ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %exitcond50.not = icmp eq i32 %i.b, 1
  %exitcond50.not.1 = icmp eq i32 %i.b, 2
  %exitcond50.not.2 = icmp eq i32 %i.b, 3
  %exitcond50.not.3 = icmp eq i32 %i.b, 4
  %exitcond50.not.4 = icmp eq i32 %i.b, 5
  %exitcond50.not.5 = icmp eq i32 %i.b, 6
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.12334.us = phi i32 [ %i.z, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.02433.us = phi i32 [ %.125.us, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %i.e = shl nuw i32 1, %.12334.us                ; 6 uses
  %i.f = lshr i32 %i.ak, %.12334.us
  %i.g = and i32 %i.f, 1                          ; 2 uses
  br i1 %exitcond50.not, label %._crit_edge.us, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.h = and i32 %.sroa.4.0, %i.e
  %.not28.us.1 = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not28.us.1, i32 0, i32 2
  %.1.us.1 = or disjoint i32 %i.i, %i.g           ; 2 uses
  br i1 %exitcond50.not.1, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %.sroa.6.0, %i.e
  %.not28.us.2 = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not28.us.2, i32 0, i32 4
  %.1.us.2 = or disjoint i32 %i.k, %.1.us.1       ; 2 uses
  br i1 %exitcond50.not.2, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %.sroa.8.0, %i.e
  %.not28.us.3 = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not28.us.3, i32 0, i32 8
  %.1.us.3 = or disjoint i32 %i.m, %.1.us.2       ; 2 uses
  br i1 %exitcond50.not.3, label %._crit_edge.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %.sroa.10.0, %i.e
  %.not28.us.4 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not28.us.4, i32 0, i32 16
  %.1.us.4 = or disjoint i32 %i.o, %.1.us.3       ; 2 uses
  br i1 %exitcond50.not.4, label %._crit_edge.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %.sroa.12.0, %i.e
  %.not28.us.5 = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not28.us.5, i32 0, i32 32
  %.1.us.5 = or disjoint i32 %i.q, %.1.us.4
  %spec.select53 = select i1 %exitcond50.not.5, i32 %.1.us.5, i32 poison
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.preheader.us
  %.1.us.lcssa = phi i32 [ %i.g, %.preheader.us ], [ %.1.us.1, %bb.b ], [ %.1.us.2, %bb.c ], [ %.1.us.3, %bb.d ], [ %.1.us.4, %bb.e ], [ %spec.select53, %bb.f ] ; 2 uses
  %i.r = lshr i32 %.1.us.lcssa, 5
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %i.v = and i32 %.1.us.lcssa, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.u, %i.w
  %.not27.us = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not27.us, i32 0, i32 %i.e
  %.125.us = or i32 %i.y, %.02433.us              ; 2 uses
  %i.z = add nuw nsw i32 %.12334.us, 1            ; 2 uses
  %exitcond51.not = icmp eq i32 %i.z, 32
  br i1 %exitcond51.not, label %.split.us, label %.preheader.us, !llvm.loop !2

.critedge.preheader.split:                        ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  %.fr42 = freeze i32 %i.ac
  %i.ad = and i32 %.fr42, 1
  %spec.select = sub nsw i32 0, %i.ad
  br label %.split.us

.lr.ph:                                           ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.ag = sext i32 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !37
  %exitcond.not = icmp eq i32 %i.b, 1
  br i1 %exitcond.not, label %.preheader.us.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !31
  %i.an = sext i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !37 ; 5 uses
  %exitcond.not.1 = icmp eq i32 %i.b, 2
  br i1 %exitcond.not.1, label %.preheader.us.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !31
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !37 ; 4 uses
  %exitcond.not.2 = icmp eq i32 %i.b, 3
  br i1 %exitcond.not.2, label %.preheader.us.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !31
  %i.bb = sext i32 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !37 ; 3 uses
  %exitcond.not.3 = icmp eq i32 %i.b, 4
  br i1 %exitcond.not.3, label %.preheader.us.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !31
  %i.bi = sext i32 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !37 ; 2 uses
  %exitcond.not.4 = icmp eq i32 %i.b, 5
  br i1 %exitcond.not.4, label %.preheader.us.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !31
  %i.bp = sext i32 %i.bo to i64
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !37
  br label %.preheader.us.preheader

.split.us:                                        ; preds = %._crit_edge.us, %.critedge.preheader.split
  %.us-phi = phi i32 [ %spec.select, %.critedge.preheader.split ], [ %.125.us, %._crit_edge.us ]
  ret i32 %.us-phi
}

; Function Attrs: nounwind uwtable
define void @Gli_ManSimulateSeqPref(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 12 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 44         ; 3 uses
  %.val104128 = load ptr, ptr %0, align 8, !tbaa !20 ; 4 uses
  %.val105129 = load i32, ptr %i.c, align 4, !tbaa !15 ; 3 uses
  %i.d = getelementptr i8, ptr %.val104128, i64 4
  %.val104.val130 = load i32, ptr %i.d, align 4, !tbaa !17
  %i.e = sub nsw i32 %.val104.val130, %.val105129 ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val113219 = load ptr, ptr %i.b, align 8, !tbaa !26 ; 2 uses
  %.not220 = icmp eq ptr %.val113219, null
  br i1 %.not220, label %.critedge, label %.lr.ph224

.lr.ph:                                           ; preds = %.lr.ph224
  %.val113 = load ptr, ptr %i.b, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %.val113, null
  br i1 %.not, label %.critedge, label %.lr.ph224, !llvm.loop !49

.lr.ph224:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.val113223 = phi ptr [ %.val113, %.lr.ph ], [ %.val113219, %.lr.ph.preheader ]
  %.val104132222 = phi ptr [ %.val104, %.lr.ph ], [ %.val104128, %.lr.ph.preheader ]
end_hunk_1
