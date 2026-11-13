Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COBJMeshFileLoader?download=true
inline.NumInlined: 1741
inline.NumDeleted: 697
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5scene5SMesh22recalculateBoundingBoxEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %.not11 = icmp eq ptr %i.b, %i.d
  br i1 %.not11, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit
  %i.k = trunc nuw i8 %.1 to i1
  br i1 %i.k, label %bb.ab, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit
  %.013 = phi i8 [ 0, %.lr.ph ], [ %.1, %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit ] ; 2 uses
  %.sroa.08.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.bs, %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.08.012, align 8, !tbaa !137 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load float, ptr %i.p, align 4, !tbaa !98
  %i.s = load float, ptr %i.q, align 4, !tbaa !98 ; 7 uses
  %i.t = fsub float %i.r, %i.s
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t)
  %i.v = fcmp ugt float %i.u, f0x358637BD
  br i1 %i.v, label %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load float, ptr %i.y, align 4, !tbaa !99
  %i.aa = fsub float %i.x, %i.z
  %i.ab = tail call noundef float @llvm.fabs.f32(float %i.aa)
  %i.ac = fcmp ugt float %i.ab, f0x358637BD
  br i1 %i.ac, label %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread, label %_ZNK4core8aabbox3dIfE7isEmptyEv.exit

_ZNK4core8aabbox3dIfE7isEmptyEv.exit:             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ag = load float, ptr %i.af, align 4, !tbaa !55
  %i.ah = fsub float %i.ae, %i.ag
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.ah)
  %i.aj = fcmp ugt float %i.ai, f0x358637BD
  br i1 %i.aj, label %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread, label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread:      ; preds = %bb.b, %bb.c, %_ZNK4core8aabbox3dIfE7isEmptyEv.exit
  %i.ak = trunc nuw i8 %.013 to i1
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !144
  br label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

bb.e:                                             ; preds = %_ZNK4core8aabbox3dIfE7isEmptyEv.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !99 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !55 ; 6 uses
  %i.ap = load float, ptr %i.f, align 4, !tbaa !122 ; 2 uses
  %i.aq = fcmp ogt float %i.s, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.s, ptr %i.f, align 4, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = phi float [ %i.s, %bb.f ], [ %i.ap, %bb.e ]
  %i.as = load float, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.at = fcmp ogt float %i.am, %i.as
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.am, ptr %i.g, align 8, !tbaa !118
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi float [ %i.am, %bb.h ], [ %i.as, %bb.g ]
  %i.av = load float, ptr %i.h, align 4, !tbaa !119 ; 2 uses
  %i.aw = fcmp ogt float %i.ao, %i.av
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.ao, ptr %i.h, align 4, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = phi float [ %i.ao, %bb.j ], [ %i.av, %bb.i ]
  %i.ay = load float, ptr %i.e, align 8, !tbaa !123 ; 2 uses
  %i.az = fcmp olt float %i.s, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.s, ptr %i.e, align 8, !tbaa !123
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi float [ %i.s, %bb.l ], [ %i.ay, %bb.k ]
  %i.bb = load float, ptr %i.i, align 4, !tbaa !120 ; 2 uses
  %i.bc = fcmp olt float %i.am, %i.bb
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.am, ptr %i.i, align 4, !tbaa !120
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = phi float [ %i.am, %bb.n ], [ %i.bb, %bb.m ]
  %i.be = load float, ptr %i.j, align 8, !tbaa !121 ; 2 uses
  %i.bf = fcmp olt float %i.ao, %i.be
  br i1 %i.bf, label %bb.p, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i

bb.p:                                             ; preds = %bb.o
  store float %i.ao, ptr %i.j, align 8, !tbaa !121
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i: ; preds = %bb.p, %bb.o
  %i.bg = phi float [ %i.be, %bb.o ], [ %i.ao, %bb.p ]
  %i.bh = load float, ptr %i.p, align 4, !tbaa !98 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !99 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !55 ; 4 uses
  %i.bm = fcmp ogt float %i.bh, %i.ar
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  store float %i.bh, ptr %i.f, align 4, !tbaa !122
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  %i.bn = fcmp ogt float %i.bj, %i.au
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %i.bj, ptr %i.g, align 8, !tbaa !118
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = fcmp ogt float %i.bl, %i.ax
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %i.bl, ptr %i.h, align 4, !tbaa !119
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bp = fcmp olt float %i.bh, %i.ba
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store float %i.bh, ptr %i.e, align 8, !tbaa !123
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bq = fcmp olt float %i.bj, %i.bd
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store float %i.bj, ptr %i.i, align 4, !tbaa !120
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.br = fcmp olt float %i.bl, %i.bg
  br i1 %i.br, label %bb.aa, label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

bb.aa:                                            ; preds = %bb.z
  store float %i.bl, ptr %i.j, align 8, !tbaa !121
  br label %_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit

_ZN4core8aabbox3dIfE14addInternalBoxERKS1_.exit:  ; preds = %bb.aa, %bb.z, %bb.d, %_ZNK4core8aabbox3dIfE7isEmptyEv.exit
  %.1 = phi i8 [ %.013, %_ZNK4core8aabbox3dIfE7isEmptyEv.exit ], [ 1, %bb.d ], [ 1, %bb.z ], [ 1, %bb.aa ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.bu, align 4, !tbaa !53
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 0.000000e+00, ptr %i.bv, align 4, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i64 12, i1 false), !tbaa.struct !56
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader9readColorEPKcRN5video6SColorES2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 30 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = ptrtoaddr ptr %3 to i64                  ; 6 uses
  %.not11.i.i = icmp eq ptr %1, %3
  br i1 %.not11.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.e
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core7isspaceEi.exit.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.g, %_ZN4core7isspaceEi.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.f = load i8, ptr %.012.i.i, align 1, !tbaa !47
  switch i8 %i.f, label %_ZN4core7isspaceEi.exit.i.i [
    i8 32, label %.critedge.thread.i.i
    i8 13, label %.critedge.thread.i.i
    i8 12, label %.critedge.thread.i.i
    i8 10, label %.critedge.thread.i.i
    i8 9, label %.critedge.thread.i.i
    i8 11, label %.critedge.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i.i:                      ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %3
  br i1 %.not.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.critedge.thread.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.h = ptrtoaddr ptr %.012.i.i to i64
  %i.i = sub i64 %i.c, %i.h
  %scevgep29.i.i.i = getelementptr i8, ptr %.012.i.i, i64 %i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.thread.i.i
  %.118.i.i.i = phi ptr [ %i.k, %bb.b ], [ %.012.i.i, %.critedge.thread.i.i ] ; 3 uses
  %i.j = load i8, ptr %.118.i.i.i, align 1, !tbaa !47
  switch i8 %i.j, label %.preheader.i.i.preheader [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.118.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %3
  br i1 %.not.i.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i: ; preds = %_ZN4core7isspaceEi.exit.i.i, %bb.b, %bb.a
  %.2.i.i.i = phi ptr [ %1, %bb.a ], [ %scevgep29.i.i.i, %bb.b ], [ %scevgep.i.i, %_ZN4core7isspaceEi.exit.i.i ] ; 2 uses
  %.not23.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not23.i.i, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  %.2.i.i.i94 = phi ptr [ %.2.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i ], [ %.118.i.i.i, %.lr.ph.i.i.i ] ; 9 uses
  %.2.i.i.i94122 = ptrtoaddr ptr %.2.i.i.i94 to i64
  br label %.preheader.i.i

bb.c:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.d
  %storemerge.i.i = phi i32 [ %i.p, %bb.d ], [ 0, %.preheader.i.i.preheader ] ; 5 uses
  %i.l = zext i32 %storemerge.i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47
  switch i8 %i.n, label %_ZN4core7isspaceEi.exit.i10.i [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i10.i:                    ; preds = %.preheader.i.i
  %i.o = icmp eq ptr %i.m, %3
  br i1 %i.o, label %_ZN4core7isspaceEi.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i
  %i.p = add i32 %storemerge.i.i, 1
  br label %.preheader.i.i, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i:               ; preds = %_ZN4core7isspaceEi.exit.i10.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %.not30.i.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i8.i

.lr.ph.preheader.i8.i:                            ; preds = %_ZN4core7isspaceEi.exit.thread.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 15)
  %wide.trip.count.i.i = zext nneg i32 %.sroa.speculated.i.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %storemerge.i.i, 8
  %i.q = sub i64 %.2.i.i.i94122, %i.b
  %diff.check = icmp ugt i64 %i.q, -8
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i9.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i8.i
  %n.vec = and i64 %wide.trip.count.i.i, 8        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %index
  %wide.load = load <8 x i8>, ptr %i.r, align 1, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <8 x i8> %wide.load, ptr %i.s, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %.lr.ph.preheader.i8.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i8.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol

.lr.ph.i9.i.prol:                                 ; preds = %.lr.ph.i9.i.preheader, %.lr.ph.i9.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i9.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i9.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i9.i.prol ], [ 0, %.lr.ph.i9.i.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.i.i.prol
  %i.v = load i8, ptr %i.u, align 1, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.prol
  store i8 %i.v, ptr %i.w, align 1, !tbaa !47
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i9.i.prol.loopexit, label %.lr.ph.i9.i.prol, !llvm.loop !261

.lr.ph.i9.i.prol.loopexit:                        ; preds = %.lr.ph.i9.i.prol, %.lr.ph.i9.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i9.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i9.i.prol ]
  %i.x = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %._crit_edge.i.i, label %.lr.ph.i9.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i, %middle.block, %_ZN4core7isspaceEi.exit.thread.i.i
  %.pre-phi.i.i = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i ], [ %wide.trip.count.i.i, %middle.block ], [ %wide.trip.count.i.i, %.lr.ph.i9.i ], [ %wide.trip.count.i.i, %.lr.ph.i9.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i
  store i8 0, ptr %i.z, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.prol.loopexit, %.lr.ph.i9.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i9.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i9.i.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !47
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.next.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !47
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.next.i.i.1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !47
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.2.i.i.i94, i64 %indvars.iv.next.i.i.2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !47
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i9.i, !llvm.loop !262

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit: ; preds = %bb.c, %._crit_edge.i.i
  %.2.i.i.i93 = phi ptr [ null, %bb.c ], [ %.2.i.i.i94, %._crit_edge.i.i ] ; 5 uses
  %i.am = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.an = fptrunc double %i.am to float
  %i.ao = fmul float %i.an, 2.550000e+02
  %i.ap = fadd float %i.ao, 5.000000e-01
  %i.aq = tail call noundef float @llvm.floor.f32(float %i.ap)
  %i.ar = fptosi float %i.aq to i32
  %4 = shl i32 %i.ar, 16
  %5 = and i32 %4, 16711680
  %6 = load i32, ptr %2, align 4, !tbaa !63
  %7 = and i32 %6, -16711681
  %8 = or disjoint i32 %5, %7
  store i32 %8, ptr %2, align 4, !tbaa !63
  %.not11.i.i11 = icmp eq ptr %.2.i.i.i93, %3
  br i1 %.not11.i.i11, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21, label %.lr.ph.preheader.i.i12

.lr.ph.preheader.i.i12:                           ; preds = %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit
  %i.as = ptrtoaddr ptr %.2.i.i.i93 to i64
  %i.at = sub i64 %i.c, %i.as
  %scevgep.i.i13 = getelementptr i8, ptr %.2.i.i.i93, i64 %i.at
  br label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZN4core7isspaceEi.exit.i.i38, %.lr.ph.preheader.i.i12
  %.012.i.i15 = phi ptr [ %i.av, %_ZN4core7isspaceEi.exit.i.i38 ], [ %.2.i.i.i93, %.lr.ph.preheader.i.i12 ] ; 5 uses
  %i.au = load i8, ptr %.012.i.i15, align 1, !tbaa !47
  switch i8 %i.au, label %_ZN4core7isspaceEi.exit.i.i38 [
    i8 32, label %.critedge.thread.i.i16
    i8 13, label %.critedge.thread.i.i16
    i8 12, label %.critedge.thread.i.i16
    i8 10, label %.critedge.thread.i.i16
    i8 9, label %.critedge.thread.i.i16
    i8 11, label %.critedge.thread.i.i16
  ]

_ZN4core7isspaceEi.exit.i.i38:                    ; preds = %.lr.ph.i.i14
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i15, i64 1 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.av, %3
  br i1 %.not.i.i39, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21, label %.lr.ph.i.i14, !llvm.loop !0

.critedge.thread.i.i16:                           ; preds = %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14, %.lr.ph.i.i14
  %i.aw = ptrtoaddr ptr %.012.i.i15 to i64
  %i.ax = sub i64 %i.c, %i.aw
  %scevgep29.i.i.i17 = getelementptr i8, ptr %.012.i.i15, i64 %i.ax
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.e, %.critedge.thread.i.i16
  %.118.i.i.i19 = phi ptr [ %i.az, %bb.e ], [ %.012.i.i15, %.critedge.thread.i.i16 ] ; 3 uses
  %i.ay = load i8, ptr %.118.i.i.i19, align 1, !tbaa !47
  switch i8 %i.ay, label %.preheader.i.i24.preheader [
    i8 32, label %bb.e
    i8 9, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i18, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18
  %i.az = getelementptr inbounds nuw i8, ptr %.118.i.i.i19, i64 1 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.az, %3
  br i1 %.not.i.i.i20, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21, label %.lr.ph.i.i.i18, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21: ; preds = %_ZN4core7isspaceEi.exit.i.i38, %bb.e, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit
  %.2.i.i.i22 = phi ptr [ %.2.i.i.i93, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit ], [ %scevgep29.i.i.i17, %bb.e ], [ %scevgep.i.i13, %_ZN4core7isspaceEi.exit.i.i38 ] ; 2 uses
  %.not23.i.i23 = icmp eq ptr %.2.i.i.i22, null
  br i1 %.not23.i.i23, label %bb.f, label %.preheader.i.i24.preheader

.preheader.i.i24.preheader:                       ; preds = %.lr.ph.i.i.i18, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21
  %.2.i.i.i2298 = phi ptr [ %.2.i.i.i22, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21 ], [ %.118.i.i.i19, %.lr.ph.i.i.i18 ] ; 9 uses
  %.2.i.i.i2298126 = ptrtoaddr ptr %.2.i.i.i2298 to i64
  br label %.preheader.i.i24

bb.f:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i21
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40

.preheader.i.i24:                                 ; preds = %.preheader.i.i24.preheader, %bb.g
  %storemerge.i.i25 = phi i32 [ %i.be, %bb.g ], [ 0, %.preheader.i.i24.preheader ] ; 5 uses
  %i.ba = zext i32 %storemerge.i.i25 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !47
  switch i8 %i.bc, label %_ZN4core7isspaceEi.exit.i10.i37 [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i26
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i26
  ]

_ZN4core7isspaceEi.exit.i10.i37:                  ; preds = %.preheader.i.i24
  %i.bd = icmp eq ptr %i.bb, %3
  br i1 %i.bd, label %_ZN4core7isspaceEi.exit.thread.i.i26, label %bb.g

bb.g:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i37
  %i.be = add i32 %storemerge.i.i25, 1
  br label %.preheader.i.i24, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i26:             ; preds = %_ZN4core7isspaceEi.exit.i10.i37, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24, %.preheader.i.i24
  %.not30.i.i28 = icmp eq i32 %storemerge.i.i25, 0
  br i1 %.not30.i.i28, label %._crit_edge.i.i35, label %.lr.ph.preheader.i8.i29

.lr.ph.preheader.i8.i29:                          ; preds = %_ZN4core7isspaceEi.exit.thread.i.i26
  %.sroa.speculated.i.i27 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i25, i32 15)
  %wide.trip.count.i.i30 = zext nneg i32 %.sroa.speculated.i.i27 to i64 ; 8 uses
  %min.iters.check128 = icmp ult i32 %storemerge.i.i25, 8
  %i.bf = sub i64 %.2.i.i.i2298126, %i.b
  %diff.check130 = icmp ugt i64 %i.bf, -8
  %or.cond157 = or i1 %min.iters.check128, %diff.check130
  br i1 %or.cond157, label %.lr.ph.i9.i31.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.preheader.i8.i29
  %n.vec132 = and i64 %wide.trip.count.i.i30, 8   ; 3 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %index134
  %wide.load135 = load <8 x i8>, ptr %i.bg, align 1, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %index134
  store <8 x i8> %wide.load135, ptr %i.bh, align 8, !tbaa !47
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.bi, label %middle.block137, label %vector.body133, !llvm.loop !263

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %n.vec132, %wide.trip.count.i.i30
  br i1 %cmp.n138, label %._crit_edge.i.i35, label %.lr.ph.i9.i31.preheader

.lr.ph.i9.i31.preheader:                          ; preds = %.lr.ph.preheader.i8.i29, %middle.block137
  %indvars.iv.i.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i8.i29 ], [ %n.vec132, %middle.block137 ] ; 3 uses
  %xtraiter168 = and i64 %wide.trip.count.i.i30, 3 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i9.i31.prol.loopexit, label %.lr.ph.i9.i31.prol

.lr.ph.i9.i31.prol:                               ; preds = %.lr.ph.i9.i31.preheader, %.lr.ph.i9.i31.prol
  %indvars.iv.i.i32.prol = phi i64 [ %indvars.iv.next.i.i33.prol, %.lr.ph.i9.i31.prol ], [ %indvars.iv.i.i32.ph, %.lr.ph.i9.i31.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i9.i31.prol ], [ 0, %.lr.ph.i9.i31.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.i.i32.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i32.prol
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !47
  %indvars.iv.next.i.i33.prol = add nuw nsw i64 %indvars.iv.i.i32.prol, 1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i9.i31.prol.loopexit, label %.lr.ph.i9.i31.prol, !llvm.loop !264

.lr.ph.i9.i31.prol.loopexit:                      ; preds = %.lr.ph.i9.i31.prol, %.lr.ph.i9.i31.preheader
  %indvars.iv.i.i32.unr = phi i64 [ %indvars.iv.i.i32.ph, %.lr.ph.i9.i31.preheader ], [ %indvars.iv.next.i.i33.prol, %.lr.ph.i9.i31.prol ]
  %i.bm = sub nsw i64 %indvars.iv.i.i32.ph, %wide.trip.count.i.i30
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge.i.i35, label %.lr.ph.i9.i31

._crit_edge.i.i35:                                ; preds = %.lr.ph.i9.i31.prol.loopexit, %.lr.ph.i9.i31, %middle.block137, %_ZN4core7isspaceEi.exit.thread.i.i26
  %.pre-phi.i.i36 = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i26 ], [ %wide.trip.count.i.i30, %middle.block137 ], [ %wide.trip.count.i.i30, %.lr.ph.i9.i31 ], [ %wide.trip.count.i.i30, %.lr.ph.i9.i31.prol.loopexit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i36
  store i8 0, ptr %i.bo, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40

.lr.ph.i9.i31:                                    ; preds = %.lr.ph.i9.i31.prol.loopexit, %.lr.ph.i9.i31
  %indvars.iv.i.i32 = phi i64 [ %indvars.iv.next.i.i33.3, %.lr.ph.i9.i31 ], [ %indvars.iv.i.i32.unr, %.lr.ph.i9.i31.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.i.i32
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i32
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !47
  %indvars.iv.next.i.i33 = add nuw nsw i64 %indvars.iv.i.i32, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.next.i.i33
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i33
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !47
  %indvars.iv.next.i.i33.1 = add nuw nsw i64 %indvars.iv.i.i32, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.next.i.i33.1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i33.1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !47
  %indvars.iv.next.i.i33.2 = add nuw nsw i64 %indvars.iv.i.i32, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.2.i.i.i2298, i64 %indvars.iv.next.i.i33.2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i33.2
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !47
  %indvars.iv.next.i.i33.3 = add nuw nsw i64 %indvars.iv.i.i32, 4 ; 2 uses
  %exitcond.not.i.i34.3 = icmp eq i64 %indvars.iv.next.i.i33.3, %wide.trip.count.i.i30
  br i1 %exitcond.not.i.i34.3, label %._crit_edge.i.i35, label %.lr.ph.i9.i31, !llvm.loop !265

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40: ; preds = %bb.f, %._crit_edge.i.i35
  %.2.i.i.i2297 = phi ptr [ null, %bb.f ], [ %.2.i.i.i2298, %._crit_edge.i.i35 ] ; 5 uses
  %i.cb = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.cc = fptrunc double %i.cb to float
  %i.cd = fmul float %i.cc, 2.550000e+02
  %i.ce = fadd float %i.cd, 5.000000e-01
  %i.cf = tail call noundef float @llvm.floor.f32(float %i.ce)
  %i.cg = fptosi float %i.cf to i32
  %9 = shl i32 %i.cg, 8
  %10 = and i32 %9, 65280
  %11 = load i32, ptr %2, align 4, !tbaa !63
  %12 = and i32 %11, -65281
  %13 = or disjoint i32 %10, %12
  store i32 %13, ptr %2, align 4, !tbaa !63
  %.not11.i.i41 = icmp eq ptr %.2.i.i.i2297, %3
  br i1 %.not11.i.i41, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51, label %.lr.ph.preheader.i.i42

.lr.ph.preheader.i.i42:                           ; preds = %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40
  %i.ch = ptrtoaddr ptr %.2.i.i.i2297 to i64
  %i.ci = sub i64 %i.c, %i.ch
  %scevgep.i.i43 = getelementptr i8, ptr %.2.i.i.i2297, i64 %i.ci
  br label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %_ZN4core7isspaceEi.exit.i.i68, %.lr.ph.preheader.i.i42
  %.012.i.i45 = phi ptr [ %i.ck, %_ZN4core7isspaceEi.exit.i.i68 ], [ %.2.i.i.i2297, %.lr.ph.preheader.i.i42 ] ; 5 uses
  %i.cj = load i8, ptr %.012.i.i45, align 1, !tbaa !47
  switch i8 %i.cj, label %_ZN4core7isspaceEi.exit.i.i68 [
    i8 32, label %.critedge.thread.i.i46
    i8 13, label %.critedge.thread.i.i46
    i8 12, label %.critedge.thread.i.i46
    i8 10, label %.critedge.thread.i.i46
    i8 9, label %.critedge.thread.i.i46
    i8 11, label %.critedge.thread.i.i46
  ]

_ZN4core7isspaceEi.exit.i.i68:                    ; preds = %.lr.ph.i.i44
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i45, i64 1 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.ck, %3
  br i1 %.not.i.i69, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51, label %.lr.ph.i.i44, !llvm.loop !0

.critedge.thread.i.i46:                           ; preds = %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44, %.lr.ph.i.i44
  %i.cl = ptrtoaddr ptr %.012.i.i45 to i64
  %i.cm = sub i64 %i.c, %i.cl
  %scevgep29.i.i.i47 = getelementptr i8, ptr %.012.i.i45, i64 %i.cm
  br label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %bb.h, %.critedge.thread.i.i46
  %.118.i.i.i49 = phi ptr [ %i.co, %bb.h ], [ %.012.i.i45, %.critedge.thread.i.i46 ] ; 3 uses
  %i.cn = load i8, ptr %.118.i.i.i49, align 1, !tbaa !47
  switch i8 %i.cn, label %.preheader.i.i54.preheader [
    i8 32, label %bb.h
    i8 9, label %bb.h
    i8 11, label %bb.h
    i8 12, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.i.i.i48, %.lr.ph.i.i.i48, %.lr.ph.i.i.i48, %.lr.ph.i.i.i48, %.lr.ph.i.i.i48
  %i.co = getelementptr inbounds nuw i8, ptr %.118.i.i.i49, i64 1 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.co, %3
  br i1 %.not.i.i.i50, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51, label %.lr.ph.i.i.i48, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51: ; preds = %_ZN4core7isspaceEi.exit.i.i68, %bb.h, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40
  %.2.i.i.i52 = phi ptr [ %.2.i.i.i2297, %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit40 ], [ %scevgep29.i.i.i47, %bb.h ], [ %scevgep.i.i43, %_ZN4core7isspaceEi.exit.i.i68 ] ; 2 uses
  %.not23.i.i53 = icmp eq ptr %.2.i.i.i52, null
  br i1 %.not23.i.i53, label %bb.i, label %.preheader.i.i54.preheader

.preheader.i.i54.preheader:                       ; preds = %.lr.ph.i.i.i48, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51
  %.2.i.i.i52102 = phi ptr [ %.2.i.i.i52, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51 ], [ %.118.i.i.i49, %.lr.ph.i.i.i48 ] ; 9 uses
  %.2.i.i.i52102143 = ptrtoaddr ptr %.2.i.i.i52102 to i64
  br label %.preheader.i.i54

bb.i:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i51
  store i8 0, ptr %i.a, align 16, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit70

.preheader.i.i54:                                 ; preds = %.preheader.i.i54.preheader, %bb.j
  %storemerge.i.i55 = phi i32 [ %i.ct, %bb.j ], [ 0, %.preheader.i.i54.preheader ] ; 5 uses
  %i.cp = zext i32 %storemerge.i.i55 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !47
  switch i8 %i.cr, label %_ZN4core7isspaceEi.exit.i10.i67 [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i56
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i56
  ]

_ZN4core7isspaceEi.exit.i10.i67:                  ; preds = %.preheader.i.i54
  %i.cs = icmp eq ptr %i.cq, %3
  br i1 %i.cs, label %_ZN4core7isspaceEi.exit.thread.i.i56, label %bb.j

bb.j:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i67
  %i.ct = add i32 %storemerge.i.i55, 1
  br label %.preheader.i.i54, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i56:             ; preds = %_ZN4core7isspaceEi.exit.i10.i67, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54, %.preheader.i.i54
  %.not30.i.i58 = icmp eq i32 %storemerge.i.i55, 0
  br i1 %.not30.i.i58, label %._crit_edge.i.i65, label %.lr.ph.preheader.i8.i59

.lr.ph.preheader.i8.i59:                          ; preds = %_ZN4core7isspaceEi.exit.thread.i.i56
  %.sroa.speculated.i.i57 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i55, i32 15)
  %wide.trip.count.i.i60 = zext nneg i32 %.sroa.speculated.i.i57 to i64 ; 8 uses
  %min.iters.check145 = icmp ult i32 %storemerge.i.i55, 8
  %i.cu = sub i64 %.2.i.i.i52102143, %i.b
  %diff.check147 = icmp ugt i64 %i.cu, -8
  %or.cond158 = or i1 %min.iters.check145, %diff.check147
  br i1 %or.cond158, label %.lr.ph.i9.i61.preheader, label %vector.ph148

vector.ph148:                                     ; preds = %.lr.ph.preheader.i8.i59
  %n.vec149 = and i64 %wide.trip.count.i.i60, 8   ; 3 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next153, %vector.body150 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %index151
  %wide.load152 = load <8 x i8>, ptr %i.cv, align 1, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %index151
  store <8 x i8> %wide.load152, ptr %i.cw, align 8, !tbaa !47
  %index.next153 = add nuw i64 %index151, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.cx, label %middle.block154, label %vector.body150, !llvm.loop !266

middle.block154:                                  ; preds = %vector.body150
  %cmp.n155 = icmp eq i64 %n.vec149, %wide.trip.count.i.i60
  br i1 %cmp.n155, label %._crit_edge.i.i65, label %.lr.ph.i9.i61.preheader

.lr.ph.i9.i61.preheader:                          ; preds = %.lr.ph.preheader.i8.i59, %middle.block154
  %indvars.iv.i.i62.ph = phi i64 [ 0, %.lr.ph.preheader.i8.i59 ], [ %n.vec149, %middle.block154 ] ; 3 uses
  %xtraiter171 = and i64 %wide.trip.count.i.i60, 3 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i9.i61.prol.loopexit, label %.lr.ph.i9.i61.prol

.lr.ph.i9.i61.prol:                               ; preds = %.lr.ph.i9.i61.preheader, %.lr.ph.i9.i61.prol
  %indvars.iv.i.i62.prol = phi i64 [ %indvars.iv.next.i.i63.prol, %.lr.ph.i9.i61.prol ], [ %indvars.iv.i.i62.ph, %.lr.ph.i9.i61.preheader ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph.i9.i61.prol ], [ 0, %.lr.ph.i9.i61.preheader ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.i.i62.prol
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !47
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i62.prol
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !47
  %indvars.iv.next.i.i63.prol = add nuw nsw i64 %indvars.iv.i.i62.prol, 1 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph.i9.i61.prol.loopexit, label %.lr.ph.i9.i61.prol, !llvm.loop !267

.lr.ph.i9.i61.prol.loopexit:                      ; preds = %.lr.ph.i9.i61.prol, %.lr.ph.i9.i61.preheader
  %indvars.iv.i.i62.unr = phi i64 [ %indvars.iv.i.i62.ph, %.lr.ph.i9.i61.preheader ], [ %indvars.iv.next.i.i63.prol, %.lr.ph.i9.i61.prol ]
  %i.db = sub nsw i64 %indvars.iv.i.i62.ph, %wide.trip.count.i.i60
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %._crit_edge.i.i65, label %.lr.ph.i9.i61

._crit_edge.i.i65:                                ; preds = %.lr.ph.i9.i61.prol.loopexit, %.lr.ph.i9.i61, %middle.block154, %_ZN4core7isspaceEi.exit.thread.i.i56
  %.pre-phi.i.i66 = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i56 ], [ %wide.trip.count.i.i60, %middle.block154 ], [ %wide.trip.count.i.i60, %.lr.ph.i9.i61 ], [ %wide.trip.count.i.i60, %.lr.ph.i9.i61.prol.loopexit ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i66
  store i8 0, ptr %i.dd, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit70

.lr.ph.i9.i61:                                    ; preds = %.lr.ph.i9.i61.prol.loopexit, %.lr.ph.i9.i61
  %indvars.iv.i.i62 = phi i64 [ %indvars.iv.next.i.i63.3, %.lr.ph.i9.i61 ], [ %indvars.iv.i.i62.unr, %.lr.ph.i9.i61.prol.loopexit ] ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.i.i62
  %i.df = load i8, ptr %i.de, align 1, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i62
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !47
  %indvars.iv.next.i.i63 = add nuw nsw i64 %indvars.iv.i.i62, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.next.i.i63
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !47
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i63
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !47
  %indvars.iv.next.i.i63.1 = add nuw nsw i64 %indvars.iv.i.i62, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.next.i.i63.1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !47
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i63.1
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !47
  %indvars.iv.next.i.i63.2 = add nuw nsw i64 %indvars.iv.i.i62, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.2.i.i.i52102, i64 %indvars.iv.next.i.i63.2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !47
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i63.2
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !47
  %indvars.iv.next.i.i63.3 = add nuw nsw i64 %indvars.iv.i.i62, 4 ; 2 uses
  %exitcond.not.i.i64.3 = icmp eq i64 %indvars.iv.next.i.i63.3, %wide.trip.count.i.i60
  br i1 %exitcond.not.i.i64.3, label %._crit_edge.i.i65, label %.lr.ph.i9.i61, !llvm.loop !268

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit70: ; preds = %bb.i, %._crit_edge.i.i65
  %.2.i.i.i52101 = phi ptr [ null, %bb.i ], [ %.2.i.i.i52102, %._crit_edge.i.i65 ]
  %i.dq = call double @strtod(ptr noundef nonnull readonly captures(none) %i.a, ptr noundef null) #30
  %i.dr = fptrunc double %i.dq to float
  %i.ds = fmul float %i.dr, 2.550000e+02
  %i.dt = fadd float %i.ds, 5.000000e-01
  %i.du = tail call noundef float @llvm.floor.f32(float %i.dt)
  %i.dv = fptosi float %i.du to i32
  %14 = and i32 %i.dv, 255
  %15 = load i32, ptr %2, align 4, !tbaa !63
  %16 = and i32 %15, -256
  %17 = or disjoint i32 %14, %16
  store i32 %17, ptr %2, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %.2.i.i.i52101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZN5scene18COBJMeshFileLoader8readBoolEPKcRbS2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %.not11.i.i = icmp eq ptr %1, %3
  br i1 %.not11.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.d
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core7isspaceEi.exit.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.f, %_ZN4core7isspaceEi.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !47
  switch i8 %i.e, label %_ZN4core7isspaceEi.exit.i.i [
    i8 32, label %.critedge.thread.i.i
    i8 13, label %.critedge.thread.i.i
    i8 12, label %.critedge.thread.i.i
    i8 10, label %.critedge.thread.i.i
    i8 9, label %.critedge.thread.i.i
    i8 11, label %.critedge.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i.i:                      ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.critedge.thread.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.g = ptrtoaddr ptr %.012.i.i to i64
  %i.h = sub i64 %i.b, %i.g
  %scevgep29.i.i.i = getelementptr i8, ptr %.012.i.i, i64 %i.h
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.thread.i.i
  %.118.i.i.i = phi ptr [ %i.j, %bb.b ], [ %.012.i.i, %.critedge.thread.i.i ] ; 3 uses
  %i.i = load i8, ptr %.118.i.i.i, align 1, !tbaa !47
  switch i8 %i.i, label %.preheader.i.i.preheader [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.118.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %3
  br i1 %.not.i.i.i, label %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i: ; preds = %_ZN4core7isspaceEi.exit.i.i, %bb.b, %bb.a
  %.2.i.i.i = phi ptr [ %1, %bb.a ], [ %scevgep29.i.i.i, %bb.b ], [ %scevgep.i.i, %_ZN4core7isspaceEi.exit.i.i ] ; 2 uses
  %.not23.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not23.i.i, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  %.2.i.i.i15 = phi ptr [ %.2.i.i.i, %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i ], [ %.118.i.i.i, %.lr.ph.i.i.i ] ; 7 uses
  br label %.preheader.i.i

bb.c:                                             ; preds = %_ZN5scene18COBJMeshFileLoader10goNextWordEPKcS2_b.exit.i
  store i8 0, ptr %i.a, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.d
  %storemerge.i.i = phi i32 [ %i.o, %bb.d ], [ 0, %.preheader.i.i.preheader ] ; 5 uses
  %i.k = zext i32 %storemerge.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.2.i.i.i15, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !47
  switch i8 %i.m, label %_ZN4core7isspaceEi.exit.i10.i [
    i8 0, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 32, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 13, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 12, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 10, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 9, label %_ZN4core7isspaceEi.exit.thread.i.i
    i8 11, label %_ZN4core7isspaceEi.exit.thread.i.i
  ]

_ZN4core7isspaceEi.exit.i10.i:                    ; preds = %.preheader.i.i
  %i.n = icmp eq ptr %i.l, %3
  br i1 %i.n, label %_ZN4core7isspaceEi.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core7isspaceEi.exit.i10.i
  %i.o = add i32 %storemerge.i.i, 1
  br label %.preheader.i.i, !llvm.loop !2

_ZN4core7isspaceEi.exit.thread.i.i:               ; preds = %_ZN4core7isspaceEi.exit.i10.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %.not30.i.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i8.i

.lr.ph.preheader.i8.i:                            ; preds = %_ZN4core7isspaceEi.exit.thread.i.i
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 7)
  %wide.trip.count.i.i = zext nneg i32 %.sroa.speculated.i.i to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.p = icmp ult i32 %storemerge.i.i, 4
  br i1 %i.p, label %.lr.ph.i9.i.epil.preheader, label %.lr.ph.preheader.i8.i.new

.lr.ph.preheader.i8.i.new:                        ; preds = %.lr.ph.preheader.i8.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4
  br label %.lr.ph.i9.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i9.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i9.i.epil.preheader

.lr.ph.i9.i.epil.preheader:                       ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i8.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i8.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i9.i.epil

.lr.ph.i9.i.epil:                                 ; preds = %.lr.ph.i9.i.epil, %.lr.ph.i9.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i9.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i9.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i9.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i9.i.epil ]
  %i.q = getelementptr inbounds nuw i8, ptr %.2.i.i.i15, i64 %indvars.iv.i.i.epil
  %i.r = load i8, ptr %i.q, align 1, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.epil
  store i8 %i.r, ptr %i.s, align 1, !tbaa !47
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i9.i.epil, !llvm.loop !269

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i9.i.epil, %_ZN4core7isspaceEi.exit.thread.i.i
  %.pre-phi.i.i = phi i64 [ 0, %_ZN4core7isspaceEi.exit.thread.i.i ], [ %wide.trip.count.i.i, %.lr.ph.i9.i.epil ], [ %wide.trip.count.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi.i.i
  store i8 0, ptr %i.t, align 1, !tbaa !47
  br label %_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i8.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i8.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i9.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i8.i.new ], [ %niter.next.3, %.lr.ph.i9.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i.i.i15, i64 %indvars.iv.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i
  store i8 %i.v, ptr %i.w, align 1, !tbaa !47
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.2.i.i.i15, i64 %indvars.iv.next.i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !47
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.2.i.i.i15, i64 %indvars.iv.next.i.i.1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !47
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.2.i.i.i15, i64 %indvars.iv.next.i.i.2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !47
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i9.i, !llvm.loop !270

_ZN5scene18COBJMeshFileLoader17goAndCopyNextWordEPcPKcjS3_.exit: ; preds = %bb.c, %._crit_edge.i.i
  %.2.i.i.i14 = phi ptr [ null, %bb.c ], [ %.2.i.i.i15, %._crit_edge.i.i ]
  %i.ag = load i32, ptr %i.a, align 1
  %i.ah = icmp ne i32 %i.ag, 6710895              ; 2 uses
  %i.ai = zext i1 %i.ah to i32                    ; 0 uses
  %i.aj = zext i1 %i.ah to i8
  store i8 %i.aj, ptr %2, align 1, !tbaa !271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %.2.i.i.i14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene18COBJMeshFileLoader7SObjMtlC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(126) %0, ptr noundef nonnull align 8 dereferenceable(126) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !46
  store i8 0, ptr %i.g, align 8, !tbaa !47
  %i.i = icmp eq ptr %0, %1
  br i1 %i.i, label %_ZN4core6stringIcEC2ERKS1_.exit.thread, label %bb.b

end_hunk_0
