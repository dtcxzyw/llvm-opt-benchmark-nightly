Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FileCheck?download=true
inline.NumInlined: 6753
inline.NumDeleted: 2901
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm7Pattern5matchENS_9StringRefERKNS_9SourceMgrE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.l = load i8, ptr %i.k, align 8, !tbaa !180, !range !39, !noundef !40
  %i.m = trunc nuw i8 %i.l to i1
  %.sroa.043.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !70 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef i64 @_ZNK4llvm9StringRef16find_insensitiveES0_m(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %.sroa.043.0.copyload, i64 %i.h, i64 noundef 0) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %.sroa.043.0.copyload, i64 %i.h, i64 noundef 0) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi i64 [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_ZN4llvm5ErrorD2Ev.exit56, label %_ZN4llvm5ErrorD2Ev.exit59

_ZN4llvm5ErrorD2Ev.exit56:                        ; preds = %bb.f
  %i.r = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30, !noalias !1029 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm13NotFoundErrorE, i64 16), ptr %i.r, align 8, !tbaa !68, !noalias !1029
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.s, align 8, !tbaa !203
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.t, align 8, !tbaa !58
  br label %bb.ba

_ZN4llvm5ErrorD2Ev.exit59:                        ; preds = %bb.f
  %i.u = load i64, ptr %i.g, align 8, !tbaa !72
  store i64 %i.p, ptr %0, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i57, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.v, align 8, !tbaa !203
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !58
  br label %bb.ba

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.ab, ptr %13, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !54
  store i8 0, ptr %i.ab, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !204
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !204
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !205, !range !39, !noundef !40
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %_ZN4llvm5ErrorD2Ev.exit60

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !221 ; 5 uses
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !55 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i32 64, ptr %i.ar, align 8, !tbaa !62
  store i64 %i.aq, ptr %14, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !80, !range !39, !noundef !40
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 3 uses
  br i1 %i.av, label %bb.j, label %_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRS1_EEEvDpOT_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !62
  %i.ay = icmp ult i32 %i.ax, 65
  br i1 %i.ay, label %bb.k, label %_ZN4llvm15NumericVariable8setValueENS_5APIntESt8optionalINS_9StringRefEE.exit

bb.k:                                             ; preds = %bb.j
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !42
  store i32 64, ptr %i.aw, align 8, !tbaa !62
  br label %_ZN4llvm15NumericVariable8setValueENS_5APIntESt8optionalINS_9StringRefEE.exit.thread

_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRS1_EEEvDpOT_.exit.i.i: ; preds = %bb.i
  store i32 64, ptr %i.aw, align 8, !tbaa !62
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !42
  store i8 1, ptr %i.at, align 8, !tbaa !80
  br label %_ZN4llvm15NumericVariable8setValueENS_5APIntESt8optionalINS_9StringRefEE.exit.thread

_ZN4llvm15NumericVariable8setValueENS_5APIntESt8optionalINS_9StringRefEE.exit.thread: ; preds = %bb.k, %_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRS1_EEEvDpOT_.exit.i.i
  %.sroa.4139.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store i8 0, ptr %.sroa.4139.0..sroa_idx208, align 8
  br label %_ZN4llvm5ErrorD2Ev.exit60

_ZN4llvm15NumericVariable8setValueENS_5APIntESt8optionalINS_9StringRefEE.exit: ; preds = %bb.j
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %14) #27
  %.pre = load i32, ptr %i.ar, align 8, !tbaa !62
  %i.az = icmp ugt i32 %.pre, 64
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store i8 0, ptr %.sroa.4139.0..sroa_idx, align 8
  br i1 %i.az, label %bb.l, label %_ZN4llvm5ErrorD2Ev.exit60

bb.l:                                             ; preds = %_ZN4llvm15NumericVariable8setValueENS_5APIntESt8optionalINS_9StringRefEE.exit
  %i.ba = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN4llvm5ErrorD2Ev.exit60, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #29
  br label %_ZN4llvm5ErrorD2Ev.exit60

_ZN4llvm5ErrorD2Ev.exit60:                        ; preds = %_ZN4llvm15NumericVariable8setValueENS_5APIntESt8optionalINS_9StringRefEE.exit.thread, %bb.h, %_ZN4llvm15NumericVariable8setValueENS_5APIntESt8optionalINS_9StringRefEE.exit, %bb.l, %bb.m
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !204 ; 2 uses
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !204 ; 2 uses
  %.not157 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not157, label %_ZN4llvm5ErrorD2Ev.exit70, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm5ErrorD2Ev.exit60
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.not150 = icmp eq ptr %.sroa.0120.1, null
  br i1 %.not150, label %_ZN4llvm5ErrorD2Ev.exit70, label %_ZN4llvm5ErrorD2Ev.exit70.thread

bb.n:                                             ; preds = %.lr.ph, %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.051160 = phi i64 [ 0, %.lr.ph ], [ %.152, %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 3 uses
  %.sroa.0120.0159 = phi ptr [ null, %.lr.ph ], [ %.sroa.0120.1, %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 2 uses
  %.sroa.0115.0158 = phi ptr [ %i.bc, %.lr.ph ], [ %i.ei, %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.bi = load ptr, ptr %.sroa.0115.0158, align 8, !tbaa !193 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %15, ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #27
  %i.bm = load i8, ptr %i.be, align 8
  %i.bn = trunc i8 %i.bm to i1
  br i1 %i.bn, label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9takeErrorEv.exit, label %bb.w

_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9takeErrorEv.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.bo = load i64, ptr %15, align 8, !tbaa !59, !noalias !1030 ; 3 uses
  %i.bp = inttoptr i64 %i.bo to ptr               ; 6 uses
  store ptr null, ptr %15, align 8, !tbaa !59, !noalias !1030
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  store ptr %4, ptr %18, align 8, !tbaa !1031
  store ptr %.sroa.0115.0158, ptr %i.bg, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  store ptr %4, ptr %19, align 8, !tbaa !1031
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %.not.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.o

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9takeErrorEv.exit
  store ptr null, ptr %17, align 8, !tbaa !58, !alias.scope !1032
  br label %"_ZN4llvm12handleErrorsIJZNKS_7Pattern5matchENS_9StringRefERKNS_9SourceMgrEE3$_0ZNKS1_5matchES2_S5_E3$_1EEENS_5ErrorES8_DpOT_.exit"

bb.o:                                             ; preds = %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9takeErrorEv.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !1032
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !1032
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #27, !noalias !1032, !inline_history !1020
  br i1 %i.bt, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %17, align 8, !tbaa !58, !alias.scope !1032
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !224, !noalias !1032 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !224, !noalias !1032 ; 2 uses
  %.not2829.i = icmp eq ptr %i.bv, %i.bx
  br i1 %.not2829.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i16.i, label %_ZN4llvm5ErrorD2Ev.exit9.i

_ZN4llvm5ErrorD2Ev.exit9.i:                       ; preds = %bb.p, %_ZN4llvm5ErrorD2Ev.exit11.i
  %i.by = phi ptr [ %i.ca, %_ZN4llvm5ErrorD2Ev.exit11.i ], [ null, %bb.p ]
  %.sroa.018.030.i = phi ptr [ %i.cp, %_ZN4llvm5ErrorD2Ev.exit11.i ], [ %i.bv, %bb.p ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !1032
  store ptr %i.by, ptr %8, align 8, !tbaa !58, !noalias !1032
  %i.bz = load i64, ptr %.sroa.018.030.i, align 8, !tbaa !59, !noalias !1032
  store i64 %i.bz, ptr %10, align 8, !tbaa !59, !noalias !1032
  store ptr null, ptr %.sroa.018.030.i, align 8, !tbaa !59, !noalias !1032
  call fastcc void @"_ZN4llvm15handleErrorImplIZNKS_7Pattern5matchENS_9StringRefERKNS_9SourceMgrEE3$_0JZNKS1_5matchES2_S5_E3$_1EEENS_5ErrorESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteISA_EEOT_DpOT0_"(ptr dead_on_unwind noalias writable align 8 %9, ptr nofree noundef align 8 dereferenceable(8) %10, ptr noundef nonnull readonly align 8 dereferenceable(16) %18, ptr noundef nonnull readonly align 8 dereferenceable(8) %19), !noalias !1032
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr nofree noundef nonnull align 8 dereferenceable(8) %8, ptr nofree noundef nonnull align 8 dereferenceable(8) %9), !noalias !1032
  %i.ca = load ptr, ptr %7, align 8, !tbaa !58, !noalias !1032 ; 2 uses
  store ptr %i.ca, ptr %17, align 8, !tbaa !58, !alias.scope !1032
  store ptr null, ptr %7, align 8, !tbaa !58, !noalias !1032
  %i.cb = load ptr, ptr %9, align 8, !tbaa !58, !noalias !1032 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN4llvm5ErrorD2Ev.exit10.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit9.i
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !68, !noalias !1032
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !1032
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #27, !noalias !1032, !inline_history !1021
  br label %_ZN4llvm5ErrorD2Ev.exit10.i

_ZN4llvm5ErrorD2Ev.exit10.i:                      ; preds = %bb.q, %_ZN4llvm5ErrorD2Ev.exit9.i
  %i.cg = load ptr, ptr %10, align 8, !tbaa !59, !noalias !1032 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i61, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit10.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !68, !noalias !1032
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1032
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg) #27, !noalias !1032, !inline_history !1022
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i61

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i61: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %_ZN4llvm5ErrorD2Ev.exit10.i
  %i.ck = load ptr, ptr %8, align 8, !tbaa !58, !noalias !1032 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN4llvm5ErrorD2Ev.exit11.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i61
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !68, !noalias !1032
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !1032
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #27, !noalias !1032, !inline_history !1021
  br label %_ZN4llvm5ErrorD2Ev.exit11.i

_ZN4llvm5ErrorD2Ev.exit11.i:                      ; preds = %bb.r, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !1032
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.018.030.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %i.cp, %i.bx
  br i1 %.not28.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i16.i, label %_ZN4llvm5ErrorD2Ev.exit9.i

bb.s:                                             ; preds = %bb.o
  store i64 %i.bo, ptr %11, align 8, !tbaa !59, !noalias !1032
  call fastcc void @"_ZN4llvm15handleErrorImplIZNKS_7Pattern5matchENS_9StringRefERKNS_9SourceMgrEE3$_0JZNKS1_5matchES2_S5_E3$_1EEENS_5ErrorESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteISA_EEOT_DpOT0_"(ptr dead_on_unwind noalias nonnull writable align 8 %17, ptr nofree noundef align 8 dereferenceable(8) %11, ptr noundef nonnull readonly align 8 dereferenceable(16) %18, ptr noundef nonnull readonly align 8 dereferenceable(8) %19)
  %i.cq = load ptr, ptr %11, align 8, !tbaa !59, !noalias !1032 ; 3 uses
  %.not.i12.i = icmp eq ptr %i.cq, null
  br i1 %.not.i12.i, label %"_ZN4llvm12handleErrorsIJZNKS_7Pattern5matchENS_9StringRefERKNS_9SourceMgrEE3$_0ZNKS1_5matchES2_S5_E3$_1EEENS_5ErrorES8_DpOT_.exit", label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i13.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i13.i: ; preds = %bb.s
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !68
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #27, !inline_history !1022
  br label %"_ZN4llvm12handleErrorsIJZNKS_7Pattern5matchENS_9StringRefERKNS_9SourceMgrEE3$_0ZNKS1_5matchES2_S5_E3$_1EEENS_5ErrorES8_DpOT_.exit"

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i16.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit11.i, %bb.p
  %i.cu = load ptr, ptr %i.bp, align 8, !tbaa !68, !noalias !1032
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !1032
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #27, !noalias !1032, !inline_history !1022
  br label %"_ZN4llvm12handleErrorsIJZNKS_7Pattern5matchENS_9StringRefERKNS_9SourceMgrEE3$_0ZNKS1_5matchES2_S5_E3$_1EEENS_5ErrorES8_DpOT_.exit"

"_ZN4llvm12handleErrorsIJZNKS_7Pattern5matchENS_9StringRefERKNS_9SourceMgrEE3$_0ZNKS1_5matchES2_S5_E3$_1EEENS_5ErrorES8_DpOT_.exit": ; preds = %_ZN4llvm5ErrorD2Ev.exit.i, %bb.s, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i13.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0120.0159, ptr %5, align 8, !tbaa !58, !noalias !1033
  %i.cx = load ptr, ptr %17, align 8, !tbaa !58, !noalias !1033
  store ptr %i.cx, ptr %6, align 8, !tbaa !58, !noalias !1033
  store ptr null, ptr %17, align 8, !tbaa !58, !noalias !1033
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %16, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6)
  %i.cy = load ptr, ptr %6, align 8, !tbaa !58, !noalias !1033 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZN4llvm5ErrorD2Ev.exit.i62, label %bb.t

bb.t:                                             ; preds = %"_ZN4llvm12handleErrorsIJZNKS_7Pattern5matchENS_9StringRefERKNS_9SourceMgrEE3$_0ZNKS1_5matchES2_S5_E3$_1EEENS_5ErrorES8_DpOT_.exit"
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !68
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #27, !inline_history !1
  br label %_ZN4llvm5ErrorD2Ev.exit.i62

_ZN4llvm5ErrorD2Ev.exit.i62:                      ; preds = %bb.t, %"_ZN4llvm12handleErrorsIJZNKS_7Pattern5matchENS_9StringRefERKNS_9SourceMgrEE3$_0ZNKS1_5matchES2_S5_E3$_1EEENS_5ErrorES8_DpOT_.exit"
  %i.dd = load ptr, ptr %5, align 8, !tbaa !58, !noalias !1033 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN4llvm5ErrorD2Ev.exit63, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit.i62
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !68
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #27, !inline_history !1
  br label %_ZN4llvm5ErrorD2Ev.exit63

_ZN4llvm5ErrorD2Ev.exit63:                        ; preds = %bb.u, %_ZN4llvm5ErrorD2Ev.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.di = load ptr, ptr %16, align 8, !tbaa !58
  store ptr null, ptr %16, align 8, !tbaa !58
  %i.dj = load ptr, ptr %17, align 8, !tbaa !58   ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZN4llvm5ErrorD2Ev.exit66, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit63
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !68
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) #27, !inline_history !10
  br label %_ZN4llvm5ErrorD2Ev.exit66

_ZN4llvm5ErrorD2Ev.exit66:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit63, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.y

bb.w:                                             ; preds = %bb.n
  %i.do = load ptr, ptr %.sroa.0115.0158, align 8, !tbaa !193
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !196
  %i.dr = add nsw i64 %i.dq, %.051160             ; 3 uses
  %i.ds = load i64, ptr %i.ac, align 8, !tbaa !54 ; 2 uses
  %i.dt = icmp ugt i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.204, i64 noundef %i.dr, i64 noundef %i.ds) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit: ; preds = %bb.w
  %i.du = load ptr, ptr %15, align 8, !tbaa !53
  %i.dv = load i64, ptr %i.bf, align 8, !tbaa !54
  %i.dw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.dr, i64 noundef 0, ptr noundef %i.du, i64 noundef %i.dv) #27 ; 0 uses
  %i.dx = load i64, ptr %i.bf, align 8, !tbaa !54
  %i.dy = add i64 %i.dx, %.051160
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit, %_ZN4llvm5ErrorD2Ev.exit66
  %.sroa.0120.1 = phi ptr [ %.sroa.0120.0159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit ], [ %i.di, %_ZN4llvm5ErrorD2Ev.exit66 ] ; 3 uses
  %.152 = phi i64 [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit ], [ %.051160, %_ZN4llvm5ErrorD2Ev.exit66 ]
  %i.dz = load i8, ptr %i.be, align 8
  %i.ea = trunc i8 %i.dz to i1
  %i.eb = load ptr, ptr %15, align 8, !tbaa !95   ; 5 uses
  br i1 %i.ea, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = icmp eq ptr %i.eb, %i.bh
  br i1 %i.ec, label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.ed = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #29
  br label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i.i67 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i67, label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i68

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i68: ; preds = %bb.aa
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !68
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.eb) #27, !inline_history !2
  br label %_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN4llvm8ExpectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.aa, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0115.0158, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ei, %i.bd
  br i1 %.not, label %._crit_edge, label %bb.n

_ZN4llvm5ErrorD2Ev.exit70.thread:                 ; preds = %._crit_edge
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ej, align 8, !tbaa !203
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0120.1, ptr %i.ek, align 8, !tbaa !58
  br label %bb.az

_ZN4llvm5ErrorD2Ev.exit70:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit60, %._crit_edge
  %i.el = load ptr, ptr %13, align 8, !tbaa !53
  %i.em = load i64, ptr %i.ac, align 8, !tbaa !54
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit70, %bb.g
  %.sroa.0126.1 = phi ptr [ %i.y, %bb.g ], [ %i.el, %_ZN4llvm5ErrorD2Ev.exit70 ]
  %.sroa.5127.1 = phi i64 [ %i.aa, %bb.g ], [ %i.em, %_ZN4llvm5ErrorD2Ev.exit70 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.en = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.en, ptr %20, align 8, !tbaa !136
  %i.eo = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 0, ptr %i.eo, align 8, !tbaa !137
  %i.ep = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 4, ptr %i.ep, align 4, !tbaa !138
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !180, !range !39, !noundef !40
  %i.es = trunc nuw i8 %i.er to i1
  %spec.select = select i1 %i.es, i32 3, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @_ZN4llvm5RegexC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr %.sroa.0126.1, i64 %.sroa.5127.1, i32 noundef %spec.select) #27
  %i.et = call noundef zeroext i1 @_ZNK4llvm5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr %2, i64 %3, ptr noundef nonnull %20, ptr noundef null) #27
  call void @_ZN4llvm5RegexD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br i1 %i.et, label %bb.ac, label %_ZN4llvm5ErrorD2Ev.exit71

_ZN4llvm5ErrorD2Ev.exit71:                        ; preds = %bb.ab
  %i.eu = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30, !noalias !1034 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm13NotFoundErrorE, i64 16), ptr %i.eu, align 8, !tbaa !68, !noalias !1034
  br label %bb.ax

bb.ac:                                            ; preds = %bb.ab
  %i.ev = load ptr, ptr %20, align 8, !tbaa !136  ; 2 uses
  %.sroa.099.0.copyload = load ptr, ptr %i.ev, align 8, !tbaa !70
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !225 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.not151161 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not151161, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.ae

._crit_edge165:                                   ; preds = %_ZN4llvm9StringMapINS_9StringRefENS_15MallocAllocatorEEixES1_.exit, %bb.ac
  %i.fa = load i32, ptr %i.b, align 8, !tbaa !158
  %i.fb = icmp eq i32 %i.fa, 8
  %i.fc = zext i1 %i.fb to i64                    ; 2 uses
  %i.fd = ptrtoint ptr %.sroa.099.0.copyload to i64
  %i.fe = ptrtoint ptr %2 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = add i64 %i.ff, %i.fc
  %i.fh = sub i64 %.sroa.4.0.copyload, %i.fc
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !102 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !103 ; 2 uses
  %.not.i72 = icmp eq i32 %i.fl, 0
  br i1 %.not.i72, label %_ZNK4llvm9StringMapINS_7Pattern20NumericVariableMatchENS_15MallocAllocatorEE5beginEv.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge165
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !105
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %.lr.ph.i.i.i, label %_ZNK4llvm9StringMapINS_7Pattern20NumericVariableMatchENS_15MallocAllocatorEE5beginEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %.lr.ph.i.i.i
  %i.fo = phi ptr [ %i.fp, %.lr.ph.i.i.i ], [ %i.fj, %bb.ad ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !105
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %.lr.ph.i.i.i, label %_ZNK4llvm9StringMapINS_7Pattern20NumericVariableMatchENS_15MallocAllocatorEE5beginEv.exit, !llvm.loop !12

end_hunk_0
