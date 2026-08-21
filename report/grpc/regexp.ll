inline.NumInlined: 1273
inline.NumDeleted: 599
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3re26Regexp15StarPlusOrQuestENS_8RegexpOpEPS0_NS0_10ParseFlagsE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %.0.i = select i1 %i.v, ptr %i.w, ptr %i.x
  %i.y = load ptr, ptr %.0.i, align 8, !tbaa !53  ; 2 uses
  %i.z = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.y) ; 0 uses
  %i.aa = load i16, ptr %i.s, align 2, !tbaa !16
  %i.ab = icmp ult i16 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.i30 = select i1 %i.ab, ptr %i.ac, ptr %i.ad
  store ptr %i.y, ptr %.0.i30, align 8, !tbaa !53
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %.thread32

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.d, %.thread, %bb.e
  %i.af = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 5 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i32 noundef %0, i32 noundef %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  store i16 1, ptr %i.ag, align 2, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %1, ptr %i.ah, align 8, !tbaa !53
  br label %.thread32

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.thread32:                                        ; preds = %.thread, %bb.b, %bb.j, %bb.g
  %.027 = phi ptr [ %i.af, %bb.j ], [ %1, %bb.b ], [ %i.r, %bb.g ], [ %1, %.thread ]
  ret ptr %.027

bb.l:                                             ; preds = %bb.k, %bb.h
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.r, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %i.ae, %bb.h ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 40) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re26Regexp4PlusEPS0_NS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3re26Regexp15StarPlusOrQuestENS_8RegexpOpEPS0_NS0_10ParseFlagsE(i32 noundef 8, ptr noundef %0, i32 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re26Regexp4StarEPS0_NS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3re26Regexp15StarPlusOrQuestENS_8RegexpOpEPS0_NS0_10ParseFlagsE(i32 noundef 7, ptr noundef %0, i32 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re26Regexp5QuestEPS0_NS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3re26Regexp15StarPlusOrQuestENS_8RegexpOpEPS0_NS0_10ParseFlagsE(i32 noundef 9, ptr noundef %0, i32 noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re26Regexp17ConcatOrAlternateENS_8RegexpOpEPPS0_iNS0_10ParseFlagsEb(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.h [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !53
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit86

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 6
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 6 uses
  br i1 %i.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 1, i32 noundef %3)
          to label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit86 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #28
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit88

bb.f:                                             ; preds = %bb.c
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 2, i32 noundef %3)
          to label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit86 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #28
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit88

bb.h:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %0, 6
  %or.cond = and i1 %i.f, %4
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.g = icmp slt i32 %2, 0
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIPN3re26RegexpEE8allocateEmPKv.exit.i, !prof !68

.noexc.i:                                         ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIPN3re26RegexpEE8allocateEmPKv.exit.i: ; preds = %bb.i
  %i.h = zext nneg i32 %2 to i64
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #30 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %1, i64 %i.i, i1 false)
  %i.k = invoke noundef i32 @_ZN3re26Regexp17FactorAlternationEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.j, i32 noundef %2, i32 noundef %3)
          to label %bb.j unwind label %.body.thread128 ; 2 uses

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIPN3re26RegexpEE8allocateEmPKv.exit.i
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !53
  br label %bb.ad

.body.thread128:                                  ; preds = %_ZNSt15__new_allocatorIPN3re26RegexpEE8allocateEmPKv.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.099.0 = phi i32 [ %2, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.sroa.8102.0 = phi ptr [ %i.j, %bb.j ], [ null, %bb.h ] ; 4 uses
  %.068 = phi i32 [ %i.k, %bb.j ], [ %2, %bb.h ]  ; 10 uses
  %.067 = phi ptr [ %i.j, %bb.j ], [ %1, %bb.h ]  ; 9 uses
  %.067159 = ptrtoaddr ptr %.067 to i64
  %i.o = icmp sgt i32 %.068, 65535
  br i1 %i.o, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.p = add nuw i32 %.068, 65534
  %i.q = udiv i32 %i.p, 65535                     ; 3 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %bb.m unwind label %bb.o       ; 5 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i32 noundef %0, i32 noundef %3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.s = shl nuw nsw i32 %i.q, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #30
          to label %.lr.ph142.preheader unwind label %bb.o ; 3 uses

.lr.ph142.preheader:                              ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !36
  %i.w = trunc nuw i32 %i.q to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store i16 %i.w, ptr %i.x, align 2, !tbaa !16
  %i.y = add nsw i32 %i.q, -1                     ; 3 uses
  %wide.trip.count149 = zext nneg i32 %i.y to i64
  br label %.lr.ph142

._crit_edge:                                      ; preds = %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit92
  %i.z = mul nuw nsw i32 %i.y, 65535              ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %i.aa
  %i.ac = sub nsw i32 %.068, %i.z
  %i.ad = invoke noundef ptr @_ZN3re26Regexp17ConcatOrAlternateENS_8RegexpOpEPPS0_iNS0_10ParseFlagsEb(i32 noundef %0, ptr noundef %i.ab, i32 noundef %i.ac, i32 noundef %3, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 40) #28
  br label %.body

bb.q:                                             ; preds = %._crit_edge
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit92
  %indvar = phi i64 [ 0, %.lr.ph142.preheader ], [ %indvar.next, %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit92 ] ; 3 uses
  %i.ah = mul nuw nsw i64 %indvar, 524280
  %scevgep = getelementptr i8, ptr %.067, i64 %i.ah
  %i.ai = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %bb.r unwind label %bb.t, !inline_history !69 ; 5 uses

bb.r:                                             ; preds = %.lr.ph142
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i32 noundef %0, i32 noundef %3)
          to label %bb.s unwind label %bb.u, !inline_history !69

bb.s:                                             ; preds = %bb.r
  %i.aj = invoke noalias noundef nonnull dereferenceable(524280) ptr @_Znam(i64 noundef 524280) #30
          to label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit92 unwind label %bb.t ; 2 uses

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit92:        ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  store i16 -1, ptr %i.al, align 2, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524280) %i.aj, ptr noundef nonnull align 8 dereferenceable(524280) %scevgep, i64 524280, i1 false), !tbaa !53
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvar
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !53
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond150.not = icmp eq i64 %indvar.next, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge, label %.lr.ph142, !llvm.loop !70

bb.t:                                             ; preds = %bb.s, %.lr.ph142
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 40) #28, !inline_history !69
  br label %.body

bb.v:                                             ; preds = %._crit_edge
  %i.ap = zext nneg i32 %i.y to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ap
  store ptr %i.ad, ptr %i.aq, align 8, !tbaa !53
  br label %.loopexit

bb.w:                                             ; preds = %bb.k
  %i.ar = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %bb.x unwind label %bb.ab      ; 11 uses

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i32 noundef %0, i32 noundef %3)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.as = icmp sgt i32 %.068, 1
  br i1 %i.as, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.at = zext nneg i32 %.068 to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #30
          to label %.thread153 unwind label %bb.ab ; 2 uses

.thread153:                                       ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !36
  %i.ax = trunc nuw i32 %.068 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !16
  br label %.lr.ph.preheader

bb.aa:                                            ; preds = %bb.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %i.az = trunc i32 %.068 to i16                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !16
  %i.bb = icmp ult i16 %i.az, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.i84 = select i1 %i.bb, ptr %i.bc, ptr %.pre
  %i.bd = icmp eq i32 %.068, 1
  br i1 %i.bd, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.thread153, %bb.aa
  %.0.i84155 = phi ptr [ %i.av, %.thread153 ], [ %.0.i84, %bb.aa ] ; 7 uses
  %wide.trip.count = zext i32 %.068 to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %.068, 8
  %.0.i84155158 = ptrtoaddr ptr %.0.i84155 to i64
  %i.be = sub i64 %.067159, %.0.i84155158
  %diff.check = icmp ugt i64 %i.be, -32
  %or.cond161 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond161, label %.lr.ph.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !53
  %wide.load160 = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0.i84155, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <2 x ptr> %wide.load, ptr %i.bh, align 8, !tbaa !53
  store <2 x ptr> %wide.load160, ptr %i.bi, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader163

.lr.ph.preheader163:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader163, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader163 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader163 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %indvars.iv.prol
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0.i84155, i64 %indvars.iv.prol
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !53
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !74

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader163
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader163 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bn = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %.loopexit, label %.lr.ph

bb.ab:                                            ; preds = %bb.z, %bb.w
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 40) #28
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.0.i84155, i64 %indvars.iv
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %indvars.iv.next
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0.i84155, i64 %indvars.iv.next
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !53
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %indvars.iv.next.1
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.0.i84155, i64 %indvars.iv.next.1
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !53
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %indvars.iv.next.2
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !53
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0.i84155, i64 %indvars.iv.next.2
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !53
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !76

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.aa, %bb.v
  %.059 = phi ptr [ %i.r, %bb.v ], [ %i.ar, %bb.aa ], [ %i.ar, %middle.block ], [ %i.ar, %.lr.ph ], [ %i.ar, %.lr.ph.prol.loopexit ] ; 2 uses
  %.not.i.i85 = icmp eq ptr %.sroa.8102.0, null
  br i1 %.not.i.i85, label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit86, label %bb.ad

bb.ad:                                            ; preds = %.thread, %.loopexit
  %.059121 = phi ptr [ %i.m, %.thread ], [ %.059, %.loopexit ]
  %.sroa.8102.1120 = phi ptr [ %i.j, %.thread ], [ %.sroa.8102.0, %.loopexit ]
  %.sroa.099.1119 = phi i32 [ %2, %.thread ], [ %.sroa.099.0, %.loopexit ]
  %i.cd = zext nneg i32 %.sroa.099.1119 to i64
  %i.ce = shl nuw nsw i64 %i.cd, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.8102.1120, i64 noundef %i.ce) #28
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit86

.body:                                            ; preds = %bb.t, %bb.u, %bb.ab, %bb.ac, %bb.o, %bb.p, %bb.q
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.an, %bb.t ], [ %i.ag, %bb.q ], [ %i.ao, %bb.u ], [ %i.af, %bb.p ], [ %i.ae, %bb.o ], [ %i.bq, %bb.ac ], [ %i.bp, %bb.ab ] ; 2 uses
  %.not.i.i87 = icmp eq ptr %.sroa.8102.0, null
  br i1 %.not.i.i87, label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit88, label %bb.ae

bb.ae:                                            ; preds = %.body.thread128, %.body
  %.pn73.pn.pn135 = phi { ptr, i32 } [ %i.n, %.body.thread128 ], [ %.pn73.pn.pn, %.body ]
  %.sroa.8102.2134 = phi ptr [ %i.j, %.body.thread128 ], [ %.sroa.8102.0, %.body ]
  %.sroa.099.2133 = phi i32 [ %2, %.body.thread128 ], [ %.sroa.099.0, %.body ]
  %i.cf = zext nneg i32 %.sroa.099.2133 to i64
  %i.cg = shl nuw nsw i64 %i.cf, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.8102.2134, i64 noundef %i.cg) #28
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit88

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit86:        ; preds = %bb.ad, %.loopexit, %bb.f, %bb.d, %bb.b
end_hunk_0
