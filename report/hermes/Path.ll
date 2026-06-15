inline.NumInlined: 1790
inline.NumDeleted: 565
begin_hunk_0_@_ZN4llvh15SmallVectorImplIcE4swapERS1_:bb.a
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %0, align 8, !tbaa !53
  store ptr %i.b, ptr %1, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !3
  %i.k = load i32, ptr %i.i, align 8, !tbaa !3
  store i32 %i.k, ptr %i.h, align 8, !tbaa !3
  store i32 %i.j, ptr %i.i, align 8, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3
  store i32 %i.n, ptr %i.m, align 4, !tbaa !3
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !38   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !39
  %i.t = icmp ugt i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %i.q to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c, i64 noundef %i.u, i64 noundef 1) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !38   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !39
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = zext i32 %i.w to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef 1) #30
  %.pre = load i32, ptr %i.v, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi i32 [ %.pre, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !38  ; 2 uses
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.ad) ; 8 uses
  %spec.select = zext i32 %i.ae to i64            ; 6 uses
  %.not46 = icmp eq i32 %i.ae, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %xtraiter = and i64 %spec.select, 1
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03847.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.be, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod61 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.03847.epil.init ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.03847.epil.init ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !12
  store i8 %i.al, ptr %i.ah, align 1, !tbaa !12
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !12
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.pre48 = load i32, ptr %i.v, align 8, !tbaa !38
  %.pre49 = load i32, ptr %i.p, align 8, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.am = phi i32 [ %.pre49, %._crit_edge.loopexit ], [ %i.ad, %bb.i ] ; 7 uses
  %i.an = phi i32 [ %.pre48, %._crit_edge.loopexit ], [ %i.ac, %bb.i ] ; 7 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = zext i32 %i.am to i64                   ; 2 uses
  %i.aq = icmp ugt i32 %i.an, %i.am
  br i1 %i.aq, label %bb.j, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03847 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.be, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.03847 ; 2 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.03847 ; 2 uses
  %i.av = load i8, ptr %i.as, align 1, !tbaa !12
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !12
  store i8 %i.aw, ptr %i.as, align 1, !tbaa !12
  store i8 %i.av, ptr %i.au, align 1, !tbaa !12
  %i.ax = or disjoint i64 %.03847, 1              ; 2 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax ; 2 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax ; 2 uses
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !12
  store i8 %i.bd, ptr %i.az, align 1, !tbaa !12
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !12
  %i.be = add nuw nsw i64 %.03847, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !54

bb.j:                                             ; preds = %._crit_edge
  %i.bf = sub nuw i32 %i.an, %i.am
  %.not.i = icmp eq i32 %i.ae, %i.an
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIccEEvPT_S4_PT0_PNSt9enable_ifIXsr3std7is_sameINSt12remove_constIS3_E4typeES5_EE5valueEvE4typeE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %0, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %spec.select
  %i.bi = load ptr, ptr %1, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ap
  %gepdiff44 = sub nsw i64 %i.ao, %spec.select
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bh, i64 %gepdiff44, i1 false)
  %.pre51 = load i32, ptr %i.p, align 8, !tbaa !38
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIccEEvPT_S4_PT0_PNSt9enable_ifIXsr3std7is_sameINSt12remove_constIS3_E4typeES5_EE5valueEvE4typeE.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIccEEvPT_S4_PT0_PNSt9enable_ifIXsr3std7is_sameINSt12remove_constIS3_E4typeES5_EE5valueEvE4typeE.exit: ; preds = %bb.j, %bb.k
  %i.bk = phi i32 [ %i.am, %bb.j ], [ %.pre51, %bb.k ]
  %i.bl = add i32 %i.bf, %i.bk
  store i32 %i.bl, ptr %i.p, align 8, !tbaa !38
  store i32 %i.ae, ptr %i.v, align 8, !tbaa !38
  br label %bb.o

bb.l:                                             ; preds = %._crit_edge
  %i.bm = icmp ugt i32 %i.am, %i.an
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = sub nuw i32 %i.am, %i.an
  %.not.i42 = icmp eq i32 %i.ae, %i.am
  br i1 %.not.i42, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIccEEvPT_S4_PT0_PNSt9enable_ifIXsr3std7is_sameINSt12remove_constIS3_E4typeES5_EE5valueEvE4typeE.exit43, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %1, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %spec.select
  %i.bq = load ptr, ptr %0, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ao
  %gepdiff = sub nsw i64 %i.ap, %spec.select
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bp, i64 %gepdiff, i1 false)
  %.pre50 = load i32, ptr %i.v, align 8, !tbaa !38
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIccEEvPT_S4_PT0_PNSt9enable_ifIXsr3std7is_sameINSt12remove_constIS3_E4typeES5_EE5valueEvE4typeE.exit43

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIccEEvPT_S4_PT0_PNSt9enable_ifIXsr3std7is_sameINSt12remove_constIS3_E4typeES5_EE5valueEvE4typeE.exit43: ; preds = %bb.m, %bb.n
  %i.bs = phi i32 [ %i.an, %bb.m ], [ %.pre50, %bb.n ]
  %i.bt = add i32 %i.bn, %i.bs
  store i32 %i.bt, ptr %i.v, align 8, !tbaa !38
  store i32 %i.ae, ptr %i.p, align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIccEEvPT_S4_PT0_PNSt9enable_ifIXsr3std7is_sameINSt12remove_constIS3_E4typeES5_EE5valueEvE4typeE.exit, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE18uninitialized_copyIccEEvPT_S4_PT0_PNSt9enable_ifIXsr3std7is_sameINSt12remove_constIS3_E4typeES5_EE5valueEvE4typeE.exit43, %bb.l, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys4path6nativeERKNS_5TwineERNS_15SmallVectorImplIcEENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) initializes((8, 12)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !38
  tail call void @_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  tail call void @_ZN4llvh3sys4path6nativeERNS_15SmallVectorImplIcEENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
  ret void
}

declare void @_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys4path6nativeERNS_15SmallVectorImplIcEENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.c = load ptr, ptr %0, align 8, !tbaa !36     ; 45 uses
  %i.d = zext i32 %i.b to i64                     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 3 uses
  br i1 %.not, label %iter.check, label %.lr.ph

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i32 %i.b, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.d, 24
  %n.vec = and i64 %i.d, 4294967264               ; 4 uses
  %i.f = getelementptr i8, ptr %i.c, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue143, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue143 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %index ; 3 uses
  %i.g = getelementptr i8, ptr %i.c, i64 %index
  %next.gep50.a = getelementptr i8, ptr %i.g, i64 1
  %i.h = getelementptr i8, ptr %i.c, i64 %index
  %next.gep51.a = getelementptr i8, ptr %i.h, i64 2
  %i.i = getelementptr i8, ptr %i.c, i64 %index
  %next.gep52.a = getelementptr i8, ptr %i.i, i64 3
  %i.j = getelementptr i8, ptr %i.c, i64 %index
  %next.gep53.a = getelementptr i8, ptr %i.j, i64 4
  %i.k = getelementptr i8, ptr %i.c, i64 %index
  %next.gep54.a = getelementptr i8, ptr %i.k, i64 5
  %i.l = getelementptr i8, ptr %i.c, i64 %index
  %next.gep55.a = getelementptr i8, ptr %i.l, i64 6
  %i.m = getelementptr i8, ptr %i.c, i64 %index
  %next.gep56.a = getelementptr i8, ptr %i.m, i64 7
  %i.n = getelementptr i8, ptr %i.c, i64 %index
  %next.gep57.a = getelementptr i8, ptr %i.n, i64 8
  %i.o = getelementptr i8, ptr %i.c, i64 %index
  %next.gep58.a = getelementptr i8, ptr %i.o, i64 9
  %i.p = getelementptr i8, ptr %i.c, i64 %index
  %next.gep59.a = getelementptr i8, ptr %i.p, i64 10
  %i.q = getelementptr i8, ptr %i.c, i64 %index
  %next.gep60.a = getelementptr i8, ptr %i.q, i64 11
  %i.r = getelementptr i8, ptr %i.c, i64 %index
  %next.gep61.a = getelementptr i8, ptr %i.r, i64 12
  %i.s = getelementptr i8, ptr %i.c, i64 %index
  %next.gep62.a = getelementptr i8, ptr %i.s, i64 13
  %i.t = getelementptr i8, ptr %i.c, i64 %index
  %next.gep63.a = getelementptr i8, ptr %i.t, i64 14
  %i.u = getelementptr i8, ptr %i.c, i64 %index
  %next.gep64.a = getelementptr i8, ptr %i.u, i64 15
  %i.v = getelementptr i8, ptr %i.c, i64 %index
  %next.gep65.a = getelementptr i8, ptr %i.v, i64 16
  %i.w = getelementptr i8, ptr %i.c, i64 %index
  %next.gep66.a = getelementptr i8, ptr %i.w, i64 17
  %i.x = getelementptr i8, ptr %i.c, i64 %index
  %next.gep67.a = getelementptr i8, ptr %i.x, i64 18
  %i.y = getelementptr i8, ptr %i.c, i64 %index
  %next.gep68.a = getelementptr i8, ptr %i.y, i64 19
  %i.z = getelementptr i8, ptr %i.c, i64 %index
  %next.gep69.a = getelementptr i8, ptr %i.z, i64 20
  %i.aa = getelementptr i8, ptr %i.c, i64 %index
  %next.gep70.a = getelementptr i8, ptr %i.aa, i64 21
  %i.ab = getelementptr i8, ptr %i.c, i64 %index
  %next.gep71.a = getelementptr i8, ptr %i.ab, i64 22
  %i.ac = getelementptr i8, ptr %i.c, i64 %index
  %next.gep72.a = getelementptr i8, ptr %i.ac, i64 23
  %i.ad = getelementptr i8, ptr %i.c, i64 %index
  %next.gep73.a = getelementptr i8, ptr %i.ad, i64 24
  %i.ae = getelementptr i8, ptr %i.c, i64 %index
  %next.gep74.a = getelementptr i8, ptr %i.ae, i64 25
  %i.af = getelementptr i8, ptr %i.c, i64 %index
  %next.gep75.a = getelementptr i8, ptr %i.af, i64 26
  %i.ag = getelementptr i8, ptr %i.c, i64 %index
  %next.gep76.a = getelementptr i8, ptr %i.ag, i64 27
  %i.ah = getelementptr i8, ptr %i.c, i64 %index
  %next.gep77.a = getelementptr i8, ptr %i.ah, i64 28
  %i.ai = getelementptr i8, ptr %i.c, i64 %index
  %next.gep78.a = getelementptr i8, ptr %i.ai, i64 29
  %i.aj = getelementptr i8, ptr %i.c, i64 %index
  %next.gep79 = getelementptr i8, ptr %i.aj, i64 30
  %i.ak = getelementptr i8, ptr %i.c, i64 %index
  %next.gep80 = getelementptr i8, ptr %i.ak, i64 31
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12
  %wide.load81 = load <16 x i8>, ptr %i.al, align 1, !tbaa !12
  %i.am = icmp eq <16 x i8> %wide.load, splat (i8 47) ; 16 uses
  %i.an = icmp eq <16 x i8> %wide.load81, splat (i8 47) ; 16 uses
  %i.ao = extractelement <16 x i1> %i.am, i64 0
  br i1 %i.ao, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 92, ptr %next.gep, align 1, !tbaa !12
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ap = extractelement <16 x i1> %i.am, i64 1
  br i1 %i.ap, label %pred.store.if82.a, label %pred.store.continue83.a

pred.store.if82.a:                                ; preds = %pred.store.continue
  store i8 92, ptr %next.gep50.a, align 1, !tbaa !12
  br label %pred.store.continue83.a

pred.store.continue83.a:                          ; preds = %pred.store.if82.a, %pred.store.continue
  %i.aq = extractelement <16 x i1> %i.am, i64 2
  br i1 %i.aq, label %pred.store.if84.a, label %pred.store.continue85.a

pred.store.if84.a:                                ; preds = %pred.store.continue83.a
  store i8 92, ptr %next.gep51.a, align 1, !tbaa !12
  br label %pred.store.continue85.a

pred.store.continue85.a:                          ; preds = %pred.store.if84.a, %pred.store.continue83.a
  %i.ar = extractelement <16 x i1> %i.am, i64 3
  br i1 %i.ar, label %pred.store.if86.a, label %pred.store.continue87.a

pred.store.if86.a:                                ; preds = %pred.store.continue85.a
  store i8 92, ptr %next.gep52.a, align 1, !tbaa !12
  br label %pred.store.continue87.a

pred.store.continue87.a:                          ; preds = %pred.store.if86.a, %pred.store.continue85.a
  %i.as = extractelement <16 x i1> %i.am, i64 4
  br i1 %i.as, label %pred.store.if88.a, label %pred.store.continue89.a

pred.store.if88.a:                                ; preds = %pred.store.continue87.a
  store i8 92, ptr %next.gep53.a, align 1, !tbaa !12
  br label %pred.store.continue89.a

pred.store.continue89.a:                          ; preds = %pred.store.if88.a, %pred.store.continue87.a
  %i.at = extractelement <16 x i1> %i.am, i64 5
  br i1 %i.at, label %pred.store.if90.a, label %pred.store.continue91.a

pred.store.if90.a:                                ; preds = %pred.store.continue89.a
  store i8 92, ptr %next.gep54.a, align 1, !tbaa !12
  br label %pred.store.continue91.a

pred.store.continue91.a:                          ; preds = %pred.store.if90.a, %pred.store.continue89.a
  %i.au = extractelement <16 x i1> %i.am, i64 6
  br i1 %i.au, label %pred.store.if92.a, label %pred.store.continue93.a

pred.store.if92.a:                                ; preds = %pred.store.continue91.a
  store i8 92, ptr %next.gep55.a, align 1, !tbaa !12
  br label %pred.store.continue93.a

pred.store.continue93.a:                          ; preds = %pred.store.if92.a, %pred.store.continue91.a
  %i.av = extractelement <16 x i1> %i.am, i64 7
  br i1 %i.av, label %pred.store.if94.a, label %pred.store.continue95.a

pred.store.if94.a:                                ; preds = %pred.store.continue93.a
  store i8 92, ptr %next.gep56.a, align 1, !tbaa !12
  br label %pred.store.continue95.a

pred.store.continue95.a:                          ; preds = %pred.store.if94.a, %pred.store.continue93.a
  %i.aw = extractelement <16 x i1> %i.am, i64 8
  br i1 %i.aw, label %pred.store.if96.a, label %pred.store.continue97.a

pred.store.if96.a:                                ; preds = %pred.store.continue95.a
  store i8 92, ptr %next.gep57.a, align 1, !tbaa !12
  br label %pred.store.continue97.a

pred.store.continue97.a:                          ; preds = %pred.store.if96.a, %pred.store.continue95.a
  %i.ax = extractelement <16 x i1> %i.am, i64 9
  br i1 %i.ax, label %pred.store.if98.a, label %pred.store.continue99.a

pred.store.if98.a:                                ; preds = %pred.store.continue97.a
  store i8 92, ptr %next.gep58.a, align 1, !tbaa !12
  br label %pred.store.continue99.a

pred.store.continue99.a:                          ; preds = %pred.store.if98.a, %pred.store.continue97.a
  %i.ay = extractelement <16 x i1> %i.am, i64 10
  br i1 %i.ay, label %pred.store.if100.a, label %pred.store.continue101.a

pred.store.if100.a:                               ; preds = %pred.store.continue99.a
  store i8 92, ptr %next.gep59.a, align 1, !tbaa !12
  br label %pred.store.continue101.a

pred.store.continue101.a:                         ; preds = %pred.store.if100.a, %pred.store.continue99.a
  %i.az = extractelement <16 x i1> %i.am, i64 11
  br i1 %i.az, label %pred.store.if102.a, label %pred.store.continue103.a

pred.store.if102.a:                               ; preds = %pred.store.continue101.a
  store i8 92, ptr %next.gep60.a, align 1, !tbaa !12
  br label %pred.store.continue103.a

pred.store.continue103.a:                         ; preds = %pred.store.if102.a, %pred.store.continue101.a
  %i.ba = extractelement <16 x i1> %i.am, i64 12
  br i1 %i.ba, label %pred.store.if104.a, label %pred.store.continue105.a

pred.store.if104.a:                               ; preds = %pred.store.continue103.a
  store i8 92, ptr %next.gep61.a, align 1, !tbaa !12
  br label %pred.store.continue105.a

pred.store.continue105.a:                         ; preds = %pred.store.if104.a, %pred.store.continue103.a
end_hunk_0
begin_hunk_1_@_ZN4llvh3sys4path6nativeERNS_15SmallVectorImplIcEENS1_5StyleE:bb.a

pred.store.if158.a:                               ; preds = %pred.store.continue157.a
  store i8 92, ptr %next.gep148.a, align 1, !tbaa !12
  br label %pred.store.continue159.a

pred.store.continue159.a:                         ; preds = %pred.store.if158.a, %pred.store.continue157.a
  %i.cg = extractelement <8 x i1> %i.cd, i64 2
  br i1 %i.cg, label %pred.store.if160.a, label %pred.store.continue161.a

pred.store.if160.a:                               ; preds = %pred.store.continue159.a
  store i8 92, ptr %next.gep149.a, align 1, !tbaa !12
  br label %pred.store.continue161.a

pred.store.continue161.a:                         ; preds = %pred.store.if160.a, %pred.store.continue159.a
  %i.ch = extractelement <8 x i1> %i.cd, i64 3
  br i1 %i.ch, label %pred.store.if162.a, label %pred.store.continue163.a

pred.store.if162.a:                               ; preds = %pred.store.continue161.a
  store i8 92, ptr %next.gep150.a, align 1, !tbaa !12
  br label %pred.store.continue163.a

pred.store.continue163.a:                         ; preds = %pred.store.if162.a, %pred.store.continue161.a
  %i.ci = extractelement <8 x i1> %i.cd, i64 4
  br i1 %i.ci, label %pred.store.if164.a, label %pred.store.continue165.a

pred.store.if164.a:                               ; preds = %pred.store.continue163.a
  store i8 92, ptr %next.gep151.a, align 1, !tbaa !12
  br label %pred.store.continue165.a

pred.store.continue165.a:                         ; preds = %pred.store.if164.a, %pred.store.continue163.a
  %i.cj = extractelement <8 x i1> %i.cd, i64 5
  br i1 %i.cj, label %pred.store.if166.a, label %pred.store.continue167.a

pred.store.if166.a:                               ; preds = %pred.store.continue165.a
  store i8 92, ptr %next.gep152.a, align 1, !tbaa !12
  br label %pred.store.continue167.a

pred.store.continue167.a:                         ; preds = %pred.store.if166.a, %pred.store.continue165.a
  %i.ck = extractelement <8 x i1> %i.cd, i64 6
  br i1 %i.ck, label %pred.store.if168.a, label %pred.store.continue169.a

pred.store.if168.a:                               ; preds = %pred.store.continue167.a
  store i8 92, ptr %next.gep153, align 1, !tbaa !12
  br label %pred.store.continue169.a

pred.store.continue169.a:                         ; preds = %pred.store.if168.a, %pred.store.continue167.a
  %i.cl = extractelement <8 x i1> %i.cd, i64 7
  br i1 %i.cl, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169.a
  store i8 92, ptr %next.gep154, align 1, !tbaa !12
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169.a
  %index.next172 = add nuw i64 %index146, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next172, %n.vec145
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !59

vec.epilog.middle.block:                          ; preds = %pred.store.continue171
  %cmp.n173 = icmp eq i64 %n.vec145, %i.d
  br i1 %cmp.n173, label %_ZSt7replaceIPccEvT_S1_RKT0_S4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.08.i = phi ptr [ %i.cp, %bb.d ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cn = load i8, ptr %.08.i, align 1, !tbaa !12
  %i.co = icmp eq i8 %i.cn, 47
  br i1 %i.co, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i8 92, ptr %.08.i, align 1, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  %.not.i24 = icmp eq ptr %i.cp, %i.e
  br i1 %.not.i24, label %_ZSt7replaceIPccEvT_S1_RKT0_S4_.exit, label %.lr.ph.i, !llvm.loop !60

_ZSt7replaceIPccEvT_S1_RKT0_S4_.exit:             ; preds = %bb.d, %vec.epilog.middle.block, %middle.block
  %i.cq = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !12
  %i.cs = icmp eq i8 %i.cr, 126
  br i1 %i.cs, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZSt7replaceIPccEvT_S1_RKT0_S4_.exit
  %i.ct = load i32, ptr %i.a, align 8, !tbaa !38
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !12
  switch i8 %i.cw, label %.loopexit [
    i8 47, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread
    i8 92, label %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread
  ]

_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread: ; preds = %bb.f, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.cx, ptr %2, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i32 128, ptr %i.cz, align 4, !tbaa !39
  %i.da = call ptr @getenv(ptr noundef nonnull @.str.10) #30 ; 2 uses
  %.not.i26 = icmp eq ptr %i.da, null
  br i1 %.not.i26, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread
  %i.db = call i32 @getuid() #30
  %i.dc = call ptr @getpwuid(i32 noundef %i.db) #30 ; 2 uses
  %.not16.i = icmp eq ptr %i.dc, null
  br i1 %.not16.i, label %_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !61 ; 2 uses
  %.not18.not.i = icmp eq ptr %i.de, null
  br i1 %.not18.not.i, label %_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit, label %..thread.i_crit_edge

..thread.i_crit_edge:                             ; preds = %bb.h
  %.pre = load i32, ptr %i.cz, align 4, !tbaa !39
  %i.df = zext i32 %.pre to i64
  br label %.thread.i

.thread.i:                                        ; preds = %..thread.i_crit_edge, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread
  %i.dg = phi i64 [ %i.df, %..thread.i_crit_edge ], [ 128, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread ]
  %.121.i = phi ptr [ %i.de, %..thread.i_crit_edge ], [ %i.da, %_ZN4llvh3sys4path12is_separatorEcNS1_5StyleE.exit.thread ] ; 2 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !38
  %i.dh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.121.i) #29 ; 5 uses
  %i.di = icmp ugt i64 %i.dh, %i.dg
  br i1 %i.di, label %.thread30.i, label %bb.i

.thread30.i:                                      ; preds = %.thread.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.cx, i64 noundef %i.dh, i64 noundef 1) #30
  %.pre7.pre.i.i = load i32, ptr %i.cy, align 8, !tbaa !38
  %i.dj = zext i32 %.pre7.pre.i.i to i64
  br label %bb.j

bb.i:                                             ; preds = %.thread.i
  %.not.i.i.i = icmp samesign eq i64 %i.dh, 0
  br i1 %.not.i.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread30.i
  %.pre7.i33.i = phi i64 [ %i.dj, %.thread30.i ], [ 0, %bb.i ]
  %i.dk = load ptr, ptr %2, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.pre7.i33.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %.121.i, i64 %i.dh, i1 false)
  %.pre.i.i = load i32, ptr %i.cy, align 8, !tbaa !38
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit.i

_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit.i: ; preds = %bb.j, %bb.i
  %i.dm = phi i32 [ 0, %bb.i ], [ %.pre.i.i, %bb.j ]
  %i.dn = trunc i64 %i.dh to i32
  %i.do = add i32 %i.dm, %i.dn
  store i32 %i.do, ptr %i.cy, align 8, !tbaa !38
  br label %_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit

_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit: ; preds = %bb.g, %bb.h, %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit.i
  %i.dp = load ptr, ptr %0, align 8, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ds = zext i32 %i.dr to i64
  %gepdiff = add nsw i64 %i.ds, -1                ; 4 uses
  %i.dt = load i32, ptr %i.cz, align 4, !tbaa !39
  %i.du = zext i32 %i.dt to i64
  %i.dv = load i32, ptr %i.cy, align 8, !tbaa !38 ; 2 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = sub nsw i64 %i.du, %i.dw
  %i.dy = icmp ugt i64 %gepdiff, %i.dx
  br i1 %i.dy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit
  %i.dz = add nsw i64 %gepdiff, %i.dw
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull %i.cx, i64 noundef %i.dz, i64 noundef 1) #30
  %.pre7.pre.i.i30 = load i32, ptr %i.cy, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit
  %.pre7.i.i = phi i32 [ %.pre7.pre.i.i30, %bb.k ], [ %i.dv, %_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit ] ; 2 uses
  %.not.i.i.i27 = icmp eq i32 %i.dr, 1
  br i1 %.not.i.i.i27, label %_ZN4llvh11SmallStringILj128EE6appendIPcEEvT_S4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = load ptr, ptr %2, align 8, !tbaa !36
  %i.eb = zext i32 %.pre7.i.i to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr nonnull align 1 %i.dq, i64 %gepdiff, i1 false)
  %.pre.i.i28 = load i32, ptr %i.cy, align 8, !tbaa !38
  br label %_ZN4llvh11SmallStringILj128EE6appendIPcEEvT_S4_.exit

_ZN4llvh11SmallStringILj128EE6appendIPcEEvT_S4_.exit: ; preds = %bb.l, %bb.m
  %i.ed = phi i32 [ %.pre7.i.i, %bb.l ], [ %.pre.i.i28, %bb.m ]
  %i.ee = trunc i64 %gepdiff to i32
  %i.ef = add i32 %i.ed, %i.ee                    ; 7 uses
  store i32 %i.ef, ptr %i.cy, align 8, !tbaa !38
  %3 = icmp eq ptr %0, %2
  br i1 %3, label %_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit, label %4

4:                                                ; preds = %_ZN4llvh11SmallStringILj128EE6appendIPcEEvT_S4_.exit
  %5 = zext i32 %i.ef to i64                      ; 2 uses
  %6 = load i32, ptr %i.a, align 8, !tbaa !38     ; 4 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %.not.i31 = icmp ult i32 %6, %i.ef
  br i1 %.not.i31, label %bb.r, label %bb.n

bb.n:                                             ; preds = %4
  %.not29.i = icmp eq i32 %i.ef, 0
  br i1 %.not29.i, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eg = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.eh = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %.not31.i = icmp eq i32 %i.ef, 1
  br i1 %.not31.i, label %bb.q, label %bb.p, !prof !63

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.eh, ptr align 1 %i.eg, i64 %5, i1 false)
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !12
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !12
  br label %.sink.split.i

bb.r:                                             ; preds = %4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !39
  %i.el = icmp ult i32 %i.ek, %i.ef
  br i1 %i.el, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.a, align 8, !tbaa !38
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.em, i64 noundef %5, i64 noundef 1) #30
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i

bb.t:                                             ; preds = %bb.r
  %.not28.i = icmp eq i32 %6, 0
  br i1 %.not28.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.en = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.eo = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %.not32.i = icmp eq i32 %6, 1
  br i1 %.not32.i, label %bb.w, label %bb.v, !prof !63

bb.v:                                             ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.en, i64 %7, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i

bb.w:                                             ; preds = %bb.u
  %i.ep = load i8, ptr %i.en, align 1, !tbaa !12
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !12
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i:             ; preds = %bb.w, %bb.v, %bb.t, %bb.s
  %.022.i = phi i64 [ 0, %bb.s ], [ 0, %bb.t ], [ %7, %bb.v ], [ 1, %bb.w ] ; 4 uses
  %i.eq = load i32, ptr %i.cy, align 8, !tbaa !38
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.022.i, %i.er
  br i1 %.not.i.i, label %.sink.split.i, label %bb.x

bb.x:                                             ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i
  %i.es = load ptr, ptr %2, align 8, !tbaa !36
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %.022.i
  %i.eu = load ptr, ptr %0, align 8, !tbaa !36
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.022.i
  %gepdiff.i = sub nsw i64 %i.er, %.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr align 1 %i.et, i64 %gepdiff.i, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i, %bb.q, %bb.p, %bb.n
  store i32 %i.ef, ptr %i.a, align 8, !tbaa !38
  br label %_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit

_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit:        ; preds = %_ZN4llvh11SmallStringILj128EE6appendIPcEEvT_S4_.exit, %.sink.split.i
  %i.ew = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.cx
  br i1 %i.ex, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit
  call void @free(ptr noundef %i.ew) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %bb.ac
  %.034 = phi ptr [ %i.fe, %bb.ac ], [ %i.c, %bb.b ] ; 5 uses
  %i.ey = load i8, ptr %.034, align 1, !tbaa !12
  %i.ez = icmp eq i8 %i.ey, 92
  br i1 %i.ez, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.lr.ph
  %i.fa = getelementptr inbounds nuw i8, ptr %.034, i64 1 ; 3 uses
  %i.fb = icmp ult ptr %i.fa, %i.e
  br i1 %i.fb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !12
  %i.fd = icmp eq i8 %i.fc, 92
  br i1 %i.fd, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store i8 47, ptr %.034, align 1, !tbaa !12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph
  %.2 = phi ptr [ %.034, %.lr.ph ], [ %.034, %bb.ab ], [ %i.fa, %bb.aa ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.ff = icmp ult ptr %i.fe, %i.e
  br i1 %i.ff, label %.lr.ph, label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %bb.ac, %bb.f, %_ZSt7replaceIPccEvT_S1_RKT0_S4_.exit, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.10) #30 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @getuid() #30
  %i.c = tail call ptr @getpwuid(i32 noundef %i.b) #30 ; 2 uses
  %.not16 = icmp eq ptr %i.c, null
  br i1 %.not16, label %.thread24, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %.not18.not = icmp eq ptr %i.e, null
  br i1 %.not18.not, label %.thread24, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %.121 = phi ptr [ %i.e, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !38
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.121) #29 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = zext i32 %i.i to i64
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %.thread30, label %bb.d

.thread30:                                        ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef 1) #30
  %.pre7.pre.i = load i32, ptr %i.f, align 8, !tbaa !38
  %i.m = zext i32 %.pre7.pre.i to i64
  br label %bb.e

bb.d:                                             ; preds = %.thread
  %.not.i.i = icmp samesign eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit, label %bb.e

bb.e:                                             ; preds = %.thread30, %bb.d
  %.pre7.i33 = phi i64 [ %i.m, %.thread30 ], [ 0, %bb.d ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.pre7.i33
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %.121, i64 %i.g, i1 false)
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !38
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit

_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit: ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ 0, %bb.d ], [ %.pre.i, %bb.e ]
  %i.q = trunc i64 %i.g to i32
  %i.r = add i32 %i.p, %i.q
  store i32 %i.r, ptr %i.f, align 8, !tbaa !38
  br label %.thread24

.thread24:                                        ; preds = %bb.b, %bb.c, %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit
  %.not1822 = phi i1 [ false, %bb.c ], [ true, %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit ], [ false, %bb.b ]
  ret i1 %.not1822
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys4path16convert_to_slashB5cxx11ENS_9StringRefENS1_5StyleE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(address_is_null) %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not6 = icmp eq i32 %3, 0
  br i1 %.not6, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %.not.i.i = icmp eq ptr %1, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !71, !alias.scope !72
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !47, !alias.scope !72
  store i8 0, ptr %i.c, align 8, !tbaa !12, !alias.scope !72
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !72
  store i64 %2, ptr %i.b, align 8, !tbaa !10, !noalias !72
  %i.e = icmp ugt i64 %2, 15
  br i1 %i.e, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #30 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !44, !alias.scope !72
  %i.g = load i64, ptr %i.b, align 8, !tbaa !10, !noalias !72
  store i64 %i.g, ptr %i.c, align 8, !tbaa !12, !alias.scope !72
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.h = phi ptr [ %i.f, %bb.e ], [ %i.c, %bb.d ] ; 2 uses
  switch i64 %2, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !12
  store i8 %i.i, ptr %i.h, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !10, !noalias !72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !47, !alias.scope !72
  %i.l = load ptr, ptr %0, align 8, !tbaa !44, !alias.scope !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !72
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %.not.i = icmp eq ptr %1, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !71, !alias.scope !73
  br i1 %.not.i, label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.thread, label %bb.i

_ZNK4llvh9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !47, !alias.scope !73
  store i8 0, ptr %i.n, align 8, !tbaa !12, !alias.scope !73
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !73
  store i64 %2, ptr %i.a, align 8, !tbaa !10, !noalias !73
  %i.p = icmp ugt i64 %2, 15
  br i1 %i.p, label %bb.j, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !44, !alias.scope !73
  %i.r = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !73
  store i64 %i.r, ptr %i.n, align 8, !tbaa !12, !alias.scope !73
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.j, %bb.i
  %i.s = phi ptr [ %i.q, %bb.j ], [ %i.n, %bb.i ] ; 2 uses
  switch i64 %2, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %1, align 1, !tbaa !12
  store i8 %i.t, ptr %i.s, align 1, !tbaa !12
end_hunk_1
begin_hunk_2_@_ZN4llvh3sys4path11remove_dotsERNS_15SmallVectorImplIcEEbNS1_5StyleE:bb.a
  %i.cu = load ptr, ptr %6, align 8, !tbaa !13, !noalias !99
  %i.cv = icmp ne ptr %i.cu, %i.k
  %i.cw = load i64, ptr %.sroa.058.sroa.7.0..sroa_idx108.i, align 8, !noalias !99
  %i.cx = icmp ne i64 %i.cw, %i.l
  %.not3.i.i = select i1 %i.cv, i1 true, i1 %i.cx
  br i1 %.not3.i.i, label %.lr.ph.split.i, label %._crit_edge.loopexit.i

bb.n:                                             ; preds = %bb.n, %.lr.ph91.i
  %.090.i = phi ptr [ %i.bm, %.lr.ph91.i ], [ %i.cy, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.090.i, i64 16, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !99
  store i8 5, ptr %i.bq, align 8, !tbaa !40, !noalias !99
  store i8 1, ptr %i.br, align 1, !tbaa !43, !noalias !99
  store ptr %8, ptr %9, align 8, !tbaa !12, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !99
  store i16 257, ptr %i.bs, align 8, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30, !noalias !99
  store i16 257, ptr %i.bt, align 8, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30, !noalias !99
  store i16 257, ptr %i.bu, align 8, !noalias !99
  call void @_ZN4llvh3sys4path6appendERNS_15SmallVectorImplIcEENS1_5StyleERKNS_5TwineES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(18) %9, ptr noundef nonnull align 8 dereferenceable(18) %10, ptr noundef nonnull align 8 dereferenceable(18) %11, ptr noundef nonnull align 8 dereferenceable(18) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !99
  %i.cy = getelementptr inbounds nuw i8, ptr %.090.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.cy, %i.bp
  br i1 %.not.i, label %._crit_edge92.loopexit.i, label %bb.n

._crit_edge92.loopexit.i:                         ; preds = %bb.n
  %.pre96.i = load ptr, ptr %5, align 8, !tbaa !36, !noalias !99
  br label %._crit_edge92.i

._crit_edge92.i:                                  ; preds = %._crit_edge92.loopexit.i, %_ZN4llvh11SmallStringILj256EEC2ENS_9StringRefE.exit.i
  %i.cz = phi ptr [ %.pre96.i, %._crit_edge92.loopexit.i ], [ %i.bm, %_ZN4llvh11SmallStringILj256EEC2ENS_9StringRefE.exit.i ] ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.f
  br i1 %i.da, label %_ZN4llvh3sys4pathL11remove_dotsENS_9StringRefEbNS1_5StyleE.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge92.i
  call void @free(ptr noundef %i.cz) #30
  br label %_ZN4llvh3sys4pathL11remove_dotsENS_9StringRefEbNS1_5StyleE.exit

_ZN4llvh3sys4pathL11remove_dotsENS_9StringRefEbNS1_5StyleE.exit: ; preds = %._crit_edge92.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.db = load i32, ptr %i.bd, align 8, !tbaa !38 ; 3 uses
  %i.dc = load i32, ptr %i.b, align 8, !tbaa !38
  %.not.i6 = icmp eq i32 %i.db, %i.dc
  br i1 %.not.i6, label %bb.p, label %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread9

bb.p:                                             ; preds = %_ZN4llvh3sys4pathL11remove_dotsENS_9StringRefEbNS1_5StyleE.exit
  %.not.not.i.i.i.i.i = icmp eq i32 %i.db, 0
  %.pre12 = load ptr, ptr %13, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.not.i.i.i.i.i, label %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread, label %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit

_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit:       ; preds = %bb.p
  %i.dd = zext i32 %i.db to i64
  %i.de = load ptr, ptr %0, align 8, !tbaa !36
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %.pre12, ptr %i.de, i64 %i.dd)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread, label %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread9

_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread9: ; preds = %_ZN4llvh3sys4pathL11remove_dotsENS_9StringRefEbNS1_5StyleE.exit, %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit
  call void @_ZN4llvh15SmallVectorImplIcE4swapERS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %13)
  %.pre = load ptr, ptr %13, align 8, !tbaa !36
  br label %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread

_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread: ; preds = %bb.p, %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit, %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread9
  %i.df = phi ptr [ %.pre, %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread9 ], [ %.pre12, %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit ], [ %.pre12, %bb.p ] ; 2 uses
  %.0 = phi i1 [ true, %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread9 ], [ false, %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit ], [ false, %bb.p ]
  %i.dg = icmp eq ptr %i.df, %i.bc
  br i1 %i.dg, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread
  call void @free(ptr noundef %i.df) #30
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit:          ; preds = %_ZNK4llvh15SmallVectorImplIcEeqERKS1_.exit.thread, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs11getUniqueIDENS_5TwineERNS1_8UniqueIDE(ptr noundef nonnull byval(%"class.llvh::Twine") align 8 %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = call noundef i32 @stat(ptr noundef %i.e, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = load <2 x i64>, ptr %3, align 16, !tbaa !10
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.k, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  %i.l = phi <2 x i64> [ %i.j, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ zeroinitializer, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.m = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.m) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  store <2 x i64> %i.l, ptr %1, align 8, !tbaa !10
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.d
  %.sroa.4.0 = phi ptr [ %i.o, %bb.d ], [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0.i, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %stat.lstat = select i1 %2, ptr @stat, ptr @lstat
  %i.f = call noundef i32 %stat.lstat(ptr noundef %i.e, ptr noundef nonnull %4) #30, !callees !106
  %i.g = call fastcc { i32, ptr } @_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE(i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.h = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.h) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret { i32, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i64, i64 } @_ZNK4llvh3sys2fs11file_status11getUniqueIDEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !113
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.d, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs16createUniqueFileERKNS_5TwineERiRNS_15SmallVectorImplIcEEj(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc { i32, ptr } @_ZL18createUniqueEntityRKN4llvh5TwineERiRNS_15SmallVectorImplIcEEbj8FSEntityNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, i32 noundef %3, i32 noundef 1, i32 noundef 0)
  ret { i32, ptr } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, ptr } @_ZL18createUniqueEntityRKN4llvh5TwineERiRNS_15SmallVectorImplIcEEbj8FSEntityNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef range(i32 0, 3) %5, i32 noundef range(i32 0, 5) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %8 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %9 = alloca %"class.llvh::SmallString.11", align 8 ; 17 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::SmallString.11", align 8 ; 10 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 4 uses
  %16 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.a, ptr %9, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  call void @_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  br i1 %3, label %bb.b, label %19

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 6, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 1, ptr %i.e, align 1, !tbaa !43
  store ptr %9, ptr %10, align 8, !tbaa !12
  %i.f = call noundef zeroext i1 @_ZN4llvh3sys4path11is_absoluteERKNS_5TwineENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(18) %10, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br i1 %i.f, label %19, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.g, ptr %11, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 128, ptr %i.i, align 4, !tbaa !39
  call void @_ZN4llvh3sys4path21system_temp_directoryEbRNS_15SmallVectorImplIcEE(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 6, ptr %i.j, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 1, ptr %i.k, align 1, !tbaa !43
  store ptr %9, ptr %12, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i16 257, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i16 257, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i16 257, ptr %i.n, align 8
  call void @_ZN4llvh3sys4path6appendERNS_15SmallVectorImplIcEENS1_5StyleERKNS_5TwineES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(18) %12, ptr noundef nonnull align 8 dereferenceable(18) %13, ptr noundef nonnull align 8 dereferenceable(18) %14, ptr noundef nonnull align 8 dereferenceable(18) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN4llvh15SmallVectorImplIcE4swapERS1_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %11)
  %i.o = load ptr, ptr %11, align 8, !tbaa !36    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.o) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %19

19:                                               ; preds = %bb.b, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, %bb.a
  %20 = icmp eq ptr %2, %9
  br i1 %20, label %._ZN4llvh15SmallVectorImplIcEaSERKS1_.exit_crit_edge, label %bb.e

._ZN4llvh15SmallVectorImplIcEaSERKS1_.exit_crit_edge: ; preds = %19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit

bb.e:                                             ; preds = %19
  %i.q = load i32, ptr %i.b, align 8, !tbaa !38   ; 7 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !38   ; 4 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.not.i = icmp ult i32 %i.t, %i.q
  br i1 %.not.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not29.i = icmp eq i32 %i.q, 0
  br i1 %.not29.i, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %9, align 8, !tbaa !36     ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %.not31.i = icmp eq i32 %i.q, 1
  br i1 %.not31.i, label %bb.i, label %bb.h, !prof !63

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.v, i64 %i.r, i1 false)
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.x = load i8, ptr %i.v, align 1, !tbaa !12
  store i8 %i.x, ptr %i.w, align 1, !tbaa !12
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !39
  %i.aa = icmp ult i32 %i.z, %i.q
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.s, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ab, i64 noundef %i.r, i64 noundef 1) #30
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i

bb.l:                                             ; preds = %bb.j
  %.not28.i = icmp eq i32 %i.t, 0
  br i1 %.not28.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %.not32.i = icmp eq i32 %i.t, 1
  br i1 %.not32.i, label %bb.o, label %bb.n, !prof !63

bb.n:                                             ; preds = %bb.m
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ac, i64 %i.u, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i

bb.o:                                             ; preds = %bb.m
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !12
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !12
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i:             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.022.i = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.u, %bb.n ], [ 1, %bb.o ] ; 4 uses
  %i.af = load i32, ptr %i.b, align 8, !tbaa !38
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.022.i, %i.ag
  br i1 %.not.i.i, label %.sink.split.i, label %bb.p

bb.p:                                             ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i
  %i.ah = load ptr, ptr %9, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.022.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.022.i
  %gepdiff.i = sub nsw i64 %i.ag, %.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ai, i64 %gepdiff.i, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i, %bb.i, %bb.h, %bb.f
  store i32 %i.q, ptr %i.s, align 8, !tbaa !38
  br label %_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit

_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit:        ; preds = %._ZN4llvh15SmallVectorImplIcEaSERKS1_.exit_crit_edge, %.sink.split.i
  %21 = phi i32 [ %.pre, %._ZN4llvh15SmallVectorImplIcEaSERKS1_.exit_crit_edge ], [ %i.q, %.sink.split.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39
  %.not.i31 = icmp ult i32 %21, %i.am
  br i1 %.not.i31, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.q, !prof !49

bb.q:                                             ; preds = %_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.an, i64 noundef 0, i64 noundef 1) #30
  %.pre.i = load i32, ptr %22, align 8, !tbaa !38
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit, %bb.q
  %23 = phi i32 [ %.pre.i, %bb.q ], [ %21, %_ZN4llvh15SmallVectorImplIcEaSERKS1_.exit ]
  %i.ao = load ptr, ptr %2, align 8, !tbaa !36
  %24 = zext i32 %23 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %24
  store i8 0, ptr %i.ap, align 1
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 17
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 17
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 17
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %.critedge
  %.086 = phi i32 [ 128, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ %i.dg, %.critedge ] ; 2 uses
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %.not84 = icmp eq i32 %i.bd, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.be = zext i32 %i.bd to i64
  %.pre89.a = load ptr, ptr %9, align 8, !tbaa !36
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %bb.r
  switch i32 %5, label %default.unreachable104 [
    i32 1, label %bb.u
    i32 2, label %bb.y
    i32 0, label %bb.ae
  ]

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %i.bf = phi ptr [ %.pre89.a, %.lr.ph.preheader ], [ %i.bq, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !12
  %i.bi = icmp eq i8 %i.bh, 37
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.bj = call noundef i32 @_ZN4llvh3sys7Process15GetRandomNumberEv() #30
  %i.bk = and i32 %i.bj, 15
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @.str.12, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = load ptr, ptr %2, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !12
  %.pre88 = load ptr, ptr %9, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.s
  %i.bq = phi ptr [ %i.bf, %.lr.ph ], [ %.pre88, %bb.s ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.be
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !114

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.br = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  store i8 1, ptr %i.bb, align 8, !tbaa !40
  store i8 1, ptr %i.bc, align 1, !tbaa !43
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !12
  %.not.i32 = icmp eq i8 %i.bs, 0
  br i1 %.not.i32, label %_ZN4llvh5TwineC2EPKc.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.br, ptr %16, align 8, !tbaa !12
  br label %_ZN4llvh5TwineC2EPKc.exit

_ZN4llvh5TwineC2EPKc.exit:                        ; preds = %bb.u, %bb.v
  %storemerge.i = phi i8 [ 3, %bb.v ], [ 1, %bb.u ]
  store i8 %storemerge.i, ptr %i.bb, align 8, !tbaa !40
  %i.bt = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %16, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 1, i32 noundef 3, i32 noundef %6, i32 noundef %4) ; 2 uses
  %i.bu = extractvalue { i32, ptr } %i.bt, 0      ; 4 uses
  %i.bv = extractvalue { i32, ptr } %i.bt, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %.not83 = icmp eq i32 %i.bu, 0
  br i1 %.not83, label %.critedge30, label %bb.w

bb.w:                                             ; preds = %_ZN4llvh5TwineC2EPKc.exit
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.bx = icmp eq ptr %i.bv, %i.bw                ; 2 uses
  %i.by = icmp eq i32 %i.bu, 17
  %i.bz = and i1 %i.by, %i.bx
  br i1 %i.bz, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = icmp eq i32 %i.bu, 13
  %i.cb = and i1 %i.ca, %i.bx
  br i1 %i.cb, label %.critedge, label %.critedge30

bb.y:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.cc = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  store i8 1, ptr %i.aw, align 8, !tbaa !40
  store i8 1, ptr %i.ax, align 1, !tbaa !43
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !12
  %.not.i34 = icmp eq i8 %i.cd, 0
  br i1 %.not.i34, label %_ZN4llvh5TwineC2EPKc.exit36, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.cc, ptr %17, align 8, !tbaa !12
  br label %_ZN4llvh5TwineC2EPKc.exit36

_ZN4llvh5TwineC2EPKc.exit36:                      ; preds = %bb.y, %bb.z
  %storemerge.i35 = phi i8 [ 3, %bb.z ], [ 1, %bb.y ]
  store i8 %storemerge.i35, ptr %i.aw, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ay, ptr %8, align 8, !tbaa !36
  store i32 0, ptr %i.az, align 8, !tbaa !38
  store i32 128, ptr %i.ba, align 4, !tbaa !39
  %i.ce = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %17, ptr noundef nonnull align 8 dereferenceable(16) %8) #30
  %i.cf = extractvalue { ptr, i64 } %i.ce, 0
  %i.cg = call i32 @access(ptr noundef %i.cf, i32 noundef 0) #30
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvh5TwineC2EPKc.exit36
  %i.ci = tail call ptr @__errno_location() #31
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh5TwineC2EPKc.exit36, %bb.aa
  %.sroa.05.1.i = phi i32 [ %i.cj, %bb.aa ], [ 0, %_ZN4llvh5TwineC2EPKc.exit36 ] ; 3 uses
  %.sroa.56.1.i = phi ptr [ %i.ck, %bb.aa ], [ %i.aq, %_ZN4llvh5TwineC2EPKc.exit36 ] ; 3 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ay
  br i1 %i.cm, label %_ZN4llvh3sys2fs6accessERKNS_5TwineENS1_10AccessModeE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.cl) #30
  br label %_ZN4llvh3sys2fs6accessERKNS_5TwineENS1_10AccessModeE.exit

_ZN4llvh3sys2fs6accessERKNS_5TwineENS1_10AccessModeE.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.co = icmp eq ptr %.sroa.56.1.i, %i.cn
  %i.cp = icmp eq i32 %.sroa.05.1.i, 2
  %i.cq = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %i.cq, label %.critedge30, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvh3sys2fs6accessERKNS_5TwineENS1_10AccessModeE.exit
  %.not82 = icmp eq i32 %.sroa.05.1.i, 0
  br i1 %.not82, label %.critedge, label %.critedge30

bb.ae:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.cr = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  store i8 1, ptr %i.ar, align 8, !tbaa !40
  store i8 1, ptr %i.as, align 1, !tbaa !43
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !12
  %.not.i38 = icmp eq i8 %i.cs, 0
  br i1 %.not.i38, label %_ZN4llvh5TwineC2EPKc.exit40, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.cr, ptr %18, align 8, !tbaa !12
  br label %_ZN4llvh5TwineC2EPKc.exit40

_ZN4llvh5TwineC2EPKc.exit40:                      ; preds = %bb.ae, %bb.af
  %storemerge.i39 = phi i8 [ 3, %bb.af ], [ 1, %bb.ae ]
  store i8 %storemerge.i39, ptr %i.ar, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.at, ptr %7, align 8, !tbaa !36
  store i32 0, ptr %i.au, align 8, !tbaa !38
  store i32 128, ptr %i.av, align 4, !tbaa !39
  %i.ct = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %18, ptr noundef nonnull align 8 dereferenceable(16) %7) #30
  %i.cu = extractvalue { ptr, i64 } %i.ct, 0
  %i.cv = call i32 @mkdir(ptr noundef %i.cu, i32 noundef 504) #30
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4llvh5TwineC2EPKc.exit40
  %i.cx = tail call ptr @__errno_location() #31
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvh5TwineC2EPKc.exit40, %bb.ag
  %.sroa.03.0.i = phi i32 [ %i.cy, %bb.ag ], [ 0, %_ZN4llvh5TwineC2EPKc.exit40 ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %i.cz, %bb.ag ], [ %i.aq, %_ZN4llvh5TwineC2EPKc.exit40 ] ; 3 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.at
  br i1 %i.db, label %_ZN4llvh3sys2fs16create_directoryERKNS_5TwineEbNS1_5permsE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.da) #30
  br label %_ZN4llvh3sys2fs16create_directoryERKNS_5TwineEbNS1_5permsE.exit

_ZN4llvh3sys2fs16create_directoryERKNS_5TwineEbNS1_5permsE.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %.not81 = icmp eq i32 %.sroa.03.0.i, 0
  br i1 %.not81, label %.critedge30, label %bb.aj

end_hunk_2
begin_hunk_3_@_ZN4llvh3sys2fs15is_regular_fileERKNS_5TwineERb:bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !152
  %i.l = and i32 %i.k, 61440
  %switch.selectcmp = icmp eq i32 %i.l, 32768
  %switch.select = zext i1 %switch.selectcmp to i8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.10.0 = phi i8 [ %switch.select, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.m, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.n) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  store i8 %.sroa.10.0, ptr %1, align 1, !tbaa !143
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.d
  %.sroa.4.0 = phi ptr [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %i.p, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0.i, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs15is_symlink_fileERKNS1_17basic_file_statusE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = icmp eq i32 %i.b, 4
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs15is_symlink_fileERKNS_5TwineERb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = call noundef i32 @lstat(ptr noundef %i.e, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !152
  %i.l = and i32 %i.k, 61440
  %switch.selectcmp = icmp eq i32 %i.l, 40960
  %switch.select = zext i1 %switch.selectcmp to i8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.10.0 = phi i8 [ %switch.select, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.m, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.n) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  store i8 %.sroa.10.0, ptr %1, align 1, !tbaa !143
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.d
  %.sroa.4.0 = phi ptr [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %i.p, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0.i, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs8is_otherERKNS1_17basic_file_statusE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %spec.select = icmp ugt i32 %i.b, 3
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs8is_otherERKNS_5TwineERb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = call noundef i32 @stat(ptr noundef %i.e, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !152
  %i.l = and i32 %i.k, 61440
  %i.m = add nsw i32 %i.l, -4096
  %i.n = lshr exact i32 %i.m, 12
  %i.o = add nsw i32 %i.n, -3
  %switch.and = and i32 %i.o, -5
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  %i.p = zext i1 %switch.selectcmp to i8
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.10.0 = phi i8 [ %i.p, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.q, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.r = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.r) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  store i8 %.sroa.10.0, ptr %1, align 1, !tbaa !143
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.d
  %.sroa.4.0 = phi ptr [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %i.t, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0.i, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs15directory_entry16replace_filenameERKNS_5TwineENS1_9file_typeENS1_17basic_file_statusE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef %2, ptr nofree noundef readonly byval(%"class.llvh::sys::fs::basic_file_status") align 8 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvh::SmallString.11", align 8 ; 11 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = tail call fastcc noundef i64 @_ZN12_GLOBAL__N_115parent_path_endEN4llvh9StringRefENS0_3sys4path5StyleE(ptr %i.b, i64 %i.d, i32 noundef 2) ; 2 uses
  %i.f = icmp eq i64 %i.e, -1                     ; 2 uses
  %.sroa.speculated9.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %.sroa.4.0.i = select i1 %i.f, i64 0, i64 %.sroa.speculated9.i ; 5 uses
  %.sroa.07.0.i = select i1 %i.f, ptr null, ptr %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 128, ptr %i.i, align 4, !tbaa !39
  %i.j = icmp ugt i64 %.sroa.4.0.i, 128
  br i1 %i.j, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull %i.g, i64 noundef %.sroa.4.0.i, i64 noundef 1) #30
  %.pre7.pre.i.i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %i.k = zext i32 %.pre7.pre.i.i.i to i64
  %.pre = load ptr, ptr %4, align 8, !tbaa !36
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp samesign eq i64 %.sroa.4.0.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.l = phi ptr [ %.pre, %.thread.i ], [ %i.g, %bb.b ]
  %.pre7.i.i4.i = phi i64 [ %i.k, %.thread.i ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.pre7.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %.sroa.07.0.i, i64 %.sroa.4.0.i, i1 false)
  %.pre.i.i.i = load i32, ptr %i.h, align 8, !tbaa !38
  br label %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit

_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ 0, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.o = trunc i64 %.sroa.4.0.i to i32
  %i.p = add i32 %i.n, %i.o
  store i32 %i.p, ptr %i.h, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 257, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 257, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 257, ptr %i.s, align 8
  call void @_ZN4llvh3sys4path6appendERNS_15SmallVectorImplIcEENS1_5StyleERKNS_5TwineES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(18) %5, ptr noundef nonnull align 8 dereferenceable(18) %6, ptr noundef nonnull align 8 dereferenceable(18) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.t = load ptr, ptr %4, align 8, !tbaa !36     ; 3 uses
  %i.u = load i32, ptr %i.h, align 8, !tbaa !38   ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %.not.i.i = icmp eq ptr %i.t, null
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !71, !alias.scope !161
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !47, !alias.scope !161
  store i8 0, ptr %i.w, align 8, !tbaa !12, !alias.scope !161
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.e:                                             ; preds = %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !161
  store i64 %i.v, ptr %i.a, align 8, !tbaa !10, !noalias !161
  %i.y = icmp ugt i32 %i.u, 15
  br i1 %i.y, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.z, ptr %8, align 8, !tbaa !44, !alias.scope !161
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !161
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !12, !alias.scope !161
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %i.z, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  switch i32 %i.u, label %bb.h [
    i32 1, label %bb.g
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load i8, ptr %i.t, align 1, !tbaa !12
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !161 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !47, !alias.scope !161
  %i.af = load ptr, ptr %8, align 8, !tbaa !44, !alias.scope !161
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !161
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !44    ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  %i.ak = load ptr, ptr %8, align 8, !tbaa !44    ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.am = icmp eq ptr %i.ak, %i.al                ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.am, label %bb.i, label %.thread.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.am, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !47 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %.not21.i = icmp eq ptr %8, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %9, !prof !63

9:                                                ; preds = %bb.i
  switch i64 %i.ao, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %9
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !12
  store i8 %i.aq, ptr %i.ah, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ak, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %9
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !47
  %i.as = load ptr, ptr %0, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1, !tbaa !12
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i4:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ak, ptr %0, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.av = load <2 x i64>, ptr %i.au, align 8, !tbaa !12
  store <2 x i64> %i.av, ptr %i.c, align 8, !tbaa !12
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !12
  store ptr %i.ak, ptr %0, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = load <2 x i64>, ptr %i.ax, align 8, !tbaa !12
  store <2 x i64> %i.ay, ptr %i.c, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ah, ptr %8, align 8, !tbaa !44
  store i64 %i.aw, ptr %i.al, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i4
  store ptr %i.al, ptr %8, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %10 = phi ptr [ %i.ah, %bb.l ], [ %i.al, %bb.m ], [ %i.ak, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !47
  store i8 0, ptr %10, align 1, !tbaa !12
  %i.ba = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !12
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.bf, align 8, !tbaa !162
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !164
  %i.bh = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.g
  br i1 %i.bi, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @free(ptr noundef %i.bh) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs14getPermissionsERKNS_5TwineE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::ErrorOr.21") align 8 captures(none) initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = call noundef i32 @stat(ptr noundef %i.e, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !152
  %i.l = and i32 %i.k, 4095
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.12.0 = phi i32 [ %i.l, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 65535, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.m, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.n) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8               ; 2 uses
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.p, align 8
  store i32 %.sroa.025.0.i, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.427.0.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !149
  br label %bb.e

.critedge:                                        ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  %i.s = and i8 %i.q, -2
  store i8 %i.s, ptr %i.p, align 8
  store i32 %.sroa.12.0, ptr %0, align 8, !tbaa !166
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs17getMainExecutableB5cxx11EPKcPv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.c = alloca [4096 x i8], align 16             ; 6 uses
  %5 = alloca %struct.stat, align 8               ; 4 uses
  %i.d = alloca [4096 x i8], align 16             ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca [4096 x i8], align 16             ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %i.i = alloca [4096 x i8], align 16             ; 11 uses
  %7 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr @.str.7, ptr %7, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 14, ptr %i.j, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 5, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.l, align 1, !tbaa !43
  store ptr %7, ptr %8, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.n, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 128, ptr %i.o, align 4, !tbaa !39
  %i.p = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %8, ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = call i32 @access(ptr noundef %i.q, i32 noundef 0) #30
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call ptr @__errno_location() #31
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = icmp eq i32 %i.u, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.05.1.i.i = phi i1 [ %i.v, %bb.b ], [ true, %bb.a ]
  %i.w = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.m
  br i1 %i.x, label %_ZN4llvh3sys2fs6existsERKNS_5TwineE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.w) #30
  br label %_ZN4llvh3sys2fs6existsERKNS_5TwineE.exit

_ZN4llvh3sys2fs6existsERKNS_5TwineE.exit:         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.sroa.05.1.i.i, label %bb.e, label %bb.o

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6existsERKNS_5TwineE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.y = load ptr, ptr %7, align 8, !tbaa !13, !noalias !167 ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.z, ptr %9, align 8, !tbaa !71, !alias.scope !167
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !47, !alias.scope !167
  store i8 0, ptr %i.z, align 8, !tbaa !12, !alias.scope !167
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !19, !noalias !167 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.ac, ptr %9, align 8, !tbaa !71, !alias.scope !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30, !noalias !167
  store i64 %i.ab, ptr %i.h, align 8, !tbaa !10, !noalias !167
  %i.ad = icmp ugt i64 %i.ab, 15
  br i1 %i.ad, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) #30 ; 2 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !44, !alias.scope !167
  %i.af = load i64, ptr %i.h, align 8, !tbaa !10, !noalias !167
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !12, !alias.scope !167
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %i.ag = phi ptr [ %i.ae, %bb.h ], [ %i.ac, %bb.g ] ; 2 uses
  switch i64 %i.ab, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
end_hunk_3
begin_hunk_4_@_ZN4llvh3sys2fs14setPermissionsERKNS_5TwineENS1_5permsE:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  %.sroa.3.0 = phi ptr [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %i.k = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.k) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs32setLastAccessAndModificationTimeEiNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESA_(i32 noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %struct.timespec], align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = sdiv i64 %1, 1000000000
  %i.b = srem i64 %1, 1000000000
  store i64 %i.a, ptr %3, align 16, !tbaa !10
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !10
  %i.c = sdiv i64 %2, 1000000000
  %i.d = srem i64 %2, 1000000000
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.c, ptr %i.e, align 16, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %i.f = call i32 @futimens(i32 noundef %0, ptr noundef nonnull %3) #30
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %.sroa.0.0 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare i32 @futimens(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) initializes((8, 16)) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = select i1 %i.a, i32 1, i32 2
  %i.c = icmp eq i32 %3, 0
  %i.d = select i1 %i.c, i32 1, i32 3
  %i.e = load i64, ptr %0, align 8, !tbaa !187
  %i.f = tail call ptr @mmap(ptr noundef null, i64 noundef %i.e, i32 noundef %i.d, i32 noundef %i.b, i32 noundef %1, i64 noundef %2) #30 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !190
  %i.h = icmp eq ptr %i.f, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__errno_location() #31
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.0.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs18mapped_file_regionC2EiNS2_7mapmodeEmmRSt10error_code(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %5) unnamed_addr #0 align 2 {
bb.a:
  store i64 %3, ptr %0, align 8, !tbaa !187
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8, !tbaa !191
  %i.c = icmp eq i32 %2, 1
  %i.d = select i1 %i.c, i32 1, i32 2
  %i.e = icmp eq i32 %2, 0
  %i.f = select i1 %i.e, i32 1, i32 3
  %i.g = tail call ptr @mmap(ptr noundef null, i64 noundef %3, i32 noundef %i.f, i32 noundef %i.d, i32 noundef %1, i64 noundef %4) #30 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !190
  %i.h = icmp eq ptr %i.g, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE.exit, label %_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE.exit.thread

_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE.exit.thread: ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  store i32 0, ptr %5, align 8, !tbaa !3
  %.sroa.41.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.i, ptr %.sroa.41.0..sroa_idx12, align 8, !tbaa !149
  br label %bb.c

_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE.exit: ; preds = %bb.a
  %i.j = tail call ptr @__errno_location() #31
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  store i32 %i.k, ptr %5, align 8, !tbaa !3
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !149
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE.exit
  store ptr null, ptr %i.a, align 8, !tbaa !190
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE.exit.thread, %bb.b, %_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs18mapped_file_regionD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(20) dereferenceable(20) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !187
  %i.d = tail call i32 @munmap(ptr noundef nonnull %i.b, i64 noundef %i.c) #30 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK4llvh3sys2fs18mapped_file_region4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !187
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK4llvh3sys2fs18mapped_file_region4dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK4llvh3sys2fs18mapped_file_region10const_dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh3sys2fs18mapped_file_region9alignmentEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvh3sys7Process11getPageSizeEv() #30
  ret i32 %i.a
}

declare noundef i32 @_ZN4llvh3sys7Process11getPageSizeEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_constructERNS2_12DirIterStateENS_9StringRefEb(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %0, ptr nofree readonly captures(none) %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvh::SmallString.11", align 8 ; 14 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvh::sys::fs::directory_entry", align 8 ; 19 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = icmp ugt i64 %2, 128
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 1) #30
  %.pre7.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !38
  %i.e = zext i32 %.pre7.pre.i.i.i to i64
  %.pre = load ptr, ptr %4, align 8, !tbaa !36
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.f = phi ptr [ %.pre, %.thread.i ], [ %i.a, %bb.b ]
  %.pre7.i.i4.i = phi i64 [ %i.e, %.thread.i ], [ 0, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.pre7.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !38
  %.pre12 = load i32, ptr %i.c, align 4, !tbaa !39
  br label %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit

_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit: ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ 128, %bb.b ], [ %.pre12, %bb.c ]
  %i.i = phi i32 [ 0, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.j = trunc i64 %2 to i32
  %i.k = add i32 %i.i, %i.j                       ; 3 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !38
  %.not.i.i = icmp ult i32 %i.k, %i.h
  br i1 %.not.i.i, label %_ZN4llvh11SmallStringILj128EE5c_strEv.exit, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 1) #30
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !38
  br label %_ZN4llvh11SmallStringILj128EE5c_strEv.exit

_ZN4llvh11SmallStringILj128EE5c_strEv.exit:       ; preds = %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit, %bb.d
  %i.l = phi i32 [ %.pre.i.i, %bb.d ], [ %i.k, %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit ]
  %i.m = load ptr, ptr %4, align 8, !tbaa !36
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 0, ptr %i.o, align 1
  %i.p = load ptr, ptr %4, align 8, !tbaa !36
  %i.q = call noalias ptr @opendir(ptr noundef %i.p) ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11SmallStringILj128EE5c_strEv.exit
  %i.r = tail call ptr @__errno_location() #31
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.l

bb.f:                                             ; preds = %_ZN4llvh11SmallStringILj128EE5c_strEv.exit
  %i.u = ptrtoint ptr %i.q to i64
  store i64 %i.u, ptr %0, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.w, align 1, !tbaa !43
  store ptr @.str.2, ptr %5, align 8, !tbaa !12
  store i8 3, ptr %i.v, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 257, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 257, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i16 257, ptr %i.z, align 8
  call void @_ZN4llvh3sys4path6appendERNS_15SmallVectorImplIcEENS1_5StyleERKNS_5TwineES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(18) %5, ptr noundef nonnull align 8 dereferenceable(18) %6, ptr noundef nonnull align 8 dereferenceable(18) %7, ptr noundef nonnull align 8 dereferenceable(18) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.aa = load ptr, ptr %4, align 8, !tbaa !36
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !38
  %i.ac = zext i32 %i.ab to i64
  store ptr %i.aa, ptr %11, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 5, ptr %i.ae, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 1, ptr %i.af, align 1, !tbaa !43
  store ptr %11, ptr %10, align 8, !tbaa !12
  %i.ag = zext i1 %3 to i8
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(18) %10) #30
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i32 9, ptr %i.ah, align 8, !tbaa !162
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i8 %i.ag, ptr %i.ai, align 4, !tbaa !194
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aj, i8 0, i64 36, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 76
  store i32 65535, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !166
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  %i.ao = load ptr, ptr %9, align 8, !tbaa !44    ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap                ; 2 uses
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  br i1 %i.aq, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  br i1 %i.aq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %.not21.i.i = icmp eq ptr %9, %i.ak
  br i1 %.not21.i.i, label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit, label %12, !prof !63

12:                                               ; preds = %bb.g
  switch i64 %i.as, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %12
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !12
  store i8 %i.au, ptr %i.al, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ao, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %12
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !47
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !12
  %.pre.i.i8 = load ptr, ptr %9, align 8, !tbaa !44
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bb = load <2 x i64>, ptr %i.ba, align 8, !tbaa !12
  store <2 x i64> %i.bb, ptr %i.az, align 8, !tbaa !12
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bc = load i64, ptr %i.am, align 8, !tbaa !12
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !12
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !12
  %.not.i.i7 = icmp eq ptr %i.al, null
  br i1 %.not.i.i7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.al, ptr %9, align 8, !tbaa !44
  store i64 %i.bc, ptr %i.ap, align 8, !tbaa !12
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ap, ptr %9, align 8, !tbaa !44
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit

_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit:     ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.j, %bb.k
  %13 = phi ptr [ %i.al, %bb.j ], [ %i.ap, %bb.k ], [ %i.ao, %bb.g ], [ %.pre.i.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !47
  store i8 0, ptr %13, align 1, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false)
  %i.bi = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN4llvh3sys2fs15directory_entryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !12
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #33
  br label %_ZN4llvh3sys2fs15directory_entryD2Ev.exit

_ZN4llvh3sys2fs15directory_entryD2Ev.exit:        ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.bn = call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_incrementERNS2_12DirIterStateE(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bo = extractvalue { i32, ptr } %i.bn, 0
  %i.bp = extractvalue { i32, ptr } %i.bn, 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvh3sys2fs15directory_entryD2Ev.exit, %bb.e
  %.sroa.09.0 = phi i32 [ %i.s, %bb.e ], [ %i.bo, %_ZN4llvh3sys2fs15directory_entryD2Ev.exit ]
  %.sroa.310.0 = phi ptr [ %i.t, %bb.e ], [ %i.bp, %_ZN4llvh3sys2fs15directory_entryD2Ev.exit ]
  %i.bq = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.a
  br i1 %i.br, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.bq) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.310.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_incrementERNS2_12DirIterStateE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvh::sys::fs::directory_entry", align 8 ; 12 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::sys::fs::basic_file_status", align 8 ; 3 uses
  %i.a = tail call ptr @__errno_location() #31    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.c = load i64, ptr %0, align 8, !tbaa !192
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @readdir(ptr noundef %i.d) #30 ; 2 uses
  %cond24 = icmp eq ptr %i.e, null
  br i1 %cond24, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %.critedge, %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.h = insertvalue { i32, ptr } poison, i32 %i.f, 0
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.i = phi ptr [ %i.u, %.critedge ], [ %i.e, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 19 ; 4 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !13
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #29 ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !19
  switch i64 %i.k, label %.thread [
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.l = load i8, ptr %i.j, align 1, !tbaa !12
  %i.m = icmp eq i8 %i.l, 46
  br i1 %i.m, label %.critedge, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.n = load i8, ptr %i.j, align 1, !tbaa !12
  %i.o = icmp eq i8 %i.n, 46
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %i.r = icmp eq i8 %i.q, 46
  br i1 %i.r, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.s = load i64, ptr %0, align 8, !tbaa !192
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call ptr @readdir(ptr noundef %i.t) #30 ; 2 uses
  %cond = icmp eq ptr %i.u, null
  br i1 %cond, label %tailrecurse._crit_edge, label %.lr.ph

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 5, ptr %i.w, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.x, align 1, !tbaa !43
  store ptr %2, ptr %3, align 8, !tbaa !12
  %i.y = getelementptr i8, ptr %i.i, i64 18
  %.val = load i8, ptr %i.y, align 2, !tbaa !195
  %i.z = zext i8 %.val to i32
  %i.aa = shl nuw nsw i32 %i.z, 12
  %i.ab = and i32 %i.aa, 61440
  %i.ac = add nsw i32 %i.ab, -4096                ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 49152
  br i1 %i.ad, label %switch.lookup, label %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit

switch.lookup:                                    ; preds = %.thread
  %i.ae = lshr exact i32 %i.ac, 12
  %i.af = zext nneg i32 %i.ae to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvh3sys2fs15directory_entry6statusEv, i64 %i.af
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit

_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit:       ; preds = %.thread, %switch.lookup
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 9, %.thread ]
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  store i32 65535, ptr %i.ag, align 4, !tbaa !198
  call void @_ZN4llvh3sys2fs15directory_entry16replace_filenameERKNS_5TwineENS1_9file_typeENS1_17basic_file_statusE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef %.0.i.i, ptr noundef nonnull byval(%"class.llvh::sys::fs::basic_file_status") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.h

bb.f:                                             ; preds = %tailrecurse._crit_edge
  %i.ai = load i64, ptr %0, align 8, !tbaa !192   ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = tail call i32 @closedir(ptr noundef nonnull %i.aj) ; 0 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %bb.f
  store i64 0, ptr %0, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i8 0, i64 36, i1 false)
  store i32 65535, ptr %i.ap, align 4, !tbaa !198
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not21.i.i.i = icmp eq ptr %1, %i.aq
  br i1 %.not21.i.i.i, label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, !prof !63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %5 = load ptr, ptr %i.aq, align 8, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %6, align 8, !tbaa !47
  store i8 0, ptr %5, align 1, !tbaa !12
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !44
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i

_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %7 = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  store i64 0, ptr %i.al, align 8, !tbaa !47
  store i8 0, ptr %7, align 1, !tbaa !12
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false)
  %10 = load ptr, ptr %1, align 8, !tbaa !44      ; 2 uses
  %11 = icmp eq ptr %10, %i.an
  br i1 %11, label %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !12
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %10, i64 noundef %i.as) #33
  br label %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit

_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit, %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit, %bb.b
  %.pn = phi { i32, ptr } [ { i32 0, ptr poison }, %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit ], [ %i.h, %bb.b ], [ { i32 0, ptr poison }, %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit ]
  %.pn15 = phi ptr [ %i.at, %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit ], [ %i.g, %bb.b ], [ %i.ah, %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit ]
  %.fca.1.insert.merged = insertvalue { i32, ptr } %.pn, ptr %.pn15, 1
  ret { i32, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvh::sys::fs::directory_entry", align 8 ; 12 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !192    ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 36, i1 false)
  store i32 65535, ptr %i.h, align 4, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not21.i.i = icmp eq ptr %1, %i.i
  br i1 %.not21.i.i, label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, !prof !63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %2 = load ptr, ptr %i.i, align 8, !tbaa !44
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %3, align 8, !tbaa !47
  store i8 0, ptr %2, align 1, !tbaa !12
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !44
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit

_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %4 = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  store i64 0, ptr %i.f, align 8, !tbaa !47
  store i8 0, ptr %4, align 1, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  %7 = load ptr, ptr %1, align 8, !tbaa !44       ; 2 uses
  %8 = icmp eq ptr %7, %i.e
  br i1 %8, label %_ZN4llvh3sys2fs15directory_entryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit
  %i.j = load i64, ptr %i.e, align 8, !tbaa !12
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %7, i64 noundef %i.k) #33
  br label %_ZN4llvh3sys2fs15directory_entryD2Ev.exit

_ZN4llvh3sys2fs15directory_entryD2Ev.exit:        ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  %.fca.1.insert = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %i.l, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @readdir(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh3sys2fs15directory_entry6statusEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::ErrorOr.33") align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 8 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 4, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !43
  store ptr %1, ptr %4, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !194, !range !145, !noundef !146
  %i.e = trunc nuw i8 %i.d to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.h, align 4, !tbaa !39
  %i.i = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %4, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %stat.lstat.i = select i1 %i.e, ptr @stat, ptr @lstat
  %i.k = call noundef i32 %stat.lstat.i(ptr noundef %i.j, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__errno_location() #31
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.o = icmp eq i32 %i.m, 2
  %spec.select = zext i1 %i.o to i32
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %i.r = and i32 %i.q, 4095
  %i.s = and i32 %i.q, 61440
  %i.t = add nsw i32 %i.s, -4096                  ; 2 uses
  %i.u = icmp ult i32 %i.t, 49152
  br i1 %i.u, label %switch.lookup, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i

switch.lookup:                                    ; preds = %bb.c
  %i.v = lshr exact i32 %i.t, 12
  %i.w = zext nneg i32 %i.v to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvh3sys2fs15directory_entry6statusEv, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.c, %switch.lookup
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 9, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !184
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !185
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ac = load <2 x i32>, ptr %i.ab, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !186
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  %i.ag = inttoptr i64 %i.aa to ptr
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.10.0 = phi i64 [ %i.ae, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.11.0 = phi i32 [ %.0.i.i, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %spec.select, %bb.b ]
  %.sroa.13.0 = phi i32 [ %i.r, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 65535, %bb.b ]
  %.sroa.7.0 = phi ptr [ %i.ag, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ null, %bb.b ]
  %.sroa.04.0 = phi i64 [ %i.y, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.af, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.n, %bb.b ]
  %i.ah = phi <2 x i32> [ %i.ac, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ zeroinitializer, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ai = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.ai) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8             ; 2 uses
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  %i.am = or i8 %i.al, 1
  store i8 %i.am, ptr %i.ak, align 8
  store i32 %.sroa.025.0.i, ptr %0, align 8, !tbaa !3
  br label %bb.f

.critedge:                                        ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  %i.an = and i8 %i.al, -2
  store i8 %i.an, ptr %i.ak, align 8
  store i64 %.sroa.04.0, ptr %0, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.ah, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !3
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !10
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !165
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !166
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sroa.427.0.i.sink = phi ptr [ %.sroa.7.0, %.critedge ], [ %.sroa.427.0.i, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.427.0.i.sink, ptr %i.ao, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %switch.selectcmp.i = icmp eq i32 %3, 2
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp26.i = icmp eq i32 %3, 3
  %switch.select27.i = select i1 %switch.selectcmp26.i, i32 2, i32 %switch.select.i ; 4 uses
  %i.a = and i32 %4, 2                            ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  %spec.select24.i = select i1 %.not.i, i32 %2, i32 3
  switch i32 %spec.select24.i, label %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = or disjoint i32 %switch.select27.i, 192
  br label %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = or disjoint i32 %switch.select27.i, 576
  br label %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit

bb.d:                                             ; preds = %bb.a
  %i.d = or disjoint i32 %switch.select27.i, 64
  br label %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit

_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1.i = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %switch.select27.i, %bb.a ]
  %i.e = shl nuw nsw i32 %i.a, 9
  %i.f = shl i32 %4, 16
  %i.g = and i32 %i.f, 524288
  %i.h = or disjoint i32 %i.g, %i.e
  %spec.select25.i = xor i32 %i.h, 524288
  %.3.i = or i32 %.1.i, %spec.select25.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 128, ptr %i.k, align 4, !tbaa !39
  %i.l = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = tail call ptr @__errno_location() #31    ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit
  store i32 0, ptr %i.n, align 4, !tbaa !3
  %i.o = call noundef i32 (ptr, i32, ...) @open(ptr noundef %i.m, i32 noundef %.3.i, i32 noundef %5) #30 ; 3 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit"

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.n, align 4, !tbaa !3
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.e, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread", !llvm.loop !199

"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread": ; preds = %bb.f
  store i32 -1, ptr %1, align 4, !tbaa !3
  br label %bb.g

"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit": ; preds = %bb.e
  store i32 %i.o, ptr %1, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.o, 0
end_hunk_4
begin_hunk_5_@_ZN4llvh3sys2fs18directory_iteratorC2ERKNS_5TwineERSt10error_codeb:_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, ptr } @_ZN4llvh3sys2fsL23remove_directories_implINS1_15directory_entryEEESt10error_codeRKT_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::ErrorOr.33", align 8  ; 11 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #32, !noalias !369 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i32 1, ptr %i.b, align 8, !tbaa !220, !noalias !374
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !222, !noalias !374
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !223, !noalias !374
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false), !noalias !374
  store ptr %i.f, ptr %i.e, align 8, !tbaa !71, !noalias !374
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 36, i1 false), !noalias !374
  store i32 65535, ptr %i.h, align 4, !tbaa !198, !noalias !374
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre6.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !44
  %i.i = tail call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_constructERNS2_12DirIterStateENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr %.pre.i, i64 %.pre6.i, i1 noundef zeroext false) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %.not4962 = icmp eq i64 %i.k, 0
  br i1 %.not4962, label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  br i1 %1, label %.lr.ph.split.us.split, label %.lr.ph.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK4llvh3sys2fs15directory_entry6statusEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr.33") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.e)
  %i.p = load i32, ptr %i.m, align 8, !tbaa !151
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.b, label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.r = call fastcc { i32, ptr } @_ZN4llvh3sys2fsL23remove_directories_implINS1_15directory_entryEEESt10error_codeRKT_b(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i1 noundef zeroext true) ; 0 uses
  br label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us

_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us: ; preds = %bb.b, %.lr.ph.split.us.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i8 4, ptr %i.n, align 8, !tbaa !40
  store i8 1, ptr %i.o, align 1, !tbaa !43
  store ptr %i.e, ptr %3, align 8, !tbaa !12
  %i.s = call { i32, ptr } @_ZN4llvh3sys2fs6removeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(18) %3, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.t = call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_incrementERNS2_12DirIterStateE(ptr noundef nonnull align 8 dereferenceable(88) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.u = load i64, ptr %i.j, align 8, !tbaa !47
  %.not49.us = icmp eq i64 %i.u, 0
  br i1 %.not49.us, label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !375

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK4llvh3sys2fs15directory_entry6statusEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr.33") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.e)
  %i.v = load i8, ptr %i.l, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8, !tbaa !3
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !149
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = load i32, ptr %i.m, align 8, !tbaa !151
  %i.y = icmp eq i32 %i.x, 3
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = call fastcc { i32, ptr } @_ZN4llvh3sys2fsL23remove_directories_implINS1_15directory_entryEEESt10error_codeRKT_b(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i1 noundef zeroext false) ; 2 uses
  %i.aa = extractvalue { i32, ptr } %i.z, 0       ; 2 uses
  %.not50 = icmp eq i32 %i.aa, 0
  br i1 %.not50, label %bb.f, label %.critedge.loopexit.split.loop.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i8 4, ptr %i.n, align 8, !tbaa !40
  store i8 1, ptr %i.o, align 1, !tbaa !43
  store ptr %i.e, ptr %3, align 8, !tbaa !12
  %i.ab = call { i32, ptr } @_ZN4llvh3sys2fs6removeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(18) %3, i1 noundef zeroext true) ; 2 uses
  %i.ac = extractvalue { i32, ptr } %i.ab, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.g, label %.critedge.loopexit.split.loop.exit53

bb.g:                                             ; preds = %bb.f
  %i.ad = call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_incrementERNS2_12DirIterStateE(ptr noundef nonnull align 8 dereferenceable(88) %i.d) ; 2 uses
  %i.ae = extractvalue { i32, ptr } %i.ad, 0      ; 2 uses
  %.not51 = icmp eq i32 %i.ae, 0
  br i1 %.not51, label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit, label %.critedge.loopexit.split.loop.exit56

_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.af = load i64, ptr %i.j, align 8, !tbaa !47
  %.not49 = icmp eq i64 %i.af, 0
  br i1 %.not49, label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit._crit_edge, label %.lr.ph.split, !llvm.loop !375

_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit._crit_edge: ; preds = %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us, %bb.a
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit

.critedge.loopexit.split.loop.exit:               ; preds = %bb.e
  %i.ah = extractvalue { i32, ptr } %i.z, 1
  br label %.critedge

.critedge.loopexit.split.loop.exit53:             ; preds = %bb.f
  %i.ai = extractvalue { i32, ptr } %i.ab, 1
  br label %.critedge

.critedge.loopexit.split.loop.exit56:             ; preds = %bb.g
  %i.aj = extractvalue { i32, ptr } %i.ad, 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit53, %.critedge.loopexit.split.loop.exit56, %bb.c
  %.sroa.046.0 = phi i32 [ %i.ae, %.critedge.loopexit.split.loop.exit56 ], [ %.sroa.0.0.copyload.i, %bb.c ], [ %i.ac, %.critedge.loopexit.split.loop.exit53 ], [ %i.aa, %.critedge.loopexit.split.loop.exit ]
  %.sroa.948.0 = phi ptr [ %i.aj, %.critedge.loopexit.split.loop.exit56 ], [ %.sroa.31.0.copyload.i, %bb.c ], [ %i.ai, %.critedge.loopexit.split.loop.exit53 ], [ %i.ah, %.critedge.loopexit.split.loop.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit

_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit:     ; preds = %.critedge, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit._crit_edge
  %.sroa.046.1 = phi i32 [ %.sroa.046.0, %.critedge ], [ 0, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit._crit_edge ]
  %.sroa.948.1 = phi ptr [ %.sroa.948.0, %.critedge ], [ %i.ag, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit._crit_edge ]
  %i.ak = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit
  store i32 0, ptr %i.b, align 8, !tbaa !220
  store i32 0, ptr %i.c, align 4, !tbaa !222
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30, !inline_history !376
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30, !inline_history !376
  br label %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit27

bb.i:                                             ; preds = %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i.i.i.i24 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = add nsw i32 %i.am, -1
  store i32 %i.au, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

bb.k:                                             ; preds = %bb.i
  %i.av = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i26 = phi i32 [ %i.am, %bb.j ], [ %i.av, %bb.k ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i26, 1
  br i1 %i.aw, label %bb.l, label %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit27, !prof !63

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30
  br label %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit27

_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit27:   ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25, %bb.l
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.046.1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.948.1, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvh::sys::fs::directory_entry", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call i32 @closedir(ptr noundef nonnull %i.c) ; 0 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.b, %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.f, ptr %1, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 36, i1 false)
  store i32 65535, ptr %i.h, align 4, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not21.i.i.i.i.i = icmp eq ptr %1, %i.i
  br i1 %.not21.i.i.i.i.i, label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i, !prof !63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %2 = load ptr, ptr %i.i, align 8, !tbaa !44
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %3, align 8, !tbaa !47
  store i8 0, ptr %2, align 1, !tbaa !12
  %.pre.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !44
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i.i.i

_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %4 = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  store i64 0, ptr %i.e, align 8, !tbaa !47
  store i8 0, ptr %4, align 1, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  %7 = load ptr, ptr %1, align 8, !tbaa !44       ; 2 uses
  %8 = icmp eq ptr %7, %i.f
  br i1 %8, label %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i.i.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !12
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %7, i64 noundef %i.l) #33
  br label %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit.i.i

_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit.i.i: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %_ZSt8_DestroyIN4llvh3sys2fs6detail12DirIterStateEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit.i.i
  %i.o = load i64, ptr %i.j, align 8, !tbaa !12
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #33
  br label %_ZSt8_DestroyIN4llvh3sys2fs6detail12DirIterStateEEvPT_.exit

_ZSt8_DestroyIN4llvh3sys2fs6detail12DirIterStateEEvPT_.exit: ; preds = %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !223
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !377
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !223
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !377
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { builtin nounwind allocsize(0) }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!14, !8, i64 0}
!14 = !{!"_ZTSN4llvh9StringRefE", !8, i64 0, !11, i64 8}
!15 = !{!16, !11, i64 32}
!16 = !{!"_ZTSN4llvh3sys4path14const_iteratorE", !14, i64 0, !14, i64 16, !11, i64 32, !17, i64 40}
!17 = !{!"_ZTSN4llvh3sys4path5StyleE", !5, i64 0}
!18 = !{!16, !17, i64 40}
!19 = !{!14, !11, i64 8}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !11, i64 32}
!23 = !{!"_ZTSN4llvh3sys4path16reverse_iteratorE", !14, i64 0, !14, i64 16, !11, i64 32, !17, i64 40}
!24 = !{!23, !17, i64 40}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !21}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE: argument 0"}
!29 = distinct !{!29, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE: argument 0"}
!32 = distinct !{!32, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE: argument 0"}
!35 = distinct !{!35, !"_ZN4llvh3sys4path5beginENS_9StringRefENS1_5StyleE"}
!36 = !{!37, !9, i64 0}
!37 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!38 = !{!37, !4, i64 8}
!39 = !{!37, !4, i64 12}
!40 = !{!41, !42, i64 16}
!41 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !42, i64 16, !42, i64 17}
!42 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!43 = !{!41, !42, i64 17}
!44 = !{!45, !8, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0, !11, i64 8, !5, i64 16}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!47 = !{!45, !11, i64 8}
!48 = !{!"branch_weights", !"expected", i32 2145694973, i32 1788675}
!49 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!53 = !{!9, !9, i64 0}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21, !56, !57}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"branch_weights", i32 8, i32 24}
!59 = distinct !{!59, !21, !56, !57}
end_hunk_5
