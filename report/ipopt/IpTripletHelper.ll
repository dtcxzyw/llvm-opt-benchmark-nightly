Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTripletHelper?download=true
inline.NumInlined: 492
inline.NumDeleted: 179
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_10SymTMatrixEiiPiS4_:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader35
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.ph
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !118
  %i.af = add nsw i32 %i.ae, %2
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !118
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.ph
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !118
  %i.aj = add nsw i32 %i.ai, %3
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.ph
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !118
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader35
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader35 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.al = add nsw i64 %wide.trip.count, -1
  %i.am = icmp eq i64 %indvars.iv.ph, %i.al
  br i1 %i.am, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !118
  %i.ap = add nsw i32 %i.ao, %2
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !118
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !118
  %i.at = add nsw i32 %i.as, %3
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 %i.at, ptr %i.au, align 4, !tbaa !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !118
  %i.ax = add nsw i32 %i.aw, %2
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !118
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !118
  %i.bb = add nsw i32 %i.ba, %3
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !118
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !226
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_12ScaledMatrixEiiPiS4_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43, !noalias !229 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt12ScaledMatrix17GetUnscaledMatrixEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44, !noalias !229
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !44, !noalias !229
  br label %_ZNK5Ipopt12ScaledMatrix17GetUnscaledMatrixEv.exit

_ZNK5Ipopt12ScaledMatrix17GetUnscaledMatrixEv.exit: ; preds = %bb.a, %bb.b
  invoke void @_ZN5Ipopt13TripletHelper10FillRowColEiRKNS_6MatrixEPiS4_ii(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(69) %i.b, ptr noundef %4, ptr noundef %5, i32 noundef %2, i32 noundef %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK5Ipopt12ScaledMatrix17GetUnscaledMatrixEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !44
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(69) %i.b) #17, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit:        ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %_ZNK5Ipopt12ScaledMatrix17GetUnscaledMatrixEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !44
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !44
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit8

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(69) %i.b) #17, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit8

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit8:       ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_15SymScaledMatrixEiiPiS4_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49, !noalias !232 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt15SymScaledMatrix17GetUnscaledMatrixEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44, !noalias !232
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !44, !noalias !232
  br label %_ZNK5Ipopt15SymScaledMatrix17GetUnscaledMatrixEv.exit

_ZNK5Ipopt15SymScaledMatrix17GetUnscaledMatrixEv.exit: ; preds = %bb.a, %bb.b
  invoke void @_ZN5Ipopt13TripletHelper10FillRowColEiRKNS_6MatrixEPiS4_ii(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(69) %i.b, ptr noundef %4, ptr noundef %5, i32 noundef %2, i32 noundef %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK5Ipopt15SymScaledMatrix17GetUnscaledMatrixEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !44
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #17, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit:     ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %_ZNK5Ipopt15SymScaledMatrix17GetUnscaledMatrixEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !44
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !44
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit8

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #17, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit8

_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit8:    ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_10DiagMatrixEiiPiS4_(i32 noundef %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %4 to i64
  %i.d = add nsw i32 %3, 1                        ; 4 uses
  %i.e = add nsw i32 %2, 1                        ; 4 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.f = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert14 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat15 = shufflevector <4 x i32> %broadcast.splatinsert14, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat15
  %invariant.op20 = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind16 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next18, %vector.body ] ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.h = add <4 x i32> %broadcast.splat15, %vec.ind16
  %.reass = add <4 x i32> %vec.ind16, %invariant.op
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> %i.h, ptr %i.g, align 4, !tbaa !118
  store <4 x i32> %.reass, ptr %i.i, align 4, !tbaa !118
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.k = add <4 x i32> %broadcast.splat, %vec.ind16
  %.reass21 = add <4 x i32> %vec.ind16, %invariant.op20
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %i.k, ptr %i.j, align 4, !tbaa !118
  store <4 x i32> %.reass21, ptr %i.l, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next18 = add <4 x i32> %vec.ind16, splat (i32 8)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader19
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph
  %i.o = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.p = add i32 %i.e, %i.o
  store i32 %i.p, ptr %i.n, align 4, !tbaa !118
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.ph
  %i.r = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.s = add i32 %i.d, %i.r
  store i32 %i.s, ptr %i.q, align 4, !tbaa !118
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader19
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader19 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.t = add nsw i64 %wide.trip.count, -1
  %i.u = icmp eq i64 %indvars.iv.ph, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.w = trunc i64 %indvars.iv to i32
  %i.x = add i32 %i.e, %i.w
  store i32 %i.x, ptr %i.v, align 4, !tbaa !118
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.z = trunc i64 %indvars.iv to i32
  %i.aa = add i32 %i.d, %i.z
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.ac = trunc i64 %indvars.iv.next to i32
  %i.ad = add i32 %i.e, %i.ac
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !118
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %i.af = trunc i64 %indvars.iv.next to i32
  %i.ag = add i32 %i.d, %i.af
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !118
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !234
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_14IdentityMatrixEiiPiS4_(i32 noundef %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %4 to i64
  %i.d = add nsw i32 %3, 1                        ; 4 uses
  %i.e = add nsw i32 %2, 1                        ; 4 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.f = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert14 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat15 = shufflevector <4 x i32> %broadcast.splatinsert14, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat15
  %invariant.op20 = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind16 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next18, %vector.body ] ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.h = add <4 x i32> %broadcast.splat15, %vec.ind16
  %.reass = add <4 x i32> %vec.ind16, %invariant.op
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> %i.h, ptr %i.g, align 4, !tbaa !118
  store <4 x i32> %.reass, ptr %i.i, align 4, !tbaa !118
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.k = add <4 x i32> %broadcast.splat, %vec.ind16
  %.reass21 = add <4 x i32> %vec.ind16, %invariant.op20
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %i.k, ptr %i.j, align 4, !tbaa !118
  store <4 x i32> %.reass21, ptr %i.l, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next18 = add <4 x i32> %vec.ind16, splat (i32 8)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader19
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph
  %i.o = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.p = add i32 %i.e, %i.o
  store i32 %i.p, ptr %i.n, align 4, !tbaa !118
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.ph
  %i.r = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.s = add i32 %i.d, %i.r
  store i32 %i.s, ptr %i.q, align 4, !tbaa !118
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader19
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader19 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.t = add nsw i64 %wide.trip.count, -1
  %i.u = icmp eq i64 %indvars.iv.ph, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.w = trunc i64 %indvars.iv to i32
  %i.x = add i32 %i.e, %i.w
  store i32 %i.x, ptr %i.v, align 4, !tbaa !118
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.z = trunc i64 %indvars.iv to i32
  %i.aa = add i32 %i.d, %i.z
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.ac = trunc i64 %indvars.iv.next to i32
  %i.ad = add i32 %i.e, %i.ac
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !118
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %i.af = trunc i64 %indvars.iv.next to i32
  %i.ag = add i32 %i.d, %i.af
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !118
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !236
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_15ExpansionMatrixEiiPiS4_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127  ; 5 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = add nsw i32 %2, 1                        ; 4 uses
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = add nsw i32 %3, 1                        ; 4 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 16
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.g, %i.a
  %diff.check19 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  %i.m = sub i64 %i.g, %i.b
  %diff.check20 = icmp ugt i64 %i.m, -32
  %conflict.rdx21 = or i1 %conflict.rdx, %diff.check20
  br i1 %conflict.rdx21, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert22 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat23 = shufflevector <4 x i32> %broadcast.splatinsert22, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !118
  %wide.load24 = load <4 x i32>, ptr %i.o, align 4, !tbaa !118
  %i.p = add nsw <4 x i32> %broadcast.splat23, %wide.load
  %i.q = add nsw <4 x i32> %broadcast.splat23, %wide.load24
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !118
  store <4 x i32> %i.q, ptr %i.s, align 4, !tbaa !118
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.u = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %i.u, ptr %i.t, align 4, !tbaa !118
  store <4 x i32> %.reass, ptr %i.v, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader25
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.ph
  %i.y = load i32, ptr %i.x, align 4, !tbaa !118
  %i.z = add nsw i32 %i.h, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !118
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.ph
  %i.ac = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.ad = add i32 %i.j, %i.ac
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !118
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader25
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader25 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ae = add nsw i64 %wide.trip.count, -1
  %i.af = icmp eq i64 %indvars.iv.ph, %i.ae
  br i1 %i.af, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !118
  %i.ai = add nsw i32 %i.h, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !118
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.al = trunc i64 %indvars.iv to i32
  %i.am = add i32 %i.j, %i.al
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !118
  %i.ap = add nsw i32 %i.h, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !118
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %i.as = trunc i64 %indvars.iv.next to i32
  %i.at = add i32 %i.j, %i.as
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !118
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !238
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_9SumMatrixEiiPiS4_(i32 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %6 = alloca %"class.Ipopt::SmartPtr.0", align 8 ; 9 uses
  %i.b = tail call noundef i32 @_ZNK5Ipopt9SumMatrix6NTermsEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit
  %.01624 = phi i32 [ %i.r, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit ], [ 0, %bb.a ] ; 2 uses
  %.01723 = phi ptr [ %i.i, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit ], [ %5, %bb.a ] ; 2 uses
  %.01822 = phi ptr [ %i.h, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit ], [ %4, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
end_hunk_0
