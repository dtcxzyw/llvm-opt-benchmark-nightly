inline.NumInlined: 3689
inline.NumDeleted: 1401
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN17QArrayDataPointerI8QVariantE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_:bb.a
  %i.bh = load <2 x ptr>, ptr %4, align 16
  store ptr %i.be, ptr %4, align 16
  store <2 x ptr> %i.bh, ptr %0, align 8
  store ptr %i.bg, ptr %i.w, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bj = load i64, ptr %i.z, align 8             ; 2 uses
  %i.bk = load i64, ptr %i.bi, align 16
  store i64 %i.bk, ptr %i.z, align 8
  store i64 %i.bj, ptr %i.bi, align 16
  br i1 %i.b, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit
  %i.bl = getelementptr i8, ptr %3, i64 8
  %i.bm = load <2 x ptr>, ptr %3, align 8
  %i.bn = load ptr, ptr %3, align 8
  store ptr %i.be, ptr %3, align 8
  store ptr %i.bg, ptr %i.bl, align 8
  store <2 x ptr> %i.bm, ptr %4, align 16
  %i.bo = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  store i64 %i.bj, ptr %i.bo, align 8
  store i64 %i.bp, ptr %i.bi, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit
  %i.bq = phi ptr [ %i.bn, %bb.m ], [ %i.be, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10copyAppendEPKS1_S4_.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI8QVariantED2Ev.exit, label %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i

_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i: ; preds = %bb.n
  %i.br = atomicrmw sub ptr %i.bq, i32 1 acq_rel, align 4
  %.not.i37 = icmp eq i32 %i.br, 1
  br i1 %.not.i37, label %bb.o, label %_ZN17QArrayDataPointerI8QVariantED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i
  %i.bs = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.bt = load i64, ptr %i.bi, align 16
  %.idx.i.i = shl i64 %i.bt, 5                    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %i.bs, %bb.o ] ; 2 uses
  call void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32) %.05.i.i.i.i.i) #24
  %i.bv = getelementptr i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !95

_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.o
  %i.bw = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bw, i64 noundef 32, i64 noundef 8) #24
  br label %_ZN17QArrayDataPointerI8QVariantED2Ev.exit

_ZN17QArrayDataPointerI8QVariantED2Ev.exit:       ; preds = %bb.n, %_ZN17QArrayDataPointerI8QVariantE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI8QVariantE10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.p

bb.p:                                             ; preds = %_ZN17QArrayDataPointerI8QVariantED2Ev.exit, %_ZN9QtPrivate16QMovableArrayOpsI8QVariantE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void

bb.q:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.y, %bb.f ]
  call void @_ZN17QArrayDataPointerI8QVariantED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI8QVariantE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.117) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
  %i.j = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = add i64 %i.m, 23
  %i.o = and i64 %i.n, -8
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o
  %i.r = ashr exact i64 %i.q, 5                   ; 2 uses
  %i.s = add i64 %i.h, %i.r
  %i.t = sub i64 %i.g, %i.s
  %.ph = select i1 %i.j, i64 %i.t, i64 %i.r
  %i.u = sub i64 %i.i, %.ph                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  br label %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit
  %i.y = phi i64 [ %i.e, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.u, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit.thread ]
  %i.aa = icmp sle i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ac = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8, i64 noundef %i.y, i32 noundef %i.ab) #24 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not = icmp ne ptr %i.ad, null
  %i.ae = icmp ne ptr %i.ac, null
  %i.af = and i1 %i.ae, %.not
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit, label %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [32 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [32 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit

_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit:  ; preds = %bb.d, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerI8QVariantE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerI8QVariantE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerI8QVariantE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QVariantC1ERKS_(ptr noundef align 8 dereferenceable_or_null(32), ptr noundef align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPP4PlotEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPP4PlotS2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPP4PlotS2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.m, 360
  br i1 %min.iters.check186, label %.lr.ph.i.preheader202, label %vector.scevcheck175

vector.scevcheck175:                              ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %mul176 = and i64 %i.q, -8                      ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %mul176
  %i.s = icmp ult ptr %i.r, %0
  %i.t = getelementptr i8, ptr %1, i64 %mul176
  %i.u = icmp ult ptr %i.t, %1
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader202, label %vector.memcheck179

vector.memcheck179:                               ; preds = %vector.scevcheck175
  %i.w = add i64 %i.g, -8
  %i.x = sub i64 %i.w, %i.d
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep180 = getelementptr i8, ptr %0, i64 %i.z
  %scevgep181 = getelementptr i8, ptr %1, i64 %i.z
  %bound0182 = icmp ult ptr %0, %scevgep181
  %bound1183 = icmp ult ptr %1, %scevgep180
  %found.conflict184 = and i1 %bound0182, %bound1183
  br i1 %found.conflict184, label %.lr.ph.i.preheader202, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck179
  %n.vec188 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.aa = shl i64 %n.vec188, 3                    ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 %i.aa
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next197, %vector.body189 ] ; 2 uses
  %i.ad = shl i64 %index190, 3                    ; 2 uses
  %next.gep191 = getelementptr i8, ptr %1, i64 %i.ad ; 3 uses
  %next.gep192 = getelementptr i8, ptr %0, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep192, i64 16 ; 2 uses
  %wide.load193 = load <2 x ptr>, ptr %next.gep192, align 8, !alias.scope !275, !noalias !278
  %wide.load194 = load <2 x ptr>, ptr %i.ae, align 8, !alias.scope !275, !noalias !278
  %i.af = getelementptr i8, ptr %next.gep191, i64 16 ; 2 uses
  %wide.load195 = load <2 x ptr>, ptr %next.gep191, align 8, !alias.scope !278
  %wide.load196 = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !278
  store <2 x ptr> %wide.load195, ptr %next.gep192, align 8, !alias.scope !275, !noalias !278
  store <2 x ptr> %wide.load196, ptr %i.ae, align 8, !alias.scope !275, !noalias !278
  store <2 x ptr> %wide.load193, ptr %next.gep191, align 8, !alias.scope !278
  store <2 x ptr> %wide.load194, ptr %i.af, align 8, !alias.scope !278
  %index.next197 = add nuw i64 %index190, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next197, %n.vec188
  br i1 %i.ag, label %middle.block198, label %vector.body189, !llvm.loop !280

middle.block198:                                  ; preds = %vector.body189
  %cmp.n199 = icmp eq i64 %i.o, %n.vec188
  br i1 %cmp.n199, label %_ZSt11swap_rangesIPP4PlotS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader202

.lr.ph.i.preheader202:                            ; preds = %vector.memcheck179, %vector.scevcheck175, %.lr.ph.i.preheader, %middle.block198
  %.010.i.ph = phi ptr [ %1, %vector.memcheck179 ], [ %1, %vector.scevcheck175 ], [ %1, %.lr.ph.i.preheader ], [ %i.ab, %middle.block198 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck179 ], [ %0, %vector.scevcheck175 ], [ %0, %.lr.ph.i.preheader ], [ %i.ac, %middle.block198 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader202, %.lr.ph.i
  %.010.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader202 ] ; 3 uses
  %.079.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader202 ] ; 3 uses
  %i.ah = load ptr, ptr %.079.i, align 8
  %i.ai = load ptr, ptr %.010.i, align 8
  store ptr %i.ai, ptr %.079.i, align 8
  store ptr %i.ah, ptr %.010.i, align 8
  %i.aj = getelementptr i8, ptr %.079.i, i64 8    ; 2 uses
  %i.ak = getelementptr i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPP4PlotS2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !283

bb.d:                                             ; preds = %bb.c
  %i.al = sub i64 %i.c, %i.g
  %i.am = getelementptr i8, ptr %0, i64 %i.al     ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 13 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 21 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 28 uses
  %i.an = sub i64 %.086, %.082                    ; 10 uses
  %i.ao = icmp slt i64 %.082, %i.an
  br i1 %i.ao, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp eq i64 %.082, 1
  br i1 %i.ap, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %.058, align 8
  %i.ar = getelementptr i8, ptr %.058, i64 8      ; 2 uses
  %.idx97 = shl i64 %.086, 3                      ; 2 uses
  %i.as = getelementptr i8, ptr %.058, i64 %.idx97
  %gepdiff = add i64 %.idx97, -8                  ; 3 uses
  %i.at = icmp sgt i64 %gepdiff, 8
  br i1 %i.at, label %bb.h, label %bb.i, !prof !284

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058, ptr align 8 %i.ar, i64 %gepdiff, i1 false)
  br label %_ZSt4moveIPP4PlotS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.au = icmp eq i64 %gepdiff, 8
  br i1 %i.au, label %bb.j, label %_ZSt4moveIPP4PlotS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ar, align 8
  store ptr %i.av, ptr %.058, align 8
  br label %_ZSt4moveIPP4PlotS2_ET0_T_S4_S3_.exit

_ZSt4moveIPP4PlotS2_ET0_T_S4_S3_.exit:            ; preds = %bb.h, %bb.i, %bb.j
  %i.aw = getelementptr i8, ptr %i.as, i64 -8
  store ptr %i.aq, ptr %i.aw, align 8
  br label %_ZSt11swap_rangesIPP4PlotS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.f
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.k
  %i.ay = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 8 uses
  %min.iters.check = icmp ult i64 %i.an, 30
  br i1 %min.iters.check, label %.lr.ph110.preheader203, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph110.preheader
  %i.az = xor i64 %.082, -1
  %i.ba = add i64 %.086, %i.az                    ; 2 uses
  %mul.result = shl i64 %i.ba, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ba, 2305843009213693951
  %i.bb = getelementptr i8, ptr %.058, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %.058
  %i.bd = getelementptr i8, ptr %i.ay, i64 %mul.result
  %i.be = icmp ult ptr %i.bd, %i.ay
  %i.bf = or i1 %i.be, %mul.overflow
  %i.bg = or i1 %i.bc, %i.bf
  br i1 %i.bg, label %.lr.ph110.preheader203, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bh = shl i64 %.086, 3
  %i.bi = sub i64 %.086, %.082
  %i.bj = shl i64 %i.bi, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.bj
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.bh
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader203, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 9223372036854775804     ; 4 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ay, i64 %i.bk
  %i.bm = getelementptr i8, ptr %.058, i64 %i.bk  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bn ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.bn ; 3 uses
  %i.bo = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !alias.scope !285, !noalias !288
  %wide.load139 = load <2 x ptr>, ptr %i.bo, align 8, !alias.scope !285, !noalias !288
  %i.bp = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !288
  %wide.load141 = load <2 x ptr>, ptr %i.bp, align 8, !alias.scope !288
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8, !alias.scope !285, !noalias !288
  store <2 x ptr> %wide.load141, ptr %i.bo, align 8, !alias.scope !285, !noalias !288
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !288
  store <2 x ptr> %wide.load139, ptr %i.bp, align 8, !alias.scope !288
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader203

.lr.ph110.preheader203:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %vector.scevcheck ], [ %i.ay, %.lr.ph110.preheader ], [ %i.bl, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %vector.scevcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.bm, %middle.block ] ; 2 uses
  %i.br = sub i64 %.086, %.082
  %xtraiter211 = and i64 %i.br, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader203, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bw, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader203 ]
  %.055107.prol = phi ptr [ %i.bv, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader203 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.bu, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader203 ] ; 3 uses
  %prol.iter213 = phi i64 [ %prol.iter213.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader203 ]
  %i.bs = load ptr, ptr %.159106.prol, align 8
  %i.bt = load ptr, ptr %.055107.prol, align 8
  store ptr %i.bt, ptr %.159106.prol, align 8
  store ptr %i.bs, ptr %.055107.prol, align 8
  %i.bu = getelementptr i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bv = getelementptr i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.bw = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter213.next = add i64 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i64 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !291

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader203
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader203 ], [ %i.bu, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader203 ], [ %i.bw, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader203 ], [ %i.bv, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader203 ], [ %i.bu, %.lr.ph110.prol ]
  %i.bx = sub i64 %.054108.ph, %.086
  %i.by = add i64 %i.bx, %.082
end_hunk_0
