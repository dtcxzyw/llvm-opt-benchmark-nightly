inline.NumInlined: 587
inline.NumDeleted: 219
begin_hunk_0_@_ZN6hermes2vm22numberPrototypeToFixedEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.fi = extractvalue { i32, i64 } %.pn.i, 1
  %i.fj = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.df
  br i1 %i.fk, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  call void @free(ptr noundef %i.fj) #12
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.fl = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.bp
  br i1 %i.fm, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58, label %bb.af

bb.af:                                            ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit
  call void @free(ptr noundef %i.fl) #12
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58:         ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.l, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.e, %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58, %bb.g
  %.sroa.067.2 = phi i32 [ %i.aq, %bb.e ], [ %i.w, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.g ], [ %i.fh, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58 ], [ 0, %bb.a ], [ 1, %bb.l ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.sroa.8.1 = phi i64 [ undef, %bb.e ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ax, %bb.g ], [ %i.fi, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58 ], [ undef, %bb.a ], [ %i.bm, %bb.l ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.067.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm28numberPrototypeToExponentialEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.llvh::SmallString", align 8 ; 21 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %class.DtoaAllocator, align 8       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %9 = alloca %"class.llvh::format_object", align 8 ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !32, !noalias !81 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %i.h = icmp ult i64 %i.g, -1970324836974592
  %i.i = bitcast i64 %i.g to double
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ugt i64 %i.g, -844424930131969
  br i1 %i.j, label %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.k = and i64 %i.g, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i32, ptr %i.l, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.m, -16777216
  %i.n = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 939524096
  %spec.select.i = select i1 %i.n, ptr %i.f, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i ]
  %i.o = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !25 ; 2 uses
  %i.p = icmp ugt i64 %i.o, -844424930131969
  %i.q = and i64 %i.o, 281474976710655            ; 2 uses
  %i.r = icmp ne i64 %i.q, 0
  %i.s = and i1 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.c, !prof !22

bb.c:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 59, ptr %i.u, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !55
  store ptr @.str.6, ptr %4, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !57
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.z

.thread:                                          ; preds = %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.y = inttoptr i64 %i.q to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.1.pre = load double, ptr %i.z, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread
  %.1 = phi double [ %.1.pre, %.thread ], [ %i.i, %bb.a ] ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !27
  %.not73 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.sroa.02.0.i = select i1 %.not73, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ac
  %i.ad = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %i.ae = extractvalue { i32, i64 } %i.ad, 0
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.z, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.ag = extractvalue { i32, i64 } %i.ad, 1
  %i.ah = bitcast i64 %i.ag to double             ; 3 uses
  %i.ai = fcmp uno double %.1, 0.000000e+00
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ak = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.aj, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 38) #12
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = or i64 %i.al, -844424930131968
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %i.an = fcmp oeq double %.1, +inf
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ap = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ao, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 40) #12
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = or i64 %i.aq, -844424930131968
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.as = fcmp oeq double %.1, -inf
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.au = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.at, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 42) #12
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = or i64 %i.av, -844424930131968
  br label %bb.z

bb.k:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.aa, align 8, !tbaa !27
  %.not74 = icmp eq i32 %i.ax, 0
  br i1 %.not74, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.k
  %i.ay = load ptr, ptr %2, align 8, !tbaa !32, !noalias !84
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.az, align 8, !tbaa !23
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -140737488355328
  %i.ba = icmp ne i64 %.mask.i, -1688849860263936
  %i.bb = fcmp olt double %i.ah, 0.000000e+00
  %i.bc = fcmp ogt double %i.ah, 1.000000e+02
  %i.bd = or i1 %i.bb, %i.bc
  %i.be = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %i.be, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit45, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, !prof !87

_ZN6hermes2vm11TwineChar16C2EPKc.exit45:          ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bf, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 48, ptr %i.bg, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bh, align 8, !tbaa !55
  store ptr @.str.7, ptr %5, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.bi, align 8, !tbaa !57
  %i.bj = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.z

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.k, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.bk = fptosi double %i.ah to i32              ; 6 uses
  %i.bl = fcmp olt double %.1, 0.000000e+00       ; 2 uses
  %i.bm = fneg double %.1
  %.2 = select i1 %i.bl, double %i.bm, double %.1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bo, ptr %6, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !68
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 32, ptr %i.bq, align 4, !tbaa !69
  %i.br = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.br, label %.preheader, label %bb.m

.preheader:                                       ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %.not77 = icmp slt i32 %i.bk, 0
  br i1 %.not77, label %.loopexit.thread, label %.lr.ph79

.lr.ph79:                                         ; preds = %.preheader, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.bs = phi i32 [ %i.bz, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ 0, %.preheader ] ; 2 uses
  %.04078 = phi i32 [ %i.ca, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ 0, %.preheader ]
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !69
  %.not.i = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.l, !prof !22

bb.l:                                             ; preds = %.lr.ph79
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.bo, i64 noundef 0, i64 noundef 1) #12
  %.pre.i = load i32, ptr %i.bp, align 8, !tbaa !68
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %.lr.ph79, %bb.l
  %i.bu = phi i32 [ %.pre.i, %bb.l ], [ %i.bs, %.lr.ph79 ]
  %i.bv = load ptr, ptr %6, align 8, !tbaa !67
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 48, ptr %i.bx, align 1
  %i.by = load i32, ptr %i.bp, align 8, !tbaa !68
  %i.bz = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.bz, ptr %i.bp, align 8, !tbaa !68
  %i.ca = add nuw nsw i32 %.04078, 1              ; 2 uses
  %.not = icmp sgt i32 %i.ca, %i.bk
  br i1 %.not, label %.loopexit, label %.lr.ph79, !llvm.loop !88

bb.m:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.cb = call ptr @dtoa_alloc_init(ptr noundef nonnull align 8 dereferenceable(1208) %7, i32 noundef 1200) #12 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 1200 ; 4 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !70
  %i.cd = load i32, ptr %i.aa, align 8, !tbaa !27
  %.not75 = icmp eq i32 %i.cd, 0
  br i1 %.not75, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit48.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit48

_ZNK6hermes2vm10NativeArgs6getArgEj.exit48:       ; preds = %bb.m
  %i.ce = load ptr, ptr %2, align 8, !tbaa !32, !noalias !89
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %.sroa.0.0.copyload.i47 = load i64, ptr %i.cf, align 8, !tbaa !23
  %.mask.i49 = and i64 %.sroa.0.0.copyload.i47, -140737488355328
  %i.cg = icmp eq i64 %.mask.i49, -1688849860263936
  br i1 %i.cg, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit48.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit48
  %i.ch = add nsw i32 %i.bk, 1                    ; 2 uses
  %i.ci = call ptr @dtoa_fixedpoint(ptr noundef %i.cb, double noundef %.2, i32 noundef 2, i32 noundef %i.ch, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !73
  call void @_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ci, ptr noundef %i.cj)
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !70
  call void @g_freedtoa(ptr noundef %i.ck, ptr noundef %i.ci) #12
  %i.cl = sext i32 %i.ch to i64                   ; 2 uses
  %i.cm = load i32, ptr %i.bp, align 8, !tbaa !68 ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = icmp ult i64 %i.cn, %i.cl
  br i1 %i.co, label %.lr.ph, label %.loopexit76

.lr.ph:                                           ; preds = %bb.n, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52
  %i.cp = phi i32 [ %i.cw, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52 ], [ %i.cm, %bb.n ] ; 2 uses
  %i.cq = load i32, ptr %i.bq, align 4, !tbaa !69
  %.not.i50 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i50, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52, label %bb.o, !prof !22

bb.o:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.bo, i64 noundef 0, i64 noundef 1) #12
  %.pre.i51 = load i32, ptr %i.bp, align 8, !tbaa !68
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52: ; preds = %.lr.ph, %bb.o
  %i.cr = phi i32 [ %.pre.i51, %bb.o ], [ %i.cp, %.lr.ph ]
  %i.cs = load ptr, ptr %6, align 8, !tbaa !67
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  store i8 48, ptr %i.cu, align 1
  %i.cv = load i32, ptr %i.bp, align 8, !tbaa !68
  %i.cw = add i32 %i.cv, 1                        ; 3 uses
  store i32 %i.cw, ptr %i.bp, align 8, !tbaa !68
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp ult i64 %i.cx, %i.cl
  br i1 %i.cy, label %.lr.ph, label %.loopexit76, !llvm.loop !92

_ZNK6hermes2vm10NativeArgs6getArgEj.exit48.thread: ; preds = %bb.m, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit48
  %i.cz = call ptr @g_dtoa(ptr noundef %i.cb, double noundef %.2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !73
  call void @_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.cz, ptr noundef %i.da)
  %i.db = load ptr, ptr %i.cc, align 8, !tbaa !70
  call void @g_freedtoa(ptr noundef %i.db, ptr noundef %i.cz) #12
  %i.dc = load i32, ptr %i.bp, align 8, !tbaa !68
  %i.dd = add i32 %i.dc, -1
  br label %.loopexit76

.loopexit76:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52, %bb.n, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit48.thread
  %.037 = phi i32 [ %i.dd, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit48.thread ], [ %i.bk, %bb.n ], [ %i.bk, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52 ]
  %i.de = load i32, ptr %i.a, align 4, !tbaa !3
  %i.df = add nsw i32 %i.de, -1
  %i.dg = load ptr, ptr %i.cc, align 8, !tbaa !70
  call void @dtoa_alloc_done(ptr noundef %i.dg) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %.loopexit76
  %.066 = phi i32 [ %i.df, %.loopexit76 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ] ; 2 uses
  %.138 = phi i32 [ %.037, %.loopexit76 ], [ %i.bk, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  %.not41 = icmp eq i32 %.138, 0
  br i1 %.not41, label %bb.p, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader, %.loopexit
  %.06694 = phi i32 [ %.066, %.loopexit ], [ 0, %.preheader ]
  %i.dh = load ptr, ptr %6, align 8, !tbaa !67
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 46, ptr %i.d, align 1, !tbaa !56
  %i.dj = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.di, ptr noundef nonnull align 1 dereferenceable(1) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.thread, %.loopexit
  %.06695 = phi i32 [ %.06694, %.loopexit.thread ], [ %.066, %.loopexit ] ; 2 uses
  %i.dk = icmp eq i32 %.06695, 0
  br i1 %i.dk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull @.str.8, i64 3)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %i.dl, align 8, !tbaa !93
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %8, align 8, !tbaa !96
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %6, ptr %i.dn, align 8, !tbaa !98
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef null, i64 noundef 0, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.9, ptr %i.do, align 8, !tbaa !100, !alias.scope !102
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiEEE, i64 16), ptr %9, align 8, !tbaa !96, !alias.scope !102
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %.06695, ptr %i.dp, align 8, !tbaa !105, !alias.scope !102
  %i.dq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dr = load ptr, ptr %6, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i8 45, ptr %i.e, align 1, !tbaa !56
  %i.ds = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dr, ptr noundef nonnull align 1 dereferenceable(1) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dt = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.du = load i32, ptr %i.bp, align 8, !tbaa !68 ; 2 uses
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %.not.i53 = icmp ult i32 %i.du, 65536
  br i1 %.not.i53, label %bb.v, label %bb.w, !prof !22

bb.v:                                             ; preds = %bb.u
  %i.dw = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.dt, i64 %i.dv) #12
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.dt, i64 %i.dv)
  %i.dx = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %i.dy = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !56
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.dw, %bb.v ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.ed = extractvalue { i32, i64 } %.pn.i, 0
  %i.ee = extractvalue { i32, i64 } %.pn.i, 1
  %i.ef = icmp eq i32 %i.ed, 0
  br i1 %i.ef, label %bb.x, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !30

bb.x:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #14
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  %i.eg = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.bo
  br i1 %i.eh, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  call void @free(ptr noundef %i.eg) #12
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit45, %bb.j, %bb.h, %bb.f, %bb.d, %bb.c
  %.sroa.065.2 = phi i32 [ %i.x, %bb.c ], [ 1, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ 1, %bb.f ], [ 1, %bb.h ], [ 1, %bb.j ], [ %i.bj, %_ZN6hermes2vm11TwineChar16C2EPKc.exit45 ], [ 0, %bb.d ]
  %.sroa.8.1 = phi i64 [ undef, %bb.c ], [ %i.ee, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ %i.am, %bb.f ], [ %i.ar, %bb.h ], [ %i.aw, %bb.j ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit45 ], [ undef, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.065.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.1, 1
  ret { i32, i64 } %.fca.1.insert
}

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm26numberPrototypeToPrecisionEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %.not.a = icmp eq i32 %i.af, 0
  br i1 %.not.a, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 8, !tbaa !23
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -140737488355328
  %i.ah = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.ah, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %bb.h

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.d, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.ai = fcmp uno double %.1, 0.000000e+00
  %i.aj = bitcast double %.1 to i64
  %.sroa.0.0.i75 = select i1 %i.ai, i64 9221120237041090560, i64 %i.aj, !prof !30 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 192 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !11 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.aq = icmp ult ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !11
  store i64 %.sroa.0.0.i75, ptr %i.an, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.as = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.al, i64 %.sroa.0.0.i75) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.an, %bb.e ], [ %i.as, %bb.f ]
  %i.at = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %.not125 = icmp eq ptr %i.at, inttoptr (i64 -1 to ptr)
  br i1 %.not125, label %bb.at, label %bb.g, !prof !30

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = or i64 %i.au, -844424930131968
  br label %bb.at

bb.h:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.aw = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ag) #12 ; 2 uses
  %i.ax = extractvalue { i32, i64 } %i.aw, 0
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.at, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  %i.az = extractvalue { i32, i64 } %i.aw, 1
  %i.ba = bitcast i64 %i.az to double             ; 3 uses
  %i.bb = fcmp uno double %.1, 0.000000e+00
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.bd = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bc, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 38) #12
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = or i64 %i.be, -844424930131968
  br label %bb.at

bb.k:                                             ; preds = %bb.i
  %i.bg = fcmp oeq double %.1, +inf
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.bi = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bh, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 40) #12
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = or i64 %i.bj, -844424930131968
  br label %bb.at

bb.m:                                             ; preds = %bb.k
  %i.bl = fcmp oeq double %.1, -inf
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.bn = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bm, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 42) #12
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = or i64 %i.bo, -844424930131968
  br label %bb.at

bb.o:                                             ; preds = %bb.m
  %i.bq = fcmp olt double %i.ba, 1.000000e+00
  %i.br = fcmp ogt double %i.ba, 1.000000e+02
  %or.cond = or i1 %i.bq, %i.br
  br i1 %or.cond, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit77, label %bb.p

_ZN6hermes2vm11TwineChar16C2EPKc.exit77:          ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bs, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.bt, align 8, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bu, align 8, !tbaa !55
  store ptr @.str.11, ptr %4, align 8, !tbaa !56
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bv, align 8, !tbaa !57
  %i.bw = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.at

bb.p:                                             ; preds = %bb.o
  %i.bx = fptosi double %i.ba to i32              ; 7 uses
  %i.by = fcmp olt double %.1, 0.000000e+00       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i8 0, i64 32, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ca, ptr %5, align 8, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  store i32 0, ptr %i.cb, align 8, !tbaa !68
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 32, ptr %i.cc, align 4, !tbaa !69
  %i.cd = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.cd, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.p
  %i.ce = icmp sgt i32 %i.bx, 0
  br i1 %i.ce, label %.lr.ph130, label %.thread122

.lr.ph130:                                        ; preds = %.preheader, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.cf = phi i32 [ %i.cm, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ 0, %.preheader ] ; 2 uses
  %.068129 = phi i32 [ %i.cn, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ 0, %.preheader ]
  %i.cg = load i32, ptr %i.cc, align 4, !tbaa !69
  %.not.i = icmp ult i32 %i.cf, %i.cg
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.q, !prof !22

bb.q:                                             ; preds = %.lr.ph130
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.ca, i64 noundef 0, i64 noundef 1) #12
  %.pre.i = load i32, ptr %i.cb, align 8, !tbaa !68
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %.lr.ph130, %bb.q
  %i.ch = phi i32 [ %.pre.i, %bb.q ], [ %i.cf, %.lr.ph130 ]
  %i.ci = load ptr, ptr %5, align 8, !tbaa !67
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  store i8 48, ptr %i.ck, align 1
  %i.cl = load i32, ptr %i.cb, align 8, !tbaa !68
  %i.cm = add i32 %i.cl, 1                        ; 3 uses
  store i32 %i.cm, ptr %i.cb, align 8, !tbaa !68
  %i.cn = add nuw nsw i32 %.068129, 1             ; 2 uses
  %exitcond132.not = icmp eq i32 %i.cn, %i.bx
  br i1 %exitcond132.not, label %.thread119, label %.lr.ph130, !llvm.loop !110

bb.r:                                             ; preds = %bb.p
  %i.co = fneg double %.1
  %.2 = select i1 %i.by, double %i.co, double %.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.cp = call ptr @dtoa_alloc_init(ptr noundef nonnull align 8 dereferenceable(1208) %6, i32 noundef 1200) #12 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 1200 ; 3 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !70
  %i.cr = call ptr @dtoa_fixedpoint(ptr noundef %i.cp, double noundef %.2, i32 noundef 2, i32 noundef %i.bx, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !73
  call void @_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.cr, ptr noundef %i.cs)
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !70
  call void @g_freedtoa(ptr noundef %i.ct, ptr noundef %i.cr) #12
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !70
  call void @dtoa_alloc_done(ptr noundef %i.cu) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.cv = sext i32 %i.bx to i64                   ; 2 uses
  %i.cw = load i32, ptr %i.cb, align 8, !tbaa !68 ; 3 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp ult i64 %i.cx, %i.cv
  br i1 %i.cy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80
  %i.cz = phi i32 [ %i.dg, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80 ], [ %i.cw, %bb.r ] ; 2 uses
  %i.da = load i32, ptr %i.cc, align 4, !tbaa !69
  %.not.i78 = icmp ult i32 %i.cz, %i.da
  br i1 %.not.i78, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80, label %bb.s, !prof !22

bb.s:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.ca, i64 noundef 0, i64 noundef 1) #12
  %.pre.i79 = load i32, ptr %i.cb, align 8, !tbaa !68
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80: ; preds = %.lr.ph, %bb.s
  %i.db = phi i32 [ %.pre.i79, %bb.s ], [ %i.cz, %.lr.ph ]
  %i.dc = load ptr, ptr %5, align 8, !tbaa !67
  %i.dd = zext i32 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  store i8 48, ptr %i.de, align 1
  %i.df = load i32, ptr %i.cb, align 8, !tbaa !68
  %i.dg = add i32 %i.df, 1                        ; 4 uses
  store i32 %i.dg, ptr %i.cb, align 8, !tbaa !68
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp ult i64 %i.dh, %i.cv
  br i1 %i.di, label %.lr.ph, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80, %bb.r
  %.lcssa = phi i32 [ %i.cw, %bb.r ], [ %i.dg, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80 ] ; 2 uses
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !3   ; 7 uses
  %i.dk = add nsw i32 %i.dj, -1                   ; 4 uses
  %10 = icmp sgt i32 %i.dj, -6
  %.not = icmp slt i32 %i.dk, %i.bx
  %or.cond72 = select i1 %10, i1 %.not, i1 false
  br i1 %or.cond72, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.dl = icmp ugt i32 %.lcssa, 1
  br i1 %i.dl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dm = load ptr, ptr %5, align 8, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 46, ptr %i.d, align 1, !tbaa !56
  %i.do = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.dn, ptr noundef nonnull align 1 dereferenceable(1) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dp = icmp eq i32 %i.dk, 0
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull @.str.8, i64 3)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.dq, align 8, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !96
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %5, ptr %i.ds, align 8, !tbaa !98
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.9, ptr %i.dt, align 8, !tbaa !100, !alias.scope !112
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiEEE, i64 16), ptr %8, align 8, !tbaa !96, !alias.scope !112
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.dk, ptr %i.du, align 8, !tbaa !105, !alias.scope !112
  %i.dv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.by, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.dw = load ptr, ptr %5, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i8 45, ptr %i.e, align 1, !tbaa !56
  %i.dx = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.dw, ptr noundef nonnull align 1 dereferenceable(1) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %bb.y
  %i.dy = load ptr, ptr %5, align 8, !tbaa !67
  %i.dz = load i32, ptr %i.cb, align 8, !tbaa !68
  %i.ea = zext i32 %i.dz to i64
  %i.eb = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.dy, i64 %i.ea) ; 2 uses
  %i.ec = extractvalue { i32, i64 } %i.eb, 0
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.aa, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !30

bb.aa:                                            ; preds = %.critedge
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #14
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit81

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ee = icmp eq i32 %i.dj, %i.bx
  br i1 %i.ee, label %bb.ac, label %bb.ag

.thread119:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.ef = icmp eq i32 %i.bx, 1
  br i1 %i.ef, label %bb.ac, label %.thread122

bb.ac:                                            ; preds = %.thread119, %bb.ab
  %i.eg = phi i32 [ %i.cm, %.thread119 ], [ %.lcssa, %bb.ab ]
  %.pre135.a = load ptr, ptr %5, align 8, !tbaa !67 ; 2 uses
  br i1 %i.by, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i8 45, ptr %i.f, align 1, !tbaa !56
  %i.eh = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %.pre135.a, ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %.pre134 = load ptr, ptr %5, align 8, !tbaa !67
  %.pre136 = load i32, ptr %i.cb, align 8, !tbaa !68
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ei = phi i32 [ %.pre136, %bb.ad ], [ %i.eg, %bb.ac ]
  %i.ej = phi ptr [ %.pre134, %bb.ad ], [ %.pre135.a, %bb.ac ]
  %i.ek = zext i32 %i.ei to i64
  %i.el = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.ej, i64 %i.ek) ; 2 uses
  %i.em = extractvalue { i32, i64 } %i.el, 0
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.af, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit81, !prof !30

bb.af:                                            ; preds = %bb.ae
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #14
  unreachable

bb.ag:                                            ; preds = %bb.ab
  %i.eo = icmp sgt i32 %i.dj, 0
  br i1 %i.eo, label %.thread122, label %bb.ak

.thread122:                                       ; preds = %.preheader, %.thread119, %bb.ag
  %.0114121124 = phi i32 [ %i.dk, %bb.ag ], [ 0, %.thread119 ], [ 0, %.preheader ]
  %i.ep = load ptr, ptr %5, align 8, !tbaa !67
  %i.eq = zext nneg i32 %.0114121124 to i64
  %i.er = getelementptr i8, ptr %i.ep, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i8 46, ptr %i.g, align 1, !tbaa !56
  %i.et = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.es, ptr noundef nonnull align 1 dereferenceable(1) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br i1 %i.by, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread122
  %i.eu = load ptr, ptr %5, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i8 45, ptr %i.h, align 1, !tbaa !56
  %i.ev = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.eu, ptr noundef nonnull align 1 dereferenceable(1) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread122
  %i.ew = load ptr, ptr %5, align 8, !tbaa !67
  %i.ex = load i32, ptr %i.cb, align 8, !tbaa !68
  %i.ey = zext i32 %i.ex to i64
  %i.ez = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.ew, i64 %i.ey) ; 2 uses
  %i.fa = extractvalue { i32, i64 } %i.ez, 0
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.aj, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit81, !prof !30

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #14
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @_ZN4llvh11SmallStringILj32EEC2ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr nonnull @.str.12, i64 2)
  %i.fc = sub nsw i32 2, %i.dj
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = load i32, ptr %i.cb, align 8, !tbaa !68
  %i.ff = zext i32 %i.fe to i64
  %i.fg = add nuw nsw i64 %i.ff, %i.fd            ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !69
  %i.fj = zext i32 %i.fi to i64
  %i.fk = icmp samesign ugt i64 %i.fg, %i.fj
  br i1 %i.fk, label %bb.al, label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

bb.al:                                            ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.fl, i64 noundef %i.fg, i64 noundef 1) #12
  br label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

_ZN4llvh15SmallVectorImplIcE7reserveEm.exit:      ; preds = %bb.ak, %bb.al
  %i.fm = sub nsw i32 0, %i.dj
  %i.fn = icmp slt i32 %i.dj, 0
  br i1 %i.fn, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre = load i32, ptr %i.fo, align 8, !tbaa !68
  br label %bb.am

._crit_edge128:                                   ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85, %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  call void @_ZN4llvh11SmallStringILj32EE6appendERKNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br i1 %i.by, label %bb.ao, label %bb.ap

bb.am:                                            ; preds = %.lr.ph127, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85
  %i.fq = phi i32 [ %.pre, %.lr.ph127 ], [ %i.fx, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85 ] ; 2 uses
  %.067126 = phi i32 [ 0, %.lr.ph127 ], [ %i.fy, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85 ]
  %i.fr = load i32, ptr %i.fh, align 4, !tbaa !69
  %.not.i83 = icmp ult i32 %i.fq, %i.fr
  br i1 %.not.i83, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85, label %bb.an, !prof !22

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.fp, i64 noundef 0, i64 noundef 1) #12
  %.pre.i84 = load i32, ptr %i.fo, align 8, !tbaa !68
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85: ; preds = %bb.am, %bb.an
  %i.fs = phi i32 [ %.pre.i84, %bb.an ], [ %i.fq, %bb.am ]
  %i.ft = load ptr, ptr %9, align 8, !tbaa !67
  %i.fu = zext i32 %i.fs to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fu
end_hunk_1
