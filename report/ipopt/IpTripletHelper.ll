Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpTripletHelper?download=true
inline.NumInlined: 492
inline.NumDeleted: 179
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_14CompoundMatrixEPd:bb.a
bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %.0.i4.i, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i) #17, !inline_history !47
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit:        ; preds = %_ZNK5Ipopt14CompoundMatrix9ConstCompEii.exit.i, %bb.e, %bb.f
  %.234 = phi ptr [ %i.am, %bb.e ], [ %i.am, %bb.f ], [ %.136, %_ZNK5Ipopt14CompoundMatrix9ConstCompEii.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !97
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !344

bb.g:                                             ; preds = %bb.d
  %i.ay = load ptr, ptr %.0.i4.i, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i) #17, !inline_history !47
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit21

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit21:      ; preds = %bb.d, %bb.g
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_17CompoundSymMatrixEPd(i32 %0, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK5Ipopt17CompoundSymMatrix10NComps_DimEv(ptr noundef nonnull align 8 dereferenceable(137) %1)
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %indvars.iv45 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next46, %bb.b ] ; 3 uses
  %indvars.iv43 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next44, %bb.b ] ; 2 uses
  %.01738 = phi ptr [ %2, %.preheader.lr.ph ], [ %.234, %bb.b ]
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.e = tail call noundef i32 @_ZNK5Ipopt17CompoundSymMatrix10NComps_DimEv(ptr noundef nonnull align 8 dereferenceable(137) %1)
  %i.f = sext i32 %i.e to i64
  %i.g = icmp slt i64 %indvars.iv.next46, %i.f
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br i1 %i.g, label %.preheader, label %._crit_edge, !llvm.loop !345

bb.c:                                             ; preds = %.preheader, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit ] ; 3 uses
  %.136 = phi ptr [ %.01738, %.preheader ], [ %.234, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit ] ; 3 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !98, !noalias !346
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv45
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102, !noalias !346
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105, !noalias !346 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i, label %bb.d

_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i: ; preds = %bb.c
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !107, !noalias !346
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv45
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108, !noalias !346
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38, !noalias !346 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i
  %.0.i4.i = phi ptr [ %i.q, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i ], [ %i.l, %bb.c ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 6 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !44, !noalias !346
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !44, !noalias !346
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
  %i.ae = load ptr, ptr %.0.i4.i, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i) #17, !inline_history !47
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit:        ; preds = %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i, %bb.g, %bb.h
  %.234 = phi ptr [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %.136, %_ZNK5Ipopt17CompoundSymMatrix9ConstCompEii.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv43
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !349

bb.i:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %.0.i4.i, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(69) %.0.i4.i) #17, !inline_history !47
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit21

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit21:      ; preds = %bb.f, %bb.i
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_15TransposeMatrixEPd(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !350 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt15TransposeMatrix10OrigMatrixEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44, !noalias !350
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !44, !noalias !350
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
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(69) %i.b) #17, !inline_history !47
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
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(69) %i.b) #17, !inline_history !47
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit5

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit5:       ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper11FillValues_EiRKNS_25ExpandedMultiVectorMatrixEPd(i32 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123, !noalias !355
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !224, !noalias !358 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null        ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44, !noalias !358
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !44, !noalias !358
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !58
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
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !361, !noalias !362
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv158
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !328, !noalias !362 ; 7 uses
  %.not.i.i.i.i.us = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.us, label %.loopexit92.us.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph105.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !44, !noalias !362
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !44, !noalias !362
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %.fr131, ptr noundef nonnull align 8 dereferenceable(205) %i.ag, ptr noundef nonnull %i.t)
          to label %.preheader93.us.preheader unwind label %.split.us

.preheader93.us.preheader:                        ; preds = %bb.c
  %i.ak = sub i64 %i.u, %.047103.us197
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader93.us.preheader202, label %vector.ph

vector.ph:                                        ; preds = %.preheader93.us.preheader
  %i.al = getelementptr i8, ptr %.047103.us, i64 %i.ad ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.047103.us, i64 %i.am ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !195
  %wide.load198 = load <2 x double>, ptr %i.ao, align 8, !tbaa !195
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !195
  store <2 x double> %wide.load198, ptr %i.ap, align 8, !tbaa !195
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit92.us, label %.preheader93.us.preheader202

.preheader93.us.preheader202:                     ; preds = %.preheader93.us.preheader, %middle.block
  %indvars.iv152.ph = phi i64 [ 0, %.preheader93.us.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.14897.us.ph = phi ptr [ %.047103.us, %.preheader93.us.preheader ], [ %i.al, %middle.block ] ; 2 uses
  %i.ar = sub nsw i64 %i.y, %indvars.iv152.ph
  %xtraiter = and i64 %i.ar, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader93.us.prol.loopexit, label %.preheader93.us.prol

.preheader93.us.prol:                             ; preds = %.preheader93.us.preheader202, %.preheader93.us.prol
  %indvars.iv152.prol = phi i64 [ %indvars.iv.next153.prol, %.preheader93.us.prol ], [ %indvars.iv152.ph, %.preheader93.us.preheader202 ] ; 2 uses
  %.14897.us.prol = phi ptr [ %i.au, %.preheader93.us.prol ], [ %.14897.us.ph, %.preheader93.us.preheader202 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader93.us.prol ], [ 0, %.preheader93.us.preheader202 ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !195
  %i.au = getelementptr inbounds nuw i8, ptr %.14897.us.prol, i64 8 ; 3 uses
  store double %i.at, ptr %.14897.us.prol, align 8, !tbaa !195
  %indvars.iv.next153.prol = add nuw nsw i64 %indvars.iv152.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader93.us.prol.loopexit, label %.preheader93.us.prol, !llvm.loop !366

.preheader93.us.prol.loopexit:                    ; preds = %.preheader93.us.prol, %.preheader93.us.preheader202
  %.lcssa203.unr = phi ptr [ poison, %.preheader93.us.preheader202 ], [ %i.au, %.preheader93.us.prol ]
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %.preheader93.us.preheader202 ], [ %indvars.iv.next153.prol, %.preheader93.us.prol ]
  %.14897.us.unr = phi ptr [ %.14897.us.ph, %.preheader93.us.preheader202 ], [ %i.au, %.preheader93.us.prol ]
  %i.av = sub nsw i64 %indvars.iv152.ph, %i.y
  %i.aw = icmp ugt i64 %i.av, -8
  br i1 %i.aw, label %.loopexit92.us, label %.preheader93.us

.preheader93.us:                                  ; preds = %.preheader93.us.prol.loopexit, %.preheader93.us
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.7, %.preheader93.us ], [ %indvars.iv152.unr, %.preheader93.us.prol.loopexit ] ; 9 uses
  %.14897.us = phi ptr [ %i.cb, %.preheader93.us ], [ %.14897.us.unr, %.preheader93.us.prol.loopexit ] ; 9 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !195
  %i.az = getelementptr inbounds nuw i8, ptr %.14897.us, i64 8
  store double %i.ay, ptr %.14897.us, align 8, !tbaa !195
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !195
  %i.bd = getelementptr inbounds nuw i8, ptr %.14897.us, i64 16
  store double %i.bc, ptr %i.az, align 8, !tbaa !195
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !195
  %i.bh = getelementptr inbounds nuw i8, ptr %.14897.us, i64 24
  store double %i.bg, ptr %i.bd, align 8, !tbaa !195
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !195
  %i.bl = getelementptr inbounds nuw i8, ptr %.14897.us, i64 32
  store double %i.bk, ptr %i.bh, align 8, !tbaa !195
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !195
  %i.bp = getelementptr inbounds nuw i8, ptr %.14897.us, i64 40
  store double %i.bo, ptr %i.bl, align 8, !tbaa !195
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !195
  %i.bt = getelementptr inbounds nuw i8, ptr %.14897.us, i64 48
  store double %i.bs, ptr %i.bp, align 8, !tbaa !195
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !195
  %i.bx = getelementptr inbounds nuw i8, ptr %.14897.us, i64 56
  store double %i.bw, ptr %i.bt, align 8, !tbaa !195
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv152
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !195
  %i.cb = getelementptr inbounds nuw i8, ptr %.14897.us, i64 64 ; 2 uses
  store double %i.ca, ptr %i.bx, align 8, !tbaa !195
  %indvars.iv.next153.7 = add nuw nsw i64 %indvars.iv152, 8 ; 2 uses
  %exitcond156.not.7 = icmp eq i64 %indvars.iv.next153.7, %i.y
  br i1 %exitcond156.not.7, label %.loopexit92.us, label %.preheader93.us, !llvm.loop !367

.loopexit92.us:                                   ; preds = %.preheader93.us.prol.loopexit, %.preheader93.us, %middle.block
  %.lcssa192 = phi ptr [ %i.al, %middle.block ], [ %.lcssa203.unr, %.preheader93.us.prol.loopexit ], [ %i.cb, %.preheader93.us ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !44
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !44
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us

bb.d:                                             ; preds = %.loopexit92.us
  %i.cg = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(205) %i.ag) #17, !inline_history !273
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us:   ; preds = %.loopexit92.us.thread, %bb.d, %.loopexit92.us
  %.350.us178 = phi ptr [ %scevgep157, %.loopexit92.us.thread ], [ %.lcssa192, %bb.d ], [ %.lcssa192, %.loopexit92.us ]
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %._crit_edge, label %.lr.ph105.split.us, !llvm.loop !368

.loopexit92.us.thread:                            ; preds = %.lr.ph105.split.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %.047103.us, i8 0, i64 %i.z, i1 false), !tbaa !195
  %i.cj = getelementptr i8, ptr %.047103.us, i64 %i.ac
  %scevgep157 = getelementptr i8, ptr %i.cj, i64 8
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us

.split.us:                                        ; preds = %bb.c
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph105.split.split.preheader:                  ; preds = %.lr.ph105
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph105.split.split

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread: ; preds = %bb.b
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph105.split.split:                            ; preds = %.lr.ph105.split.split.preheader, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61
  %indvars.iv = phi i64 [ 0, %.lr.ph105.split.split.preheader ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61 ] ; 2 uses
  %i.cm = load ptr, ptr %i.w, align 8, !tbaa !361, !noalias !362
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !328, !noalias !362 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61, label %bb.e

bb.e:                                             ; preds = %.lr.ph105.split.split
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !44, !noalias !362
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !44, !noalias !362
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %.fr131, ptr noundef nonnull align 8 dereferenceable(205) %i.co, ptr noundef nonnull %i.t)
          to label %.preheader91 unwind label %.split.split

.split.split:                                     ; preds = %bb.e
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split:                                           ; preds = %.split.split, %.split.us
  %.us-phi = phi ptr [ %i.ag, %.split.us ], [ %i.co, %.split.split ] ; 2 uses
  %.us-phi106 = phi { ptr, i32 } [ %i.ck, %.split.us ], [ %i.cs, %.split.split ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !44
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !44
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

.preheader91:                                     ; preds = %bb.e
  %i.cx = load i32, ptr %i.cp, align 8, !tbaa !44
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  store i32 %i.cy, ptr %i.cp, align 8, !tbaa !44
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61

bb.f:                                             ; preds = %.preheader91
  %i.da = load ptr, ptr %i.co, align 8, !tbaa !45
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(205) %i.co) #17, !inline_history !273
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61:      ; preds = %.lr.ph105.split.split, %.preheader91, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph105.split.split, !llvm.loop !368

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit61.us, %.preheader95
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #19
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !58 ; 5 uses
  %i.df = icmp sgt i32 %i.d, 0
  br i1 %i.df, label %.lr.ph130, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

.lr.ph130:                                        ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dh = sext i32 %i.de to i64
  %i.di = icmp sgt i32 %i.de, 0
  %i.dj = zext nneg i32 %i.de to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = add i32 %i.de, -1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %wide.trip.count167 = zext nneg i32 %i.d to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph130, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67
  %indvars.iv164 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next165, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67 ] ; 2 uses
  %.451127 = phi ptr [ %2, %.lr.ph130 ], [ %.687, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67 ] ; 5 uses
  %i.do = load ptr, ptr %i.dg, align 8, !tbaa !361, !noalias !369
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv164
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !328, !noalias !369 ; 6 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i62, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  br i1 %i.di, label %.lr.ph.preheader, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67

.lr.ph.preheader:                                 ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 8 %.451127, i8 0, i64 %i.dk, i1 false), !tbaa !195
  %i.dr = getelementptr i8, ptr %.451127, i64 %i.dn
  %scevgep163 = getelementptr i8, ptr %i.dr, i64 8
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67

bb.i:                                             ; preds = %bb.h
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 6 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !44, !noalias !369
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !44, !noalias !369
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %i.de, ptr noundef nonnull align 8 dereferenceable(205) %i.dq, ptr noundef %.451127)
          to label %.thread84 unwind label %bb.j

.thread84:                                        ; preds = %bb.i
  %i.dv = getelementptr inbounds [8 x i8], ptr %.451127, i64 %i.dh ; 2 uses
  %i.dw = load i32, ptr %i.ds, align 8, !tbaa !44
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.ds, align 8, !tbaa !44
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.k, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67

bb.j:                                             ; preds = %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load i32, ptr %i.ds, align 8, !tbaa !44
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %i.ds, align 8, !tbaa !44
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.k:                                             ; preds = %.thread84
  %i.ed = load ptr, ptr %i.dq, align 8, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(205) %i.dq) #17, !inline_history !273
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67:      ; preds = %.lr.ph.preheader, %.preheader, %.thread84, %bb.k
  %.687 = phi ptr [ %i.dv, %bb.k ], [ %i.dv, %.thread84 ], [ %.451127, %.preheader ], [ %scevgep163, %.lr.ph.preheader ]
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %.loopexit, label %bb.h, !llvm.loop !372

.loopexit:                                        ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit67, %._crit_edge
  br i1 %.not.i.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !44
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !44
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ek = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(80) %i.h) #17, !inline_history !238
  br label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit: ; preds = %bb.g, %.loopexit, %bb.l, %bb.m
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split: ; preds = %bb.j, %.split
  %.lcssa180.sink188 = phi ptr [ %.us-phi, %.split ], [ %i.dq, %bb.j ] ; 2 uses
  %.pn55.pn.pn.pn.ph = phi { ptr, i32 } [ %.us-phi106, %.split ], [ %i.dz, %bb.j ]
  %i.en = load ptr, ptr %.lcssa180.sink188, align 8, !tbaa !45
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(205) %.lcssa180.sink188) #17
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split, %bb.j, %.split
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.j ], [ %.us-phi106, %.split ], [ %.pn55.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.sink.split ] ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit70, label %bb.n

bb.n:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %.pn55.pn.pn.pn89 = phi { ptr, i32 } [ %i.cl, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit.thread ], [ %.pn55.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %3 = load i32, ptr %i.eq, align 8, !tbaa !44
  %4 = add nsw i32 %3, -1                         ; 2 uses
  store i32 %4, ptr %i.eq, align 8, !tbaa !44
  %i.er = icmp eq i32 %4, 0
  br i1 %i.er, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit70

bb.o:                                             ; preds = %bb.n
  %i.es = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void %i.eu(ptr noundef nonnull align 8 dereferenceable(80) %i.h) #17, !inline_history !238
  br label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit70

_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit70: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.n, %bb.o
  %.pn55.pn.pn.pn90 = phi { ptr, i32 } [ %.pn55.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ], [ %.pn55.pn.pn.pn89, %bb.n ], [ %.pn55.pn.pn.pn89, %bb.o ]
  resume { ptr, i32 } %.pn55.pn.pn.pn90
}

declare noundef i32 @_ZNK5Ipopt9SumMatrix6NTermsEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZNK5Ipopt9SumMatrix7GetTermEiRdRNS_8SmartPtrIKNS_6MatrixEEE(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK5Ipopt12SumSymMatrix6NTermsEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare void @_ZNK5Ipopt12SumSymMatrix7GetTermEiRdRNS_8SmartPtrIKNS_9SymMatrixEEE(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK5Ipopt17CompoundSymMatrix10NComps_DimEv(ptr noundef nonnull align 8 dereferenceable(137)) local_unnamed_addr #3

declare void @_ZNK5Ipopt10SymTMatrix10FillValuesEPd(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(205) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator.37", align 1 ; 4 uses
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #17 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 233
  %i.d = load i8, ptr %i.c, align 1, !tbaa !373, !range !379, !noundef !380
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.g = load double, ptr %i.f, align 8, !tbaa !381
  store double %i.g, ptr %i.a, align 8, !tbaa !195
  call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef %2, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !382
  tail call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %0, ptr noundef %i.i, i32 noundef 1, ptr noundef %2, i32 noundef 1)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.j = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt14CompoundVectorE, i64 0) #17 ; 4 uses
  %.not34 = icmp eq ptr %i.j, null
  br i1 %.not34, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !383
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !391  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ] ; 3 uses
  %.03162 = phi ptr [ %2, %.lr.ph ], [ %i.af, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ] ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !398, !noalias !399
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !264, !noalias !399 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i:    ; preds = %bb.g
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !361, !noalias !399
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !328, !noalias !399, !nonnull !380, !noundef !380
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i, %bb.g
  %.0.i3.i = phi ptr [ %i.w, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.i ], [ %i.t, %bb.g ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 6 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !44, !noalias !399
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !44, !noalias !399
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !134
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !140 ; 2 uses
  invoke void @_ZN5Ipopt13TripletHelper20FillValuesFromVectorEiRKNS_6VectorEPd(i32 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i, ptr noundef %.03162)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.03162, i64 %i.ae
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !44
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.x, align 8, !tbaa !44
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %.0.i3.i, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i) #17, !inline_history !273
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !402

bb.j:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load i32, ptr %i.x, align 8, !tbaa !44
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.x, align 8, !tbaa !44
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit41

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %.0.i3.i, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i) #17, !inline_history !273
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit41

bb.l:                                             ; preds = %bb.e
  %i.at = tail call ptr @__cxa_allocate_exception(i64 112) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Ipopt19UNKNOWN_VECTOR_TYPEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 915)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN5Ipopt19UNKNOWN_VECTOR_TYPEE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #18
          to label %bb.r unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread: ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i1 [ false, %bb.o ], [ true, %bb.n ]  ; 2 uses
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !64
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.bb = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.bf = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
end_hunk_0
