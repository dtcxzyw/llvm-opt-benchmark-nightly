Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstantFolding?download=true
inline.NumInlined: 650
inline.NumDeleted: 342
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EEixERKS1_:bb.a
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !160 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store i64 %i.aa, ptr %.lcssa, align 8, !tbaa !161
  %i.al = load i64, ptr %i.a, align 8, !tbaa !162
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !162
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !160 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE9push_backEOS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !120
  store ptr %i.e, ptr %i.b, align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !152
  store <2 x i64> %i.h, ptr %i.f, align 8, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !161
  store i64 %i.k, ptr %i.i, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.m, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZNSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit

_ZNSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4Luau7CompileL9foldUnaryERNS0_8ConstantENS_12AstExprUnary2OpERKS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #11 {
bb.a:
  switch i32 %1, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !68
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 8, !tbaa !68
  %i.b = load i32, ptr %2, align 8, !tbaa !68
  switch i32 %i.b, label %bb.e [
    i32 1, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !70, !range !41, !noundef !42
  %i.e = xor i8 %i.d, 1
  br label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit:    ; preds = %bb.c, %bb.d, %bb.e
  %i.f = phi i8 [ 1, %bb.c ], [ %i.e, %bb.d ], [ 0, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.g, align 8, !tbaa !70
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 8, !tbaa !68
  switch i32 %i.h, label %bb.l [
    i32 3, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !70
  %i.k = fneg double %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.k, ptr %i.l, align 8, !tbaa !70
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load float, ptr %i.m, align 8, !tbaa !70
  %i.o = fneg float %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.o, ptr %i.p, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !70
  %i.s = fneg float %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.s, ptr %i.t, align 4, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load float, ptr %i.u, align 8, !tbaa !70
  %i.w = fneg float %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.w, ptr %i.x, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !70
  %i.aa = fneg float %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.aa, ptr %i.ab, align 4, !tbaa !70
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !70
  %i.ae = fneg double %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ae, ptr %i.af, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !70
  %i.ai = fneg double %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.aj, align 8, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !70
  %i.am = fneg double %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.am, ptr %i.an, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !70
  %i.aq = fneg double %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.aq, ptr %i.ar, align 8, !tbaa !70
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.as = load i32, ptr %2, align 8, !tbaa !68
  %i.at = icmp eq i32 %i.as, 7
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !156
  %i.aw = uitofp i32 %i.av to double
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.aw, ptr %i.ax, align 8, !tbaa !70
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.a, %bb.j, %bb.k, %bb.g, %bb.i, %bb.h, %bb.b, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CompileL10foldBinaryERNS0_8ConstantENS_13AstExprBinary2OpERKS1_S6_RNS_12AstNameTableE(ptr nofree noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 dereferenceable(40) %2, ptr nofree noundef nonnull readonly align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 8 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 8 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  switch i32 %1, label %.thread629 [
    i32 0, label %bb.b
    i32 1, label %bb.h
    i32 2, label %bb.n
    i32 3, label %bb.aj
    i32 4, label %bb.bf
    i32 5, label %bb.cb
    i32 6, label %bb.cd
    i32 7, label %bb.cf
    i32 8, label %bb.ct
    i32 9, label %bb.cv
    i32 10, label %bb.cx
    i32 11, label %bb.cz
    i32 12, label %bb.db
    i32 13, label %bb.dd
    i32 14, label %bb.df
    i32 15, label %bb.dg
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 8, !tbaa !68     ; 3 uses
  %i.e = icmp eq i32 %i.d, 3
  %i.f = load i32, ptr %3, align 8                ; 3 uses
  %i.g = icmp eq i32 %i.f, 3
  %or.cond567 = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond567, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !70
  %i.l = fadd double %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.l, ptr %i.m, align 8, !tbaa !70
  br label %.thread629

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.d, 5
  %i.o = icmp eq i32 %i.f, 5
  %or.cond569 = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond569, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load float, ptr %i.p, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load float, ptr %i.r, align 8, !tbaa !70
  %i.t = fadd float %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.t, ptr %i.u, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !70
  %i.z = fadd float %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.z, ptr %i.aa, align 4, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !70
  %i.af = fadd float %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.af, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !70
  %i.al = fadd float %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.al, ptr %i.am, align 4, !tbaa !70
  br label %.thread629

bb.f:                                             ; preds = %bb.d
  %i.an = icmp eq i32 %i.d, 6
  %i.ao = icmp eq i32 %i.f, 6
  %or.cond571 = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond571, label %bb.g, label %.thread629

bb.g:                                             ; preds = %bb.f
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !70
  %i.at = fadd double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.at, ptr %i.au, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !70
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !70
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.az, ptr %i.ba, align 8, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !70
  %i.bf = fadd double %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.bf, ptr %i.bg, align 8, !tbaa !70
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !70
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !70
  %i.bl = fadd double %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.bl, ptr %i.bm, align 8, !tbaa !70
  br label %.thread629

bb.h:                                             ; preds = %bb.a
  %i.bn = load i32, ptr %2, align 8, !tbaa !68    ; 3 uses
  %i.bo = icmp eq i32 %i.bn, 3
  %i.bp = load i32, ptr %3, align 8               ; 3 uses
  %i.bq = icmp eq i32 %i.bp, 3
  %or.cond573 = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond573, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !70
  %i.bv = fsub double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bv, ptr %i.bw, align 8, !tbaa !70
  br label %.thread629

bb.j:                                             ; preds = %bb.h
  %i.bx = icmp eq i32 %i.bn, 5
  %i.by = icmp eq i32 %i.bp, 5
  %or.cond575 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond575, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !70
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !70
  %i.cd = fsub float %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.cd, ptr %i.ce, align 8, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !70
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !70
  %i.cj = fsub float %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.cj, ptr %i.ck, align 4, !tbaa !70
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !70
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = load float, ptr %i.cn, align 8, !tbaa !70
  %i.cp = fsub float %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cp, ptr %i.cq, align 8, !tbaa !70
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !70
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !70
  %i.cv = fsub float %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.cv, ptr %i.cw, align 4, !tbaa !70
  br label %.thread629

bb.l:                                             ; preds = %bb.j
  %i.cx = icmp eq i32 %i.bn, 6
  %i.cy = icmp eq i32 %i.bp, 6
  %or.cond577 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond577, label %bb.m, label %.thread629

bb.m:                                             ; preds = %bb.l
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = load double, ptr %i.cz, align 8, !tbaa !70
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = load double, ptr %i.db, align 8, !tbaa !70
  %i.dd = fsub double %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.dd, ptr %i.de, align 8, !tbaa !70
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !70
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.di = load double, ptr %i.dh, align 8, !tbaa !70
  %i.dj = fsub double %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.dj, ptr %i.dk, align 8, !tbaa !70
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !70
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.do = load double, ptr %i.dn, align 8, !tbaa !70
  %i.dp = fsub double %i.dm, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZN4Luau7CompileL10foldBinaryERNS0_8ConstantENS_13AstExprBinary2OpERKS1_S6_RNS_12AstNameTableE:bb.a

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !70
  %i.gw = load double, ptr %i.gp, align 8, !tbaa !70
  %i.gx = fptrunc double %i.gw to float
  %i.gy = fmul float %i.gv, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.gy, ptr %i.gz, align 8, !tbaa !70
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !70
  %i.hc = load double, ptr %i.gp, align 8, !tbaa !70
  %i.hd = fptrunc double %i.hc to float
  %i.he = fmul float %i.hb, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.he, ptr %i.hf, align 4, !tbaa !70
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hh = load float, ptr %i.hg, align 8, !tbaa !70
  %i.hi = load double, ptr %i.gp, align 8, !tbaa !70
  %i.hj = fptrunc double %i.hi to float
  %i.hk = fmul float %i.hh, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.hk, ptr %i.hl, align 8, !tbaa !70
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.gs, ptr %i.hm, align 4, !tbaa !70
  br label %.thread629

bb.y:                                             ; preds = %bb.v
  %i.hn = icmp eq i32 %i.dx, 6                    ; 2 uses
  %i.ho = icmp eq i32 %i.dz, 6                    ; 2 uses
  %or.cond587 = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond587, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !70 ; 3 uses
  %i.hs = fcmp une double %i.hr, 0.000000e+00
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !70 ; 3 uses
  br i1 %i.hs, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  %i.hv = fmul double %i.hr, %i.hu
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hw = fcmp une double %i.hu, 0.000000e+00
  %i.hx = fmul double %i.hr, %i.hu                ; 2 uses
  %i.hy = fcmp oeq double %i.hx, 0.000000e+00
  %or.cond7 = or i1 %i.hw, %i.hy
  br i1 %or.cond7, label %bb.ab, label %.thread629

bb.ab:                                            ; preds = %.thread, %bb.aa
  %i.hz = phi double [ %i.hv, %.thread ], [ %i.hx, %bb.aa ]
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.ib = load double, ptr %i.hp, align 8, !tbaa !70
  %i.ic = load double, ptr %i.ia, align 8, !tbaa !70
  %i.id = fmul double %i.ib, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.id, ptr %i.ie, align 8, !tbaa !70
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ig = load double, ptr %i.if, align 8, !tbaa !70
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !70
  %i.ij = fmul double %i.ig, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ij, ptr %i.ik, align 8, !tbaa !70
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.im = load double, ptr %i.il, align 8, !tbaa !70
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.io = load double, ptr %i.in, align 8, !tbaa !70
  %i.ip = fmul double %i.im, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ip, ptr %i.iq, align 8, !tbaa !70
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.hz, ptr %i.ir, align 8, !tbaa !70
  br label %.thread629

bb.ac:                                            ; preds = %bb.y
  br i1 %i.dy, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ho, label %bb.ae, label %.thread629

bb.ae:                                            ; preds = %bb.ad
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.it = load double, ptr %i.is, align 8, !tbaa !70 ; 2 uses
  %i.iu = fcmp une double %i.it, 0.000000e+00
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !70
  %i.ix = fmul double %i.it, %i.iw                ; 2 uses
  %i.iy = fcmp oeq double %i.ix, 0.000000e+00
  %or.cond9 = or i1 %i.iu, %i.iy
  br i1 %or.cond9, label %bb.af, label %.thread629

bb.af:                                            ; preds = %bb.ae
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.ja = load double, ptr %i.iv, align 8, !tbaa !70
  %i.jb = load double, ptr %i.iz, align 8, !tbaa !70
  %i.jc = fmul double %i.ja, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.jc, ptr %i.jd, align 8, !tbaa !70
  %i.je = load double, ptr %i.iv, align 8, !tbaa !70
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !70
  %i.jh = fmul double %i.je, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.jh, ptr %i.ji, align 8, !tbaa !70
  %i.jj = load double, ptr %i.iv, align 8, !tbaa !70
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !70
  %i.jm = fmul double %i.jj, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.jm, ptr %i.jn, align 8, !tbaa !70
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ix, ptr %i.jo, align 8, !tbaa !70
  br label %.thread629

bb.ag:                                            ; preds = %bb.ac
  %i.jp = select i1 %i.hn, i1 %i.ea, i1 false
  br i1 %i.jp, label %bb.ah, label %.thread629

bb.ah:                                            ; preds = %bb.ag
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !70 ; 2 uses
  %i.js = fcmp une double %i.jr, 0.000000e+00
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !70
  %i.jv = fmul double %i.jr, %i.ju                ; 2 uses
  %i.jw = fcmp oeq double %i.jv, 0.000000e+00
  %or.cond11 = or i1 %i.js, %i.jw
  br i1 %or.cond11, label %bb.ai, label %.thread629

bb.ai:                                            ; preds = %bb.ah
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !70
  %i.jz = load double, ptr %i.jt, align 8, !tbaa !70
  %i.ka = fmul double %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ka, ptr %i.kb, align 8, !tbaa !70
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !70
  %i.ke = load double, ptr %i.jt, align 8, !tbaa !70
  %i.kf = fmul double %i.kd, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.kf, ptr %i.kg, align 8, !tbaa !70
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !70
  %i.kj = load double, ptr %i.jt, align 8, !tbaa !70
  %i.kk = fmul double %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.kk, ptr %i.kl, align 8, !tbaa !70
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.jv, ptr %i.km, align 8, !tbaa !70
  br label %.thread629

bb.aj:                                            ; preds = %bb.a
  %i.kn = load i32, ptr %2, align 8, !tbaa !68    ; 3 uses
  %i.ko = icmp eq i32 %i.kn, 3                    ; 3 uses
  %i.kp = load i32, ptr %3, align 8               ; 3 uses
  %i.kq = icmp eq i32 %i.kp, 3                    ; 3 uses
  %or.cond589 = select i1 %i.ko, i1 %i.kq, i1 false
  br i1 %or.cond589, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !70
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !70
  %i.kv = fdiv double %i.ks, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.kv, ptr %i.kw, align 8, !tbaa !70
  br label %.thread629

bb.al:                                            ; preds = %bb.aj
  %i.kx = icmp eq i32 %i.kn, 5                    ; 2 uses
  %i.ky = icmp eq i32 %i.kp, 5                    ; 2 uses
  %or.cond591 = select i1 %i.kx, i1 %i.ky, i1 false
  br i1 %or.cond591, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.la = load float, ptr %i.kz, align 4, !tbaa !70 ; 2 uses
  %i.lb = fcmp une float %i.la, 0.000000e+00
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ld = load float, ptr %i.lc, align 4          ; 2 uses
  %i.le = fcmp une float %i.ld, 0.000000e+00
  %i.lf = or i1 %i.lb, %i.le
  %i.lg = fdiv float %i.la, %i.ld                 ; 3 uses
  %i.lh = fcmp oeq float %i.lg, 0.000000e+00
  %or.cond13 = or i1 %i.lh, %i.lf
  br i1 %or.cond13, label %bb.an, label %.thread629

bb.an:                                            ; preds = %bb.am
  %i.li = add nuw i64 %i.b, 20
  %i.lj = add nuw i64 %i.a, 20
  %rt.bound0 = icmp ugt i64 %i.li, %i.c
  %i.lk = add nuw i64 %i.c, 16
  %rt.bound0.a = icmp ugt i64 %i.lk, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound0.a
  %rt.bound0656 = icmp ugt i64 %i.lj, %i.c
  %6 = add nuw i64 %i.c, 16
  %rt.bound1657 = icmp ugt i64 %6, %i.a
  %rt.conflict658 = and i1 %rt.bound0656, %rt.bound1657
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict658
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !292

bb.ao:                                            ; preds = %bb.al
  %or.cond593 = select i1 %i.ko, i1 %i.ky, i1 false
  br i1 %or.cond593, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !70 ; 2 uses
  %i.ln = fcmp une float %i.lm, 0.000000e+00
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !70
  %i.lq = fptrunc double %i.lp to float
  %i.lr = fdiv float %i.lq, %i.lm                 ; 3 uses
  %i.ls = fcmp oeq float %i.lr, 0.000000e+00
  %or.cond15 = or i1 %i.ln, %i.ls
  br i1 %or.cond15, label %bb.aq, label %.thread629

bb.aq:                                            ; preds = %bb.ap
  %i.lt = add nuw i64 %i.b, 16
  %i.lu = add nuw i64 %i.a, 20
  %rt.bound0662 = icmp ugt i64 %i.lt, %i.c
  %i.lv = add nuw i64 %i.c, 16
  %rt.bound0662.a = icmp ugt i64 %i.lv, %i.b
  %rt.conflict664 = and i1 %rt.bound0662, %rt.bound0662.a
  %rt.bound0665 = icmp ugt i64 %i.lu, %i.c
  %7 = add nuw i64 %i.c, 16
  %rt.bound1666 = icmp ugt i64 %7, %i.a
  %rt.conflict667 = and i1 %rt.bound0665, %rt.bound1666
  %rt.conflict.all668 = or i1 %rt.conflict664, %rt.conflict667
  %rt.guard669 = freeze i1 %rt.conflict.all668
  br i1 %rt.guard669, label %.rtscalar660, label %.rtvec659, !prof !292

bb.ar:                                            ; preds = %bb.ao
  %or.cond595 = select i1 %i.kx, i1 %i.kq, i1 false
  br i1 %or.cond595, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !70 ; 2 uses
  %i.ly = fcmp une float %i.lx, 0.000000e+00
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !70
  %i.mb = fptrunc double %i.ma to float
  %i.mc = fdiv float %i.lx, %i.mb                 ; 3 uses
  %i.md = fcmp oeq float %i.mc, 0.000000e+00
  %or.cond17 = or i1 %i.ly, %i.md
  br i1 %or.cond17, label %bb.at, label %.thread629

bb.at:                                            ; preds = %bb.as
  %i.me = add nuw i64 %i.b, 20
  %i.mf = add nuw i64 %i.a, 16
  %rt.bound0673 = icmp ugt i64 %i.me, %i.c
  %i.mg = add nuw i64 %i.c, 16
  %rt.bound0673.a = icmp ugt i64 %i.mg, %i.b
  %rt.conflict675 = and i1 %rt.bound0673, %rt.bound0673.a
  %rt.bound0676 = icmp ugt i64 %i.mf, %i.c
  %8 = add nuw i64 %i.c, 16
  %rt.bound1677 = icmp ugt i64 %8, %i.a
  %rt.conflict678 = and i1 %rt.bound0676, %rt.bound1677
  %rt.conflict.all679 = or i1 %rt.conflict675, %rt.conflict678
  %rt.guard680 = freeze i1 %rt.conflict.all679
  br i1 %rt.guard680, label %.rtscalar671, label %.rtvec670, !prof !292

bb.au:                                            ; preds = %bb.ar
  %i.mh = icmp eq i32 %i.kn, 6                    ; 2 uses
  %i.mi = icmp eq i32 %i.kp, 6                    ; 2 uses
  %or.cond597 = select i1 %i.mh, i1 %i.mi, i1 false
  br i1 %or.cond597, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !70 ; 3 uses
  %i.mm = fcmp une double %i.ml, 0.000000e+00
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !70 ; 3 uses
  br i1 %i.mm, label %.thread630, label %bb.aw

.thread630:                                       ; preds = %bb.av
  %i.mp = fdiv double %i.ml, %i.mo
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mq = fcmp une double %i.mo, 0.000000e+00
  %i.mr = fdiv double %i.ml, %i.mo                ; 2 uses
  %i.ms = fcmp oeq double %i.mr, 0.000000e+00
  %or.cond19 = or i1 %i.mq, %i.ms
  br i1 %or.cond19, label %bb.ax, label %.thread629

bb.ax:                                            ; preds = %.thread630, %bb.aw
  %i.mt = phi double [ %i.mp, %.thread630 ], [ %i.mr, %bb.aw ]
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.mv = load double, ptr %i.mj, align 8, !tbaa !70
  %i.mw = load double, ptr %i.mu, align 8, !tbaa !70
  %i.mx = fdiv double %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.mx, ptr %i.my, align 8, !tbaa !70
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.na = load double, ptr %i.mz, align 8, !tbaa !70
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !70
  %i.nd = fdiv double %i.na, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.nd, ptr %i.ne, align 8, !tbaa !70
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !70
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !70
  %i.nj = fdiv double %i.ng, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.nj, ptr %i.nk, align 8, !tbaa !70
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.mt, ptr %i.nl, align 8, !tbaa !70
  br label %.thread629

bb.ay:                                            ; preds = %bb.au
  br i1 %i.ko, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  br i1 %i.mi, label %bb.ba, label %.thread629

bb.ba:                                            ; preds = %bb.az
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !70 ; 2 uses
  %i.no = fcmp une double %i.nn, 0.000000e+00
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.nq = load double, ptr %i.np, align 8, !tbaa !70
  %i.nr = fdiv double %i.nq, %i.nn                ; 2 uses
  %i.ns = fcmp oeq double %i.nr, 0.000000e+00
  %or.cond21 = or i1 %i.no, %i.ns
  br i1 %or.cond21, label %bb.bb, label %.thread629

bb.bb:                                            ; preds = %bb.ba
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.nu = load double, ptr %i.np, align 8, !tbaa !70
  %i.nv = load double, ptr %i.nt, align 8, !tbaa !70
  %i.nw = fdiv double %i.nu, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.nw, ptr %i.nx, align 8, !tbaa !70
  %i.ny = load double, ptr %i.np, align 8, !tbaa !70
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !70
  %i.ob = fdiv double %i.ny, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ob, ptr %i.oc, align 8, !tbaa !70
  %i.od = load double, ptr %i.np, align 8, !tbaa !70
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.of = load double, ptr %i.oe, align 8, !tbaa !70
  %i.og = fdiv double %i.od, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.og, ptr %i.oh, align 8, !tbaa !70
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.nr, ptr %i.oi, align 8, !tbaa !70
  br label %.thread629

bb.bc:                                            ; preds = %bb.ay
  %i.oj = select i1 %i.mh, i1 %i.kq, i1 false
  br i1 %i.oj, label %bb.bd, label %.thread629

bb.bd:                                            ; preds = %bb.bc
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !70 ; 2 uses
  %i.om = fcmp une double %i.ol, 0.000000e+00
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.oo = load double, ptr %i.on, align 8, !tbaa !70
  %i.op = fdiv double %i.ol, %i.oo                ; 2 uses
  %i.oq = fcmp oeq double %i.op, 0.000000e+00
  %or.cond23 = or i1 %i.om, %i.oq
  br i1 %or.cond23, label %bb.be, label %.thread629

bb.be:                                            ; preds = %bb.bd
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.os = load double, ptr %i.or, align 8, !tbaa !70
  %i.ot = load double, ptr %i.on, align 8, !tbaa !70
  %i.ou = fdiv double %i.os, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ou, ptr %i.ov, align 8, !tbaa !70
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !70
  %i.oy = load double, ptr %i.on, align 8, !tbaa !70
  %i.oz = fdiv double %i.ox, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.oz, ptr %i.pa, align 8, !tbaa !70
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !70
  %i.pd = load double, ptr %i.on, align 8, !tbaa !70
  %i.pe = fdiv double %i.pc, %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.pe, ptr %i.pf, align 8, !tbaa !70
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.op, ptr %i.pg, align 8, !tbaa !70
  br label %.thread629

bb.bf:                                            ; preds = %bb.a
  %i.ph = load i32, ptr %2, align 8, !tbaa !68    ; 3 uses
  %i.pi = icmp eq i32 %i.ph, 3                    ; 3 uses
  %i.pj = load i32, ptr %3, align 8               ; 3 uses
  %i.pk = icmp eq i32 %i.pj, 3                    ; 3 uses
  %or.cond599 = select i1 %i.pi, i1 %i.pk, i1 false
  br i1 %or.cond599, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !70
  %i.pn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.po = load double, ptr %i.pn, align 8, !tbaa !70
  %i.pp = fdiv double %i.pm, %i.po
  %i.pq = tail call double @llvm.floor.f64(double %i.pp)
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.pq, ptr %i.pr, align 8, !tbaa !70
  br label %.thread629

bb.bh:                                            ; preds = %bb.bf
  %i.ps = icmp eq i32 %i.ph, 5                    ; 2 uses
  %i.pt = icmp eq i32 %i.pj, 5                    ; 2 uses
  %or.cond601 = select i1 %i.ps, i1 %i.pt, i1 false
  br i1 %or.cond601, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.pu = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !70 ; 2 uses
  %i.pw = fcmp une float %i.pv, 0.000000e+00
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.py = load float, ptr %i.px, align 4          ; 2 uses
  %i.pz = fcmp une float %i.py, 0.000000e+00
  %i.qa = or i1 %i.pw, %i.pz
  %i.qb = fdiv float %i.pv, %i.py
  %i.qc = tail call noundef float @llvm.floor.f32(float %i.qb) ; 2 uses
  %i.qd = fcmp oeq float %i.qc, 0.000000e+00
  %or.cond25 = or i1 %i.qa, %i.qd
  br i1 %or.cond25, label %bb.bj, label %.thread629

bb.bj:                                            ; preds = %bb.bi
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.qg = load float, ptr %i.qe, align 8, !tbaa !70
  %i.qh = load float, ptr %i.qf, align 8, !tbaa !70
  %i.qi = fdiv float %i.qg, %i.qh
  %i.qj = tail call noundef float @llvm.floor.f32(float %i.qi)
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.qj, ptr %i.qk, align 8, !tbaa !70
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !70
  %i.qn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !70
  %i.qp = fdiv float %i.qm, %i.qo
  %i.qq = tail call noundef float @llvm.floor.f32(float %i.qp)
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.qq, ptr %i.qr, align 4, !tbaa !70
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qt = load float, ptr %i.qs, align 8, !tbaa !70
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qv = load float, ptr %i.qu, align 8, !tbaa !70
  %i.qw = fdiv float %i.qt, %i.qv
  %i.qx = tail call noundef float @llvm.floor.f32(float %i.qw)
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.qx, ptr %i.qy, align 8, !tbaa !70
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.qc, ptr %i.qz, align 4, !tbaa !70
  br label %.thread629

bb.bk:                                            ; preds = %bb.bh
  %or.cond603 = select i1 %i.pi, i1 %i.pt, i1 false
  br i1 %or.cond603, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !70 ; 2 uses
  %i.rc = fcmp une float %i.rb, 0.000000e+00
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.re = load double, ptr %i.rd, align 8, !tbaa !70
  %i.rf = fptrunc double %i.re to float
  %i.rg = fdiv float %i.rf, %i.rb
  %i.rh = tail call noundef float @llvm.floor.f32(float %i.rg) ; 2 uses
  %i.ri = fcmp oeq float %i.rh, 0.000000e+00
  %or.cond27 = or i1 %i.rc, %i.ri
  br i1 %or.cond27, label %bb.bm, label %.thread629

bb.bm:                                            ; preds = %bb.bl
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.rk = load double, ptr %i.rd, align 8, !tbaa !70
  %i.rl = fptrunc double %i.rk to float
  %i.rm = load float, ptr %i.rj, align 8, !tbaa !70
  %i.rn = fdiv float %i.rl, %i.rm
  %i.ro = tail call noundef float @llvm.floor.f32(float %i.rn)
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ro, ptr %i.rp, align 8, !tbaa !70
  %i.rq = load double, ptr %i.rd, align 8, !tbaa !70
  %i.rr = fptrunc double %i.rq to float
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !70
  %i.ru = fdiv float %i.rr, %i.rt
  %i.rv = tail call noundef float @llvm.floor.f32(float %i.ru)
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.rv, ptr %i.rw, align 4, !tbaa !70
  %i.rx = load double, ptr %i.rd, align 8, !tbaa !70
  %i.ry = fptrunc double %i.rx to float
  %i.rz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sa = load float, ptr %i.rz, align 8, !tbaa !70
  %i.sb = fdiv float %i.ry, %i.sa
  %i.sc = tail call noundef float @llvm.floor.f32(float %i.sb)
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.sc, ptr %i.sd, align 8, !tbaa !70
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.rh, ptr %i.se, align 4, !tbaa !70
  br label %.thread629

bb.bn:                                            ; preds = %bb.bk
  %or.cond605 = select i1 %i.ps, i1 %i.pk, i1 false
  br i1 %or.cond605, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !70 ; 2 uses
  %i.sh = fcmp une float %i.sg, 0.000000e+00
  %i.si = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.sj = load double, ptr %i.si, align 8, !tbaa !70
  %i.sk = fptrunc double %i.sj to float
  %i.sl = fdiv float %i.sg, %i.sk
  %i.sm = tail call noundef float @llvm.floor.f32(float %i.sl)
  %i.sn = fcmp oeq float %i.sm, 0.000000e+00
  %or.cond29 = or i1 %i.sh, %i.sn
  br i1 %or.cond29, label %bb.bp, label %.thread629

bb.bp:                                            ; preds = %bb.bo
  %i.so = add nuw i64 %i.b, 24
  %i.sp = add nuw i64 %i.a, 16
  %rt.bound0684 = icmp ugt i64 %i.so, %i.c
  %i.sq = add nuw i64 %i.c, 16
  %rt.bound0684.a = icmp ugt i64 %i.sq, %i.b
  %rt.conflict686 = and i1 %rt.bound0684, %rt.bound0684.a
  %rt.bound0687 = icmp ugt i64 %i.sp, %i.c
  %9 = add nuw i64 %i.c, 16
  %rt.bound1688 = icmp ugt i64 %9, %i.a
  %rt.conflict689 = and i1 %rt.bound0687, %rt.bound1688
  %rt.conflict.all690 = or i1 %rt.conflict686, %rt.conflict689
  %rt.guard691 = freeze i1 %rt.conflict.all690
  br i1 %rt.guard691, label %.rtscalar682, label %.rtvec681, !prof !292

bb.bq:                                            ; preds = %bb.bn
  %i.sr = icmp eq i32 %i.ph, 6                    ; 2 uses
  %i.ss = icmp eq i32 %i.pj, 6                    ; 2 uses
  %or.cond607 = select i1 %i.sr, i1 %i.ss, i1 false
  br i1 %or.cond607, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.su = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.sv = load double, ptr %i.su, align 8, !tbaa !70 ; 3 uses
  %i.sw = fcmp une double %i.sv, 0.000000e+00
  %i.sx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !70 ; 3 uses
  br i1 %i.sw, label %.thread633, label %bb.bs

.thread633:                                       ; preds = %bb.br
  %i.sz = fdiv double %i.sv, %i.sy
  %i.ta = tail call double @llvm.floor.f64(double %i.sz)
  br label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.tb = fcmp une double %i.sy, 0.000000e+00
  %i.tc = fdiv double %i.sv, %i.sy
  %i.td = tail call double @llvm.floor.f64(double %i.tc) ; 2 uses
  %i.te = fcmp oeq double %i.td, 0.000000e+00
  %or.cond31 = or i1 %i.tb, %i.te
  br i1 %or.cond31, label %bb.bt, label %.thread629

bb.bt:                                            ; preds = %.thread633, %bb.bs
  %i.tf = phi double [ %i.ta, %.thread633 ], [ %i.td, %bb.bs ]
  %i.tg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.th = load double, ptr %i.st, align 8, !tbaa !70
  %i.ti = load double, ptr %i.tg, align 8, !tbaa !70
  %i.tj = fdiv double %i.th, %i.ti
  %i.tk = tail call double @llvm.floor.f64(double %i.tj)
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.tk, ptr %i.tl, align 8, !tbaa !70
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !70
  %i.to = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tp = load double, ptr %i.to, align 8, !tbaa !70
  %i.tq = fdiv double %i.tn, %i.tp
  %i.tr = tail call double @llvm.floor.f64(double %i.tq)
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.tr, ptr %i.ts, align 8, !tbaa !70
  %i.tt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !70
  %i.tv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !70
  %i.tx = fdiv double %i.tu, %i.tw
  %i.ty = tail call double @llvm.floor.f64(double %i.tx)
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ty, ptr %i.tz, align 8, !tbaa !70
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.tf, ptr %i.ua, align 8, !tbaa !70
  br label %.thread629

bb.bu:                                            ; preds = %bb.bq
  br i1 %i.pi, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.ss, label %bb.bw, label %.thread629

bb.bw:                                            ; preds = %bb.bv
  %i.ub = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !70 ; 2 uses
  %i.ud = fcmp une double %i.uc, 0.000000e+00
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !70
  %i.ug = fdiv double %i.uf, %i.uc
  %i.uh = tail call double @llvm.floor.f64(double %i.ug) ; 2 uses
  %i.ui = fcmp oeq double %i.uh, 0.000000e+00
  %or.cond33 = or i1 %i.ud, %i.ui
  br i1 %or.cond33, label %bb.bx, label %.thread629

bb.bx:                                            ; preds = %bb.bw
  %i.uj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.uk = load double, ptr %i.ue, align 8, !tbaa !70
  %i.ul = load double, ptr %i.uj, align 8, !tbaa !70
  %i.um = fdiv double %i.uk, %i.ul
  %i.un = tail call double @llvm.floor.f64(double %i.um)
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.un, ptr %i.uo, align 8, !tbaa !70
  %i.up = load double, ptr %i.ue, align 8, !tbaa !70
  %i.uq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !70
  %i.us = fdiv double %i.up, %i.ur
  %i.ut = tail call double @llvm.floor.f64(double %i.us)
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ut, ptr %i.uu, align 8, !tbaa !70
  %i.uv = load double, ptr %i.ue, align 8, !tbaa !70
  %i.uw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !70
  %i.uy = fdiv double %i.uv, %i.ux
  %i.uz = tail call double @llvm.floor.f64(double %i.uy)
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.uz, ptr %i.va, align 8, !tbaa !70
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.uh, ptr %i.vb, align 8, !tbaa !70
  br label %.thread629

bb.by:                                            ; preds = %bb.bu
  %i.vc = select i1 %i.sr, i1 %i.pk, i1 false
  br i1 %i.vc, label %bb.bz, label %.thread629

bb.bz:                                            ; preds = %bb.by
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !70 ; 2 uses
  %i.vf = fcmp une double %i.ve, 0.000000e+00
  %i.vg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !70
  %i.vi = fdiv double %i.ve, %i.vh
  %i.vj = tail call double @llvm.floor.f64(double %i.vi)
  %i.vk = fcmp oeq double %i.vj, 0.000000e+00
  %or.cond35 = or i1 %i.vf, %i.vk
  br i1 %or.cond35, label %bb.ca, label %.thread629

bb.ca:                                            ; preds = %bb.bz
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !70
  %i.vn = load double, ptr %i.vg, align 8, !tbaa !70
  %i.vo = fdiv double %i.vm, %i.vn
  %i.vp = tail call double @llvm.floor.f64(double %i.vo)
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.vp, ptr %i.vq, align 8, !tbaa !70
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !70
  %i.vt = load double, ptr %i.vg, align 8, !tbaa !70
  %i.vu = fdiv double %i.vs, %i.vt
  %i.vv = tail call double @llvm.floor.f64(double %i.vu)
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.vv, ptr %i.vw, align 8, !tbaa !70
  %i.vx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !70
  %i.vz = load double, ptr %i.vg, align 8, !tbaa !70
  %i.wa = fdiv double %i.vy, %i.vz
  %i.wb = tail call double @llvm.floor.f64(double %i.wa)
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.wb, ptr %i.wc, align 8, !tbaa !70
  %i.wd = load double, ptr %i.vd, align 8, !tbaa !70
  %i.we = load double, ptr %i.vg, align 8, !tbaa !70
  %i.wf = fdiv double %i.wd, %i.we
  %i.wg = tail call double @llvm.floor.f64(double %i.wf)
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.wg, ptr %i.wh, align 8, !tbaa !70
  br label %.thread629

bb.cb:                                            ; preds = %bb.a
  %i.wi = load i32, ptr %2, align 8, !tbaa !68
  %i.wj = icmp eq i32 %i.wi, 3
  %i.wk = load i32, ptr %3, align 8
  %i.wl = icmp eq i32 %i.wk, 3
  %or.cond609 = select i1 %i.wj, i1 %i.wl, i1 false
  br i1 %or.cond609, label %bb.cc, label %.thread629

bb.cc:                                            ; preds = %bb.cb
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !70 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !70 ; 2 uses
  %i.wq = fdiv double %i.wn, %i.wp
  %i.wr = tail call double @llvm.floor.f64(double %i.wq)
  %i.ws = fneg double %i.wr
  %i.wt = tail call double @llvm.fmuladd.f64(double %i.ws, double %i.wp, double %i.wn)
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.wt, ptr %i.wu, align 8, !tbaa !70
  br label %.thread629

bb.cd:                                            ; preds = %bb.a
  %i.wv = load i32, ptr %2, align 8, !tbaa !68
  %i.ww = icmp eq i32 %i.wv, 3
  %i.wx = load i32, ptr %3, align 8
  %i.wy = icmp eq i32 %i.wx, 3
  %or.cond611 = select i1 %i.ww, i1 %i.wy, i1 false
  br i1 %or.cond611, label %bb.ce, label %.thread629

bb.ce:                                            ; preds = %bb.cd
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !70
  %i.xb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !70
  %i.xd = tail call double @pow(double noundef %i.xa, double noundef %i.xc) #19
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.xd, ptr %i.xe, align 8, !tbaa !70
  br label %.thread629

bb.cf:                                            ; preds = %bb.a
  %i.xf = load i32, ptr %2, align 8, !tbaa !68
  %i.xg = icmp eq i32 %i.xf, 7
  %i.xh = load i32, ptr %3, align 8
end_hunk_1
