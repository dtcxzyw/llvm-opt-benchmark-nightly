Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/UfarCmd?download=true
inline.NumInlined: 5509
inline.NumDeleted: 1852
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZL24Abc_CommandProveUsingUifP12Abc_Frame_t_iPPc:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.qp = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.be
  br i1 %i.qq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.qr = load i64, ptr %i.be, align 8, !tbaa !33
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.qt = load ptr, ptr %i.ba, align 8, !tbaa !40
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.qt)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.qu = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %i.qv = icmp eq ptr %i.qu, %i.aj
  br i1 %i.qv, label %_ZN6OptMgrD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.qw = load i64, ptr %i.aj, align 8, !tbaa !33
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qx) #27
  br label %_ZN6OptMgrD2Ev.exit

_ZN6OptMgrD2Ev.exit:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.qy = load ptr, ptr %i.ae, align 8, !tbaa !40
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6OptMgr6OptionEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %i.qy)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN6OptMgrD2Ev.exit, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @Ufar_ProveWithTimeout(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 27 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"struct.UFAR::UfarManager::Params", align 8 ; 5 uses
  %15 = alloca %"class.UFAR::UfarManager", align 8 ; 16 uses
  %16 = alloca %struct.timeval, align 8           ; 4 uses
  %17 = alloca %"class.std::vector", align 8      ; 17 uses
  %18 = alloca %"class.std::set.48", align 8      ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %24 = alloca %class.OptMgr, align 8             ; 18 uses
  %.sroa.0225 = alloca %struct.Ufar_StopCtx_t_, align 8 ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %26 = alloca %"class.std::vector.12", align 8   ; 9 uses
  %27 = alloca %"class.std::vector.12", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @_ZN4UFAR11UfarManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(1112) %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  store i32 0, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %i.l, ptr %i.o, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  store i64 0, ptr %i.p, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.q = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.q, ptr %19, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 7 uses
  store i64 0, ptr %i.r, align 8, !tbaa !34
  store i8 0, ptr %i.q, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 10 uses
  store ptr %i.s, ptr %20, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 13 uses
  store i64 0, ptr %i.t, align 8, !tbaa !34
  store i8 0, ptr %i.s, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.u, ptr %21, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !34
  store i8 0, ptr %i.u, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.w = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  store ptr %i.w, ptr %22, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !34
  store i8 0, ptr %i.w, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.y, ptr %23, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store i64 0, ptr %i.z, align 8, !tbaa !34
  store i8 0, ptr %i.y, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store i32 1, ptr %i.g, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store i32 0, ptr %i.h, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store i32 -1, ptr %i.i, align 4, !tbaa !44
  %i.aa = icmp eq ptr %0, null
  br i1 %i.aa, label %bb.fp, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @_ZN4UFAR11UfarManager6ParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(296) %14) #25
  %i.ab = call noundef nonnull align 8 dereferenceable(296) ptr @_ZN4UFAR11UfarManager6ParamsaSEOS1_(ptr noundef nonnull align 8 dereferenceable(296) %15, ptr noundef nonnull align 8 dereferenceable(296) %14) #25 ; 0 uses
  call void @_ZN4UFAR11UfarManager6ParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  store i32 %4, ptr %15, align 8, !tbaa !171
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %3, ptr %i.ac, align 8, !tbaa !172
  %i.ad = icmp sgt i32 %1, 0
  br i1 %i.ad, label %bb.c, label %_ZL21Ufar_SetDefaultParamsRN4UFAR11UfarManager6ParamsEiiPFiiEi.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i32 %1, ptr %i.ae, align 8, !tbaa !173
  br label %_ZL21Ufar_SetDefaultParamsRN4UFAR11UfarManager6ParamsEiiPFiiEi.exit

_ZL21Ufar_SetDefaultParamsRN4UFAR11UfarManager6ParamsEiiPFiiEi.exit: ; preds = %bb.b, %bb.c
  %.not.i = icmp ne i32 %2, 0
  %i.af = zext i1 %.not.i to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 56
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !174
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.dl, label %bb.d

bb.d:                                             ; preds = %_ZL21Ufar_SetDefaultParamsRN4UFAR11UfarManager6ParamsEiiPFiiEi.exit
  %i.ah = load i8, ptr %5, align 1, !tbaa !33
  %.not112 = icmp eq i8 %i.ah, 0
  br i1 %.not112, label %bb.dl, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.ai, ptr %7, align 8, !tbaa !27
  %i.aj = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %5) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 %i.aj, ptr %i.f, align 8, !tbaa !29
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #25 ; 2 uses
  store ptr %i.al, ptr %7, align 8, !tbaa !31
  %i.am = load i64, ptr %i.f, align 8, !tbaa !29
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = phi ptr [ %i.al, %bb.f ], [ %i.ai, %bb.e ] ; 2 uses
  switch i64 %i.aj, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = load i8, ptr %5, align 1, !tbaa !33
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull readonly align 1 %5, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !34
  %i.ar = load ptr, ptr %7, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !34 ; 16 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  store i64 0, ptr %i.t, align 8, !tbaa !34
  %i.au = load ptr, ptr %20, align 8, !tbaa !31
  store i8 0, ptr %i.au, align 1, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i
  %.095.i = phi i1 [ undef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i ], [ %.297.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i ] ; 3 uses
  %.091.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i ], [ %.7.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i ] ; 2 uses
  %i.bh = icmp ult i64 %.091.i, %i.at
  %.pre250.i = load ptr, ptr %7, align 8, !tbaa !31 ; 4 uses
  br i1 %i.bh, label %.preheader.i, label %split.i

.preheader.i:                                     ; preds = %bb.i, %bb.j
  %.192202.i = phi i64 [ %i.bm, %bb.j ], [ %.091.i, %bb.i ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre250.i, i64 %.192202.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !33
  %i.bk = zext i8 %i.bj to i32
  %i.bl = call i32 @isspace(i32 noundef %i.bk) #29
  %.not.i142 = icmp eq i32 %i.bl, 0
  br i1 %.not.i142, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %.preheader.i
  %i.bm = add i64 %.192202.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond.not.i, label %split.i, label %.preheader.i, !llvm.loop !175

.critedge.i:                                      ; preds = %.preheader.i
  %28 = icmp eq i64 %.192202.i, %i.at
  br i1 %28, label %split.i, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.av, ptr %8, align 8, !tbaa !27
  store i64 0, ptr %i.aw, align 8, !tbaa !34
  store i8 0, ptr %i.av, align 8, !tbaa !33
  %29 = icmp ult i64 %.192202.i, %i.at
  br i1 %29, label %.lr.ph.i, label %.critedge189.preheader.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.ac
  %.088204.i = phi i8 [ %.290.i, %bb.ac ], [ 0, %bb.k ] ; 3 uses
  %.293203.i = phi i64 [ %.4.i, %bb.ac ], [ %.192202.i, %bb.k ] ; 9 uses
  %i.bn = load ptr, ptr %7, align 8, !tbaa !31    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.293203.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !33  ; 8 uses
  %.not106.i = icmp eq i8 %.088204.i, 0
  br i1 %.not106.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.bq = icmp eq i8 %i.bp, %.088204.i
  br i1 %i.bq, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = icmp eq i8 %i.bp, 92
  br i1 %i.br, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre.i = load i64, ptr %i.aw, align 8, !tbaa !34
  %.pre241.i = load ptr, ptr %8, align 8, !tbaa !31
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bs = add nuw i64 %.293203.i, 1               ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %i.at
  %.pre240.i = load i64, ptr %i.aw, align 8, !tbaa !34 ; 5 uses
  %.pre242.i = load ptr, ptr %8, align 8, !tbaa !31 ; 3 uses
  br i1 %i.bt, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !33
  %i.bw = add i64 %.pre240.i, 1                   ; 2 uses
  %i.bx = icmp eq ptr %.pre242.i, %i.av
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.o
  %i.by = icmp ult i64 %.pre240.i, 16
  call void @llvm.assume(i1 %i.by)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.av, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ca = phi i64 [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.cb = icmp ugt i64 %i.bw, %i.ca
  br i1 %i.cb, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.pre240.i, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i.i = load ptr, ptr %8, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.cc = phi ptr [ %.pre.i.i.i, %bb.p ], [ %.pre242.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.pre240.i
  store i8 %i.bv, ptr %i.cd, align 1, !tbaa !33
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.n, %._crit_edge.i
  %i.ce = phi ptr [ %.pre241.i, %._crit_edge.i ], [ %.pre242.i, %bb.n ] ; 2 uses
  %i.cf = phi i64 [ %.pre.i, %._crit_edge.i ], [ %.pre240.i, %bb.n ] ; 4 uses
  %i.cg = add i64 %i.cf, 1                        ; 2 uses
  %i.ch = icmp eq ptr %i.ce, %i.av
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i113.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i113.i: ; preds = %bb.q
  %i.ci = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i111.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110.i: ; preds = %bb.q
  %i.cj = load i64, ptr %i.av, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i111.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i111.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i113.i
  %i.ck = phi i64 [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i113.i ]
  %i.cl = icmp ugt i64 %i.cg, %i.ck
  br i1 %i.cl, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit114.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i111.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.cf, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i112.i = load ptr, ptr %8, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit114.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit114.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i111.i
  %i.cm = phi ptr [ %.pre.i.i112.i, %bb.r ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i111.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cf
  store i8 %i.bp, ptr %i.cn, align 1, !tbaa !33
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit114.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i
  %.sink.i = phi i64 [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit114.i ] ; 2 uses
  %.394.ph.i = phi i64 [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ %.293203.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit114.i ]
  store i64 %.sink.i, ptr %i.aw, align 8, !tbaa !34
  %i.co = load ptr, ptr %8, align 8, !tbaa !31
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sink.i
  store i8 0, ptr %i.cp, align 1, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %bb.l
  %.394.i = phi i64 [ %.293203.i, %bb.l ], [ %.394.ph.i, %.sink.split.i ]
  %.189.i = phi i8 [ 0, %bb.l ], [ %.088204.i, %.sink.split.i ]
  %i.cq = add nuw i64 %.394.i, 1
  br label %bb.ac, !llvm.loop !176

bb.t:                                             ; preds = %.lr.ph.i
  switch i8 %i.bp, label %bb.v [
    i8 39, label %bb.u
    i8 34, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.cr = add nuw i64 %.293203.i, 1
  br label %bb.ac, !llvm.loop !176

bb.v:                                             ; preds = %bb.t
  %i.cs = zext i8 %i.bp to i32
  %i.ct = call i32 @isspace(i32 noundef %i.cs) #29
  %.not107.i = icmp eq i32 %i.ct, 0
  br i1 %.not107.i, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.cu = icmp eq i8 %i.bp, 92
  br i1 %i.cu, label %bb.x, label %._crit_edge243.i

._crit_edge243.i:                                 ; preds = %bb.w
  %.pre244.i = load i64, ptr %i.aw, align 8, !tbaa !34
  %.pre246.i = load ptr, ptr %8, align 8, !tbaa !31
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cv = add i64 %.293203.i, 1                   ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.at
  %.pre245.i = load i64, ptr %i.aw, align 8, !tbaa !34 ; 5 uses
  %.pre247.i = load ptr, ptr %8, align 8, !tbaa !31 ; 3 uses
  br i1 %i.cw, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !33
  %i.cz = add i64 %.pre245.i, 1                   ; 3 uses
  %i.da = icmp eq ptr %.pre247.i, %i.av
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i118.i: ; preds = %bb.y
  %i.db = icmp ult i64 %.pre245.i, 16
  call void @llvm.assume(i1 %i.db)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i: ; preds = %bb.y
  %i.dc = load i64, ptr %i.av, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i118.i
  %i.dd = phi i64 [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i118.i ]
  %i.de = icmp ugt i64 %i.cz, %i.dd
  br i1 %i.de, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit119.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.pre245.i, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i117.i = load ptr, ptr %8, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit119.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit119.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i
  %i.df = phi ptr [ %.pre.i.i117.i, %bb.z ], [ %.pre247.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.pre245.i
  store i8 %i.cy, ptr %i.dg, align 1, !tbaa !33
  store i64 %i.cz, ptr %i.aw, align 8, !tbaa !34
  %i.dh = load ptr, ptr %8, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  store i8 0, ptr %i.di, align 1, !tbaa !33
  %i.dj = add i64 %.293203.i, 2
  br label %bb.ac, !llvm.loop !176

bb.aa:                                            ; preds = %bb.x, %._crit_edge243.i
  %i.dk = phi ptr [ %.pre246.i, %._crit_edge243.i ], [ %.pre247.i, %bb.x ] ; 2 uses
  %i.dl = phi i64 [ %.pre244.i, %._crit_edge243.i ], [ %.pre245.i, %bb.x ] ; 4 uses
  %i.dm = add i64 %i.dl, 1                        ; 3 uses
  %i.dn = icmp eq ptr %i.dk, %i.av
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i123.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i123.i: ; preds = %bb.aa
  %i.do = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.do)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i121.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i: ; preds = %bb.aa
  %i.dp = load i64, ptr %i.av, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i121.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i121.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i123.i
  %i.dq = phi i64 [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i123.i ]
  %i.dr = icmp ugt i64 %i.dm, %i.dq
  br i1 %i.dr, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit124.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i121.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.dl, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i122.i = load ptr, ptr %8, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit124.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit124.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i121.i
  %i.ds = phi ptr [ %.pre.i.i122.i, %bb.ab ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i121.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dl
  store i8 %i.bp, ptr %i.dt, align 1, !tbaa !33
  store i64 %i.dm, ptr %i.aw, align 8, !tbaa !34
  %i.du = load ptr, ptr %8, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dm
  store i8 0, ptr %i.dv, align 1, !tbaa !33
  %i.dw = add i64 %.293203.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit124.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit119.i, %bb.u, %bb.s
  %.4.i = phi i64 [ %i.cq, %bb.s ], [ %i.cr, %bb.u ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit124.i ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit119.i ] ; 3 uses
  %.290.i = phi i8 [ %.189.i, %bb.s ], [ %i.bp, %bb.u ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit124.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit119.i ]
  %i.dx = icmp ult i64 %.4.i, %i.at
  br i1 %i.dx, label %.lr.ph.i, label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %bb.v
  %.293.lcssa.ph.i = phi i64 [ %.4.i, %bb.ac ], [ %.293203.i, %bb.v ] ; 8 uses
  %.pre248.i = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.dy = icmp eq i64 %.pre248.i, 8
  br i1 %i.dy, label %.split.i, label %.critedge189.preheader.i

.critedge189.preheader.i:                         ; preds = %.split.i, %.thread.i, %bb.k
  %.293.lcssa319.i = phi i64 [ %.293.lcssa.ph.i, %.thread.i ], [ %.293.lcssa.ph.i, %.split.i ], [ %.192202.i, %bb.k ] ; 3 uses
  %i.dz = icmp ult i64 %.293.lcssa319.i, %i.at
  br i1 %i.dz, label %.lr.ph208.i, label %.critedge6.i

.lr.ph208.i:                                      ; preds = %.critedge189.preheader.i
  %i.ea = load ptr, ptr %7, align 8, !tbaa !31
  br label %bb.bt

.split.i:                                         ; preds = %.thread.i
  %i.eb = load ptr, ptr %8, align 8, !tbaa !31
  %i.ec = load i64, ptr %i.eb, align 1
  %i.ed = icmp ne i64 %i.ec, 8243124901069925677
  %i.ee = zext i1 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader.i, label %.critedge189.preheader.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader.i: ; preds = %.split.i
  %i.eg = icmp ult i64 %.293.lcssa.ph.i, %i.at
  br i1 %i.eg, label %.lr.ph212.i, label %.critedge4.i

.lr.ph212.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader.i
  %i.eh = load ptr, ptr %7, align 8, !tbaa !31
  br label %bb.ad

bb.ad:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph212.i
  %.083211.i = phi i64 [ %.293.lcssa.ph.i, %.lr.ph212.i ], [ %i.em, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.083211.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !33
  %i.ek = zext i8 %i.ej to i32
  %i.el = call i32 @isspace(i32 noundef %i.ek) #29
  %.not109.i = icmp eq i32 %i.el, 0
  br i1 %.not109.i, label %.critedge4.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.ad
  %i.em = add i64 %.083211.i, 1                   ; 2 uses
  %exitcond239.not.i = icmp eq i64 %i.em, %i.at
  br i1 %exitcond239.not.i, label %.critedge6.i, label %bb.ad, !llvm.loop !177

.critedge4.i:                                     ; preds = %bb.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader.i
  %.083.lcssa.i = phi i64 [ %.293.lcssa.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader.i ], [ %.083211.i, %bb.ad ] ; 7 uses
  %i.en = icmp eq i64 %.083.lcssa.i, %i.at
  br i1 %i.en, label %.critedge6.i, label %bb.ae

bb.ae:                                            ; preds = %.critedge4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.eo = load i64, ptr %i.aq, align 8, !tbaa !34, !noalias !178
  store ptr %i.ax, ptr %9, align 8, !tbaa !27, !alias.scope !178
  %i.ep = load ptr, ptr %7, align 8, !tbaa !31, !noalias !178 ; 2 uses
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.192202.i, i64 %i.eo) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !178
  store i64 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !29, !noalias !178
  %i.eq = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.eq, label %bb.af, label %._crit_edge.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.er = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #25 ; 2 uses
  store ptr %i.er, ptr %9, align 8, !tbaa !31, !alias.scope !178
  %i.es = load i64, ptr %i.e, align 8, !tbaa !29, !noalias !178
  store i64 %i.es, ptr %i.ax, align 8, !tbaa !33, !alias.scope !178
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.af, %bb.ae
  %i.et = phi ptr [ %i.er, %bb.af ], [ %i.ax, %bb.ae ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i
  %i.eu = load i8, ptr %i.ep, align 1, !tbaa !33
  store i8 %i.eu, ptr %i.et, align 1, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr align 1 %i.ep, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i.i
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !29, !noalias !178 ; 2 uses
  store i64 %i.ev, ptr %i.ay, align 8, !tbaa !34, !alias.scope !178
  %i.ew = load ptr, ptr %9, align 8, !tbaa !31, !alias.scope !178
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ex, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.az, ptr %10, align 8, !tbaa !27
  store i64 0, ptr %i.ba, align 8, !tbaa !34
  store i8 0, ptr %i.az, align 8, !tbaa !33
  %i.ey = load ptr, ptr %7, align 8, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.083.lcssa.i ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !33  ; 2 uses
  switch i8 %i.fa, label %bb.az [
    i8 34, label %bb.ai
    i8 39, label %bb.ai
  ]

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %.0215.i = add i64 %.083.lcssa.i, 1             ; 3 uses
  %i.fb = icmp ult i64 %.0215.i, %i.at
  br i1 %i.fb, label %.lr.ph218.i, label %.loopexit.i

.lr.ph218.i:                                      ; preds = %bb.ai, %bb.ap
  %.0217.i = phi i64 [ %.0.i, %bb.ap ], [ %.0215.i, %bb.ai ] ; 2 uses
  %.0.in216.i = phi i64 [ %.2.in.i, %bb.ap ], [ %.083.lcssa.i, %bb.ai ] ; 2 uses
  %i.fc = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.0217.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !33  ; 3 uses
  %i.ff = icmp eq i8 %i.fe, %i.fa
  br i1 %i.ff, label %.thread185.i, label %bb.aj

.thread185.i:                                     ; preds = %.lr.ph218.i
  %.2188.i = add i64 %.0.in216.i, 2
  br label %.loopexit.i

bb.aj:                                            ; preds = %.lr.ph218.i
  %i.fg = icmp eq i8 %i.fe, 92
  br i1 %i.fg, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fh = add i64 %.0.in216.i, 2                  ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %i.at
  br i1 %i.fi, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fh
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !33
  %i.fl = load i64, ptr %i.t, align 8, !tbaa !34  ; 4 uses
  %i.fm = add i64 %i.fl, 1                        ; 2 uses
  %i.fn = load ptr, ptr %20, align 8, !tbaa !31   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.s
  br i1 %i.fo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i128.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i128.i: ; preds = %bb.al
  %i.fp = icmp ult i64 %i.fl, 16
  call void @llvm.assume(i1 %i.fp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125.i: ; preds = %bb.al
  %i.fq = load i64, ptr %i.s, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i126.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i128.i
  %i.fr = phi i64 [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i128.i ]
  %i.fs = icmp ugt i64 %i.fm, %i.fr
  br i1 %i.fs, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit129.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i126.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.fl, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i127.i = load ptr, ptr %20, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit129.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit129.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i126.i
  %i.ft = phi ptr [ %.pre.i.i127.i, %bb.am ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i126.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl
  store i8 %i.fk, ptr %i.fu, align 1, !tbaa !33
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak, %bb.aj
  %i.fv = load i64, ptr %i.t, align 8, !tbaa !34  ; 4 uses
  %i.fw = add i64 %i.fv, 1                        ; 2 uses
  %i.fx = load ptr, ptr %20, align 8, !tbaa !31   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.s
  br i1 %i.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i133.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i133.i: ; preds = %bb.an
  %i.fz = icmp ult i64 %i.fv, 16
  call void @llvm.assume(i1 %i.fz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i: ; preds = %bb.an
  %i.ga = load i64, ptr %i.s, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i131.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i133.i
  %i.gb = phi i64 [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i133.i ]
  %i.gc = icmp ugt i64 %i.fw, %i.gb
  br i1 %i.gc, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit134.i

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i131.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.fv, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i132.i = load ptr, ptr %20, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit134.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit134.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i131.i
  %i.gd = phi ptr [ %.pre.i.i132.i, %bb.ao ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i131.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fv
  store i8 %i.fe, ptr %i.ge, align 1, !tbaa !33
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit134.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit129.i
  %.sink348.i = phi i64 [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit129.i ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit134.i ] ; 2 uses
  %.2.in.i = phi i64 [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit129.i ], [ %.0217.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit134.i ] ; 2 uses
  store i64 %.sink348.i, ptr %i.t, align 8, !tbaa !34
  %i.gf = load ptr, ptr %20, align 8, !tbaa !31
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sink348.i
  store i8 0, ptr %i.gg, align 1, !tbaa !33
  %.0.i = add nuw i64 %.2.in.i, 1                 ; 3 uses
  %i.gh = icmp ult i64 %.0.i, %i.at
  br i1 %i.gh, label %.lr.ph218.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ap, %.thread185.i, %bb.ai
end_hunk_0
begin_hunk_1_@Ufar_ProveWithTimeout:bb.a
  %.not9.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not9.i.i, label %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph12.i.i
  %i.jj = add i64 %i.jc, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.jj, i64 noundef 1) #25
  %i.jk = load i64, ptr %i.t, align 8, !tbaa !34  ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph12.i.i, !llvm.loop !188

_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph221.i, %bb.bk, %.lr.ph12.i.i, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.jm = load ptr, ptr %9, align 8, !tbaa !31, !noalias !189
  %i.jn = load i64, ptr %i.ay, align 8, !tbaa !34, !noalias !189 ; 3 uses
  %i.jo = load ptr, ptr %10, align 8, !tbaa !31, !noalias !189
  %i.jp = load i64, ptr %i.ba, align 8, !tbaa !34, !noalias !189 ; 3 uses
  store ptr %i.bf, ptr %13, align 8, !tbaa !27, !alias.scope !192
  store i64 0, ptr %i.bg, align 8, !tbaa !34, !alias.scope !192
  store i8 0, ptr %i.bf, align 8, !tbaa !33, !alias.scope !192
  %i.jq = add i64 %i.jp, %i.jn
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.jq) #25
  %i.jr = load i64, ptr %i.bg, align 8, !tbaa !34, !alias.scope !192
  %i.js = sub i64 4611686018427387903, %i.jr
  %i.jt = icmp ult i64 %i.js, %i.jn
  br i1 %i.jt, label %bb.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i

bb.bl:                                            ; preds = %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ju = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.jm, i64 noundef %i.jn) #25 ; 0 uses
  %i.jv = load i64, ptr %i.bg, align 8, !tbaa !34, !alias.scope !192
  %i.jw = sub i64 4611686018427387903, %i.jv
  %i.jx = icmp ult i64 %i.jw, %i.jp
  br i1 %i.jx, label %bb.bm, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.i

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.jy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.jo, i64 noundef %i.jp) #25 ; 0 uses
  %i.jz = load ptr, ptr %19, align 8, !tbaa !31   ; 6 uses
  %i.ka = icmp eq ptr %i.jz, %i.q
  %i.kb = load ptr, ptr %13, align 8, !tbaa !31   ; 5 uses
  %i.kc = icmp eq ptr %i.kb, %i.bf                ; 2 uses
  br i1 %i.ka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i159.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i154.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i159.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.i
  br i1 %i.kc, label %bb.bn, label %.thread.i160.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i154.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.i
  br i1 %i.kc, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i155.i

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i154.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i159.i
  %i.kd = load i64, ptr %i.bg, align 8, !tbaa !34 ; 3 uses
  %i.ke = icmp ult i64 %i.kd, 16
  call void @llvm.assume(i1 %i.ke)
  switch i64 %i.kd, label %bb.bp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i157.i
    i64 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.kf = load i8, ptr %i.kb, align 1, !tbaa !33
  store i8 %i.kf, ptr %i.jz, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i157.i

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jz, ptr align 1 %i.kb, i64 %i.kd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i157.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i157.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.kg = load i64, ptr %i.bg, align 8, !tbaa !34 ; 2 uses
  store i64 %i.kg, ptr %i.r, align 8, !tbaa !34
  %i.kh = load ptr, ptr %19, align 8, !tbaa !31
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kg
  store i8 0, ptr %i.ki, align 1, !tbaa !33
  %.pre.i158.i = load ptr, ptr %13, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit161.i

.thread.i160.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i159.i
  store ptr %i.kb, ptr %19, align 8, !tbaa !31
  %i.kj = load <2 x i64>, ptr %i.bg, align 8, !tbaa !33
  store <2 x i64> %i.kj, ptr %i.r, align 8, !tbaa !33
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i155.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i154.i
  %i.kk = load i64, ptr %i.q, align 8, !tbaa !33
  store ptr %i.kb, ptr %19, align 8, !tbaa !31
  %i.kl = load <2 x i64>, ptr %i.bg, align 8, !tbaa !33
  store <2 x i64> %i.kl, ptr %i.r, align 8, !tbaa !33
  %.not.i156.i = icmp eq ptr %i.jz, null
  br i1 %.not.i156.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i155.i
  store ptr %i.jz, ptr %13, align 8, !tbaa !31
  store i64 %i.kk, ptr %i.bf, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit161.i

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i155.i, %.thread.i160.i
  store ptr %i.bf, ptr %13, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit161.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit161.i: ; preds = %bb.br, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i157.i
  %i.km = phi ptr [ %i.jz, %bb.bq ], [ %i.bf, %bb.br ], [ %.pre.i158.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i157.i ]
  store i64 0, ptr %i.bg, align 8, !tbaa !34
  store i8 0, ptr %i.km, align 1, !tbaa !33
  %i.kn = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.bf
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit161.i
  %i.kp = load i64, ptr %i.bf, align 8, !tbaa !33
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit161.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.kr = load i64, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit169.i, label %.lr.ph.i165.preheader.i

.lr.ph.i165.preheader.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i
  %i.kt = load ptr, ptr %19, align 8, !tbaa !31
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !33
  %i.kv = zext i8 %i.ku to i32
  %i.kw = call i32 @isspace(i32 noundef %i.kv) #29
  %.not.i166223.i = icmp eq i32 %i.kw, 0
  br i1 %.not.i166223.i, label %.lr.ph12.i167.i.preheader, label %.lr.ph224.i

.lr.ph12.i167.i.preheader:                        ; preds = %.lr.ph.i165.i, %.lr.ph.i165.preheader.i
  %.ph = phi i64 [ %i.kr, %.lr.ph.i165.preheader.i ], [ %i.lb, %.lr.ph.i165.i ]
  br label %.lr.ph12.i167.i

.lr.ph.i165.i:                                    ; preds = %.lr.ph224.i
  %i.kx = load ptr, ptr %19, align 8, !tbaa !31
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !33
  %i.kz = zext i8 %i.ky to i32
  %i.la = call i32 @isspace(i32 noundef %i.kz) #29
  %.not.i166.i = icmp eq i32 %i.la, 0
  br i1 %.not.i166.i, label %.lr.ph12.i167.i.preheader, label %.lr.ph224.i, !llvm.loop !187

.lr.ph224.i:                                      ; preds = %.lr.ph.i165.preheader.i, %.lr.ph.i165.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 1) #25
  %i.lb = load i64, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit169.i, label %.lr.ph.i165.i, !llvm.loop !187

.lr.ph12.i167.i:                                  ; preds = %.lr.ph12.i167.i.preheader, %bb.bs
  %i.ld = phi i64 [ %i.ll, %bb.bs ], [ %.ph, %.lr.ph12.i167.i.preheader ] ; 2 uses
  %i.le = load ptr, ptr %19, align 8, !tbaa !31
  %i.lf = getelementptr i8, ptr %i.le, i64 %i.ld
  %i.lg = getelementptr i8, ptr %i.lf, i64 -1
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !33
  %i.li = zext i8 %i.lh to i32
  %i.lj = call i32 @isspace(i32 noundef %i.li) #29
  %.not9.i168.i = icmp eq i32 %i.lj, 0
  br i1 %.not9.i168.i, label %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit169.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph12.i167.i
  %i.lk = add i64 %i.ld, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.lk, i64 noundef 1) #25
  %i.ll = load i64, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit169.i, label %.lr.ph12.i167.i, !llvm.loop !188

_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit169.i: ; preds = %.lr.ph224.i, %bb.bs, %.lr.ph12.i167.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i
  %i.ln = load i64, ptr %i.t, align 8, !tbaa !34
  %i.lo = icmp ne i64 %i.ln, 0
  %i.lp = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.az
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.i: ; preds = %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit169.i
  %i.lr = load i64, ptr %i.az, align 8, !tbaa !33
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i: ; preds = %_ZL15Ufar_TrimStringRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit169.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.lt = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.ax
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i
  %i.lv = load i64, ptr %i.ax, align 8, !tbaa !33
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge6.i

bb.bt:                                            ; preds = %.critedge189.i, %.lr.ph208.i
  %.6207.i = phi i64 [ %.293.lcssa319.i, %.lr.ph208.i ], [ %i.mb, %.critedge189.i ] ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.6207.i
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !33
  %i.lz = zext i8 %i.ly to i32
  %i.ma = call i32 @isspace(i32 noundef %i.lz) #29
  %.not108.i = icmp eq i32 %i.ma, 0
  br i1 %.not108.i, label %.critedge6.i, label %.critedge189.i

.critedge189.i:                                   ; preds = %bb.bt
  %i.mb = add i64 %.6207.i, 1                     ; 2 uses
  %exitcond238.not.i = icmp eq i64 %i.mb, %i.at
  br i1 %exitcond238.not.i, label %.critedge6.i, label %bb.bt, !llvm.loop !195

.critedge6.i:                                     ; preds = %.critedge189.i, %bb.bt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i, %.critedge4.i, %.critedge189.preheader.i
  %i.mc = phi i1 [ true, %.critedge4.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i ], [ false, %.critedge189.preheader.i ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ false, %bb.bt ], [ false, %.critedge189.i ]
  %.297.i = phi i1 [ false, %.critedge4.i ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i ], [ %.095.i, %.critedge189.preheader.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %.095.i, %bb.bt ], [ %.095.i, %.critedge189.i ] ; 2 uses
  %.7.i = phi i64 [ %.293.lcssa.ph.i, %.critedge4.i ], [ %.293.lcssa.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i ], [ %.293.lcssa319.i, %.critedge189.preheader.i ], [ %.293.lcssa.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %.6207.i, %bb.bt ], [ %i.at, %.critedge189.i ]
  %i.md = load ptr, ptr %8, align 8, !tbaa !31    ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.av
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i: ; preds = %.critedge6.i
  %i.mf = load i64, ptr %i.av, align 8, !tbaa !33
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i: ; preds = %.critedge6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178._crit_edge.i, label %bb.i, !llvm.loop !196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178._crit_edge.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i
  %.pre249.i = load ptr, ptr %7, align 8, !tbaa !31
  br label %split.i, !llvm.loop !196

split.i:                                          ; preds = %.critedge.i, %bb.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178._crit_edge.i
  %30 = phi ptr [ %.pre249.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178._crit_edge.i ], [ %.pre250.i, %bb.j ], [ %.pre250.i, %bb.i ], [ %.pre250.i, %.critedge.i ] ; 2 uses
  %.398.i = phi i1 [ %.297.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178._crit_edge.i ], [ false, %bb.j ], [ false, %bb.i ], [ false, %.critedge.i ]
  %i.mh = icmp eq ptr %30, %i.ai
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i: ; preds = %split.i
  %i.mi = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %30, i64 noundef %i.mj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %split.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.mk = load ptr, ptr %19, align 8
  %spec.select = select i1 %.398.i, ptr %i.mk, ptr %5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.ml = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store i32 0, ptr %i.ml, align 8, !tbaa !35
  %i.mm = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store ptr null, ptr %i.mm, align 8, !tbaa !40
  %i.mn = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %i.ml, ptr %i.mn, align 8, !tbaa !41
  %i.mo = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %i.ml, ptr %i.mo, align 8, !tbaa !42
  %i.mp = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i64 0, ptr %i.mp, align 8, !tbaa !43
  %i.mq = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %24, i64 64 ; 6 uses
  store ptr %i.mr, ptr %i.mq, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.mr, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.ms = getelementptr inbounds nuw i8, ptr %24, i64 56
  store i64 5, ptr %i.ms, align 8, !tbaa !34
  %i.mt = getelementptr inbounds nuw i8, ptr %24, i64 69
  store i8 0, ptr %i.mt, align 1, !tbaa !33
  call fastcc void @_ZL15Ufar_AddOptionsR6OptMgrRKN4UFAR11UfarManager6ParamsE(ptr noundef nonnull align 8 dereferenceable(80) %24, ptr noundef nonnull align 8 dereferenceable(296) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.mu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.mu, ptr %6, align 8, !tbaa !27
  %i.mv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  store i64 0, ptr %i.mv, align 8, !tbaa !34
  store i8 0, ptr %i.mu, align 8, !tbaa !33
  %i.mw = icmp eq ptr %spec.select, null
  br i1 %i.mw, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit57.i, label %.preheader.i146

.preheader.i146:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.mx = load i8, ptr %spec.select, align 1, !tbaa !33 ; 2 uses
  %.not59.i = icmp eq i8 %i.mx, 0
  br i1 %.not59.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit57.i, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.preheader.i146
  %i.my = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %17, i64 16
  br label %bb.bu

bb.bu:                                            ; preds = %bb.cq, %.lr.ph.i147
  %i.na = phi i8 [ %i.mx, %.lr.ph.i147 ], [ %i.pv, %bb.cq ] ; 9 uses
  %.061.i = phi i8 [ 0, %.lr.ph.i147 ], [ %.2.i, %bb.cq ] ; 4 uses
  %.02560.i = phi ptr [ %spec.select, %.lr.ph.i147 ], [ %i.pu, %bb.cq ] ; 9 uses
  %.not35.i = icmp eq i8 %.061.i, 0
  br i1 %.not35.i, label %bb.cc, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nb = icmp eq i8 %i.na, %.061.i
  br i1 %i.nb, label %bb.cq, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nc = icmp eq i8 %i.na, 92
  br i1 %i.nc, label %bb.bx, label %._crit_edge62.i

._crit_edge62.i:                                  ; preds = %bb.bw
  %.pre.i148 = load i64, ptr %i.mv, align 8, !tbaa !34
  %.pre64.i = load ptr, ptr %6, align 8, !tbaa !31
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.nd = getelementptr inbounds nuw i8, ptr %.02560.i, i64 1 ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !33  ; 2 uses
  %.not38.i = icmp eq i8 %i.ne, 0
  %.pre63.i = load i64, ptr %i.mv, align 8, !tbaa !34 ; 5 uses
  %.pre65.i = load ptr, ptr %6, align 8, !tbaa !31 ; 3 uses
  br i1 %.not38.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nf = add i64 %.pre63.i, 1                    ; 3 uses
  %i.ng = icmp eq ptr %.pre65.i, %i.mu
  br i1 %i.ng, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158: ; preds = %bb.by
  %i.nh = icmp ult i64 %.pre63.i, 16
  call void @llvm.assume(i1 %i.nh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i154: ; preds = %bb.by
  %i.ni = load i64, ptr %i.mu, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i155: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158
  %i.nj = phi i64 [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i154 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158 ]
  %i.nk = icmp ugt i64 %i.nf, %i.nj
  br i1 %i.nk, label %bb.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i156

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i155
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %.pre63.i, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i.i157 = load ptr, ptr %6, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i156: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i155
  %i.nl = phi ptr [ %.pre.i.i.i157, %bb.bz ], [ %.pre65.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i155 ]
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.pre63.i
  store i8 %i.ne, ptr %i.nm, align 1, !tbaa !33
  store i64 %i.nf, ptr %i.mv, align 8, !tbaa !34
  %i.nn = load ptr, ptr %6, align 8, !tbaa !31
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nf
  store i8 0, ptr %i.no, align 1, !tbaa !33
  br label %bb.cq

bb.ca:                                            ; preds = %bb.bx, %._crit_edge62.i
  %i.np = phi ptr [ %.pre64.i, %._crit_edge62.i ], [ %.pre65.i, %bb.bx ] ; 2 uses
  %i.nq = phi i64 [ %.pre.i148, %._crit_edge62.i ], [ %.pre63.i, %bb.bx ] ; 4 uses
  %i.nr = add i64 %i.nq, 1                        ; 3 uses
  %i.ns = icmp eq ptr %i.np, %i.mu
  br i1 %i.ns, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42.i: ; preds = %bb.ca
  %i.nt = icmp ult i64 %i.nq, 16
  call void @llvm.assume(i1 %i.nt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39.i: ; preds = %bb.ca
  %i.nu = load i64, ptr %i.mu, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42.i
  %i.nv = phi i64 [ %i.nu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42.i ]
  %i.nw = icmp ugt i64 %i.nr, %i.nv
  br i1 %i.nw, label %bb.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit43.i

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.nq, i64 noundef 0, ptr noundef null, i64 noundef 1) #25
  %.pre.i.i41.i = load ptr, ptr %6, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit43.i: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40.i
  %i.nx = phi ptr [ %.pre.i.i41.i, %bb.cb ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40.i ]
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nq
  store i8 %i.na, ptr %i.ny, align 1, !tbaa !33
  store i64 %i.nr, ptr %i.mv, align 8, !tbaa !34
  %i.nz = load ptr, ptr %6, align 8, !tbaa !31
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.nr
  store i8 0, ptr %i.oa, align 1, !tbaa !33
  br label %bb.cq

bb.cc:                                            ; preds = %bb.bu
  switch i8 %i.na, label %bb.cd [
    i8 39, label %bb.cq
    i8 34, label %bb.cq
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.ob = zext i8 %i.na to i32
  %i.oc = call i32 @isspace(i32 noundef %i.ob) #29
  %.not36.i = icmp eq i32 %i.oc, 0
  br i1 %.not36.i, label %bb.ck, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.od = load i64, ptr %i.mv, align 8, !tbaa !34 ; 5 uses
  %i.oe = icmp eq i64 %i.od, 0
  br i1 %i.oe, label %bb.cq, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.of = load ptr, ptr %i.my, align 8, !tbaa !197 ; 8 uses
  %i.og = load ptr, ptr %i.mz, align 8, !tbaa !198
  %.not.i.i159 = icmp eq ptr %i.of, %i.og
  br i1 %.not.i.i159, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 4 uses
  store ptr %i.oh, ptr %i.of, align 8, !tbaa !27
  %i.oi = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.od, ptr %i.b, align 8, !tbaa !29
  %i.oj = icmp ugt i64 %i.od, 15
  br i1 %i.oj, label %._crit_edge.i.i.i.thread.i, label %._crit_edge.i.i.i.i160

._crit_edge.i.i.i.thread.i:                       ; preds = %bb.cg
  %i.ok = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.of, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ok, ptr %i.of, align 8, !tbaa !31
  %i.ol = load i64, ptr %i.b, align 8, !tbaa !29
  store i64 %i.ol, ptr %i.oh, align 8, !tbaa !33
  br label %bb.ci

._crit_edge.i.i.i.i160:                           ; preds = %bb.cg
  %cond58.i = icmp eq i64 %i.od, 1
  br i1 %cond58.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge.i.i.i.i160
  %i.om = load i8, ptr %i.oi, align 1, !tbaa !33
  store i8 %i.om, ptr %i.oh, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.ci:                                            ; preds = %._crit_edge.i.i.i.i160, %._crit_edge.i.i.i.thread.i
  %i.on = phi ptr [ %i.ok, %._crit_edge.i.i.i.thread.i ], [ %i.oh, %._crit_edge.i.i.i.i160 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.on, ptr align 1 %i.oi, i64 %i.od, i1 false)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.ci, %bb.ch
  %i.oo = phi i64 [ %.pre, %bb.ci ], [ 1, %bb.ch ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 8
end_hunk_1
