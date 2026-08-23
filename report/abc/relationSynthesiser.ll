Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/relationSynthesiser?download=true
inline.NumInlined: 1251
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN5eSLIM19RelationSynthesiser28addNoReapplicationConstraintEv:bb.a

bb.aa:                                            ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit61.i
  %i.hq = icmp eq i64 %i.gt, 4
  br i1 %i.hq, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i.thread, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i.thread: ; preds = %bb.aa
  %i.hr = load i32, ptr %.sroa.076.1162, align 4, !tbaa !46
  store i32 %i.hr, ptr %i.hl, align 4, !tbaa !46
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.gw
  br label %bb.ab

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i: ; preds = %bb.aa, %bb.z
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.gw ; 2 uses
  %.not.i63.i = icmp eq ptr %.sroa.076.1162, null
  br i1 %.not.i63.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i69, label %bb.ab

bb.ab:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i.thread, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i
  %i.hu = phi ptr [ %i.hs, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i.thread ], [ %i.ht, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i ]
  %i.hv = sub i64 %i.gx, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.1162, i64 noundef %i.hv) #16
  %.pre199.pre = load ptr, ptr %i.x, align 8, !tbaa !79
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i69

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i69: ; preds = %bb.ab, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i
  %.pre199 = phi ptr [ %.pre199.pre, %bb.ab ], [ %i.gg, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i ] ; 2 uses
  %i.hw = phi ptr [ %i.hu, %bb.ab ], [ %i.ht, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit62.i ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hi
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %.pre199, i64 32
  %.pre201 = load ptr, ptr %.phi.trans.insert200, align 8, !tbaa !76
  %.phi.trans.insert202 = getelementptr inbounds nuw i8, ptr %.pre199, i64 24
  %.pre203 = load ptr, ptr %.phi.trans.insert202, align 8, !tbaa !45
  %.pre211 = ptrtoint ptr %.pre201 to i64
  %.pre213 = ptrtoint ptr %.pre203 to i64
  %.pre215 = sub i64 %.pre211, %.pre213
  %.pre217 = ashr exact i64 %.pre215, 2
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.ac:                                            ; preds = %bb.u
  %i.hy = icmp ult i64 %i.gq, %i.gu
  br i1 %i.hy, label %bb.ad, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.ad:                                            ; preds = %bb.ac
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.076.1162, i64 %i.gq ; 2 uses
  %.not.i.i60 = icmp eq ptr %.sroa.16.1163, %i.hz
  %spec.select118 = select i1 %.not.i.i60, ptr %.sroa.16.1163, ptr %i.hz
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.loopexit, %bb.ad, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i69, %bb.ac
  %.pre-phi218 = phi i64 [ %i.go, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.loopexit ], [ %i.go, %bb.ad ], [ %.pre217, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i69 ], [ %i.go, %bb.ac ] ; 2 uses
  %.sroa.076.4 = phi ptr [ %.sroa.076.1162, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.loopexit ], [ %.sroa.076.1162, %bb.ad ], [ %i.hl, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i69 ], [ %.sroa.076.1162, %bb.ac ] ; 7 uses
  %.sroa.16.4 = phi ptr [ %i.hc, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.loopexit ], [ %spec.select118, %bb.ad ], [ %i.hw, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i69 ], [ %.sroa.16.1163, %bb.ac ] ; 3 uses
  %.sroa.32.4 = phi ptr [ %.sroa.32.1164, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit.loopexit ], [ %.sroa.32.1164, %bb.ad ], [ %i.hx, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i69 ], [ %.sroa.32.1164, %bb.ac ] ; 2 uses
  %i.ia = load ptr, ptr %i.bh, align 8, !tbaa !81
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.ia, i64 %indvars.iv188
  %i.ic = add nsw i64 %.pre-phi218, %indvars.iv191 ; 2 uses
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !45 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !46
  %i.ig = sub nsw i32 0, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.076.4, i64 %i.fb
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !46
  %i.ii = load ptr, ptr %i.bi, align 8, !tbaa !45
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv188
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !46
  %i.il = sub nsw i32 0, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.076.4, i64 %i.fc
  store i32 %i.il, ptr %i.im, align 4, !tbaa !46
  %i.in = add nsw i64 %.pre-phi218, %indvars.iv188 ; 2 uses
  %.not176 = icmp eq i64 %i.in, 0
  br i1 %.not176, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %bb.al
  %i.io = phi i64 [ %i.jf, %bb.al ], [ 0, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ] ; 2 uses
  %.043159 = phi i32 [ %.1, %bb.al ], [ 0, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ] ; 5 uses
  %.044158 = phi i32 [ %.145, %bb.al ], [ 0, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ] ; 4 uses
  %.046157 = phi i32 [ %.2, %bb.al ], [ 0, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit ] ; 5 uses
  %i.ip = sext i32 %.044158 to i64                ; 2 uses
  %.not = icmp ugt i64 %i.cj, %i.ip
  br i1 %.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph160
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.1.lcssa, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !46 ; 2 uses
  %i.is = icmp slt i32 %.043159, %i.ir
  br i1 %i.is, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae, %.lr.ph160
  %.not51 = icmp eq i64 %i.ic, %i.io
  br i1 %.not51, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.io
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !46
  %i.iv = add nsw i32 %.046157, %i.ey
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr [4 x i8], ptr %.sroa.076.4, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  store i32 %i.iu, ptr %i.iy, align 4, !tbaa !46
  %i.iz = add nsw i32 %.046157, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.147 = phi i32 [ %i.iz, %bb.ag ], [ %.046157, %bb.af ]
  %i.ja = add nsw i32 %.043159, 1
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.jb = icmp sgt i32 %.043159, %i.ir
  br i1 %i.jb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jc = add nsw i32 %.044158, 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jd = add nsw i32 %.043159, 1
  %i.je = add nsw i32 %.044158, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ah
  %.2 = phi i32 [ %.147, %bb.ah ], [ %.046157, %bb.aj ], [ %.046157, %bb.ak ]
  %.145 = phi i32 [ %.044158, %bb.ah ], [ %i.jc, %bb.aj ], [ %i.je, %bb.ak ]
  %.1 = phi i32 [ %i.ja, %bb.ah ], [ %.043159, %bb.aj ], [ %i.jd, %bb.ak ] ; 2 uses
  %i.jf = sext i32 %.1 to i64                     ; 2 uses
  %i.jg = icmp ugt i64 %i.in, %i.jf
  br i1 %i.jg, label %.lr.ph160, label %._crit_edge161, !llvm.loop !214

._crit_edge161:                                   ; preds = %bb.al, %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %.not8.i = icmp eq ptr %.sroa.076.4, %.sroa.16.4
  br i1 %.not8.i, label %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge161, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.ji, %.lr.ph.i ], [ %.sroa.076.4, %._crit_edge161 ] ; 2 uses
  %i.jh = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !46
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i32 noundef %i.jh) #13
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i61 = icmp eq ptr %i.ji, %.sroa.16.4
  br i1 %.not.i61, label %_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

_ZN5eSLIM13CadicalSolver9addClauseERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i, %._crit_edge161
  call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i32 noundef 0) #13
  %i.jj = load i32, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.jk = trunc nsw i64 %i.gp to i32
  %i.jl = icmp ugt i32 %i.jj, %i.jk
  br i1 %i.jl, label %bb.u, label %._crit_edge168, !llvm.loop !215

bb.am:                                            ; preds = %._crit_edge174
  %.not.i.i.i62 = icmp eq ptr %.sroa.0101.1.lcssa, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIiSaIiEED2Ev.exit63, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jm = ptrtoint ptr %.sroa.22.1.lcssa to i64
  %i.jn = ptrtoint ptr %.sroa.0101.1.lcssa to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.1.lcssa, i64 noundef %i.jo) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit63

_ZNSt6vectorIiSaIiEED2Ev.exit63:                  ; preds = %bb.am, %bb.an
  %i.jp = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i64, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit63
  %i.jq = load ptr, ptr %i.h, align 8, !tbaa !208 ; 2 uses
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = sub i64 %i.jr, %i.js                    ; 2 uses
  %i.ju = ashr exact i64 %i.jt, 3
  %i.jv = sub nsw i64 0, %i.ju
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.jv
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jt) #16
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit63, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM19RelationSynthesiser25addOrderedStepsConstraintEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %._crit_edge44, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !79
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge42
  %i.g = phi i32 [ %i.b, %.preheader.lr.ph ], [ %i.m, %._crit_edge42 ]
  %i.h = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.n, %._crit_edge42 ] ; 4 uses
  %indvars.iv50 = phi i64 [ 0, %.preheader.lr.ph ], [ %.pre59, %._crit_edge42 ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !45
  %.not45 = icmp eq ptr %i.k, %i.l
  %.pre59 = add nuw nsw i64 %indvars.iv50, 1      ; 6 uses
  br i1 %.not45, label %._crit_edge42, label %.lr.ph41

._crit_edge44:                                    ; preds = %._crit_edge42, %bb.a
  ret void

._crit_edge42.loopexit:                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.pre55 = load i32, ptr %i.a, align 8, !tbaa !11
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %.preheader, %._crit_edge42.loopexit
  %i.m = phi i32 [ %.pre55, %._crit_edge42.loopexit ], [ %i.g, %.preheader ] ; 2 uses
  %i.n = phi ptr [ %i.bm, %._crit_edge42.loopexit ], [ %i.h, %.preheader ]
  %i.o = add i32 %i.m, -1
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %.pre59, %i.p
  br i1 %i.q, label %.preheader, label %._crit_edge44, !llvm.loop !216

.lr.ph41:                                         ; preds = %.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.r = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.h, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ 0, %.preheader ] ; 5 uses
  %i.s = phi ptr [ %i.bo, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.j, %.preheader ]
  %i.t = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.i, %.preheader ]
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.pre59
  %i.w = load i32, ptr %i.v, align 4, !tbaa !46
  %i.x = sub nsw i32 0, %i.w
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv50
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !46
  %i.ad = sub nsw i32 0, %i.ac
  %i.ae = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14 ; 6 uses
  store i32 %i.x, ptr %i.ae, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.ad, ptr %.sroa.4.0..sroa_idx, align 4
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = sub nsw i64 %indvars.iv50, %indvars.iv
  %i.am = add nsw i64 %i.al, %i.ak                ; 2 uses
  %i.an = add nsw i64 %i.am, 3                    ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 2305843009213693951
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph41
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
  unreachable

bb.c:                                             ; preds = %.lr.ph41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.aq = icmp sgt i64 %i.am, -1
  br i1 %i.aq, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.c
  %i.ar = shl nuw nsw i64 %i.an, 2
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #14 ; 4 uses
  %i.at = load i64, ptr %i.ae, align 4
  store i64 %i.at, ptr %i.as, align 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 8) #16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.an
  %.pre53 = load ptr, ptr %i.c, align 8, !tbaa !79
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %i.aw = phi ptr [ %.pre53, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.r, %bb.c ] ; 3 uses
  %.sroa.17.1 = phi ptr [ %i.av, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.ap, %bb.c ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.au, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.ap, %bb.c ] ; 2 uses
  %.sroa.023.1 = phi ptr [ %i.as, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.ae, %bb.c ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !76
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !45
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %i.bf = add nsw i64 %.pre59, %i.be
  %i.bg = icmp ugt i64 %i.bf, %indvars.iv
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.17.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.10.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.023.0.lcssa = phi ptr [ %.sroa.023.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.023.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %.not8.i = icmp eq ptr %.sroa.023.0.lcssa, %.sroa.10.0.lcssa
  br i1 %.not8.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.sroa.023.0.lcssa, %._crit_edge ] ; 2 uses
  %i.bh = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !46
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.bh) #13
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, %.sroa.10.0.lcssa
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.i

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.lr.ph.i, %._crit_edge
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef 0) #13
  %i.bj = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.bk = ptrtoint ptr %.sroa.023.0.lcssa to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.023.0.lcssa, i64 noundef %i.bl) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !79  ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !76
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !45
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  %i.bv = add nsw i64 %i.bu, %indvars.iv50
  %i.bw = icmp ugt i64 %i.bv, %indvars.iv.next
  br i1 %i.bw, label %.lr.ph41, label %._crit_edge42.loopexit, !llvm.loop !217

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bx = phi ptr [ %i.cs, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.aw, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ]
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %indvars.iv, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %.sroa.023.036 = phi ptr [ %.sroa.023.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.023.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 4 uses
  %.sroa.10.035 = phi ptr [ %.sroa.10.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 4 uses
  %.sroa.17.034 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.17.1, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %.pre59
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv46 ; 2 uses
  %.not.i20 = icmp eq ptr %.sroa.10.035, %.sroa.17.034
  br i1 %.not.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !46
  store i32 %i.cc, ptr %.sroa.10.035, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %.lr.ph
  %i.cd = ptrtoint ptr %.sroa.10.035 to i64
  %i.ce = ptrtoint ptr %.sroa.023.036 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775804
  br i1 %i.cg, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ch = ashr exact i64 %i.cf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 2305843009213693951)
  %i.cl = select i1 %i.cj, i64 2305843009213693951, i64 %i.ck ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i21)
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #14 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  %i.cp = load i32, ptr %i.cb, align 4, !tbaa !46
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !46
  %i.cq = icmp sgt i64 %i.cf, 0
  br i1 %i.cq, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr align 4 %.sroa.023.036, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.023.036, i64 noundef %i.cf) #16
  %.pre54.pre = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cl
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.cs = phi ptr [ %.pre54.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bx, %bb.d ] ; 3 uses
  %.sroa.17.2 = phi ptr [ %i.cr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.17.034, %bb.d ] ; 2 uses
  %.pn = phi ptr [ %i.co, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.10.035, %bb.d ]
  %.sroa.023.2 = phi ptr [ %i.cn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.023.036, %bb.d ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !76
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !45
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 2
  %i.db = add nsw i64 %.pre59, %i.da
  %i.dc = icmp ugt i64 %i.db, %indvars.iv.next47
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !llvm.loop !218
}

declare void @_ZN7CaDiCaL6SolverC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef i32 @_ZN7CaDiCaL6Solver3valEib(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4
end_hunk_0
