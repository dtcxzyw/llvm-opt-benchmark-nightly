Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/speech_recognition?download=true
inline.NumInlined: 1145
inline.NumDeleted: 467
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN18FilterbankFeatures10stft_powerERSt6vectorIdSaIdEE:bb.a
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.054205 ; 2 uses
  %.not.i88 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i88, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !35
  store double %i.bk, ptr %i.bi, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.n, align 8, !tbaa !31
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97

bb.i:                                             ; preds = %bb.g
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %.invoke, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89: ; preds = %bb.i
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i90 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i90, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i91 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i91)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #21
          to label %.noexc96 unwind label %.loopexit.split-lp170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  %i.by = load double, ptr %i.bj, align 8, !tbaa !35
  store double %i.by, ptr %i.bx, align 8, !tbaa !35
  %i.bz = icmp sgt i64 %i.bo, 0
  br i1 %i.bz, label %bb.j, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92

bb.j:                                             ; preds = %.noexc96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.bg, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92: ; preds = %bb.j, %.noexc96
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.not.i17.i.i93 = icmp eq ptr %i.bg, null
  br i1 %.not.i17.i.i93, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.cd) #20
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94: ; preds = %bb.k, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92
  store ptr %i.bw, ptr %3, align 8, !tbaa !29
  store ptr %i.ca, ptr %i.n, align 8, !tbaa !31
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  store ptr %i.ce, ptr %i.o, align 8, !tbaa !30
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !31
  %.pre269 = load ptr, ptr %2, align 8, !tbaa !29
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97

_ZNSt6vectorIdSaIdEE9push_backERKd.exit97:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94, %bb.h
  %i.cf = phi ptr [ %.pre269, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.be, %bb.h ] ; 3 uses
  %i.cg = phi ptr [ %.pre, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.bf, %bb.h ] ; 3 uses
  %i.ch = phi ptr [ %i.bw, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.bg, %bb.h ] ; 2 uses
  %i.ci = phi ptr [ %i.ce, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.bh, %bb.h ] ; 2 uses
  %i.cj = phi ptr [ %i.ca, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.bl, %bb.h ] ; 2 uses
  %i.ck = add nuw i64 %.054205, 1                 ; 2 uses
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = ptrtoint ptr %i.cf to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3                 ; 2 uses
  %i.cp = icmp ult i64 %i.ck, %i.co
  br i1 %i.cp, label %bb.g, label %._crit_edge, !llvm.loop !166

._crit_edge211:                                   ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN18FilterbankFeatures7hanningEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.q unwind label %bb.t

bb.l:                                             ; preds = %.lr.ph210, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107
  %i.cq = phi ptr [ %i.aw, %.lr.ph210 ], [ %i.dr, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107 ] ; 2 uses
  %i.cr = phi ptr [ %i.ax, %.lr.ph210 ], [ %i.ds, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107 ]
  %i.cs = phi ptr [ %i.at, %.lr.ph210 ], [ %i.dt, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107 ] ; 5 uses
  %i.ct = phi ptr [ %i.au, %.lr.ph210 ], [ %i.du, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107 ] ; 3 uses
  %i.cu = phi ptr [ %i.av, %.lr.ph210 ], [ %i.dv, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107 ] ; 3 uses
  %.053208 = phi i64 [ %i.ay, %.lr.ph210 ], [ %i.dw, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.053208 ; 2 uses
  %.not.i98 = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i98, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !35
  store double %i.cw, ptr %i.cu, align 8, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.bc, align 8, !tbaa !31
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107

bb.n:                                             ; preds = %bb.l
  %i.cy = ptrtoint ptr %i.ct to i64
  %i.cz = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 5 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %.invoke, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i99

.invoke:                                          ; preds = %bb.d, %bb.i, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
          to label %.cont unwind label %.loopexit.split-lp170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i99: ; preds = %bb.n
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i.i100 = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i100, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i101 = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i101)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #21
          to label %.noexc106 unwind label %.loopexit.split-lp170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i99
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.da ; 2 uses
  %i.dk = load double, ptr %i.cv, align 8, !tbaa !35
  store double %i.dk, ptr %i.dj, align 8, !tbaa !35
  %i.dl = icmp sgt i64 %i.da, 0
  br i1 %i.dl, label %bb.o, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i102

bb.o:                                             ; preds = %.noexc106
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %i.cs, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i102

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i102: ; preds = %bb.o, %.noexc106
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %.not.i17.i.i103 = icmp eq ptr %i.cs, null
  br i1 %.not.i17.i.i103, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i104, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i102
  %i.dn = load ptr, ptr %i.bd, align 8, !tbaa !30
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.do, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.dp) #20
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i104

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i104: ; preds = %bb.p, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i102
  store ptr %i.di, ptr %3, align 8, !tbaa !29
  store ptr %i.dm, ptr %i.bc, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg ; 2 uses
  store ptr %i.dq, ptr %i.bd, align 8, !tbaa !30
  %.pre270 = load ptr, ptr %i.k, align 8, !tbaa !31
  %.pre271 = load ptr, ptr %2, align 8, !tbaa !29
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit107

_ZNSt6vectorIdSaIdEE9push_backERKd.exit107:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i104, %bb.m
  %i.dr = phi ptr [ %.pre271, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i104 ], [ %i.cq, %bb.m ] ; 2 uses
  %i.ds = phi ptr [ %.pre270, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i104 ], [ %i.cr, %bb.m ] ; 2 uses
  %i.dt = phi ptr [ %i.di, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i104 ], [ %i.cs, %bb.m ]
  %i.du = phi ptr [ %i.dq, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i104 ], [ %i.ct, %bb.m ]
  %i.dv = phi ptr [ %i.dm, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i104 ], [ %i.cx, %bb.m ]
  %i.dw = add i64 %.053208, -1                    ; 2 uses
  %i.dx = ptrtoint ptr %i.ds to i64
  %i.dy = ptrtoint ptr %i.dr to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3
  %i.eb = add nsw i64 %i.ea, %i.ba
  %.not = icmp ult i64 %i.dw, %i.eb
  br i1 %.not, label %._crit_edge211, label %bb.l, !llvm.loop !167

.loopexit.split-lp170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i99, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %.invoke
  %lpad.loopexit.split-lp418 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp170

bb.q:                                             ; preds = %._crit_edge211
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !69
  invoke void @_ZN18FilterbankFeatures17pad_window_centerERSt6vectorIdSaIdEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ec)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN18FilterbankFeatures5frameERSt6vectorIdSaIdEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.19") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.preheader168 unwind label %bb.v

.preheader168:                                    ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !63 ; 2 uses
  %i.ef = load ptr, ptr %6, align 8, !tbaa !64    ; 5 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 24                ; 7 uses
  %.not237 = icmp eq ptr %i.ee, %i.ef
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.pre272 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 2 uses
  %.pre273 = load ptr, ptr %i.ef, align 8, !tbaa !29 ; 2 uses
  %.pre279 = ptrtoint ptr %.pre272 to i64         ; 3 uses
  %.pre281 = ptrtoint ptr %.pre273 to i64         ; 3 uses
  %12 = icmp eq ptr %.pre272, %.pre273            ; 2 uses
  br i1 %.not237, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %.preheader167.lr.ph

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %.preheader168
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ek = sub i64 %.pre279, %.pre281
  %i.el = ashr exact i64 %i.ek, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %bb.w

.preheader167.lr.ph:                              ; preds = %.preheader168
  %i.em = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %12, label %._crit_edge216.split.thread346, label %.preheader167.preheader

.preheader167.preheader:                          ; preds = %.preheader167.lr.ph
  %i.en = sub i64 %.pre279, %.pre281              ; 2 uses
  %i.eo = ashr exact i64 %i.en, 3                 ; 6 uses
  %i.ep = shl nsw i64 %i.ej, 3
  %scevgep = getelementptr i8, ptr %i.em, i64 %i.ep
  %min.iters.check = icmp ult i64 %i.eo, 4
  %n.vec = and i64 %i.eo, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  %xtraiter = and i64 %i.eo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader167

.preheader167:                                    ; preds = %.preheader167.preheader, %._crit_edge214
  %.052215 = phi i64 [ %i.fx, %._crit_edge214 ], [ 0, %.preheader167.preheader ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.052215 ; 6 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %.052215
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !29 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader167
  %i.et = getelementptr i8, ptr %i.es, i64 %i.en
  %bound0 = icmp ult ptr %i.es, %scevgep
  %bound1 = icmp ult ptr %i.em, %i.et
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eu = load double, ptr %i.eq, align 8, !tbaa !35, !alias.scope !180
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.eu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ev, align 8, !tbaa !35, !alias.scope !181, !noalias !180
  %wide.load398 = load <2 x double>, ptr %i.ew, align 8, !tbaa !35, !alias.scope !181, !noalias !180
  %i.ex = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ey = fmul <2 x double> %broadcast.splat, %wide.load398
  store <2 x double> %i.ex, ptr %i.ev, align 8, !tbaa !35, !alias.scope !181, !noalias !180
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !35, !alias.scope !181, !noalias !180
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge214, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader167, %middle.block
  %.051212.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader167 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.051212.prol = phi i64 [ %i.fe, %scalar.ph.prol ], [ %.051212.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fa = load double, ptr %i.eq, align 8, !tbaa !35
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.051212.prol ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !35
  %i.fd = fmul double %i.fa, %i.fc
  store double %i.fd, ptr %i.fb, align 8, !tbaa !35
  %i.fe = add nuw i64 %.051212.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !172

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.051212.unr = phi i64 [ %.051212.ph, %scalar.ph.preheader ], [ %i.fe, %scalar.ph.prol ]
  %i.ff = sub nsw i64 %.051212.ph, %i.eo
  %i.fg = icmp ugt i64 %i.ff, -4
  br i1 %i.fg, label %._crit_edge214, label %scalar.ph

._crit_edge216.split:                             ; preds = %._crit_edge214
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.fh = icmp ugt i64 %i.ej, 1152921504606846975
  br i1 %i.fh, label %bb.s, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

._crit_edge216.split.thread346:                   ; preds = %.preheader167.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.fi = icmp ugt i64 %i.ej, 1152921504606846975
  br i1 %i.fi, label %bb.s, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread350

bb.s:                                             ; preds = %._crit_edge216.split.thread346, %._crit_edge216.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc108 unwind label %bb.ad

.noexc108:                                        ; preds = %bb.s
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge216.split
  %i.fj = sub i64 %.pre279, %.pre281
  %i.fk = ashr exact i64 %i.fj, 3
  br label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread350

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread350: ; preds = %._crit_edge216.split.thread346, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fl = phi i64 [ %i.fk, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ 0, %._crit_edge216.split.thread346 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.fm = shl nuw nsw i64 %i.ej, 3
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #21
          to label %.noexc109 unwind label %bb.ad ; 4 uses

.noexc109:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread350
  store ptr %i.fn, ptr %8, align 8, !tbaa !29
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ej
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !30
  store double 0.000000e+00, ptr %i.fn, align 8, !tbaa !35
  %i.fq = getelementptr i8, ptr %i.fn, i64 8      ; 3 uses
  %i.fr = add nsw i64 %i.ej, -1                   ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %bb.w, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc109
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fr, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.fq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.w

bb.t:                                             ; preds = %._crit_edge211
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit158

bb.u:                                             ; preds = %bb.q
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit156

bb.v:                                             ; preds = %bb.r
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

._crit_edge214:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fx = add nuw i64 %.052215, 1                 ; 2 uses
  %exitcond261.not = icmp eq i64 %i.fx, %i.ej
  br i1 %exitcond261.not, label %._crit_edge216.split, label %.preheader167, !llvm.loop !173

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.051212 = phi i64 [ %i.gr, %scalar.ph ], [ %.051212.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.fy = load double, ptr %i.eq, align 8, !tbaa !35
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.051212 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !35
  %i.gb = fmul double %i.fy, %i.ga
  store double %i.gb, ptr %i.fz, align 8, !tbaa !35
  %i.gc = load double, ptr %i.eq, align 8, !tbaa !35
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.051212
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !35
  %i.gg = fmul double %i.gc, %i.gf
  store double %i.gg, ptr %i.ge, align 8, !tbaa !35
  %i.gh = load double, ptr %i.eq, align 8, !tbaa !35
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.051212
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !35
  %i.gl = fmul double %i.gh, %i.gk
  store double %i.gl, ptr %i.gj, align 8, !tbaa !35
  %i.gm = load double, ptr %i.eq, align 8, !tbaa !35
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.051212
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24 ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !35
  %i.gq = fmul double %i.gm, %i.gp
  store double %i.gq, ptr %i.go, align 8, !tbaa !35
  %i.gr = add nuw i64 %.051212, 4                 ; 2 uses
  %exitcond259.not.3 = icmp eq i64 %i.gr, %i.eo
  br i1 %exitcond259.not.3, label %._crit_edge214, label %scalar.ph, !llvm.loop !174

bb.w:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc109, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.gs = phi i64 [ %i.el, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.fl, %.noexc109 ], [ %i.fl, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 6 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.fq, %.noexc109 ], [ %i.ft, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.gt, align 8, !tbaa !31
  %i.gu = icmp ugt i64 %i.gs, 384307168202282325
  br i1 %i.gu, label %bb.x, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc112 unwind label %bb.ae

.noexc112:                                        ; preds = %bb.x
  unreachable

_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.w
  br i1 %12, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.gv = mul nuw nsw i64 %i.gs, 24
  %i.gw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gv) #21
          to label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.ae

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.pr.i = phi ptr [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.gw, %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i ] ; 17 uses
  store ptr %.pr.i, ptr %7, align 8, !tbaa !64
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.gs
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !65
  %i.gz = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RKT1_(ptr noundef %.pr.i, i64 noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.aa unwind label %bb.y      ; 4 uses

bb.y:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i111, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.idx = mul nuw nsw i64 %i.gs, 24
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx) #20
  br label %.body

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.gz, ptr %i.hb, align 8, !tbaa !63
  %i.hc = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !30
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.hi = load ptr, ptr %6, align 8, !tbaa !64    ; 9 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !31 ; 2 uses
  %i.hl = load ptr, ptr %i.hi, align 8, !tbaa !29 ; 2 uses
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 3
  %.not239 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not239, label %._crit_edge224.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.hq = load ptr, ptr %i.ed, align 8, !tbaa !63 ; 2 uses
  %.not240 = icmp eq ptr %i.hq, %i.hi
  br i1 %.not240, label %._crit_edge224.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hi to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = sdiv exact i64 %i.ht, 24                ; 3 uses
  %xtraiter423 = and i64 %i.hu, 3                 ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 4
  %unroll_iter = and i64 %i.hu, -4
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  %lcmp.mod425 = icmp ne i64 %xtraiter423, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge222
  %.050223 = phi i64 [ %i.iy, %._crit_edge222 ], [ 0, %.preheader.preheader ] ; 7 uses
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %.050223
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !29 ; 5 uses
  br i1 %i.hv, label %.epil.preheader, label %.preheader.new

._crit_edge224.split:                             ; preds = %._crit_edge222, %.preheader.lr.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !31
  %i.ia = load ptr, ptr %.pr.i, align 8, !tbaa !29
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = ashr exact i64 %i.id, 3                 ; 2 uses
  %i.if = lshr i64 %i.ie, 1
  %i.ig = add nuw nsw i64 %i.if, 1                ; 2 uses
  %i.ih = icmp ugt i64 %i.ie, 768614336404564649
  br i1 %i.ih, label %bb.ac, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i115

bb.ac:                                            ; preds = %._crit_edge224.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc117 unwind label %bb.ai

.noexc117:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i115: ; preds = %._crit_edge224.split
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ii = mul nuw nsw i64 %i.ig, 24               ; 3 uses
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #21
          to label %bb.ah unwind label %bb.ai     ; 5 uses

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.thread350, %bb.s
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit120

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %bb.x
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.z, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.il, %bb.ae ], [ %i.ha, %bb.z ], [ %i.ha, %bb.y ] ; 2 uses
  %i.im = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %.not.i.i.i119 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIdSaIdEED2Ev.exit120, label %bb.af

bb.af:                                            ; preds = %.body
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !30
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ir) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit120

_ZNSt6vectorIdSaIdEED2Ev.exit120:                 ; preds = %bb.af, %.body, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ik, %bb.ad ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.br

._crit_edge222.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod424.not, label %._crit_edge222, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge222.unr-lcssa, %.preheader
  %.049220.epil.init = phi i64 [ 0, %.preheader ], [ %i.jw, %._crit_edge222.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod425)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader
  %.049220.epil = phi i64 [ %.049220.epil.init, %.epil.preheader ], [ %i.ix, %bb.ag ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ag ]
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %.049220.epil
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !29
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.050223
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !35
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.049220.epil
  store double %i.iv, ptr %i.iw, align 8, !tbaa !35
  %i.ix = add nuw i64 %.049220.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter423
  br i1 %epil.iter.cmp.not, label %._crit_edge222, label %bb.ag, !llvm.loop !175

._crit_edge222:                                   ; preds = %bb.ag, %._crit_edge222.unr-lcssa
  %i.iy = add nuw i64 %.050223, 1                 ; 2 uses
  %exitcond265.not = icmp eq i64 %i.iy, %i.hp
  br i1 %exitcond265.not, label %._crit_edge224.split, label %.preheader, !llvm.loop !176

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.049220 = phi i64 [ %i.jw, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %.049220
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !29
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.050223
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !35
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.049220
  store double %i.jc, ptr %i.jd, align 8, !tbaa !35
  %i.je = or disjoint i64 %.049220, 1             ; 2 uses
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !29
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %.050223
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !35
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.je
  store double %i.ji, ptr %i.jj, align 8, !tbaa !35
  %i.jk = or disjoint i64 %.049220, 2             ; 2 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !29
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.050223
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !35
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.jk
  store double %i.jo, ptr %i.jp, align 8, !tbaa !35
  %i.jq = or disjoint i64 %.049220, 3             ; 2 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !29
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.050223
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !35
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.jq
  store double %i.ju, ptr %i.jv, align 8, !tbaa !35
  %i.jw = add nuw i64 %.049220, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge222.unr-lcssa, label %.preheader.new, !llvm.loop !177

bb.ah:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i115
  store ptr %i.ij, ptr %0, align 8, !tbaa !64
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %i.ij, i64 %i.ig
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ij, i8 0, i64 %i.ii, i1 false)
end_hunk_0
