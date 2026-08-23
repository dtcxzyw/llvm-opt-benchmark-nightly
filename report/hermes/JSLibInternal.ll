Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSLibInternal?download=true
inline.NumInlined: 2564
inline.NumDeleted: 1401
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6hermes2vm23iteratorCloseAndRethrowERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !36
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.c, i64 %.sroa.0.0.copyload.i) #16 ; 2 uses
  %.sroa.0.0.copyload.i8.pre = load i64, ptr %i.j, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.copyload.i8 = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i8.pre, %bb.c ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.c ]
  %i.k = tail call noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64 %.sroa.0.0.copyload.i8) #16
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  store i64 -1970324836974592, ptr %i.a, align 8, !tbaa !64
  %i.l = tail call noundef i32 @_ZN6hermes2vm13iteratorCloseERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr nonnull %.0.i.i.i.i.i.i) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.d
  ret i32 0
}

declare noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm13iteratorCloseERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::StackOverflowGuard", align 8 ; 6 uses
  %5 = alloca %"class.hermes::StackOverflowGuard", align 8 ; 6 uses
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %7 = alloca %"class.hermes::vm::CallResult.188", align 8 ; 15 uses
  %8 = alloca %"struct.hermes::ScopeChain", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %0, ptr %6, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  store ptr %i.c, ptr %i.a, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !51
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !53
  store ptr %6, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !66   ; 4 uses
  %i.n = call i32 @llvm.usub.sat.i32(i32 %i.m, i32 1) ; 7 uses
  %i.o = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.n, i32 noundef %i.n) #16 ; 3 uses
  %.not239 = icmp eq ptr %i.o, inttoptr (i64 -1 to ptr)
  br i1 %.not239, label %.critedge105, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !33   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !36
  store i64 -844424930131968, ptr %i.r, align 8, !tbaa !15
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.p, i64 -844424930131968) #16
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre257 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  %.phi.trans.insert258 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre259 = load ptr, ptr %.phi.trans.insert258, align 8, !tbaa !46
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.t, %bb.c ], [ %.pre259, %bb.d ]
  %i.y = phi ptr [ %i.v, %bb.c ], [ %.pre257, %bb.d ] ; 4 uses
  %i.z = phi ptr [ %i.p, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %i.w, %bb.d ] ; 6 uses
  %.not = icmp ult i32 %i.m, 2                    ; 2 uses
  %i.aa = add i32 %i.n, -1                        ; 2 uses
  %i.ab = select i1 %.not, i32 0, i32 %i.aa
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  %i.ad = icmp ult ptr %i.y, %i.x
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !36
  store i64 -281474976710656, ptr %i.y, align 8, !tbaa !15
  br label %switch.lookup

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ag = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.z, i64 -281474976710656) #16
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i107 = phi ptr [ %i.y, %bb.e ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ah = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE, i64 %i.ah
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %.sroa.0.0.copyload.i.i.i.i109 = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.aj = or i64 %.sroa.0.0.copyload.i.i.i.i109, -281474976710656
  store i64 %i.aj, ptr %.0.i.i.i.i.i.i107, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.am = load i64, ptr %i.al, align 8, !tbaa !64
  %.mask.i = and i64 %i.am, -140737488355328
  %i.an = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.an, label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, label %bb.g

bb.g:                                             ; preds = %switch.lookup
  %i.ao = load ptr, ptr %1, align 8, !tbaa !70, !noalias !71
  %.sroa.049.0.copyload = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.ap = and i64 %.sroa.049.0.copyload, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ar, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.as = ptrtoint ptr %0 to i64
  %i.at = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.au = add i64 %i.at, %i.as
  %i.av = or i64 %i.au, -281474976710656
  %i.aw = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 192 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !36 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46
  %i.bc = icmp ult ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !36
  store i64 %i.aw, ptr %i.az, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.be = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ax, i64 %i.aw) #16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %switch.lookup, %bb.i, %bb.h
  %storemerge.in = phi ptr [ %i.be, %bb.i ], [ %i.az, %bb.h ], [ %.0.i.i.i.i.i.i107, %switch.lookup ] ; 2 uses
  %i.bf = icmp eq i32 %i.m, 0
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.bh = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bg, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 14) #16
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = or i64 %i.bi, -844424930131968
  store i64 %i.bj, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !64
  br label %bb.ap

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.bl = load i32, ptr %i.k, align 8, !tbaa !53  ; 2 uses
  %.not103246.not = icmp eq i32 %i.m, 1           ; 2 uses
  br i1 %.not103246.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bm = zext i32 %i.bl to i64
  %umax = call i32 @llvm.umax.i32(i32 %i.n, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %.sroa.14.0248 = phi i32 [ 0, %.lr.ph ], [ %i.cs, %bb.p ]
  %.sroa.0208.0247 = phi i64 [ %i.ac, %.lr.ph ], [ %i.cp, %bb.p ]
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  store i32 %i.bl, ptr %i.k, align 8, !tbaa !53
  store ptr %i.bq, ptr %i.j, align 8, !tbaa !46
  store ptr %i.bk, ptr %i.i, align 8, !tbaa !36
  %i.br = load i32, ptr %i.l, align 8, !tbaa !66
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv, %i.bs
  %i.bu = load ptr, ptr %1, align 8
  %9 = sub nsw i64 0, %indvars.iv
  %10 = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %9
  %i.bv = getelementptr inbounds i8, ptr %10, i64 -8
  %.sroa.02.0.i = select i1 %i.bt, ptr %i.bv, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.bw = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.02.0.i) #16 ; 2 uses
  %.not241 = icmp eq ptr %i.bw, inttoptr (i64 -1 to ptr)
  br i1 %.not241, label %.critedge105, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = or i64 %i.bx, -844424930131968          ; 2 uses
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 192 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 200
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !46
  %i.ce = icmp ult ptr %i.cb, %i.cd
  br i1 %i.ce, label %bb.n, label %bb.o, !prof !47

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !36
  store i64 %i.by, ptr %i.cb, align 8, !tbaa !15
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cg = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bz, i64 %i.by) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i.i111 = phi ptr [ %i.cb, %bb.n ], [ %i.cg, %bb.o ] ; 2 uses
  %i.ch = trunc nuw i64 %indvars.iv to i32
  %i.ci = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.o, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.ch, ptr %.0.i.i.i.i.i.i111) #16 ; 0 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i111, align 8, !tbaa !15
  %i.cj = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !75
  %i.cn = and i32 %i.cm, 2147483647
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = add i64 %.sroa.0208.0247, %i.co         ; 3 uses
  %i.cq = lshr i64 %i.cp, 32
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = or i32 %.sroa.14.0248, %i.cr            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.l, !llvm.loop !78

.critedge:                                        ; preds = %bb.p, %bb.k
  %.sroa.0208.0.lcssa = phi i64 [ %i.ac, %bb.k ], [ %i.cp, %bb.p ]
  %.sroa.14.0.lcssa = phi i32 [ 0, %bb.k ], [ %i.cs, %bb.p ]
  %i.ct = load i32, ptr %i.l, align 8, !tbaa !66
  %i.cu = icmp ult i32 %i.n, %i.ct
  %i.cv = load ptr, ptr %1, align 8
  %i.cw = zext i32 %i.n to i64
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %.sroa.02.0.i112 = select i1 %i.cu, ptr %i.cz, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.da = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.02.0.i112) #16 ; 2 uses
  %.not240 = icmp eq ptr %i.da, inttoptr (i64 -1 to ptr)
  br i1 %.not240, label %.critedge105, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = or i64 %i.db, -844424930131968
  store i64 %i.dc, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !64
  %i.dd = and i64 %i.db, 281474976710655
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !75
  %i.dh = and i32 %i.dg, 2147483647
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = add i64 %.sroa.0208.0.lcssa, %i.di      ; 3 uses
  %i.dk = lshr i64 %i.dj, 32
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = or i32 %.sroa.14.0.lcssa, %i.dl         ; 2 uses
  %i.dn = icmp eq i32 %2, 0
  %or.cond = and i1 %i.dn, %.not103246.not
  br i1 %or.cond, label %bb.r, label %bb.ap

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.dp = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.do, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 447) #16
  %.sroa.0.0.copyload.i.i.i114 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.dq = and i64 %.sroa.0.0.copyload.i.i.i114, 281474976710655
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = call noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr noundef nonnull align 4 dereferenceable(8) %i.dr, ptr noundef %i.dp) #16
  br i1 %i.ds, label %_ZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE.exit.thread, label %bb.s

_ZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE.exit.thread: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.dt = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i) #16 ; 2 uses
  %i.du = extractvalue { ptr, i64 } %i.dt, 0      ; 4 uses
  %i.dv = extractvalue { ptr, i64 } %i.dt, 1      ; 5 uses
  %i.dw = load atomic i8, ptr @_ZGVZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode acquire, align 8
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.t, label %bb.v, !prof !80

bb.t:                                             ; preds = %bb.s
  %i.dy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode) #16
  %.not.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call fastcc void @_ZN6hermes2vmL26getReturnThisRegexBytecodeEv()
  %i.dz = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIhSaIhEED2Ev, ptr nonnull @_ZZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode, ptr nonnull @__dso_handle) #16 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.5.8.extract.trunc.i = trunc i64 %i.dv to i32 ; 3 uses
  %i.ea = icmp slt i32 %.sroa.5.8.extract.trunc.i, 0
  br i1 %i.ea, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.eb = and i32 %.sroa.5.8.extract.trunc.i, 1073741824
  %.not.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.du, align 8, !tbaa !15
  %i.ec = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.ed = inttoptr i64 %i.ec to ptr               ; 5 uses
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  %i.ef = icmp ugt i32 %i.ee, 150994943
  br i1 %i.ef, label %bb.y, label %bb.z, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.z:                                             ; preds = %bb.x
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.ee, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.ac [
    i32 134217728, label %bb.aa
    i32 67108864, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ac:                                            ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.ek, align 8, !tbaa !15
  %i.el = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.w
  %.0.i.sink.i.i = phi ptr [ %i.du, %bb.w ], [ %i.eh, %bb.y ], [ %i.ei, %bb.aa ], [ %i.ej, %bb.ab ], [ %i.eo, %bb.ac ]
  %i.ep = and i64 %i.dv, 1073741823
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.ep
  %i.er = load ptr, ptr @_ZZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode, align 8, !tbaa !81 ; 2 uses
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode, i64 8), align 8, !tbaa !83
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  %.sroa.5.12.extract.shift.i = lshr i64 %i.dv, 32
  %.sroa.5.12.extract.trunc.i = trunc nuw i64 %.sroa.5.12.extract.shift.i to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 9480
  %.sroa.0.0.copyload.i.i115 = load i64, ptr %i.ew, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9488
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !15
  %i.ex = mul i64 %.sroa.2.0.copyload.i.i, 5
  store i64 %.sroa.0.0.copyload.i.i115, ptr %4, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ex, ptr %i.ey, align 8
  %i.ez = call noundef i32 @_ZN6hermes5regex18searchWithBytecodeEN4llvh8ArrayRefIhEEPKcjjPSt6vectorINS0_13CapturedRangeESaIS7_EENS0_9constants13MatchFlagTypeENS_18StackOverflowGuardE(ptr %i.er, i64 %i.ev, ptr noundef %i.eq, i32 noundef 0, i32 noundef %.sroa.5.12.extract.trunc.i, ptr noundef null, i32 noundef 4, ptr noundef nonnull byval(%"class.hermes::StackOverflowGuard") align 8 %4) #16
  br label %_ZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE.exit

bb.ad:                                            ; preds = %bb.v
  %.not.i11.i = icmp samesign ult i32 %.sroa.5.8.extract.trunc.i, 1073741824
  br i1 %.not.i11.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i.i.i12.i = load i64, ptr %i.du, align 8, !tbaa !15
  %i.fa = and i64 %.sroa.0.0.copyload.i.i.i.i12.i, 281474976710655
  %i.fb = inttoptr i64 %i.fa to ptr               ; 5 uses
  %i.fc = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.fd = icmp ugt i32 %i.fc, 150994943
  br i1 %i.fd, label %bb.af, label %bb.ag, !prof !14

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !84
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ag:                                            ; preds = %bb.ae
end_hunk_0
