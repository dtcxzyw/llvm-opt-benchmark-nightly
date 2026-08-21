inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_789ScriptRun7highBitEi:bb.a
  %i.k = lshr i32 %.220, 2
  %i.l = or disjoint i8 %.2, 2
  %.321 = select i1 %i.j, i32 %i.k, i32 %.220
  %.3 = select i1 %i.j, i8 %i.l, i8 %.2
  %i.m = icmp samesign ugt i32 %.321, 1
  %i.n = zext i1 %i.m to i8
  %.4 = add nuw nsw i8 %.3, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.022 = phi i8 [ %.4, %bb.b ], [ -32, %bb.a ]
  ret i8 %.022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -1, 34) i32 @_ZN6icu_789ScriptRun12getPairIndexEi(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 8), align 8, !tbaa !9
  %.not = icmp slt i32 %0, %i.a
  %spec.select = select i1 %.not, i32 0, i32 2    ; 2 uses
  %i.b = or disjoint i32 %spec.select, 16         ; 2 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 8, !tbaa !9
  %.not13 = icmp slt i32 %0, %i.e
  %spec.select14 = select i1 %.not13, i32 %spec.select, i32 %i.b ; 2 uses
  %i.f = or disjoint i32 %spec.select14, 8        ; 2 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.g
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9
  %.not13.1 = icmp slt i32 %0, %i.i
  %spec.select14.1 = select i1 %.not13.1, i32 %spec.select14, i32 %i.f ; 2 uses
  %i.j = or disjoint i32 %spec.select14.1, 4      ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %.not13.2 = icmp slt i32 %0, %i.m
  %spec.select14.2 = select i1 %.not13.2, i32 %spec.select14.1, i32 %i.j ; 2 uses
  %i.n = add nuw nsw i32 %spec.select14.2, 2      ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9
  %.not13.3 = icmp slt i32 %0, %i.q
  %spec.select14.3 = select i1 %.not13.3, i32 %spec.select14.2, i32 %i.n ; 2 uses
  %i.r = add nuw nsw i32 %spec.select14.3, 1      ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %.not13.4 = icmp slt i32 %0, %i.u
  %spec.select14.4 = select i1 %.not13.4, i32 %spec.select14.3, i32 %i.r ; 2 uses
  %i.v = zext nneg i32 %spec.select14.4 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %.not12 = icmp eq i32 %i.x, %0
  %spec.store.select = select i1 %.not12, i32 %spec.select14.4, i32 -1
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_789ScriptRun10sameScriptEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 2
  %i.b = icmp slt i32 %1, 2
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq i32 %0, %1
  %i.d = or i1 %i.c, %or.cond
  %i.e = zext i1 %i.d to i8
  ret i8 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_789ScriptRun4nextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1064) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19   ; 2 uses
  %.not = icmp slt i32 %i.e, %i.g
  br i1 %.not, label %.lr.ph65, label %.loopexit61

.lr.ph65:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph65, %bb.t
  %i.l = phi i32 [ %i.g, %.lr.ph65 ], [ %i.dj, %bb.t ]
  %i.m = phi i32 [ %i.e, %.lr.ph65 ], [ %i.di, %bb.t ] ; 3 uses
  %.03664 = phi i32 [ %i.c, %.lr.ph65 ], [ %.6.ph, %bb.t ] ; 4 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !23   ; 2 uses
  %i.r = zext i16 %i.q to i32                     ; 3 uses
  %i.s = and i16 %i.q, -1024
  %or.cond = icmp eq i16 %i.s, -10240
  %i.t = add nsw i32 %i.l, -1
  %i.u = icmp slt i32 %i.m, %i.t
  %or.cond53 = select i1 %or.cond, i1 %i.u, i1 false
  br i1 %or.cond53, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = add nsw i32 %i.m, 1                      ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !23   ; 2 uses
  %i.z = and i16 %i.y, -1024
  %or.cond5 = icmp eq i16 %i.z, -9216
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = zext i16 %i.y to i32
  %i.ab = shl nuw nsw i32 %i.r, 10
  %i.ac = add nsw i32 %i.ab, -56613888
  %i.ad = add nuw nsw i32 %i.ac, %i.aa
  store i32 %i.v, ptr %i.d, align 4, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.134 = phi i32 [ %i.r, %bb.b ], [ %i.ad, %bb.d ], [ %i.r, %bb.c ] ; 9 uses
  %i.ae = call i32 @uscript_getScript_78(i32 noundef %.134, ptr noundef nonnull %i.a) ; 4 uses
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 8), align 8, !tbaa !9
  %.not.i = icmp slt i32 %.134, %i.af
  %spec.select.i = select i1 %.not.i, i32 0, i32 2 ; 2 uses
  %i.ag = or disjoint i32 %spec.select.i, 16      ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !9
  %.not13.i = icmp slt i32 %.134, %i.aj
  %spec.select14.i = select i1 %.not13.i, i32 %spec.select.i, i32 %i.ag ; 2 uses
  %i.ak = or disjoint i32 %spec.select14.i, 8     ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 8, !tbaa !9
  %.not13.1.i = icmp slt i32 %.134, %i.an
  %spec.select14.1.i = select i1 %.not13.1.i, i32 %spec.select14.i, i32 %i.ak ; 2 uses
  %i.ao = or disjoint i32 %spec.select14.1.i, 4   ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !9
  %.not13.2.i = icmp slt i32 %.134, %i.ar
  %spec.select14.2.i = select i1 %.not13.2.i, i32 %spec.select14.1.i, i32 %i.ao ; 2 uses
  %i.as = add nuw nsw i32 %spec.select14.2.i, 2   ; 2 uses
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9
  %.not13.3.i = icmp slt i32 %.134, %i.av
  %spec.select14.3.i = select i1 %.not13.3.i, i32 %spec.select14.2.i, i32 %i.as ; 2 uses
  %i.aw = add nuw nsw i32 %spec.select14.3.i, 1   ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !9
  %.not13.4.i = icmp slt i32 %.134, %i.az
  %spec.select14.4.i = select i1 %.not13.4.i, i32 %spec.select14.3.i, i32 %i.aw ; 2 uses
  %i.ba = zext nneg i32 %spec.select14.4.i to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_789ScriptRun11pairedCharsE, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9
  %.not12.i = icmp eq i32 %i.bc, %.134
  %spec.store.select.i = select i1 %.not12.i, i32 %spec.select14.4.i, i32 -1 ; 5 uses
  %i.bd = icmp slt i32 %spec.store.select.i, 0
  br i1 %i.bd, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = and i32 %spec.store.select.i, 1
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !10  ; 3 uses
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bh = add nsw i32 %i.bg, 1                    ; 3 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !10
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bi ; 2 uses
  store i32 %spec.store.select.i, ptr %i.bj, align 4, !tbaa !25
  %i.bk = load i32, ptr %i.h, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !27
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bm = icmp sgt i32 %i.bg, -1
  br i1 %i.bm, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bn = and i32 %spec.store.select.i, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.k
  %1 = phi i32 [ %i.bg, %bb.i ], [ %3, %bb.k ]    ; 4 uses
  %2 = zext nneg i32 %1 to i64                    ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %2
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !25
  %.not49 = icmp eq i32 %i.bp, %i.bn
  br i1 %.not49, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %3 = add nsw i32 %1, -1                         ; 2 uses
  store i32 %3, ptr %i.b, align 4, !tbaa !10
  %i.bq = icmp sgt i32 %1, 0
  br i1 %i.bq, label %bb.j, label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %bb.k
  %spec.select = call i32 @llvm.smin.i32(i32 %.03664, i32 -1)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %spec.select56 = call i32 @llvm.smin.i32(i32 %1, i32 %.03664)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l, %bb.g, %bb.h, %bb.e
  %.2 = phi i32 [ %i.bh, %bb.g ], [ %.03664, %bb.e ], [ %.03664, %bb.h ], [ %spec.select56, %bb.l ], [ %spec.select, %.critedge ] ; 4 uses
  %.1 = phi i32 [ %i.ae, %bb.g ], [ %i.ae, %bb.e ], [ %i.ae, %bb.h ], [ %i.bt, %bb.l ], [ %i.ae, %.critedge ] ; 13 uses
  %i.bu = load i32, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 2                   ; 2 uses
  %i.bw = icmp slt i32 %.1, 2
  %i.bx = icmp eq i32 %i.bu, %.1
  %i.by = or i1 %i.bw, %i.bx
  %i.bz = or i1 %i.bv, %i.by
  br i1 %i.bz, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ca = icmp sgt i32 %.1, 1
  %or.cond7 = and i1 %i.ca, %i.bv
  br i1 %or.cond7, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  store i32 %.1, ptr %i.h, align 8, !tbaa !20
  %i.cb = load i32, ptr %i.b, align 4, !tbaa !10  ; 4 uses
  %i.cc = icmp slt i32 %.2, %i.cb
  br i1 %i.cc, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.cd = sext i32 %.2 to i64                     ; 4 uses
  %wide.trip.count = sext i32 %i.cb to i64        ; 3 uses
  %i.ce = sub nsw i64 %wide.trip.count, %i.cd
  %xtraiter = and i64 %i.ce, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.cd, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.cf = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.prol
  %i.cg = getelementptr i8, ptr %i.cf, i64 40
  store i32 %.1, ptr %i.cg, align 8, !tbaa !27
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !30

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.cd, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ch = sub nsw i64 %i.cd, %wide.trip.count
  %i.ci = icmp ugt i64 %i.ch, -8
  br i1 %i.ci, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %i.cj = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.a
  %i.ck = getelementptr i8, ptr %i.cj, i64 48
  store i32 %.1, ptr %i.ck, align 8, !tbaa !27
  %i.cl = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.a
  %i.cm = getelementptr i8, ptr %i.cl, i64 56
  store i32 %.1, ptr %i.cm, align 8, !tbaa !27
  %i.cn = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.a
  %i.co = getelementptr i8, ptr %i.cn, i64 64
  store i32 %.1, ptr %i.co, align 8, !tbaa !27
  %i.cp = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.a
  %i.cq = getelementptr i8, ptr %i.cp, i64 72
  store i32 %.1, ptr %i.cq, align 8, !tbaa !27
  %i.cr = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.a
  %i.cs = getelementptr i8, ptr %i.cr, i64 80
  store i32 %.1, ptr %i.cs, align 8, !tbaa !27
  %i.ct = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.a
  %i.cu = getelementptr i8, ptr %i.ct, i64 88
  store i32 %.1, ptr %i.cu, align 8, !tbaa !27
  %i.cv = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.a
  %i.cw = getelementptr i8, ptr %i.cv, i64 96
  store i32 %.1, ptr %i.cw, align 8, !tbaa !27
  %indvars.iv.next.7 = add nsw i64 %indvars.iv.a, 8 ; 3 uses
  %i.cx = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.7
  %i.cy = getelementptr i8, ptr %i.cx, i64 40
  store i32 %.1, ptr %i.cy, align 8, !tbaa !27
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.o, %bb.n
  %.4 = phi i32 [ %.2, %bb.n ], [ %.2, %bb.o ], [ %i.cb, %.lr.ph ], [ %i.cb, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.cz = and i32 %spec.store.select.i, -2147483647
  %or.cond55.not = icmp eq i32 %i.cz, 1
  br i1 %or.cond55.not, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.loopexit
  %i.da = load i32, ptr %i.b, align 4, !tbaa !10  ; 2 uses
  %i.db = icmp sgt i32 %i.da, -1
  br i1 %i.db, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.b, align 4, !tbaa !10
  %i.dd = add nsw i32 %.4, -1
  br label %bb.t

bb.r:                                             ; preds = %bb.m
  %i.de = icmp sgt i32 %.134, 65535
  br i1 %i.de, label %bb.s, label %.loopexit61

bb.s:                                             ; preds = %bb.r
  %i.df = load i32, ptr %i.d, align 4, !tbaa !18
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.d, align 4, !tbaa !18
  br label %.loopexit61

bb.t:                                             ; preds = %.loopexit, %bb.p, %bb.q
  %.6.ph = phi i32 [ %.4, %.loopexit ], [ %.4, %bb.p ], [ %i.dd, %bb.q ]
  %i.dh = load i32, ptr %i.d, align 4, !tbaa !18
  %i.di = add nsw i32 %i.dh, 1                    ; 3 uses
  store i32 %i.di, ptr %i.d, align 4, !tbaa !18
  %i.dj = load i32, ptr %i.f, align 4, !tbaa !19  ; 2 uses
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.b, label %.loopexit61, !llvm.loop !33

.loopexit61:                                      ; preds = %bb.t, %bb.s, %bb.r, %bb.a
  %.038 = phi i8 [ 0, %bb.a ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i8 %.038
}

declare i32 @uscript_getScript_78(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !6, i64 1060}
!11 = !{!"_ZTSN6icu_789ScriptRunE", !12, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !15, i64 32, !7, i64 36, !6, i64 1060}
!12 = !{!"_ZTSN6icu_787UObjectE"}
!13 = !{!"p1 char16_t", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"_ZTS11UScriptCode", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"_ZTS10UErrorCode", !7, i64 0}
!18 = !{!11, !6, i64 28}
!19 = !{!11, !6, i64 12}
!20 = !{!11, !15, i64 32}
!21 = !{!11, !6, i64 24}
!22 = !{!11, !13, i64 16}
!23 = !{!24, !24, i64 0}
!24 = !{!"char16_t", !7, i64 0}
!25 = !{!26, !6, i64 0}
!26 = !{!"_ZTSN6icu_7815ParenStackEntryE", !6, i64 0, !15, i64 4}
!27 = !{!26, !15, i64 4}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
end_hunk_0
