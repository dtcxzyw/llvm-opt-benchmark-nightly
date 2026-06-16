inline.NumInlined: 57
inline.NumDeleted: 31
begin_hunk_0_@_ZN5o3dgc7IUpdateEPll:bb.a
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = add i64 %i.n, 2
  %i.r = add i64 %i.q, %i.p
  %i.s = ashr i64 %i.r, 2
  %i.t = load i64, ptr %i.l, align 8
  %i.u = sub nsw i64 %i.t, %i.s
  store i64 %i.u, ptr %i.l, align 8
  %i.v = getelementptr [8 x i8], ptr %0, i64 %.018 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16       ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.p, 2
  %i.aa = add i64 %i.z, %i.y
  %i.ab = ashr i64 %i.aa, 2
  %i.ac = load i64, ptr %i.w, align 8
  %i.ad = sub nsw i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.w, align 8
  %i.ae = add nuw nsw i64 %.018, 4                ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.af = and i64 %1, 2
  %lcmp.mod.not.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i64 [ 2, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.ag = getelementptr [8 x i8], ptr %0, i64 %.018.epil.init ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ai, 2
  %i.am = add i64 %i.al, %i.ak
  %i.an = ashr i64 %i.am, 2
  %i.ao = load i64, ptr %i.ag, align 8
  %i.ap = sub nsw i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.ag, align 8
  %i.aq = add nuw nsw i64 %.018.epil.init, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 2, %bb.a ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.epil.preheader ]
  %i.ar = icmp eq i64 %.0.lcssa, %i.a
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.as = getelementptr [8 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load i64, ptr %i.at, align 8
  %i.av = ashr i64 %i.au, 1
  %i.aw = load i64, ptr %i.as, align 8
  %i.ax = sub nsw i64 %i.aw, %i.av
  store i64 %i.ax, ptr %i.as, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @_ZN5o3dgc8IPredictEPll(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %1, -1                       ; 2 uses
  %i.b = icmp sgt i64 %1, 2
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i64 %1, -3                       ; 2 uses
  %i.d = lshr i64 %i.c, 1                         ; 2 uses
  %i.e = add nuw i64 %i.d, 1                      ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.e, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.016 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.g = getelementptr [8 x i8], ptr %0, i64 %.016 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.i, 1
  %i.m = add i64 %i.l, %i.k
  %i.n = ashr i64 %i.m, 1
  %i.o = load i64, ptr %i.g, align 8
  %i.p = add nsw i64 %i.n, %i.o
  store i64 %i.p, ptr %i.g, align 8
  %i.q = getelementptr [8 x i8], ptr %0, i64 %.016 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16       ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.k, 1
  %i.v = add i64 %i.u, %i.t
  %i.w = ashr i64 %i.v, 1
  %i.x = load i64, ptr %i.r, align 8
  %i.y = add nsw i64 %i.w, %i.x
  store i64 %i.y, ptr %i.r, align 8
  %i.z = add nuw nsw i64 %.016, 4                 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.aa = and i64 %i.c, 2
  %lcmp.mod.not.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.016.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.ab = getelementptr [8 x i8], ptr %0, i64 %.016.epil.init ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.ad, 1
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = ashr i64 %i.ah, 1
  %i.aj = load i64, ptr %i.ab, align 8
  %i.ak = add nsw i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.ab, align 8
  %i.al = add nuw nsw i64 %.016.epil.init, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.al, %.lr.ph.epil.preheader ]
  %i.am = icmp eq i64 %.0.lcssa, %i.a
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.an = getelementptr [8 x i8], ptr %0, i64 %i.a ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.an, align 8
  %i.ar = add nsw i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.an, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @_ZN5o3dgc5MergeEPll(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 1                           ; 2 uses
  %i.b = and i64 %1, 1                            ; 2 uses
  %i.c = add nsw i64 %i.a, %i.b                   ; 6 uses
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge20

.preheader.preheader:                             ; preds = %bb.a
  %i.e = add nsw i64 %i.a, %i.b                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %lcmp.mod.not.not = icmp eq i64 %i.f, 0
  br i1 %lcmp.mod.not.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader
  %.01519.prol = add nsw i64 %i.c, -1             ; 2 uses
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.preheader.prol
  %.016.prol = phi i64 [ %i.j, %.lr.ph.prol ], [ %.01519.prol, %.preheader.prol ] ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.prol ; 2 uses
  %i.h = load <2 x i64>, ptr %i.g, align 8
  %i.i = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.i, ptr %i.g, align 8
  %i.j = add nsw i64 %.016.prol, 2                ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.c
  br i1 %i.k, label %.lr.ph.prol, label %._crit_edge.prol, !llvm.loop !6

._crit_edge.prol:                                 ; preds = %.lr.ph.prol
  %i.l = add nuw nsw i64 %i.c, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %._crit_edge.prol, %.preheader.preheader
  %.01519.in.unr = phi i64 [ %i.c, %.preheader.preheader ], [ %.01519.prol, %._crit_edge.prol ]
  %.01418.unr = phi i64 [ %i.c, %.preheader.preheader ], [ %i.l, %._crit_edge.prol ]
  %i.m = icmp eq i64 %i.e, 2
  br i1 %i.m, label %._crit_edge20, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %._crit_edge.1
  %.01519.in = phi i64 [ %.01519.1, %._crit_edge.1 ], [ %.01519.in.unr, %.preheader.prol.loopexit ] ; 4 uses
  %.01418 = phi i64 [ %i.s, %._crit_edge.1 ], [ %.01418.unr, %.preheader.prol.loopexit ] ; 5 uses
  %.01519 = add nsw i64 %.01519.in, -1            ; 2 uses
  %.not = icmp sgt i64 %.01519.in, %.01418
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.n = add nuw nsw i64 %.01418, 1
  %.01519.1 = add nsw i64 %.01519.in, -2          ; 2 uses
  %.not.1 = icmp sgt i64 %.01519, %i.n
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %.016.1 = phi i64 [ %i.r, %.lr.ph.1 ], [ %.01519.1, %._crit_edge ] ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.1 ; 2 uses
  %i.p = load <2 x i64>, ptr %i.o, align 8
  %i.q = shufflevector <2 x i64> %i.p, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.q, ptr %i.o, align 8
  %i.r = add nsw i64 %.016.1, 2                   ; 2 uses
  %.not21 = icmp sgt i64 %i.r, %.01418
  br i1 %.not21, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !6

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %i.s = add nuw nsw i64 %.01418, 2
  %i.t = icmp sgt i64 %.01519.in, 3
  br i1 %i.t, label %.preheader, label %._crit_edge20, !llvm.loop !7

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.016 = phi i64 [ %i.x, %.lr.ph ], [ %.01519, %.preheader ] ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %.016 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8
  %i.w = shufflevector <2 x i64> %i.v, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.w, ptr %i.u, align 8
  %i.x = add nsw i64 %.016, 2                     ; 2 uses
  %i.y = icmp slt i64 %i.x, %.01418
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge20:                                    ; preds = %.preheader.prol.loopexit, %._crit_edge.1, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5o3dgc20DynamicVectorDecoderC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(68) initializes((0, 68)) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 10, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.d, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5o3dgc20DynamicVectorDecoderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(68) dereferenceable(68) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 6) i32 @_ZN5o3dgc20DynamicVectorDecoder12DecodeHeaderERNS_13DynamicVectorERKNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 20 uses
  %i.b = load i64, ptr %i.a, align 8              ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  %i.f = add i64 %i.b, 1                          ; 5 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = load ptr, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw i32 %i.j, 24
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %i.b, 2                          ; 2 uses
  store i64 %i.m, ptr %i.a, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = or disjoint i64 %i.r, %i.l
  %i.t = add i64 %i.b, 3                          ; 2 uses
  store i64 %i.t, ptr %i.a, align 8
  %i.u = load ptr, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 8
  %i.z = or disjoint i64 %i.y, %i.s
  %i.aa = add i64 %i.b, 4
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = load ptr, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = or disjoint i64 %i.z, %i.ae
  br label %_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE.exit

bb.c:                                             ; preds = %bb.a
  %i.ag = zext i8 %i.i to i64
  %i.ah = add i64 %i.b, 2                         ; 2 uses
  store i64 %i.ah, ptr %i.a, align 8
  %i.ai = load ptr, ptr %2, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = or disjoint i64 %i.am, %i.ag
  %i.ao = add i64 %i.b, 3                         ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8
  %i.ap = load ptr, ptr %2, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 16
  %i.au = or disjoint i64 %i.an, %i.at
  %i.av = add i64 %i.b, 4
  store i64 %i.av, ptr %i.a, align 8
  %i.aw = load ptr, ptr %2, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw i32 %i.az, 24
  %i.bb = sext i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.au, %i.bb
  br label %_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE.exit

_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.bc, %bb.c ], [ %i.af, %bb.b ]
  %.not = icmp eq i64 %.0.i, 498
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE.exit
  store i64 %i.f, ptr %i.a, align 8
  %i.bd = load ptr, ptr %2, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.b
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = add i64 %i.b, 2                         ; 2 uses
  store i64 %i.bh, ptr %i.a, align 8
  %i.bi = load ptr, ptr %2, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.f
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 7
  %i.bn = add nuw nsw i64 %i.bm, %i.bg
  %i.bo = add i64 %i.b, 3                         ; 2 uses
  store i64 %i.bo, ptr %i.a, align 8
  %i.bp = load ptr, ptr %2, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 14
  %i.bu = add nuw nsw i64 %i.bn, %i.bt
  %i.bv = add i64 %i.b, 4                         ; 2 uses
  store i64 %i.bv, ptr %i.a, align 8
  %i.bw = load ptr, ptr %2, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 21
  %i.cb = add nuw nsw i64 %i.bu, %i.ca
  %i.cc = add i64 %i.b, 5
  store i64 %i.cc, ptr %i.a, align 8
  %i.cd = load ptr, ptr %2, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl i32 %i.cg, 28
  %i.ci = sext i32 %i.ch to i64
  %i.cj = add nsw i64 %i.cb, %i.ci
  %.not14 = icmp eq i64 %i.cj, 498
  br i1 %.not14, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE.exit, %bb.d
  %.sink = phi i32 [ 1, %bb.d ], [ 2, %_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE.exit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cm = tail call noundef i64 @_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.sink)
  store i64 %i.cm, ptr %0, align 8
  %i.cn = load i64, ptr %i.a, align 8             ; 2 uses
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.a, align 8
  %i.cp = load ptr, ptr %2, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  %.0.i17 = load i8, ptr %i.cq, align 1
  %i.cr = zext i8 %.0.i17 to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.cr, ptr %i.cs, align 4
  %i.ct = load i32, ptr %i.cl, align 8
  %i.cu = tail call noundef i64 @_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.ct) ; 2 uses
  store i64 %i.cu, ptr %1, align 8
  %.not15 = icmp eq i64 %i.cu, 0
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cw = load i32, ptr %i.cl, align 8
  %i.cx = tail call noundef i64 @_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.cw)
end_hunk_0
begin_hunk_1_@_ZNK5o3dgc12BinaryStream11ReadFloat32ERmNS_15O3DGCStreamTypeE:bb.a
  %i.m = shl nuw nsw i32 %i.l, 7
  %i.n = add nuw nsw i32 %i.m, %i.g
  %i.o = add i64 %i.b, 3                          ; 2 uses
  store i64 %i.o, ptr %1, align 8
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 14
  %i.u = add nuw nsw i32 %i.n, %i.t
  %i.v = add i64 %i.b, 4                          ; 2 uses
  store i64 %i.v, ptr %1, align 8
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 21
  %i.ab = add nuw nsw i32 %i.u, %i.aa
  %i.ac = add i64 %i.b, 5
  store i64 %i.ac, ptr %1, align 8
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl i32 %i.ag, 28
  %.sroa.0.0.extract.trunc.i = add i32 %i.ab, %i.ah
  br label %_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = load i64, ptr %1, align 8               ; 8 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.am, ptr %1, align 8
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = shl nuw i32 %i.aq, 24
  %i.as = add i64 %i.al, 2                        ; 2 uses
  store i64 %i.as, ptr %1, align 8
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.am
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = or disjoint i32 %i.ax, %i.ar
  %i.az = add i64 %i.al, 3                        ; 2 uses
  store i64 %i.az, ptr %1, align 8
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = or disjoint i32 %i.ay, %i.be
  %i.bg = add i64 %i.al, 4
  store i64 %i.bg, ptr %1, align 8
  %i.bh = load ptr, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bf, %i.bk
  br label %_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit

bb.e:                                             ; preds = %bb.c
  %i.bm = add i64 %i.al, 2                        ; 2 uses
  store i64 %i.bm, ptr %1, align 8
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.am
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = add i64 %i.al, 3                        ; 2 uses
  store i64 %i.bs, ptr %1, align 8
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 16
  %i.by = add i64 %i.al, 4
  store i64 %i.by, ptr %1, align 8
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bs
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw i32 %i.cc, 24
  %i.ce = or disjoint i32 %i.br, %i.bx
  %i.cf = or disjoint i32 %i.ce, %i.cd
  %i.cg = or disjoint i32 %i.cf, %i.aq
  br label %_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit

_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.0.in = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.b ], [ %i.bl, %bb.d ], [ %i.cg, %bb.e ]
  %.0 = bitcast i32 %.0.in to float
  ret float %.0
}

declare void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #6

declare void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20)) unnamed_addr #6

declare void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #6

declare void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef) unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc10ITransformEPlm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge40

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i64 %1, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02133 = phi i64 [ %i.g, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.02232 = phi i64 [ %i.i, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %.02331 = phi i64 [ %i.e, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.c = lshr i64 %.02331, 1
  %i.d = and i64 %.02331, 1
  %i.e = add nuw i64 %i.c, %i.d                   ; 3 uses
  %i.f = and i64 %i.e, 1
  %i.g = add i64 %.02133, 1
  %i.h = shl nuw i64 %i.f, %.02133
  %i.i = add i64 %i.h, %.02232                    ; 2 uses
  %i.j = icmp ugt i64 %i.e, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph
  %i.k = add i64 %.02133, -1                      ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge40:                                    ; preds = %_ZN5o3dgc8IPredictEPll.exit, %bb.a, %._crit_edge
  ret i32 0

bb.b:                                             ; preds = %.lr.ph39, %_ZN5o3dgc8IPredictEPll.exit
  %.037 = phi i64 [ %i.k, %.lr.ph39 ], [ %i.ck, %_ZN5o3dgc8IPredictEPll.exit ] ; 3 uses
  %.136 = phi i64 [ 1, %.lr.ph39 ], [ %i.q, %_ZN5o3dgc8IPredictEPll.exit ]
  %i.n = shl i64 %.136, 1
  %i.o = lshr i64 %i.i, %.037                     ; 3 uses
  %i.p = and i64 %i.o, 1
  %i.q = sub i64 %i.n, %i.p                       ; 6 uses
  %i.r = ashr i64 %i.q, 1                         ; 3 uses
  %i.s = and i64 %i.q, 1
  %i.t = add nsw i64 %i.r, %i.s                   ; 6 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %.preheader.i.preheader, label %_ZN5o3dgc5MergeEPll.exit

.preheader.i.preheader:                           ; preds = %bb.b
  %i.v = or i64 %i.o, -2
  %i.w = sub i64 %i.r, %i.o
  %i.x = and i64 %i.w, 1
  %lcmp.mod.not.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not.not, label %.preheader.i.prol, label %.preheader.i.prol.loopexit

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %.01519.i.prol = add nsw i64 %i.t, -1           ; 2 uses
  br label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.prol, %.preheader.i.prol
  %.016.i.prol = phi i64 [ %i.ab, %.lr.ph.i.prol ], [ %.01519.i.prol, %.preheader.i.prol ] ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i.prol ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 8
  %i.aa = shufflevector <2 x i64> %i.z, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.aa, ptr %i.y, align 8
  %i.ab = add nsw i64 %.016.i.prol, 2             ; 2 uses
  %i.ac = icmp slt i64 %i.ab, %i.t
  br i1 %i.ac, label %.lr.ph.i.prol, label %._crit_edge.i.prol, !llvm.loop !6

._crit_edge.i.prol:                               ; preds = %.lr.ph.i.prol
  %i.ad = add nuw nsw i64 %i.t, 1
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %._crit_edge.i.prol, %.preheader.i.preheader
  %.01519.in.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %.01519.i.prol, %._crit_edge.i.prol ]
  %.01418.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %i.ad, %._crit_edge.i.prol ]
  %i.ae = sub nsw i64 0, %i.v
  %i.af = icmp eq i64 %i.r, %i.ae
  br i1 %i.af, label %_ZN5o3dgc5MergeEPll.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %._crit_edge.i.1
  %.01519.in.i = phi i64 [ %.01519.i.1, %._crit_edge.i.1 ], [ %.01519.in.i.unr, %.preheader.i.prol.loopexit ] ; 4 uses
  %.01418.i = phi i64 [ %i.al, %._crit_edge.i.1 ], [ %.01418.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01519.i = add nsw i64 %.01519.in.i, -1        ; 2 uses
  %.not.i = icmp sgt i64 %.01519.in.i, %.01418.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %i.ag = add nuw nsw i64 %.01418.i, 1
  %.01519.i.1 = add nsw i64 %.01519.in.i, -2      ; 2 uses
  %.not.i.1 = icmp sgt i64 %.01519.i, %i.ag
  br i1 %.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %.lr.ph.i.1
  %.016.i.1 = phi i64 [ %i.ak, %.lr.ph.i.1 ], [ %.01519.i.1, %._crit_edge.i ] ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i.1 ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 8
  %i.aj = shufflevector <2 x i64> %i.ai, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.aj, ptr %i.ah, align 8
  %i.ak = add nsw i64 %.016.i.1, 2                ; 2 uses
  %.not = icmp sgt i64 %i.ak, %.01418.i
  br i1 %.not, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !6

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %i.al = add nuw nsw i64 %.01418.i, 2
  %i.am = icmp sgt i64 %.01519.in.i, 3
  br i1 %i.am, label %.preheader.i, label %_ZN5o3dgc5MergeEPll.exit, !llvm.loop !7

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.016.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.01519.i, %.preheader.i ] ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8
  %i.ap = shufflevector <2 x i64> %i.ao, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ap, ptr %i.an, align 8
  %i.aq = add nsw i64 %.016.i, 2                  ; 2 uses
  %i.ar = icmp slt i64 %i.aq, %.01418.i
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

_ZN5o3dgc5MergeEPll.exit:                         ; preds = %.preheader.i.prol.loopexit, %._crit_edge.i.1, %bb.b
  %i.as = add nsw i64 %i.q, -1                    ; 6 uses
  %i.at = load i64, ptr %i.m, align 8
  %i.au = ashr i64 %i.at, 1
  %i.av = load i64, ptr %0, align 8
  %i.aw = sub nsw i64 %i.av, %i.au
  store i64 %i.aw, ptr %0, align 8
  %i.ax = icmp sgt i64 %i.q, 3
  br i1 %i.ax, label %.lr.ph.i25, label %._crit_edge.i24

.lr.ph.i25:                                       ; preds = %_ZN5o3dgc5MergeEPll.exit, %.lr.ph.i25
  %.018.i = phi i64 [ %i.bi, %.lr.ph.i25 ], [ 2, %_ZN5o3dgc5MergeEPll.exit ] ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %0, i64 %.018.i ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i64 %i.ba, 2
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = ashr i64 %i.be, 2
  %i.bg = load i64, ptr %i.ay, align 8
  %i.bh = sub nsw i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %i.ay, align 8
  %i.bi = add nuw nsw i64 %.018.i, 2              ; 3 uses
  %i.bj = icmp slt i64 %i.bi, %i.as
  br i1 %i.bj, label %.lr.ph.i25, label %._crit_edge.i24, !llvm.loop !3

._crit_edge.i24:                                  ; preds = %.lr.ph.i25, %_ZN5o3dgc5MergeEPll.exit
  %.0.lcssa.i = phi i64 [ 2, %_ZN5o3dgc5MergeEPll.exit ], [ %i.bi, %.lr.ph.i25 ]
  %i.bk = icmp eq i64 %.0.lcssa.i, %i.as
  br i1 %i.bk, label %bb.c, label %_ZN5o3dgc7IUpdateEPll.exit

bb.c:                                             ; preds = %._crit_edge.i24
  %i.bl = getelementptr [8 x i8], ptr %0, i64 %i.as ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = ashr i64 %i.bn, 1
  %i.bp = load i64, ptr %i.bl, align 8
  %i.bq = sub nsw i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %i.bl, align 8
  br label %_ZN5o3dgc7IUpdateEPll.exit

_ZN5o3dgc7IUpdateEPll.exit:                       ; preds = %._crit_edge.i24, %bb.c
  %i.br = icmp sgt i64 %i.q, 2
  br i1 %i.br, label %.lr.ph.i28, label %._crit_edge.i26

.lr.ph.i28:                                       ; preds = %_ZN5o3dgc7IUpdateEPll.exit, %.lr.ph.i28
  %.016.i29 = phi i64 [ %i.cc, %.lr.ph.i28 ], [ 1, %_ZN5o3dgc7IUpdateEPll.exit ] ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %0, i64 %.016.i29 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bu, 1
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = ashr i64 %i.by, 1
  %i.ca = load i64, ptr %i.bs, align 8
  %i.cb = add nsw i64 %i.bz, %i.ca
  store i64 %i.cb, ptr %i.bs, align 8
  %i.cc = add nuw nsw i64 %.016.i29, 2            ; 3 uses
  %i.cd = icmp slt i64 %i.cc, %i.as
  br i1 %i.cd, label %.lr.ph.i28, label %._crit_edge.i26, !llvm.loop !5

._crit_edge.i26:                                  ; preds = %.lr.ph.i28, %_ZN5o3dgc7IUpdateEPll.exit
  %.0.lcssa.i27 = phi i64 [ 1, %_ZN5o3dgc7IUpdateEPll.exit ], [ %i.cc, %.lr.ph.i28 ]
  %i.ce = icmp eq i64 %.0.lcssa.i27, %i.as
  br i1 %i.ce, label %bb.d, label %_ZN5o3dgc8IPredictEPll.exit

bb.d:                                             ; preds = %._crit_edge.i26
  %i.cf = getelementptr [8 x i8], ptr %0, i64 %i.as ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = load i64, ptr %i.cf, align 8
  %i.cj = add nsw i64 %i.ci, %i.ch
  store i64 %i.cj, ptr %i.cf, align 8
  br label %_ZN5o3dgc8IPredictEPll.exit

_ZN5o3dgc8IPredictEPll.exit:                      ; preds = %._crit_edge.i26, %bb.d
  %i.ck = add nsw i64 %.037, -1
  %i.cl = icmp sgt i64 %.037, 0
  br i1 %i.cl, label %bb.b, label %._crit_edge40, !llvm.loop !20
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc20DynamicVectorDecoder9IQuantizeEPfmmmPKfS3_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = mul i64 %3, %2                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.a, ptr %i.b, align 8
  %i.h = icmp ugt i64 %i.a, 2305843009213693951
  %i.i = shl nuw i64 %i.a, 3
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #15
  store ptr %i.k, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.e
  %i.l = trunc i64 %7 to i32
  %notmask = shl nsw i32 -1, %i.l
  %i.m = xor i32 %notmask, -1
  %i.n = uitofp nneg i32 %i.m to float
  %.not38 = icmp eq i64 %2, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %.not38, label %._crit_edge37, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph36
  %xtraiter = and i64 %2, 1
  %i.p = icmp eq i64 %2, 1
  %unroll_iter = and i64 %2, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod45 = trunc i64 %2 to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.02734.us = phi i64 [ %i.ay, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02734.us
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02734.us ; 4 uses
  %i.t = load float, ptr %i.s, align 4
  %i.u = fsub float %i.r, %i.t                    ; 2 uses
  %i.v = fcmp ogt float %i.u, 0.000000e+00
  %i.w = fdiv float %i.u, %i.n
  %.028.us = select i1 %i.v, float %i.w, float 1.000000e+00 ; 3 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %1, i64 %.02734.us ; 3 uses
  %i.x = mul i64 %.02734.us, %2                   ; 3 uses
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.033.us = phi i64 [ %i.ap, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.033.us
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = sitofp i64 %i.ab to float
  %i.ad = load float, ptr %i.s, align 4
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ac, float %.028.us, float %i.ad)
  %i.af = mul i64 %.033.us, %4
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.af
  store float %i.ae, ptr %gep.us, align 4
  %i.ag = or disjoint i64 %.033.us, 1             ; 2 uses
  %i.ah = load ptr, ptr %i.o, align 8
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.x
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = sitofp i64 %i.ak to float
  %i.am = load float, ptr %i.s, align 4
  %i.an = tail call float @llvm.fmuladd.f32(float %i.al, float %.028.us, float %i.am)
  %i.ao = mul i64 %i.ag, %4
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ao
  store float %i.an, ptr %gep.us.1, align 4
  %i.ap = add nuw i64 %.033.us, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !16

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.033.us.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.ap, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.aq = load ptr, ptr %i.o, align 8
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %.033.us.epil.init
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.x
end_hunk_1
