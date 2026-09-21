Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/StringRef?download=true
inline.NumInlined: 344
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvh9StringRef13find_first_ofES0_m:bb.a
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !49

bb.b:                                             ; preds = %.lr.ph21, %bb.c
  %.01019 = phi i64 [ %3, %.lr.ph21 ], [ %i.aq, %bb.c ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %.01019
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !13
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not15 = icmp eq i64 %i.ap, 0
  br i1 %.not15, label %bb.c, label %._crit_edge22

bb.c:                                             ; preds = %bb.b
  %i.aq = add i64 %.01019, 1                      ; 2 uses
  %.not13 = icmp eq i64 %i.aq, %i.l
  br i1 %.not13, label %._crit_edge22, label %bb.b, !llvm.loop !50

._crit_edge22:                                    ; preds = %bb.c, %bb.b, %._crit_edge
  %spec.select = phi i64 [ -1, %._crit_edge ], [ %.01019, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofEcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not13.not = icmp ugt i64 %i.b, %2
  br i1 %.not13.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0814 = phi i64 [ %2, %.lr.ph ], [ %i.f, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0814
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %.not10 = icmp eq i8 %i.e, %1
  br i1 %.not10, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %.0814, 1                        ; 2 uses
  %.not = icmp eq i64 %i.f, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %i.g = phi i64 [ -1, %bb.a ], [ -1, %bb.c ], [ %.0814, %bb.b ]
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::bitset", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not16 = icmp eq i64 %2, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01117.epil.init
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = and i64 %i.d, 63
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i64 %i.d, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = or i64 %i.f, %i.i
  store i64 %i.j, ptr %i.h, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %.not1318.not = icmp ugt i64 %i.l, %3
  br i1 %.not1318.not, label %.lr.ph21, label %._crit_edge22

.lr.ph21:                                         ; preds = %._crit_edge
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01117 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = and i64 %i.p, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13
  %i.v = or i64 %i.r, %i.u
  store i64 %i.v, ptr %i.t, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15
  %i.z = zext i8 %i.y to i64                      ; 2 uses
  %i.aa = and i64 %i.z, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = lshr i64 %i.z, 6
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = or i64 %i.ab, %i.ae
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !13
  %i.ag = add nuw i64 %.01117, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !52

bb.b:                                             ; preds = %.lr.ph21, %bb.c
  %.01019 = phi i64 [ %3, %.lr.ph21 ], [ %i.aq, %bb.c ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %.01019
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !13
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not15 = icmp eq i64 %i.ap, 0
  br i1 %.not15, label %._crit_edge22, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = add i64 %.01019, 1                      ; 2 uses
  %.not13 = icmp eq i64 %i.aq, %i.l
  br i1 %.not13, label %._crit_edge22, label %bb.b, !llvm.loop !53

._crit_edge22:                                    ; preds = %bb.c, %bb.b, %._crit_edge
  %spec.select = phi i64 [ -1, %._crit_edge ], [ %.01019, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef12find_last_ofES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::bitset", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not16 = icmp eq i64 %2, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod26 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01117.epil.init
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = and i64 %i.d, 63
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i64 %i.d, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = or i64 %i.f, %i.i
  store i64 %i.j, ptr %i.h, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %3) ; 2 uses
  %5 = load ptr, ptr %0, align 8
  %.not1318 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not1318, label %._crit_edge22, label %.lr.ph20

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01117 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = and i64 %i.o, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = lshr i64 %i.o, 6
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  %i.u = or i64 %i.q, %i.t
  store i64 %i.u, ptr %i.s, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = and i64 %i.y, 63
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = lshr i64 %i.y, 6
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13
  %i.ae = or i64 %i.aa, %i.ad
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !13
  %i.af = add nuw i64 %.01117, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !54

bb.b:                                             ; preds = %.lr.ph20
  %.not13 = icmp eq i64 %.010, 0
  br i1 %.not13, label %._crit_edge22, label %.lr.ph20, !llvm.loop !55

.lr.ph20:                                         ; preds = %._crit_edge, %bb.b
  %.010.in19 = phi i64 [ %.010, %bb.b ], [ %.sroa.speculated, %._crit_edge ]
  %.010 = add i64 %.010.in19, -1                  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 %.010
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = zext i8 %i.ah to i64                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.an, %i.al
  %.not15 = icmp eq i64 %i.ao, 0
  br i1 %.not15, label %bb.b, label %._crit_edge21, !llvm.loop !55

._crit_edge21:                                    ; preds = %.lr.ph20
  br label %._crit_edge22, !llvm.loop !55

._crit_edge22:                                    ; preds = %bb.b, %._crit_edge21, %._crit_edge
  %.010.lcssa = phi i64 [ %.010, %._crit_edge21 ], [ -1, %._crit_edge ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.010.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef16find_last_not_ofEcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %.not13 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %.08, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !56

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.08.in14 = phi i64 [ %.08, %bb.b ], [ %.sroa.speculated, %bb.a ]
  %.08 = add i64 %.08.in14, -1                    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.08
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %.not10 = icmp eq i8 %i.e, %1
  br i1 %.not10, label %bb.b, label %._crit_edge15, !llvm.loop !56

._crit_edge15:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.b, %._crit_edge15, %bb.a
  %.08.lcssa = phi i64 [ -1, %bb.a ], [ %.08, %._crit_edge15 ], [ -1, %bb.b ]
  ret i64 %.08.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef16find_last_not_ofES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::bitset", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not17 = icmp eq i64 %2, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01218.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01218.epil.init
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = and i64 %i.d, 63
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i64 %i.d, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = or i64 %i.f, %i.i
  store i64 %i.j, ptr %i.h, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %3) ; 2 uses
  %5 = load ptr, ptr %0, align 8
  %.not1419 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not1419, label %._crit_edge23, label %.lr.ph21

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01218 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.01218
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = and i64 %i.o, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = lshr i64 %i.o, 6
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  %i.u = or i64 %i.q, %i.t
  store i64 %i.u, ptr %i.s, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.01218
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = and i64 %i.y, 63
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = lshr i64 %i.y, 6
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13
  %i.ae = or i64 %i.aa, %i.ad
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !13
  %i.af = add nuw i64 %.01218, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

bb.b:                                             ; preds = %.lr.ph21
  %.not14 = icmp eq i64 %.011, 0
  br i1 %.not14, label %._crit_edge23, label %.lr.ph21, !llvm.loop !58

.lr.ph21:                                         ; preds = %._crit_edge, %bb.b
  %.011.in20 = phi i64 [ %.011, %bb.b ], [ %.sroa.speculated, %._crit_edge ]
  %.011 = add i64 %.011.in20, -1                  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 %.011
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = zext i8 %i.ah to i64                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.an, %i.al
  %.not16 = icmp eq i64 %i.ao, 0
  br i1 %.not16, label %._crit_edge22, label %bb.b, !llvm.loop !58

._crit_edge22:                                    ; preds = %.lr.ph21
  br label %._crit_edge23, !llvm.loop !58

._crit_edge23:                                    ; preds = %bb.b, %._crit_edge22, %._crit_edge
  %.011.lcssa = phi i64 [ %.011, %._crit_edge22 ], [ -1, %._crit_edge ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.011.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree readonly captures(none) %2, i64 %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"class.llvh::StringRef", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  %.not54 = icmp eq i32 %4, 0
  br i1 %.not54, label %..thread_crit_edge, label %.lr.ph

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %4, -1                       ; 2 uses
  %.promoted = load ptr, ptr %6, align 8          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted56 = load i64, ptr %i.b, align 8      ; 2 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us
  %i.f = phi i64 [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.promoted56, %.lr.ph ] ; 4 uses
  %i.g = phi i32 [ %i.x, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.h = phi ptr [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3, i64 noundef 0) ; 3 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i)
  %i.l = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !27
  %.not.i.us = icmp ult i32 %i.l, %i.m
  br i1 %.not.i.us, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i.us = load i32, ptr %i.c, align 8, !tbaa !26
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us: ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %.pre.i.us, %bb.c ], [ %i.l, %bb.b ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !29
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  store ptr %i.h, ptr %i.q, align 1
  %.sroa.4.0..sroa_idx27.us = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx27.us, align 1
  %i.r = load i32, ptr %i.c, align 8, !tbaa !26
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !26
  %i.t = add i64 %i.i, %3
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u ; 2 uses
  %i.w = sub i64 %i.f, %i.u                       ; 3 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !23
  store i64 %i.w, ptr %i.b, align 8, !tbaa !13
  %i.x = add nsw i32 %i.g, -1
  %.not.us = icmp eq i32 %i.g, 0
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %i.y = phi i64 [ %i.ao, %bb.f ], [ %.promoted56, %.lr.ph ] ; 4 uses
  %i.z = phi i32 [ %i.ap, %bb.f ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.aa = phi ptr [ %i.an, %bb.f ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.ab = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3, i64 noundef 0) ; 3 uses
  switch i64 %i.ab, label %bb.d [
    i64 -1, label %.thread
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph.split
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ab)
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !27
  %.not.i = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !26
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %bb.d, %bb.e
  %i.af = phi i32 [ %.pre.i, %bb.e ], [ %i.ad, %bb.d ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !29
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  store ptr %i.aa, ptr %i.ai, align 1
  %.sroa.4.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx27, align 1
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !26
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.c, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit
  %i.al = add i64 %i.ab, %3
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.am ; 2 uses
  %i.ao = sub i64 %i.y, %i.am                     ; 3 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !23
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !13
  %i.ap = add nsw i32 %i.z, -1
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %bb.f, %.lr.ph.split, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, %.lr.ph.split.us, %..thread_crit_edge
  %i.aq = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.f, %.lr.ph.split.us ], [ %i.ao, %bb.f ], [ %i.y, %.lr.ph.split ]
  %i.ar = icmp ne i64 %i.aq, 0
  %or.cond45.not = select i1 %5, i1 true, i1 %i.ar
  br i1 %or.cond45.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !27
  %.not.i24 = icmp ult i32 %i.at, %i.av
  br i1 %.not.i24, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef 16) #18
  %.pre.i25 = load i32, ptr %i.as, align 8, !tbaa !26
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26: ; preds = %bb.g, %bb.h
  %i.ax = phi i32 [ %.pre.i25, %bb.h ], [ %i.at, %bb.g ]
  %i.ay = load ptr, ptr %1, align 8, !tbaa !29
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.bb = load i32, ptr %i.as, align 8, !tbaa !26
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %.thread, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef signext %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.030.0.copyload = load ptr, ptr %0, align 8, !tbaa !23 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !13 ; 3 uses
  %.not109 = icmp eq i32 %3, 0
  br i1 %.not109, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %3, -1                       ; 2 uses
  %i.b = sext i8 %2 to i32                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us
  %i.f = phi i32 [ %i.x, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %.sroa.030.0111.us = phi ptr [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.sroa.030.0.copyload, %.lr.ph ] ; 7 uses
  %.sroa.8.0110.us = phi i64 [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.sroa.8.0.copyload, %.lr.ph ] ; 6 uses
  %.not101.us = icmp eq i64 %.sroa.8.0110.us, 0
  br i1 %.not101.us, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = tail call noundef ptr @memchr(ptr noundef %.sroa.030.0111.us, i32 noundef %i.b, i64 noundef %.sroa.8.0110.us) #17 ; 3 uses
  %.not.i.us = icmp eq ptr %i.g, null
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.sroa.030.0111.us to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
end_hunk_0
begin_hunk_1_@_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib:bb.a
bb.e:                                             ; preds = %.lr.ph.split
  %i.z = tail call noundef ptr @memchr(ptr noundef %.sroa.030.0111, i32 noundef %i.b, i64 noundef %.sroa.8.0110) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %.sroa.030.0111 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, -1
  %or.cond98 = select i1 %.not.i, i1 true, i1 %i.ad
  br i1 %or.cond98, label %.thread.thread137, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121 = icmp eq ptr %i.z, %.sroa.030.0111
  br i1 %.not121, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0110, i64 %i.ac)
  %i.af = load i32, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !27
  %.not.i22 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i22, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !26
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %bb.g, %bb.h
  %i.ah = phi i32 [ %.pre.i, %bb.h ], [ %i.af, %bb.g ]
  %i.ai = load ptr, ptr %1, align 8, !tbaa !29
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  store ptr %.sroa.030.0111, ptr %i.ak, align 1
  %.sroa.4.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx29, align 1
  %i.al = load i32, ptr %i.c, align 8, !tbaa !26
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.c, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, %bb.f
  %i.an = add nuw i64 %i.ac, 1
  %.sroa.speculated53 = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0110, i64 %i.an) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.030.0111, i64 %.sroa.speculated53 ; 2 uses
  %i.ap = sub i64 %.sroa.8.0110, %.sroa.speculated53 ; 2 uses
  %i.aq = add nsw i32 %i.y, -1
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %bb.i, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %.sroa.8.0.copyload, %bb.a ], [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.ap, %bb.i ] ; 2 uses
  %.sroa.030.0.lcssa = phi ptr [ %.sroa.030.0.copyload, %bb.a ], [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.ao, %bb.i ]
  %i.ar = icmp ne i64 %.sroa.8.0.lcssa, 0
  %or.cond100.not = select i1 %4, i1 true, i1 %i.ar
  br i1 %or.cond100.not, label %.thread.thread137, label %.thread97

.thread.thread:                                   ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi116 = phi ptr [ %.sroa.030.0111.us, %.lr.ph.split.us ], [ %.sroa.030.0111, %.lr.ph.split ]
  br i1 %4, label %.thread.thread137, label %.thread97

.thread.thread137:                                ; preds = %bb.e, %bb.b, %.thread.thread, %.thread
  %.sroa.8.0108 = phi i64 [ 0, %.thread.thread ], [ %.sroa.8.0.lcssa, %.thread ], [ %.sroa.8.0110.us, %bb.b ], [ %.sroa.8.0110, %bb.e ]
  %.sroa.030.0106 = phi ptr [ %.us-phi116, %.thread.thread ], [ %.sroa.030.0.lcssa, %.thread ], [ %.sroa.030.0111.us, %bb.b ], [ %.sroa.030.0111, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !27
  %.not.i26 = icmp ult i32 %i.at, %i.av
  br i1 %.not.i26, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28, label %bb.j, !prof !28

bb.j:                                             ; preds = %.thread.thread137
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef 16) #18
  %.pre.i27 = load i32, ptr %i.as, align 8, !tbaa !26
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28: ; preds = %.thread.thread137, %bb.j
  %i.ax = phi i32 [ %.pre.i27, %bb.j ], [ %i.at, %.thread.thread137 ]
  %i.ay = load ptr, ptr %1, align 8, !tbaa !29
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  store ptr %.sroa.030.0106, ptr %i.ba, align 1
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.8.0108, ptr %.sroa.8.0..sroa_idx34, align 1
  %i.bb = load i32, ptr %i.as, align 8, !tbaa !26
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !26
  br label %.thread97

.thread97:                                        ; preds = %.thread, %.thread.thread, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef5countES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.fr34 = freeze i64 %2                          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.c = icmp ugt i64 %.fr34, %i.b
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub nuw i64 %i.b, %.fr34           ; 3 uses
  %.not30 = icmp eq i64 %reass.sub, -1
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = icmp eq i64 %.fr34, 0
  br i1 %i.e, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.f = add i64 %i.b, 1                          ; 2 uses
  %i.g = sub nuw nsw i64 %i.f, %.fr34             ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %i.h = and i64 %i.f, 3                          ; 2 uses
  %n.vec = sub nuw i64 %i.g, %i.h                 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = add <2 x i64> %reduced.phi, splat (i64 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %i.j = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.h, 0
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.split.us.preheader40

.lr.ph.split.us.preheader40:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.01032.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.j, %middle.block ]
  %.01131.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader40, %.lr.ph.split.us
  %.01032.us = phi i64 [ %spec.select33, %.lr.ph.split.us ], [ %.01032.us.ph, %.lr.ph.split.us.preheader40 ]
  %.01131.us = phi i64 [ %i.k, %.lr.ph.split.us ], [ %.01131.us.ph, %.lr.ph.split.us.preheader40 ] ; 2 uses
  %spec.select33 = add i64 %.01032.us, 1          ; 2 uses
  %i.k = add nuw i64 %.01131.us, 1
  %.not.us = icmp eq i64 %.01131.us, %reass.sub
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !60

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  %.01032 = phi i64 [ %i.p, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %.01131 = phi i64 [ %i.q, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %.01131) ; 2 uses
  %i.l = sub nuw i64 %i.b, %.sroa.speculated20
  %.not29 = icmp ugt i64 %.fr34, %i.l
  br i1 %.not29, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %.lr.ph.split
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated20
  %bcmp = tail call i32 @bcmp(ptr %i.m, ptr %1, i64 %.fr34)
  %bcmp.fr = freeze i32 %bcmp
  %i.n = icmp eq i32 %bcmp.fr, 0
  %i.o = zext i1 %i.n to i64
  %spec.select = add i64 %.01032, %i.o
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %.lr.ph.split
  %i.p = phi i64 [ %.01032, %.lr.ph.split ], [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit ] ; 2 uses
  %i.q = add nuw i64 %.01131, 1
  %.not = icmp eq i64 %.01131, %reass.sub
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !61

.loopexit:                                        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %.lr.ph.split.us, %middle.block, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select33, %.lr.ph.split.us ], [ %i.j, %middle.block ], [ %i.p, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i32 @_ZL17GetAutoSenseRadixRN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.018 = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !23
  store i64 0, ptr %2, align 8, !tbaa !31
  %i.f = zext i32 %.018 to i64                    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.l
  %.sroa.0.066 = phi ptr [ %.sroa.0.0.copyload, %bb.d ], [ %i.t, %bb.l ] ; 6 uses
  %.sroa.15.065 = phi i64 [ %i.d, %bb.d ], [ %i.u, %bb.l ] ; 5 uses
  %.sroa.15.065.a = phi i64 [ 0, %bb.d ], [ %i.q, %bb.l ] ; 2 uses
  %i.g = load i8, ptr %.sroa.0.066, align 1, !tbaa !15 ; 6 uses
  %i.h = icmp sgt i8 %i.g, 47
  br i1 %i.h, label %bb.f, label %.thread55

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ult i8 %i.g, 58
  br i1 %i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = icmp samesign ugt i8 %i.g, 96
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = icmp samesign ult i8 %i.g, 123
  br i1 %i.k, label %bb.j, label %.thread55

bb.i:                                             ; preds = %bb.g
  %i.l = add nsw i8 %i.g, -65
  %or.cond = icmp ult i8 %i.l, 26
  br i1 %or.cond, label %bb.j, label %.thread55

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.sink70 = phi i32 [ -48, %bb.f ], [ -87, %bb.h ], [ -55, %bb.i ]
  %i.m = zext nneg i8 %i.g to i32
  %i.n = add nsw i32 %.sink70, %i.m               ; 2 uses
  %.not = icmp ult i32 %i.n, %.018
  br i1 %.not, label %bb.k, label %.thread55

bb.k:                                             ; preds = %bb.j
  %i.o = mul i64 %.sroa.15.065.a, %i.f
  %i.p = zext nneg i32 %i.n to i64
  %i.q = add i64 %i.o, %i.p                       ; 3 uses
  store i64 %i.q, ptr %2, align 8, !tbaa !31
  %i.r = udiv i64 %i.q, %i.f
  %i.s = icmp ult i64 %i.r, %.sroa.15.065.a
  br i1 %i.s, label %.thread59, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 1 ; 2 uses
  %i.u = add i64 %.sroa.15.065, -1                ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.thread55, label %bb.e

.thread55:                                        ; preds = %bb.h, %bb.e, %bb.j, %bb.i, %bb.l
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.15.065, %bb.h ], [ %.sroa.15.065, %bb.e ], [ %.sroa.15.065, %bb.j ], [ %.sroa.15.065, %bb.i ], [ 0, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.066, %bb.h ], [ %.sroa.0.066, %bb.e ], [ %.sroa.0.066, %bb.j ], [ %.sroa.0.066, %bb.i ], [ %i.t, %bb.l ]
  %i.w = icmp eq i64 %i.d, %.sroa.15.0.lcssa
  br i1 %i.w, label %.thread59, label %bb.m

bb.m:                                             ; preds = %.thread55
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8, !tbaa !23
  store i64 %.sroa.15.0.lcssa, ptr %i.c, align 8, !tbaa !13
  br label %.thread59

.thread59:                                        ; preds = %bb.k, %bb.m, %.thread55, %bb.c
  %.4 = phi i1 [ true, %bb.c ], [ true, %.thread55 ], [ false, %bb.m ], [ true, %bb.k ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 2, 17) i32 @_ZL17GetAutoSenseRadixRN4llvh9StringRefE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %switch = icmp ult i64 %i.b, 2
  br i1 %switch, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit53

_ZNK4llvh9StringRef10startswithES0_.exit53:       ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 10 uses
  %i.d = load i16, ptr %i.c, align 1
  %i.e = icmp ne i16 %i.d, 30768
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, label %_ZNK4llvh9StringRef10startswithES0_.exit49

_ZNK4llvh9StringRef10startswithES0_.exit49:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit53
  %i.h = load i16, ptr %i.c, align 1
  %i.i = icmp ne i16 %i.h, 22576
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, label %_ZNK4llvh9StringRef10startswithES0_.exit45

_ZNK4llvh9StringRef10startswithES0_.exit53.thread112: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit49, %_ZNK4llvh9StringRef10startswithES0_.exit53
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit45:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit49
  %i.m = load i16, ptr %i.c, align 1
  %i.n = icmp ne i16 %i.m, 25136
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, label %_ZNK4llvh9StringRef10startswithES0_.exit41

_ZNK4llvh9StringRef10startswithES0_.exit41:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit45
  %i.q = load i16, ptr %i.c, align 1
  %i.r = icmp ne i16 %i.q, 16944
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit45.thread116: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit41, %_ZNK4llvh9StringRef10startswithES0_.exit45
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit41
  %i.v = load i16, ptr %i.c, align 1
  %i.w = icmp ne i16 %i.v, 28464
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread120, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread120: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.aa = load i8, ptr %i.c, align 1, !tbaa !15
  %i.ab = icmp eq i8 %i.aa, 48
  br i1 %i.ab, label %bb.b, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread

bb.b:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split: ; preds = %bb.b, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, %_ZNK4llvh9StringRef10startswithES0_.exit.thread120
  %.sink131 = phi i64 [ -2, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112 ], [ -2, %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116 ], [ -2, %_ZNK4llvh9StringRef10startswithES0_.exit.thread120 ], [ -1, %bb.b ]
  %.sink130 = phi ptr [ %i.l, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112 ], [ %i.u, %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116 ], [ %i.z, %_ZNK4llvh9StringRef10startswithES0_.exit.thread120 ], [ %i.ac, %bb.b ]
  %.0.ph = phi i32 [ 16, %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112 ], [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116 ], [ 8, %_ZNK4llvh9StringRef10startswithES0_.exit.thread120 ], [ 8, %bb.b ]
  %i.ag = add i64 %i.b, %.sink131
  store ptr %.sink130, ptr %0, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !13
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split, %bb.a, %_ZNK4llvh9StringRef10startswithES0_.exit.thread, %bb.b
  %.0 = phi i32 [ 10, %bb.a ], [ 10, %bb.b ], [ 10, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ %.0.ph, %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh20consumeSignedIntegerERNS_9StringRefEjRx(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %"class.llvh::StringRef", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %.not = icmp eq i8 %i.e, 45
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef i32 @_ZL17GetAutoSenseRadixRN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ %.pre, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %.018.i = phi i32 [ %i.g, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !23 ; 2 uses
  %i.j = zext i32 %.018.i to i64                  ; 2 uses
  %scevgep43 = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.h
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  %.035 = phi i64 [ 0, %bb.f ], [ %i.u, %bb.n ]   ; 6 uses
  %.sroa.0.066.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.f ], [ %i.x, %bb.n ] ; 6 uses
  %.sroa.15.065.i = phi i64 [ %i.h, %bb.f ], [ %i.y, %bb.n ] ; 5 uses
  %i.k = load i8, ptr %.sroa.0.066.i, align 1, !tbaa !15 ; 6 uses
  %i.l = icmp sgt i8 %i.k, 47
  br i1 %i.l, label %bb.h, label %.thread55.i

bb.h:                                             ; preds = %bb.g
  %i.m = icmp samesign ult i8 %i.k, 58
  br i1 %i.m, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp samesign ugt i8 %i.k, 96
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = icmp samesign ult i8 %i.k, 123
  br i1 %i.o, label %bb.l, label %.thread55.i

bb.k:                                             ; preds = %bb.i
  %i.p = add nsw i8 %i.k, -65
  %or.cond.i = icmp ult i8 %i.p, 26
  br i1 %or.cond.i, label %bb.l, label %.thread55.i

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.sink70.i = phi i32 [ -48, %bb.h ], [ -87, %bb.j ], [ -55, %bb.k ]
  %i.q = zext nneg i8 %i.k to i32
  %i.r = add nsw i32 %.sink70.i, %i.q             ; 2 uses
  %.not.i = icmp ult i32 %i.r, %.018.i
  br i1 %.not.i, label %bb.m, label %.thread55.i

bb.m:                                             ; preds = %bb.l
  %i.s = mul i64 %.035, %i.j
  %i.t = zext nneg i32 %i.r to i64
  %i.u = add i64 %i.s, %i.t                       ; 3 uses
  %i.v = udiv i64 %i.u, %i.j
  %i.w = icmp ult i64 %i.v, %.035
  br i1 %i.w, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i, i64 1
  %i.y = add i64 %.sroa.15.065.i, -1              ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.thread55.i, label %bb.g

.thread55.i:                                      ; preds = %bb.n, %bb.l, %bb.k, %bb.j, %bb.g
  %.136 = phi i64 [ %i.u, %bb.n ], [ %.035, %bb.l ], [ %.035, %bb.j ], [ %.035, %bb.k ], [ %.035, %bb.g ] ; 2 uses
  %.sroa.15.0.lcssa.i = phi i64 [ 0, %bb.n ], [ %.sroa.15.065.i, %bb.l ], [ %.sroa.15.065.i, %bb.j ], [ %.sroa.15.065.i, %bb.k ], [ %.sroa.15.065.i, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %scevgep43, %bb.n ], [ %.sroa.0.066.i, %bb.l ], [ %.sroa.0.066.i, %bb.j ], [ %.sroa.0.066.i, %bb.k ], [ %.sroa.0.066.i, %bb.g ]
  %i.aa = icmp eq i64 %i.h, %.sroa.15.0.lcssa.i
  br i1 %i.aa, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit

_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit: ; preds = %.thread55.i
  store ptr %.sroa.0.0.lcssa.i, ptr %0, align 8, !tbaa !23
  store i64 %.sroa.15.0.lcssa.i, ptr %i.a, align 8, !tbaa !13
  %i.ab = icmp slt i64 %.136, 0
  br i1 %i.ab, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit
  store i64 %.136, ptr %2, align 8, !tbaa !31
  br label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ad = add i64 %i.b, -1                        ; 2 uses
  store ptr %i.ac, ptr %3, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = icmp eq i32 %1, 0
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = call fastcc noundef i32 @_ZL17GetAutoSenseRadixRN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %.pr = load i64, ptr %i.ae, align 8, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ah = phi i64 [ %.pr, %bb.q ], [ %i.ad, %bb.p ] ; 4 uses
  %.018.i14 = phi i32 [ %i.ag, %bb.q ], [ %1, %bb.p ] ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i15 = load ptr, ptr %3, align 8, !tbaa !23 ; 2 uses
  %i.aj = zext i32 %.018.i14 to i64               ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0.0.copyload.i15, i64 %i.ah
  br label %bb.t

bb.t:                                             ; preds = %bb.aa, %bb.s
  %.3 = phi i64 [ 0, %bb.s ], [ %i.au, %bb.aa ]   ; 6 uses
  %.sroa.0.066.i16 = phi ptr [ %.sroa.0.0.copyload.i15, %bb.s ], [ %i.ax, %bb.aa ] ; 6 uses
  %.sroa.15.065.i17 = phi i64 [ %i.ah, %bb.s ], [ %i.ay, %bb.aa ] ; 5 uses
  %i.ak = load i8, ptr %.sroa.0.066.i16, align 1, !tbaa !15 ; 6 uses
  %i.al = icmp sgt i8 %i.ak, 47
  br i1 %i.al, label %bb.u, label %.thread55.i18

bb.u:                                             ; preds = %bb.t
  %i.am = icmp samesign ult i8 %i.ak, 58
  br i1 %i.am, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = icmp samesign ugt i8 %i.ak, 96
  br i1 %i.an, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ao = icmp samesign ult i8 %i.ak, 123
  br i1 %i.ao, label %bb.y, label %.thread55.i18

bb.x:                                             ; preds = %bb.v
  %i.ap = add nsw i8 %i.ak, -65
  %or.cond.i22 = icmp ult i8 %i.ap, 26
  br i1 %or.cond.i22, label %bb.y, label %.thread55.i18

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.sink70.i23 = phi i32 [ -48, %bb.u ], [ -87, %bb.w ], [ -55, %bb.x ]
  %i.aq = zext nneg i8 %i.ak to i32
  %i.ar = add nsw i32 %.sink70.i23, %i.aq         ; 2 uses
  %.not.i24 = icmp ult i32 %i.ar, %.018.i14
  br i1 %.not.i24, label %bb.z, label %.thread55.i18

bb.z:                                             ; preds = %bb.y
  %i.as = mul i64 %.3, %i.aj
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = add i64 %i.as, %i.at                    ; 3 uses
  %i.av = udiv i64 %i.au, %i.aj
  %i.aw = icmp ult i64 %i.av, %.3
  br i1 %i.aw, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i16, i64 1
  %i.ay = add i64 %.sroa.15.065.i17, -1           ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.thread55.i18, label %bb.t

.thread55.i18:                                    ; preds = %bb.aa, %bb.y, %bb.x, %bb.w, %bb.t
  %.4 = phi i64 [ %i.au, %bb.aa ], [ %.3, %bb.y ], [ %.3, %bb.w ], [ %.3, %bb.x ], [ %.3, %bb.t ] ; 2 uses
  %.sroa.15.0.lcssa.i19 = phi i64 [ 0, %bb.aa ], [ %.sroa.15.065.i17, %bb.y ], [ %.sroa.15.065.i17, %bb.w ], [ %.sroa.15.065.i17, %bb.x ], [ %.sroa.15.065.i17, %bb.t ] ; 2 uses
  %.sroa.0.0.lcssa.i20 = phi ptr [ %scevgep, %bb.aa ], [ %.sroa.0.066.i16, %bb.y ], [ %.sroa.0.066.i16, %bb.w ], [ %.sroa.0.066.i16, %bb.x ], [ %.sroa.0.066.i16, %bb.t ]
  %i.ba = icmp eq i64 %i.ah, %.sroa.15.0.lcssa.i19
  br i1 %i.ba, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25.thread, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25

_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25: ; preds = %.thread55.i18
  store ptr %.sroa.0.0.lcssa.i20, ptr %3, align 8, !tbaa !23
  store i64 %.sroa.15.0.lcssa.i19, ptr %i.ae, align 8, !tbaa !13
  %i.bb = icmp ugt i64 %.4, -9223372036854775808
  br i1 %i.bb, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !24
  %i.bc = sub i64 0, %.4
  store i64 %i.bc, ptr %2, align 8, !tbaa !31
  br label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25.thread

_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25.thread: ; preds = %bb.z, %.thread55.i18, %bb.r, %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25, %bb.ab
  %.0 = phi i1 [ false, %bb.ab ], [ true, %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25 ], [ true, %bb.r ], [ true, %.thread55.i18 ], [ true, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread

_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread: ; preds = %bb.m, %.thread55.i, %bb.e, %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit, %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25.thread, %bb.o
  %.1 = phi i1 [ %.0, %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit25.thread ], [ false, %bb.o ], [ true, %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit ], [ true, %bb.e ], [ true, %.thread55.i ], [ true, %bb.m ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %0, i64 %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %"class.llvh::StringRef", align 8   ; 4 uses
  store ptr %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc noundef i32 @_ZL17GetAutoSenseRadixRN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %.pr = load i64, ptr %i.a, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i64 [ %.pr, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.018.i = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %3, align 8, !tbaa !31
  %i.f = zext i32 %.018.i to i64                  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %.sroa.0.066.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.d ], [ %i.t, %bb.l ] ; 2 uses
  %.sroa.15.065.i = phi i64 [ %i.d, %bb.d ], [ %i.u, %bb.l ]
  %.sroa.15.065.i.a = phi i64 [ 0, %bb.d ], [ %i.q, %bb.l ] ; 2 uses
  %i.g = load i8, ptr %.sroa.0.066.i, align 1, !tbaa !15 ; 6 uses
  %i.h = icmp sgt i8 %i.g, 47
  br i1 %i.h, label %bb.f, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ult i8 %i.g, 58
  br i1 %i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = icmp samesign ugt i8 %i.g, 96
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = icmp samesign ult i8 %i.g, 123
  br i1 %i.k, label %bb.j, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.l = add nsw i8 %i.g, -65
  %or.cond.i = icmp ult i8 %i.l, 26
  br i1 %or.cond.i, label %bb.j, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.sink70.i = phi i32 [ -48, %bb.f ], [ -87, %bb.h ], [ -55, %bb.i ]
  %i.m = zext nneg i8 %i.g to i32
  %i.n = add nsw i32 %.sink70.i, %i.m             ; 2 uses
  %.not.i = icmp ult i32 %i.n, %.018.i
  br i1 %.not.i, label %bb.k, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.o = mul i64 %.sroa.15.065.i.a, %i.f
  %i.p = zext nneg i32 %i.n to i64
  %i.q = add i64 %i.o, %i.p                       ; 3 uses
  store i64 %i.q, ptr %3, align 8, !tbaa !31
  %i.r = udiv i64 %i.q, %i.f
  %i.s = icmp ult i64 %i.r, %.sroa.15.065.i.a
  br i1 %i.s, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.066.i, i64 1
  %i.u = add i64 %.sroa.15.065.i, -1              ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread, label %bb.e

_ZN4llvh22consumeUnsignedIntegerERNS_9StringRefEjRy.exit.thread: ; preds = %bb.k, %bb.e, %bb.h, %bb.i, %bb.j, %bb.l, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ true, %bb.k ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.e ], [ true, %bb.h ], [ false, %bb.l ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh18getAsSignedIntegerENS_9StringRefEjRx(ptr %0, i64 %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  store ptr %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4llvh20consumeSignedIntegerERNS_9StringRefEjRx(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp ne i64 %i.c, 0
  %.0 = select i1 %i.b, i1 true, i1 %i.d
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh9StringRef12getAsIntegerEjRNS_5APIntE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 10 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc noundef i32 @_ZL17GetAutoSenseRadixRN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.035 = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.promoted = load ptr, ptr %3, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.pr = phi i64 [ %i.d, %.preheader ], [ %i.i, %bb.e ] ; 4 uses
  %.promoted100 = phi ptr [ %.promoted, %.preheader ], [ %i.h, %bb.e ] ; 4 uses
  %i.f = load i8, ptr %.promoted100, align 1, !tbaa !15
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.promoted100, i64 1
  %i.i = add i64 %.pr, -1                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.d, !llvm.loop !62

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !66
  %i.m = icmp ult i32 %i.l, 65
  br i1 %i.m, label %_ZN4llvh5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh5APIntD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #20
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.h, %bb.g, %bb.f
  store i64 0, ptr %2, align 8
  store i32 64, ptr %i.k, align 8, !tbaa !66
  br label %bb.ak

.critedge:                                        ; preds = %bb.d, %.critedge
  %.038 = phi i32 [ %i.r, %.critedge ], [ 0, %bb.d ] ; 6 uses
  %i.p = shl nuw i32 1, %.038                     ; 2 uses
  %i.q = icmp ult i32 %i.p, %.035
  %i.r = add i32 %.038, 1
  br i1 %i.q, label %.critedge, label %bb.i, !llvm.loop !63

bb.i:                                             ; preds = %.critedge
  %i.s = icmp eq i32 %i.p, %.035                  ; 2 uses
  %i.t = trunc i64 %.pr to i32
  %i.u = mul i32 %.038, %i.t                      ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !66   ; 5 uses
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp ugt i32 %i.u, %i.w
  br i1 %i.y, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNK4llvh5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %i.u) #18
  %i.z = load i32, ptr %i.v, align 8, !tbaa !66
  %i.aa = icmp ult i32 %i.z, 65
  br i1 %i.aa, label %_ZN4llvh5APIntD2Ev.exit52, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN4llvh5APIntD2Ev.exit52, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #20
  br label %_ZN4llvh5APIntD2Ev.exit52

_ZN4llvh5APIntD2Ev.exit52:                        ; preds = %bb.m, %bb.l, %bb.k
  %i.ad = load i64, ptr %4, align 8
  store i64 %i.ad, ptr %2, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !66 ; 2 uses
  store i32 %i.af, ptr %i.v, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %_ZN4llvh5APIntD2Ev.exit52
  %i.ag = phi i32 [ %i.w, %bb.j ], [ %i.af, %_ZN4llvh5APIntD2Ev.exit52 ], [ %i.w, %bb.i ]
  %.037 = phi i32 [ %i.u, %bb.j ], [ %i.u, %_ZN4llvh5APIntD2Ev.exit52 ], [ %i.w, %bb.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !66
  store i64 0, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 1, ptr %i.ai, align 8, !tbaa !66
  store i64 0, ptr %6, align 8, !tbaa !15
  br i1 %i.s, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.aj = zext i32 %.035 to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 %.037, ptr %i.ak, align 8, !tbaa !66
  %i.al = icmp ult i32 %.037, 65
  br i1 %i.al, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i55, label %bb.p

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i55:       ; preds = %bb.o
  %i.am = sub nsw i32 0, %.037
  %i.an = and i32 %i.am, 63
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = lshr i64 -1, %i.ao
  %i.aq = and i64 %i.ap, %i.aj                    ; 2 uses
  store i64 %i.aq, ptr %7, align 8, !tbaa !15
  store i64 %i.aq, ptr %5, align 8
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !66
  store i32 %i.ar, ptr %i.ah, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.037, ptr %i.as, align 8, !tbaa !66
  store i64 0, ptr %8, align 8, !tbaa !15
  br label %_ZN4llvh5APIntD2Ev.exit58

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %7, i64 noundef %i.aj, i1 noundef zeroext false) #18
  %i.at = load i64, ptr %7, align 8
  store i64 %i.at, ptr %5, align 8
  %i.au = load i32, ptr %i.ak, align 8, !tbaa !66
  store i32 %i.au, ptr %i.ah, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.037, ptr %i.av, align 8, !tbaa !66
  call void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef 0, i1 noundef zeroext false) #18
  br label %_ZN4llvh5APIntD2Ev.exit58

_ZN4llvh5APIntD2Ev.exit58:                        ; preds = %bb.p, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i55
  %i.aw = phi ptr [ %i.as, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i55 ], [ %i.av, %bb.p ] ; 2 uses
  %i.ax = load i64, ptr %8, align 8
  store i64 %i.ax, ptr %6, align 8
  %i.ay = load i32, ptr %i.aw, align 8, !tbaa !66 ; 2 uses
  store i32 %i.ay, ptr %i.ai, align 8, !tbaa !66
  store i32 0, ptr %i.aw, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pre = load i32, ptr %i.v, align 8, !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit58, %bb.n
  %i.az = phi i32 [ %i.ay, %_ZN4llvh5APIntD2Ev.exit58 ], [ 1, %bb.n ] ; 5 uses
  %i.ba = phi i32 [ %.pre, %_ZN4llvh5APIntD2Ev.exit58 ], [ %i.ag, %bb.n ] ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 65
  br i1 %i.bb, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i59, label %bb.r

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i59:       ; preds = %bb.q
  store i64 0, ptr %2, align 8, !tbaa !15
  br label %.lr.ph
end_hunk_1
