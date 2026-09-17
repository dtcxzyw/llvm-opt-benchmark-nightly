Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTripletHelper?download=true
inline.NumInlined: 492
inline.NumDeleted: 179
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_17CompoundSymMatrixEiiPiS4_:bb.a
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !90, !noalias !256
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv79
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93, !noalias !256
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95, !noalias !256 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.w, null
  br i1 %.not.i.i38, label %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i, label %bb.f

_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i: ; preds = %bb.e
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !96, !noalias !256
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv79
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99, !noalias !256
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43, !noalias !256 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i
  %.0.i4.i = phi ptr [ %i.ab, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i ], [ %i.w, %bb.e ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44, !noalias !256
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !44, !noalias !256
  %i.af = invoke noundef i32 @_ZN5Ipopt13TripletHelper16GetNumberEntriesERKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i)
          to label %bb.g unwind label %.thread52  ; 2 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5Ipopt13TripletHelper10FillRowColEiRKNS_6MatrixEPiS4_ii(i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i, ptr noundef %.13563, ptr noundef %.164, i32 noundef %.03069, i32 noundef %.02865)
          to label %bb.h unwind label %.thread52

bb.h:                                             ; preds = %bb.g
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %.13563, i64 %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %.164, i64 %i.ag
  br label %bb.i

.thread52:                                        ; preds = %bb.f, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i, %bb.h
  %.0.i5.i50 = phi ptr [ %.0.i4.i, %bb.h ], [ null, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i ] ; 6 uses
  %.236 = phi ptr [ %i.ah, %bb.h ], [ %.13563, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i ] ; 2 uses
  %.2 = phi ptr [ %i.ai, %bb.h ], [ %.164, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i ] ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = invoke noundef i32 @_ZNK5Ipopt22CompoundSymMatrixSpace11GetBlockDimEi(ptr noundef nonnull align 8 dereferenceable(97) %i.b, i32 noundef %i.ak)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.am = add nsw i32 %i.al, %.02865
  %.not.i.i39 = icmp eq ptr %.0.i5.i50, null
  br i1 %.not.i.i39, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i5.i50, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !44
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !44
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %.0.i5.i50, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(69) %.0.i5.i50) #17, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit:        ; preds = %bb.j, %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv77
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !254

bb.m:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i40 = icmp eq ptr %.0.i5.i50, null
  br i1 %.not.i.i40, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit41, label %bb.n

bb.n:                                             ; preds = %.thread52, %bb.m
  %.pn57 = phi { ptr, i32 } [ %i.aj, %.thread52 ], [ %i.au, %bb.m ] ; 2 uses
  %.0.i5.i5156 = phi ptr [ %.0.i4.i, %.thread52 ], [ %.0.i5.i50, %bb.m ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i5.i5156, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !44
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !44
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit41

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %.0.i5.i5156, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(69) %.0.i5.i5156) #17, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit41

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit41:      ; preds = %bb.m, %bb.n, %bb.o
  %.pn58 = phi { ptr, i32 } [ %i.au, %bb.m ], [ %.pn57, %bb.n ], [ %.pn57, %bb.o ]
  resume { ptr, i32 } %.pn58
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_15TransposeMatrixEiiPiS4_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95, !noalias !261 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44, !noalias !261
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !44, !noalias !261
  br label %_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit

_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit:   ; preds = %bb.a, %bb.b
  invoke void @_ZN5Ipopt13TripletHelper10FillRowColEiRKNS_6MatrixEPiS4_ii(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(69) %i.b, ptr noundef %5, ptr noundef %4, i32 noundef %3, i32 noundef %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit
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

bb.e:                                             ; preds = %_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit
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

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt13TripletHelper11FillRowCol_EiRKNS_25ExpandedMultiVectorMatrixEiiPiS4_(i32 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %2, 1                        ; 4 uses
  %i.b = add i32 %3, 1                            ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107, !noalias !273
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132, !noalias !274 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !44, !noalias !274
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !44, !noalias !274
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !127  ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !52   ; 3 uses
  %i.w = add nsw i32 %i.f, %i.a
  %i.x = icmp sgt i32 %i.f, 0
  %i.y = icmp sgt i32 %i.v, 0
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %.preheader54.preheader, label %.loopexit.thread80

.preheader54.preheader:                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.v, 12
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %6 = shl nuw nsw i64 %n.vec, 2                  ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.preheader, %._crit_edge
  %.03662 = phi i32 [ %i.ar, %._crit_edge ], [ %i.a, %.preheader54.preheader ] ; 7 uses
  %.04061 = phi ptr [ %.lcssa87, %._crit_edge ], [ %5, %.preheader54.preheader ] ; 5 uses
  %.04260 = phi ptr [ %.lcssa88, %._crit_edge ], [ %4, %.preheader54.preheader ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader54
  %.0426090 = ptrtoaddr ptr %.04260 to i64        ; 2 uses
  %.0406189 = ptrtoaddr ptr %.04061 to i64        ; 2 uses
  %i.z = sub i64 %.0426090, %.0406189
  %diff.check = icmp ugt i64 %i.z, -32
  %i.aa = sub i64 %.0426090, %i.r
  %diff.check91 = icmp ugt i64 %i.aa, -32
  %conflict.rdx = or i1 %diff.check, %diff.check91
  %i.ab = sub i64 %i.r, %.0406189
  %diff.check92 = icmp ugt i64 %i.ab, -32
  %conflict.rdx93 = or i1 %conflict.rdx, %diff.check92
  br i1 %conflict.rdx93, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.03662, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.04061, i64 %i.ac ; 2 uses
  %next.gep96 = getelementptr i8, ptr %.04260, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep96, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep96, align 4, !tbaa !118
  store <4 x i32> %broadcast.splat, ptr %i.ad, align 4, !tbaa !118
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !118
  %wide.load97 = load <4 x i32>, ptr %i.af, align 4, !tbaa !118
  %i.ag = add nsw <4 x i32> %wide.load, %broadcast.splat95
  %i.ah = add nsw <4 x i32> %wide.load97, %broadcast.splat95
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.ag, ptr %next.gep, align 4, !tbaa !118
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %7 = getelementptr i8, ptr %.04061, i64 %6      ; 2 uses
  %8 = getelementptr i8, ptr %.04260, i64 %6      ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader54, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader54 ], [ %n.vec, %middle.block ] ; 3 uses
  %.14157.ph = phi ptr [ %.04061, %vector.memcheck ], [ %.04061, %.preheader54 ], [ %7, %middle.block ] ; 2 uses
  %.14356.ph = phi ptr [ %.04260, %vector.memcheck ], [ %.04260, %.preheader54 ], [ %8, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.14157.prol = phi ptr [ %i.ao, %scalar.ph.prol ], [ %.14157.ph, %scalar.ph.preheader ] ; 2 uses
  %.14356.prol = phi ptr [ %i.ak, %scalar.ph.prol ], [ %.14356.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.14356.prol, i64 4 ; 3 uses
  store i32 %.03662, ptr %.14356.prol, align 4, !tbaa !118
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !118
  %i.an = add nsw i32 %i.am, %i.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.14157.prol, i64 4 ; 3 uses
  store i32 %i.an, ptr %.14157.prol, align 4, !tbaa !118
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !267

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa127.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ak, %scalar.ph.prol ]
  %.lcssa126.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.14157.unr = phi ptr [ %.14157.ph, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %.14356.unr = phi ptr [ %.14356.ph, %scalar.ph.preheader ], [ %i.ak, %scalar.ph.prol ]
  %i.ap = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa88 = phi ptr [ %8, %middle.block ], [ %.lcssa127.unr, %scalar.ph.prol.loopexit ], [ %i.bk, %scalar.ph ]
  %.lcssa87 = phi ptr [ %7, %middle.block ], [ %.lcssa126.unr, %scalar.ph.prol.loopexit ], [ %i.bp, %scalar.ph ]
  %i.ar = add nsw i32 %.03662, 1                  ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.w
  br i1 %i.as, label %.preheader54, label %.loopexit, !llvm.loop !268

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.14157 = phi ptr [ %i.bp, %scalar.ph ], [ %.14157.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.14356 = phi ptr [ %i.bk, %scalar.ph ], [ %.14356.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.14356, i64 4
  store i32 %.03662, ptr %.14356, align 4, !tbaa !118
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !118
  %i.aw = add nsw i32 %i.av, %i.b
  %i.ax = getelementptr inbounds nuw i8, ptr %.14157, i64 4
  store i32 %i.aw, ptr %.14157, align 4, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %.14356, i64 8
  store i32 %.03662, ptr %i.at, align 4, !tbaa !118
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !118
  %i.bc = add nsw i32 %i.bb, %i.b
  %i.bd = getelementptr inbounds nuw i8, ptr %.14157, i64 8
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %.14356, i64 12
  store i32 %.03662, ptr %i.ay, align 4, !tbaa !118
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !118
  %i.bi = add nsw i32 %i.bh, %i.b
  %i.bj = getelementptr inbounds nuw i8, ptr %.14157, i64 12
  store i32 %i.bi, ptr %i.bd, align 4, !tbaa !118
  %i.bk = getelementptr inbounds nuw i8, ptr %.14356, i64 16 ; 2 uses
  store i32 %.03662, ptr %i.be, align 4, !tbaa !118
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !118
  %i.bo = add nsw i32 %i.bn, %i.b
  %i.bp = getelementptr inbounds nuw i8, ptr %.14157, i64 16 ; 2 uses
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !118
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !269

bb.c:                                             ; preds = %bb.a
  %i.bq = add nsw i32 %i.f, %i.a
  %i.br = icmp sgt i32 %i.f, 0
  br i1 %i.br, label %.preheader.lr.ph, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !52 ; 2 uses
  %i.bu = add i32 %i.bt, %i.b                     ; 2 uses
  %i.bv = icmp sgt i32 %i.bt, 0
  br i1 %i.bv, label %.preheader.preheader, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bw = add i32 %3, 2
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 %i.bw)
  %i.by = add i32 %i.bx, -2
  %i.bz = sub i32 %i.by, %3                       ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check105 = icmp ult i32 %i.bz, 7
  %n.vec107 = and i64 %i.cb, 8589934584           ; 4 uses
  %broadcast.splatinsert110 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat111 = shufflevector <4 x i32> %broadcast.splatinsert110, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat111, <i32 0, i32 1, i32 2, i32 3>
  %9 = trunc i64 %n.vec107 to i32
  %10 = add i32 %i.b, %9
  %11 = shl nuw nsw i64 %n.vec107, 2              ; 2 uses
  %cmp.n118 = icmp eq i64 %i.cb, %n.vec107
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge66
  %.03471 = phi i32 [ %i.ch, %._crit_edge66 ], [ %i.a, %.preheader.preheader ] ; 3 uses
  %.270 = phi ptr [ %.lcssa, %._crit_edge66 ], [ %5, %.preheader.preheader ] ; 4 uses
  %.24469 = phi ptr [ %.lcssa86, %._crit_edge66 ], [ %4, %.preheader.preheader ] ; 4 uses
  %.24469102 = ptrtoaddr ptr %.24469 to i64
  %.270101 = ptrtoaddr ptr %.270 to i64
  %i.cc = sub i64 %.24469102, %.270101
  %diff.check103 = icmp ugt i64 %i.cc, -32
  %or.cond122 = select i1 %min.iters.check105, i1 true, i1 %diff.check103
  br i1 %or.cond122, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %.preheader
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %.03471, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph106
  %index113 = phi i64 [ 0, %vector.ph106 ], [ %index.next116, %vector.body112 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph106 ], [ %vec.ind.next, %vector.body112 ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.cd = shl i64 %index113, 2                    ; 2 uses
  %next.gep114 = getelementptr i8, ptr %.270, i64 %i.cd ; 2 uses
  %next.gep115 = getelementptr i8, ptr %.24469, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep115, i64 16
  store <4 x i32> %broadcast.splat109, ptr %next.gep115, align 4, !tbaa !118
  store <4 x i32> %broadcast.splat109, ptr %i.ce, align 4, !tbaa !118
  %i.cf = getelementptr i8, ptr %next.gep114, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep114, align 4, !tbaa !118
  store <4 x i32> %step.add, ptr %i.cf, align 4, !tbaa !118
  %index.next116 = add nuw i64 %index113, 8       ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.cg = icmp eq i64 %index.next116, %n.vec107
  br i1 %i.cg, label %middle.block117, label %vector.body112, !llvm.loop !270

middle.block117:                                  ; preds = %vector.body112
  %12 = getelementptr i8, ptr %.270, i64 %11      ; 2 uses
  %13 = getelementptr i8, ptr %.24469, i64 %11    ; 2 uses
  br i1 %cmp.n118, label %._crit_edge66, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %.preheader, %middle.block117
  %.065.ph = phi i32 [ %i.b, %.preheader ], [ %10, %middle.block117 ]
  %.364.ph = phi ptr [ %.270, %.preheader ], [ %12, %middle.block117 ]
  %.34563.ph = phi ptr [ %.24469, %.preheader ], [ %13, %middle.block117 ]
  br label %scalar.ph104

._crit_edge66:                                    ; preds = %scalar.ph104, %middle.block117
  %.lcssa86 = phi ptr [ %13, %middle.block117 ], [ %i.cj, %scalar.ph104 ]
  %.lcssa = phi ptr [ %12, %middle.block117 ], [ %i.ck, %scalar.ph104 ]
  %i.ch = add nsw i32 %.03471, 1                  ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %i.bq
  br i1 %i.ci, label %.preheader, label %.loopexit, !llvm.loop !271

scalar.ph104:                                     ; preds = %scalar.ph104.preheader, %scalar.ph104
  %.065 = phi i32 [ %i.cl, %scalar.ph104 ], [ %.065.ph, %scalar.ph104.preheader ] ; 2 uses
  %.364 = phi ptr [ %i.ck, %scalar.ph104 ], [ %.364.ph, %scalar.ph104.preheader ] ; 2 uses
  %.34563 = phi ptr [ %i.cj, %scalar.ph104 ], [ %.34563.ph, %scalar.ph104.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.34563, i64 4 ; 2 uses
  store i32 %.03471, ptr %.34563, align 4, !tbaa !118
  %i.ck = getelementptr inbounds nuw i8, ptr %.364, i64 4 ; 2 uses
  store i32 %.065, ptr %.364, align 4, !tbaa !118
  %i.cl = add nsw i32 %.065, 1                    ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %i.bu
  br i1 %i.cm, label %scalar.ph104, label %._crit_edge66, !llvm.loop !272

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge66
  br i1 %.not.i.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit, label %.loopexit.thread80

.loopexit.thread80:                               ; preds = %bb.b, %.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !44
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !44
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

bb.d:                                             ; preds = %.loopexit.thread80
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(80) %i.j) #17, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit: ; preds = %.preheader.lr.ph, %bb.c, %.loopexit, %.loopexit.thread80, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper10FillValuesEiRKNS_6MatrixEPd(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(69) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator.37", align 1 ; 4 uses
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6MatrixE, ptr nonnull @_ZTIN5Ipopt10GenTMatrixE, i64 0) #17 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 7 uses
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph.preheader.i, label %_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10GenTMatrixEPd.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.f = ptrtoaddr ptr %i.d to i64
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %0, 8
  %i.g = sub i64 %i.f, %i.a
  %diff.check = icmp ugt i64 %i.g, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x double>, ptr %i.h, align 8, !tbaa !129
  %wide.load162 = load <2 x double>, ptr %i.i, align 8, !tbaa !129
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x double> %wide.load, ptr %i.j, align 8, !tbaa !129
  store <2 x double> %wide.load162, ptr %i.k, align 8, !tbaa !129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10GenTMatrixEPd.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.prol
  %i.n = load double, ptr %i.m, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.prol
  store double %i.n, ptr %i.o, align 8, !tbaa !129
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !276

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.p = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.q = icmp ugt i64 %i.p, -4
  br i1 %i.q, label %_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10GenTMatrixEPd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.s = load double, ptr %i.r, align 8, !tbaa !129
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  store double %i.s, ptr %i.t, align 8, !tbaa !129
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i
  %i.v = load double, ptr %i.u, align 8, !tbaa !129
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  store double %i.v, ptr %i.w, align 8, !tbaa !129
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i.1
  %i.y = load double, ptr %i.x, align 8, !tbaa !129
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1
  store double %i.y, ptr %i.z, align 8, !tbaa !129
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i.2
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2
  store double %i.ab, ptr %i.ac, align 8, !tbaa !129
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10GenTMatrixEPd.exit, label %.lr.ph.i, !llvm.loop !277

bb.c:                                             ; preds = %bb.a
  %i.ad = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6MatrixE, ptr nonnull @_ZTIN5Ipopt10SymTMatrixE, i64 0) #17 ; 2 uses
  %.not89 = icmp eq ptr %i.ad, null
  br i1 %.not89, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK5Ipopt10SymTMatrix10FillValuesEPd(ptr noundef nonnull align 8 dereferenceable(97) %i.ad, ptr noundef %2)
  br label %_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10GenTMatrixEPd.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6MatrixE, ptr nonnull @_ZTIN5Ipopt12ScaledMatrixE, i64 0) #17 ; 2 uses
  %.not90 = icmp eq ptr %i.ae, null
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_12ScaledMatrixEPd(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noundef %2)
  br label %_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10GenTMatrixEPd.exit

bb.g:                                             ; preds = %bb.e
  %i.af = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6MatrixE, ptr nonnull @_ZTIN5Ipopt15SymScaledMatrixE, i64 0) #17 ; 2 uses
  %.not91 = icmp eq ptr %i.af, null
  br i1 %.not91, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_15SymScaledMatrixEPd(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef %2)
  br label %_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10GenTMatrixEPd.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6MatrixE, ptr nonnull @_ZTIN5Ipopt10DiagMatrixE, i64 0) #17 ; 2 uses
  %.not92 = icmp eq ptr %i.ag, null
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10DiagMatrixEPd(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef %2)
  br label %_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10GenTMatrixEPd.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6MatrixE, ptr nonnull @_ZTIN5Ipopt14IdentityMatrixE, i64 0) #17 ; 2 uses
  %.not93 = icmp eq ptr %i.ah, null
  br i1 %.not93, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !136 ; 2 uses
  %i.ak = icmp sgt i32 %0, 0
  br i1 %i.ak, label %.lr.ph.preheader.i105, label %_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_10GenTMatrixEPd.exit

.lr.ph.preheader.i105:                            ; preds = %bb.l
  %wide.trip.count.i106 = zext nneg i32 %0 to i64 ; 3 uses
  %min.iters.check164 = icmp ult i32 %0, 4
  br i1 %min.iters.check164, label %.lr.ph.i107.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %.lr.ph.preheader.i105
end_hunk_0
begin_hunk_1_@_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_17CompoundSymMatrixEPd:bb.a
  br i1 %.not.i.i, label %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i, label %bb.d

_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i: ; preds = %bb.c
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !96, !noalias !376
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv45
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99, !noalias !376
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43, !noalias !376 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i
  %.0.i4.i = phi ptr [ %i.q, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i ], [ %i.l, %bb.c ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 6 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !44, !noalias !376
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !44, !noalias !376
  %i.u = invoke noundef i32 @_ZN5Ipopt13TripletHelper16GetNumberEntriesERKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Ipopt13TripletHelper10FillValuesEiRKNS_6MatrixEPd(i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i, ptr noundef %.136)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load i32, ptr %i.r, align 8, !tbaa !44
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.r, align 8, !tbaa !44
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit21

bb.g:                                             ; preds = %bb.e
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.136, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !44
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.r, align 8, !tbaa !44
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %.0.i4.i, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i) #17, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit:        ; preds = %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i, %bb.g, %bb.h
  %.234 = phi ptr [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %.136, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv43
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !375

bb.i:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %.0.i4.i, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i) #17, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit21

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit21:      ; preds = %bb.f, %bb.i
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_15TransposeMatrixEPd(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95, !noalias !381 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44, !noalias !381
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !44, !noalias !381
  br label %_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit

_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit:   ; preds = %bb.a, %bb.b
  invoke void @_ZN5Ipopt13TripletHelper10FillValuesEiRKNS_6MatrixEPd(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(69) %i.b, ptr noundef %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit
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

bb.e:                                             ; preds = %_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !44
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !44
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit5

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(69) %i.b) #17, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit5

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit5:       ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_25ExpandedMultiVectorMatrixEPd(i32 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107, !noalias !395
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132, !noalias !396 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null        ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44, !noalias !396
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !44, !noalias !396
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !52
  %.fr131 = freeze i32 %i.o                       ; 8 uses
  %i.p = zext nneg i32 %.fr131 to i64
  %i.q = icmp slt i32 %.fr131, 0
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #20
          to label %.preheader95 unwind label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread ; 14 uses

.preheader95:                                     ; preds = %bb.b
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = icmp sgt i32 %i.d, 0
  br i1 %i.v, label %.lr.ph105, label %._crit_edge

.lr.ph105:                                        ; preds = %.preheader95
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = icmp sgt i32 %.fr131, 0
  br i1 %i.x, label %.lr.ph105.split.us.preheader, label %.lr.ph105.split.split.preheader

.lr.ph105.split.us.preheader:                     ; preds = %.lr.ph105
  %i.y = zext nneg i32 %.fr131 to i64             ; 6 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add nsw i32 %.fr131, -1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %wide.trip.count161 = zext nneg i32 %i.d to i64
  %min.iters.check = icmp ult i32 %.fr131, 4
  %n.vec = and i64 %i.y, 2147483644               ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br label %.lr.ph105.split.us

.lr.ph105.split.us:                               ; preds = %.lr.ph105.split.us.preheader, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us
  %indvars.iv158 = phi i64 [ 0, %.lr.ph105.split.us.preheader ], [ %indvars.iv.next159, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us ] ; 2 uses
  %.047103.us = phi ptr [ %2, %.lr.ph105.split.us.preheader ], [ %.350.us178, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us ] ; 6 uses
  %.047103.us197 = ptrtoaddr ptr %.047103.us to i64
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !142, !noalias !397
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv158
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141, !noalias !397 ; 7 uses
  %.not.i.i.i.i.us = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.us, label %.loopexit92.us.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph105.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !44, !noalias !397
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !44, !noalias !397
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %.fr131, ptr noundef nonnull align 8 dereferenceable(205) %i.ag, ptr noundef nonnull %i.t)
          to label %.preheader93.us.preheader unwind label %.split.us

.preheader93.us.preheader:                        ; preds = %bb.c
  %i.ak = sub i64 %i.u, %.047103.us197
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader93.us.preheader202, label %vector.body

vector.body:                                      ; preds = %.preheader93.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader93.us.preheader ] ; 3 uses
  %i.al = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.047103.us, i64 %i.al ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !129
  %wide.load198 = load <2 x double>, ptr %i.an, align 8, !tbaa !129
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !129
  store <2 x double> %wide.load198, ptr %i.ao, align 8, !tbaa !129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !388

middle.block:                                     ; preds = %vector.body
  %3 = getelementptr i8, ptr %.047103.us, i64 %i.ad ; 2 uses
  br i1 %cmp.n, label %.loopexit92.us, label %.preheader93.us.preheader202

.preheader93.us.preheader202:                     ; preds = %.preheader93.us.preheader, %middle.block
  %indvars.iv152.ph = phi i64 [ 0, %.preheader93.us.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.14897.us.ph = phi ptr [ %.047103.us, %.preheader93.us.preheader ], [ %3, %middle.block ] ; 2 uses
  %i.aq = sub nsw i64 %i.y, %indvars.iv152.ph
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader93.us.prol.loopexit, label %.preheader93.us.prol

.preheader93.us.prol:                             ; preds = %.preheader93.us.preheader202, %.preheader93.us.prol
  %indvars.iv152.prol = phi i64 [ %indvars.iv.next153.prol, %.preheader93.us.prol ], [ %indvars.iv152.ph, %.preheader93.us.preheader202 ] ; 2 uses
  %.14897.us.prol = phi ptr [ %i.at, %.preheader93.us.prol ], [ %.14897.us.ph, %.preheader93.us.preheader202 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader93.us.prol ], [ 0, %.preheader93.us.preheader202 ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152.prol
  %i.as = load double, ptr %i.ar, align 8, !tbaa !129
  %i.at = getelementptr inbounds nuw i8, ptr %.14897.us.prol, i64 8 ; 3 uses
  store double %i.as, ptr %.14897.us.prol, align 8, !tbaa !129
  %indvars.iv.next153.prol = add nuw nsw i64 %indvars.iv152.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader93.us.prol.loopexit, label %.preheader93.us.prol, !llvm.loop !389

.preheader93.us.prol.loopexit:                    ; preds = %.preheader93.us.prol, %.preheader93.us.preheader202
  %.lcssa203.unr = phi ptr [ poison, %.preheader93.us.preheader202 ], [ %i.at, %.preheader93.us.prol ]
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %.preheader93.us.preheader202 ], [ %indvars.iv.next153.prol, %.preheader93.us.prol ]
  %.14897.us.unr = phi ptr [ %.14897.us.ph, %.preheader93.us.preheader202 ], [ %i.at, %.preheader93.us.prol ]
  %i.au = sub nsw i64 %indvars.iv152.ph, %i.y
  %i.av = icmp ugt i64 %i.au, -8
  br i1 %i.av, label %.loopexit92.us, label %.preheader93.us

.preheader93.us:                                  ; preds = %.preheader93.us.prol.loopexit, %.preheader93.us
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.7, %.preheader93.us ], [ %indvars.iv152.unr, %.preheader93.us.prol.loopexit ] ; 9 uses
  %.14897.us = phi ptr [ %i.ca, %.preheader93.us ], [ %.14897.us.unr, %.preheader93.us.prol.loopexit ] ; 9 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !129
  %i.ay = getelementptr inbounds nuw i8, ptr %.14897.us, i64 8
  store double %i.ax, ptr %.14897.us, align 8, !tbaa !129
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !129
  %i.bc = getelementptr inbounds nuw i8, ptr %.14897.us, i64 16
  store double %i.bb, ptr %i.ay, align 8, !tbaa !129
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !129
  %i.bg = getelementptr inbounds nuw i8, ptr %.14897.us, i64 24
  store double %i.bf, ptr %i.bc, align 8, !tbaa !129
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !129
  %i.bk = getelementptr inbounds nuw i8, ptr %.14897.us, i64 32
  store double %i.bj, ptr %i.bg, align 8, !tbaa !129
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !129
  %i.bo = getelementptr inbounds nuw i8, ptr %.14897.us, i64 40
  store double %i.bn, ptr %i.bk, align 8, !tbaa !129
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load double, ptr %i.bq, align 8, !tbaa !129
  %i.bs = getelementptr inbounds nuw i8, ptr %.14897.us, i64 48
  store double %i.br, ptr %i.bo, align 8, !tbaa !129
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !129
  %i.bw = getelementptr inbounds nuw i8, ptr %.14897.us, i64 56
  store double %i.bv, ptr %i.bs, align 8, !tbaa !129
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load double, ptr %i.by, align 8, !tbaa !129
  %i.ca = getelementptr inbounds nuw i8, ptr %.14897.us, i64 64 ; 2 uses
  store double %i.bz, ptr %i.bw, align 8, !tbaa !129
  %indvars.iv.next153.7 = add nuw nsw i64 %indvars.iv152, 8 ; 2 uses
  %exitcond156.not.7 = icmp eq i64 %indvars.iv.next153.7, %i.y
  br i1 %exitcond156.not.7, label %.loopexit92.us, label %.preheader93.us, !llvm.loop !390

.loopexit92.us:                                   ; preds = %.preheader93.us.prol.loopexit, %.preheader93.us, %middle.block
  %.lcssa192 = phi ptr [ %3, %middle.block ], [ %.lcssa203.unr, %.preheader93.us.prol.loopexit ], [ %i.ca, %.preheader93.us ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !44
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !44
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us

bb.d:                                             ; preds = %.loopexit92.us
  %i.cf = load ptr, ptr %i.ag, align 8, !tbaa !46
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(205) %i.ag) #17, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us:   ; preds = %.loopexit92.us.thread, %bb.d, %.loopexit92.us
  %.350.us178 = phi ptr [ %scevgep157, %.loopexit92.us.thread ], [ %.lcssa192, %bb.d ], [ %.lcssa192, %.loopexit92.us ]
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %._crit_edge, label %.lr.ph105.split.us, !llvm.loop !391

.loopexit92.us.thread:                            ; preds = %.lr.ph105.split.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %.047103.us, i8 0, i64 %i.z, i1 false), !tbaa !129
  %i.ci = getelementptr i8, ptr %.047103.us, i64 %i.ac
  %scevgep157 = getelementptr i8, ptr %i.ci, i64 8
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us

.split.us:                                        ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph105.split.split.preheader:                  ; preds = %.lr.ph105
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph105.split.split

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread: ; preds = %bb.b
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph105.split.split:                            ; preds = %.lr.ph105.split.split.preheader, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61
  %indvars.iv = phi i64 [ 0, %.lr.ph105.split.split.preheader ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61 ] ; 2 uses
  %i.cl = load ptr, ptr %i.w, align 8, !tbaa !142, !noalias !397
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !141, !noalias !397 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61, label %bb.e

bb.e:                                             ; preds = %.lr.ph105.split.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !44, !noalias !397
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !44, !noalias !397
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %.fr131, ptr noundef nonnull align 8 dereferenceable(205) %i.cn, ptr noundef nonnull %i.t)
          to label %.preheader91 unwind label %.split.split

.split.split:                                     ; preds = %bb.e
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split:                                           ; preds = %.split.split, %.split.us
  %.us-phi = phi ptr [ %i.ag, %.split.us ], [ %i.cn, %.split.split ] ; 2 uses
  %.us-phi106 = phi { ptr, i32 } [ %i.cj, %.split.us ], [ %i.cr, %.split.split ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !44
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !44
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

.preheader91:                                     ; preds = %bb.e
  %i.cw = load i32, ptr %i.co, align 8, !tbaa !44
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.co, align 8, !tbaa !44
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61

bb.f:                                             ; preds = %.preheader91
  %i.cz = load ptr, ptr %i.cn, align 8, !tbaa !46
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(205) %i.cn) #17, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61:      ; preds = %.lr.ph105.split.split, %.preheader91, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph105.split.split, !llvm.loop !391

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us, %.preheader95
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #19
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !52 ; 5 uses
  %i.de = icmp sgt i32 %i.d, 0
  br i1 %i.de, label %.lr.ph130, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

.lr.ph130:                                        ; preds = %bb.g
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dg = sext i32 %i.dd to i64
  %i.dh = icmp sgt i32 %i.dd, 0
  %i.di = zext nneg i32 %i.dd to i64
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = add i32 %i.dd, -1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %wide.trip.count167 = zext nneg i32 %i.d to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph130, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67
  %indvars.iv164 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next165, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67 ] ; 2 uses
  %.451127 = phi ptr [ %2, %.lr.ph130 ], [ %.687, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67 ] ; 5 uses
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !142, !noalias !398
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv164
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !141, !noalias !398 ; 6 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i62, label %.preheader, label %bb.i

end_hunk_1
