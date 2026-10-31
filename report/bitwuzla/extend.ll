Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/extend?download=true
inline.NumInlined: 378
inline.NumDeleted: 153
begin_hunk_0_@_ZN7CaDiCaL8External27traverse_witnesses_backwardERNS_15WitnessIteratorE:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.q = phi ptr [ %i.al, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.m, %.lr.ph.preheader ] ; 5 uses
  %i.r = phi ptr [ %i.am, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %i.s = phi ptr [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  %i.t = phi i32 [ %i.ap, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %i.u = phi ptr [ %i.ao, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store i32 %i.t, ptr %i.s, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.i, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %.lr.ph
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775804
  br i1 %i.z, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 2                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 2305843009213693951)
  %i.ae = select i1 %i.ac, i64 2305843009213693951, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #11
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store i32 %i.t, ptr %i.ah, align 4, !tbaa !13
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %i.q, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %.noexc14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.q) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ag, ptr %2, align 8, !tbaa !14
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.al = phi ptr [ %i.q, %bb.c ], [ %i.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.am = phi ptr [ %i.r, %bb.c ], [ %i.ak, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.an = phi ptr [ %i.v, %bb.c ], [ %i.aj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13 ; 2 uses
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.preheader
  %i.aq = phi ptr [ %i.n, %.preheader ], [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.045.1.lcssa = phi ptr [ %.sroa.045.077, %.preheader ], [ %i.u, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.045.1.lcssa, i64 -8
  %i.as = getelementptr inbounds i8, ptr %.sroa.045.1.lcssa, i64 -12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !13
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 32
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !13
  %i.ax = sext i32 %i.aw to i64
  %i.ay = add i64 %i.av, %i.ax
  %i.az = getelementptr inbounds i8, ptr %.sroa.045.1.lcssa, i64 -20 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13 ; 2 uses
  %.not1271 = icmp eq i32 %i.ba, 0
  br i1 %.not1271, label %._crit_edge74, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %i.k, align 8, !tbaa !11
  %.pre93 = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24
  %i.bb = phi ptr [ %i.bw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24 ], [ %.pre93, %.lr.ph73.preheader ] ; 3 uses
  %i.bc = phi ptr [ %i.bx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24 ], [ %.pre92, %.lr.ph73.preheader ] ; 3 uses
  %i.bd = phi i32 [ %i.bz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24 ], [ %i.ba, %.lr.ph73.preheader ] ; 2 uses
  %i.be = phi ptr [ %i.by, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24 ], [ %i.az, %.lr.ph73.preheader ]
  %.not.i15 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph73
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  store ptr %i.bf, ptr %i.k, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24

bb.h:                                             ; preds = %.lr.ph73
  %i.bg = load ptr, ptr %3, align 8, !tbaa !14    ; 4 uses
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i16

.invoke:                                          ; preds = %bb.d, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #10
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i16: ; preds = %bb.h
  %i.bl = ashr exact i64 %i.bj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i17 = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i17, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 2305843009213693951)
  %i.bp = select i1 %i.bn, i64 2305843009213693951, i64 %i.bo ; 3 uses
  %.not.i.i.i18 = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i18)
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #11
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i16
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store i32 %i.bd, ptr %i.bs, align 4, !tbaa !13
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19

bb.i:                                             ; preds = %.noexc23
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %i.bg, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19: ; preds = %bb.i, %.noexc23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %.not.i17.i.i20 = icmp eq ptr %i.bg, null
  br i1 %.not.i17.i.i20, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19
  store ptr %i.br, ptr %3, align 8, !tbaa !14
  store ptr %i.bu, ptr %i.k, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp ; 2 uses
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24

_ZNSt6vectorIiSaIiEE9push_backERKi.exit24:        ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21
  %i.bw = phi ptr [ %i.bb, %bb.g ], [ %i.bv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21 ]
  %i.bx = phi ptr [ %i.bf, %bb.g ], [ %i.bu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21 ]
  %i.by = getelementptr inbounds i8, ptr %i.be, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !13 ; 2 uses
  %.not12 = icmp eq i32 %i.bz, 0
  br i1 %.not12, label %._crit_edge74.loopexit, label %.lr.ph73

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i16, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit34, %.invoke
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.cb = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.cb) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %lpad.loopexit.split-lp184

._crit_edge74.loopexit:                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24
  %.pre94 = load ptr, ptr %i.i, align 8, !tbaa !56
  br label %._crit_edge74

._crit_edge74:                                    ; preds = %._crit_edge74.loopexit, %._crit_edge
  %i.cc = phi ptr [ %i.aq, %._crit_edge ], [ %.pre94, %._crit_edge74.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.az, %._crit_edge ], [ %i.by, %._crit_edge74.loopexit ] ; 2 uses
  %4 = ptrtoaddr ptr %i.cc to i64                 ; 2 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !56    ; 9 uses
  %5 = ptrtoaddr ptr %i.cd to i64                 ; 6 uses
  %i.ce = icmp ne ptr %i.cd, %i.cc
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 5 uses
  %i.cf = icmp ult ptr %i.cd, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge74
  %i.cg = add i64 %4, -8
  %i.ch = add i64 %5, 4
  %i.ci = call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ch)
  %i.cj = add i64 %i.ci, -4                       ; 2 uses
  %i.ck = icmp ne i64 %i.cj, %5
  %i.cl = zext i1 %i.ck to i64                    ; 2 uses
  %i.cm = add i64 %5, %i.cl
  %i.cn = sub i64 %i.cj, %i.cm
  %i.co = lshr i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, %i.cl            ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check161 = icmp samesign ult i64 %i.cp, 15
  br i1 %min.iters.check161, label %.lr.ph.i.i.preheader178, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep151 = getelementptr i8, ptr %i.cd, i64 4
  %6 = add i64 %4, -8
  %7 = add i64 %5, 4
  %umax152 = call i64 @llvm.umax.i64(i64 %6, i64 %7)
  %8 = add i64 %umax152, -4                       ; 2 uses
  %9 = icmp ne i64 %8, %5
  %umin153 = zext i1 %9 to i64                    ; 2 uses
  %10 = add i64 %5, %umin153
  %11 = sub i64 %8, %10
  %i.cr = lshr i64 %11, 3
  %i.cs = add nuw nsw i64 %i.cr, %umin153         ; 2 uses
  %i.ct = shl nuw i64 %i.cs, 2
  %scevgep154 = getelementptr i8, ptr %scevgep151, i64 %i.ct
  %scevgep155 = getelementptr i8, ptr %i.cc, i64 -4
  %12 = mul nsw i64 %i.cs, -4
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %12
  %bound0157 = icmp ult ptr %i.cd, %i.cc
  %bound1158 = icmp ult ptr %scevgep156, %scevgep154
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i.i.preheader178, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck150
  %n.vec163 = and i64 %i.cq, 9223372036854775804  ; 4 uses
  %i.cu = mul i64 %n.vec163, -4
  %i.cv = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.cu
  %i.cw = shl i64 %n.vec163, 2
  %i.cx = getelementptr i8, ptr %i.cd, i64 %i.cw
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next172, %vector.body164 ] ; 3 uses
  %i.cy = mul i64 %index165, -4
  %next.gep166 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.cy
  %i.cz = shl i64 %index165, 2
  %next.gep167 = getelementptr i8, ptr %i.cd, i64 %i.cz ; 2 uses
  %wide.load168 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !13, !alias.scope !214, !noalias !215
  %i.da = getelementptr i8, ptr %next.gep166, i64 -12 ; 2 uses
  %wide.load169 = load <4 x i32>, ptr %i.da, align 4, !tbaa !13, !alias.scope !215
  %reverse170 = shufflevector <4 x i32> %wide.load169, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse170, ptr %next.gep167, align 4, !tbaa !13, !alias.scope !214, !noalias !215
  %reverse171 = shufflevector <4 x i32> %wide.load168, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse171, ptr %i.da, align 4, !tbaa !13, !alias.scope !215
  %index.next172 = add nuw i64 %index165, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next172, %n.vec163
  br i1 %i.db, label %middle.block173, label %vector.body164, !llvm.loop !206

middle.block173:                                  ; preds = %vector.body164
  %cmp.n174 = icmp eq i64 %i.cq, %n.vec163
  br i1 %cmp.n174, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader178

.lr.ph.i.i.preheader178:                          ; preds = %vector.memcheck150, %.lr.ph.i.i.preheader, %middle.block173
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck150 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.cv, %middle.block173 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.cd, %vector.memcheck150 ], [ %i.cd, %.lr.ph.i.i.preheader ], [ %i.cx, %middle.block173 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader178, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader178 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader178 ] ; 3 uses
  %i.dc = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !13
  %i.dd = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !13
  store i32 %i.dd, ptr %.sroa.05.09.i.i, align 4, !tbaa !13
  store i32 %i.dc, ptr %.sroa.0.010.i.i, align 4, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.df = icmp ult ptr %i.de, %.sroa.0.0.i.i
  br i1 %i.df, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, !llvm.loop !207

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block173, %._crit_edge74
  %i.dg = load ptr, ptr %3, align 8, !tbaa !56    ; 9 uses
  %13 = ptrtoaddr ptr %i.dg to i64                ; 6 uses
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !56  ; 5 uses
  %14 = ptrtoaddr ptr %i.dh to i64                ; 2 uses
  %i.di = icmp ne ptr %i.dg, %i.dh
  %.sroa.0.08.i.i28 = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 5 uses
  %i.dj = icmp ult ptr %i.dg, %.sroa.0.08.i.i28
  %or.cond.i.i29 = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond.i.i29, label %.lr.ph.i.i30.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit34

.lr.ph.i.i30.preheader:                           ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.dk = add i64 %14, -8
  %i.dl = add i64 %13, 4
  %i.dm = call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.dl)
  %i.dn = add i64 %i.dm, -4                       ; 2 uses
  %i.do = icmp ne i64 %i.dn, %13
  %i.dp = zext i1 %i.do to i64                    ; 2 uses
  %i.dq = add i64 %13, %i.dp
  %i.dr = sub i64 %i.dn, %i.dq
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = add nuw nsw i64 %i.ds, %i.dp            ; 2 uses
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.dt, 15
  br i1 %min.iters.check, label %.lr.ph.i.i30.preheader177, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i30.preheader
  %scevgep = getelementptr i8, ptr %i.dg, i64 4
  %15 = add i64 %14, -8
  %16 = add i64 %13, 4
  %umax = call i64 @llvm.umax.i64(i64 %15, i64 %16)
  %17 = add i64 %umax, -4                         ; 2 uses
  %18 = icmp ne i64 %17, %13
  %umin = zext i1 %18 to i64                      ; 2 uses
  %19 = add i64 %13, %umin
  %20 = sub i64 %17, %19
  %i.dv = lshr i64 %20, 3
  %i.dw = add nuw nsw i64 %i.dv, %umin            ; 2 uses
  %i.dx = shl nuw i64 %i.dw, 2
  %scevgep143 = getelementptr i8, ptr %scevgep, i64 %i.dx
  %scevgep144 = getelementptr i8, ptr %i.dh, i64 -4
  %21 = mul nsw i64 %i.dw, -4
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %21
  %bound0 = icmp ult ptr %i.dg, %i.dh
  %bound1 = icmp ult ptr %scevgep145, %scevgep143
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i30.preheader177, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.du, 9223372036854775804     ; 4 uses
  %i.dy = mul i64 %n.vec, -4
  %i.dz = getelementptr i8, ptr %.sroa.0.08.i.i28, i64 %i.dy
  %i.ea = shl i64 %n.vec, 2
  %i.eb = getelementptr i8, ptr %i.dg, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ec = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i28, i64 %i.ec
  %i.ed = shl i64 %index, 2
  %next.gep146 = getelementptr i8, ptr %i.dg, i64 %i.ed ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep146, align 4, !tbaa !13, !alias.scope !218, !noalias !219
  %i.ee = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %wide.load147 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !13, !alias.scope !219
  %reverse = shufflevector <4 x i32> %wide.load147, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep146, align 4, !tbaa !13, !alias.scope !218, !noalias !219
  %reverse148 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse148, ptr %i.ee, align 4, !tbaa !13, !alias.scope !219
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit34, label %.lr.ph.i.i30.preheader177

.lr.ph.i.i30.preheader177:                        ; preds = %vector.memcheck, %.lr.ph.i.i30.preheader, %middle.block
  %.sroa.0.010.i.i31.ph = phi ptr [ %.sroa.0.08.i.i28, %vector.memcheck ], [ %.sroa.0.08.i.i28, %.lr.ph.i.i30.preheader ], [ %i.dz, %middle.block ]
  %.sroa.05.09.i.i32.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i30.preheader ], [ %i.eb, %middle.block ]
  br label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30.preheader177, %.lr.ph.i.i30
  %.sroa.0.010.i.i31 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.i.i30 ], [ %.sroa.0.010.i.i31.ph, %.lr.ph.i.i30.preheader177 ] ; 3 uses
  %.sroa.05.09.i.i32 = phi ptr [ %i.ei, %.lr.ph.i.i30 ], [ %.sroa.05.09.i.i32.ph, %.lr.ph.i.i30.preheader177 ] ; 3 uses
  %i.eg = load i32, ptr %.sroa.05.09.i.i32, align 4, !tbaa !13
  %i.eh = load i32, ptr %.sroa.0.010.i.i31, align 4, !tbaa !13
  store i32 %i.eh, ptr %.sroa.05.09.i.i32, align 4, !tbaa !13
  store i32 %i.eg, ptr %.sroa.0.010.i.i31, align 4, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i32, i64 4 ; 2 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i31, i64 -4 ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %.sroa.0.0.i.i33
  br i1 %i.ej, label %.lr.ph.i.i30, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit34, !llvm.loop !212

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit34: ; preds = %.lr.ph.i.i30, %middle.block, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.ek = load ptr, ptr %1, align 8, !tbaa !190
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ay)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.m:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit34
  br i1 %i.en, label %bb.n, label %..critedge.loopexit_crit_edge

..critedge.loopexit_crit_edge:                    ; preds = %bb.m
  %.pre95.pre = load ptr, ptr %3, align 8, !tbaa !14
  br label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.eo = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ep, %i.eo
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.eo, ptr %i.i, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.eq = phi ptr [ %i.ep, %bb.n ], [ %i.eo, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.er = load ptr, ptr %3, align 8, !tbaa !14    ; 3 uses
  %i.es = load ptr, ptr %i.k, align 8, !tbaa !11
  %.not.i.i35 = icmp eq ptr %i.es, %i.er
  br i1 %.not.i.i35, label %_ZNSt6vectorIiSaIiEE5clearEv.exit37, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i36

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i36:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.er, ptr %i.k, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit37

_ZNSt6vectorIiSaIiEE5clearEv.exit37:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i36
  %.not55 = icmp eq ptr %.lcssa, %i.f
  br i1 %.not55, label %.critedge, label %.preheader, !llvm.loop !213

.critedge:                                        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit37, %..critedge.loopexit_crit_edge
  %i.et = phi ptr [ %.pre95.pre, %..critedge.loopexit_crit_edge ], [ %i.er, %_ZNSt6vectorIiSaIiEE5clearEv.exit37 ] ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIiSaIiEED2Ev.exit39, label %bb.o

bb.o:                                             ; preds = %.critedge
  call void @_ZdlPv(ptr noundef nonnull %i.et) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit39

_ZNSt6vectorIiSaIiEED2Ev.exit39:                  ; preds = %bb.b, %.critedge, %bb.o
  %.not55.lcssa122 = phi i1 [ %i.en, %bb.o ], [ %i.en, %.critedge ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.eu = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIiSaIiEED2Ev.exit41, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit39
  call void @_ZdlPv(ptr noundef nonnull %i.eu) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit41

_ZNSt6vectorIiSaIiEED2Ev.exit41:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit39, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit41
  %.3 = phi i1 [ %.not55.lcssa122, %_ZNSt6vectorIiSaIiEED2Ev.exit41 ], [ true, %bb.a ]
  ret i1 %.3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8External26traverse_witnesses_forwardERNS_15WitnessIteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 12 uses
  %3 = alloca %"class.std::vector.0", align 8     ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !187, !range !188, !noundef !185
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %.not56 = icmp eq ptr %i.h, %i.g
  br i1 %.not56, label %_ZNSt6vectorIiSaIiEED2Ev.exit35, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit33, %bb.c
  %i.n = phi ptr [ null, %bb.c ], [ %i.cc, %_ZNSt6vectorIiSaIiEE5clearEv.exit33 ]
  %i.o = phi ptr [ null, %bb.c ], [ %i.ce, %_ZNSt6vectorIiSaIiEE5clearEv.exit33 ]
  %.sroa.044.0 = phi ptr [ %i.i, %bb.c ], [ %.sroa.044.3, %_ZNSt6vectorIiSaIiEE5clearEv.exit33 ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 4 ; 2 uses
  %i.q = load i32, ptr %.sroa.044.0, align 4, !tbaa !13 ; 2 uses
  %.not68 = icmp eq i32 %i.q, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.r = phi ptr [ %i.am, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.n, %.lr.ph.preheader ] ; 5 uses
  %i.s = phi ptr [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %i.t = phi ptr [ %i.ao, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %i.u = phi i32 [ %i.aq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %i.v = phi ptr [ %i.ap, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %.not.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store i32 %i.u, ptr %i.t, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.j, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %.lr.ph
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.r to i64
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #11
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
end_hunk_0
