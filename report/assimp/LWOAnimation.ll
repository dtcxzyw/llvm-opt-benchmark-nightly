inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver20UpdateAnimRangeSetupEv:bb.a
  %i.o = fcmp oeq double %i.n, 0.000000e+00
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 7 uses
  %i.s = sdiv exact i64 %i.r, 40                  ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.u = load float, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load float, ptr %i.v, align 8
  %i.x = fsub float %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.084.0134, i64 24 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8
  %.off = add i32 %i.z, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aa = load double, ptr %i.b, align 8
  %i.ab = fsub double %i.k, %i.aa
  %i.ac = call double @fmod(double noundef %i.ab, double noundef %i.n) #16
  %i.ad = fsub double %i.n, %i.ac                 ; 7 uses
  %i.ae = ashr i64 %i.s, 2                        ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.ag = mul nuw nsw i64 %i.ae, 160
  %scevgep.i.i.i = getelementptr i8, ptr %i.g, i64 %i.ag ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.preheader.i.i.i
  %.052.i.i.i = phi i64 [ %i.at, %bb.i ], [ %i.ae, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.as, %bb.i ], [ %i.g, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.ah = load double, ptr %.sroa.032.051.i.i.i, align 8
  %i.ai = fcmp ogt double %i.ad, %i.ah
  br i1 %i.ai, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 40
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = fcmp ogt double %i.ad, %i.ak
  br i1 %i.al, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 80
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ogt double %i.ad, %i.an
  br i1 %i.ao, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit161", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fcmp ogt double %i.ad, %i.aq
  br i1 %i.ar, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit163", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 160
  %i.at = add nsw i64 %.052.i.i.i, -1
  %i.au = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !10

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre57.i.i.i = sub i64 %i.p, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.e
  %.pre-phi58.i.i.i = phi i64 [ %.pre57.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.r, %bb.e ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.e ] ; 5 uses
  %i.av = sdiv exact i64 %.pre-phi58.i.i.i, 40
  switch i64 %i.av, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit [
    i64 3, label %bb.j
    i64 2, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = load double, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.ax = fcmp ogt double %i.ad, %i.aw
  br i1 %i.ax, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  %.sroa.032.1.i.i.i = phi ptr [ %i.ay, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.az = load double, ptr %.sroa.032.1.i.i.i, align 8
  %i.ba = fcmp ogt double %i.ad, %i.az
  br i1 %i.ba, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i
  %.sroa.032.2.i.i.i = phi ptr [ %i.bb, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bc = load double, ptr %.sroa.032.2.i.i.i, align 8
  %i.bd = fcmp ogt double %i.ad, %i.bc
  br i1 %i.bd, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit", label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 40
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit161": ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 80
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit163": ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit161", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit163", %bb.j, %bb.l, %bb.n
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %.sroa.032.2.i.i.i, %bb.n ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.bg, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit163" ], [ %i.be, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit" ], [ %i.bf, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit161" ], [ %.sroa.032.051.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not111 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.i
  br i1 %.not111, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.o

bb.o:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"
  %i.bh = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.bi = sub i64 %i.p, %i.bh                     ; 4 uses
  %i.bj = sdiv exact i64 %i.bi, 40                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store double 0.000000e+00, ptr %2, align 8
  store float 0.000000e+00, ptr %i.c, align 8
  store i32 1, ptr %i.d, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.bk = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.q, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm
  call void @_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.bn, i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(36) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.bo = load ptr, ptr %i.h, align 8
  %i.bp = sub nsw i64 0, %i.bj
  %i.bq = getelementptr inbounds [40 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bs = icmp sgt i64 %i.bi, 40
  br i1 %i.bs, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.br, ptr nonnull align 8 %i.bq, i64 %i.bi, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.q:                                             ; preds = %bb.o
  %i.bt = icmp eq i64 %i.bi, 40
  br i1 %i.bt, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.br, ptr noundef nonnull align 8 dereferenceable(36) %i.bq, i64 36, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.n, %._crit_edge.i.i.i, %bb.r, %bb.q, %bb.p, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"
  %.058 = phi i64 [ 1, %bb.r ], [ 0, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit" ], [ %i.bj, %bb.p ], [ %i.bj, %bb.q ], [ 0, %._crit_edge.i.i.i ], [ 0, %bb.n ]
  %i.bu = load double, ptr %i.b, align 8
  %i.bv = fsub double %i.k, %i.bu
  %i.bw = fdiv double %i.bv, %i.n
  %i.bx = fptoui double %i.bw to i32              ; 3 uses
  %i.by = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bz = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 40                ; 3 uses
  %i.ce = zext i32 %i.bx to i64                   ; 2 uses
  %i.cf = mul i64 %i.s, %i.ce                     ; 2 uses
  %i.cg = add i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, %i.cd
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  call void @_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.cf)
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ci = icmp ult i64 %i.cg, %i.cd
  br i1 %i.ci, label %bb.u, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.cg ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, %i.cj
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.cj, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit: ; preds = %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ck = phi ptr [ %.pre, %bb.s ], [ %i.bz, %bb.t ], [ %i.bz, %bb.u ], [ %i.bz, %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.cl = getelementptr inbounds [40 x i8], ptr %i.ck, i64 %.058 ; 3 uses
  %.not138 = icmp eq i32 %i.bx, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit
  %i.cm = icmp sgt i64 %i.r, 40
  %i.cn = icmp eq i64 %i.r, 40
  %3 = icmp samesign ult i64 %i.r, 81
  br label %bb.v

._crit_edge:                                      ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit
  %i.co = xor i64 %i.s, -1                        ; 2 uses
  %i.cp = add i32 %i.bx, 1
  %i.cq = uitofp i32 %i.cp to double
  %i.cr = fmul double %i.n, %i.cq                 ; 3 uses
  %i.cs = fcmp ugt double %i.n, %i.cr
  br i1 %i.cs, label %.loopexit, label %.lr.ph131

.lr.ph131:                                        ; preds = %._crit_edge
  %i.ct = load ptr, ptr %i.h, align 8
  %i.cu = getelementptr inbounds [40 x i8], ptr %i.ct, i64 %i.co
  %i.cv = fcmp oeq double %i.n, %i.cr
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ]
  %.060121 = phi i32 [ 0, %.lr.ph ], [ %i.cw, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cw = add nuw i32 %.060121, 1
  %i.cx = mul i64 %i.s, %indvars.iv.next
  %i.cy = getelementptr inbounds [40 x i8], ptr %i.cl, i64 %i.cx ; 4 uses
  br i1 %i.cm, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  br i1 %i.cn, label %bb.x, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cy, ptr noundef nonnull align 8 dereferenceable(36) %i.cl, i64 36, i1 false)
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64: ; preds = %bb.v
  %indvars145 = trunc i32 %.060121 to i1
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cy, ptr align 8 %i.cl, i64 %i.r, i1 false)
  %i.cz = load i32, ptr %i.y, align 8
  %i.da = icmp ne i32 %i.cz, 3
  %or.cond.not = select i1 %i.da, i1 true, i1 %indvars145
  %or.cond.not140 = or i1 %3, %or.cond.not
  br i1 %or.cond.not140, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64
  %i.db = getelementptr i8, ptr %i.cy, i64 %i.r
  %.sroa.0.08.i.i = getelementptr i8, ptr %i.db, i64 -80
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.cy, %.lr.ph.i.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.09.i.i, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.010.i.i, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 40 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -40 ; 2 uses
  %i.dd = icmp ult ptr %i.dc, %.sroa.0.0.i.i
  br i1 %i.dd, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, !llvm.loop !11

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.x, %bb.w, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ce
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !12

bb.y:                                             ; preds = %.lr.ph131, %._crit_edge126
  %.0129 = phi i32 [ 1, %.lr.ph131 ], [ %i.ds, %._crit_edge126 ] ; 2 uses
  %.057128 = phi double [ %i.n, %.lr.ph131 ], [ %i.dr, %._crit_edge126 ] ; 2 uses
  %.sroa.074.0127 = phi ptr [ %i.cu, %.lr.ph131 ], [ %.sroa.074.1.lcssa, %._crit_edge126 ] ; 4 uses
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.de = load ptr, ptr %i.f, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.df = getelementptr inbounds [40 x i8], ptr %.sroa.074.0127, i64 %i.co
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0.0 = phi ptr [ %i.de, %bb.z ], [ %i.df, %bb.aa ] ; 2 uses
  %i.dg = icmp ult ptr %.sroa.0.0, %.sroa.074.0127
  br i1 %i.dg, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %bb.ab
  %i.dh = uitofp i32 %.0129 to float
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph125, %bb.ae
  %.sroa.074.1123 = phi ptr [ %.sroa.074.0127, %.lr.ph125 ], [ %i.dp, %bb.ae ] ; 4 uses
  %i.di = load double, ptr %.sroa.074.1123, align 8
  %i.dj = fsub double %i.di, %.057128
  store double %i.dj, ptr %.sroa.074.1123, align 8
  %i.dk = load i32, ptr %i.y, align 8
  %i.dl = icmp eq i32 %i.dk, 4
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.074.1123, i64 8 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 8
  %i.do = call float @llvm.fmuladd.f32(float %i.dh, float %i.x, float %i.dn)
  store float %i.do, ptr %i.dm, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dp = getelementptr inbounds i8, ptr %.sroa.074.1123, i64 -40 ; 3 uses
  %i.dq = icmp ult ptr %.sroa.0.0, %i.dp
  br i1 %i.dq, label %bb.ac, label %._crit_edge126, !llvm.loop !13

._crit_edge126:                                   ; preds = %bb.ae, %bb.ab
  %.sroa.074.1.lcssa = phi ptr [ %.sroa.074.0127, %bb.ab ], [ %i.dp, %bb.ae ]
  %i.dr = fadd double %i.n, %.057128              ; 2 uses
  %i.ds = add i32 %.0129, 1
  %i.dt = fcmp ugt double %i.dr, %i.cr
  br i1 %i.dt, label %.loopexit, label %bb.y, !llvm.loop !14

.loopexit:                                        ; preds = %._crit_edge126, %._crit_edge, %bb.d, %bb.c, %bb.b
  %.sroa.084.0 = load ptr, ptr %.sroa.084.0134, align 8 ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.not = icmp eq ptr %.sroa.084.0, %i.du
  br i1 %.not, label %._crit_edge137, label %bb.b, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15ExtractBindPoseER12aiMatrix4x4tIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 64)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 1.000000e+00, ptr %.sroa.5192.0..sroa_idx, align 4
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6193.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8194.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0182.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.i, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load float, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.5183.0 = phi float [ 0.000000e+00, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.q, null
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load float, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.8184.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.w, null
  br i1 %.not13, label %bb.k, label %bb.j

end_hunk_0
