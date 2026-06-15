inline.NumInlined: 245
inline.NumDeleted: 66
begin_hunk_0_@_Z16SplitPathToPartsRK11CStringBaseIwER13CObjectVectorIS0_E:bb.a

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19:    ; preds = %.noexc.i18, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19
  %.04.i.i.i20 = phi ptr [ %i.aq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19 ], [ %.sroa.0.049, %.noexc.i18 ] ; 2 uses
  %.0.i.i.i21 = phi ptr [ %i.as, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19 ], [ %i.ao, %.noexc.i18 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 4
  %i.ar = load i32, ptr %.04.i.i.i20, align 4, !tbaa !16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 4
  store i32 %i.ar, ptr %.0.i.i.i21, align 4, !tbaa !16
  %.not.i.i.i22 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i22, label %bb.g, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19, !llvm.loop !20

bb.g:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %.sroa.13.050, ptr %i.at, align 8, !tbaa !18
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %.noexc23
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 16) #19
  br label %_ZN11CStringBaseIwED2Ev.exit29

bb.i:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.aw = load i32, ptr %i.g, align 4, !tbaa !25  ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ax
  store ptr %i.ah, ptr %i.ay, align 8, !tbaa !26
  %i.az = add nsw i32 %i.aw, 1
  store i32 %i.az, ptr %i.g, align 4, !tbaa !25
  store i32 0, ptr %.sroa.0.049, align 4, !tbaa !16
  br label %bb.n

bb.j:                                             ; preds = %bb.m, %bb.g, %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit29

bb.k:                                             ; preds = %bb.e
  %i.bb = xor i32 %.sroa.13.050, -1
  %i.bc = add i32 %.sroa.19.051, %i.bb            ; 3 uses
  %.not.i.i = icmp slt i32 %i.bc, 1
  br i1 %.not.i.i, label %bb.l, label %_ZN11CStringBaseIwEpLEw.exit

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp sgt i32 %.sroa.19.051, 64
  %i.be = lshr i32 %.sroa.19.051, 1
  %i.bf = icmp sgt i32 %.sroa.19.051, 8
  %..i.i = select i1 %i.bf, i32 16, i32 4
  %.0.i.i = select i1 %i.bd, i32 %i.be, i32 %..i.i ; 2 uses
  %i.bg = add nsw i32 %.0.i.i, %i.bc
  %i.bh = icmp slt i32 %i.bg, 1
  %i.bi = sub nsw i32 1, %i.bc
  %.1.i.i = select i1 %i.bh, i32 %i.bi, i32 %.0.i.i
  %i.bj = add nuw nsw i32 %.1.i.i, %.sroa.19.051
  %i.bk = add nuw nsw i32 %i.bj, 1                ; 3 uses
  %i.bl = icmp eq i32 %i.bk, %.sroa.19.051
  br i1 %i.bl, label %_ZN11CStringBaseIwEpLEw.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bn) #20
          to label %.preheader.i.i.i unwind label %bb.j ; 9 uses

.preheader.i.i.i:                                 ; preds = %bb.m
  %i.bp = icmp sgt i32 %.sroa.13.050, 0
  br i1 %i.bp, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.bq = ptrtoaddr ptr %i.bo to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.sroa.13.050 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.13.050, 8
  %i.br = sub i64 %i.bq, %.sroa.0.04967
  %diff.check = icmp ult i64 %i.br, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.049, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load = load <4 x i32>, ptr %i.bs, align 4, !tbaa !16
  %wide.load68 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !16
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> %wide.load, ptr %i.bu, align 4, !tbaa !16
  store <4 x i32> %wide.load68, ptr %i.bv, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.049, i64 %indvars.iv.i.i.i.prol
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !16
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i.prol
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !16
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !30

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ca = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.049, i64 %indvars.iv.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !16
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.049, i64 %indvars.iv.next.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !16
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.i
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !16
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.049, i64 %indvars.iv.next.i.i.i.1
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !16
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !16
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.049, i64 %indvars.iv.next.i.i.i.2
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !16
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !16
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !32

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.049) #19
  %i.co = sext i32 %.sroa.13.050 to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.co
  store i32 0, ptr %i.cp, align 4, !tbaa !16
  br label %_ZN11CStringBaseIwEpLEw.exit

_ZN11CStringBaseIwEpLEw.exit:                     ; preds = %bb.k, %bb.l, %.loopexit
  %.sroa.0.3 = phi ptr [ %.sroa.0.049, %bb.l ], [ %i.bo, %.loopexit ], [ %.sroa.0.049, %bb.k ] ; 3 uses
  %.sroa.19.2 = phi i32 [ %.sroa.19.051, %bb.l ], [ %i.bk, %.loopexit ], [ %.sroa.19.051, %bb.k ]
  %i.cq = sext i32 %.sroa.13.050 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %.sroa.0.3, i64 %i.cq
  store i32 %i.af, ptr %i.cr, align 4, !tbaa !16
  %i.cs = add nsw i32 %.sroa.13.050, 1            ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %.sroa.0.3, i64 %i.ct
  store i32 0, ptr %i.cu, align 4, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %_ZN11CStringBaseIwEpLEw.exit, %bb.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.049, %bb.i ], [ %.sroa.0.3, %_ZN11CStringBaseIwEpLEw.exit ] ; 2 uses
  %.sroa.13.1 = phi i32 [ 0, %bb.i ], [ %i.cs, %_ZN11CStringBaseIwEpLEw.exit ] ; 2 uses
  %.sroa.19.1 = phi i32 [ %.sroa.19.051, %bb.i ], [ %.sroa.19.2, %_ZN11CStringBaseIwEpLEw.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !33

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit, %bb.a
  %.sroa.0.2 = phi ptr [ %i.a, %bb.a ], [ %.sroa.0.0.lcssa, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.2) #19
  ret void

_ZN11CStringBaseIwED2Ev.exit29:                   ; preds = %bb.b, %bb.d, %bb.j, %bb.h
  %.sroa.0.048 = phi ptr [ %.sroa.0.0.lcssa, %bb.d ], [ %.sroa.0.0.lcssa, %bb.b ], [ %.sroa.0.049, %bb.j ], [ %.sroa.0.049, %bb.h ]
  %.pn41 = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.h, %bb.b ], [ %i.ba, %bb.j ], [ %i.au, %bb.h ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.048) #19
  resume { ptr, i32 } %.pn41
}

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z16SplitPathToPartsRK11CStringBaseIwERS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 7 uses
  %4 = alloca %class.CStringBase, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = load ptr, ptr %0, align 8
  %smin = tail call i32 @llvm.smin.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %bb.d

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = trunc nuw i64 %i.i to i32                ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d, !llvm.loop !34

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i32 [ %i.b, %.lr.ph ], [ %i.f, %bb.b ]
  %indvars.iv43 = phi i64 [ %i.e, %.lr.ph ], [ %i.i, %bb.b ]
  %i.i = add nsw i64 %indvars.iv43, -1            ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = icmp eq i32 %i.k, 47
  br i1 %i.l, label %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, label %bb.b, !llvm.loop !34

._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge:      ; preds = %bb.c
  br label %bb.d, !llvm.loop !34

bb.d:                                             ; preds = %bb.b, %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, %bb.a
  %.013.in.lcssa = phi i32 [ %i.h, %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge ], [ %smin, %bb.a ], [ %smin, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i32 noundef %.013.in.lcssa)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !18
  %i.n = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  store i32 0, ptr %i.n, align 4, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = add nsw i32 %i.p, 1                      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19   ; 2 uses
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = zext nneg i32 %i.q to i64
  %i.v = icmp slt i32 %i.p, -1
  %i.w = shl nuw nsw i64 %i.u, 2
  %i.x = select i1 %i.v, i64 -1, i64 %i.w
  %i.y = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #20
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %bb.e
  %i.z = icmp sgt i32 %i.s, 0
  br i1 %i.z, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.n) #19
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !18
  %i.aa = sext i32 %.pre.i to i64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.ab = phi i64 [ %i.aa, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.y, ptr %1, align 8, !tbaa !8
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ab
  store i32 0, ptr %i.ac, align 4, !tbaa !16
  store i32 %i.q, ptr %i.r, align 4, !tbaa !19
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.f, %bb.d
  %i.ad = phi ptr [ %i.n, %bb.d ], [ %i.y, %bb.f ]
  %i.ae = load ptr, ptr %3, align 8, !tbaa !8     ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ae, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.af, %bb.g ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ah, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.ag = load i32, ptr %.04.i.i, align 4, !tbaa !16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ag, ptr %.0.i.i, align 4, !tbaa !16
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwED2Ev.exit.a, label %bb.g, !llvm.loop !20

_ZN11CStringBaseIwED2Ev.exit.a:                   ; preds = %bb.g
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !18
  store i32 %i.ai, ptr %i.m, align 8, !tbaa !18
  %i.aj = icmp eq ptr %i.ae, null
  br i1 %i.aj, label %bb.h, label %_ZN11CStringBaseIwED2Ev.exit._ZN11CStringBaseIwEaSERKS0_.exit23_crit_edge

_ZN11CStringBaseIwED2Ev.exit._ZN11CStringBaseIwEaSERKS0_.exit23_crit_edge: ; preds = %_ZN11CStringBaseIwED2Ev.exit.a
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #19
  br label %bb.h

bb.h:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.a, %_ZN11CStringBaseIwED2Ev.exit._ZN11CStringBaseIwEaSERKS0_.exit23_crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %5 = load i32, ptr %i.a, align 8, !tbaa !18, !noalias !35
  %6 = sub nsw i32 %5, %.013.in.lcssa
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.013.in.lcssa, i32 noundef %6)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !18
  %i.al = load ptr, ptr %2, align 8, !tbaa !8     ; 3 uses
  store i32 0, ptr %i.al, align 4, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !18 ; 2 uses
  %i.ao = add nsw i32 %i.an, 1                    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !19 ; 2 uses
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i15, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = icmp slt i32 %i.an, -1
  %i.au = shl nuw nsw i64 %i.as, 2
  %i.av = select i1 %i.at, i64 -1, i64 %i.au
  %i.aw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #20
          to label %.noexc22 unwind label %bb.o   ; 3 uses

.noexc22:                                         ; preds = %bb.i
  %i.ax = icmp sgt i32 %i.aq, 0
  br i1 %i.ax, label %._crit_edge.thread.i.i20, label %bb.j

._crit_edge.thread.i.i20:                         ; preds = %.noexc22
  call void @_ZdaPv(ptr noundef nonnull %i.al) #19
  %.pre.i21 = load i32, ptr %i.ak, align 8, !tbaa !18
  %i.ay = sext i32 %.pre.i21 to i64
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i20, %.noexc22
  %i.az = phi i64 [ %i.ay, %._crit_edge.thread.i.i20 ], [ 0, %.noexc22 ]
  store ptr %i.aw, ptr %2, align 8, !tbaa !8
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.az
  store i32 0, ptr %i.ba, align 4, !tbaa !16
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !19
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i15

_ZN11CStringBaseIwE11SetCapacityEi.exit.i15:      ; preds = %bb.j, %bb.h
  %i.bb = phi ptr [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8     ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i15
  %.04.i.i16 = phi ptr [ %i.bc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i15 ], [ %i.bd, %bb.k ] ; 2 uses
  %.0.i.i17 = phi ptr [ %i.bb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i15 ], [ %i.bf, %bb.k ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04.i.i16, i64 4
  %i.be = load i32, ptr %.04.i.i16, align 4, !tbaa !16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 4
  store i32 %i.be, ptr %.0.i.i17, align 4, !tbaa !16
  %.not.i.i18 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i18, label %_ZN11CStringBaseIwEaSERKS0_.exit23, label %bb.k, !llvm.loop !20

_ZN11CStringBaseIwEaSERKS0_.exit23:               ; preds = %bb.k
  %7 = load i32, ptr %i.am, align 8, !tbaa !18
  store i32 %7, ptr %i.ak, align 8, !tbaa !18
  %i.bg = icmp eq ptr %i.bc, null
  br i1 %i.bg, label %_ZN11CStringBaseIwED2Ev.exit24.a, label %bb.l

bb.l:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit23
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #19
  br label %_ZN11CStringBaseIwED2Ev.exit24.a

_ZN11CStringBaseIwED2Ev.exit24.a:                 ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit23, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.m:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN11CStringBaseIwED2Ev.exit25.a, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #19
  br label %_ZN11CStringBaseIwED2Ev.exit25.a

_ZN11CStringBaseIwED2Ev.exit25.a:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN11CStringBaseIwED2Ev.exit26, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #19
  br label %_ZN11CStringBaseIwED2Ev.exit26

_ZN11CStringBaseIwED2Ev.exit26:                   ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.q

bb.q:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit26, %_ZN11CStringBaseIwED2Ev.exit25.a
  %.pn = phi { ptr, i32 } [ %i.bk, %_ZN11CStringBaseIwED2Ev.exit26 ], [ %i.bh, %_ZN11CStringBaseIwED2Ev.exit25.a ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z24ExtractDirPrefixFromPathRK11CStringBaseIwE(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = load ptr, ptr %1, align 8
  %smin = tail call i32 @llvm.smin.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge9

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = trunc nuw i64 %i.i to i32                ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge9, !llvm.loop !38

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i32 [ %i.b, %.lr.ph ], [ %i.f, %bb.b ]
  %indvars.iv8 = phi i64 [ %i.e, %.lr.ph ], [ %i.i, %bb.b ]
  %i.i = add nsw i64 %indvars.iv8, -1             ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = icmp eq i32 %i.k, 47
  br i1 %i.l, label %._crit_edge, label %bb.b, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.c
  br label %._crit_edge9, !llvm.loop !38

._crit_edge9:                                     ; preds = %bb.b, %._crit_edge, %bb.a
  %.0.in.lcssa = phi i32 [ %i.h, %._crit_edge ], [ %smin, %bb.a ], [ %smin, %bb.b ]
  tail call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef %.0.in.lcssa)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z23ExtractFileNameFromPathRK11CStringBaseIwE(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = load ptr, ptr %1, align 8
  %smin = tail call i32 @llvm.smin.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge9

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = trunc nuw i64 %i.i to i32                ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge9, !llvm.loop !39

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i32 [ %i.b, %.lr.ph ], [ %i.f, %bb.b ]
  %indvars.iv8 = phi i64 [ %i.e, %.lr.ph ], [ %i.i, %bb.b ]
  %i.i = add nsw i64 %indvars.iv8, -1             ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = icmp eq i32 %i.k, 47
  br i1 %i.l, label %._crit_edge, label %bb.b, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.c
  br label %._crit_edge9, !llvm.loop !39

._crit_edge9:                                     ; preds = %bb.b, %._crit_edge, %bb.a
  %.0.in.lcssa = phi i32 [ %i.h, %._crit_edge ], [ %smin, %bb.a ], [ %smin, %bb.b ] ; 2 uses
  %i.m = sub nsw i32 %i.b, %.0.in.lcssa
  tail call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.0.in.lcssa, i32 noundef %i.m)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z23CompareWildCardWithNameRK11CStringBaseIwES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %1, align 8, !tbaa !8
  %i.c = tail call fastcc noundef zeroext i1 @_ZL16EnhancedMaskTestPKwS0_(ptr noundef %i.a, ptr noundef %i.b)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL16EnhancedMaskTestPKwS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.020 = phi ptr [ %1, %bb.a ], [ %i.m, %bb.k ]  ; 3 uses
  %.018 = phi ptr [ %0, %bb.a ], [ %.119, %bb.k ] ; 4 uses
  %i.a = load i32, ptr %.018, align 4, !tbaa !16  ; 3 uses
  %i.b = load i32, ptr %.020, align 4, !tbaa !16  ; 5 uses
  switch i32 %i.a, label %bb.g [
    i32 0, label %bb.c
    i32 42, label %bb.d
    i32 63, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.018, i64 4
  %i.e = tail call fastcc noundef zeroext i1 @_ZL16EnhancedMaskTestPKwS0_(ptr noundef nonnull %i.d, ptr noundef nonnull %.020)
  br i1 %i.e, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.b, 0
  br i1 %i.g, label %.loopexit, label %bb.j

bb.g:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = load i8, ptr @g_CaseSensitive, align 1, !tbaa !12, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = tail call noundef signext i32 @_Z11MyCharUpperw(i32 noundef signext %i.a)
  %i.k = tail call noundef signext i32 @_Z11MyCharUpperw(i32 noundef signext %i.b)
  %.not24 = icmp eq i32 %i.j, %i.k
  br i1 %.not24, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.119 = phi ptr [ %.018, %bb.e ], [ %i.l, %bb.j ]
  %i.m = getelementptr inbounds nuw i8, ptr %.020, i64 4
  br label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.i, %bb.h, %bb.c
  %.1.ph = phi i1 [ %i.c, %bb.c ], [ false, %bb.f ], [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.h ]
  ret i1 %.1.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_Z23DoesNameContainWildCardRK11CStringBaseIwE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK11CStringBaseIwE9FindOneOfERKS0_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = load ptr, ptr @_ZL16kWildCardCharSet, align 8, !tbaa !8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
end_hunk_0
