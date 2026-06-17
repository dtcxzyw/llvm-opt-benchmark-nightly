inline.NumInlined: 343
inline.NumDeleted: 117
begin_hunk_0_@_ZN2v88internal8compiler8Schedule8AddThrowEPNS1_10BasicBlockEPNS1_4NodeE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 8, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %2, %i.j
  br i1 %i.k, label %bb.e, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.d, align 8
  br label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i

_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 16777215                   ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %.not.i.i = icmp ugt i64 %i.y, %i.p
  br i1 %.not.i.i, label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i
  %i.z = add nuw nsw i32 %i.o, 1
  %i.aa = zext nneg i32 %i.z to i64               ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.w
  %i.af = ashr exact i64 %i.ae, 3
  %.not.i.i.i.i = icmp ult i64 %i.af, %i.aa
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.aa)
  %.pre.i.i.i = load ptr, ptr %i.t, align 8       ; 2 uses
  %.pre13.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  %.pre.i.i = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ag = phi ptr [ %i.s, %bb.f ], [ %.pre.i.i, %bb.g ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.w, %bb.f ], [ %.pre13.i.i.i, %bb.g ]
  %i.ah = phi ptr [ %i.u, %bb.f ], [ %.pre.i.i.i, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aa ; 2 uses
  %i.aj = icmp ult ptr %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i
  %i.ak = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.al = shl nuw nsw i64 %i.aa, 3
  %i.am = add nuw i64 %.pre-phi.i.i.i, %i.al
  %i.an = add i64 %i.ak, 8
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = xor i64 %i.ak, -1
  %i.ap = add i64 %umax.i.i.i, %i.ao
  %i.aq = and i64 %i.ap, -8
  %i.ar = add i64 %i.aq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ar, i1 false)
  %.pre6.pre.i.i = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i
  %.pre6.i.i = phi ptr [ %i.ah, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i ], [ %.pre6.pre.i.i, %.lr.ph.preheader.i.i.i ]
  store ptr %i.ai, ptr %i.r, align 8
  %.pre5.i.i = load i32, ptr %i.m, align 4
  %.pre8.i.i = and i32 %.pre5.i.i, 16777215
  %.pre9.i.i = zext nneg i32 %.pre8.i.i to i64
  br label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit

_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i
  %.pre-phi10.i.i = phi i64 [ %.pre9.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i ], [ %i.p, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i ]
  %i.as = phi ptr [ %.pre6.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i ], [ %i.u, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.pre-phi10.i.i
  store ptr %1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load ptr, ptr %i.au, align 8            ; 6 uses
  %.not = icmp eq ptr %1, %i.av
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp ult ptr %i.ax, %i.az
  br i1 %i.ba, label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = add nsw i64 %i.bh, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 noundef %i.bi)
  %.pre.i.i.i7 = load ptr, ptr %i.aw, align 8
  br label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i

_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i: ; preds = %bb.i, %bb.h
  %i.bj = phi ptr [ %i.ax, %bb.h ], [ %.pre.i.i.i7, %bb.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.aw, align 8
  store ptr %i.av, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 144 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp ult ptr %i.bm, %i.bo
  br i1 %i.bp, label %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit, label %bb.j, !prof !5

bb.j:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = add nsw i64 %i.bw, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 noundef %i.bx)
  %.pre.i.i4.i = load ptr, ptr %i.bl, align 8
  br label %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit

_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit: ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i, %bb.j
  %i.by = phi ptr [ %i.bm, %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i ], [ %.pre.i.i4.i, %bb.j ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.bl, align 8
  store ptr %1, ptr %i.by, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit, %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler8Schedule12InsertBranchEPNS1_10BasicBlockES4_PNS1_4NodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not43 = icmp eq i32 %i.b, 0
  br i1 %.not43, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 %i.b, ptr %i.c, align 4
  store i32 3, ptr %i.a, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.g, %i.i
  br i1 %.not25.i, label %_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 104
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %1, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.f

._crit_edge29.loopexit.i:                         ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph28.i
  %.026.i = phi ptr [ %i.g, %.lr.ph28.i ], [ %i.ad, %._crit_edge.i ] ; 2 uses
  %i.n = load ptr, ptr %.026.i, align 8           ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.m, align 8
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = add nsw i64 %i.v, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.w)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i

_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i: ; preds = %bb.g, %bb.f
  %i.x = phi ptr [ %i.o, %bb.f ], [ %.pre.i.i.i, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.j, align 8
  store ptr %i.n, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.aa = load ptr, ptr %i.z, align 8             ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not2223.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not2223.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i
  %6 = ptrtoint ptr %i.ac to i64
  %7 = ptrtoint ptr %i.aa to i64
  %8 = add i64 %6, -8
  %9 = sub i64 %8, %7                             ; 2 uses
  %10 = lshr i64 %9, 3
  %11 = add nuw nsw i64 %10, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %9, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %11, 4611686018427387900       ; 3 uses
  %12 = shl i64 %n.vec, 3
  %13 = getelementptr i8, ptr %i.aa, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue79, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue79 ] ; 2 uses
  %14 = shl i64 %index, 3                         ; 4 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %14 ; 3 uses
  %15 = getelementptr i8, ptr %i.aa, i64 %14
  %next.gep70 = getelementptr i8, ptr %15, i64 8
  %16 = getelementptr i8, ptr %i.aa, i64 %14
  %next.gep71 = getelementptr i8, ptr %16, i64 16
  %17 = getelementptr i8, ptr %i.aa, i64 %14
  %next.gep72 = getelementptr i8, ptr %17, i64 24
  %18 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8
  %wide.load73 = load <2 x ptr>, ptr %18, align 8
  %19 = icmp eq <2 x ptr> %wide.load, %broadcast.splat ; 2 uses
  %20 = icmp eq <2 x ptr> %wide.load73, %broadcast.splat ; 2 uses
  %21 = extractelement <2 x i1> %19, i64 0
  br i1 %21, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store ptr %2, ptr %next.gep, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %22 = extractelement <2 x i1> %19, i64 1
  br i1 %22, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue
  store ptr %2, ptr %next.gep70, align 8
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue
  %23 = extractelement <2 x i1> %20, i64 0
  br i1 %23, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  store ptr %2, ptr %next.gep71, align 8
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %24 = extractelement <2 x i1> %20, i64 1
  br i1 %24, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  store ptr %2, ptr %next.gep72, align 8
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %25 = icmp eq i64 %index.next, %n.vec
  br i1 %25, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %pred.store.continue79
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader80

.lr.ph.i.preheader80:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.02124.i.ph = phi ptr [ %i.aa, %.lr.ph.i.preheader ], [ %13, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %middle.block, %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.i
  br i1 %.not.i, label %._crit_edge29.loopexit.i, label %bb.f

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader80, %bb.i
  %.02124.i = phi ptr [ %i.ag, %bb.i ], [ %.02124.i.ph, %.lr.ph.i.preheader80 ] ; 3 uses
  %i.ae = load ptr, ptr %.02124.i, align 8
  %i.af = icmp eq ptr %i.ae, %1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  store ptr %2, ptr %.02124.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.02124.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.ag, %i.ac
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit: ; preds = %bb.e, %._crit_edge29.loopexit.i
  %i.ah = phi ptr [ %.pre.i, %._crit_edge29.loopexit.i ], [ %i.g, %bb.e ] ; 4 uses
  store ptr %i.ah, ptr %i.h, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ult ptr %i.ah, %i.aj
  br i1 %i.ak, label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i19, label %bb.j, !prof !5

bb.j:                                             ; preds = %_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = add nsw i64 %i.ap, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %i.aq)
  %.pre.i.i.i18 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i19

_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i19: ; preds = %bb.j, %_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit
  %i.ar = phi ptr [ %i.ah, %_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit ], [ %.pre.i.i.i18, %bb.j ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.as, ptr %i.h, align 8
  store ptr %4, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp ult ptr %i.au, %i.aw
  br i1 %i.ax, label %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i19
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %i.bf = add nsw i64 %i.be, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.bf)
  %.pre.i.i4.i = load ptr, ptr %i.at, align 8
  br label %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit

_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit: ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i19, %bb.k
  %i.bg = phi ptr [ %i.au, %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i19 ], [ %.pre.i.i4.i, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.at, align 8
  store ptr %1, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.bk = icmp ult ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21, label %bb.l, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bm = load ptr, ptr %i.f, align 8
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %i.br = add nsw i64 %i.bq, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.br)
  %.pre.i.i.i20 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21

_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21: ; preds = %bb.l, %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit
  %i.bs = phi ptr [ %i.bi, %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit ], [ %.pre.i.i.i20, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.h, align 8
  store ptr %5, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = icmp ult ptr %i.bv, %i.bx
  br i1 %i.by, label %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit23, label %bb.m, !prof !5

bb.m:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = add nsw i64 %i.cf, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.cg)
  %.pre.i.i4.i22 = load ptr, ptr %i.bu, align 8
  br label %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit23

_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit23: ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21, %bb.m
  %i.ch = phi ptr [ %i.bv, %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21 ], [ %.pre.i.i4.i22, %bb.m ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ci, ptr %i.bu, align 8
  store ptr %1, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 4 uses
  %.not = icmp eq ptr %i.ck, null
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit23
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.ck, %i.cr
  br i1 %i.cs, label %bb.p, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i

bb.p:                                             ; preds = %bb.o
  store ptr %i.cq, ptr %i.cl, align 8
  br label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i

_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.ck, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 20 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = and i32 %i.cv, 16777215                 ; 2 uses
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = ptrtoint ptr %i.dc to i64               ; 3 uses
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3
  %.not.i.i = icmp ugt i64 %i.dg, %i.cx
  br i1 %.not.i.i, label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i
  %i.dh = add nuw nsw i32 %i.cw, 1
  %i.di = zext nneg i32 %i.dh to i64              ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.de
  %i.dn = ashr exact i64 %i.dm, 3
  %.not.i.i.i.i = icmp ult i64 %i.dn, %i.di
  br i1 %.not.i.i.i.i, label %bb.r, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i, !prof !9

bb.r:                                             ; preds = %bb.q
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 noundef %i.di)
  %.pre.i.i.i24 = load ptr, ptr %i.db, align 8    ; 2 uses
  %.pre13.i.i.i = ptrtoint ptr %.pre.i.i.i24 to i64
  %.pre.i.i = load ptr, ptr %i.cz, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i: ; preds = %bb.r, %bb.q
  %i.do = phi ptr [ %i.da, %bb.q ], [ %.pre.i.i, %bb.r ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.de, %bb.q ], [ %.pre13.i.i.i, %bb.r ]
  %i.dp = phi ptr [ %i.dc, %bb.q ], [ %.pre.i.i.i24, %bb.r ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.di ; 2 uses
  %i.dr = icmp ult ptr %i.do, %i.dq
  br i1 %i.dr, label %.lr.ph.preheader.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i
  %i.ds = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dt = shl nuw nsw i64 %i.di, 3
  %i.du = add nuw i64 %.pre-phi.i.i.i, %i.dt
  %i.dv = add i64 %i.ds, 8
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dv)
  %i.dw = xor i64 %i.ds, -1
  %i.dx = add i64 %umax.i.i.i, %i.dw
  %i.dy = and i64 %i.dx, -8
  %i.dz = add i64 %i.dy, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.do, i8 0, i64 %i.dz, i1 false)
  %.pre6.pre.i.i = load ptr, ptr %i.db, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i
  %.pre6.i.i = phi ptr [ %i.dp, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i ], [ %.pre6.pre.i.i, %.lr.ph.preheader.i.i.i ]
  store ptr %i.dq, ptr %i.cz, align 8
  %.pre5.i.i = load i32, ptr %i.cu, align 4
  %.pre8.i.i = and i32 %.pre5.i.i, 16777215
  %.pre9.i.i = zext nneg i32 %.pre8.i.i to i64
  br label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit

_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i
  %.pre-phi10.i.i = phi i64 [ %.pre9.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i ], [ %i.cx, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i ]
  %i.ea = phi ptr [ %.pre6.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i ], [ %i.dc, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.pre-phi10.i.i
  store ptr %2, ptr %i.eb, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit, %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit23
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = icmp eq ptr %i.ed, %i.ef
  br i1 %i.eg, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i25, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = icmp eq ptr %3, %i.ei
  br i1 %i.ej, label %bb.u, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i25

bb.u:                                             ; preds = %bb.t
  store ptr %i.eh, ptr %i.ec, align 8
  br label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i25

_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i25: ; preds = %bb.u, %bb.t, %bb.s
  store ptr %3, ptr %i.cj, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, 16777215                 ; 2 uses
  %i.en = zext nneg i32 %i.em to i64              ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8            ; 3 uses
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = ptrtoint ptr %i.es to i64               ; 3 uses
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 3
  %.not.i.i26 = icmp ugt i64 %i.ew, %i.en
  br i1 %.not.i.i26, label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit42, label %bb.v

bb.v:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i25
  %i.ex = add nuw nsw i32 %i.em, 1
  %i.ey = zext nneg i32 %i.ex to i64              ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = sub i64 %i.fb, %i.eu
  %i.fd = ashr exact i64 %i.fc, 3
  %.not.i.i.i.i27 = icmp ult i64 %i.fd, %i.ey
  br i1 %.not.i.i.i.i27, label %bb.w, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i28, !prof !9

bb.w:                                             ; preds = %bb.v
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, i64 noundef %i.ey)
  %.pre.i.i.i39 = load ptr, ptr %i.er, align 8    ; 2 uses
  %.pre13.i.i.i40 = ptrtoint ptr %.pre.i.i.i39 to i64
  %.pre.i.i41 = load ptr, ptr %i.ep, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i28

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i28: ; preds = %bb.w, %bb.v
  %i.fe = phi ptr [ %i.eq, %bb.v ], [ %.pre.i.i41, %bb.w ] ; 3 uses
  %.pre-phi.i.i.i29 = phi i64 [ %i.eu, %bb.v ], [ %.pre13.i.i.i40, %bb.w ]
  %i.ff = phi ptr [ %i.es, %bb.v ], [ %.pre.i.i.i39, %bb.w ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.ey ; 2 uses
  %i.fh = icmp ult ptr %i.fe, %i.fg
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i36, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i30

.lr.ph.preheader.i.i.i36:                         ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i28
  %i.fi = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fj = shl nuw nsw i64 %i.ey, 3
  %i.fk = add nuw i64 %.pre-phi.i.i.i29, %i.fj
  %i.fl = add i64 %i.fi, 8
  %umax.i.i.i37 = tail call i64 @llvm.umax.i64(i64 %i.fk, i64 %i.fl)
  %i.fm = xor i64 %i.fi, -1
  %i.fn = add i64 %umax.i.i.i37, %i.fm
  %i.fo = and i64 %i.fn, -8
  %i.fp = add i64 %i.fo, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fe, i8 0, i64 %i.fp, i1 false)
  %.pre6.pre.i.i38 = load ptr, ptr %i.er, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i30

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i30: ; preds = %.lr.ph.preheader.i.i.i36, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i28
  %.pre6.i.i31 = phi ptr [ %i.ff, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i28 ], [ %.pre6.pre.i.i38, %.lr.ph.preheader.i.i.i36 ]
  store ptr %i.fg, ptr %i.ep, align 8
  %.pre5.i.i32 = load i32, ptr %i.ek, align 4
  %.pre8.i.i33 = and i32 %.pre5.i.i32, 16777215
  %.pre9.i.i34 = zext nneg i32 %.pre8.i.i33 to i64
  br label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit42

_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit42: ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i25, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i30
  %.pre-phi10.i.i35 = phi i64 [ %.pre9.i.i34, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i30 ], [ %i.en, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i25 ]
  %i.fq = phi ptr [ %.pre6.i.i31, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i30 ], [ %i.es, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i25 ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.pre-phi10.i.i35
  store ptr %1, ptr %i.fr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef captures(address) %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.b, %i.d
  br i1 %.not25, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 104
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %1, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

._crit_edge29.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge29.loopexit ], [ %i.b, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph28, %._crit_edge
  %.026 = phi ptr [ %i.b, %.lr.ph28 ], [ %i.z, %._crit_edge ] ; 2 uses
  %i.j = load ptr, ptr %.026, align 8             ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.m = icmp ult ptr %i.k, %i.l
  br i1 %i.m, label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = add nsw i64 %i.r, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.s)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit

_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit: ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.e, align 8
  store ptr %i.j, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.w = load ptr, ptr %i.v, align 8              ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not2223 = icmp eq ptr %i.w, %i.y
  br i1 %.not2223, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit
  %3 = ptrtoint ptr %i.y to i64
  %4 = ptrtoint ptr %i.w to i64
  %5 = add i64 %3, -8
  %6 = sub i64 %5, %4                             ; 2 uses
  %7 = lshr i64 %6, 3
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %6, 24
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %8, 4611686018427387900        ; 3 uses
  %9 = shl i64 %n.vec, 3
  %10 = getelementptr i8, ptr %i.w, i64 %9
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue46, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue46 ] ; 2 uses
  %11 = shl i64 %index, 3                         ; 4 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %11 ; 3 uses
  %12 = getelementptr i8, ptr %i.w, i64 %11
  %next.gep37 = getelementptr i8, ptr %12, i64 8
  %13 = getelementptr i8, ptr %i.w, i64 %11
  %next.gep38 = getelementptr i8, ptr %13, i64 16
  %14 = getelementptr i8, ptr %i.w, i64 %11
  %next.gep39 = getelementptr i8, ptr %14, i64 24
  %15 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8
  %wide.load40 = load <2 x ptr>, ptr %15, align 8
  %16 = icmp eq <2 x ptr> %wide.load, %broadcast.splat ; 2 uses
  %17 = icmp eq <2 x ptr> %wide.load40, %broadcast.splat ; 2 uses
  %18 = extractelement <2 x i1> %16, i64 0
  br i1 %18, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store ptr %2, ptr %next.gep, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %19 = extractelement <2 x i1> %16, i64 1
  br i1 %19, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue
  store ptr %2, ptr %next.gep37, align 8
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue
  %20 = extractelement <2 x i1> %17, i64 0
  br i1 %20, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  store ptr %2, ptr %next.gep38, align 8
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %21 = extractelement <2 x i1> %17, i64 1
  br i1 %21, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  store ptr %2, ptr %next.gep39, align 8
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %pred.store.continue46
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader47

.lr.ph.preheader47:                               ; preds = %.lr.ph.preheader, %middle.block
  %.02124.ph = phi ptr [ %i.w, %.lr.ph.preheader ], [ %10, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %middle.block, %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.026, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.d
  br i1 %.not, label %._crit_edge29.loopexit, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader47, %bb.e
  %.02124 = phi ptr [ %i.ac, %bb.e ], [ %.02124.ph, %.lr.ph.preheader47 ] ; 3 uses
  %i.aa = load ptr, ptr %.02124, align 8
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  store ptr %2, ptr %.02124, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.02124, i64 8 ; 2 uses
  %.not22 = icmp eq ptr %i.ac, %i.y
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !18
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler8Schedule12InsertSwitchEPNS1_10BasicBlockES4_PNS1_4NodeEPS4_m(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not41 = icmp eq i32 %i.b, 0
  br i1 %.not41, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 %i.b, ptr %i.c, align 4
  store i32 4, ptr %i.a, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.g, %i.i
  br i1 %.not25.i, label %_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 104
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %1, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.f

._crit_edge29.loopexit.i:                         ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph28.i
  %.026.i = phi ptr [ %i.g, %.lr.ph28.i ], [ %i.ad, %._crit_edge.i ] ; 2 uses
  %i.n = load ptr, ptr %.026.i, align 8           ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.q = icmp ult ptr %i.o, %i.p
  br i1 %i.q, label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.m, align 8
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = add nsw i64 %i.v, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.w)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i

_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i: ; preds = %bb.g, %bb.f
  %i.x = phi ptr [ %i.o, %bb.f ], [ %.pre.i.i.i, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.j, align 8
  store ptr %i.n, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.aa = load ptr, ptr %i.z, align 8             ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not2223.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not2223.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i
  %6 = ptrtoint ptr %i.ac to i64
  %7 = ptrtoint ptr %i.aa to i64
  %8 = add i64 %6, -8
  %9 = sub i64 %8, %7                             ; 2 uses
  %10 = lshr i64 %9, 3
  %11 = add nuw nsw i64 %10, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %9, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %11, 4611686018427387900       ; 3 uses
  %12 = shl i64 %n.vec, 3
  %13 = getelementptr i8, ptr %i.aa, i64 %12
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue76, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue76 ] ; 2 uses
  %14 = shl i64 %index, 3                         ; 4 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %14 ; 3 uses
  %15 = getelementptr i8, ptr %i.aa, i64 %14
  %next.gep67 = getelementptr i8, ptr %15, i64 8
  %16 = getelementptr i8, ptr %i.aa, i64 %14
  %next.gep68 = getelementptr i8, ptr %16, i64 16
  %17 = getelementptr i8, ptr %i.aa, i64 %14
  %next.gep69 = getelementptr i8, ptr %17, i64 24
  %18 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8
  %wide.load70 = load <2 x ptr>, ptr %18, align 8
  %19 = icmp eq <2 x ptr> %wide.load, %broadcast.splat ; 2 uses
  %20 = icmp eq <2 x ptr> %wide.load70, %broadcast.splat ; 2 uses
  %21 = extractelement <2 x i1> %19, i64 0
  br i1 %21, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store ptr %2, ptr %next.gep, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %22 = extractelement <2 x i1> %19, i64 1
  br i1 %22, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue
  store ptr %2, ptr %next.gep67, align 8
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue
  %23 = extractelement <2 x i1> %20, i64 0
  br i1 %23, label %pred.store.if73, label %pred.store.continue74

pred.store.if73:                                  ; preds = %pred.store.continue72
  store ptr %2, ptr %next.gep68, align 8
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.if73, %pred.store.continue72
  %24 = extractelement <2 x i1> %20, i64 1
  br i1 %24, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue74
  store ptr %2, ptr %next.gep69, align 8
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %25 = icmp eq i64 %index.next, %n.vec
  br i1 %25, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %pred.store.continue76
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader77

.lr.ph.i.preheader77:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.02124.i.ph = phi ptr [ %i.aa, %.lr.ph.i.preheader ], [ %13, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %middle.block, %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.i
  br i1 %.not.i, label %._crit_edge29.loopexit.i, label %bb.f

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader77, %bb.i
  %.02124.i = phi ptr [ %i.ag, %bb.i ], [ %.02124.i.ph, %.lr.ph.i.preheader77 ] ; 3 uses
  %i.ae = load ptr, ptr %.02124.i, align 8
  %i.af = icmp eq ptr %i.ae, %1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  store ptr %2, ptr %.02124.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.02124.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.ag, %i.ac
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !20

_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit: ; preds = %bb.e, %._crit_edge29.loopexit.i
  %i.ah = phi ptr [ %.pre.i, %._crit_edge29.loopexit.i ], [ %i.g, %bb.e ]
  store ptr %i.ah, ptr %i.h, align 8
  %.not43 = icmp eq i64 %5, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit, %_ZN2v88internal8compiler8Schedule14MoveSuccessorsEPNS1_10BasicBlockES4_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.r, label %bb.m

bb.j:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit
  %.042 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.042
  %i.an = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.ao = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ap = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.aq = icmp ult ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.f, align 8
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = add nsw i64 %i.av, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.aw)
  %.pre.i.i.i20 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21

_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21: ; preds = %bb.k, %bb.j
  %i.ax = phi ptr [ %i.ao, %bb.j ], [ %.pre.i.i.i20, %bb.k ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.h, align 8
  store ptr %i.an, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 144 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp ult ptr %i.ba, %i.bc
  br i1 %i.bd, label %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit, label %bb.l, !prof !5

bb.l:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = add nsw i64 %i.bk, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bl)
  %.pre.i.i4.i = load ptr, ptr %i.az, align 8
  br label %_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit

_ZN2v88internal8compiler8Schedule12AddSuccessorEPNS1_10BasicBlockES4_.exit: ; preds = %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21, %bb.l
  %i.bm = phi ptr [ %i.ba, %_ZN2v88internal8compiler10BasicBlock12AddSuccessorEPS2_.exit.i21 ], [ %.pre.i.i4.i, %bb.l ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.az, align 8
  store ptr %1, ptr %i.bm, align 8
  %i.bo = add nuw i64 %.042, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !21

bb.m:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = icmp eq ptr %i.al, %i.bv
  br i1 %i.bw, label %bb.o, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.bu, ptr %i.bp, align 8
  br label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i

_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.al, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = and i32 %i.bz, 16777215                 ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = ptrtoint ptr %i.cg to i64               ; 3 uses
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3
  %.not.i.i = icmp ugt i64 %i.ck, %i.cb
  br i1 %.not.i.i, label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i
  %i.cl = add nuw nsw i32 %i.ca, 1
  %i.cm = zext nneg i32 %i.cl to i64              ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.ci
  %i.cr = ashr exact i64 %i.cq, 3
  %.not.i.i.i.i = icmp ult i64 %i.cr, %i.cm
  br i1 %.not.i.i.i.i, label %bb.q, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 noundef %i.cm)
  %.pre.i.i.i22 = load ptr, ptr %i.cf, align 8    ; 2 uses
  %.pre13.i.i.i = ptrtoint ptr %.pre.i.i.i22 to i64
  %.pre.i.i = load ptr, ptr %i.cd, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.cs = phi ptr [ %i.ce, %bb.p ], [ %.pre.i.i, %bb.q ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.ci, %bb.p ], [ %.pre13.i.i.i, %bb.q ]
  %i.ct = phi ptr [ %i.cg, %bb.p ], [ %.pre.i.i.i22, %bb.q ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cm ; 2 uses
  %i.cv = icmp ult ptr %i.cs, %i.cu
  br i1 %i.cv, label %.lr.ph.preheader.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i
  %i.cw = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cx = shl nuw nsw i64 %i.cm, 3
  %i.cy = add nuw i64 %.pre-phi.i.i.i, %i.cx
  %i.cz = add i64 %i.cw, 8
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.cz)
  %i.da = xor i64 %i.cw, -1
  %i.db = add i64 %umax.i.i.i, %i.da
  %i.dc = and i64 %i.db, -8
  %i.dd = add i64 %i.dc, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cs, i8 0, i64 %i.dd, i1 false)
  %.pre6.pre.i.i = load ptr, ptr %i.cf, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i
  %.pre6.i.i = phi ptr [ %i.ct, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i ], [ %.pre6.pre.i.i, %.lr.ph.preheader.i.i.i ]
  store ptr %i.cu, ptr %i.cd, align 8
  %.pre5.i.i = load i32, ptr %i.by, align 4
  %.pre8.i.i = and i32 %.pre5.i.i, 16777215
  %.pre9.i.i = zext nneg i32 %.pre8.i.i to i64
  br label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit

_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i
  %.pre-phi10.i.i = phi i64 [ %.pre9.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i ], [ %i.cb, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i ]
  %i.de = phi ptr [ %.pre6.i.i, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i ], [ %i.cg, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.pre-phi10.i.i
  store ptr %2, ptr %i.df, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit, %._crit_edge
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = icmp eq ptr %i.dh, %i.dj
  br i1 %i.dk, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i23, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 -8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = icmp eq ptr %3, %i.dm
  br i1 %i.dn, label %bb.t, label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i23

bb.t:                                             ; preds = %bb.s
  store ptr %i.dl, ptr %i.dg, align 8
  br label %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i23

_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i23: ; preds = %bb.t, %bb.s, %bb.r
  store ptr %3, ptr %i.ak, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = and i32 %i.dp, 16777215                 ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 3 uses
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3
  %.not.i.i24 = icmp ugt i64 %i.ea, %i.dr
  br i1 %.not.i.i24, label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit40, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i23
  %i.eb = add nuw nsw i32 %i.dq, 1
  %i.ec = zext nneg i32 %i.eb to i64              ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.ef, %i.dy
  %i.eh = ashr exact i64 %i.eg, 3
  %.not.i.i.i.i25 = icmp ult i64 %i.eh, %i.ec
  br i1 %.not.i.i.i.i25, label %bb.v, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i26, !prof !9

bb.v:                                             ; preds = %bb.u
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.ec)
  %.pre.i.i.i37 = load ptr, ptr %i.dv, align 8    ; 2 uses
  %.pre13.i.i.i38 = ptrtoint ptr %.pre.i.i.i37 to i64
  %.pre.i.i39 = load ptr, ptr %i.dt, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i26

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i26: ; preds = %bb.v, %bb.u
  %i.ei = phi ptr [ %i.du, %bb.u ], [ %.pre.i.i39, %bb.v ] ; 3 uses
  %.pre-phi.i.i.i27 = phi i64 [ %i.dy, %bb.u ], [ %.pre13.i.i.i38, %bb.v ]
  %i.ej = phi ptr [ %i.dw, %bb.u ], [ %.pre.i.i.i37, %bb.v ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ec ; 2 uses
  %i.el = icmp ult ptr %i.ei, %i.ek
  br i1 %i.el, label %.lr.ph.preheader.i.i.i34, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i28

.lr.ph.preheader.i.i.i34:                         ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i26
  %i.em = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.en = shl nuw nsw i64 %i.ec, 3
  %i.eo = add nuw i64 %.pre-phi.i.i.i27, %i.en
  %i.ep = add i64 %i.em, 8
  %umax.i.i.i35 = tail call i64 @llvm.umax.i64(i64 %i.eo, i64 %i.ep)
  %i.eq = xor i64 %i.em, -1
  %i.er = add i64 %umax.i.i.i35, %i.eq
  %i.es = and i64 %i.er, -8
  %i.et = add i64 %i.es, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ei, i8 0, i64 %i.et, i1 false)
  %.pre6.pre.i.i36 = load ptr, ptr %i.dv, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i28

_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i28: ; preds = %.lr.ph.preheader.i.i.i34, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i26
  %.pre6.i.i29 = phi ptr [ %i.ej, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE14EnsureCapacityEm.exit.i.i.i26 ], [ %.pre6.pre.i.i36, %.lr.ph.preheader.i.i.i34 ]
  store ptr %i.ek, ptr %i.dt, align 8
  %.pre5.i.i30 = load i32, ptr %i.do, align 4
  %.pre8.i.i31 = and i32 %.pre5.i.i30, 16777215
  %.pre9.i.i32 = zext nneg i32 %.pre8.i.i31 to i64
  br label %_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit40

_ZN2v88internal8compiler8Schedule15SetControlInputEPNS1_10BasicBlockEPNS1_4NodeE.exit40: ; preds = %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i23, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i28
  %.pre-phi10.i.i33 = phi i64 [ %.pre9.i.i32, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i28 ], [ %i.dr, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i23 ]
  %i.eu = phi ptr [ %.pre6.i.i29, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE6resizeEm.exit.i.i28 ], [ %i.dw, %_ZN2v88internal8compiler10BasicBlock17set_control_inputEPNS1_4NodeE.exit.i23 ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.pre-phi10.i.i33
  store ptr %1, ptr %i.ev, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler8Schedule23EnsureCFGWellFormednessEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2v88internal8compiler8Schedule26EliminateRedundantPhiNodesEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal8compiler8Schedule19EnsureSplitEdgeFormEPNS1_10BasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler8Schedule26EliminateRedundantPhiNodesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.split75.us, label %.split

.loopexit:                                        ; preds = %._crit_edge
  br i1 %.2.lcssa, label %.split75.us, label %.split, !llvm.loop !22

.split:                                           ; preds = %bb.a, %.loopexit
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not69 = icmp eq ptr %i.f, %i.g
  br i1 %.not69, label %.split75.us, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %._crit_edge
  %.171 = phi i1 [ %.2.lcssa, %._crit_edge ], [ true, %.split ] ; 3 uses
  %.03970 = phi ptr [ %i.br, %._crit_edge ], [ %i.f, %.split ] ; 2 uses
  %i.h = load ptr, ptr %.03970, align 8           ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.fr = freeze i64 %i.o
  %i.p = lshr i64 %.fr, 3                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 5 uses
  %i.s = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.t = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not76 = icmp eq ptr %i.s, %i.t
  br i1 %.not76, label %._crit_edge, label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph
  %i.u = trunc i64 %i.p to i32
  %.not5354 = icmp sgt i32 %i.u, 1
  br i1 %.not5354, label %.lr.ph59.split.us.preheader, label %.lr.ph59.split

.lr.ph59.split.us.preheader:                      ; preds = %.lr.ph59
  %wide.trip.count = and i64 %i.p, 2147483647
  %wide.trip.count85 = and i64 %i.p, 2147483647
  br label %.lr.ph59.split.us

.lr.ph59.split.us:                                ; preds = %.lr.ph59.split.us.preheader, %.split.us66
  %i.v = phi ptr [ %i.au, %.split.us66 ], [ %i.t, %.lr.ph59.split.us.preheader ] ; 4 uses
  %i.w = phi ptr [ %i.av, %.split.us66 ], [ %i.s, %.lr.ph59.split.us.preheader ] ; 3 uses
  %.258.us = phi i1 [ %.5.us, %.split.us66 ], [ %.171, %.lr.ph59.split.us.preheader ] ; 3 uses
  %.04256.us = phi i64 [ %i.aw, %.split.us66 ], [ 0, %.lr.ph59.split.us.preheader ] ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.04256.us
  %i.y = load ptr, ptr %i.x, align 8              ; 7 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = icmp eq i16 %i.ab, 36
  br i1 %i.ac, label %bb.b, label %.split.us66

bb.b:                                             ; preds = %.lr.ph59.split.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 251658240
  %.not.i.i.us = icmp eq i32 %i.af, 251658240
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = add i64 %i.ag, 32
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  br i1 %.not.i.i.us, label %.lr.ph.split.us.us, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us61

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge.loopexit_crit_edge.us, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us61, !llvm.loop !24

_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us61: ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not47.us63 = icmp eq ptr %i.al, %i.aj
  %.not48.us64 = icmp eq ptr %i.al, %i.y
  %or.cond.us65 = or i1 %.not47.us63, %.not48.us64
  br i1 %or.cond.us65, label %bb.c, label %.split.us66

bb.d:                                             ; preds = %..critedge.loopexit_crit_edge.us
  %i.am = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.an = ptrtoint ptr %i.bf to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.am, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  store ptr %i.ar, ptr %i.q, align 8
  %.pre87.pre = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit.us

_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit.us: ; preds = %..critedge.loopexit_crit_edge.us, %bb.d
  %.pre87 = phi ptr [ %i.bd, %..critedge.loopexit_crit_edge.us ], [ %.pre87.pre, %bb.d ]
  %i.as = phi ptr [ %i.be, %..critedge.loopexit_crit_edge.us ], [ %i.ar, %bb.d ]
  %i.at = add i64 %.04256.us, -1
  br label %.split.us66

.split.us66:                                      ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us61, %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us.us, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit.us, %.lr.ph59.split.us
  %i.au = phi ptr [ %i.v, %.lr.ph59.split.us ], [ %.pre87, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit.us ], [ %i.v, %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us.us ], [ %i.v, %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us61 ] ; 2 uses
  %i.av = phi ptr [ %i.w, %.lr.ph59.split.us ], [ %i.as, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit.us ], [ %i.w, %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us.us ], [ %i.w, %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us61 ] ; 2 uses
  %.345.us = phi i64 [ %.04256.us, %.lr.ph59.split.us ], [ %i.at, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit.us ], [ %.04256.us, %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us.us ], [ %.04256.us, %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us61 ]
  %.5.us = phi i1 [ %.258.us, %.lr.ph59.split.us ], [ false, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit.us ], [ %.258.us, %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us.us ], [ %.258.us, %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us61 ] ; 2 uses
  %i.aw = add i64 %.345.us, 1                     ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3
  %i.bb = icmp ult i64 %i.aw, %i.ba
  br i1 %i.bb, label %.lr.ph59.split.us, label %._crit_edge, !llvm.loop !25

..critedge.loopexit_crit_edge.us:                 ; preds = %bb.c, %bb.e
  %i.bc = phi ptr [ %i.bk, %bb.e ], [ %i.aj, %bb.c ]
  tail call void @_ZN2v88internal8compiler4Node11ReplaceUsesEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef %i.bc) #22
  tail call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.y) #22
  %i.bd = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.04256.us ; 4 uses
  %i.bf = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit.us, label %bb.d

.lr.ph.split.us.us:                               ; preds = %bb.b
  %i.bh = ptrtoint ptr %i.aj to i64
  %i.bi = add i64 %i.bh, 16
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = load ptr, ptr %i.ai, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = add i64 %i.bm, 16
  %i.bo = inttoptr i64 %i.bn to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us.us

_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us.us: ; preds = %bb.e, %.lr.ph.split.us.us
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.e ], [ 1, %.lr.ph.split.us.us ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv82
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not47.us.us = icmp eq ptr %i.bq, %i.bk
  %.not48.us.us = icmp eq ptr %i.bq, %i.y
  %or.cond.us.us = or i1 %.not47.us.us, %.not48.us.us
  br i1 %or.cond.us.us, label %bb.e, label %.split.us66

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us.us
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %..critedge.loopexit_crit_edge.us, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit52.us.us, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.i, %.split.us66, %.lr.ph
  %.2.lcssa = phi i1 [ %.171, %.lr.ph ], [ %.5.us, %.split.us66 ], [ %.5, %bb.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.03970, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph59.split:                                   ; preds = %.lr.ph59, %bb.i
  %i.bs = phi ptr [ %i.cx, %bb.i ], [ %i.t, %.lr.ph59 ] ; 2 uses
  %i.bt = phi ptr [ %i.cy, %bb.i ], [ %i.s, %.lr.ph59 ]
  %.258 = phi i1 [ %.5, %bb.i ], [ %.171, %.lr.ph59 ]
  %.04256 = phi i64 [ %i.cz, %bb.i ], [ 0, %.lr.ph59 ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.04256
  %i.bv = load ptr, ptr %i.bu, align 8            ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = icmp eq i16 %i.by, 36
  br i1 %i.bz, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph59.split
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i32 %i.cb, 251658240
  %.not.i.i = icmp eq i32 %i.cc, 251658240
  %i.cd = ptrtoint ptr %i.bv to i64
  %i.ce = add i64 %i.cd, 32
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.g:                                             ; preds = %bb.f
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = add i64 %i.ch, 16
  %i.cj = inttoptr i64 %i.ci to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.f, %bb.g
  %.sink.i.i = phi ptr [ %i.cj, %bb.g ], [ %i.cf, %bb.f ]
  %i.ck = load ptr, ptr %.sink.i.i, align 8
  tail call void @_ZN2v88internal8compiler4Node11ReplaceUsesEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef %i.ck) #22
  tail call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bv) #22
  %i.cl = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.04256 ; 4 uses
  %i.cn = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr nonnull align 8 %i.cp, i64 %i.cs, i1 false)
  %i.ct = load ptr, ptr %i.q, align 8
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8 ; 2 uses
  store ptr %i.cu, ptr %i.q, align 8
  %.pre.pre = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit

_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %bb.h
  %.pre = phi ptr [ %i.cl, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ %.pre.pre, %bb.h ]
  %i.cv = phi ptr [ %i.cm, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ %i.cu, %bb.h ]
  %i.cw = add i64 %.04256, -1
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit, %.lr.ph59.split
  %i.cx = phi ptr [ %i.bs, %.lr.ph59.split ], [ %.pre, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit ] ; 2 uses
  %i.cy = phi ptr [ %i.bt, %.lr.ph59.split ], [ %i.cv, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit ] ; 2 uses
  %.345 = phi i64 [ %.04256, %.lr.ph59.split ], [ %i.cw, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit ]
  %.5 = phi i1 [ %.258, %.lr.ph59.split ], [ false, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit ] ; 2 uses
  %i.cz = add i64 %.345, 1                        ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = icmp ult i64 %i.cz, %i.dd
  br i1 %i.de, label %.lr.ph59.split, label %._crit_edge, !llvm.loop !25

.split75.us:                                      ; preds = %.loopexit, %.split, %bb.a
  ret void
}

declare void @_ZN2v88internal8compiler4Node11ReplaceUsesEPS2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #11

declare void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler8Schedule8MovePhisEPNS1_10BasicBlockES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.j = phi ptr [ %i.d, %.lr.ph ], [ %i.at, %bb.g ] ; 2 uses
  %i.k = phi ptr [ %i.c, %.lr.ph ], [ %i.au, %bb.g ]
  %.013 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.g ]  ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.013
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i16, ptr %i.o, align 8
  %i.q = icmp eq i16 %i.p, 36
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = icmp ult ptr %i.r, %i.s
  br i1 %i.t, label %_ZN2v88internal8compiler10BasicBlock7AddNodeEPNS1_4NodeE.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = add nsw i64 %i.y, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.z)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal8compiler10BasicBlock7AddNodeEPNS1_4NodeE.exit

_ZN2v88internal8compiler10BasicBlock7AddNodeEPNS1_4NodeE.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi ptr [ %i.r, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.e, align 8
  store ptr %i.m, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.013 ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10BasicBlock7AddNodeEPNS1_4NodeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ag, i64 %i.aj, i1 false)
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  store ptr %i.al, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit

_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler10BasicBlock7AddNodeEPNS1_4NodeE.exit, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  store ptr %2, ptr %i.ar, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = load ptr, ptr %i.b, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.as = add nuw i64 %.013, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit
  %i.at = phi ptr [ %.pre14, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit ], [ %i.j, %bb.f ] ; 2 uses
  %i.au = phi ptr [ %.pre, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit ], [ %i.k, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %.013, %_ZN2v88internal8compiler10BasicBlock10RemoveNodeEPPNS1_4NodeE.exit ], [ %i.as, %bb.f ] ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = icmp ult i64 %.1, %i.ay
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler8Schedule21PropagateDeferredMarkEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.split36.us, label %.split

.loopexit:                                        ; preds = %._crit_edge.thread
  br i1 %.3, label %.split36.us, label %.split, !llvm.loop !27

.split:                                           ; preds = %bb.a, %.loopexit
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.f, %i.g
  br i1 %.not29, label %.split36.us, label %.lr.ph33

.lr.ph33:                                         ; preds = %.split, %._crit_edge.thread
  %.131 = phi i1 [ %.3, %._crit_edge.thread ], [ true, %.split ] ; 3 uses
  %.02130 = phi ptr [ %i.z, %._crit_edge.thread ], [ %i.f, %.split ] ; 2 uses
  %i.h = load ptr, ptr %.02130, align 8           ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !10, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph33
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not2526 = icmp eq ptr %i.o, %i.m
  br i1 %.not2526, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e
  br i1 %.124, label %bb.f, label %._crit_edge.thread

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.02228 = phi ptr [ %i.o, %.lr.ph ], [ %i.y, %bb.e ] ; 2 uses
  %.02327 = phi i1 [ true, %.lr.ph ], [ %.124, %bb.e ] ; 2 uses
  %i.q = load ptr, ptr %.02228, align 8           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !10, !noundef !11
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = load i32, ptr %i.p, align 4
  %i.x = icmp sge i32 %i.v, %i.w
  %spec.select = select i1 %i.x, i1 %.02327, i1 false
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.124 = phi i1 [ %.02327, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02228, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.y, %i.m
  br i1 %.not25, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.i, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge, %bb.f, %.lr.ph33
  %.3 = phi i1 [ %.131, %.lr.ph33 ], [ false, %bb.f ], [ %.131, %._crit_edge ], [ %.131, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02130, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph33

.split36.us:                                      ; preds = %.loopexit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_8ScheduleE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  %.v = select i1 %i.e, i64 8, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.v ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not89 = icmp eq ptr %i.h, %i.j
  br i1 %.not89, label %._crit_edge93, label %.lr.ph92

._crit_edge93:                                    ; preds = %bb.m, %bb.a
  ret ptr %0

.lr.ph92:                                         ; preds = %bb.a, %bb.m
  %.090 = phi ptr [ %i.ce, %bb.m ], [ %i.h, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.090, align 8             ; 12 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.b

bb.b:                                             ; preds = %.lr.ph92
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 11) #22 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.o) #22 ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.22, i64 noundef 3) #22 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %.sroa.0.0.copyload.i) #22 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i8, ptr %i.t, align 8, !range !10, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.23, i64 noundef 11) #22 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not67 = icmp eq ptr %i.y, %i.aa
  br i1 %.not67, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24, i64 noundef 4) #22 ; 0 uses
  %.pre = load ptr, ptr %i.z, align 8
  %.pre96 = load ptr, ptr %i.x, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi ptr [ %.pre96, %bb.e ], [ %i.y, %bb.d ] ; 3 uses
  %i.ad = phi ptr [ %.pre, %bb.e ], [ %i.aa, %bb.d ] ; 3 uses
  %.not6875 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not6875, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #22 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ah) #22 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.not68.peel = icmp eq ptr %i.aj, %i.ac
  br i1 %.not68.peel, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %.lr.ph.preheader, %bb.f
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 5) #22 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not6978 = icmp eq ptr %i.am, %i.ao
  br i1 %.not6978, label %._crit_edge82, label %.lr.ph81

.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader, %.lr.ph.peel.next
  %.06476 = phi ptr [ %i.av, %.lr.ph.peel.next ], [ %i.aj, %.lr.ph.preheader ] ; 2 uses
  %i.ap = load ptr, ptr %.06476, align 8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 2) #22 ; 0 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #22 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.at) #22 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06476, i64 8 ; 2 uses
  %.not68 = icmp eq ptr %i.av, %i.ac
  br i1 %.not68, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !28

._crit_edge82:                                    ; preds = %bb.h, %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.ax = load i32, ptr %i.aw, align 4
  %.not70 = icmp eq i32 %i.ax, 0
  br i1 %.not70, label %bb.m, label %bb.i

.lr.ph81:                                         ; preds = %._crit_edge, %bb.h
  %.06579 = phi ptr [ %i.bf, %bb.h ], [ %i.am, %._crit_edge ] ; 2 uses
  %i.ay = load ptr, ptr %.06579, align 8          ; 2 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 2) #22 ; 0 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ay) #22 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bb, align 8
  %.not74 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not74, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph81
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.29, i64 noundef 3) #22 ; 0 uses
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %i.bb, align 8
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %.sroa.0.0.copyload.i.i73) #22 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph81
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 1) #22 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.06579, i64 8 ; 2 uses
  %.not69 = icmp eq ptr %i.bf, %i.ao
  br i1 %.not69, label %._crit_edge82, label %.lr.ph81

bb.i:                                             ; preds = %._crit_edge82
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 2) #22 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not71 = icmp eq ptr %i.bi, null
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bi) #22 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.30, i64 noundef 4) #22 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31, i64 noundef 4) #22 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %.not7283 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not7283, label %._crit_edge88, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bn, align 8
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #22 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bt) #22 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not72.peel = icmp eq ptr %i.bv, %i.bp
  br i1 %.not72.peel, label %._crit_edge88, label %.lr.ph87.peel.next

._crit_edge88:                                    ; preds = %.lr.ph87.peel.next, %.lr.ph87.preheader, %bb.l
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 1) #22 ; 0 uses
  br label %bb.m

.lr.ph87.peel.next:                               ; preds = %.lr.ph87.preheader, %.lr.ph87.peel.next
  %.06285 = phi ptr [ %i.cd, %.lr.ph87.peel.next ], [ %i.bv, %.lr.ph87.preheader ] ; 2 uses
  %i.bx = load ptr, ptr %.06285, align 8
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 2) #22 ; 0 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 1) #22 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cb) #22 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.06285, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.cd, %i.bp
  br i1 %.not72, label %._crit_edge88, label %.lr.ph87.peel.next, !llvm.loop !30

bb.m:                                             ; preds = %._crit_edge82, %._crit_edge88, %.lr.ph92
  %i.ce = getelementptr inbounds nuw i8, ptr %.090, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.j
  br i1 %.not, label %._crit_edge93, label %.lr.ph92
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #11

declare void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #11

declare noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #22
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #22, !inline_history !31
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #22, !inline_history !31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #24
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD1Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #22, !inline_history !31
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #22, !inline_history !31
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #22, !inline_history !32
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #22, !inline_history !32
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #24, !inline_history !33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD1Ev(ptr noundef) unnamed_addr #13 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD0Ev(ptr noundef) unnamed_addr #13 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22, !inline_history !8
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #22, !inline_history !8
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #22, !inline_history !8
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 352) #24
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !8
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #22, !inline_history !8
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #22, !inline_history !8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12StdoutStreamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !34
  br label %_ZN2v88internal12StdoutStreamD0Ev.exit

_ZN2v88internal12StdoutStreamD0Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #22, !inline_history !34
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #22, !inline_history !34
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 noundef 352) #24, !inline_history !35
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #15

declare void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.32) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10BasicBlockEA_S5_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10BasicBlockEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10BasicBlockEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10BasicBlockEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10BasicBlockEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10BasicBlockEA_S5_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.32) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !15, !14}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !15, !14}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !15, !14}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7, !23}
!23 = !{!"llvm.loop.unswitch.partial.disable"}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7, !23}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = distinct !{!30, !29}
!31 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!32 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!33 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!34 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!35 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
end_hunk_0
