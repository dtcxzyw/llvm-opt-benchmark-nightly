inline.NumInlined: 3100
inline.NumDeleted: 1440
begin_hunk_0_@_ZN4node10contextify17ContextifyContext33IndexedPropertyEnumeratorCallbackERKN2v820PropertyCallbackInfoINS2_5ArrayEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %1 = alloca %"struct.node::ArrayIterationData", align 8 ; 5 uses
  %2 = alloca %"class.v8::HandleScope", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.455", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 560
  %i.e = inttoptr i64 %i.d to ptr                 ; 5 uses
  store ptr %i.b, ptr %2, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = tail call ptr @_ZN2v86Object18GetCreationContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.n) #28 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.o) #28 ; 0 uses
  %i.q = load i64, ptr %i.o, align 8
  %i.r = add i64 %i.q, 47
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 311
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 8
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = add i64 %i.ai, 560
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.b, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.ap = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.ae) #28
  br label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit

_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i16 = phi ptr [ %i.ap, %bb.b ], [ %i.al, %bb.a ] ; 4 uses
  %i.aq = ptrtoint ptr %.0.i.i.i16 to i64
  %i.ar = add i64 %i.aq, 8
  %i.as = inttoptr i64 %i.ar to ptr
  store ptr %i.as, ptr %i.ak, align 8
  store i64 %i.ah, ptr %.0.i.i.i16, align 8
  %.pr = load ptr, ptr %i.y, align 8
  %i.at = icmp eq ptr %.pr, null
  br i1 %i.at, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit
  %i.au = tail call ptr @_ZNK4node10contextify17ContextifyContext7sandboxEv(ptr noundef nonnull align 8 dereferenceable(56) %i.x)
  %i.av = tail call ptr @_ZN2v86Object16GetPropertyNamesENS_5LocalINS_7ContextEEENS_17KeyCollectionModeENS_14PropertyFilterENS_11IndexFilterENS_17KeyConversionModeE(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr nonnull %.0.i.i.i16, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 1) #28 ; 5 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.aw = tail call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.av) #28
  %i.ax = zext i32 %i.aw to i64
  call void @_ZNSt6vectorIN2v86GlobalINS0_5ValueEEESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %3, ptr %1, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #28
  store ptr %i.az, ptr %i.ay, align 8
  %i.ba = call i8 @_ZN2v85Array7IterateENS_5LocalINS_7ContextEEEPFNS0_14CallbackResultEjNS1_INS_5ValueEEEPvES7_(ptr noundef nonnull align 1 dereferenceable(1) %i.av, ptr nonnull %.0.i.i.i16, ptr noundef nonnull @_ZN4node16PushItemToVectorEjN2v85LocalINS0_5ValueEEEPv, ptr noundef nonnull %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.preheader, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

.preheader:                                       ; preds = %bb.d
  %i.bc = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.av) #28
  %.not50 = icmp eq i32 %i.bc, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit
  %i.bd = ptrtoint ptr %.sroa.8.1 to i64
  %i.be = ptrtoint ptr %.sroa.13.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.022.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.022.1, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.8.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.bd, %._crit_edge.loopexit ]
  %.sroa.13.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.be, %._crit_edge.loopexit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.a, align 8
  %i.bh = ptrtoint ptr %.sroa.022.0.lcssa to i64  ; 2 uses
  %i.bi = sub i64 %.sroa.8.0.lcssa, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.bg, ptr noundef %.sroa.022.0.lcssa, i64 noundef %i.bj) #28 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.e, label %_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit, !prof !5

bb.e:                                             ; preds = %._crit_edge
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = add i64 %i.bn, 648
  %i.bp = inttoptr i64 %i.bo to ptr
  br label %_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %._crit_edge, %bb.e
  %storemerge.in = phi ptr [ %i.bp, %bb.e ], [ %i.bk, %._crit_edge ]
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.bf, align 8
  %.not.i.i.i.i = icmp eq ptr %.sroa.022.0.lcssa, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit
  %i.bq = sub i64 %.sroa.13.0.lcssa, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.0.lcssa, i64 noundef %i.bq) #31
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

.lr.ph:                                           ; preds = %.preheader, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit ], [ 0, %.preheader ] ; 2 uses
  %.sroa.13.046 = phi ptr [ %.sroa.13.1, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit ], [ null, %.preheader ] ; 6 uses
  %.sroa.8.045 = phi ptr [ %.sroa.8.1, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit ], [ null, %.preheader ] ; 4 uses
  %.sroa.022.044 = phi ptr [ %.sroa.022.1, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit ], [ null, %.preheader ] ; 9 uses
  %i.br = load ptr, ptr %3, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !28, !noundef !28
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bw = load ptr, ptr %i.h, align 8
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.g, label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit.i, !prof !5

bb.g:                                             ; preds = %.lr.ph
  %i.by = call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.b) #28
  br label %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit.i

_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit.i: ; preds = %bb.g, %.lr.ph
  %.0.i.i.i = phi ptr [ %i.by, %bb.g ], [ %i.bv, %.lr.ph ] ; 3 uses
  %i.bz = ptrtoint ptr %.0.i.i.i to i64           ; 3 uses
  %i.ca = add i64 %i.bz, 8
  %i.cb = inttoptr i64 %i.ca to ptr
  store ptr %i.cb, ptr %i.e, align 8
  store i64 %i.bu, ptr %.0.i.i.i, align 8
  %i.cc = call noundef zeroext i1 @_ZNK2v85Value8IsNumberEv(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i.i) #28
  br i1 %i.cc, label %bb.h, label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit

bb.h:                                             ; preds = %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit.i
  %.not.i.i.i17 = icmp eq ptr %.sroa.8.045, %.sroa.13.046
  br i1 %.not.i.i.i17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.bz, ptr %.sroa.8.045, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = ptrtoint ptr %.sroa.13.046 to i64       ; 2 uses
  %i.cf = ptrtoint ptr %.sroa.022.044 to i64      ; 3 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 4 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.k, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #29
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #30 ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i64 %i.bz, ptr %i.cp, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.022.044, %.sroa.13.046
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cq = ptrtoaddr ptr %i.co to i64
  %4 = sub i64 %i.ce, %i.cf
  %5 = add i64 %4, -8                             ; 2 uses
  %i.cr = lshr i64 %5, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  %i.ct = sub i64 %i.cq, %i.cf
  %diff.check = icmp ult i64 %i.ct, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cs, 4611686018427387900     ; 3 uses
  %i.cu = shl i64 %n.vec, 3                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.co, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %.sroa.022.044, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.co, i64 %i.cx ; 2 uses
  %next.gep64 = getelementptr i8, ptr %.sroa.022.044, i64 %i.cx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.cy = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep64, align 8, !alias.scope !47, !noalias !44
  %wide.load65 = load <2 x i64>, ptr %i.cy, align 8, !alias.scope !47, !noalias !44
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !44, !noalias !47
  store <2 x i64> %wide.load65, ptr %i.cz, align 8, !alias.scope !44, !noalias !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader67

.lr.ph.i.i.i.i.i.i.i.preheader67:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.022.044, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader67, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader67 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader67 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.db = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !47, !noalias !44
  store i64 %i.db, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !44, !noalias !47
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dc, %.sroa.13.046
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !52

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.co, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cv, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.022.044, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.044, i64 noundef %i.cg) #31
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit: ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.i, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit.i
  %.sroa.022.1 = phi ptr [ %.sroa.022.044, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit.i ], [ %i.co, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.022.044, %bb.i ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.045, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit.i ], [ %i.de, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %i.cd, %bb.i ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.046, %_ZN2v89LocalBaseINS_5ValueEE3NewEPNS_7IsolateEm.exit.i ], [ %i.df, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.13.046, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dg = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.av) #28
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp samesign ult i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !53

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %bb.f, %_ZN2v811ReturnValueINS_5ArrayEE3SetIS1_EEvNS_5LocalIT_EE.exit, %bb.d
  %i.dj = load ptr, ptr %3, align 8               ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2v86GlobalINS0_5ValueEEEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, %_ZSt8_DestroyIN2v86GlobalINS0_5ValueEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.do, %_ZSt8_DestroyIN2v86GlobalINS0_5ValueEEEEvPT_.exit.i.i.i ], [ %i.dj, %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit ] ; 3 uses
  %i.dm = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZSt8_DestroyIN2v86GlobalINS0_5ValueEEEEvPT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.dm) #28
  store ptr null, ptr %.05.i.i.i, align 8
  br label %_ZSt8_DestroyIN2v86GlobalINS0_5ValueEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2v86GlobalINS0_5ValueEEEEvPT_.exit.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.do, %i.dl
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPN2v86GlobalINS0_5ValueEEEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !54

_ZSt8_DestroyIPN2v86GlobalINS0_5ValueEEEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2v86GlobalINS0_5ValueEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPN2v86GlobalINS0_5ValueEEEEvT_S5_.exit.i

_ZSt8_DestroyIPN2v86GlobalINS0_5ValueEEEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN2v86GlobalINS0_5ValueEEEEvT_S5_.exitthread-pre-split.i, %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit
  %i.dp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2v86GlobalINS0_5ValueEEEEvT_S5_.exitthread-pre-split.i ], [ %i.dj, %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2v86GlobalINS0_5ValueEEESaIS3_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN2v86GlobalINS0_5ValueEEEEvT_S5_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #31
  br label %_ZNSt6vectorIN2v86GlobalINS0_5ValueEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v86GlobalINS0_5ValueEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2v86GlobalINS0_5ValueEEEEvT_S5_.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pre = load ptr, ptr %2, align 8
  br label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread

_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread: ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, %_ZNSt6vectorIN2v86GlobalINS0_5ValueEEESaIS3_EED2Ev.exit, %bb.c, %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit
  %i.dv = phi ptr [ %i.b, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i ], [ %.pre, %_ZNSt6vectorIN2v86GlobalINS0_5ValueEEESaIS3_EED2Ev.exit ], [ %i.b, %bb.c ], [ %i.b, %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit ] ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.o, !prof !5

bb.o:                                             ; preds = %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = add i64 %i.dx, 560
  %i.dz = inttoptr i64 %i.dy to ptr               ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load ptr, ptr %i.g, align 8
  store ptr %i.eb, ptr %i.dz, align 8
  store ptr %i.ea, ptr %i.g, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = add nsw i32 %i.ed, -1
  store i32 %i.ee, ptr %i.ec, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.p, !prof !29

bb.p:                                             ; preds = %bb.o
  store ptr %i.eh, ptr %i.ef, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.dv) #28
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i8 @_ZN4node10contextify17ContextifyContext30IndexedPropertyDefinerCallbackEjRKN2v818PropertyDescriptorERKNS2_20PropertyCallbackInfoIvEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = tail call ptr @_ZN2v86Object18GetCreationContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a) #28 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #28
  %i.d = icmp ult i32 %i.c, 40
  br i1 %i.d, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i, !prof !5

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8
  %i.f = add i64 %i.e, 47
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, 327
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i.i, label %_ZN4node10contextify17ContextifyContext3GetIvEEPS1_RKN2v820PropertyCallbackInfoIT_EE.exit, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread

_ZN4node10contextify17ContextifyContext3GetIvEEPS1_RKN2v820PropertyCallbackInfoIT_EE.exit: ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.n = add i64 %i.h, 311
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit

_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit: ; preds = %_ZN4node10contextify17ContextifyContext3GetIvEEPS1_RKN2v820PropertyCallbackInfoIT_EE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4node10contextify17ContextifyContext19IsStillInitializingEPKS1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 176
end_hunk_0
begin_hunk_1_@_ZN4node10contextify18ContextifyFunction15CompileFunctionERKN2v820FunctionCallbackInfoINS2_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  tail call void @abort() #29
  unreachable

bb.bm:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit92
  %i.mk = load i64, ptr %i.s, align 8
  %i.ml = trunc i64 %i.mk to i32                  ; 2 uses
  %.not.i89 = icmp sgt i32 %i.ml, 8
  br i1 %.not.i89, label %bb.bn, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit90.thread

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit90.thread: ; preds = %bb.bm
  %i.mm = load ptr, ptr %0, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = add i64 %i.mp, 648
  %i.mr = inttoptr i64 %i.mq to ptr
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 64
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit90

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit90: ; preds = %bb.bn, %_ZNK2v85Value16QuickIsUndefinedEv.exit159
  %.pre-phi572 = phi i32 [ %i.ml, %bb.bn ], [ %.pre-phi571603, %_ZNK2v85Value16QuickIsUndefinedEv.exit159 ]
  %.sroa.0227.0 = phi ptr [ %i.mu, %bb.bn ], [ null, %_ZNK2v85Value16QuickIsUndefinedEv.exit159 ] ; 2 uses
  %.not.i87 = icmp sgt i32 %.pre-phi572, 9
  br i1 %.not.i87, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit90.thread, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit90
  %.sroa.0227.0613 = phi ptr [ %i.mr, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit90.thread ], [ %.sroa.0227.0, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit90 ]
  %i.mv = load ptr, ptr %0, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = add i64 %i.my, 648
  %i.na = inttoptr i64 %i.mz to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit88

bb.bp:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit90
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 72
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit88

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit88: ; preds = %bb.bo, %bb.bp
  %.sroa.0227.0612 = phi ptr [ %.sroa.0227.0, %bb.bp ], [ %.sroa.0227.0613, %bb.bo ] ; 4 uses
  %.sroa.0263.0 = phi ptr [ %i.nd, %bb.bp ], [ %i.na, %bb.bo ]
  %i.ne = tail call noundef zeroext i1 @_ZNK2v85Value8IsSymbolEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0263.0) #28
  br i1 %i.ne, label %bb.br, label %bb.bq, !prof !29

bb.bq:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit88
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node10contextify18ContextifyFunction15CompileFunctionERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args_9) #28
  tail call void @abort() #29
  unreachable

bb.br:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit88
  %i.nf = load i64, ptr %i.s, align 8
  %i.ng = trunc i64 %i.nf to i32
  %.not.i = icmp sgt i32 %i.ng, 9
  br i1 %.not.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nh = load ptr, ptr %0, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = ptrtoint ptr %i.nj to i64
  %i.nl = add i64 %i.nk, 648
  %i.nm = inttoptr i64 %i.nl to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.bt:                                            ; preds = %bb.br
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 72
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.bs, %bb.bt
  %.sroa.0261.0 = phi ptr [ %i.np, %bb.bt ], [ %i.nm, %bb.bs ] ; 2 uses
  %i.nq = ptrtoint ptr %.sroa.0261.0 to i64
  %i.nr = icmp eq ptr %.sroa.0246.0598, null
  br i1 %i.nr, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.ns = tail call ptr @_ZN2v815ArrayBufferView6BufferEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0246.0598) #28
  %i.nt = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ns) #28
  %i.nu = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 2 uses
  %i.nv = tail call noundef i64 @_ZN2v815ArrayBufferView10ByteOffsetEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0246.0598) #28
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nv
  %i.nx = tail call noundef i64 @_ZN2v815ArrayBufferView10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0246.0598) #28
  %i.ny = trunc i64 %i.nx to i32
  tail call void @_ZN2v814ScriptCompiler10CachedDataC1EPKhiNS1_12BufferPolicyE(ptr noundef nonnull align 8 dereferenceable(20) %i.nu, ptr noundef %i.nw, i32 noundef %i.ny, i32 noundef 0) #28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %.0 = phi ptr [ null, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit ], [ %i.nu, %bb.bu ] ; 2 uses
  %i.nz = tail call ptr @_ZN4node6loader10ModuleWrap21GetHostDefinedOptionsEPN2v87IsolateENS2_5LocalINS2_6SymbolEEE(ptr noundef %i.o, ptr %.sroa.0261.0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %.sroa.0301.0, ptr %1, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.ck, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.di, ptr %i.ob, align 4
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 1, ptr %i.oc, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 -1, ptr %i.od, align 4
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr null, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.nz, ptr %i.of, align 8
  call void @_ZNK2v812ScriptOrigin24VerifyHostDefinedOptionsEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %.sroa.0305.0493, ptr %2, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i143 = load ptr, ptr %1, align 8
  store ptr %.sroa.0.0.copyload.i143, ptr %i.og, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.oi = load <2 x i32>, ptr %i.oa, align 8
  store <2 x i32> %i.oi, ptr %i.oh, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i160 = load i32, ptr %i.oc, align 8
  store i32 %.sroa.0.0.copyload.i160, ptr %i.oj, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ol = load <2 x ptr>, ptr %i.oe, align 8
  store <2 x ptr> %i.ol, ptr %i.ok, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %.0, ptr %i.om, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.on, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, i8 -1, i64 16, i1 false)
  %.not78 = icmp ne ptr %.0, null
  %. = zext i1 %.not78 to i32
  call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %storemerge) #28
  %i.op = icmp eq ptr %.sroa.0233.0605, null
  br i1 %i.op, label %.critedge82, label %.preheader511

.preheader511:                                    ; preds = %bb.bv
  %i.oq = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0233.0605) #28
  %.not79533.not = icmp eq i32 %i.oq, 0
  br i1 %.not79533.not, label %.critedge82, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader511, %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit
  %.074537 = phi i32 [ %i.pv, %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit ], [ 0, %.preheader511 ] ; 2 uses
  %.sroa.14214.0536 = phi ptr [ %.sroa.14214.4, %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit ], [ null, %.preheader511 ] ; 6 uses
  %.sroa.8210.0535 = phi ptr [ %.sroa.8210.3, %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit ], [ null, %.preheader511 ] ; 3 uses
  %.sroa.0206.0534 = phi ptr [ %.sroa.0206.4, %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit ], [ null, %.preheader511 ] ; 9 uses
  %i.or = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0233.0605, ptr %.sroa.0.0.copyload.i.i.i, i32 noundef %.074537) #28 ; 3 uses
  %i.os = ptrtoint ptr %i.or to i64               ; 2 uses
  %.not508 = icmp eq ptr %i.or, null
  br i1 %.not508, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph
  %i.ot = call noundef zeroext i1 @_ZNK2v85Value8IsObjectEv(ptr noundef nonnull align 1 dereferenceable(1) %i.or) #28
  br i1 %i.ot, label %bb.by, label %bb.bx, !prof !29

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node10contextify18ContextifyFunction15CompileFunctionERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args__10_) #28
  call void @abort() #29
  unreachable

bb.by:                                            ; preds = %bb.bw
  %.not.i.i.i164 = icmp eq ptr %.sroa.8210.0535, %.sroa.14214.0536
  br i1 %.not.i.i.i164, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i64 %i.os, ptr %.sroa.8210.0535, align 8
  br label %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit

bb.ca:                                            ; preds = %bb.by
  %i.ou = ptrtoint ptr %.sroa.14214.0536 to i64   ; 2 uses
  %i.ov = ptrtoint ptr %.sroa.0206.0534 to i64    ; 3 uses
  %i.ow = sub i64 %i.ou, %i.ov                    ; 4 uses
  %i.ox = icmp eq i64 %i.ow, 9223372036854775800
  br i1 %i.ox, label %bb.cb, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #29
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ca
  %i.oy = ashr exact i64 %i.ow, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.oy, i64 1)
  %i.oz = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.oy ; 2 uses
  %i.pa = icmp ult i64 %i.oz, %i.oy
  %i.pb = call i64 @llvm.umin.i64(i64 %i.oz, i64 1152921504606846975)
  %i.pc = select i1 %i.pa, i64 1152921504606846975, i64 %i.pb ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.pc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.pd = shl nuw nsw i64 %i.pc, 3
  %i.pe = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pd) #30 ; 8 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.ow
  store i64 %i.os, ptr %i.pf, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0206.0534, %.sroa.14214.0536
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.pg = ptrtoaddr ptr %i.pe to i64
  %6 = sub i64 %i.ou, %i.ov
  %7 = add i64 %6, -8                             ; 2 uses
  %i.ph = lshr i64 %7, 3
  %i.pi = add nuw nsw i64 %i.ph, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 24
  %i.pj = sub i64 %i.pg, %i.ov
  %diff.check = icmp ult i64 %i.pj, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader715, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.pi, 4611686018427387900     ; 3 uses
  %i.pk = shl i64 %n.vec, 3                       ; 2 uses
  %i.pl = getelementptr i8, ptr %i.pe, i64 %i.pk  ; 2 uses
  %i.pm = getelementptr i8, ptr %.sroa.0206.0534, i64 %i.pk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.pe, i64 %i.pn ; 2 uses
  %next.gep644 = getelementptr i8, ptr %.sroa.0206.0534, i64 %i.pn ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.po = getelementptr i8, ptr %next.gep644, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep644, align 8, !alias.scope !74, !noalias !71
  %wide.load645 = load <2 x i64>, ptr %i.po, align 8, !alias.scope !74, !noalias !71
  %i.pp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !71, !noalias !74
  store <2 x i64> %wide.load645, ptr %i.pp, align 8, !alias.scope !71, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pq = icmp eq i64 %index.next, %n.vec
  br i1 %i.pq, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pi, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader715

.lr.ph.i.i.i.i.i.i.i.preheader715:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.pe, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.pl, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0206.0534, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.pm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader715, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.pt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader715 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ps, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader715 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.pr = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !74, !noalias !71
  store i64 %i.pr, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !71, !noalias !74
  %i.ps = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ps, %.sroa.14214.0536
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.pe, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.pl, %middle.block ], [ %i.pt, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.0206.0534, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.0534, i64 noundef %i.ow) #31
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.cc, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %i.pc
  br label %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit

_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit: ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.bz
  %.sroa.0206.4 = phi ptr [ %i.pe, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.0206.0534, %bb.bz ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.8210.0535, %bb.bz ]
  %.sroa.14214.4 = phi ptr [ %i.pu, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.14214.0536, %bb.bz ] ; 2 uses
  %.sroa.8210.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.pv = add nuw i32 %.074537, 1                 ; 2 uses
  %i.pw = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0233.0605) #28
  %.not79 = icmp ult i32 %i.pv, %i.pw
  br i1 %.not79, label %.lr.ph, label %.critedge82, !llvm.loop !78

.critedge82:                                      ; preds = %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit, %.preheader511, %bb.bv
  %.sroa.0206.2 = phi ptr [ null, %bb.bv ], [ null, %.preheader511 ], [ %.sroa.0206.4, %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit ] ; 7 uses
  %.sroa.8210.2 = phi ptr [ null, %bb.bv ], [ null, %.preheader511 ], [ %.sroa.8210.3, %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit ] ; 3 uses
  %.sroa.14214.2 = phi ptr [ null, %bb.bv ], [ null, %.preheader511 ], [ %.sroa.14214.4, %_ZN2v811LocalVectorINS_6ObjectEE9push_backERKNS_5LocalIS1_EE.exit ] ; 2 uses
  %i.px = icmp eq ptr %.sroa.0227.0612, null
  br i1 %i.px, label %.critedge86, label %.preheader

.preheader:                                       ; preds = %.critedge82
  %i.py = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0227.0612) #28
  %.not80540.not = icmp eq i32 %i.py, 0
  br i1 %.not80540.not, label %.critedge86, label %.lr.ph545

.lr.ph545:                                        ; preds = %.preheader, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit
  %.076544 = phi i32 [ %i.rm, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ], [ 0, %.preheader ] ; 2 uses
  %.sroa.14.0543 = phi ptr [ %.sroa.14.4, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ], [ null, %.preheader ] ; 6 uses
  %.sroa.8.0542 = phi ptr [ %.sroa.8.3, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ], [ null, %.preheader ] ; 3 uses
  %.sroa.0195.0541 = phi ptr [ %.sroa.0195.4, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ], [ null, %.preheader ] ; 9 uses
  %i.pz = call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0227.0612, ptr %.sroa.0.0.copyload.i.i.i, i32 noundef %.076544) #28 ; 3 uses
  %i.qa = ptrtoint ptr %i.pz to i64               ; 2 uses
  %.not509 = icmp eq ptr %i.pz, null
  br i1 %.not509, label %.critedge84, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph545
  %i.qb = load i64, ptr %i.pz, align 8            ; 2 uses
  %i.qc = and i64 %i.qb, 3
  %i.qd = icmp eq i64 %i.qc, 1
  br i1 %i.qd, label %_ZNK2v85Value13QuickIsStringEv.exit148, label %_ZNK2v85Value13QuickIsStringEv.exit148.thread, !prof !55

_ZNK2v85Value13QuickIsStringEv.exit148:           ; preds = %bb.cd
  %i.qe = add nsw i64 %i.qb, -1
  %i.qf = inttoptr i64 %i.qe to ptr
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = add i64 %i.qg, 11
  %i.qi = inttoptr i64 %i.qh to ptr
  %i.qj = load i16, ptr %i.qi, align 2
  %i.qk = icmp ult i16 %i.qj, 128
  br i1 %i.qk, label %bb.ce, label %_ZNK2v85Value13QuickIsStringEv.exit148.thread, !prof !41

_ZNK2v85Value13QuickIsStringEv.exit148.thread:    ; preds = %bb.cd, %_ZNK2v85Value13QuickIsStringEv.exit148
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node10contextify18ContextifyFunction15CompileFunctionERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args__11_) #28
  call void @abort() #29
  unreachable

bb.ce:                                            ; preds = %_ZNK2v85Value13QuickIsStringEv.exit148
  %.not.i.i.i165 = icmp eq ptr %.sroa.8.0542, %.sroa.14.0543
  br i1 %.not.i.i.i165, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i64 %i.qa, ptr %.sroa.8.0542, align 8
  br label %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit

bb.cg:                                            ; preds = %bb.ce
  %i.ql = ptrtoint ptr %.sroa.14.0543 to i64      ; 2 uses
  %i.qm = ptrtoint ptr %.sroa.0195.0541 to i64    ; 3 uses
  %i.qn = sub i64 %i.ql, %i.qm                    ; 4 uses
  %i.qo = icmp eq i64 %i.qn, 9223372036854775800
  br i1 %i.qo, label %bb.ch, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #29
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.cg
  %i.qp = ashr exact i64 %i.qn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i166 = call i64 @llvm.umax.i64(i64 %i.qp, i64 1)
  %i.qq = add nsw i64 %.sroa.speculated.i.i.i.i.i166, %i.qp ; 2 uses
  %i.qr = icmp ult i64 %i.qq, %i.qp
  %i.qs = call i64 @llvm.umin.i64(i64 %i.qq, i64 1152921504606846975)
  %i.qt = select i1 %i.qr, i64 1152921504606846975, i64 %i.qs ; 3 uses
  %.not.i.i.i.i.i167 = icmp ne i64 %i.qt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i167)
  %i.qu = shl nuw nsw i64 %i.qt, 3
  %i.qv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #30 ; 8 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qn
  store i64 %i.qa, ptr %i.qw, align 8
  %.not10.i.i.i.i.i.i.i168 = icmp eq ptr %.sroa.0195.0541, %.sroa.14.0543
  br i1 %.not10.i.i.i.i.i.i.i168, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i169.preheader

.lr.ph.i.i.i.i.i.i.i169.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.qx = ptrtoaddr ptr %i.qv to i64
  %8 = sub i64 %i.ql, %i.qm
  %9 = add i64 %8, -8                             ; 2 uses
  %i.qy = lshr i64 %9, 3
  %i.qz = add nuw nsw i64 %i.qy, 1                ; 2 uses
  %min.iters.check650 = icmp ult i64 %9, 24
  %i.ra = sub i64 %i.qx, %i.qm
  %diff.check648 = icmp ult i64 %i.ra, 32
  %or.cond701 = or i1 %min.iters.check650, %diff.check648
  br i1 %or.cond701, label %.lr.ph.i.i.i.i.i.i.i169.preheader707, label %vector.ph651

vector.ph651:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i169.preheader
  %n.vec653 = and i64 %i.qz, 4611686018427387900  ; 3 uses
  %i.rb = shl i64 %n.vec653, 3                    ; 2 uses
  %i.rc = getelementptr i8, ptr %i.qv, i64 %i.rb  ; 2 uses
  %i.rd = getelementptr i8, ptr %.sroa.0195.0541, i64 %i.rb
  br label %vector.body654

vector.body654:                                   ; preds = %vector.body654, %vector.ph651
  %index655 = phi i64 [ 0, %vector.ph651 ], [ %index.next660, %vector.body654 ] ; 2 uses
  %i.re = shl i64 %index655, 3                    ; 2 uses
  %next.gep656 = getelementptr i8, ptr %i.qv, i64 %i.re ; 2 uses
  %next.gep657 = getelementptr i8, ptr %.sroa.0195.0541, i64 %i.re ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.rf = getelementptr i8, ptr %next.gep657, i64 16
  %wide.load658 = load <2 x i64>, ptr %next.gep657, align 8, !alias.scope !82, !noalias !79
  %wide.load659 = load <2 x i64>, ptr %i.rf, align 8, !alias.scope !82, !noalias !79
  %i.rg = getelementptr i8, ptr %next.gep656, i64 16
  store <2 x i64> %wide.load658, ptr %next.gep656, align 8, !alias.scope !79, !noalias !82
  store <2 x i64> %wide.load659, ptr %i.rg, align 8, !alias.scope !79, !noalias !82
  %index.next660 = add nuw i64 %index655, 4       ; 2 uses
  %i.rh = icmp eq i64 %index.next660, %n.vec653
  br i1 %i.rh, label %middle.block661, label %vector.body654, !llvm.loop !84

middle.block661:                                  ; preds = %vector.body654
  %cmp.n662 = icmp eq i64 %i.qz, %n.vec653
  br i1 %cmp.n662, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i169.preheader707

.lr.ph.i.i.i.i.i.i.i169.preheader707:             ; preds = %.lr.ph.i.i.i.i.i.i.i169.preheader, %middle.block661
  %.012.i.i.i.i.i.i.i170.ph = phi ptr [ %i.qv, %.lr.ph.i.i.i.i.i.i.i169.preheader ], [ %i.rc, %middle.block661 ]
  %.0911.i.i.i.i.i.i.i171.ph = phi ptr [ %.sroa.0195.0541, %.lr.ph.i.i.i.i.i.i.i169.preheader ], [ %i.rd, %middle.block661 ]
  br label %.lr.ph.i.i.i.i.i.i.i169

.lr.ph.i.i.i.i.i.i.i169:                          ; preds = %.lr.ph.i.i.i.i.i.i.i169.preheader707, %.lr.ph.i.i.i.i.i.i.i169
  %.012.i.i.i.i.i.i.i170 = phi ptr [ %i.rk, %.lr.ph.i.i.i.i.i.i.i169 ], [ %.012.i.i.i.i.i.i.i170.ph, %.lr.ph.i.i.i.i.i.i.i169.preheader707 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i171 = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i.i.i169 ], [ %.0911.i.i.i.i.i.i.i171.ph, %.lr.ph.i.i.i.i.i.i.i169.preheader707 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.ri = load i64, ptr %.0911.i.i.i.i.i.i.i171, align 8, !alias.scope !82, !noalias !79
  store i64 %i.ri, ptr %.012.i.i.i.i.i.i.i170, align 8, !alias.scope !79, !noalias !82
  %i.rj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i171, i64 8 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i170, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i172 = icmp eq ptr %i.rj, %.sroa.14.0543
  br i1 %.not.i.i.i.i.i.i.i172, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i169, !llvm.loop !85

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i169, %middle.block661, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i173 = phi ptr [ %i.qv, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.rc, %middle.block661 ], [ %i.rk, %.lr.ph.i.i.i.i.i.i.i169 ]
  %.not.i23.i.i.i.i174 = icmp eq ptr %.sroa.0195.0541, null
  br i1 %.not.i23.i.i.i.i174, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0195.0541, i64 noundef %i.qn) #31
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.ci, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.qt
  br label %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit

_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit: ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.cf
  %.sroa.0195.4 = phi ptr [ %i.qv, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.0195.0541, %bb.cf ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i173.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i173, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.8.0542, %bb.cf ]
  %.sroa.14.4 = phi ptr [ %i.rl, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.14.0543, %bb.cf ] ; 2 uses
  %.sroa.8.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i173.pn, i64 8 ; 2 uses
  %i.rm = add nuw i32 %.076544, 1                 ; 2 uses
  %i.rn = call noundef i32 @_ZNK2v85Array6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0227.0612) #28
  %.not80 = icmp ult i32 %i.rm, %i.rn
  br i1 %.not80, label %.lr.ph545, label %.critedge86, !llvm.loop !86

.critedge86:                                      ; preds = %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit, %.preheader, %.critedge82
  %.sroa.0195.2 = phi ptr [ null, %.critedge82 ], [ null, %.preheader ], [ %.sroa.0195.4, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ] ; 6 uses
  %.sroa.8.2 = phi ptr [ null, %.critedge82 ], [ null, %.preheader ], [ %.sroa.8.3, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ] ; 3 uses
  %.sroa.14.2 = phi ptr [ null, %.critedge82 ], [ null, %.preheader ], [ %.sroa.14.4, %_ZN2v811LocalVectorINS_6StringEE9push_backERKNS_5LocalIS1_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ro = load ptr, ptr %i.n, align 8
  call void @_ZN2v88TryCatchC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef %i.ro) #28
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.m, ptr %i.rp, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.rq, align 8
  %i.rr = ptrtoint ptr %.sroa.8.2 to i64          ; 2 uses
  %i.rs = ptrtoint ptr %.sroa.0195.2 to i64       ; 3 uses
  %i.rt = sub i64 %i.rr, %i.rs                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i175 = icmp eq ptr %.sroa.8.2, %.sroa.0195.2
  br i1 %.not.i.i.i.i.i175, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i.thread, label %bb.cj

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i.thread: ; preds = %.critedge86
  %i.ru = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr null, i64 %i.rt
  %i.rw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %i.rv, ptr %i.rw, align 8
  br label %_ZN2v811LocalVectorINS_6StringEEC2ERKS2_.exit

bb.cj:                                            ; preds = %.critedge86
  %i.rx = icmp ugt i64 %i.rt, 9223372036854775800
  br i1 %i.rx, label %bb.ck, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i, !prof !5

bb.ck:                                            ; preds = %bb.cj
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i: ; preds = %bb.cj
  %i.ry = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rt) #30 ; 7 uses
  store ptr %i.ry, ptr %4, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.ry, ptr %i.rz, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rt
  %i.sb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.sa, ptr %i.sb, align 8
  %10 = sub i64 %i.rr, %i.rs
  %11 = add i64 %10, -8                           ; 2 uses
  %i.sc = lshr i64 %11, 3
  %i.sd = add nuw nsw i64 %i.sc, 1                ; 2 uses
  %min.iters.check668 = icmp ult i64 %11, 56
  %i.se = ptrtoaddr ptr %i.ry to i64
  %i.sf = sub i64 %i.se, %i.rs
  %diff.check666 = icmp ult i64 %i.sf, 32
  %or.cond703 = select i1 %min.iters.check668, i1 true, i1 %diff.check666
  br i1 %or.cond703, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph669

vector.ph669:                                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i
  %n.vec671 = and i64 %i.sd, 4611686018427387900  ; 3 uses
  %i.sg = shl i64 %n.vec671, 3                    ; 2 uses
  %i.sh = getelementptr i8, ptr %i.ry, i64 %i.sg  ; 2 uses
  %i.si = getelementptr i8, ptr %.sroa.0195.2, i64 %i.sg
  br label %vector.body672

vector.body672:                                   ; preds = %vector.body672, %vector.ph669
  %index673 = phi i64 [ 0, %vector.ph669 ], [ %index.next678, %vector.body672 ] ; 2 uses
  %i.sj = shl i64 %index673, 3                    ; 2 uses
  %next.gep674 = getelementptr i8, ptr %i.ry, i64 %i.sj ; 2 uses
  %next.gep675 = getelementptr i8, ptr %.sroa.0195.2, i64 %i.sj ; 2 uses
  %i.sk = getelementptr i8, ptr %next.gep675, i64 16
  %wide.load676 = load <2 x i64>, ptr %next.gep675, align 8
  %wide.load677 = load <2 x i64>, ptr %i.sk, align 8
  %i.sl = getelementptr i8, ptr %next.gep674, i64 16
  store <2 x i64> %wide.load676, ptr %next.gep674, align 8
  store <2 x i64> %wide.load677, ptr %i.sl, align 8
  %index.next678 = add nuw i64 %index673, 4       ; 2 uses
  %i.sm = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.sm, label %middle.block679, label %vector.body672, !llvm.loop !87

middle.block679:                                  ; preds = %vector.body672
  %cmp.n680 = icmp eq i64 %i.sd, %n.vec671
  br i1 %cmp.n680, label %_ZN2v811LocalVectorINS_6StringEEC2ERKS2_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i, %middle.block679
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.ry, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i ], [ %i.sh, %middle.block679 ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0195.2, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i ], [ %i.si, %middle.block679 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.sp, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.so, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.sn = load i64, ptr %.sroa.04.07.i.i.i.i.i.i, align 8
  store i64 %i.sn, ptr %.08.i.i.i.i.i.i, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.sq = icmp eq ptr %i.so, %.sroa.8.2
  br i1 %i.sq, label %_ZN2v811LocalVectorINS_6StringEEC2ERKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !88

_ZN2v811LocalVectorINS_6StringEEC2ERKS2_.exit:    ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block679, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i.thread
  %i.sr = phi ptr [ %i.rw, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i.thread ], [ %i.sb, %middle.block679 ], [ %i.sb, %.lr.ph.i.i.i.i.i.i ]
  %i.ss = phi ptr [ %i.ru, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i.thread ], [ %i.rz, %middle.block679 ], [ %i.rz, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EEC2EmRKS5_.exit.i.i.thread ], [ %i.sh, %middle.block679 ], [ %i.sp, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ss, align 8
  %i.st = ptrtoint ptr %.sroa.8210.2 to i64       ; 2 uses
  %i.su = ptrtoint ptr %.sroa.0206.2 to i64       ; 3 uses
  %i.sv = sub i64 %i.st, %i.su                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i176 = icmp eq ptr %.sroa.8210.2, %.sroa.0206.2
  br i1 %.not.i.i.i.i.i176, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.thread, label %bb.cl

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.thread: ; preds = %_ZN2v811LocalVectorINS_6StringEEC2ERKS2_.exit
  %i.sw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr null, i64 %i.sv
  %i.sy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %i.sx, ptr %i.sy, align 8
  br label %_ZN2v811LocalVectorINS_6ObjectEEC2ERKS2_.exit

bb.cl:                                            ; preds = %_ZN2v811LocalVectorINS_6StringEEC2ERKS2_.exit
  %i.sz = icmp ugt i64 %i.sv, 9223372036854775800
  br i1 %i.sz, label %bb.cm, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i, !prof !5

bb.cm:                                            ; preds = %bb.cl
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i: ; preds = %bb.cl
  %i.ta = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sv) #30 ; 7 uses
  store ptr %i.ta, ptr %5, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.ta, ptr %i.tb, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.sv
  %i.td = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.tc, ptr %i.td, align 8
  %12 = sub i64 %i.st, %i.su
  %13 = add i64 %12, -8                           ; 2 uses
  %i.te = lshr i64 %13, 3
  %i.tf = add nuw nsw i64 %i.te, 1                ; 2 uses
  %min.iters.check686 = icmp ult i64 %13, 56
  %i.tg = ptrtoaddr ptr %i.ta to i64
  %i.th = sub i64 %i.tg, %i.su
  %diff.check684 = icmp ult i64 %i.th, 32
  %or.cond705 = select i1 %min.iters.check686, i1 true, i1 %diff.check684
  br i1 %or.cond705, label %.lr.ph.i.i.i.i.i.i177.preheader, label %vector.ph687

vector.ph687:                                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i
  %n.vec689 = and i64 %i.tf, 4611686018427387900  ; 3 uses
  %i.ti = shl i64 %n.vec689, 3                    ; 2 uses
  %i.tj = getelementptr i8, ptr %i.ta, i64 %i.ti  ; 2 uses
  %i.tk = getelementptr i8, ptr %.sroa.0206.2, i64 %i.ti
  br label %vector.body690

vector.body690:                                   ; preds = %vector.body690, %vector.ph687
  %index691 = phi i64 [ 0, %vector.ph687 ], [ %index.next696, %vector.body690 ] ; 2 uses
  %i.tl = shl i64 %index691, 3                    ; 2 uses
  %next.gep692 = getelementptr i8, ptr %i.ta, i64 %i.tl ; 2 uses
  %next.gep693 = getelementptr i8, ptr %.sroa.0206.2, i64 %i.tl ; 2 uses
  %i.tm = getelementptr i8, ptr %next.gep693, i64 16
  %wide.load694 = load <2 x i64>, ptr %next.gep693, align 8
  %wide.load695 = load <2 x i64>, ptr %i.tm, align 8
  %i.tn = getelementptr i8, ptr %next.gep692, i64 16
  store <2 x i64> %wide.load694, ptr %next.gep692, align 8
  store <2 x i64> %wide.load695, ptr %i.tn, align 8
  %index.next696 = add nuw i64 %index691, 4       ; 2 uses
  %i.to = icmp eq i64 %index.next696, %n.vec689
  br i1 %i.to, label %middle.block697, label %vector.body690, !llvm.loop !89

middle.block697:                                  ; preds = %vector.body690
  %cmp.n698 = icmp eq i64 %i.tf, %n.vec689
  br i1 %cmp.n698, label %_ZN2v811LocalVectorINS_6ObjectEEC2ERKS2_.exit, label %.lr.ph.i.i.i.i.i.i177.preheader

.lr.ph.i.i.i.i.i.i177.preheader:                  ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i, %middle.block697
  %.08.i.i.i.i.i.i178.ph = phi ptr [ %i.ta, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i ], [ %i.tj, %middle.block697 ]
  %.sroa.04.07.i.i.i.i.i.i179.ph = phi ptr [ %.sroa.0206.2, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i ], [ %i.tk, %middle.block697 ]
  br label %.lr.ph.i.i.i.i.i.i177

.lr.ph.i.i.i.i.i.i177:                            ; preds = %.lr.ph.i.i.i.i.i.i177.preheader, %.lr.ph.i.i.i.i.i.i177
  %.08.i.i.i.i.i.i178 = phi ptr [ %i.tr, %.lr.ph.i.i.i.i.i.i177 ], [ %.08.i.i.i.i.i.i178.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i179 = phi ptr [ %i.tq, %.lr.ph.i.i.i.i.i.i177 ], [ %.sroa.04.07.i.i.i.i.i.i179.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %i.tp = load i64, ptr %.sroa.04.07.i.i.i.i.i.i179, align 8
  store i64 %i.tp, ptr %.08.i.i.i.i.i.i178, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i179, i64 8 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i178, i64 8 ; 2 uses
  %i.ts = icmp eq ptr %i.tq, %.sroa.8210.2
  br i1 %i.ts, label %_ZN2v811LocalVectorINS_6ObjectEEC2ERKS2_.exit, label %.lr.ph.i.i.i.i.i.i177, !llvm.loop !90

_ZN2v811LocalVectorINS_6ObjectEEC2ERKS2_.exit:    ; preds = %.lr.ph.i.i.i.i.i.i177, %middle.block697, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.thread
  %i.tt = phi ptr [ %i.sy, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.thread ], [ %i.td, %middle.block697 ], [ %i.td, %.lr.ph.i.i.i.i.i.i177 ]
  %i.tu = phi ptr [ %i.sw, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.thread ], [ %i.tb, %middle.block697 ], [ %i.tb, %.lr.ph.i.i.i.i.i.i177 ]
  %.0.lcssa.i.i.i.i.i.i180 = phi ptr [ null, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6ObjectEEESaIS4_EEC2EmRKS5_.exit.i.i.thread ], [ %i.tj, %middle.block697 ], [ %i.tr, %.lr.ph.i.i.i.i.i.i177 ]
  store ptr %.0.lcssa.i.i.i.i.i.i180, ptr %i.tu, align 8
  %i.tv = call ptr @_ZN4node10contextify18ContextifyFunction29CompileFunctionAndCacheResultEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEEPNS4_14ScriptCompiler6SourceENS4_11LocalVectorINS4_6StringEEENSB_INS4_6ObjectEEENS8_14CompileOptionsEbNS5_INS4_6SymbolEEERKNS_6errors13TryCatchScopeE(ptr noundef nonnull %i.m, ptr nonnull %storemerge, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %., i1 noundef zeroext %i.fx, i64 %i.nq, ptr noundef nonnull align 8 dereferenceable(60) %3) ; 2 uses
  %i.tw = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN2v811LocalVectorINS_6ObjectEEC2ERKS2_.exit
  %i.tx = load ptr, ptr %i.tt, align 8
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = ptrtoint ptr %i.tw to i64
  %i.ua = sub i64 %i.ty, %i.tz
  call void @_ZdlPvm(ptr noundef nonnull %i.tw, i64 noundef %i.ua) #31
  br label %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit

_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit:        ; preds = %_ZN2v811LocalVectorINS_6ObjectEEC2ERKS2_.exit, %bb.cn
  %i.ub = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i181 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i.i181, label %_ZN2v811LocalVectorINS_6StringEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit
  %i.uc = load ptr, ptr %i.sr, align 8
  %i.ud = ptrtoint ptr %i.uc to i64
  %i.ue = ptrtoint ptr %i.ub to i64
  %i.uf = sub i64 %i.ud, %i.ue
  call void @_ZdlPvm(ptr noundef nonnull %i.ub, i64 noundef %i.uf) #31
  br label %_ZN2v811LocalVectorINS_6StringEED2Ev.exit

_ZN2v811LocalVectorINS_6StringEED2Ev.exit:        ; preds = %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit, %bb.co
  %.not510 = icmp eq ptr %i.tv, null
  br i1 %.not510, label %bb.cp, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

bb.cp:                                            ; preds = %_ZN2v811LocalVectorINS_6StringEED2Ev.exit
  %i.ug = call noundef zeroext i1 @_ZNK2v88TryCatch9HasCaughtEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #28
  br i1 %i.ug, label %bb.cr, label %bb.cq, !prof !29

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node10contextify18ContextifyFunction15CompileFunctionERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args__12_) #28
  call void @abort() #29
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.uh = call ptr @_ZN2v88TryCatch7ReThrowEv(ptr noundef nonnull align 8 dereferenceable(41) %3) #28 ; 0 uses
  br label %bb.cs

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %_ZN2v811LocalVectorINS_6StringEED2Ev.exit
  %i.ui = load ptr, ptr %0, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = load i64, ptr %i.tv, align 8
  store i64 %i.uk, ptr %i.uj, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, %bb.cr
  call void @_ZN4node6errors13TryCatchScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(60) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.critedge84

.critedge84:                                      ; preds = %.lr.ph545, %bb.cs
  %.sroa.0195.3 = phi ptr [ %.sroa.0195.2, %bb.cs ], [ %.sroa.0195.0541, %.lr.ph545 ] ; 3 uses
  %.sroa.14.3 = phi ptr [ %.sroa.14.2, %bb.cs ], [ %.sroa.14.0543, %.lr.ph545 ]
  %.not.i.i.i.i182 = icmp eq ptr %.sroa.0195.3, null
  br i1 %.not.i.i.i.i182, label %.critedge, label %bb.ct

bb.ct:                                            ; preds = %.critedge84
  %i.ul = ptrtoint ptr %.sroa.14.3 to i64
  %i.um = ptrtoint ptr %.sroa.0195.3 to i64
  %i.un = sub i64 %i.ul, %i.um
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0195.3, i64 noundef %i.un) #31
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ct, %.critedge84
  %.sroa.0206.3 = phi ptr [ %.sroa.0206.2, %bb.ct ], [ %.sroa.0206.2, %.critedge84 ], [ %.sroa.0206.0534, %.lr.ph ] ; 3 uses
  %.sroa.14214.3 = phi ptr [ %.sroa.14214.2, %bb.ct ], [ %.sroa.14214.2, %.critedge84 ], [ %.sroa.14214.0536, %.lr.ph ]
  %.not.i.i.i.i184 = icmp eq ptr %.sroa.0206.3, null
  br i1 %.not.i.i.i.i184, label %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit185, label %bb.cu

bb.cu:                                            ; preds = %.critedge
  %i.uo = ptrtoint ptr %.sroa.14214.3 to i64
  %i.up = ptrtoint ptr %.sroa.0206.3 to i64
  %i.uq = sub i64 %i.uo, %i.up
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.3, i64 noundef %i.uq) #31
  br label %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit185

_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit185:     ; preds = %.critedge, %bb.cu
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %storemerge) #28
  %i.ur = load ptr, ptr %i.on, align 8            ; 3 uses
  %.not.i186 = icmp eq ptr %i.ur, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v814ScriptCompiler20ConsumeCodeCacheTaskEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v814ScriptCompiler20ConsumeCodeCacheTaskEEclEPS2_.exit.i: ; preds = %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit185
  call void @_ZN2v814ScriptCompiler20ConsumeCodeCacheTaskD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ur) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ur, i64 noundef 8) #31
  br label %_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN2v811LocalVectorINS_6ObjectEED2Ev.exit185, %_ZNKSt14default_deleteIN2v814ScriptCompiler20ConsumeCodeCacheTaskEEclEPS2_.exit.i
  %i.us = load ptr, ptr %i.om, align 8            ; 3 uses
  %.not.i187 = icmp eq ptr %i.us, null
  br i1 %.not.i187, label %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit
  call void @_ZN2v814ScriptCompiler10CachedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.us) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.us, i64 noundef 24) #31
  br label %_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v814ScriptCompiler10CachedDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v814ScriptCompiler20ConsumeCodeCacheTaskESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node10contextify18ContextifyFunction26CreatePerIsolatePropertiesEPNS_11IsolateDataEN2v85LocalINS4_14ObjectTemplateEEE(ptr nofree noundef readonly captures(none) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4648
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN4node9SetMethodEPN2v87IsolateENS0_5LocalINS0_8TemplateEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr noundef %i.b, ptr %1, i64 15, ptr nonnull @.str.82, ptr noundef nonnull @_ZN4node10contextify18ContextifyFunction15CompileFunctionERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #28
  ret void
}

declare noundef zeroext i1 @_ZNK2v85Value7IsArrayEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZN4node6loader10ModuleWrap21GetHostDefinedOptionsEPN2v87IsolateENS2_5LocalINS2_6SymbolEEE(ptr noundef, ptr) local_unnamed_addr #5

declare ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEEj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4node10contextify18ContextifyFunction29CompileFunctionAndCacheResultEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEEPNS4_14ScriptCompiler6SourceENS4_11LocalVectorINS4_6StringEEENSB_INS4_6ObjectEEENS8_14CompileOptionsEbNS5_INS4_6SymbolEEERKNS_6errors13TryCatchScopeE(ptr noundef %0, ptr %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i1 noundef zeroext %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(60) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.v8::ScriptOrigin", align 8  ; 5 uses
  %10 = alloca [6 x %"class.v8::MaybeLocal.429"], align 16 ; 9 uses
  %11 = alloca %"class.std::unique_ptr.479", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %4, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = tail call ptr @_ZN2v814ScriptCompiler15CompileFunctionENS_5LocalINS_7ContextEEEPNS0_6SourceEmPNS1_INS_6StringEEEmPNS1_INS_6ObjectEEENS0_14CompileOptionsENS0_13NoCacheReasonE(ptr %1, ptr noundef %2, i64 noundef %i.g, ptr noundef %i.c, i64 noundef %i.n, ptr noundef %i.j, i32 noundef %5, i32 noundef 0) #28 ; 5 uses
  %i.p = ptrtoint ptr %i.o to i64
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZNK2v88TryCatch9HasCaughtEv(ptr noundef nonnull align 8 dereferenceable(41) %8) #28
  br i1 %i.q, label %bb.d, label %bb.c, !prof !29

end_hunk_1
begin_hunk_2_@_ZN4node10contextifyL16ShouldRetryAsESMEPNS_5RealmEN2v85LocalINS3_6StringEEES6_S6_:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.h, %i.by                     ; 2 uses
  %.not25.i.i73.5 = icmp ult i64 %i.bz, 74
  br i1 %.not25.i.i73.5, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread.5, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i69.5, !llvm.loop !246

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.5: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i71.5
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = sub i64 %i.ca, %i.i
  %.not58.5 = icmp eq i64 %i.cb, -1
  br i1 %.not58.5, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread.5, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread108

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread.5: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i69.5, %bb.j, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread.3, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.5, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread.4
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread108

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread108: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.3, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.4, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.5, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread.5
  %.not57.lcssa = phi i1 [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.2 ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread.5 ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74 ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.4 ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.1 ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.5 ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.3 ] ; 2 uses
  %.not2531.i.i77 = icmp ult i64 %i.f, 29
  br i1 %.not2531.i.i77, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83:   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread108, %bb.k
  %.033.i.i79 = phi i64 [ %i.co, %bb.k ], [ %i.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread108 ]
  %.02132.i.i80 = phi ptr [ %i.cm, %bb.k ], [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread108 ]
  %.reass.reass.i.reass.reass.i82.reass = add i64 %.033.i.i79, -28
  %i.cc = call ptr @memchr(ptr noundef %.02132.i.i80, i32 noundef 109, i64 noundef %.reass.reass.i.reass.reass.i82.reass) #28 ; 5 uses
  %.not26.i.i84 = icmp eq ptr %i.cc, null
  br i1 %.not26.i.i84, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i85

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i85: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83
  %i.cd = load i128, ptr %i.cc, align 1
  %i.ce = xor i128 %i.cd, 43129275452511987436609013255595321709
  %i.cf = getelementptr i8, ptr %i.cc, i64 13
  %i.cg = load i128, ptr %i.cf, align 1
  %i.ch = xor i128 %i.cg, 154789699869475958440745530986971820645
  %i.ci = or i128 %i.ce, %i.ch
  %i.cj = icmp ne i128 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i85
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.h, %i.cn                     ; 2 uses
  %.not25.i.i87 = icmp ult i64 %i.co, 29
  br i1 %.not25.i.i87, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83, !llvm.loop !246

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i85
  %i.cp = ptrtoint ptr %i.cc to i64
  %i.cq = sub i64 %i.cp, %i.i
  %.not60 = icmp eq i64 %i.cq, -1
  br i1 %.not60, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread, label %_ZN4node29ShouldNotAbortOnUncaughtScopeD2Ev.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread: ; preds = %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit74.thread108
  %.not2531.i.i77.1 = icmp ult i64 %i.f, 23
  br i1 %.not2531.i.i77.1, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread.1, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83.1

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83.1: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread, %bb.l
  %.033.i.i79.1 = phi i64 [ %i.dd, %bb.l ], [ %i.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread ]
  %.02132.i.i80.1 = phi ptr [ %i.db, %bb.l ], [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread ]
  %.reass.reass.i.reass.reass.i82.reass.1 = add i64 %.033.i.i79.1, -22
  %i.cr = call ptr @memchr(ptr noundef %.02132.i.i80.1, i32 noundef 83, i64 noundef %.reass.reass.i.reass.reass.i82.reass.1) #28 ; 5 uses
  %.not26.i.i84.1 = icmp eq ptr %i.cr, null
  br i1 %.not26.i.i84.1, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread.1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i85.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i85.1: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83.1
  %i.cs = load i128, ptr %i.cr, align 1
  %i.ct = xor i128 %i.cs, 134824906786921319457784330693433522515
  %i.cu = getelementptr i8, ptr %i.cr, i64 7
  %i.cv = load i128, ptr %i.cu, align 1
  %i.cw = xor i128 %i.cv, 133449582195699671625602968162738860658
  %i.cx = or i128 %i.ct, %i.cw
  %i.cy = icmp ne i128 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.1, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i85.1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 1 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.h, %i.dc                     ; 2 uses
  %.not25.i.i87.1 = icmp ult i64 %i.dd, 23
  br i1 %.not25.i.i87.1, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread.1, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83.1, !llvm.loop !246

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i85.1
  %i.de = ptrtoint ptr %i.cr to i64
  %i.df = sub i64 %i.de, %i.i
  %.not60.1 = icmp ne i64 %i.df, -1
  %brmerge = or i1 %.not60.1, %.not57.lcssa
  br i1 %brmerge, label %_ZN4node29ShouldNotAbortOnUncaughtScopeD2Ev.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread101

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread.1: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i83.1, %bb.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread
  br i1 %.not57.lcssa, label %_ZN4node29ShouldNotAbortOnUncaughtScopeD2Ev.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread101

_ZN4node29ShouldNotAbortOnUncaughtScopeD2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 200
  %i.dj = load ptr, ptr %i.di, align 8
  call void @_ZN2v88TryCatchC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %i.dj) #28
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.dh, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 0, ptr %i.dl, align 8
  %i.dm = load ptr, ptr %i.dg, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2200 ; 4 uses
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 8
  %i.dq = load ptr, ptr %i.dg, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 216
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 368
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call ptr @_ZN4node6loader10ModuleWrap21GetHostDefinedOptionsEPN2v87IsolateENS2_5LocalINS2_6SymbolEEE(ptr noundef %i.c, ptr %i.du) #28
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.dw, align 8
  %i.dx = call ptr @_ZN4node6loader10ModuleWrap23CompileSourceTextModuleEPNS_5RealmEN2v85LocalINS4_6StringEEES7_iiNS5_INS4_14PrimitiveArrayEEESt8optionalIPNS4_14ScriptCompiler10CachedDataEEPb(ptr noundef nonnull %0, ptr %2, ptr %3, i32 noundef 0, i32 noundef 0, ptr %i.dv, ptr noundef nonnull byval(%"class.std::optional.798") align 8 %6, ptr noundef nonnull %i.a) #28
  %i.dy = icmp ne ptr %i.dx, null
  %i.dz = load i32, ptr %i.dn, align 8
  %i.ea = add nsw i32 %i.dz, -1
  store i32 %i.ea, ptr %i.dn, align 8
  call void @_ZN4node6errors13TryCatchScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(60) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread101

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread101: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.2, %_ZN4node29ShouldNotAbortOnUncaughtScopeD2Ev.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread.1
  %i.eb = phi ptr [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread.1 ], [ %.pre, %_ZN4node29ShouldNotAbortOnUncaughtScopeD2Ev.exit ], [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.2 ], [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.1 ], [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.1 ] ; 3 uses
  %.5 = phi i1 [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.thread.1 ], [ %i.dy, %_ZN4node29ShouldNotAbortOnUncaughtScopeD2Ev.exit ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.2 ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.1 ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit88.1 ]
  %i.ec = icmp ne ptr %i.eb, null
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ee = icmp ne ptr %i.eb, %i.ed
  %i.ef = select i1 %i.ec, i1 %i.ee, i1 false
  br i1 %i.ef, label %bb.m, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread101
  call void @free(ptr noundef nonnull %i.eb) #28
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread101, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %.5
}

declare ptr @_ZNK2v87Message3GetEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare i8 @_ZN4node22ProcessEmitWarningSyncEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i64, ptr) local_unnamed_addr #5

declare void @_ZN4node21ThrowErrStringTooLongEPN2v87IsolateE(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #22 comdat {
bb.a:
  tail call void @abort() #29
  unreachable
}

declare noundef ptr @_ZN4node19CompileCacheHandler11GetOrInsertEN2v85LocalINS1_6StringEEES4_NS_14CachedCodeTypeE(ptr noundef nonnull align 8 dereferenceable(144), ptr, ptr, i8 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZNK4node17CompileCacheEntry9CopyCacheEv(ptr noundef nonnull align 8 dereferenceable(91)) local_unnamed_addr #5

declare void @_ZN4node19CompileCacheHandler9MaybeSaveEPNS_17CompileCacheEntryEN2v85LocalINS3_8FunctionEEEb(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, ptr, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 16 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not46 = icmp ult i64 %i.l, %i.d
  br i1 %.not46, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 4 uses
  %4 = sub i64 %i.b, %i.c
  %5 = add i64 %4, -8                             ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check154 = icmp ult i64 %5, 56
  %i.t = sub i64 %i.b, %i.c
  %diff.check152 = icmp ult i64 %i.t, 32
  %or.cond = or i1 %min.iters.check154, %diff.check152
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.d
  %n.vec157 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.u = shl i64 %n.vec157, 3                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.i, i64 %i.u
  %i.w = getelementptr i8, ptr %i.q, i64 %i.u
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.x = shl i64 %index159, 3                     ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.i, i64 %i.x ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.q, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <2 x i64>, ptr %next.gep161, align 8
  %wide.load163 = load <2 x i64>, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %wide.load162, ptr %next.gep160, align 8
  store <2 x i64> %wide.load163, ptr %i.z, align 8
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.aa, label %middle.block165, label %vector.body158, !llvm.loop !247

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.s, %n.vec157
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block165
  %.08.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.v, %middle.block165 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.w, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 8
  store i64 %i.ab, ptr %.08.i.i.i.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %i.i
  br i1 %i.ae, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !248

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block165
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d
  store ptr %i.ag, ptr %i.h, align 8
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.e, label %bb.f, !prof !29

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %1, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.an = icmp eq i64 %i.ai, 8
  br i1 %i.an, label %bb.g, label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aq = icmp sgt i64 %i.e, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i47.preheader, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit
  %min.iters.check172 = icmp ult i64 %i.e, 6
  %i.ar = sub i64 %i.m, %i.c
  %diff.check170 = icmp ult i64 %i.ar, 32
  %or.cond244 = or i1 %min.iters.check172, %diff.check170
  br i1 %or.cond244, label %.lr.ph.i.i.i.i.i47.preheader254, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %n.vec175 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.as = and i64 %i.e, 3
  %i.at = shl i64 %n.vec175, 3                    ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = getelementptr i8, ptr %2, i64 %i.at
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.aw = shl i64 %index177, 3                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.aw ; 2 uses
  %next.gep179 = getelementptr i8, ptr %2, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <2 x i64>, ptr %next.gep179, align 8
  %wide.load181 = load <2 x i64>, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %next.gep178, i64 16
  store <2 x i64> %wide.load180, ptr %next.gep178, align 8
  store <2 x i64> %wide.load181, ptr %i.ay, align 8
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.az, label %middle.block183, label %vector.body176, !llvm.loop !249

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.e, %n.vec175
  br i1 %cmp.n184, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i47.preheader254

.lr.ph.i.i.i.i.i47.preheader254:                  ; preds = %.lr.ph.i.i.i.i.i47.preheader, %middle.block183
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.as, %middle.block183 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.au, %middle.block183 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.av, %middle.block183 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader254, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i47 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i47 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %i.ba = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.ba, ptr %.0811.i.i.i.i.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i47, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !250

_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bf, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = add i64 %i.b, %i.m
  %i.bh = add i64 %i.k, %i.c
  %6 = sub i64 %i.bg, %i.bh
  %7 = add i64 %6, -8                             ; 2 uses
  %i.bi = lshr i64 %7, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  %i.bk = sub i64 %i.m, %i.c
  %diff.check = icmp ult i64 %i.bk, 32
  %or.cond245 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond245, label %.lr.ph.i.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.i, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bo ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8
  %wide.load112 = load <2 x i64>, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load112, ptr %i.bq, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader258

.lr.ph.i.i.i.i.preheader258:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader258, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %i.bs = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bs, ptr %.011.i.i.i.i, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bt, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !252

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bv = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = sub nuw nsw i64 %i.e, %i.o
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx ; 6 uses
  store ptr %i.by, ptr %i.h, align 8
  %i.bz = icmp eq ptr %1, %i.i
  br i1 %i.bz, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, label %.lr.ph.i.i.i.i.i48.preheader

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %8 = sub i64 %i.k, %i.m
  %9 = add i64 %8, -8                             ; 2 uses
  %i.ca = lshr i64 %9, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %9, 104
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.cc = add i64 %i.d, %i.bw
  %i.cd = sub i64 %i.cc, %i.k
  %diff.check115 = icmp ult i64 %i.cd, 32
  br i1 %diff.check115, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec120 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec120, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.ce
  %i.cg = getelementptr i8, ptr %1, i64 %i.ce
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.ch = shl i64 %index122, 3                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.by, i64 %i.ch ; 2 uses
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load125 = load <2 x i64>, ptr %next.gep124, align 8
  %wide.load126 = load <2 x i64>, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x i64> %wide.load125, ptr %next.gep123, align 8
  store <2 x i64> %wide.load126, ptr %i.cj, align 8
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.ck, label %middle.block128, label %vector.body121, !llvm.loop !253

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.cb, %n.vec120
  br i1 %cmp.n129, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48.preheader257

.lr.ph.i.i.i.i.i48.preheader257:                  ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i.i48.preheader, %middle.block128
  %.08.i.i.i.i.i49.ph = phi ptr [ %i.by, %vector.memcheck114 ], [ %i.by, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cf, %middle.block128 ]
  %.sroa.04.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.memcheck114 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cg, %middle.block128 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader257, %.lr.ph.i.i.i.i.i48
  %.08.i.i.i.i.i49 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i48 ], [ %.08.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i50 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.04.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %i.cl = load i64, ptr %.sroa.04.07.i.i.i.i.i50, align 8
  store i64 %i.cl, ptr %.08.i.i.i.i.i49, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i50, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i49, i64 8
  %i.co = icmp eq ptr %i.cm, %i.i
  br i1 %i.co, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !254

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block128
  %.pre90 = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52: ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cp = phi ptr [ %.pre90, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit ], [ %i.by, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.n
  store ptr %i.cq, ptr %i.h, align 8
  %i.cr = ashr exact i64 %i.n, 3                  ; 6 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i54.preheader, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52
  %min.iters.check135 = icmp ult i64 %i.cr, 6
  %i.ct = sub i64 %i.m, %i.c
  %diff.check133 = icmp ult i64 %i.ct, 32
  %or.cond246 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.i54.preheader255, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec138 = and i64 %i.cr, 9223372036854775804  ; 3 uses
  %i.cu = and i64 %i.cr, 3
  %i.cv = shl i64 %n.vec138, 3                    ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %2, i64 %i.cv
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.cy = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.cy ; 2 uses
  %next.gep142 = getelementptr i8, ptr %2, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8
  %wide.load144 = load <2 x i64>, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8
  store <2 x i64> %wide.load144, ptr %i.da, align 8
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.db, label %middle.block146, label %vector.body139, !llvm.loop !255

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.cr, %n.vec138
  br i1 %cmp.n147, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i54.preheader255

.lr.ph.i.i.i.i.i54.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block146
  %.012.i.i.i.i.i55.ph = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cu, %middle.block146 ]
  %.0811.i.i.i.i.i56.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cw, %middle.block146 ]
  %.0910.i.i.i.i.i57.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cx, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader255, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0811.i.i.i.i.i56 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i54 ], [ %.0811.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0910.i.i.i.i.i57 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i54 ], [ %.0910.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %i.dc = load i64, ptr %.0910.i.i.i.i.i57, align 8
  store i64 %i.dc, ptr %.0811.i.i.i.i.i56, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 8
  %i.df = add nsw i64 %.012.i.i.i.i.i55, -1
  %i.dg = icmp samesign ugt i64 %.012.i.i.i.i.i55, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i54, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !256

bb.h:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %0, align 8               ; 7 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 4 uses
  %i.dj = sub i64 %i.k, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 4 uses
  %i.dl = sub nsw i64 1152921504606846975, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.e
  br i1 %i.dm, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #29
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.e)
  %i.dn = add nsw i64 %.sroa.speculated.i, %i.dk  ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dk
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #30
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dt = phi ptr [ %i.ds, %bb.j ], [ null, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.du = icmp eq ptr %i.dh, %1
  br i1 %i.du, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i59.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit
  %i.dv = ptrtoaddr ptr %i.dt to i64
  %i.dw = add i64 %i.a, -8
  %i.dx = sub i64 %i.dw, %i.di                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check191 = icmp ult i64 %i.dx, 56
  %i.ea = sub i64 %i.dv, %i.di
  %diff.check189 = icmp ult i64 %i.ea, 32
  %or.cond247 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i59.preheader252, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i.i.i.i59.preheader
  %n.vec194 = and i64 %i.dz, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec194, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dt, i64 %i.eb  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dh, i64 %i.eb
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ee = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.dt, i64 %i.ee ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dh, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 8
  %wide.load200 = load <2 x i64>, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 8
  store <2 x i64> %wide.load200, ptr %i.eg, align 8
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.eh, label %middle.block202, label %vector.body195, !llvm.loop !257

middle.block202:                                  ; preds = %vector.body195
  %cmp.n203 = icmp eq i64 %i.dz, %n.vec194
  br i1 %cmp.n203, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader252

.lr.ph.i.i.i.i.i59.preheader252:                  ; preds = %.lr.ph.i.i.i.i.i59.preheader, %middle.block202
  %.08.i.i.i.i.i60.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ec, %middle.block202 ]
  %.sroa.04.07.i.i.i.i.i61.ph = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ed, %middle.block202 ]
  br label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i.i.i.i.i59.preheader252, %.lr.ph.i.i.i.i.i59
  %.08.i.i.i.i.i60 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i59 ], [ %.08.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i61 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i59 ], [ %.sroa.04.07.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %i.ei = load i64, ptr %.sroa.04.07.i.i.i.i.i61, align 8
  store i64 %i.ei, ptr %.08.i.i.i.i.i60, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i61, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %1
  br i1 %i.el, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !258

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i59, %middle.block202, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.dt, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit ], [ %i.ec, %middle.block202 ], [ %i.ek, %.lr.ph.i.i.i.i.i59 ] ; 4 uses
  %10 = sub i64 %i.b, %i.c
  %11 = add i64 %10, -8                           ; 2 uses
  %i.em = lshr i64 %11, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %11, 56
  %.0.lcssa.i.i.i.i.i62207 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i62 to i64
  %i.eo = sub i64 %.0.lcssa.i.i.i.i.i62207, %i.c
  %diff.check208 = icmp ult i64 %i.eo, 32
  %or.cond248 = select i1 %min.iters.check210, i1 true, i1 %diff.check208
  br i1 %or.cond248, label %.lr.ph.i.i.i.i64.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec213 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.ep = shl i64 %n.vec213, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %2, i64 %i.ep
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.es = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.es ; 2 uses
  %next.gep217 = getelementptr i8, ptr %2, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <2 x i64>, ptr %next.gep217, align 8
  %wide.load219 = load <2 x i64>, ptr %i.et, align 8
  %i.eu = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x i64> %wide.load218, ptr %next.gep216, align 8
  store <2 x i64> %wide.load219, ptr %i.eu, align 8
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.ev, label %middle.block221, label %vector.body214, !llvm.loop !259

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.en, %n.vec213
  br i1 %cmp.n222, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64.preheader

.lr.ph.i.i.i.i64.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block221
  %.011.i.i.i.i65.ph = phi ptr [ %.0.lcssa.i.i.i.i.i62, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.eq, %middle.block221 ]
  %.0810.i.i.i.i66.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.er, %middle.block221 ]
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64.preheader, %.lr.ph.i.i.i.i64
  %.011.i.i.i.i65 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i64 ], [ %.011.i.i.i.i65.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %.0810.i.i.i.i66 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i64 ], [ %.0810.i.i.i.i66.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %i.ew = load i64, ptr %.0810.i.i.i.i66, align 8
  store i64 %i.ew, ptr %.011.i.i.i.i65, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i66, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.ex, %3
  br i1 %.not.i.i.i.i67, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64, !llvm.loop !260

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69: ; preds = %.lr.ph.i.i.i.i64, %middle.block221
  %.lcssa109 = phi ptr [ %i.eq, %middle.block221 ], [ %i.ey, %.lr.ph.i.i.i.i64 ] ; 5 uses
  %i.ez = icmp eq ptr %1, %i.i
  br i1 %i.ez, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.lcssa109226 = ptrtoaddr ptr %.lcssa109 to i64
  %i.fa = add i64 %i.k, -8
  %i.fb = sub i64 %i.fa, %i.a                     ; 2 uses
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fb, 56
  %i.fe = sub i64 %.lcssa109226, %i.a
  %diff.check227 = icmp ult i64 %i.fe, 32
  %or.cond249 = select i1 %min.iters.check229, i1 true, i1 %diff.check227
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i70.preheader250, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec232 = and i64 %i.fd, 4611686018427387900  ; 3 uses
  %i.ff = shl i64 %n.vec232, 3                    ; 2 uses
  %i.fg = getelementptr i8, ptr %.lcssa109, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %1, i64 %i.ff
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.fi = shl i64 %index234, 3                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.lcssa109, i64 %i.fi ; 2 uses
  %next.gep236 = getelementptr i8, ptr %1, i64 %i.fi ; 2 uses
  %i.fj = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load237 = load <2 x i64>, ptr %next.gep236, align 8
  %wide.load238 = load <2 x i64>, ptr %i.fj, align 8
  %i.fk = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x i64> %wide.load237, ptr %next.gep235, align 8
  store <2 x i64> %wide.load238, ptr %i.fk, align 8
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.fl, label %middle.block240, label %vector.body233, !llvm.loop !261

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.fd, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader250

.lr.ph.i.i.i.i.i70.preheader250:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block240
  %.08.i.i.i.i.i71.ph = phi ptr [ %.lcssa109, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fg, %middle.block240 ]
  %.sroa.04.07.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fh, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader250, %.lr.ph.i.i.i.i.i70
  %.08.i.i.i.i.i71 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i70 ], [ %.08.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i72 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.04.07.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %i.fm = load i64, ptr %.sroa.04.07.i.i.i.i.i72, align 8
  store i64 %i.fm, ptr %.08.i.i.i.i.i71, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i72, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i71, i64 8 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.i
  br i1 %i.fp, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !262

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block240, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa109, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69 ], [ %i.fg, %middle.block240 ], [ %i.fo, %.lr.ph.i.i.i.i.i70 ]
  %.not.i75 = icmp eq ptr %i.dh, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74
  %i.fq = load ptr, ptr %i.f, align 8
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.fs) #31
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, %bb.k
  store ptr %i.dt, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.h, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dq
  store ptr %i.ft, ptr %i.f, align 8
  br label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i54, %.lr.ph.i.i.i.i.i47, %middle.block146, %middle.block183, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

declare ptr @_ZN4node6loader10ModuleWrap23CompileSourceTextModuleEPNS_5RealmEN2v85LocalINS4_6StringEEES7_iiNS5_INS4_14PrimitiveArrayEEESt8optionalIPNS4_14ScriptCompiler10CachedDataEEPb(ptr noundef, ptr, ptr, i32 noundef, i32 noundef, ptr, ptr noundef byval(%"class.std::optional.798") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node10contextifyL26CreatePerContextPropertiesEN2v85LocalINS1_6ObjectEEENS2_INS1_5ValueEEENS2_INS1_7ContextEEEPv(ptr %0, ptr nofree readnone captures(none) %1, ptr %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %_ZN4node11Environment10GetCurrentEN2v85LocalINS1_7ContextEEE.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #28
  %i.c = icmp ult i32 %i.b, 40
  br i1 %i.c, label %_ZN4node11Environment10GetCurrentEN2v85LocalINS1_7ContextEEE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i, !prof !5

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i: ; preds = %bb.b
  %i.d = load i64, ptr %2, align 8
  %i.e = add i64 %i.d, 47
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, 327
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr @_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE, align 8
  %.not.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i, label %bb.c, label %_ZN4node11Environment10GetCurrentEN2v85LocalINS1_7ContextEEE.exit, !prof !41

bb.c:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i
  %i.m = add i64 %i.g, 271
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = inttoptr i64 %i.o to ptr
  br label %_ZN4node11Environment10GetCurrentEN2v85LocalINS1_7ContextEEE.exit

_ZN4node11Environment10GetCurrentEN2v85LocalINS1_7ContextEEE.exit: ; preds = %bb.a, %bb.b, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i, %bb.c
  %.0.i = phi ptr [ %i.p, %bb.c ], [ null, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 200 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %i.s = tail call ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef %i.r) #28 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = tail call ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef %i.t) #28 ; 3 uses
  %i.v = load ptr, ptr %i.q, align 8
  %i.w = tail call ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef %i.v) #28 ; 3 uses
  %i.x = load ptr, ptr %i.q, align 8
  %i.y = tail call ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef %i.x) #28 ; 3 uses
  %i.z = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #28 ; 3 uses
  %i.aa = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.z) #28
  %i.ab = tail call ptr @_ZN2v86String18NewFromUtf8LiteralEPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.213, i32 noundef 1, i32 noundef 7) #28
  %i.ac = tail call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef nonnull %i.z, double noundef 0.000000e+00) #28
  %i.ad = tail call i16 @_ZN2v86Object17DefineOwnPropertyENS_5LocalINS_7ContextEEENS1_INS_4NameEEENS1_INS_5ValueEEENS_17PropertyAttributeE(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr %i.aa, ptr %i.ab, ptr %i.ac, i32 noundef 5) #28
  %i.ae = trunc i16 %i.ad to i1
  br i1 %i.ae, label %_ZNK2v85MaybeIbE5CheckEv.exit72, label %bb.d, !prof !29

bb.d:                                             ; preds = %_ZN4node11Environment10GetCurrentEN2v85LocalINS1_7ContextEEE.exit
  tail call void @_ZN2v812api_internal17FromJustIsNothingEv() #28
  br label %_ZNK2v85MaybeIbE5CheckEv.exit72

_ZNK2v85MaybeIbE5CheckEv.exit72:                  ; preds = %_ZN4node11Environment10GetCurrentEN2v85LocalINS1_7ContextEEE.exit, %bb.d
  %i.af = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #28 ; 3 uses
  %i.ag = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.af) #28
  %i.ah = tail call ptr @_ZN2v86String18NewFromUtf8LiteralEPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.214, i32 noundef 1, i32 noundef 8) #28
  %i.ai = tail call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef nonnull %i.af, double noundef 1.000000e+00) #28
  %i.aj = tail call i16 @_ZN2v86Object17DefineOwnPropertyENS_5LocalINS_7ContextEEENS1_INS_4NameEEENS1_INS_5ValueEEENS_17PropertyAttributeE(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr %i.ag, ptr %i.ah, ptr %i.ai, i32 noundef 5) #28
  %i.ak = trunc i16 %i.aj to i1
  br i1 %i.ak, label %_ZNK2v85MaybeIbE5CheckEv.exit71, label %bb.e, !prof !29

bb.e:                                             ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit72
  tail call void @_ZN2v812api_internal17FromJustIsNothingEv() #28
end_hunk_2
