inline.NumInlined: 668
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Gia_ManDupCones2:bb.a
  %i.dp = sdiv exact i64 %i.do, 12
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = lshr i32 %i.dh, 1
  %i.ds = sub i32 %i.dq, %i.dr
  %i.dt = and i32 %i.ds, 536870911
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = and i64 %i.dl, -1073741824
  %i.dw = shl i32 %i.dh, 29
  %i.dx = xor i32 %i.dw, %i.di
  %i.dy = and i32 %i.dx, 536870912
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = or disjoint i64 %i.dv, %i.dz
  %i.eb = or disjoint i64 %i.ea, %i.du            ; 2 uses
  store i64 %i.eb, ptr %i.dj, align 4
  %i.ec = load ptr, ptr %i.cg, align 8, !tbaa !45
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  %.val.i48 = load i32, ptr %i.ed, align 4, !tbaa !32
  %i.ee = and i32 %.val.i48, 536870911
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 32
  %i.eh = and i64 %i.eb, -2305843004918726657
  %i.ei = or disjoint i64 %i.eh, %i.eg
  store i64 %i.ei, ptr %i.dj, align 4
  %i.ej = load ptr, ptr %i.cg, align 8, !tbaa !45 ; 6 uses
  %.val19.i = load ptr, ptr %i.cf, align 8, !tbaa !8
  %i.ek = ptrtoint ptr %.val19.i to i64
  %i.el = sub i64 %i.dm, %i.ek
  %i.em = sdiv exact i64 %i.el, 12
  %i.en = trunc i64 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !32 ; 7 uses
  %i.eq = load i32, ptr %i.ej, align 8, !tbaa !35
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.q, label %Vec_IntPush.exit.i

bb.q:                                             ; preds = %bb.p
  %i.es = icmp slt i32 %i.ep, 16
  br i1 %i.es, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !34 ; 2 uses
  %.not9.i.i.i56 = icmp eq ptr %i.eu, null
  br i1 %.not9.i.i.i56, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ev = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eu, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i.i57

bb.t:                                             ; preds = %bb.r
  %i.ew = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i.i57

Vec_IntGrow.exit.i.i57:                           ; preds = %bb.t, %bb.s
  %i.ex = phi ptr [ %i.ev, %bb.s ], [ %i.ew, %bb.t ]
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i53

bb.u:                                             ; preds = %bb.q
  %i.ey = icmp samesign ult i32 %i.ep, 1073741823
  %i.ez = shl nuw nsw i32 %i.ep, 1
  %spec.select.i.i50 = select i1 %i.ey, i32 %i.ez, i32 2147483647 ; 3 uses
  %.not.i9.i.i51 = icmp samesign ult i32 %i.ep, %spec.select.i.i50
  br i1 %.not.i9.i.i51, label %bb.v, label %Vec_IntPush.exit.i

bb.v:                                             ; preds = %bb.u
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !34 ; 2 uses
  %.not9.i10.i.i52 = icmp eq ptr %i.fb, null
  %i.fc = zext nneg i32 %spec.select.i.i50 to i64
  %i.fd = shl nuw nsw i64 %i.fc, 2                ; 2 uses
  br i1 %.not9.i10.i.i52, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fe = tail call ptr @realloc(ptr noundef nonnull %i.fb, i64 noundef %i.fd) #30
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ff = tail call noalias ptr @malloc(i64 noundef %i.fd) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fg = phi ptr [ %i.fe, %bb.w ], [ %i.ff, %bb.x ]
  store ptr %i.fg, ptr %i.fa, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i53

Vec_IntGrow.exit11.sink.split.i.i53:              ; preds = %bb.y, %Vec_IntGrow.exit.i.i57
  %spec.select.sink.i.i54 = phi i32 [ %spec.select.i.i50, %bb.y ], [ 16, %Vec_IntGrow.exit.i.i57 ]
  store i32 %spec.select.sink.i.i54, ptr %i.ej, align 8, !tbaa !35
  %.pre.i55 = load i32, ptr %i.eo, align 4, !tbaa !32
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i53, %bb.u, %bb.p
  %i.fh = phi i32 [ %i.ep, %bb.p ], [ %i.ep, %bb.u ], [ %.pre.i55, %Vec_IntGrow.exit11.sink.split.i.i53 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !34
  %i.fk = add nsw i32 %i.fh, 1
  store i32 %i.fk, ptr %i.eo, align 4, !tbaa !32
  %i.fl = sext i32 %i.fh to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fl
  store i32 %i.en, ptr %i.fm, align 4, !tbaa !37
  %i.fn = load ptr, ptr %i.ch, align 8, !tbaa !97
  %.not.i49 = icmp eq ptr %i.fn, null
  br i1 %.not.i49, label %Gia_ManAppendCo.exit, label %bb.z

bb.z:                                             ; preds = %Vec_IntPush.exit.i
  %i.fo = load i64, ptr %i.dj, align 4
  %i.fp = and i64 %i.fo, 536870911
  %i.fq = sub nsw i64 0, %i.fp
  %i.fr = getelementptr inbounds [12 x i8], ptr %i.dj, i64 %i.fq
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %i.p, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.dj) #29
  br label %Gia_ManAppendCo.exit

Gia_ManAppendCo.exit:                             ; preds = %Vec_IntPush.exit.i, %bb.z
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge67, label %bb.p, !llvm.loop !105

._crit_edge67:                                    ; preds = %Gia_ManAppendCo.exit, %.critedge
  ret ptr %i.p
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #3

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @Min_ManRemoveItem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %4 = alloca %struct.Vec_Int_t_, align 8         ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !106 ; 2 uses
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %.val17, i64 %i.b ; 3 uses
  %.018 = add nsw i32 %3, -1
  %.not.not19 = icmp sgt i32 %3, %2
  br i1 %.not.not19, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %3 to i64
  %i.e = add nsw i64 %i.d, -1
  %i.f = sext i32 %2 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.not.not = icmp sgt i64 %indvars.iv, %i.f
  br i1 %.not.not, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !108

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.e, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %.val17, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val = load i32, ptr %i.h, align 4, !tbaa !32
  %i.i = icmp sgt i32 %.val, 0
  br i1 %i.i, label %..critedge_crit_edge22, label %bb.b, !llvm.loop !108

..critedge_crit_edge22:                           ; preds = %.lr.ph
  %i.j = trunc nsw i64 %indvars.iv to i32
  br label %.critedge, !llvm.loop !108

.critedge.loopexit:                               ; preds = %bb.b
  %i.k = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %..critedge_crit_edge22, %bb.a
  %.0.lcssa = phi i32 [ %.018, %bb.a ], [ %i.j, %..critedge_crit_edge22 ], [ %i.k, %.critedge.loopexit ]
  %.1 = phi ptr [ null, %bb.a ], [ %i.g, %..critedge_crit_edge22 ], [ %i.g, %.critedge.loopexit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !32
  %i.m = icmp slt i32 %1, %.0.lcssa
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !109
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Min_ManAccumulate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Vec_Int_t_, align 8         ; 4 uses
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %i.d = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.e = sext i32 %2 to i64
  %i.f = sext i32 %1 to i64                       ; 4 uses
  %5 = add nsw i64 %i.f, -1
  %i.g = shl nsw i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %.046 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.v ]  ; 4 uses
  %.val28 = load ptr, ptr %i.b, align 8, !tbaa !106 ; 3 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %.val28, i64 %indvars.iv ; 7 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4        ; 5 uses
  %.val27 = load i32, ptr %i.i, align 4, !tbaa !32 ; 4 uses
  %i.j = icmp eq i32 %.val27, 0
  br i1 %i.j, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %.val7.i = load i32, ptr %i.c, align 4, !tbaa !32
  %i.k = icmp sgt i32 %.val7.i, 0
  br i1 %i.k, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val6.i = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val6.i, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %i.o = load i32, ptr %i.i, align 4, !tbaa !32   ; 7 uses
  %i.p = load i32, ptr %i.h, align 8, !tbaa !35
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !34
  br label %Vec_IntPush.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not9.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.s, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.i:                                             ; preds = %bb.e
  %i.v = icmp samesign ult i32 %i.o, 1073741823
  %i.w = shl nuw nsw i32 %i.o, 1
  %spec.select.i.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.o, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.l, align 8, !tbaa !34 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.j, label %Vec_IntPush.exit.i

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.x = zext nneg i32 %spec.select.i.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2                  ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.y) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.l:                                             ; preds = %bb.j
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.y) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.l, %bb.k, %bb.h, %bb.g
  %i.ab = phi ptr [ %i.u, %bb.h ], [ %i.t, %bb.g ], [ %i.z, %bb.k ], [ %i.aa, %bb.l ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i.i, %bb.k ], [ %spec.select.i.i, %bb.l ]
  store ptr %i.ab, ptr %i.l, align 8, !tbaa !34
  store i32 %spec.select.sink.i.i, ptr %i.h, align 8, !tbaa !35
  %.pre11.i = load i32, ptr %i.i, align 4, !tbaa !32
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.i, %.Vec_IntPush.exit_crit_edge.i
  %i.ac = phi i32 [ %i.o, %.Vec_IntPush.exit_crit_edge.i ], [ %i.o, %bb.i ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.i ], [ %i.ab, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.ae = add nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !32
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  store i32 %i.n, ptr %i.ag, align 4, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !32
  %i.ah = sext i32 %.val.i to i64
  %i.ai = icmp slt i64 %indvars.iv.next.i, %i.ah
  br i1 %i.ai, label %bb.d, label %Vec_IntAppend.exit, !llvm.loop !71

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %bb.c
  %i.aj = add nsw i32 %.046, 1
  br label %.critedge

bb.m:                                             ; preds = %bb.b
  %i.ak = getelementptr i8, ptr %i.h, i64 8
  %.val30 = load ptr, ptr %i.ak, align 8, !tbaa !34 ; 2 uses
  %.val31 = load i32, ptr %i.c, align 4, !tbaa !32 ; 3 uses
  %.val32 = load ptr, ptr %i.d, align 8, !tbaa !34 ; 2 uses
  %i.al = sext i32 %.val27 to i64
  %.idx.i = shl nsw i64 %i.al, 2
  %i.am = getelementptr inbounds i8, ptr %.val30, i64 %.idx.i
  %i.an = sext i32 %.val31 to i64
  %.idx8.i = shl nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds i8, ptr %.val32, i64 %.idx8.i
  %i.ap = icmp sgt i32 %.val27, 0
  %i.aq = icmp sgt i32 %.val31, 0
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph.i33, label %Vec_IntTwoCountCommon.exit

.lr.ph.i33:                                       ; preds = %bb.m, %bb.r
  %.07.i = phi i32 [ %.1.i, %bb.r ], [ 0, %bb.m ] ; 3 uses
  %.0196.i = phi ptr [ %.120.i, %bb.r ], [ %.val30, %bb.m ] ; 4 uses
  %.0215.i = phi ptr [ %.122.i, %bb.r ], [ %.val32, %bb.m ] ; 4 uses
  %i.as = load i32, ptr %.0196.i, align 4, !tbaa !37 ; 2 uses
  %i.at = load i32, ptr %.0215.i, align 4, !tbaa !37 ; 2 uses
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i33
  %i.av = getelementptr inbounds nuw i8, ptr %.0196.i, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.0215.i, i64 4
  %i.ax = add nsw i32 %.07.i, 1
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph.i33
  %i.ay = icmp slt i32 %i.as, %i.at
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.0196.i, i64 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.0215.i, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.122.i = phi ptr [ %i.aw, %bb.n ], [ %.0215.i, %bb.p ], [ %i.ba, %bb.q ] ; 2 uses
  %.120.i = phi ptr [ %i.av, %bb.n ], [ %i.az, %bb.p ], [ %.0196.i, %bb.q ] ; 2 uses
  %.1.i = phi i32 [ %i.ax, %bb.n ], [ %.07.i, %bb.p ], [ %.07.i, %bb.q ] ; 2 uses
  %i.bb = icmp ult ptr %.120.i, %i.am
  %i.bc = icmp ult ptr %.122.i, %i.ao
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph.i33, label %Vec_IntTwoCountCommon.exit, !llvm.loop !111

Vec_IntTwoCountCommon.exit:                       ; preds = %bb.r, %bb.m
  %.0.lcssa.i = phi i32 [ 0, %bb.m ], [ %.1.i, %bb.r ] ; 2 uses
  %i.be = icmp eq i32 %.0.lcssa.i, %.val27
  br i1 %i.be, label %.critedge, label %bb.s

bb.s:                                             ; preds = %Vec_IntTwoCountCommon.exit
  %i.bf = icmp eq i32 %.0.lcssa.i, %.val31
  br i1 %i.bf, label %.lr.ph.i36.preheader, label %bb.v

.lr.ph.i36.preheader:                             ; preds = %bb.s
  %scevgep = getelementptr i8, ptr %.val28, i64 %i.g
  br label %.lr.ph.i36

bb.t:                                             ; preds = %.lr.ph.i36
  %.not.not.i = icmp sgt i64 %indvars.iv.i37, %i.f
  br i1 %.not.not.i, label %.lr.ph.i36, label %.critedge.i, !llvm.loop !108

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.preheader, %bb.t
  %indvars.iv.i37.in = phi i64 [ %indvars.iv.i37, %bb.t ], [ %i.e, %.lr.ph.i36.preheader ]
  %indvars.iv.i37 = add nsw i64 %indvars.iv.i37.in, -1 ; 4 uses
  %i.bg = getelementptr inbounds [16 x i8], ptr %.val28, i64 %indvars.iv.i37 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %.val.i38 = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.bi = icmp sgt i32 %.val.i38, 0
  br i1 %i.bi, label %..critedge_crit_edge22.i, label %bb.t, !llvm.loop !108

..critedge_crit_edge22.i:                         ; preds = %.lr.ph.i36
  br label %.critedge.i, !llvm.loop !108

.critedge.i:                                      ; preds = %bb.t, %..critedge_crit_edge22.i
  %6 = phi ptr [ %i.bg, %..critedge_crit_edge22.i ], [ %scevgep, %bb.t ] ; 2 uses
  %.0.lcssa.i34.in = phi i64 [ %indvars.iv.i37, %..critedge_crit_edge22.i ], [ %5, %bb.t ]
  store i32 0, ptr %i.i, align 4, !tbaa !32
  %sext = shl i64 %.0.lcssa.i34.in, 32
  %7 = ashr exact i64 %sext, 32
  %i.bj = icmp slt i64 %indvars.iv, %7
  br i1 %i.bj, label %bb.u, label %Min_ManRemoveItem.exit

bb.u:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !109
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %Min_ManRemoveItem.exit

Min_ManRemoveItem.exit:                           ; preds = %.critedge.i, %bb.u
  %i.bk = add nsw i32 %.046, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %Min_ManRemoveItem.exit
  %.1 = phi i32 [ %i.bk, %Min_ManRemoveItem.exit ], [ %.046, %bb.s ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !112

.critedge:                                        ; preds = %Vec_IntTwoCountCommon.exit, %bb.v, %bb.a, %Vec_IntAppend.exit
  %.022 = phi i32 [ %i.aj, %Vec_IntAppend.exit ], [ 1000000000, %bb.a ], [ %.046, %Vec_IntTwoCountCommon.exit ], [ 1000000000, %bb.v ]
  ret i32 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Min_ManCountSize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.b, align 8, !tbaa !106 ; 9 uses
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %2 to i64           ; 2 uses
  %i.d = sub nsw i64 %wide.trip.count, %i.c       ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.e = and i64 %i.d, 7                          ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = select i1 %i.f, i64 8, i64 %i.e
  %n.vec = sub nsw i64 %i.d, %i.g                 ; 2 uses
  %i.h = add nsw i64 %n.vec, %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.i = add i64 %index, %i.c                     ; 8 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %.val9, i64 %i.i
  %i.k = getelementptr [16 x i8], ptr %.val9, i64 %i.i
  %i.l = getelementptr [16 x i8], ptr %.val9, i64 %i.i
  %i.m = getelementptr [16 x i8], ptr %.val9, i64 %i.i
  %i.n = getelementptr [16 x i8], ptr %.val9, i64 %i.i
  %i.o = getelementptr [16 x i8], ptr %.val9, i64 %i.i
  %i.p = getelementptr [16 x i8], ptr %.val9, i64 %i.i
  %i.q = getelementptr [16 x i8], ptr %.val9, i64 %i.i
  %i.r = getelementptr i8, ptr %i.j, i64 4
  %i.s = getelementptr i8, ptr %i.k, i64 20
  %i.t = getelementptr i8, ptr %i.l, i64 36
  %i.u = getelementptr i8, ptr %i.m, i64 52
  %i.v = getelementptr i8, ptr %i.n, i64 68
  %i.w = getelementptr i8, ptr %i.o, i64 84
  %i.x = getelementptr i8, ptr %i.p, i64 100
  %i.y = getelementptr i8, ptr %i.q, i64 116
  %i.z = load i32, ptr %i.r, align 4, !tbaa !32
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !32
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !32
  %i.ac = load i32, ptr %i.u, align 4, !tbaa !32
  %i.ad = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 1
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 2
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 3
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !32
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !32
  %i.aj = load i32, ptr %i.x, align 4, !tbaa !32
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !32
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = icmp sgt <4 x i32> %i.ag, zeroinitializer
  %i.aq = icmp sgt <4 x i32> %i.ao, zeroinitializer
  %i.ar = zext <4 x i1> %i.ap to <4 x i32>
  %i.as = zext <4 x i1> %i.aq to <4 x i32>
  %i.at = add <4 x i32> %vec.phi, %i.ar           ; 2 uses
  %i.au = add <4 x i32> %vec.phi14, %i.as         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.c, %.lr.ph ], [ %i.h, %middle.block ]
  %.011.ph = phi i32 [ 0, %.lr.ph ], [ %i.aw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.011 = phi i32 [ %i.bb, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ]
  %i.ax = getelementptr inbounds [16 x i8], ptr %.val9, i64 %indvars.iv
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %.val = load i32, ptr %i.ay, align 4, !tbaa !32
  %i.az = icmp sgt i32 %.val, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = add nuw nsw i32 %.011, %i.ba            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %scalar.ph, !llvm.loop !114

.critedge:                                        ; preds = %scalar.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.bb, %scalar.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Min_ManComputeCexes(ptr noundef %0, ptr noundef captures(address) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %13) #29
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %13, align 8, !tbaa !62
  %.neg428 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64
  %.neg = sdiv i64 %i.h, -1000
  %.neg429 = add i64 %.neg, %.neg428
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg429, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.i = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %12) #29
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %Abc_Clock.exit265, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.k = load i64, ptr %12, align 8, !tbaa !62
  %.neg468 = mul i64 %i.k, -1000000
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !64
  %.neg467 = sdiv i64 %i.m, -1000
  %.neg469 = add i64 %.neg467, %.neg468
  br label %Abc_Clock.exit265

Abc_Clock.exit265:                                ; preds = %Abc_Clock.exit, %bb.c
  %.0.i264.neg470 = phi i64 [ %.neg469, %bb.c ], [ 1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %Vec_IntStartNatural.exit

bb.d:                                             ; preds = %Abc_Clock.exit265
  %i.n = getelementptr i8, ptr %0, i64 72
  %.val251 = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr i8, ptr %.val251, i64 4
  %.val251.val = load i32, ptr %i.o, align 4, !tbaa !32 ; 6 uses
  %i.p = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.q = add i32 %.val251.val, -1
  %or.cond.i.i = icmp ult i32 %i.q, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val251.val ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %spec.store.select.i.i, ptr %i.p, align 8, !tbaa !35
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = sext i32 %spec.store.select.i.i to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = call noalias ptr @malloc(i64 noundef %i.t) #28
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %i.u, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !34
  store i32 %.val251.val, ptr %i.r, align 4, !tbaa !32
  %i.x = icmp sgt i32 %.val251.val, 0
  br i1 %i.x, label %.lr.ph.preheader.i, label %Vec_IntStartNatural.exit

.lr.ph.preheader.i:                               ; preds = %Vec_IntAlloc.exit.i
  %wide.trip.count.i = zext nneg i32 %.val251.val to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val251.val, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
end_hunk_0
