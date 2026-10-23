Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/relationGeneration?download=true
inline.NumInlined: 980
inline.NumDeleted: 464
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5eSLIM17RelationGenerator11getRelationEv:bb.a
  %i.n = phi ptr [ %.pre308, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre306, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.c, %bb.c ]
  %.sroa.17203.1 = phi ptr [ %i.m, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.c ] ; 2 uses
  %.sroa.10199.1 = phi ptr [ %i.l, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.c ] ; 4 uses
  %.not213247 = icmp eq ptr %i.o, %i.n
  br i1 %.not213247, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre309 = load ptr, ptr %i.b, align 8, !tbaa !65
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.r = phi ptr [ %i.p, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre309, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.17203.0.lcssa = phi ptr [ %.sroa.17203.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.17203.2, %._crit_edge.loopexit ]
  %.sroa.10199.0.lcssa = phi ptr [ %.sroa.10199.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.10199.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0194.0.lcssa = phi ptr [ %.sroa.10199.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0194.2, %._crit_edge.loopexit ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57   ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !54   ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp ugt i64 %i.y, 9223372036854775804
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %.not214 = icmp eq ptr %i.u, %i.v
  br i1 %.not214, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit39, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i38

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i38: ; preds = %bb.e
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #18 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  %.pre310 = load ptr, ptr %i.b, align 8, !tbaa !65 ; 3 uses
  %.phi.trans.insert311 = getelementptr inbounds nuw i8, ptr %.pre310, i64 56
  %.pre312 = load ptr, ptr %.phi.trans.insert311, align 8, !tbaa !57
  %.phi.trans.insert313 = getelementptr inbounds nuw i8, ptr %.pre310, i64 48
  %.pre314 = load ptr, ptr %.phi.trans.insert313, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit39

_ZNSt6vectorIiSaIiEE7reserveEm.exit39:            ; preds = %bb.e, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i38
  %i.ac = phi ptr [ %.pre314, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i38 ], [ %i.v, %bb.e ] ; 2 uses
  %i.ad = phi ptr [ %.pre312, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i38 ], [ %i.u, %bb.e ] ; 2 uses
  %i.ae = phi ptr [ %.pre310, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i38 ], [ %i.r, %bb.e ]
  %.sroa.17.1 = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i38 ], [ null, %bb.e ] ; 3 uses
  %.sroa.10180.1 = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i38 ], [ null, %bb.e ] ; 6 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i, label %._crit_edge259, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit39
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ai, 63                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 2305843009213693944
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #18 ; 5 uses
  %i.an = lshr i64 %i.aj, 6                       ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.am, i8 0, i64 %.idx.i, i1 false)
  %.pre315 = load ptr, ptr %i.b, align 8, !tbaa !65 ; 4 uses
  %.phi.trans.insert316 = getelementptr inbounds nuw i8, ptr %.pre315, i64 56
  %.pre317 = load ptr, ptr %.phi.trans.insert316, align 8, !tbaa !57
  %.phi.trans.insert318 = getelementptr inbounds nuw i8, ptr %.pre315, i64 48
  %.pre319 = load ptr, ptr %.phi.trans.insert318, align 8, !tbaa !54 ; 2 uses
  %i.ap = icmp eq ptr %.pre317, %.pre319
  br i1 %i.ap, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.0194.0251 = phi ptr [ %.sroa.10199.1, %.lr.ph ], [ %.sroa.0194.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.sroa.10199.0250 = phi ptr [ %.sroa.10199.1, %.lr.ph ], [ %.sroa.10199.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %.sroa.17203.0249 = phi ptr [ %.sroa.17203.1, %.lr.ph ], [ %.sroa.17203.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.0191.0248 = phi ptr [ %i.o, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ar = load i32, ptr %.sroa.0191.0248, align 4, !tbaa !56
  %i.as = sext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10199.0250, %.sroa.17203.0249
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.av, ptr %.sroa.10199.0250, align 4, !tbaa !56
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.f
  %i.aw = ptrtoint ptr %.sroa.10199.0250 to i64
  %i.ax = ptrtoint ptr %.sroa.0194.0251 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ba = ashr exact i64 %i.ay, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951)
  %i.be = select i1 %i.bc, i64 2305843009213693951, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #18 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i32 %i.av, ptr %i.bh, align 4, !tbaa !56
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %.sroa.0194.0251, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0194.0251, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0194.0251, i64 noundef %i.ay) #19
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.sroa.17203.2 = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.17203.0249, %bb.g ] ; 2 uses
  %.pn220 = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.10199.0250, %bb.g ]
  %.sroa.0194.2 = phi ptr [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0194.0251, %bb.g ] ; 2 uses
  %.sroa.10199.2 = getelementptr inbounds nuw i8, ptr %.pn220, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0191.0248, i64 4 ; 2 uses
  %.not213 = icmp eq ptr %i.bk, %i.n
  br i1 %.not213, label %._crit_edge.loopexit, label %bb.f

._crit_edge259:                                   ; preds = %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread, %_ZNSt6vectorIiSaIiEE7reserveEm.exit39, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.sroa.0169.0395 = phi ptr [ %i.am, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEE7reserveEm.exit39 ], [ %i.am, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ] ; 3 uses
  %.sroa.13174.0394 = phi ptr [ %i.ao, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEE7reserveEm.exit39 ], [ %i.ao, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ] ; 2 uses
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.1, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %.sroa.17.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit39 ], [ %.sroa.17.2, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ]
  %.sroa.10180.0.lcssa = phi ptr [ %.sroa.10180.1, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %.sroa.10180.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit39 ], [ %.sroa.10180.2, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ] ; 2 uses
  %.sroa.0175.0.lcssa = phi ptr [ %.sroa.10180.1, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %.sroa.10180.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit39 ], [ %.sroa.0175.2, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ] ; 5 uses
  %.lcssa237 = phi ptr [ %.pre315, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.ae, %_ZNSt6vectorIiSaIiEE7reserveEm.exit39 ], [ %i.dw, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.lcssa237, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.lcssa237, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = lshr exact i64 %i.br, 2
  %i.bt = trunc i64 %i.bs to i32
  tail call void @_ZN5eSLIM8RelationC1Ei(ptr noundef nonnull align 8 dereferenceable(29) %0, i32 noundef %i.bt) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !58, !nonnull !59, !align !60
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !179
  %i.by = sitofp i32 %i.bx to double              ; 2 uses
  store double %i.by, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #16
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %_ZL9Abc_Clockv.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge259
  %i.cb = load i64, ptr %4, align 8, !tbaa !69
  %i.cc = mul nsw i64 %i.cb, 1000000
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !70
  %i.cf = sdiv i64 %i.ce, 1000
  %i.cg = add nsw i64 %i.cf, %i.cc
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %._crit_edge259, %bb.l
  %.0.i = phi i64 [ %i.cg, %bb.l ], [ -1, %._crit_edge259 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.not11.i57 = icmp eq ptr %.sroa.0194.0.lcssa, %.sroa.10199.0.lcssa
  %.not11.i72 = icmp eq ptr %.sroa.0175.0.lcssa, %.sroa.10180.0.lcssa
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.z

bb.m:                                             ; preds = %.lr.ph258, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread
  %i.da = phi ptr [ %.pre315, %.lr.ph258 ], [ %i.dw, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ]
  %indvars.iv = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ] ; 4 uses
  %i.db = phi ptr [ %.pre319, %.lr.ph258 ], [ %i.fd, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ]
  %.sroa.0175.0256 = phi ptr [ %.sroa.10180.1, %.lr.ph258 ], [ %.sroa.0175.2, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ] ; 5 uses
  %.sroa.10180.0255 = phi ptr [ %.sroa.10180.1, %.lr.ph258 ], [ %.sroa.10180.2, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ] ; 4 uses
  %.sroa.17.0254 = phi ptr [ %.sroa.17.1, %.lr.ph258 ], [ %.sroa.17.2, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !56 ; 4 uses
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !56 ; 2 uses
  %.not.i40 = icmp eq ptr %.sroa.10180.0255, %.sroa.17.0254
  br i1 %.not.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.dh, ptr %.sroa.10180.0255, align 4, !tbaa !56
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit47

bb.o:                                             ; preds = %bb.m
  %i.di = ptrtoint ptr %.sroa.10180.0255 to i64
  %i.dj = ptrtoint ptr %.sroa.0175.0256 to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 6 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775804
  br i1 %i.dl, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i41

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i41: ; preds = %bb.o
  %i.dm = ashr exact i64 %i.dk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i42 = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i42, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 2305843009213693951)
  %i.dq = select i1 %i.do, i64 2305843009213693951, i64 %i.dp ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.dq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i43)
  %i.dr = shl nuw nsw i64 %i.dq, 2
  %i.ds = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #18 ; 4 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %i.dk ; 2 uses
  store i32 %i.dh, ptr %i.dt, align 4, !tbaa !56
  %i.du = icmp sgt i64 %i.dk, 0
  br i1 %i.du, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44

bb.q:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i41
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ds, ptr align 4 %.sroa.0175.0256, i64 %i.dk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44: ; preds = %bb.q, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i41
  %.not.i17.i.i45 = icmp eq ptr %.sroa.0175.0256, null
  br i1 %.not.i17.i.i45, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0256, i64 noundef %i.dk) #19
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dq
  %.pre320 = load ptr, ptr %i.b, align 8, !tbaa !65
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit47

_ZNSt6vectorIiSaIiEE9push_backERKi.exit47:        ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46
  %i.dw = phi ptr [ %.pre320, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46 ], [ %i.da, %bb.n ] ; 8 uses
  %.sroa.17.2 = phi ptr [ %i.dv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46 ], [ %.sroa.17.0254, %bb.n ] ; 2 uses
  %.pn219 = phi ptr [ %i.dt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46 ], [ %.sroa.10180.0255, %bb.n ]
  %.sroa.0175.2 = phi ptr [ %i.ds, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46 ], [ %.sroa.0175.0256, %bb.n ] ; 2 uses
  %.sroa.10180.2 = getelementptr inbounds nuw i8, ptr %.pn219, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !186
  %.not.not.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.not.i.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit47
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.06.0.in.i.i = phi ptr [ %i.dz, %bb.s ], [ %.sroa.06.0.i.i, %bb.u ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !187 ; 3 uses
  %.not.i.i48 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i48, label %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !56
  %i.ec = icmp eq i32 %i.dd, %i.eb
  br i1 %i.ec, label %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, label %bb.t, !llvm.loop !163

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit47
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !188 ; 2 uses
  %i.eg = urem i64 %i.de, %i.ef                   ; 2 uses
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !189
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !190 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i, label %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !187 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !56
  %i.en = icmp eq i32 %i.dd, %i.em
  br i1 %i.en, label %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.eo = icmp eq i32 %i.dd, %i.er
  br i1 %i.eo, label %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !164

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %bb.x
  %.020.i.i.i.i = phi ptr [ %i.ep, %bb.x ], [ %i.ek, %bb.w ]
  %i.ep = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !187 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not18.i.i.i.i, label %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !56 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = urem i64 %i.es, %i.ef
  %.not19.i.i.i.i = icmp eq i64 %i.et, %i.eg
  br i1 %.not19.i.i.i.i, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !164

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.y
  br label %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread, !llvm.loop !164

_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit: ; preds = %bb.x, %bb.u, %bb.w
  %i.eu = lshr i64 %indvars.iv, 6
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.eu ; 2 uses
  %i.ew = and i64 %indvars.iv, 63
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = load i64, ptr %i.ev, align 8, !tbaa !13
  %i.ez = or i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %i.ev, align 8, !tbaa !13
  br label %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread

_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.t, %bb.v, %..loopexit_crit_edge21.i.i.i.i, %_ZNKSt13unordered_mapIiSt3setIiSt4lessIiESaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS4_EEE4findERSA_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !57
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !54 ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = ashr exact i64 %i.fg, 2
  %i.fi = icmp ugt i64 %i.fh, %indvars.iv.next
  br i1 %i.fi, label %bb.m, label %._crit_edge259, !llvm.loop !165

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit126, %_ZL9Abc_Clockv.exit
  %i.fj = phi double [ %i.by, %_ZL9Abc_Clockv.exit ], [ %i.fw, %_ZNSt6vectorIiSaIiEED2Ev.exit126 ]
  %.027 = phi i1 [ false, %_ZL9Abc_Clockv.exit ], [ %.1, %_ZNSt6vectorIiSaIiEED2Ev.exit126 ]
  %.026 = phi i64 [ %.0.i, %_ZL9Abc_Clockv.exit ], [ %.0.i53, %_ZNSt6vectorIiSaIiEED2Ev.exit126 ]
  %i.fk = load i32, ptr %i.ch, align 8, !tbaa !73
  %i.fl = call noundef i32 @_ZN5eSLIM17RelationGenerator12findConflictERdi(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.fk)
  switch i32 %i.fl, label %.critedge34.sink.split [
    i32 10, label %bb.aa
    i32 20, label %.critedge34
  ]

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.fm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #16
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %_ZL9Abc_Clockv.exit52, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fo = load i64, ptr %3, align 8, !tbaa !69
  %i.fp = mul nsw i64 %i.fo, 1000000
  %i.fq = load i64, ptr %i.ci, align 8, !tbaa !70
  %i.fr = sdiv i64 %i.fq, 1000
  %i.fs = add nsw i64 %i.fr, %i.fp
  br label %_ZL9Abc_Clockv.exit52

_ZL9Abc_Clockv.exit52:                            ; preds = %bb.aa, %bb.ab
  %.0.i51 = phi i64 [ %i.fs, %bb.ab ], [ -1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ft = sub nsw i64 %.0.i51, %.026
  %i.fu = sitofp i64 %i.ft to double
  %i.fv = fdiv double %i.fu, 1.000000e+06
  %i.fw = fsub double %i.fj, %i.fv                ; 3 uses
  store double %i.fw, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.fx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #16
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %_ZL9Abc_Clockv.exit54, label %bb.ac

bb.ac:                                            ; preds = %_ZL9Abc_Clockv.exit52
  %i.fz = load i64, ptr %2, align 8, !tbaa !69
  %i.ga = mul nsw i64 %i.fz, 1000000
  %i.gb = load i64, ptr %i.cj, align 8, !tbaa !70
  %i.gc = sdiv i64 %i.gb, 1000
  %i.gd = add nsw i64 %i.gc, %i.ga
  br label %_ZL9Abc_Clockv.exit54

_ZL9Abc_Clockv.exit54:                            ; preds = %_ZL9Abc_Clockv.exit52, %bb.ac
  %.0.i53 = phi i64 [ %i.gd, %bb.ac ], [ -1, %_ZL9Abc_Clockv.exit52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ge = fcmp ugt double %i.fw, 0.000000e+00
  br i1 %i.ge, label %bb.ad, label %.critedge34.sink.split

bb.ad:                                            ; preds = %_ZL9Abc_Clockv.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false), !alias.scope !191
  %i.gf = load ptr, ptr %i.ck, align 8, !tbaa !66, !noalias !191 ; 2 uses
  %i.gg = load ptr, ptr %i.cl, align 8, !tbaa !66, !noalias !191 ; 2 uses
  %.not11.i = icmp eq ptr %i.gf, %i.gg
  br i1 %.not11.i, label %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %i.gh = phi ptr [ %i.he, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.ad ] ; 3 uses
  %i.gi = phi ptr [ %i.hf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.ad ] ; 3 uses
  %.sroa.07.012.i = phi ptr [ %i.hh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ %i.gf, %bb.ad ] ; 2 uses
  %i.gj = phi ptr [ %i.hg, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.ad ] ; 5 uses
  %i.gk = load i32, ptr %.sroa.07.012.i, align 4, !tbaa !56, !noalias !191 ; 3 uses
  %i.gl = call noundef i32 @_ZN7CaDiCaL6Solver3valEib(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i32 noundef %i.gk, i1 noundef zeroext true) #16, !noalias !191 ; 2 uses
  %i.gm = call i32 @llvm.abs.i32(i32 %i.gl, i1 true)
  %i.gn = icmp eq i32 %i.gm, %i.gk
  %..i.i = select i1 %i.gn, i32 %i.gl, i32 %i.gk  ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.gi, %i.gh
  br i1 %.not.i.i.i55, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i
  store i32 %..i.i, ptr %i.gi, align 4, !tbaa !56, !noalias !191
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  store ptr %i.go, ptr %i.cn, align 8, !tbaa !57, !alias.scope !191
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.af:                                            ; preds = %.lr.ph.i
  %i.gp = ptrtoint ptr %i.gh to i64
  %i.gq = ptrtoint ptr %i.gj to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 6 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775804
  br i1 %i.gs, label %bb.ag, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17, !noalias !191
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.af
  %i.gt = ashr exact i64 %i.gr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 2305843009213693951)
  %i.gx = select i1 %i.gv, i64 2305843009213693951, i64 %i.gw ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.gy = shl nuw nsw i64 %i.gx, 2
  %i.gz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #18, !noalias !191 ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gr ; 2 uses
  store i32 %..i.i, ptr %i.ha, align 4, !tbaa !56, !noalias !191
  %i.hb = icmp sgt i64 %i.gr, 0
  br i1 %i.hb, label %bb.ah, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.ah:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gz, ptr align 4 %i.gj, i64 %i.gr, i1 false), !noalias !191
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.ah, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 4 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gr) #19, !noalias !191
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.hc, ptr %i.cn, align 8, !tbaa !57, !alias.scope !191
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx ; 2 uses
  store ptr %i.hd, ptr %i.co, align 8, !tbaa !55, !alias.scope !191
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.ae
  %i.he = phi ptr [ %i.gh, %bb.ae ], [ %i.hd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.hf = phi ptr [ %i.go, %bb.ae ], [ %i.hc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ]
  %i.hg = phi ptr [ %i.gj, %bb.ae ], [ %i.gz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i, i64 4 ; 2 uses
  %.not.i56 = icmp eq ptr %i.hh, %i.gg
  br i1 %.not.i56, label %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit.loopexit, label %.lr.ph.i

_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %8 = ptrtoint ptr %i.he to i64
  br label %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit

_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit: ; preds = %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit.loopexit, %bb.ad
  %9 = phi i64 [ 0, %bb.ad ], [ %8, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit.loopexit ]
  %.lcssa.i = phi ptr [ null, %bb.ad ], [ %i.hg, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit.loopexit ] ; 4 uses
  store ptr %.lcssa.i, ptr %5, align 8, !alias.scope !191
  br i1 %.not11.i57, label %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62
  %.sroa.11.0 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62 ], [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit ]
  %i.hi = phi ptr [ %i.id, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62 ], [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit ] ; 3 uses
  %i.hj = phi ptr [ %.sroa.8.0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62 ], [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit ] ; 3 uses
  %.sroa.07.012.i59 = phi ptr [ %i.if, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62 ], [ %.sroa.0194.0.lcssa, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit ] ; 2 uses
  %i.hk = phi ptr [ %i.ie, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62 ], [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit ] ; 5 uses
  %i.hl = load i32, ptr %.sroa.07.012.i59, align 4, !tbaa !56, !noalias !192 ; 3 uses
  %i.hm = call noundef i32 @_ZN7CaDiCaL6Solver3valEib(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i32 noundef %i.hl, i1 noundef zeroext true) #16, !noalias !192 ; 2 uses
  %i.hn = call i32 @llvm.abs.i32(i32 %i.hm, i1 true)
  %i.ho = icmp eq i32 %i.hn, %i.hl
  %..i.i60 = select i1 %i.ho, i32 %i.hm, i32 %i.hl ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.hj, %i.hi
  br i1 %.not.i.i.i61, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i58
  store i32 %..i.i60, ptr %i.hj, align 4, !tbaa !56, !noalias !192
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62

bb.ak:                                            ; preds = %.lr.ph.i58
  %i.hp = ptrtoint ptr %i.hi to i64
  %i.hq = ptrtoint ptr %i.hk to i64
  %i.hr = sub i64 %i.hp, %i.hq                    ; 6 uses
  %i.hs = icmp eq i64 %i.hr, 9223372036854775804
  br i1 %i.hs, label %bb.al, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i65

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17, !noalias !192
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i65: ; preds = %bb.ak
  %i.ht = ashr exact i64 %i.hr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.ht, i64 1)
  %i.hu = add nsw i64 %.sroa.speculated.i.i.i.i.i66, %i.ht ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %i.ht
  %i.hw = call i64 @llvm.umin.i64(i64 %i.hu, i64 2305843009213693951)
  %i.hx = select i1 %i.hv, i64 2305843009213693951, i64 %i.hw ; 3 uses
  %.not.i.i.i.i.i67 = icmp ne i64 %i.hx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i67)
  %i.hy = shl nuw nsw i64 %i.hx, 2
  %i.hz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #18, !noalias !192 ; 4 uses
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 %i.hr ; 2 uses
  store i32 %..i.i60, ptr %i.ia, align 4, !tbaa !56, !noalias !192
  %i.ib = icmp sgt i64 %i.hr, 0
  br i1 %i.ib, label %bb.am, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i68

bb.am:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i65
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hz, ptr align 4 %i.hk, i64 %i.hr, i1 false), !noalias !192
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i68

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i68: ; preds = %bb.am, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i65
  %.not.i17.i.i.i.i69 = icmp eq ptr %i.hk, null
  br i1 %.not.i17.i.i.i.i69, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i70, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hr) #19, !noalias !192
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i70

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i70: ; preds = %bb.an, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i68
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hx ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i70, %bb.aj
  %.pn = phi ptr [ %i.ia, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i70 ], [ %i.hj, %bb.aj ]
  %.sroa.11.1 = phi ptr [ %i.ic, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i70 ], [ %.sroa.11.0, %bb.aj ] ; 2 uses
  %i.id = phi ptr [ %i.ic, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i70 ], [ %i.hi, %bb.aj ]
  %i.ie = phi ptr [ %i.hz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i70 ], [ %i.hk, %bb.aj ] ; 2 uses
  %.sroa.8.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i59, i64 4 ; 2 uses
  %.not.i63 = icmp eq ptr %i.if, %.sroa.10199.0.lcssa
  br i1 %.not.i63, label %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71.loopexit, label %.lr.ph.i58

_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i62
  %i.ig = ptrtoint ptr %.sroa.11.1 to i64
  br label %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71

_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71: ; preds = %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71.loopexit, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit
  %.sroa.8.1 = phi ptr [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit ], [ %.sroa.8.0, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71.loopexit ] ; 2 uses
  %.sroa.11.2 = phi i64 [ 0, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit ], [ %i.ig, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71.loopexit ]
  %.lcssa.i64 = phi ptr [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit ], [ %i.ie, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !alias.scope !193
  br i1 %.not11.i72, label %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i77
  %i.ih = phi ptr [ %i.je, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i77 ], [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71 ] ; 3 uses
  %i.ii = phi ptr [ %i.jf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i77 ], [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71 ] ; 3 uses
  %.sroa.07.012.i74 = phi ptr [ %i.jh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i77 ], [ %.sroa.0175.0.lcssa, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71 ] ; 2 uses
  %i.ij = phi ptr [ %i.jg, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i77 ], [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71 ] ; 5 uses
  %i.ik = load i32, ptr %.sroa.07.012.i74, align 4, !tbaa !56, !noalias !193 ; 3 uses
  %i.il = call noundef i32 @_ZN7CaDiCaL6Solver3valEib(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i32 noundef %i.ik, i1 noundef zeroext true) #16, !noalias !193 ; 2 uses
  %i.im = call i32 @llvm.abs.i32(i32 %i.il, i1 true)
  %i.in = icmp eq i32 %i.im, %i.ik
  %..i.i75 = select i1 %i.in, i32 %i.il, i32 %i.ik ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.ii, %i.ih
  br i1 %.not.i.i.i76, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i73
  store i32 %..i.i75, ptr %i.ii, align 4, !tbaa !56, !noalias !193
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 2 uses
  store ptr %i.io, ptr %i.cp, align 8, !tbaa !57, !alias.scope !193
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i77

bb.ap:                                            ; preds = %.lr.ph.i73
  %i.ip = ptrtoint ptr %i.ih to i64
  %i.iq = ptrtoint ptr %i.ij to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 6 uses
  %i.is = icmp eq i64 %i.ir, 9223372036854775804
  br i1 %i.is, label %bb.aq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i80

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17, !noalias !193
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i80: ; preds = %bb.ap
  %i.it = ashr exact i64 %i.ir, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i81 = call i64 @llvm.umax.i64(i64 %i.it, i64 1)
  %i.iu = add nsw i64 %.sroa.speculated.i.i.i.i.i81, %i.it ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.it
  %i.iw = call i64 @llvm.umin.i64(i64 %i.iu, i64 2305843009213693951)
  %i.ix = select i1 %i.iv, i64 2305843009213693951, i64 %i.iw ; 3 uses
  %.not.i.i.i.i.i82 = icmp ne i64 %i.ix, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i82)
  %i.iy = shl nuw nsw i64 %i.ix, 2
  %i.iz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #18, !noalias !193 ; 4 uses
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.ir ; 2 uses
  store i32 %..i.i75, ptr %i.ja, align 4, !tbaa !56, !noalias !193
  %i.jb = icmp sgt i64 %i.ir, 0
  br i1 %i.jb, label %bb.ar, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i83

bb.ar:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iz, ptr align 4 %i.ij, i64 %i.ir, i1 false), !noalias !193
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i83

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i83: ; preds = %bb.ar, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i80
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 2 uses
  %.not.i17.i.i.i.i84 = icmp eq ptr %i.ij, null
  br i1 %.not.i17.i.i.i.i84, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i85, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i83
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.ir) #19, !noalias !193
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i85

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i85: ; preds = %bb.as, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i83
  store ptr %i.jc, ptr %i.cp, align 8, !tbaa !57, !alias.scope !193
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ix ; 2 uses
  store ptr %i.jd, ptr %i.cq, align 8, !tbaa !55, !alias.scope !193
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i77

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i77:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i85, %bb.ao
  %i.je = phi ptr [ %i.ih, %bb.ao ], [ %i.jd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i85 ] ; 2 uses
  %i.jf = phi ptr [ %i.io, %bb.ao ], [ %i.jc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i85 ]
  %i.jg = phi ptr [ %i.ij, %bb.ao ], [ %i.iz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i85 ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i74, i64 4 ; 2 uses
  %.not.i78 = icmp eq ptr %i.jh, %.sroa.10180.0.lcssa
  br i1 %.not.i78, label %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86.loopexit, label %.lr.ph.i73

_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i77
  %10 = ptrtoint ptr %i.je to i64
  br label %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86

_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86: ; preds = %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86.loopexit, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71
  %11 = phi i64 [ 0, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71 ], [ %10, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86.loopexit ]
  %.lcssa.i79 = phi ptr [ null, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit71 ], [ %i.jg, %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86.loopexit ] ; 5 uses
  store ptr %.lcssa.i79, ptr %6, align 8, !alias.scope !193
  %i.ji = call noundef i32 @_ZN5eSLIM17RelationGenerator14reduceConflictERdRKSt6vectorIiSaIiEES6_S6_(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.cr)
  %.not32 = icmp eq i32 %i.ji, 20                 ; 2 uses
  br i1 %.not32, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86
  store i8 0, ptr %i.cs, align 4, !tbaa !32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.au:                                            ; preds = %_ZN5eSLIM13CadicalSolver9getValuesERKSt6vectorIiSaIiEE.exit86
  %i.jj = load i32, ptr %i.ch, align 8, !tbaa !73
  %i.jk = sub nsw i32 0, %i.jj
  %i.jl = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #18 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4 ; 4 uses
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !56
  %i.jn = load ptr, ptr %i.b, align 8, !tbaa !65, !nonnull !59, !align !60 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !57
  %i.jr = load ptr, ptr %i.jo, align 8, !tbaa !54
  %.not287 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not287, label %._crit_edge270, label %.lr.ph269

._crit_edge270:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.au
  %.sroa.0146.0.lcssa = phi ptr [ %i.jl, %bb.au ], [ %.sroa.0146.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.10.0.lcssa = phi ptr [ %i.jm, %bb.au ], [ %.sroa.10.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.18.0.lcssa = phi ptr [ %i.jm, %bb.au ], [ %.sroa.18.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.lcssa229 = phi ptr [ %i.jn, %bb.au ], [ %i.lf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.js = getelementptr inbounds nuw i8, ptr %.lcssa229, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %.lcssa229, i64 56
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !57 ; 2 uses
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !54 ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !76
  store i32 0, ptr %i.ct, align 8, !tbaa !77
  store ptr null, ptr %i.cu, align 8, !tbaa !76
  store i32 0, ptr %i.cv, align 8, !tbaa !77
  store ptr null, ptr %i.cw, align 8, !tbaa !80
  %.not.i.i87 = icmp eq ptr %i.ju, %i.jv
  br i1 %.not.i.i87, label %._crit_edge280, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91:          ; preds = %._crit_edge270
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.ju to i64
  %i.jy = sub i64 %i.jx, %i.jw
  %i.jz = ashr exact i64 %i.jy, 1                 ; 4 uses
  %i.ka = add nsw i64 %i.jz, 63                   ; 2 uses
  %i.kb = lshr i64 %i.ka, 3
  %i.kc = and i64 %i.kb, 2305843009213693944
  %i.kd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #18 ; 4 uses
  %i.ke = lshr i64 %i.ka, 6                       ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ke
  store ptr %i.kf, ptr %i.cw, align 8, !tbaa !80
  store ptr %i.kd, ptr %7, align 8
  store i32 0, ptr %i.ct, align 8
  %i.kg = sdiv i64 %i.jz, 64
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.kg
  %i.ki = and i64 %i.jz, -9223372036854775745
  %i.kj = icmp ugt i64 %i.ki, -9223372036854775808
  %storemerge.idx.i.i.i.i.i88 = select i1 %i.kj, i64 -8, i64 0
  %storemerge.i.i.i.i.i89 = getelementptr inbounds i8, ptr %i.kh, i64 %storemerge.idx.i.i.i.i.i88
  %i.kk = trunc i64 %i.jz to i32
  %i.kl = and i32 %i.kk, 63
  store ptr %storemerge.i.i.i.i.i89, ptr %i.cu, align 8
  store i32 %i.kl, ptr %i.cv, align 8
  %.idx.i90 = shl nuw nsw i64 %i.ke, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kd, i8 0, i64 %.idx.i90, i1 false)
  %.pre322 = load ptr, ptr %i.b, align 8, !tbaa !65 ; 2 uses
  %.phi.trans.insert323 = getelementptr inbounds nuw i8, ptr %.pre322, i64 56
  %.pre324 = load ptr, ptr %.phi.trans.insert323, align 8, !tbaa !57
  %.phi.trans.insert325 = getelementptr inbounds nuw i8, ptr %.pre322, i64 48
  %.pre326 = load ptr, ptr %.phi.trans.insert325, align 8, !tbaa !54
  %i.km = icmp eq ptr %.pre324, %.pre326
  br i1 %i.km, label %._crit_edge280, label %.lr.ph279

.lr.ph269:                                        ; preds = %bb.au, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.kn = phi ptr [ %i.lf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.jn, %bb.au ]
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %bb.au ] ; 2 uses
  %.sroa.18.0266 = phi ptr [ %.sroa.18.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.jm, %bb.au ] ; 3 uses
  %.sroa.10.0265 = phi ptr [ %.sroa.10.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.jm, %bb.au ] ; 3 uses
  %.sroa.0146.0264 = phi ptr [ %.sroa.0146.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.jl, %bb.au ] ; 4 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.i64, i64 %indvars.iv300
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !56
  %i.kq = sub nsw i32 0, %i.kp                    ; 2 uses
  %.not.i.i92 = icmp eq ptr %.sroa.10.0265, %.sroa.18.0266
  br i1 %.not.i.i92, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph269
  store i32 %i.kq, ptr %.sroa.10.0265, align 4, !tbaa !56
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.aw:                                            ; preds = %.lr.ph269
  %i.kr = ptrtoint ptr %.sroa.18.0266 to i64
  %i.ks = ptrtoint ptr %.sroa.0146.0264 to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 6 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775804
  br i1 %i.ku, label %bb.ax, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aw
  %i.kv = ashr exact i64 %i.kt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kv, i64 1)
  %i.kw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kv ; 2 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  %i.ky = call i64 @llvm.umin.i64(i64 %i.kw, i64 2305843009213693951)
  %i.kz = select i1 %i.kx, i64 2305843009213693951, i64 %i.ky ; 3 uses
  %.not.i.i.i.i93 = icmp ne i64 %i.kz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i93)
  %i.la = shl nuw nsw i64 %i.kz, 2
  %i.lb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #18 ; 4 uses
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %i.kt ; 2 uses
  store i32 %i.kq, ptr %i.lc, align 4, !tbaa !56
  %i.ld = icmp sgt i64 %i.kt, 0
  br i1 %i.ld, label %bb.ay, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

bb.ay:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lb, ptr align 4 %.sroa.0146.0264, i64 %i.kt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ay, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.0264, i64 noundef %i.kt) #19
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.kz
  %.pre321 = load ptr, ptr %i.b, align 8, !tbaa !65
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.lf = phi ptr [ %.pre321, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.kn, %bb.av ] ; 4 uses
  %.sroa.0146.3 = phi ptr [ %i.lb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0146.0264, %bb.av ] ; 2 uses
  %.pn218 = phi ptr [ %i.lc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10.0265, %bb.av ]
  %.sroa.18.3 = phi ptr [ %i.le, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.18.0266, %bb.av ] ; 2 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn218, i64 4 ; 2 uses
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !57
  %i.lj = load ptr, ptr %i.lg, align 8, !tbaa !54
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = ashr exact i64 %i.lm, 2
  %i.lo = icmp ugt i64 %i.ln, %indvars.iv.next301
  br i1 %i.lo, label %.lr.ph269, label %._crit_edge270, !llvm.loop !172

._crit_edge280:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120, %._crit_edge270, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91
  %.sroa.0146.1.lcssa = phi ptr [ %.sroa.0146.0.lcssa, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91 ], [ %.sroa.0146.0.lcssa, %._crit_edge270 ], [ %.sroa.0146.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120 ] ; 4 uses
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.0.lcssa, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91 ], [ %.sroa.10.0.lcssa, %._crit_edge270 ], [ %.sroa.10.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120 ] ; 2 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.0.lcssa, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91 ], [ %.sroa.18.0.lcssa, %._crit_edge270 ], [ %.sroa.18.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120 ]
  %.not8.i = icmp eq ptr %.sroa.0146.1.lcssa, %.sroa.10.1.lcssa
  br i1 %.not8.i, label %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %._crit_edge280, %.lr.ph.i94
  %.sroa.05.09.i = phi ptr [ %i.lq, %.lr.ph.i94 ], [ %.sroa.0146.1.lcssa, %._crit_edge280 ] ; 2 uses
  %i.lp = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !56
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i32 noundef %i.lp) #16
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i95 = icmp eq ptr %i.lq, %.sroa.10.1.lcssa
  br i1 %.not.i95, label %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i94

_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i94, %._crit_edge280
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i32 noundef 0) #16
  %.not.i96 = icmp eq ptr %.sroa.8.1, %.lcssa.i64
  br i1 %.not.i96, label %_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit
  %i.lr = ptrtoint ptr %.sroa.8.1 to i64
  %i.ls = ptrtoint ptr %.lcssa.i64 to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = ashr exact i64 %i.lt, 2                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.lu, 8
  br i1 %min.iters.check, label %.lr.ph.i97.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.lu, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.md, %vector.body ]
  %vec.phi411 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.me, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.i64, i64 %index ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %wide.load = load <4 x i32>, ptr %i.lv, align 4, !tbaa !56
  %wide.load412 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !56
  %i.lx = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.ly = icmp sgt <4 x i32> %wide.load412, zeroinitializer
  %i.lz = shl nuw <4 x i32> splat (i32 1), %vec.ind
  %i.ma = shl nuw <4 x i32> splat (i32 1), %step.add
  %i.mb = select <4 x i1> %i.lx, <4 x i32> %i.lz, <4 x i32> zeroinitializer
  %i.mc = select <4 x i1> %i.ly, <4 x i32> %i.ma, <4 x i32> zeroinitializer
  %i.md = or <4 x i32> %i.mb, %vec.phi            ; 2 uses
  %i.me = or <4 x i32> %i.mc, %vec.phi411         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.mf = icmp eq i64 %index.next, %n.vec
  br i1 %i.mf, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.me, %i.md
  %i.mg = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.lu, %n.vec
  br i1 %cmp.n, label %_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit.loopexit, label %.lr.ph.i97.preheader

.lr.ph.i97.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.079.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.mg, %middle.block ]
  br label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %.lr.ph.i97.preheader, %.lr.ph.i97
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i97 ], [ %indvars.iv.i.ph, %.lr.ph.i97.preheader ] ; 3 uses
  %.079.i = phi i32 [ %.1.i, %.lr.ph.i97 ], [ %.079.i.ph, %.lr.ph.i97.preheader ]
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.i64, i64 %indvars.iv.i
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !56
  %i.mj = icmp sgt i32 %i.mi, 0
  %i.mk = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ml = shl nuw i32 1, %i.mk
  %i.mm = select i1 %i.mj, i32 %i.ml, i32 0
  %.1.i = or i32 %i.mm, %.079.i                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.lu
  br i1 %exitcond.not.i, label %_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit.loopexit, label %.lr.ph.i97, !llvm.loop !174

_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit.loopexit: ; preds = %.lr.ph.i97, %middle.block
  %.1.i.lcssa = phi i32 [ %i.mg, %middle.block ], [ %.1.i, %.lr.ph.i97 ]
  %i.mn = sext i32 %.1.i.lcssa to i64
  br label %_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit

_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit: ; preds = %_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit.loopexit, %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit
  %.07.lcssa.i = phi i64 [ 0, %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit ], [ %i.mn, %_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit.loopexit ]
  %i.mo = load ptr, ptr %0, align 8, !tbaa !23
  %i.mp = getelementptr inbounds nuw [24 x i8], ptr %i.mo, i64 %.07.lcssa.i ; 4 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !34
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 3 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !34 ; 4 uses
  %i.mt = icmp eq ptr %i.mq, %i.ms
  %i.mu = zext i1 %i.mt to i32
  %i.mv = load i32, ptr %i.cx, align 8, !tbaa !31
  %i.mw = add i32 %i.mv, %i.mu
  store i32 %i.mw, ptr %i.cx, align 8, !tbaa !31
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !36
  %.not.i.i98 = icmp eq ptr %i.ms, %i.my
  br i1 %.not.i.i98, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ms, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.mz = load ptr, ptr %i.mr, align 8, !tbaa !37
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 40
  store ptr %i.na, ptr %i.mr, align 8, !tbaa !37
  br label %_ZN5eSLIM8Relation16addOutputPatternEiOSt6vectorIbSaIbEE.exit

bb.ba:                                            ; preds = %_ZN5eSLIM17RelationGenerator18assignment2bvindexERKSt6vectorIiSaIiEE.exit
  call void @_ZNSt6vectorIS_IbSaIbEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mp, ptr %i.ms, ptr noundef nonnull align 8 dereferenceable(40) %7)
  br label %_ZN5eSLIM8Relation16addOutputPatternEiOSt6vectorIbSaIbEE.exit

_ZN5eSLIM8Relation16addOutputPatternEiOSt6vectorIbSaIbEE.exit: ; preds = %bb.az, %bb.ba
  %i.nb = load ptr, ptr %7, align 8, !tbaa !76    ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i99, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN5eSLIM8Relation16addOutputPatternEiOSt6vectorIbSaIbEE.exit
  %i.nc = load ptr, ptr %i.cw, align 8, !tbaa !80 ; 2 uses
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne                    ; 2 uses
  %i.ng = ashr exact i64 %i.nf, 3
  %i.nh = sub nsw i64 0, %i.ng
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.nh
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nf) #19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN5eSLIM8Relation16addOutputPatternEiOSt6vectorIbSaIbEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.nj = ptrtoint ptr %.sroa.18.1.lcssa to i64
  %i.nk = ptrtoint ptr %.sroa.0146.1.lcssa to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.1.lcssa, i64 noundef %i.nl) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph279:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120 ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91 ] ; 6 uses
  %.sroa.18.1277 = phi ptr [ %.sroa.18.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120 ], [ %.sroa.18.0.lcssa, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91 ] ; 4 uses
  %.sroa.10.1276 = phi ptr [ %.sroa.10.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120 ], [ %.sroa.10.0.lcssa, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91 ] ; 4 uses
  %.sroa.0146.1275 = phi ptr [ %.sroa.0146.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120 ], [ %.sroa.0146.0.lcssa, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit91 ] ; 5 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.i79, i64 %indvars.iv303 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !56
  %i.no = call noundef zeroext i1 @_ZN7CaDiCaL6Solver6failedEi(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i32 noundef %i.nn) #16
  br i1 %i.no, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph279
  %i.np = lshr i64 %indvars.iv303, 6
  %.zext212 = and i64 %i.np, 67108863
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0169.0395, i64 %.zext212
  %i.nr = and i64 %indvars.iv303, 63
  %i.ns = shl nuw i64 1, %i.nr
  %i.nt = load i64, ptr %i.nq, align 8, !tbaa !13
  %i.nu = and i64 %i.nt, %i.ns
  %.not217 = icmp eq i64 %i.nu, 0
  br i1 %.not217, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120, label %.critedge

.critedge:                                        ; preds = %.lr.ph279, %bb.bd
  %i.nv = load ptr, ptr %7, align 8, !tbaa !76
  %i.nw = lshr i64 %indvars.iv303, 5
  %.zext = and i64 %i.nw, 134217727
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %.zext ; 2 uses
  %indvars.iv303.tr = trunc nuw i64 %indvars.iv303 to i32
  %i.ny = shl nuw i32 %indvars.iv303.tr, 1
  %i.nz = and i32 %i.ny, 62                       ; 2 uses
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = shl nuw nsw i64 1, %i.oa
  %i.oc = load i64, ptr %i.nx, align 8, !tbaa !13
  %i.od = or i64 %i.oc, %i.ob                     ; 2 uses
  %i.oe = load i32, ptr %i.nm, align 4, !tbaa !56 ; 2 uses
  %i.of = icmp slt i32 %i.oe, 0
  %i.og = or disjoint i32 %i.nz, 1
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = shl nuw i64 1, %i.oh                    ; 2 uses
  %i.oj = xor i64 %i.oi, -1
  %i.ok = and i64 %i.od, %i.oj
  %i.ol = or i64 %i.od, %i.oi
  %storemerge = select i1 %i.of, i64 %i.ol, i64 %i.ok
  store i64 %storemerge, ptr %i.nx, align 8, !tbaa !13
  %i.om = sub nsw i32 0, %i.oe                    ; 2 uses
  %.not.i.i113 = icmp eq ptr %.sroa.10.1276, %.sroa.18.1277
  br i1 %.not.i.i113, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.critedge
  store i32 %i.om, ptr %.sroa.10.1276, align 4, !tbaa !56
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.10.1276, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120

bb.bf:                                            ; preds = %.critedge
  %i.oo = ptrtoint ptr %.sroa.18.1277 to i64
  %i.op = ptrtoint ptr %.sroa.0146.1275 to i64
  %i.oq = sub i64 %i.oo, %i.op                    ; 6 uses
  %i.or = icmp eq i64 %i.oq, 9223372036854775804
  br i1 %i.or, label %bb.bg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i114

bb.bg:                                            ; preds = %bb.bf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i114: ; preds = %bb.bf
  %i.os = ashr exact i64 %i.oq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i115 = call i64 @llvm.umax.i64(i64 %i.os, i64 1)
  %i.ot = add nsw i64 %.sroa.speculated.i.i.i.i115, %i.os ; 2 uses
  %i.ou = icmp ult i64 %i.ot, %i.os
  %i.ov = call i64 @llvm.umin.i64(i64 %i.ot, i64 2305843009213693951)
  %i.ow = select i1 %i.ou, i64 2305843009213693951, i64 %i.ov ; 3 uses
  %.not.i.i.i.i116 = icmp ne i64 %i.ow, 0
  call void @llvm.assume(i1 %.not.i.i.i.i116)
  %i.ox = shl nuw nsw i64 %i.ow, 2
  %i.oy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ox) #18 ; 4 uses
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 %i.oq ; 2 uses
  store i32 %i.om, ptr %i.oz, align 4, !tbaa !56
  %i.pa = icmp sgt i64 %i.oq, 0
  br i1 %i.pa, label %bb.bh, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i119

bb.bh:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i114
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oy, ptr align 4 %.sroa.0146.1275, i64 %i.oq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i119

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i119: ; preds = %bb.bh, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i114
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.1275, i64 noundef %i.oq) #19
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.ow
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit120

_ZNSt6vectorIiSaIiEE9push_backEOi.exit120:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i119, %bb.be, %bb.bd
  %.sroa.0146.2 = phi ptr [ %.sroa.0146.1275, %bb.bd ], [ %i.oy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i119 ], [ %.sroa.0146.1275, %bb.be ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.1276, %bb.bd ], [ %i.pb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i119 ], [ %i.on, %bb.be ] ; 2 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.1277, %bb.bd ], [ %i.pc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i119 ], [ %.sroa.18.1277, %bb.be ] ; 2 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.pd = load ptr, ptr %i.b, align 8, !tbaa !65, !nonnull !59, !align !60 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 48
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 56
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !57
  %i.ph = load ptr, ptr %i.pe, align 8, !tbaa !54
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = sub i64 %i.pi, %i.pj
  %i.pl = ashr exact i64 %i.pk, 2
  %i.pm = icmp ugt i64 %i.pl, %indvars.iv.next304
  br i1 %i.pm, label %.lr.ph279, label %._crit_edge280, !llvm.loop !175

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bc, %bb.at
  %.1 = phi i1 [ true, %bb.at ], [ %.027, %bb.bc ] ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %.lcssa.i79, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIiSaIiEED2Ev.exit122, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.pn = ptrtoint ptr %.lcssa.i79 to i64
  %i.po = sub i64 %11, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa.i79, i64 noundef %i.po) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit122

_ZNSt6vectorIiSaIiEED2Ev.exit122:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.not.i.i.i123 = icmp eq ptr %.lcssa.i64, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIiSaIiEED2Ev.exit124, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122
  %i.pp = ptrtoint ptr %.lcssa.i64 to i64
  %i.pq = sub i64 %.sroa.11.2, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa.i64, i64 noundef %i.pq) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit124

_ZNSt6vectorIiSaIiEED2Ev.exit124:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122, %bb.bj
  %.not.i.i.i125 = icmp eq ptr %.lcssa.i, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIiSaIiEED2Ev.exit126, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit124
  %i.pr = ptrtoint ptr %.lcssa.i to i64
  %i.ps = sub i64 %9, %i.pr
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa.i, i64 noundef %i.ps) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit126

_ZNSt6vectorIiSaIiEED2Ev.exit126:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit124, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.not32, label %bb.z, label %bb.bl, !llvm.loop !176

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %.1, label %_ZN5eSLIM8RelationD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pt = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.pt, %i.pv
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IbSaIbEESaIS2_EEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i127

.lr.ph.i.i.i.i127:                                ; preds = %bb.bm, %_ZSt8_DestroyISt6vectorIS0_IbSaIbEESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.qp, %_ZSt8_DestroyISt6vectorIS0_IbSaIbEESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.pt, %bb.bm ] ; 5 uses
  %i.pw = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !83 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !37 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.pw, %i.py
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i127, %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.qi, %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.pw, %.lr.ph.i.i.i.i127 ] ; 3 uses
  %i.pz = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.qa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !80 ; 2 uses
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = ptrtoint ptr %i.pz to i64
  %i.qe = sub i64 %i.qc, %i.qd                    ; 2 uses
  %i.qf = ashr exact i64 %i.qe, 3
  %i.qg = sub nsw i64 0, %i.qf
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qg
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qe) #19
  br label %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bn, %.lr.ph.i.i.i.i.i.i.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.qi, %i.py
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !177

_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i127
  %i.qj = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.pw, %.lr.ph.i.i.i.i127 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.qj, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IbSaIbEESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_.exit.i.i.i.i.i.i
  %i.qk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !36
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qj to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qo) #19
  br label %_ZSt8_DestroyISt6vectorIS0_IbSaIbEESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIS0_IbSaIbEESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.bo, %_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_.exit.i.i.i.i.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.qp, %i.pv
  br i1 %.not.i.i.i.i128, label %_ZSt8_DestroyIPSt6vectorIS0_IbSaIbEESaIS2_EEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i127, !llvm.loop !178

_ZSt8_DestroyIPSt6vectorIS0_IbSaIbEESaIS2_EEEvT_S6_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_IbSaIbEESaIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPSt6vectorIS0_IbSaIbEESaIS2_EEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt6vectorIS0_IbSaIbEESaIS2_EEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IbSaIbEESaIS2_EEEvT_S6_.exitthread-pre-split.i.i, %bb.bm
  %i.qq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIS0_IbSaIbEESaIS2_EEEvT_S6_.exitthread-pre-split.i.i ], [ %i.pt, %bb.bm ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM8RelationD2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IbSaIbEESaIS2_EEEvT_S6_.exit.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !24
  %i.qt = ptrtoint ptr %i.qs to i64
  %i.qu = ptrtoint ptr %i.qq to i64
  %i.qv = sub i64 %i.qt, %i.qu
  call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qv) #19
  br label %_ZN5eSLIM8RelationD2Ev.exit

.critedge34.sink.split:                           ; preds = %bb.z, %_ZL9Abc_Clockv.exit54
  store i8 0, ptr %i.cs, align 4, !tbaa !32
  br label %.critedge34

.critedge34:                                      ; preds = %bb.z, %.critedge34.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN5eSLIM8RelationD2Ev.exit

_ZN5eSLIM8RelationD2Ev.exit:                      ; preds = %bb.bp, %_ZSt8_DestroyIPSt6vectorIS0_IbSaIbEESaIS2_EEEvT_S6_.exit.i.i, %.critedge34, %bb.bl
  %.not.i.i129 = icmp eq ptr %.sroa.0169.0395, null
  br i1 %.not.i.i129, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit130, label %bb.bq

bb.bq:                                            ; preds = %_ZN5eSLIM8RelationD2Ev.exit
  %i.qw = ptrtoint ptr %.sroa.13174.0394 to i64
  %i.qx = ptrtoint ptr %.sroa.0169.0395 to i64
  %i.qy = sub i64 %i.qw, %i.qx                    ; 2 uses
  %i.qz = ashr exact i64 %i.qy, 3
  %i.ra = sub nsw i64 0, %i.qz
  %i.rb = getelementptr inbounds [8 x i8], ptr %.sroa.13174.0394, i64 %i.ra
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.qy) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit130

_ZNSt13_Bvector_baseISaIbEED2Ev.exit130:          ; preds = %_ZN5eSLIM8RelationD2Ev.exit, %bb.bq
  %.not.i.i.i131 = icmp eq ptr %.sroa.0175.0.lcssa, null
  br i1 %.not.i.i.i131, label %_ZNSt6vectorIiSaIiEED2Ev.exit132, label %bb.br

bb.br:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit130
  %i.rc = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.rd = ptrtoint ptr %.sroa.0175.0.lcssa to i64
  %i.re = sub i64 %i.rc, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0.lcssa, i64 noundef %i.re) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit132

_ZNSt6vectorIiSaIiEED2Ev.exit132:                 ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit130, %bb.br
  %.not.i.i.i133 = icmp eq ptr %.sroa.0194.0.lcssa, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIiSaIiEED2Ev.exit134, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit132
  %i.rf = ptrtoint ptr %.sroa.17203.0.lcssa to i64
  %i.rg = ptrtoint ptr %.sroa.0194.0.lcssa to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0194.0.lcssa, i64 noundef %i.rh) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit134

_ZNSt6vectorIiSaIiEED2Ev.exit134:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit132, %bb.bs
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZN5eSLIM17RelationGenerator9getNewVarEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !53
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM17RelationGenerator36encodeCircuitApproximativeBoundedTFIEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.std::_Rb_tree<eSLIM::eSLIMCirObj *, eSLIM::eSLIMCirObj *, std::_Identity<eSLIM::eSLIMCirObj *>, eSLIM::eSLIMCirObj::eSLIMObjComp>::_Alloc_node", align 8 ; 4 uses
  %2 = alloca %"class.std::vector.10", align 8    ; 7 uses
  %3 = alloca %"class.eSLIM::eSLIMCirObj", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  store i32 %i.b, ptr %i.e, align 4, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  store i32 %i.b, ptr %i.g, align 4, !tbaa !56
  %i.h = sub nsw i32 0, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.h) #16
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN5eSLIM17RelationGenerator18markRestrictedConeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.10") align 8 %2, ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.j = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.k = tail call noundef i32 @_ZNK5eSLIM11eSLIMCirMan10getNofObjsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #16 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.m = tail call noundef i32 @_ZNK5eSLIM11eSLIMCirMan9getNofPosEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #16 ; 2 uses
  %i.n = sub nsw i32 %i.k, %i.m                   ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %bb.b, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.k, %i.m
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.o     ; 2 uses
  store i8 0, ptr %i.q, align 1, !tbaa !85
  %i.s = add nsw i64 %i.o, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

end_hunk_0
begin_hunk_1_@_ZN5eSLIM17RelationGenerator26encodeCircuitApproximativeEv:bb.a
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !56
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.026.032, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.cs, %i.ca
  br i1 %.not30, label %._crit_edge.loopexit, label %.lr.ph

bb.n:                                             ; preds = %._crit_edge
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !56 ; 2 uses
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !56
  %.not23 = icmp eq i32 %i.cv, %i.cy
  br i1 %.not23, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5eSLIM17RelationGenerator10encodeGateERKNS_11eSLIMCirObjEiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(124) %3, i32 noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.n, %bb.o, %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit
  %i.cz = load ptr, ptr %i.ac, align 8, !tbaa !111
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef %i.cz)
  %i.da = load ptr, ptr %i.y, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %_ZN5eSLIM11eSLIMCirObjD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %i.aa, align 8, !tbaa !105
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #19
  br label %_ZN5eSLIM11eSLIMCirObjD2Ev.exit

_ZN5eSLIM11eSLIMCirObjD2Ev.exit:                  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.df = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.dg = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan9getNofPisEv(ptr noundef nonnull align 8 dereferenceable(56) %i.df) #16
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp sgt i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %bb.b, label %.preheader, !llvm.loop !197

._crit_edge38:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.preheader
  call void @_ZN5eSLIM17RelationGenerator24setupEqualityConstraintsERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.not.i.i.i24 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge38
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !55
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.j to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.dn) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge38, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.s:                                             ; preds = %.lr.ph37, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv40 = phi i64 [ 1, %.lr.ph37 ], [ %indvars.iv.next41, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv40 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !56 ; 2 uses
  %.not21 = icmp eq i32 %i.dq, 0
  br i1 %.not21, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = load ptr, ptr %i.am, align 8, !tbaa !57 ; 4 uses
  %i.ds = load ptr, ptr %i.an, align 8, !tbaa !55
  %.not.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !56
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store ptr %i.dt, ptr %i.am, align 8, !tbaa !57
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.t
  %i.du = load ptr, ptr %i.al, align 8, !tbaa !54 ; 4 uses
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 5 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775804
  br i1 %i.dy, label %bb.w, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.dz = ashr exact i64 %i.dx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 2305843009213693951)
  %i.ed = select i1 %i.eb, i64 2305843009213693951, i64 %i.ec ; 3 uses
  %.not.i.i.i25 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i25)
  %i.ee = shl nuw nsw i64 %i.ed, 2
  %i.ef = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #18 ; 4 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.dx ; 2 uses
  %i.eh = load i32, ptr %i.dp, align 4, !tbaa !56
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !56
  %i.ei = icmp sgt i64 %i.dx, 0
  br i1 %i.ei, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr align 4 %i.du, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %.not.i17.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ek = load ptr, ptr %i.an, align 8, !tbaa !55
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.em) #19
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ef, ptr %i.al, align 8, !tbaa !54
  store ptr %i.ej, ptr %i.am, align 8, !tbaa !57
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.en, ptr %i.an, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.u, %bb.s
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %i.eo = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.ep = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan9getNofPisEv(ptr noundef nonnull align 8 dereferenceable(56) %i.eo) #16
  %i.eq = sext i32 %i.ep to i64
  %.not.not = icmp slt i64 %indvars.iv40, %i.eq
  br i1 %.not.not, label %bb.s, label %._crit_edge38, !llvm.loop !198
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM17RelationGenerator21encodeCircuitAffectedEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.std::_Rb_tree<eSLIM::eSLIMCirObj *, eSLIM::eSLIMCirObj *, std::_Identity<eSLIM::eSLIMCirObj *>, eSLIM::eSLIMCirObj::eSLIMObjComp>::_Alloc_node", align 8 ; 4 uses
  %2 = alloca %"struct.std::_Rb_tree<eSLIM::eSLIMCirObj *, eSLIM::eSLIMCirObj *, std::_Identity<eSLIM::eSLIMCirObj *>, eSLIM::eSLIMCirObj::eSLIMObjComp>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"class.std::vector.10", align 8    ; 7 uses
  %4 = alloca %"class.eSLIM::eSLIMCirObj", align 8 ; 14 uses
  %5 = alloca %"class.eSLIM::eSLIMCirObj", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  store i32 %i.b, ptr %i.e, align 4, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  store i32 %i.b, ptr %i.g, align 4, !tbaa !56
  %i.h = sub nsw i32 0, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.h) #16
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.k = tail call noundef i32 @_ZNK5eSLIM11eSLIMCirMan10getNofObjsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #16
  %i.l = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.m = tail call noundef i32 @_ZNK5eSLIM11eSLIMCirMan9getNofPosEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #16
  %i.n = sub nsw i32 %i.k, %i.m                   ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.p = tail call noundef i32 @_ZNK5eSLIM11eSLIMCirMan10getNofObjsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o) #16
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZN5eSLIM11eSLIMCirObjD2Ev.exit
  %i.ad = ptrtoint ptr %i.do to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ae = phi i64 [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit ]
  %i.af = phi ptr [ null, %bb.a ], [ %i.dq, %._crit_edge.loopexit ] ; 3 uses
  call void @_ZN5eSLIM17RelationGenerator24setupEqualityConstraintsERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.ah = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan10getNofObjsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ag) #16
  %i.ai = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.aj = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan9getNofPosEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ai) #16
  %i.ak = xor i32 %i.aj, -1
  %i.al = add i32 %i.ah, %i.ak                    ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.an = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan9getNofPisEv(ptr noundef nonnull align 8 dereferenceable(56) %i.am) #16
  %i.ao = icmp sgt i32 %i.al, %i.an
  br i1 %i.ao, label %.lr.ph93.a, label %.preheader

.lr.ph93.a:                                       ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.az = sext i32 %i.al to i64
  br label %bb.s

bb.b:                                             ; preds = %.lr.ph, %_ZN5eSLIM11eSLIMCirObjD2Ev.exit
  %.03784 = phi i32 [ %i.n, %.lr.ph ], [ %i.dx, %_ZN5eSLIM11eSLIMCirObjD2Ev.exit ] ; 2 uses
  %i.ba = phi ptr [ null, %.lr.ph ], [ %i.dq, %_ZN5eSLIM11eSLIMCirObjD2Ev.exit ] ; 7 uses
  %6 = phi ptr [ null, %.lr.ph ], [ %i.dp, %_ZN5eSLIM11eSLIMCirObjD2Ev.exit ] ; 6 uses
  %i.bb = phi ptr [ null, %.lr.ph ], [ %i.do, %_ZN5eSLIM11eSLIMCirObjD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bc = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.bd = call noundef nonnull align 8 dereferenceable(124) ptr @_ZNK5eSLIM11eSLIMCirMan6getObjEi(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, i32 noundef %.03784) #16 ; 6 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !101
  store i32 %i.be, ptr %4, align 8, !tbaa !101
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !102 ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !103 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = icmp ugt i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.d, label %_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i.i, !prof !104

bb.d:                                             ; preds = %bb.c
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.bn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #18
  br label %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.bo = phi ptr [ %i.bn, %_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.b ] ; 7 uses
  store ptr %i.bo, ptr %i.r, align 8, !tbaa !103
  store ptr %i.bo, ptr %i.s, align 8, !tbaa !102
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  store ptr %i.bp, ptr %i.t, align 8, !tbaa !105
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !106 ; 3 uses
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !106
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp sgt i64 %i.bu, 8
  br i1 %i.bv, label %bb.e, label %bb.f, !prof !107

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bo, ptr align 8 %i.bq, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i
  %i.bw = icmp eq i64 %i.bu, 8
  br i1 %i.bw, label %bb.g, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !109
  store ptr %i.bx, ptr %i.bo, align 8, !tbaa !109
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = getelementptr inbounds i8, ptr %i.bo, i64 %i.bu
  store ptr %i.by, ptr %i.s, align 8, !tbaa !102
  store i32 0, ptr %i.u, align 8, !tbaa !110
  store ptr null, ptr %i.v, align 8, !tbaa !111
  store ptr %i.u, ptr %i.w, align 8, !tbaa !112
  store ptr %i.u, ptr %i.x, align 8, !tbaa !113
  store i64 0, ptr %i.y, align 8, !tbaa !114
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.z, ptr %2, align 8, !tbaa !116
  %i.cb = call noundef ptr @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyILb0ENS7_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESC_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.h ], [ %i.cd, %bb.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %bb.i, !llvm.loop !1

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %bb.i
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !118
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.cb, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.cf, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !119 ; 2 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i8.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyERKS7_.exit.i.i.i, label %bb.j, !llvm.loop !2

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyERKS7_.exit.i.i.i: ; preds = %bb.j
  store ptr %.0.i.i7.i.i.i.i.i, ptr %i.x, align 8, !tbaa !118
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !114
  store i64 %i.ch, ptr %i.y, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  store ptr %i.cb, ptr %i.v, align 8, !tbaa !118
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !103
  br label %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit

_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit:              ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyERKS7_.exit.i.i.i
  %i.ci = phi ptr [ %i.bo, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i ], [ %.pre, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyERKS7_.exit.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.aa, ptr noundef nonnull align 8 dereferenceable(44) %i.cj, i64 44, i1 false)
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !101 ; 3 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.cn = call noundef zeroext i1 @_ZNK5eSLIM11eSLIMCirMan5inTFOERKNS_11eSLIMCirObjE(ptr noundef nonnull align 8 dereferenceable(56) %i.cm, ptr noundef nonnull align 8 dereferenceable(124) %4) #16
  br i1 %i.cn, label %bb.k, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit
  %i.co = sext i32 %i.cl to i64                   ; 2 uses
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.co ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !56
  %.not41 = icmp eq i32 %i.cr, 0
  br i1 %.not41, label %bb.l, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.l:                                             ; preds = %bb.k
  %i.cs = load i32, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.a, align 8, !tbaa !53
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !56
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.a, align 8, !tbaa !53
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.co
  store i32 %i.cu, ptr %i.cx, align 4, !tbaa !56
  %.not.i = icmp eq ptr %6, %i.bb
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.cl, ptr %6, align 4, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store ptr %i.cy, ptr %i.ab, align 8, !tbaa !57
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %bb.l
  %i.cz = ptrtoint ptr %6 to i64
  %i.da = ptrtoint ptr %i.ba to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 6 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775804
  br i1 %i.dc, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.dd = ashr exact i64 %i.db, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 2305843009213693951)
  %i.dh = select i1 %i.df, i64 2305843009213693951, i64 %i.dg ; 3 uses
  %.not.i.i.i42 = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i.i42)
  %i.di = shl nuw nsw i64 %i.dh, 2
  %i.dj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #18 ; 5 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.db ; 2 uses
  store i32 %i.cl, ptr %i.dk, align 4, !tbaa !56
  %i.dl = icmp sgt i64 %i.db, 0
  br i1 %i.dl, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dj, ptr align 4 %i.ba, i64 %i.db, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.db) #19
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dj, ptr %3, align 8, !tbaa !54
  store ptr %i.dm, ptr %i.ab, align 8, !tbaa !57
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dh ; 2 uses
  store ptr %i.dn, ptr %i.ac, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.m, %bb.k, %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit
  %i.do = phi ptr [ %i.bb, %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit ], [ %i.bb, %bb.k ], [ %i.bb, %bb.m ], [ %i.dn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dp = phi ptr [ %6, %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit ], [ %6, %bb.k ], [ %i.cy, %bb.m ], [ %i.dm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.dq = phi ptr [ %i.ba, %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit ], [ %i.ba, %bb.k ], [ %i.ba, %bb.m ], [ %i.dj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dr = load ptr, ptr %i.v, align 8, !tbaa !111
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef %i.dr)
  %i.ds = load ptr, ptr %i.r, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i, label %_ZN5eSLIM11eSLIMCirObjD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dt = load ptr, ptr %i.t, align 8, !tbaa !105
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #19
  br label %_ZN5eSLIM11eSLIMCirObjD2Ev.exit

_ZN5eSLIM11eSLIMCirObjD2Ev.exit:                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.dx = add nsw i32 %.03784, 1                  ; 2 uses
  %i.dy = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.dz = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan10getNofObjsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dy) #16
  %i.ea = icmp slt i32 %i.dx, %i.dz
  br i1 %i.ea, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !199

.preheader:                                       ; preds = %bb.ar, %._crit_edge
  %i.eb = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.ec = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan9getNofPisEv(ptr noundef nonnull align 8 dereferenceable(56) %i.eb) #16
  %.not94 = icmp slt i32 %i.ec, 1
  br i1 %.not94, label %._crit_edge97, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  br label %bb.at

bb.s:                                             ; preds = %.lr.ph93.a, %bb.ar
  %indvars.iv = phi i64 [ %i.az, %.lr.ph93.a ], [ %indvars.iv.next, %bb.ar ] ; 8 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !56
  %.not39 = icmp eq i32 %i.ei, 0
  br i1 %.not39, label %bb.ar, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ej = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.ek = trunc nsw i64 %indvars.iv to i32
  %i.el = call noundef nonnull align 8 dereferenceable(124) ptr @_ZNK5eSLIM11eSLIMCirMan6getObjEi(ptr noundef nonnull align 8 dereferenceable(56) %i.ej, i32 noundef %i.ek) #16 ; 6 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !101
  store i32 %i.em, ptr %5, align 8, !tbaa !101
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !102 ; 2 uses
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !103 ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i43 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i.i.i.i43, label %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i45, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eu = icmp ugt i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.v, label %_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i.i44, !prof !104

bb.v:                                             ; preds = %bb.u
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i.i44: ; preds = %bb.u
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #18
  br label %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i45

_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i45: ; preds = %_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i.i44, %bb.t
  %i.ew = phi ptr [ %i.ev, %_ZNSt15__new_allocatorIPN5eSLIM11eSLIMCirObjEE8allocateEmPKv.exit.i.i.i.i.i44 ], [ null, %bb.t ] ; 7 uses
  store ptr %i.ew, ptr %i.ap, align 8, !tbaa !103
  store ptr %i.ew, ptr %i.aq, align 8, !tbaa !102
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.et
  store ptr %i.ex, ptr %i.ar, align 8, !tbaa !105
  %i.ey = load ptr, ptr %i.en, align 8, !tbaa !106 ; 3 uses
  %i.ez = load ptr, ptr %i.eo, align 8, !tbaa !106
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 4 uses
  %i.fd = icmp sgt i64 %i.fc, 8
  br i1 %i.fd, label %bb.w, label %bb.x, !prof !107

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i45
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ew, ptr align 8 %i.ey, i64 %i.fc, i1 false)
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i46

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIPN5eSLIM11eSLIMCirObjESaIS2_EEC2EmRKS3_.exit.i.i45
  %i.fe = icmp eq i64 %i.fc, 8
  br i1 %i.fe, label %bb.y, label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i46

bb.y:                                             ; preds = %bb.x
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !109
  store ptr %i.ff, ptr %i.ew, align 8, !tbaa !109
  br label %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i46

_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i46: ; preds = %bb.y, %bb.x, %bb.w
  %i.fg = getelementptr inbounds i8, ptr %i.ew, i64 %i.fc ; 2 uses
  store ptr %i.fg, ptr %i.aq, align 8, !tbaa !102
  store i32 0, ptr %i.as, align 8, !tbaa !110
  store ptr null, ptr %i.at, align 8, !tbaa !111
  store ptr %i.as, ptr %i.au, align 8, !tbaa !112
  store ptr %i.as, ptr %i.av, align 8, !tbaa !113
  store i64 0, ptr %i.aw, align 8, !tbaa !114
  %i.fh = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i47, label %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit54, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i46
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %i.ax, ptr %1, align 8, !tbaa !116
  %i.fj = call noundef ptr @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyILb0ENS7_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESC_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull %i.fi, ptr noundef nonnull %i.as, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i48 = phi ptr [ %i.fj, %bb.z ], [ %i.fl, %bb.aa ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i48, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i.i.i.i.i49 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i.i.i49, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i50, label %bb.aa, !llvm.loop !1

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i50: ; preds = %bb.aa
  store ptr %.0.i.i.i.i.i.i.i48, ptr %i.au, align 8, !tbaa !118
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i50
  %.0.i.i7.i.i.i.i.i51 = phi ptr [ %i.fj, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i50 ], [ %i.fn, %bb.ab ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i51, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !119 ; 2 uses
  %.not.i.i8.i.i.i.i.i52 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i8.i.i.i.i.i52, label %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyERKS7_.exit.i.i.i53, label %bb.ab, !llvm.loop !2

_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyERKS7_.exit.i.i.i53: ; preds = %bb.ab
  store ptr %.0.i.i7.i.i.i.i.i51, ptr %i.av, align 8, !tbaa !118
  %i.fo = getelementptr inbounds nuw i8, ptr %i.el, i64 72
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !114
  store i64 %i.fp, ptr %i.aw, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  store ptr %i.fj, ptr %i.at, align 8, !tbaa !118
  %.pre106 = load ptr, ptr %i.ap, align 8, !tbaa !106
  %.pre107 = load ptr, ptr %i.aq, align 8, !tbaa !106
  br label %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit54

_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit54:            ; preds = %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i46, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyERKS7_.exit.i.i.i53
  %i.fq = phi ptr [ %i.fg, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i46 ], [ %.pre107, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyERKS7_.exit.i.i.i53 ] ; 2 uses
  %i.fr = phi ptr [ %i.ew, %_ZNSt6vectorIPN5eSLIM11eSLIMCirObjESaIS2_EEC2ERKS4_.exit.i46 ], [ %.pre106, %_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE7_M_copyERKS7_.exit.i.i.i53 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ay, ptr noundef nonnull align 8 dereferenceable(44) %i.fs, i64 44, i1 false)
  %.not7782 = icmp eq ptr %i.fr, %i.fq
  %.pre108 = load ptr, ptr %i.d, align 8, !tbaa !54 ; 2 uses
  br i1 %.not7782, label %._crit_edge85, label %.lr.ph84

._crit_edge85:                                    ; preds = %bb.ad, %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit54
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.pre108, i64 %indvars.iv
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !56
  call void @_ZN5eSLIM17RelationGenerator10encodeGateERKNS_11eSLIMCirObjEiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(124) %5, i32 noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.fv = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.fw = call noundef zeroext i1 @_ZNK5eSLIM11eSLIMCirMan5inTFOERKNS_11eSLIMCirObjE(ptr noundef nonnull align 8 dereferenceable(56) %i.fv, ptr noundef nonnull align 8 dereferenceable(124) %5) #16
  br i1 %i.fw, label %bb.ae, label %bb.an

.lr.ph84:                                         ; preds = %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit54, %bb.ad
  %.sroa.070.083 = phi ptr [ %i.gf, %bb.ad ], [ %i.fr, %_ZN5eSLIM11eSLIMCirObjC2ERKS0_.exit54 ] ; 2 uses
  %i.fx = load ptr, ptr %.sroa.070.083, align 8, !tbaa !109
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !101
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.pre108, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !56
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph84
  %i.gd = load i32, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.a, align 8, !tbaa !53
  store i32 %i.gd, ptr %i.ga, align 4, !tbaa !56
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph84
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.070.083, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.gf, %i.fq
  br i1 %.not77, label %._crit_edge85, label %.lr.ph84

bb.ae:                                            ; preds = %._crit_edge85
  %i.gg = load ptr, ptr %0, align 8, !tbaa !84, !nonnull !59, !align !60
  %i.gh = call noundef zeroext i1 @_ZNK5eSLIM11eSLIMCirMan12inSubcircuitERKNS_11eSLIMCirObjE(ptr noundef nonnull align 8 dereferenceable(56) %i.gg, ptr noundef nonnull align 8 dereferenceable(124) %5) #16
  br i1 %i.gh, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gi = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !56 ; 2 uses
  %.not40 = icmp eq i32 %i.gk, 0
  br i1 %.not40, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gl = load i32, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.a, align 8, !tbaa !53
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.gn = phi i32 [ %i.gl, %bb.ag ], [ %i.gk, %bb.af ] ; 2 uses
  store i32 %i.gn, ptr %i.gj, align 4, !tbaa !56
  %i.go = load ptr, ptr %i.ap, align 8, !tbaa !106 ; 2 uses
  %i.gp = load ptr, ptr %i.aq, align 8, !tbaa !106 ; 2 uses
  %.not7886 = icmp eq ptr %i.go, %i.gp
  br i1 %.not7886, label %._crit_edge90, label %.lr.ph89

._crit_edge90.loopexit:                           ; preds = %bb.am
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv
  %.pre109 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !56
  br label %._crit_edge90

end_hunk_1
