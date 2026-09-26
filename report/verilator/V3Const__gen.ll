Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Const__gen?download=true
inline.NumInlined: 16874
inline.NumDeleted: 2188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN12ConstVisitor10replaceNumEP7AstNodeRK8V3NumberRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.pn79.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn79.pn.pn.pn.pn.pn.pn, %bb.da ], [ %.pn75.pn.pn, %bb.cg ], [ %i.ia, %bb.bq ], [ %i.ib, %bb.br ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.di

bb.dc:                                            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !191 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !122
  %.not.i.i = icmp eq ptr %i.mj, %i.ml
  br i1 %.not.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr %1, ptr %i.mj, align 8, !tbaa !192
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr %i.mm, ptr %i.mi, align 8, !tbaa !191
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

bb.de:                                            ; preds = %bb.dc
  %i.mn = load ptr, ptr %i.mh, align 8, !tbaa !121 ; 4 uses
  %i.mo = ptrtoint ptr %i.mj to i64
  %i.mp = ptrtoint ptr %i.mn to i64               ; 2 uses
  %i.mq = sub i64 %i.mo, %i.mp                    ; 5 uses
  %i.mr = icmp eq i64 %i.mq, 9223372036854775800
  br i1 %i.mr, label %bb.df, label %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.de
  %i.ms = ashr exact i64 %i.mq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ms, i64 1)
  %i.mt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ms ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.ms
  %i.mv = call i64 @llvm.umin.i64(i64 %i.mt, i64 1152921504606846975)
  %i.mw = select i1 %i.mu, i64 1152921504606846975, i64 %i.mv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.mw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.mx = shl nuw nsw i64 %i.mw, 3
  %i.my = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mx) #30 ; 4 uses
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 %i.mq ; 2 uses
  store ptr %1, ptr %i.mz, align 8, !tbaa !192
  %i.na = icmp sgt i64 %i.mq, 0
  br i1 %i.na, label %bb.dg, label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.dg:                                            ; preds = %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.my, ptr align 8 %i.mn, i64 %i.mq, i1 false)
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.dg, %_ZNKSt6vectorIP7AstNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.nc = load ptr, ptr %i.mk, align 8, !tbaa !122
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = sub i64 %i.nd, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef %i.ne) #26
  br label %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.dh, %_ZNSt6vectorIP7AstNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.my, ptr %i.mh, align 8, !tbaa !121
  store ptr %i.nb, ptr %i.mi, align 8, !tbaa !191
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mw
  store ptr %i.nf, ptr %i.mk, align 8, !tbaa !122
  br label %_ZN9VNDeleter11pushDeletepEP7AstNode.exit

_ZN9VNDeleter11pushDeletepEP7AstNode.exit:        ; preds = %bb.dd, %_ZNSt6vectorIP7AstNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void

bb.di:                                            ; preds = %bb.db, %bb.bd, %.body
  %.pn79.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn79.pn.pn.pn.pn.pn.pn.pn, %bb.db ], [ %.pn59.pn.pn.pn.pn.pn.pn.pn, %bb.bd ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZeqRK14VWidthMinUsageNS_2enE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1) #3 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !704
  %i.b = icmp eq i8 %i.a, %1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i8 @_ZNK8V3Global13widthMinUsageEv(ptr noundef nonnull align 8 dereferenceable(1920) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 8, !tbaa !282
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7AstNode8widthMinEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !283  ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.f = load i32, ptr %i.e, align 8
  %i.g = select i1 %.not.i, i32 %i.f, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12AstNodeDType8widthMinEv(ptr noundef nonnull align 8 dereferenceable(162) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i32, ptr %i.a, align 4, !tbaa !283  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not, i32 %i.d, i32 %i.b
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8V3Number5nodepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %2, 0                        ; 2 uses
  %spec.select = and i1 %i.b, %3
  %spec.select11 = select i1 %i.b, i32 %2, i32 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !204   ; 2 uses
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.c, label %_ZN12V3NumberData13destroyStringEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !100
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  %.pre.i = load i8, ptr %i.c, align 4, !tbaa !204
  br label %_ZN12V3NumberData13destroyStringEv.exit.i

_ZN12V3NumberData13destroyStringEv.exit.i:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.k = phi i8 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.d, %bb.b ]
  %i.l = add i8 %i.k, -1
  %spec.select.i.i = icmp ult i8 %i.l, 2
  br i1 %spec.select.i.i, label %_ZN12V3NumberData8setLogicEv.exit, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i

_ZN12V3NumberData13destroyStringEv.exit.thread.i: ; preds = %bb.c, %_ZN12V3NumberData13destroyStringEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !205  ; 2 uses
  %i.o = icmp slt i32 %i.n, 129
  br i1 %i.o, label %bb.d, label %vector.ph

bb.d:                                             ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  br label %_ZN12V3NumberData8setLogicEv.exit

vector.ph:                                        ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  %i.p = add nuw nsw i32 %i.n, 31
  %i.q = lshr i32 %i.p, 5
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #30 ; 7 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !209
  store i64 0, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %i.s     ; 2 uses
  %i.y = add nsw i64 %i.s, -16
  %i.z = lshr exact i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ad ; 2 uses
  %i.ae = load i64, ptr %i.t, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.af, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !705

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ac, %middle.block ] ; 2 uses
  %i.ah = load i64, ptr %i.t, align 4
  store i64 %i.ah, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.x
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !706

_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aj, align 8, !tbaa !287
  br label %_ZN12V3NumberData8setLogicEv.exit

_ZN12V3NumberData8setLogicEv.exit:                ; preds = %_ZN12V3NumberData13destroyStringEv.exit.i, %bb.d, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i
  store i8 1, ptr %i.c, align 4, !tbaa !204
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !205
  tail call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.al)
  tail call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %spec.select11)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.an = zext i1 %spec.select to i8
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = and i8 %i.ao, -2
  %i.aq = or disjoint i8 %i.ap, %i.an
  store i8 %i.aq, ptr %i.am, align 1
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !205 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12V3NumberData8setLogicEv.exit
  %i.at = load i8, ptr %i.c, align 4, !tbaa !204
  %i.au = add i8 %i.at, -1
  %spec.select.i.i12 = icmp ult i8 %i.au, 2
  br i1 %spec.select.i.i12, label %_ZN12V3NumberData3numEv.exit, label %bb.e, !prof !168

_ZN12V3NumberData3numEv.exit:                     ; preds = %.lr.ph, %_ZN12V3NumberData3numEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12V3NumberData3numEv.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.av = phi i32 [ %i.az, %_ZN12V3NumberData3numEv.exit ], [ %i.ar, %.lr.ph ]
  %i.aw = icmp slt i32 %i.av, 129
  %i.ax = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.aw, ptr %0, ptr %i.ax
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !96
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.ak, align 8, !tbaa !205 ; 2 uses
  %i.ba = add nsw i32 %i.az, 31
  %i.bb = sdiv i32 %i.ba, 32
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %_ZN12V3NumberData3numEv.exit, label %.loopexit, !llvm.loop !707

bb.e:                                             ; preds = %.lr.ph
  %i.be = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.28, i32 noundef 242) ; 0 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.29)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bh) #27
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !205 ; 3 uses
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %_ZN12V3NumberData6resizeEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.off = add i32 %i.bj, -1
  %i.bl = icmp ult i32 %.off, 32
  br i1 %i.bl, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = icmp sgt i32 %i.bj, 128
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = icmp eq i8 %i.bo, 1
  %i.bq = select i1 %i.bm, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.i, label %.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %0, align 8, !tbaa !208   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !209
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.br, i64 32, i1 false)
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #26
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.i, %bb.g
  store i32 1, ptr %i.bi, align 8, !tbaa !205
  br label %_ZN12V3NumberData6resizeEi.exit

_ZN12V3NumberData6resizeEi.exit:                  ; preds = %bb.f, %.sink.split.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = and i8 %i.by, -2
  store i8 %i.bz, ptr %i.bx, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12V3NumberData3numEv.exit, %_ZN12V3NumberData8setLogicEv.exit, %_ZN12V3NumberData6resizeEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !204   ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN12V3NumberData18destroyStoredValueEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !100
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !205
  %i.k = icmp sgt i32 %i.j, 128
  %i.l = icmp eq i8 %i.b, 1
  %i.m = and i1 %i.l, %i.k
  br i1 %i.m, label %bb.d, label %_ZN12V3NumberData18destroyStoredValueEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !208    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN12V3NumberData18destroyStoredValueEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !209
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #26
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit

_ZN12V3NumberData18destroyStoredValueEv.exit:     ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c, %bb.d, %bb.e
  ret void
}

declare void @_ZN8V3Number5nodepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca [4 x %"struct.V3NumberData::ValueAndX"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 4 uses
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, 31
  %i.e = sdiv i32 %i.d, 32
  %i.f = add nsw i32 %1, 31
  %i.g = sdiv i32 %i.f, 32                        ; 3 uses
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp sgt i32 %i.b, 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i8, ptr %i.j, align 4               ; 2 uses
  %i.l = icmp eq i8 %i.k, 1
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %1, 128
  br i1 %i.n, label %bb.e, label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i32 %i.g to i64                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !287  ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !208    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.o
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = sub nuw nsw i64 %i.o, %i.v
  tail call void @_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x)
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.y = icmp ugt i64 %i.v, %i.o
  br i1 %i.y, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.z
  br i1 %.not.i.i, label %.sink.split, label %_ZSt8_DestroyIPN12V3NumberData9ValueAndXES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12V3NumberData9ValueAndXES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.z, ptr %i.p, align 8, !tbaa !287
  br label %.sink.split

_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EED2Ev.exit: ; preds = %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !208   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !209
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #26
  br label %.sink.split

bb.i:                                             ; preds = %bb.c
  %i.ag = icmp slt i32 %i.b, 129
  %i.ah = add i8 %i.k, -1
  %spec.select.i = icmp ult i8 %i.ah, 2
  %i.ai = select i1 %i.ag, i1 %spec.select.i, i1 false
  %i.aj = icmp sgt i32 %1, 128
  %or.cond = and i1 %i.aj, %i.ai
  br i1 %or.cond, label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i, label %.sink.split

_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !288
  %i.ak = zext nneg i32 %i.g to i64               ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30 ; 7 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !208
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !209
  store i64 0, ptr %i.am, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 5 uses
  %i.aq = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i.i.i ; 3 uses
  %i.at = add nuw nsw i64 %i.ak, 2305843009213693950
  %i.au = and i64 %i.at, 2305843009213693951      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.j
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = load i64, ptr %i.am, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.ba, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !708

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.j, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %bb.j ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bc = load i64, ptr %i.am, align 4
  store i64 %i.bc, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.as
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !709

_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.ap, %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.as, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.be, align 8, !tbaa !287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EED2Ev.exit, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, %bb.i, %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPN12V3NumberData9ValueAndXES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  store i32 %1, ptr %i.a, align 8, !tbaa !205
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5wordsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  %i.c = add nsw i32 %i.b, 31
  %i.d = sdiv i32 %i.c, 32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !204
  %i.c = icmp eq i8 %i.b, 3
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData8isNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !204
  %i.c = add i8 %i.b, -1
  %spec.select = icmp ult i8 %i.c, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN12V3NumberData11bitsToWordsEi(i32 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %0, 31
  %i.b = sdiv i32 %i.a, 32
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData15isDynamicNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  %i.c = icmp sgt i32 %i.b, 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4
  %i.f = icmp eq i8 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData14isInlineNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  %i.c = icmp slt i32 %i.b, 129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4
  %i.f = add i8 %i.e, -1
  %spec.select = icmp ult i8 %i.f, 2
  %i.g = select i1 %i.c, i1 %spec.select, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !208    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !209
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 2305843009213693950
  %i.u = and i64 %i.t, 2305843009213693951        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = load i64, ptr %i.b, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !710

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %i.b, align 4
  store i64 %i.ac, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !711

_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !287
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
  unreachable

_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #30 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 5 uses
  store i64 0, ptr %i.aj, align 4
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ak, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i30
  %i.ao = add i64 %1, 2305843009213693950
  %i.ap = and i64 %i.ao, 2305843009213693951      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check45 = icmp samesign ult i64 %i.ap, 3
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i.i.i31.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %bb.g
  %n.vec47 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec47, 3
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body48 ] ; 2 uses
  %i.at = shl i64 %index49, 3
  %next.gep50 = getelementptr i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.au = load i64, ptr %i.aj, align 4
  %broadcast.splatinsert51 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat52 = shufflevector <2 x i64> %broadcast.splatinsert51, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %broadcast.splat52, ptr %next.gep50, align 4
  store <2 x i64> %broadcast.splat52, ptr %i.av, align 4
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.aw, label %middle.block54, label %vector.body48, !llvm.loop !712

middle.block54:                                   ; preds = %vector.body48
  %cmp.n55 = icmp eq i64 %i.aq, %n.vec47
  br i1 %cmp.n55, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %bb.g, %middle.block54
  %.06.i.i.i.i.i.i.i32.ph = phi ptr [ %i.am, %bb.g ], [ %i.as, %middle.block54 ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader ] ; 2 uses
  %i.ax = load i64, ptr %i.aj, align 4
  store i64 %i.ax, ptr %.06.i.i.i.i.i.i.i32, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !713

_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block54, %_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !209
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #26
  br label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !208
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !287
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.be, ptr %i.h, align 8, !tbaa !209
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5widthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12V3NumberData5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !714
  switch i8 %i.a, label %bb.f [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.30, i64 noundef 13) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31, i64 noundef 5) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.32, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI8AstConstS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !36
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br i1 %.not6, label %.critedge, label %bb.c, !prof !168

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.20, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.34)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !36
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !236
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.35)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #27
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number8isNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !204
  %i.c = add i8 %i.b, -1
  %spec.select = icmp ult i8 %i.c, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3NumberC2EP7AstNodeiRKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.b, align 4, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128
  store i8 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = icmp sgt i32 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %i.g)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opAssignERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) #25
  resume { ptr, i32 } %i.i
}

; Function Attrs: noreturn
declare void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(112)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode8typeNameEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load i16, ptr %i.a, align 8, !tbaa !36
  %i.b = zext i16 %.sroa.0.0.copyload.i to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI8AstConstS_EEPT_PT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNType5asciiEv(ptr noundef nonnull align 2 dereferenceable(2) %0) #3 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !272
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK12V3NumberData4typeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !204
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205
  store i32 %i.d, ptr %i.b, align 8, !tbaa !205
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !204
  store i8 %i.g, ptr %i.e, align 4, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 6 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %i.l = load i8, ptr %i.h, align 1
  %i.m = and i8 %i.l, -2
  %i.n = or disjoint i8 %i.m, %i.k                ; 2 uses
  store i8 %i.n, ptr %i.h, align 1
  %i.o = load i8, ptr %i.i, align 1
  %.lobit = and i8 %i.o, 2
  %i.p = and i8 %i.n, -3
  %i.q = or disjoint i8 %i.p, %.lobit             ; 2 uses
  store i8 %i.q, ptr %i.h, align 1
  %i.r = load i8, ptr %i.i, align 1
  %.lobit15 = and i8 %i.r, 4
  %i.s = and i8 %i.q, -5
  %i.t = or disjoint i8 %i.s, %.lobit15           ; 2 uses
  store i8 %i.t, ptr %i.h, align 1
  %i.u = load i8, ptr %i.i, align 1
  %.lobit16 = and i8 %i.u, 8
  %i.v = and i8 %i.t, -9
  %i.w = or disjoint i8 %i.v, %.lobit16           ; 2 uses
  store i8 %i.w, ptr %i.h, align 1
  %i.x = load i8, ptr %i.i, align 1
  %.lobit17 = and i8 %i.x, 16
  %i.y = and i8 %i.w, -17
  %i.z = or disjoint i8 %i.y, %.lobit17           ; 2 uses
  store i8 %i.z, ptr %i.h, align 1
  %i.aa = load i8, ptr %i.i, align 1
  %.lobit18 = and i8 %i.aa, 32
  %i.ab = and i8 %i.z, -97
  %i.ac = or disjoint i8 %i.ab, %.lobit18
  store i8 %i.ac, ptr %i.h, align 1
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !205 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 129
  %i.af = load i8, ptr %i.f, align 4              ; 3 uses
  %i.ag = add i8 %i.af, -1
  %spec.select.i = icmp ult i8 %i.ag, 2
  %i.ah = select i1 %i.ae, i1 %spec.select.i, i1 false
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !288
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.ai = icmp sgt i32 %i.ad, 128
  %i.aj = icmp eq i8 %i.af, 1
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !287 ; 2 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !208   ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = icmp ugt i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN12V3NumberData9ValueAndXEE8allocateEmPKv.exit.i.i.i.i.i, !prof !123

.noexc.i.i.i:                                     ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN12V3NumberData9ValueAndXEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN12V3NumberData9ValueAndXEE8allocateEmPKv.exit.i.i.i.i.i, %bb.d
  %i.at = phi ptr [ null, %bb.d ], [ %i.as, %_ZNSt15__new_allocatorIN12V3NumberData9ValueAndXEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !208
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !287
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !209
  %i.ax = load ptr, ptr %1, align 8, !tbaa !289   ; 3 uses
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !289
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.g, label %bb.h, !prof !168

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.at, ptr align 4 %i.ax, i64 %i.bb, i1 false)
  br label %_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.i, label %_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit

bb.i:                                             ; preds = %bb.h
  %i.be = load i64, ptr %i.ax, align 4
  store i64 %i.be, ptr %i.at, align 4
  br label %_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit

_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.bf = getelementptr inbounds i8, ptr %i.at, i64 %i.bb
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !287
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  %i.bg = icmp eq i8 %i.af, 3
  br i1 %i.bg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !97
  %i.bi = load ptr, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !99 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !50
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !98
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !100
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.k
  %i.bo = phi ptr [ %i.bm, %.noexc.i.i ], [ %i.bh, %bb.k ] ; 2 uses
  switch i64 %i.bk, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN12V3NumberData10initStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !100
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !100
  br label %_ZN12V3NumberData10initStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bi, i64 %i.bk, i1 false)
  br label %_ZN12V3NumberData10initStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

_ZN12V3NumberData10initStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.l, %bb.m
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !99
  %i.bs = load ptr, ptr %0, align 8, !tbaa !98
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.n

bb.n:                                             ; preds = %_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit, %_ZN12V3NumberData10initStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, %bb.j, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opAssignERKS_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare void @_ZNK8V3Number5asciiB5cxx11Ebb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI8AstConstS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !36
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode8filelineEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  ret ptr %i.b
}

declare void @_ZN8AstConst13origParamNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !99
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.525) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !97
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !99   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !98
  %i.o = load i64, ptr %i.i, align 8, !tbaa !100
  store i64 %i.o, ptr %i.g, align 8, !tbaa !100
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !99
  store ptr %i.i, ptr %i.f, align 8, !tbaa !98
  store i64 0, ptr %i.q, align 8, !tbaa !99
  store i8 0, ptr %i.i, align 8, !tbaa !100
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !99   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !98     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !100
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !100
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !97
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !98   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
end_hunk_0
begin_hunk_1_@_ZN12V3NumberDataaSERKS_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !208    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN12V3NumberData18destroyStoredValueEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !209
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #26
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit

_ZN12V3NumberData18destroyStoredValueEv.exit:     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d, %bb.e, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !288
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit22

bb.g:                                             ; preds = %bb.a
  %i.aa = icmp sgt i32 %i.b, 128
  %i.ab = icmp eq i8 %i.e, 1
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN12V3NumberData31reinitWithOrAssignDynamicNumberIRKSt6vectorINS_9ValueAndXESaIS2_EEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit22

bb.i:                                             ; preds = %bb.g
  %i.ad = icmp eq i8 %i.e, 3
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN12V3NumberData24reinitWithOrAssignStringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit22

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !204 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 3
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %0, align 8, !tbaa !98    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN12V3NumberData18destroyStoredValueEv.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20: ; preds = %bb.l
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !100
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #26
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit22

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !205
  %i.ao = icmp sgt i32 %i.an, 128
  %i.ap = icmp eq i8 %i.af, 1
  %i.aq = and i1 %i.ap, %i.ao
  br i1 %i.aq, label %bb.n, label %_ZN12V3NumberData18destroyStoredValueEv.exit22

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %0, align 8, !tbaa !208   ; 3 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i19, label %_ZN12V3NumberData18destroyStoredValueEv.exit22, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !209
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #26
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit22

_ZN12V3NumberData18destroyStoredValueEv.exit22:   ; preds = %bb.l, %bb.o, %bb.n, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20, %bb.h, %bb.j, %_ZN12V3NumberData18destroyStoredValueEv.exit
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !205
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !205
  %i.az = load i8, ptr %i.d, align 4, !tbaa !204
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.az, ptr %i.ba, align 4, !tbaa !204
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 6 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 7 uses
  %i.be = and i8 %i.bc, 1
  %i.bf = load i8, ptr %i.bd, align 1
  %i.bg = and i8 %i.bf, -2
  %i.bh = or disjoint i8 %i.bg, %i.be             ; 2 uses
  store i8 %i.bh, ptr %i.bd, align 1
  %i.bi = load i8, ptr %i.bb, align 1
  %.lobit = and i8 %i.bi, 2
  %i.bj = and i8 %i.bh, -3
  %i.bk = or disjoint i8 %i.bj, %.lobit           ; 2 uses
  store i8 %i.bk, ptr %i.bd, align 1
  %i.bl = load i8, ptr %i.bb, align 1
  %.lobit15 = and i8 %i.bl, 4
  %i.bm = and i8 %i.bk, -5
  %i.bn = or disjoint i8 %i.bm, %.lobit15         ; 2 uses
  store i8 %i.bn, ptr %i.bd, align 1
  %i.bo = load i8, ptr %i.bb, align 1
  %.lobit16 = and i8 %i.bo, 8
  %i.bp = and i8 %i.bn, -9
  %i.bq = or disjoint i8 %i.bp, %.lobit16         ; 2 uses
  store i8 %i.bq, ptr %i.bd, align 1
  %i.br = load i8, ptr %i.bb, align 1
  %.lobit17 = and i8 %i.br, 16
  %i.bs = and i8 %i.bq, -17
  %i.bt = or disjoint i8 %i.bs, %.lobit17         ; 2 uses
  store i8 %i.bt, ptr %i.bd, align 1
  %i.bu = load i8, ptr %i.bb, align 1
  %.lobit18 = and i8 %i.bu, 32
  %i.bv = and i8 %i.bt, -33
  %i.bw = or disjoint i8 %i.bv, %.lobit18
  store i8 %i.bw, ptr %i.bd, align 1
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12V3NumberData31reinitWithOrAssignDynamicNumberIRKSt6vectorINS_9ValueAndXESaIS2_EEEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  %i.c = icmp sgt i32 %i.b, 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = icmp eq i8 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %i.e, 3
  br i1 %i.i, label %bb.d, label %_ZN12V3NumberData13destroyStringEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN12V3NumberData13destroyStringEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !100
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZN12V3NumberData13destroyStringEv.exit

_ZN12V3NumberData13destroyStringEv.exit:          ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !287  ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !208    ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN12V3NumberData13destroyStringEv.exit
  %i.u = icmp ugt i64 %i.t, 9223372036854775800
  br i1 %i.u, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN12V3NumberData9ValueAndXEE8allocateEmPKv.exit.i.i.i.i.i, !prof !123

.noexc.i.i.i:                                     ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN12V3NumberData9ValueAndXEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN12V3NumberData9ValueAndXEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN12V3NumberData13destroyStringEv.exit
  %i.w = phi ptr [ null, %_ZN12V3NumberData13destroyStringEv.exit ], [ %i.v, %_ZNSt15__new_allocatorIN12V3NumberData9ValueAndXEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !208
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !287
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !209
  %i.aa = load ptr, ptr %1, align 8, !tbaa !289   ; 3 uses
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !289
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 8
  br i1 %i.af, label %bb.g, label %bb.h, !prof !168

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.w, ptr align 4 %i.aa, i64 %i.ae, i1 false)
  br label %_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp eq i64 %i.ae, 8
  br i1 %i.ag, label %bb.i, label %_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.aa, align 4
  store i64 %i.ah, ptr %i.w, align 4
  br label %_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit

_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 %i.ae
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !287
  br label %bb.j

bb.j:                                             ; preds = %_ZN12V3NumberData17initDynamicNumberIJRKSt6vectorINS_9ValueAndXESaIS2_EEEEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.c = load ptr, ptr %1, align 8, !tbaa !208    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.i = load ptr, ptr %0, align 8, !tbaa !208    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE11_M_allocateEm.exit.i, !prof !123

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !168

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 4
  store i64 %i.r, ptr %i.o, align 4
  br label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !208    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !208
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !209
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12V3NumberData9ValueAndXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !287
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !168

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12V3NumberData9ValueAndXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12V3NumberData9ValueAndXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.c, align 4
  store i64 %i.ae, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12V3NumberData9ValueAndXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !168

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  br label %_ZSt4copyIPN12V3NumberData9ValueAndXES2_ET0_T_S4_S3_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPN12V3NumberData9ValueAndXES2_ET0_T_S4_S3_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.c, align 4
  store i64 %i.ah, ptr %i.i, align 4
  br label %_ZSt4copyIPN12V3NumberData9ValueAndXES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN12V3NumberData9ValueAndXES2_ET0_T_S4_S3_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %2 = load ptr, ptr %1, align 8, !tbaa !208
  %3 = load ptr, ptr %i.y, align 8, !tbaa !287    ; 3 uses
  %4 = load ptr, ptr %0, align 8, !tbaa !208
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %7 ; 3 uses
  %8 = load ptr, ptr %i.a, align 8, !tbaa !287
  %9 = ptrtoint ptr %8 to i64
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %9, %i.aj                       ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.r, label %bb.s, !prof !168

bb.r:                                             ; preds = %_ZSt4copyIPN12V3NumberData9ValueAndXES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %3, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12V3NumberData9ValueAndXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.s:                                             ; preds = %_ZSt4copyIPN12V3NumberData9ValueAndXES2_ET0_T_S4_S3_.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12V3NumberData9ValueAndXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.t:                                             ; preds = %bb.s
  %i.an = load i64, ptr %i.ai, align 4
  store i64 %i.an, ptr %3, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12V3NumberData9ValueAndXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12V3NumberData9ValueAndXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !208
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !287
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12V3NumberData9ValueAndXESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15SimulateVisitor11newOutValueEP7AstNodePK11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 8, !tbaa !36
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 121
  br i1 %i.b, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit, label %bb.w

_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit: ; preds = %bb.b
  %i.c = tail call noundef ptr @_ZN15SimulateVisitor11newOutConstEP7AstNode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.f = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opAssignERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.e) ; 0 uses
  %i.g = tail call noundef i32 @_ZN15SimulateVisitor5debugEv()
  %i.h = icmp sgt i32 %i.g, 8
  br i1 %i.h, label %bb.c, label %bb.ac, !prof !123

bb.c:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPKT_PKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.719, i32 noundef 278)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = load ptr, ptr %4, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !99
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.776, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.o = load ptr, ptr %2, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.r = load ptr, ptr %5, align 8, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !99
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.r, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit31 unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit31: ; preds = %bb.e
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.737, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit31
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %1)
          to label %bb.f unwind label %bb.n       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.x = load ptr, ptr %5, align 8, !tbaa !98     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !100
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ac = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !100
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !99 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !100
  %.not26 = icmp eq i8 %i.am, 10
  %i.an = load ptr, ptr %7, align 8, !tbaa !98    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37: ; preds = %bb.h
  %i.aq = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.h
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !100
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.as) #26
  %.pre = load ptr, ptr %6, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %i.at = phi ptr [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !100
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.not26, label %bb.r, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 10)
          to label %bb.r unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.c, %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit31, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.n
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !100
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
end_hunk_1
