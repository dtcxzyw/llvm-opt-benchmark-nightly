inline.NumInlined: 4253
inline.NumDeleted: 716
begin_hunk_0_@_ZN2PP3Cmd19multi_line_commentsERi:bb.a
  store ptr %.sroa.10119.0, ptr %i.lv, align 8, !tbaa !76, !alias.scope !1791, !noalias !1794
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  store ptr %storemerge.i.i106, ptr %3, align 8, !tbaa !71, !alias.scope !1796, !noalias !1794
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.lq, ptr %i.lw, align 8, !tbaa !75, !alias.scope !1796, !noalias !1794
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 512
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !87, !alias.scope !1796, !noalias !1794
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.10.0, ptr %i.lz, align 8, !tbaa !76, !alias.scope !1796, !noalias !1794
  call void @_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %11, ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.by

bb.by:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit107, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP3Cmd13handle_quotesERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit ], [ 0, %bb.a ] ; 4 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = icmp ne ptr %i.h, null
  %.neg.i.i = sext i1 %i.n to i64
  %i.o = add nsw i64 %i.m, %.neg.i.i
  %i.p = shl nsw i64 %i.o, 2
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 7
  %i.w = add nsw i64 %i.p, %i.v
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 7
  %i.ad = add nsw i64 %i.w, %i.ac
  %sext = shl i64 %i.ad, 32
  %i.ae = ashr exact i64 %sext, 32
  %i.af = icmp slt i64 %indvars.iv, %i.ae
  br i1 %i.af, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !75, !noalias !1797
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.aa, %i.ah
  %i.aj = ashr exact i64 %i.ai, 7
  %i.ak = add nsw i64 %i.aj, %indvars.iv          ; 5 uses
  %i.al = icmp sgt i64 %i.ak, -1
  br i1 %i.al, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.am = icmp samesign ult i64 %i.ak, 4
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.y, i64 %indvars.iv
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = lshr i64 %i.ak, 2
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ap = ashr i64 %i.ak, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = phi i64 [ %i.ao, %bb.g ], [ %i.ap, %bb.h ] ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51, !noalias !1797
  %i.at = shl nsw i64 %i.aq, 2
  %i.au = sub nsw i64 %i.ak, %i.at
  %i.av = getelementptr inbounds [128 x i8], ptr %i.as, i64 %i.au
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit:          ; preds = %bb.f, %bb.i
  %storemerge.i.i.i.i = phi ptr [ %i.av, %bb.i ], [ %i.an, %bb.f ]
  tail call void @_ZN2PP4Word13handle_quotesERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !1800
}

declare void @_ZN2PP4Word13handle_quotesERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP3Cmd15handle_exe_argsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr noundef nonnull align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSolsEPFRSoS_E.exit, %bb.a
  %indvars.iv261 = phi i64 [ %indvars.iv.next262.pre-phi, %_ZNSolsEPFRSoS_E.exit ], [ 0, %bb.a ] ; 7 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSolsEPFRSoS_E.exit ], [ 2, %bb.a ] ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !76  ; 2 uses
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !76  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ne ptr %i.ag, null
  %.neg.i.i = sext i1 %i.am to i64
  %i.an = add nsw i64 %i.al, %.neg.i.i
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 7
  %i.av = add nsw i64 %i.ao, %i.au
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = lshr exact i64 %i.ba, 7
  %i.bc = add nsw i64 %i.av, %i.bb
  %i.bd = shl i64 %i.bc, 32
  %sext = add i64 %i.bd, -4294967296
  %i.be = ashr exact i64 %sext, 32
  %i.bf = icmp slt i64 %indvars.iv261, %i.be
  br i1 %i.bf, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  store ptr %i.bg, ptr %11, align 8, !tbaa !8, !alias.scope !1807
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !12, !alias.scope !1807
  store i8 0, ptr %i.bg, align 8, !tbaa !15, !alias.scope !1807
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %13 = load ptr, ptr %12, align 8, !tbaa !1808, !noalias !1807 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %13, null
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !1807 ; 2 uses
  %14 = icmp ugt ptr %13, %i.bj
  %.08.i.i.i = select i1 %14, ptr %13, ptr %i.bj  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1810, !noalias !1807 ; 2 uses
  %i.bm = ptrtoint ptr %.08.i.i.i to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.bl, i64 noundef %i.bo)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %11, align 8, !tbaa !45, !alias.scope !1807 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bg
  br i1 %i.bs, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bt = load i64, ptr %i.bg, align 8, !tbaa !15, !alias.scope !1807
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #21
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !75, !noalias !1811
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.az, %i.bx
  %i.bz = ashr exact i64 %i.by, 7
  %i.ca = add nsw i64 %i.bz, %indvars.iv261       ; 5 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  br i1 %i.cb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cc = icmp samesign ult i64 %i.ca, 4
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr %i.ax, i64 %indvars.iv261
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = lshr i64 %i.ca, 2
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cf = ashr i64 %i.ca, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cg = phi i64 [ %i.ce, %bb.j ], [ %i.cf, %bb.k ] ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !51, !noalias !1811
  %i.cj = shl nsw i64 %i.cg, 2
  %i.ck = sub nsw i64 %i.ca, %i.cj
  %i.cl = getelementptr inbounds [128 x i8], ptr %i.ci, i64 %i.ck
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit:          ; preds = %bb.i, %bb.l
  %storemerge.i.i.i.i = phi ptr [ %i.cl, %bb.l ], [ %i.cd, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  store ptr %i.p, ptr %3, align 8, !tbaa !8, !alias.scope !1814
  %i.cm = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !45, !noalias !1814 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !12, !noalias !1814 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22, !noalias !1814
  store i64 %i.co, ptr %i.h, align 8, !tbaa !67, !noalias !1814
  %i.cp = icmp ugt i64 %i.co, 15
  br i1 %i.cp, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.cq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc unwind label %bb.aq    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.cq, ptr %3, align 8, !tbaa !45, !alias.scope !1814
  %i.cr = load i64, ptr %i.h, align 8, !tbaa !67, !noalias !1814
  store i64 %i.cr, ptr %i.p, align 8, !tbaa !15, !alias.scope !1814
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.cs = phi ptr [ %i.cq, %.noexc ], [ %i.p, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit ] ; 2 uses
  switch i64 %i.co, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.ct = load i8, ptr %i.cm, align 1, !tbaa !15
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !15
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cm, i64 %i.co, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.cu = load i64, ptr %i.h, align 8, !tbaa !67, !noalias !1814 ; 2 uses
  store i64 %i.cu, ptr %i.q, align 8, !tbaa !12, !alias.scope !1814
  %i.cv = load ptr, ptr %3, align 8, !tbaa !45, !alias.scope !1814
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu
  store i8 0, ptr %i.cw, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22, !noalias !1814
  %i.cx = load i64, ptr %i.q, align 8, !tbaa !12
  %i.cy = icmp eq i64 %i.cx, 1
  %.pre266 = load ptr, ptr %3, align 8, !tbaa !45 ; 3 uses
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge88

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.o
  %lhsc = load i8, ptr %.pre266, align 1
  %i.cz = icmp eq i8 %lhsc, 45
  br i1 %i.cz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge88

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.da = add nuw nsw i64 %indvars.iv261, 1       ; 4 uses
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !71, !noalias !1817 ; 2 uses
  %i.dc = load ptr, ptr %i.o, align 8, !tbaa !75, !noalias !1817
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !76, !noalias !1817
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 7
  %i.di = add nsw i64 %i.dh, %i.da                ; 5 uses
  %i.dj = icmp sgt i64 %i.di, -1
  br i1 %i.dj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dk = icmp samesign ult i64 %i.di, 4
  br i1 %i.dk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw [128 x i8], ptr %i.db, i64 %i.da
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94

bb.r:                                             ; preds = %bb.p
  %i.dm = lshr i64 %i.di, 2
  br label %bb.t

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dn = ashr i64 %i.di, 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.do = phi i64 [ %i.dm, %bb.r ], [ %i.dn, %bb.s ] ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !51, !noalias !1817
  %i.dr = shl nsw i64 %i.do, 2
  %i.ds = sub nsw i64 %i.di, %i.dr
  %i.dt = getelementptr inbounds [128 x i8], ptr %i.dq, i64 %i.ds
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94:        ; preds = %bb.q, %bb.t
  %storemerge.i.i.i.i93 = phi ptr [ %i.dt, %bb.t ], [ %i.dl, %bb.q ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  store ptr %i.r, ptr %4, align 8, !tbaa !8, !alias.scope !1820
  %i.du = load ptr, ptr %storemerge.i.i.i.i93, align 8, !tbaa !45, !noalias !1820 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i93, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !12, !noalias !1820 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22, !noalias !1820
  store i64 %i.dw, ptr %i.g, align 8, !tbaa !67, !noalias !1820
  %i.dx = icmp ugt i64 %i.dw, 15
  br i1 %i.dx, label %.noexc.i.i96, label %._crit_edge.i.i.i95

.noexc.i.i96:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94
  %i.dy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc97 unwind label %bb.ar  ; 2 uses

.noexc97:                                         ; preds = %.noexc.i.i96
  store ptr %i.dy, ptr %4, align 8, !tbaa !45, !alias.scope !1820
  %i.dz = load i64, ptr %i.g, align 8, !tbaa !67, !noalias !1820
  store i64 %i.dz, ptr %i.r, align 8, !tbaa !15, !alias.scope !1820
  br label %._crit_edge.i.i.i95

._crit_edge.i.i.i95:                              ; preds = %.noexc97, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94
  %i.ea = phi ptr [ %i.dy, %.noexc97 ], [ %i.r, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94 ] ; 2 uses
  switch i64 %i.dw, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i95
  %i.eb = load i8, ptr %i.du, align 1, !tbaa !15
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !15
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr align 1 %i.du, i64 %i.dw, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i95
  %i.ec = load i64, ptr %i.g, align 8, !tbaa !67, !noalias !1820 ; 2 uses
  store i64 %i.ec, ptr %i.s, align 8, !tbaa !12, !alias.scope !1820
  %i.ed = load ptr, ptr %4, align 8, !tbaa !45, !alias.scope !1820
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec
  store i8 0, ptr %i.ee, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22, !noalias !1820
end_hunk_0
begin_hunk_1_@_ZN2PP3Cmd15check_processedERbRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
  %i.fq = getelementptr inbounds [128 x i8], ptr %i.fn, i64 %i.fp
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34:        ; preds = %bb.w, %bb.z
  %storemerge.i.i.i.i33 = phi ptr [ %i.fq, %bb.z ], [ %i.fi, %bb.w ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  store ptr %i.bb, ptr %4, align 8, !tbaa !8, !alias.scope !2169
  %i.fr = load ptr, ptr %storemerge.i.i.i.i33, align 8, !tbaa !45, !noalias !2169 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i33, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !12, !noalias !2169 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !2169
  store i64 %i.ft, ptr %i.a, align 8, !tbaa !67, !noalias !2169
  %i.fu = icmp ugt i64 %i.ft, 15
  br i1 %i.fu, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34
  %i.fv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.fv, ptr %4, align 8, !tbaa !45, !alias.scope !2169
  %i.fw = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !2169
  store i64 %i.fw, ptr %i.bb, align 8, !tbaa !15, !alias.scope !2169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34
  %i.fx = phi ptr [ %i.fv, %.noexc.i.i ], [ %i.bb, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit34 ] ; 2 uses
  switch i64 %i.ft, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  %i.fy = load i8, ptr %i.fr, align 1, !tbaa !15
  store i8 %i.fy, ptr %i.fx, align 1, !tbaa !15
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr align 1 %i.fr, i64 %i.ft, i1 false)
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit

_ZN2PP4Word10get_stringB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.aa, %bb.ab
  %i.fz = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !2169 ; 2 uses
  store i64 %i.fz, ptr %i.bc, align 8, !tbaa !12, !alias.scope !2169
  %i.ga = load ptr, ptr %4, align 8, !tbaa !45, !alias.scope !2169
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fz
  store i8 0, ptr %i.gb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !2169
  %i.gc = load ptr, ptr %4, align 8, !tbaa !45
  %i.gd = load i64, ptr %i.bc, align 8, !tbaa !12
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.gc, i64 noundef %i.gd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit58 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !147
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 240
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i43, label %bb.ac, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

bb.ac:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ac
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !164
  %.not.i1.i.i45 = icmp eq i8 %i.gm, 0
  br i1 %.not.i1.i.i45, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 67
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gk)
          to label %.noexc47 unwind label %.loopexit58

.noexc47:                                         ; preds = %bb.ae
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !147
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = invoke noundef signext i8 %i.gr(ptr noundef nonnull align 8 dereferenceable(570) %i.gk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit58, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc47, %bb.ad
  %.0.i.i.i46 = phi i8 [ %i.go, %bb.ad ], [ %i.gs, %.noexc47 ]
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, i8 noundef signext %.0.i.i.i46)
          to label %.noexc49 unwind label %.loopexit58

.noexc49:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gt)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit58 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc49
  %i.gv = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.bb
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.gx = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store i32 2, ptr %3, align 4, !tbaa !4
  %.pre87.pre = load ptr, ptr %i.d, align 8, !tbaa !76
  %.pre88.pre = load ptr, ptr %i.f, align 8, !tbaa !76
  %.pre89.pre = load ptr, ptr %i.b, align 8, !tbaa !71
  %.pre90.pre = load ptr, ptr %i.p, align 8, !tbaa !75
  %.pre91.pre = load ptr, ptr %i.w, align 8, !tbaa !87
  %.pre92.pre = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %bb.ag

.loopexit58:                                      ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit, %bb.ae, %.noexc47, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc49
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %.loopexit58
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit58 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gz = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.bb
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.af
  %i.hb = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %lpad.phi

bb.ag:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread56, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre92 = phi ptr [ %.pre92103123, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread56 ], [ %.pre92103123, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread ], [ %.pre92103123, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30 ], [ %.pre92.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pre91 = phi ptr [ %.pre91101124, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread56 ], [ %.pre91101124, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread ], [ %.pre91101124, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30 ], [ %.pre91.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pre90 = phi ptr [ %.pre9099125, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread56 ], [ %.pre9099125, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread ], [ %.pre9099125, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30 ], [ %.pre90.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pre89 = phi ptr [ %.pre8997126, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread56 ], [ %.pre8997126, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread ], [ %.pre8997126, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30 ], [ %.pre89.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pre88 = phi ptr [ %.pre8895127, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread56 ], [ %.pre8895127, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread ], [ %.pre8895127, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30 ], [ %.pre88.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pre87 = phi ptr [ %.pre8793128, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread56 ], [ %.pre8793128, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30.thread ], [ %.pre8793128, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit30 ], [ %.pre87.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84129, 1 ; 2 uses
  %i.hd = ptrtoint ptr %.pre87 to i64
  %i.he = ptrtoint ptr %.pre88 to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = ashr exact i64 %i.hf, 3
  %i.hh = icmp ne ptr %.pre87, null
  %.neg.i.i28 = sext i1 %i.hh to i64
  %i.hi = add nsw i64 %i.hg, %.neg.i.i28
  %i.hj = shl nsw i64 %i.hi, 2
  %i.hk = ptrtoint ptr %.pre89 to i64
  %i.hl = ptrtoint ptr %.pre90 to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = lshr exact i64 %i.hm, 7
  %i.ho = add nsw i64 %i.hj, %i.hn
  %i.hp = ptrtoint ptr %.pre91 to i64
  %i.hq = ptrtoint ptr %.pre92 to i64             ; 2 uses
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = lshr exact i64 %i.hr, 7
  %i.ht = add nsw i64 %i.ho, %i.hs
  %sext = shl i64 %i.ht, 32
  %i.hu = ashr exact i64 %sext, 32
  %i.hv = icmp slt i64 %indvars.iv.next85, %i.hu
  br i1 %i.hv, label %.lr.ph132, label %.loopexit, !llvm.loop !2172

.loopexit:                                        ; preds = %bb.ag, %.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP3Cmd15print_all_wordsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  invoke void @_ZN2PP3Cmd15print_all_wordsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !8, !alias.scope !2179
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !12, !alias.scope !2179
  store i8 0, ptr %i.a, align 8, !tbaa !15, !alias.scope !2179
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !1808, !noalias !2179 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !2179 ; 2 uses
  %5 = icmp ugt ptr %4, %i.d
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.d     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1810, !noalias !2179 ; 2 uses
  %i.g = ptrtoint ptr %.08.i.i.i to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.i)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !45, !alias.scope !2179 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.o = load ptr, ptr %2, align 8, !tbaa !45
  %i.p = load i64, ptr %i.b, align 8, !tbaa !12
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.o, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.t = load i64, ptr %i.a, align 8, !tbaa !15
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !147
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !147
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !147
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !147
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !147
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #22
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %1, align 8, !tbaa !147
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !147
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !1861
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.a
  br i1 %i.au, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.l, %bb.d ], [ %i.at, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.as, %bb.g ]
  %i.av = load i64, ptr %i.a, align 8, !tbaa !15
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.aw) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.as, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ar, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP3Cmd15print_all_wordsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.216, i64 noundef 19) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.e, i64 noundef %i.g) ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !147
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !149  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !164
  %.not.i1.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 67
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef signext i8 %i.u(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext 10), !inline_history !179
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.r, %bb.c ], [ %i.v, %bb.d ]
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef signext %.0.i.i.i)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.an = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ap = getelementptr i8, ptr %i.an, i64 -24
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 128
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 6 uses
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %i.bb = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
end_hunk_1
begin_hunk_2_@_ZN2PP3Cmd15print_all_wordsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = lshr exact i64 %i.bn, 7
  %i.bp = add nsw i64 %i.bi, %i.bo
  %i.bq = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.br = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = lshr exact i64 %i.bu, 7
  %i.bw = add nsw i64 %i.bp, %i.bv
  %sext = shl i64 %i.bw, 32
  %i.bx = ashr exact i64 %sext, 32
  %i.by = icmp slt i64 %indvars.iv, %i.bx
  br i1 %i.by, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.b, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 240
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i34 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i34, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35

bb.g:                                             ; preds = %bb.f
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35: ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !164
  %.not.i1.i.i36 = icmp eq i8 %i.cg, 0
  br i1 %.not.i1.i.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 67
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit38

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i35
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ce)
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !147
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef signext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(570) %i.ce, i8 noundef signext 10), !inline_history !179
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit38

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit38: ; preds = %bb.h, %bb.i
  %.0.i.i.i37 = phi i8 [ %i.ci, %bb.h ], [ %i.cm, %bb.i ]
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext %.0.i.i.i37)
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) ; 0 uses
  ret void

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.cp = load ptr, ptr %i.z, align 8, !tbaa !71, !noalias !2180 ; 2 uses
  %i.cq = load ptr, ptr %i.ae, align 8, !tbaa !75, !noalias !2180
  %i.cr = load ptr, ptr %i.ab, align 8, !tbaa !76, !noalias !2180
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 7
  %i.cw = add nsw i64 %i.cv, %indvars.iv          ; 5 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  br i1 %i.cx, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cy = icmp samesign ult i64 %i.cw, 4
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw [128 x i8], ptr %i.cp, i64 %indvars.iv
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

bb.m:                                             ; preds = %bb.k
  %i.da = lshr i64 %i.cw, 2
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.db = ashr i64 %i.cw, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = phi i64 [ %i.da, %bb.m ], [ %i.db, %bb.n ] ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !51, !noalias !2180
  %i.df = shl nsw i64 %i.dc, 2
  %i.dg = sub nsw i64 %i.cw, %i.df
  %i.dh = getelementptr inbounds [128 x i8], ptr %i.de, i64 %i.dg
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit:          ; preds = %bb.l, %bb.o
  %storemerge.i.i.i.i = phi ptr [ %i.dh, %bb.o ], [ %i.cz, %bb.l ]
  invoke void @_ZN2PP4Word10print_typeERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.di = load ptr, ptr %i.z, align 8, !tbaa !71, !noalias !2183 ; 2 uses
  %i.dj = load ptr, ptr %i.ae, align 8, !tbaa !75, !noalias !2183
  %i.dk = load ptr, ptr %i.ab, align 8, !tbaa !76, !noalias !2183
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 7
  %i.dp = add nsw i64 %i.do, %indvars.iv          ; 5 uses
  %i.dq = icmp sgt i64 %i.dp, -1
  br i1 %i.dq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dr = icmp samesign ult i64 %i.dp, 4
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw [128 x i8], ptr %i.di, i64 %indvars.iv
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit19

bb.s:                                             ; preds = %bb.q
  %i.dt = lshr i64 %i.dp, 2
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.du = ashr i64 %i.dp, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dv = phi i64 [ %i.dt, %bb.s ], [ %i.du, %bb.t ] ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !51, !noalias !2183
  %i.dy = shl nsw i64 %i.dv, 2
  %i.dz = sub nsw i64 %i.dp, %i.dy
  %i.ea = getelementptr inbounds [128 x i8], ptr %i.dx, i64 %i.dz
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit19

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit19:        ; preds = %bb.r, %bb.u
  %storemerge.i.i.i.i18 = phi ptr [ %i.ea, %bb.u ], [ %i.ds, %bb.r ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  store ptr %i.af, ptr %3, align 8, !tbaa !8, !alias.scope !2186
  %i.eb = load ptr, ptr %storemerge.i.i.i.i18, align 8, !tbaa !45, !noalias !2186 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i18, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !12, !noalias !2186 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !2186
  store i64 %i.ed, ptr %i.a, align 8, !tbaa !67, !noalias !2186
  %i.ee = icmp ugt i64 %i.ed, 15
  br i1 %i.ee, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit19
  %i.ef = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.ef, ptr %3, align 8, !tbaa !45, !alias.scope !2186
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !2186
  store i64 %i.eg, ptr %i.af, align 8, !tbaa !15, !alias.scope !2186
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit19
  %i.eh = phi ptr [ %i.ef, %.noexc ], [ %i.af, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit19 ] ; 2 uses
  switch i64 %i.ed, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.ei = load i8, ptr %i.eb, align 1, !tbaa !15
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !15
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr align 1 %i.eb, i64 %i.ed, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !2186 ; 2 uses
  store i64 %i.ej, ptr %i.ag, align 8, !tbaa !12, !alias.scope !2186
  %i.ek = load ptr, ptr %3, align 8, !tbaa !45, !alias.scope !2186
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store i8 0, ptr %i.el, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !2186
  %i.em = load ptr, ptr %3, align 8, !tbaa !45
  %i.en = load i64, ptr %i.ag, align 8, !tbaa !12
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.em, i64 noundef %i.en)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ag ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.x
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ag ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  store ptr %i.ah, ptr %4, align 8, !tbaa !8, !alias.scope !2195
  store i64 0, ptr %i.ai, align 8, !tbaa !12, !alias.scope !2195
  store i8 0, ptr %i.ah, align 8, !tbaa !15, !alias.scope !2195
  %i.eq = load ptr, ptr %i.aj, align 8, !tbaa !1808, !noalias !2195 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.eq, null
  %5 = load ptr, ptr %i.ak, align 8, !noalias !2195 ; 2 uses
  %6 = icmp ugt ptr %i.eq, %5
  %.08.i.i.i = select i1 %6, ptr %i.eq, ptr %5    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.er = load ptr, ptr %i.al, align 8, !tbaa !1810, !noalias !2195 ; 2 uses
  %i.es = ptrtoint ptr %.08.i.i.i to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.er, i64 noundef %i.eu)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %4, align 8, !tbaa !45, !alias.scope !2195 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ah
  br i1 %i.ey, label %.body, label %.body.sink.split

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.aa, %bb.y
  %i.ez = load ptr, ptr %4, align 8, !tbaa !45
  %i.fa = load i64, ptr %i.ai, align 8, !tbaa !12
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ez, i64 noundef %i.fa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23 unwind label %.loopexit ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !147
  %i.fd = getelementptr i8, ptr %i.fc, i64 -24
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds i8, ptr %i.fb, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 240
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i39 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i39, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40

bb.ab:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.ab
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !164
  %.not.i1.i.i41 = icmp eq i8 %i.fj, 0
  br i1 %.not.i1.i.i41, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 67
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fh)
          to label %.noexc44 unwind label %.loopexit

.noexc44:                                         ; preds = %bb.ad
  %i.fm = load ptr, ptr %i.fh, align 8, !tbaa !147
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke noundef signext i8 %i.fo(ptr noundef nonnull align 8 dereferenceable(570) %i.fh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc44, %bb.ac
  %.0.i.i.i42 = phi i8 [ %i.fl, %bb.ac ], [ %i.fp, %.noexc44 ]
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, i8 noundef signext %.0.i.i.i42)
          to label %.noexc46 unwind label %.loopexit

.noexc46:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc46
  %i.fs = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ah
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.fu = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.fw = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.af
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fy = load i64, ptr %i.af, align 8, !tbaa !15
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr %i.an, ptr %2, align 8, !tbaa !147
  %i.ga = load i64, ptr %i.ap, align 8
  %i.gb = getelementptr inbounds i8, ptr %2, i64 %i.ga
  store ptr %i.ao, ptr %i.gb, align 8, !tbaa !147
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !147
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.as, align 8, !tbaa !147
  %i.gc = load ptr, ptr %i.am, align 8, !tbaa !45 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.at
  br i1 %i.gd, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.ge = load i64, ptr %i.at, align 8, !tbaa !15
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.as, align 8, !tbaa !147
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #22
  store ptr %i.av, ptr %2, align 8, !tbaa !147
  %i.gg = load i64, ptr %i.ax, align 8
  %i.gh = getelementptr inbounds i8, ptr %2, i64 %i.gg
  store ptr %i.aw, ptr %i.gh, align 8, !tbaa !147
  store i64 0, ptr %i.ay, align 8, !tbaa !1861
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.e, !llvm.loop !2196

bb.ae:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %.noexc.i.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.ag:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.x
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit:                                        ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.ad, %.noexc44, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc46
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.gl = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ah
  br i1 %i.gm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ah, %bb.z
  %.sink = phi ptr [ %i.ex, %bb.z ], [ %i.gl, %bb.ah ]
  %.pn.ph = phi { ptr, i32 } [ %i.ew, %bb.z ], [ %lpad.phi, %bb.ah ]
  %i.gn = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.go) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ah, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.z ], [ %lpad.phi, %bb.ah ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.gk, %bb.ag ] ; 2 uses
  %i.gp = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.af
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.ai
  %i.gr = load i64, ptr %i.af, align 8, !tbaa !15
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.af
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.af ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.ae
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.gi, %bb.ae ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN2PP4Word10print_typeERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP3Cmd17print_using_wordsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_2
