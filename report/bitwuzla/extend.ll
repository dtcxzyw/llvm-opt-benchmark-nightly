Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/extend?download=true
inline.NumInlined: 378
inline.NumDeleted: 153
begin_hunk_0_@_ZN7CaDiCaL8External27traverse_witnesses_backwardERNS_15WitnessIteratorE:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.q) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
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

.loopexit56:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp57:                             ; preds = %bb.e
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.preheader
  %i.aq = phi ptr [ %i.n, %.preheader ], [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.045.1.lcssa = phi ptr [ %.sroa.045.080, %.preheader ], [ %i.u, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
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
  %.not1274 = icmp eq i32 %i.ba, 0
  br i1 %.not1274, label %._crit_edge77, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %._crit_edge
  %.pre89 = load ptr, ptr %i.k, align 8, !tbaa !11
  %.pre90 = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24
  %i.bb = phi ptr [ %i.bw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24 ], [ %.pre90, %.lr.ph76.preheader ] ; 3 uses
  %i.bc = phi ptr [ %i.bx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24 ], [ %.pre89, %.lr.ph76.preheader ] ; 3 uses
  %i.bd = phi i32 [ %i.bz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24 ], [ %i.ba, %.lr.ph76.preheader ] ; 2 uses
  %i.be = phi ptr [ %i.by, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24 ], [ %i.az, %.lr.ph76.preheader ]
  %.not.i15 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph76
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  store ptr %i.bf, ptr %i.k, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24

bb.i:                                             ; preds = %.lr.ph76
  %i.bg = load ptr, ptr %3, align 8, !tbaa !14    ; 4 uses
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i16

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #10
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i16: ; preds = %bb.i
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
          to label %.noexc23 unwind label %.loopexit ; 4 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i16
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store i32 %i.bd, ptr %i.bs, align 4, !tbaa !13
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19

bb.k:                                             ; preds = %.noexc23
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %i.bg, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19: ; preds = %bb.k, %.noexc23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %.not.i17.i.i20 = icmp eq ptr %i.bg, null
  br i1 %.not.i17.i.i20, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i19
  store ptr %i.br, ptr %3, align 8, !tbaa !14
  store ptr %i.bu, ptr %i.k, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp ; 2 uses
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24

_ZNSt6vectorIiSaIiEE9push_backERKi.exit24:        ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21
  %i.bw = phi ptr [ %i.bb, %bb.h ], [ %i.bv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21 ]
  %i.bx = phi ptr [ %i.bf, %bb.h ], [ %i.bu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i21 ]
  %i.by = getelementptr inbounds i8, ptr %i.be, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !13 ; 2 uses
  %.not12 = icmp eq i32 %i.bz, 0
  br i1 %.not12, label %._crit_edge77.loopexit, label %.lr.ph76

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i16
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit31
  %lpad.loopexit61 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.j
  %lpad.loopexit.split-lp62 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge77.loopexit:                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24
  %.pre91 = load ptr, ptr %i.i, align 8, !tbaa !56
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %._crit_edge
  %i.ca = phi ptr [ %i.aq, %._crit_edge ], [ %.pre91, %._crit_edge77.loopexit ] ; 5 uses
  %.lcssa = phi ptr [ %i.az, %._crit_edge ], [ %i.by, %._crit_edge77.loopexit ] ; 2 uses
  %i.cb = ptrtoaddr ptr %i.ca to i64              ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !56    ; 9 uses
  %i.cd = ptrtoaddr ptr %i.cc to i64              ; 6 uses
  %i.ce = icmp ne ptr %i.cc, %i.ca
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ca, i64 -4 ; 5 uses
  %i.cf = icmp ult ptr %i.cc, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge77
  %i.cg = add i64 %i.cb, -8
  %i.ch = add i64 %i.cd, 4
  %i.ci = call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ch)
  %i.cj = add i64 %i.ci, -4                       ; 2 uses
  %i.ck = icmp ne i64 %i.cj, %i.cd
  %i.cl = zext i1 %i.ck to i64                    ; 2 uses
  %i.cm = add i64 %i.cd, %i.cl
  %i.cn = sub i64 %i.cj, %i.cm
  %i.co = lshr i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, %i.cl            ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check156 = icmp samesign ult i64 %i.cp, 15
  br i1 %min.iters.check156, label %.lr.ph.i.i.preheader177, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep146.a = getelementptr i8, ptr %i.cc, i64 4
  %i.cr = add i64 %i.cb, -8
  %i.cs = add i64 %i.cd, 4
  %umax147 = call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cs)
  %i.ct = add i64 %umax147, -4                    ; 2 uses
  %i.cu = icmp ne i64 %i.ct, %i.cd
  %umin148 = zext i1 %i.cu to i64                 ; 2 uses
  %i.cv = add i64 %i.cd, %umin148
  %i.cw = sub i64 %i.ct, %i.cv
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = add nuw nsw i64 %i.cx, %umin148         ; 2 uses
  %i.cz = shl nuw i64 %i.cy, 2
  %scevgep149 = getelementptr i8, ptr %scevgep146.a, i64 %i.cz
  %scevgep150 = getelementptr i8, ptr %i.ca, i64 -4
  %i.da = mul nsw i64 %i.cy, -4
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.da
  %bound0152 = icmp ult ptr %i.cc, %i.ca
  %bound1153 = icmp ult ptr %scevgep151, %scevgep149
  %found.conflict154 = and i1 %bound0152, %bound1153
  br i1 %found.conflict154, label %.lr.ph.i.i.preheader177, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck145
  %n.vec158 = and i64 %i.cq, 9223372036854775800  ; 4 uses
  %i.db = mul i64 %n.vec158, -4
  %i.dc = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.db
  %i.dd = shl i64 %n.vec158, 2
  %i.de = getelementptr i8, ptr %i.cc, i64 %i.dd
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next171, %vector.body159 ] ; 3 uses
  %i.df = mul i64 %index160, -4
  %next.gep161 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.df ; 2 uses
  %i.dg = shl i64 %index160, 2
  %next.gep162 = getelementptr i8, ptr %i.cc, i64 %i.dg ; 3 uses
  %i.dh = getelementptr i8, ptr %next.gep162, i64 16 ; 2 uses
  %wide.load163 = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !13, !alias.scope !214, !noalias !215
  %wide.load164 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !13, !alias.scope !214, !noalias !215
  %4 = getelementptr i8, ptr %next.gep161, i64 -12 ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep161, i64 -28 ; 2 uses
  %wide.load165 = load <4 x i32>, ptr %4, align 4, !tbaa !13, !alias.scope !215
  %wide.load166 = load <4 x i32>, ptr %i.di, align 4, !tbaa !13, !alias.scope !215
  %reverse167 = shufflevector <4 x i32> %wide.load165, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse168 = shufflevector <4 x i32> %wide.load166, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse167, ptr %next.gep162, align 4, !tbaa !13, !alias.scope !214, !noalias !215
  store <4 x i32> %reverse168, ptr %i.dh, align 4, !tbaa !13, !alias.scope !214, !noalias !215
  %reverse169 = shufflevector <4 x i32> %wide.load163, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse170 = shufflevector <4 x i32> %wide.load164, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse169, ptr %4, align 4, !tbaa !13, !alias.scope !215
  store <4 x i32> %reverse170, ptr %i.di, align 4, !tbaa !13, !alias.scope !215
  %index.next171 = add nuw i64 %index160, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next171, %n.vec158
  br i1 %i.dj, label %middle.block172, label %vector.body159, !llvm.loop !206

middle.block172:                                  ; preds = %vector.body159
  %cmp.n173 = icmp eq i64 %i.cq, %n.vec158
  br i1 %cmp.n173, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader177

.lr.ph.i.i.preheader177:                          ; preds = %vector.memcheck145, %.lr.ph.i.i.preheader, %middle.block172
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck145 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.dc, %middle.block172 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.cc, %vector.memcheck145 ], [ %i.cc, %.lr.ph.i.i.preheader ], [ %i.de, %middle.block172 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader177, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader177 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader177 ] ; 3 uses
  %i.dk = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !13
  %i.dl = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !13
  store i32 %i.dl, ptr %.sroa.05.09.i.i, align 4, !tbaa !13
  store i32 %i.dk, ptr %.sroa.0.010.i.i, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %.sroa.0.0.i.i
  br i1 %i.dn, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, !llvm.loop !207

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block172, %._crit_edge77
  %i.do = load ptr, ptr %3, align 8, !tbaa !56    ; 9 uses
  %i.dp = ptrtoaddr ptr %i.do to i64              ; 6 uses
  %i.dq = load ptr, ptr %i.k, align 8, !tbaa !56  ; 5 uses
  %i.dr = ptrtoaddr ptr %i.dq to i64              ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.dq
  %.sroa.0.08.i.i25 = getelementptr inbounds i8, ptr %i.dq, i64 -4 ; 5 uses
  %i.dt = icmp ult ptr %i.do, %.sroa.0.08.i.i25
  %or.cond.i.i26 = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i.i26, label %.lr.ph.i.i27.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit31

.lr.ph.i.i27.preheader:                           ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.du = add i64 %i.dr, -8
  %i.dv = add i64 %i.dp, 4
  %i.dw = call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dv)
  %i.dx = add i64 %i.dw, -4                       ; 2 uses
  %i.dy = icmp ne i64 %i.dx, %i.dp
  %i.dz = zext i1 %i.dy to i64                    ; 2 uses
  %i.ea = add i64 %i.dp, %i.dz
  %i.eb = sub i64 %i.dx, %i.ea
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, %i.dz            ; 2 uses
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ed, 15
  br i1 %min.iters.check, label %.lr.ph.i.i27.preheader176, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i27.preheader
  %scevgep = getelementptr i8, ptr %i.do, i64 4
  %i.ef = add i64 %i.dr, -8
  %i.eg = add i64 %i.dp, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %i.eh = add i64 %umax, -4                       ; 2 uses
  %i.ei = icmp ne i64 %i.eh, %i.dp
  %umin = zext i1 %i.ei to i64                    ; 2 uses
  %i.ej = add i64 %i.dp, %umin
  %i.ek = sub i64 %i.eh, %i.ej
  %i.el = lshr i64 %i.ek, 3
  %i.em = add nuw nsw i64 %i.el, %umin            ; 2 uses
  %i.en = shl nuw i64 %i.em, 2
  %scevgep134 = getelementptr i8, ptr %scevgep, i64 %i.en
  %scevgep135 = getelementptr i8, ptr %i.dq, i64 -4
  %i.eo = mul nsw i64 %i.em, -4
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.eo
  %bound0 = icmp ult ptr %i.do, %i.dq
  %bound1 = icmp ult ptr %scevgep136, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i27.preheader176, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ee, 9223372036854775800     ; 4 uses
  %i.ep = mul i64 %n.vec, -4
  %i.eq = getelementptr i8, ptr %.sroa.0.08.i.i25, i64 %i.ep
  %i.er = shl i64 %n.vec, 2
  %i.es = getelementptr i8, ptr %i.do, i64 %i.er
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.et = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i25, i64 %i.et ; 2 uses
  %i.eu = shl i64 %index, 2
  %next.gep137 = getelementptr i8, ptr %i.do, i64 %i.eu ; 3 uses
  %i.ev = getelementptr i8, ptr %next.gep137, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep137, align 4, !tbaa !13, !alias.scope !218, !noalias !219
  %wide.load138.a = load <4 x i32>, ptr %i.ev, align 4, !tbaa !13, !alias.scope !218, !noalias !219
  %5 = getelementptr i8, ptr %next.gep, i64 -12   ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep, i64 -28 ; 2 uses
  %wide.load139 = load <4 x i32>, ptr %5, align 4, !tbaa !13, !alias.scope !219
  %wide.load140 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !13, !alias.scope !219
  %reverse = shufflevector <4 x i32> %wide.load139, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse141 = shufflevector <4 x i32> %wide.load140, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep137, align 4, !tbaa !13, !alias.scope !218, !noalias !219
  store <4 x i32> %reverse141, ptr %i.ev, align 4, !tbaa !13, !alias.scope !218, !noalias !219
  %reverse142 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse143 = shufflevector <4 x i32> %wide.load138.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse142, ptr %5, align 4, !tbaa !13, !alias.scope !219
  store <4 x i32> %reverse143, ptr %i.ew, align 4, !tbaa !13, !alias.scope !219
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ee, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit31, label %.lr.ph.i.i27.preheader176

.lr.ph.i.i27.preheader176:                        ; preds = %vector.memcheck, %.lr.ph.i.i27.preheader, %middle.block
  %.sroa.0.010.i.i28.ph = phi ptr [ %.sroa.0.08.i.i25, %vector.memcheck ], [ %.sroa.0.08.i.i25, %.lr.ph.i.i27.preheader ], [ %i.eq, %middle.block ]
  %.sroa.05.09.i.i29.ph = phi ptr [ %i.do, %vector.memcheck ], [ %i.do, %.lr.ph.i.i27.preheader ], [ %i.es, %middle.block ]
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.preheader176, %.lr.ph.i.i27
  %.sroa.0.010.i.i28 = phi ptr [ %.sroa.0.0.i.i30, %.lr.ph.i.i27 ], [ %.sroa.0.010.i.i28.ph, %.lr.ph.i.i27.preheader176 ] ; 3 uses
  %.sroa.05.09.i.i29 = phi ptr [ %i.fa, %.lr.ph.i.i27 ], [ %.sroa.05.09.i.i29.ph, %.lr.ph.i.i27.preheader176 ] ; 3 uses
  %i.ey = load i32, ptr %.sroa.05.09.i.i29, align 4, !tbaa !13
  %i.ez = load i32, ptr %.sroa.0.010.i.i28, align 4, !tbaa !13
  store i32 %i.ez, ptr %.sroa.05.09.i.i29, align 4, !tbaa !13
  store i32 %i.ey, ptr %.sroa.0.010.i.i28, align 4, !tbaa !13
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i29, i64 4 ; 2 uses
  %.sroa.0.0.i.i30 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i28, i64 -4 ; 2 uses
  %i.fb = icmp ult ptr %i.fa, %.sroa.0.0.i.i30
  br i1 %i.fb, label %.lr.ph.i.i27, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit31, !llvm.loop !212

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit31: ; preds = %.lr.ph.i.i27, %middle.block, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.fc = load ptr, ptr %1, align 8, !tbaa !190
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = invoke noundef zeroext i1 %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ay)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit ; 3 uses

bb.m:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit31
  br i1 %i.ff, label %bb.n, label %..critedge.loopexit_crit_edge

..critedge.loopexit_crit_edge:                    ; preds = %bb.m
  %.pre92.pre = load ptr, ptr %3, align 8, !tbaa !14
  br label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.fg = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %.not.i.i = icmp eq ptr %i.fh, %i.fg
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.fg, ptr %i.i, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.fi = phi ptr [ %i.fh, %bb.n ], [ %i.fg, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.fj = load ptr, ptr %3, align 8, !tbaa !14    ; 3 uses
  %i.fk = load ptr, ptr %i.k, align 8, !tbaa !11
  %.not.i.i32 = icmp eq ptr %i.fk, %i.fj
  br i1 %.not.i.i32, label %_ZNSt6vectorIiSaIiEE5clearEv.exit34, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i33

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i33:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.fj, ptr %i.k, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit34

_ZNSt6vectorIiSaIiEE5clearEv.exit34:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i33
  %.not55 = icmp eq ptr %.lcssa, %i.f
  br i1 %.not55, label %.critedge, label %.preheader, !llvm.loop !213

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit56, %.loopexit.split-lp57
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp59, %.loopexit.split-lp57 ], [ %lpad.loopexit58, %.loopexit56 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp62, %.loopexit.split-lp.loopexit.split-lp ]
  %i.fl = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.fl) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.fm = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIiSaIiEED2Ev.exit37, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.fm) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit37

_ZNSt6vectorIiSaIiEED2Ev.exit37:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit34, %..critedge.loopexit_crit_edge
  %i.fn = phi ptr [ %.pre92.pre, %..critedge.loopexit_crit_edge ], [ %i.fj, %_ZNSt6vectorIiSaIiEE5clearEv.exit34 ] ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIiSaIiEED2Ev.exit39, label %bb.q

bb.q:                                             ; preds = %.critedge
  call void @_ZdlPv(ptr noundef nonnull %i.fn) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit39

_ZNSt6vectorIiSaIiEED2Ev.exit39:                  ; preds = %bb.b, %.critedge, %bb.q
  %.not55.lcssa119 = phi i1 [ %i.ff, %bb.q ], [ %i.ff, %.critedge ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.fo = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIiSaIiEED2Ev.exit41, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit39
  call void @_ZdlPv(ptr noundef nonnull %i.fo) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit41

_ZNSt6vectorIiSaIiEED2Ev.exit41:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit39, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit41
  %.3 = phi i1 [ %.not55.lcssa119, %_ZNSt6vectorIiSaIiEED2Ev.exit41 ], [ true, %bb.a ]
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
  br i1 %i.d, label %bb.v, label %bb.b

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

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit30, %bb.c
  %i.n = phi ptr [ null, %bb.c ], [ %i.ca, %_ZNSt6vectorIiSaIiEE5clearEv.exit30 ]
  %i.o = phi ptr [ null, %bb.c ], [ %i.cc, %_ZNSt6vectorIiSaIiEE5clearEv.exit30 ]
  %.sroa.044.0 = phi ptr [ %i.i, %bb.c ], [ %.sroa.044.3, %_ZNSt6vectorIiSaIiEE5clearEv.exit30 ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 4 ; 2 uses
  %i.q = load i32, ptr %.sroa.044.0, align 4, !tbaa !13 ; 2 uses
  %.not71 = icmp eq i32 %i.q, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph.preheader

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
  br i1 %i.aa, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #10
          to label %.noexc unwind label %.loopexit.split-lp60

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
end_hunk_0
