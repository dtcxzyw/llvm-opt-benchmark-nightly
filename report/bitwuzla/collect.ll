Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/collect?download=true
inline.NumInlined: 524
inline.NumDeleted: 212
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7CaDiCaL8Internal24copy_non_garbage_clausesEv:bb.a
  br i1 %or.cond135, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph170
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !10 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = shl nsw i64 %i.hi, 2
  %i.hk = add nsw i64 %i.hj, 24                   ; 2 uses
  %i.hl = and i32 %i.hh, 1
  %.not.i.i.i.i88 = icmp eq i32 %i.hl, 0
  %i.hm = or i64 %i.hk, 7
  %i.hn = add nsw i64 %i.hm, 1
  %.0.i.i.i.i89 = select i1 %.not.i.i.i.i88, i64 %i.hk, i64 %i.hn ; 2 uses
  %i.ho = load ptr, ptr %i.cr, align 8, !tbaa !189 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.0.i.i.i.i89
  store ptr %i.hp, ptr %i.cr, align 8, !tbaa !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ho, ptr nonnull align 8 %i.ha, i64 %.0.i.i.i.i89, i1 false)
  store ptr %i.ho, ptr %i.ha, align 8, !tbaa !159
  %i.hq = load i32, ptr %i.hb, align 8
  %i.hr = or i32 %i.hq, 512
  store i32 %i.hr, ptr %i.hb, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph170
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0107.0168, i64 16 ; 2 uses
  %.not142 = icmp eq ptr %i.hs, %i.gv
  br i1 %.not142, label %._crit_edge171, label %.lr.ph170

.loopexit:                                        ; preds = %._crit_edge171.1, %._crit_edge183.1, %bb.o, %.preheader, %._crit_edge177, %._crit_edge188, %.preheader151, %bb.l
  %i.ht = load ptr, ptr %i.a, align 8, !tbaa !164 ; 2 uses
  %i.hu = load ptr, ptr %i.c, align 8, !tbaa !164 ; 2 uses
  %.not146194 = icmp eq ptr %i.ht, %i.hu
  br i1 %.not146194, label %._crit_edge198, label %.lr.ph197

.lr.ph197:                                        ; preds = %.loopexit
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 7176 ; 2 uses
  br label %bb.ac

._crit_edge198:                                   ; preds = %bb.ae, %.loopexit
  tail call void @_ZN7CaDiCaL8Internal26flush_all_occs_and_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !166 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !166 ; 2 uses
  %.not1516.i = icmp eq ptr %i.hx, %i.hz
  br i1 %.not1516.i, label %_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge198
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !168
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.if = load ptr, ptr %i.ie, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i
  %.sroa.012.017.i = phi ptr [ %i.hx, %.lr.ph.i ], [ %i.is, %bb.ab ] ; 2 uses
  %i.ig = load i32, ptr %.sroa.012.017.i, align 4, !tbaa !10
  %i.ih = tail call noundef i32 @llvm.abs.i32(i32 %i.ig, i1 true)
  %i.ii = zext nneg i32 %i.ih to i64              ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 1
  %i.il = and i32 %i.ik, 117440512
  %i.im = icmp eq i32 %i.il, 16777216
  br i1 %i.im, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.ii
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !169 ; 3 uses
  %.not.i90 = icmp eq ptr %i.ip, null
  %i.iq = icmp eq ptr %i.ip, %i.if
  %or.cond.i91 = select i1 %.not.i90, i1 true, i1 %i.iq
  br i1 %or.cond.i91, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !159
  store ptr %i.ir, ptr %i.io, align 8, !tbaa !169
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 4 ; 2 uses
  %.not15.i = icmp eq ptr %i.is, %i.hz
  br i1 %.not15.i, label %_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit, label %bb.y

_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit: ; preds = %bb.ab, %._crit_edge198
  %i.it = load ptr, ptr %i.c, align 8, !tbaa !164 ; 4 uses
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !164 ; 4 uses
  %.not147199 = icmp eq ptr %i.iu, %i.it
  br i1 %.not147199, label %._crit_edge203, label %.lr.ph202

bb.ac:                                            ; preds = %.lr.ph197, %bb.ae
  %.sroa.0103.0195 = phi ptr [ %i.ht, %.lr.ph197 ], [ %i.jn, %bb.ae ] ; 2 uses
  %i.iv = load ptr, ptr %.sroa.0103.0195, align 8, !tbaa !165 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 8            ; 2 uses
  %i.iy = and i32 %i.ix, 1040
  %i.iz = icmp ne i32 %i.iy, 16
  %i.ja = and i32 %i.ix, 512
  %.not80 = icmp eq i32 %i.ja, 0
  %or.cond136 = and i1 %i.iz, %.not80
  br i1 %or.cond136, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !10 ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = shl nsw i64 %i.jd, 2
  %i.jf = add nsw i64 %i.je, 24                   ; 2 uses
  %i.jg = and i32 %i.jc, 1
  %.not.i.i.i.i92 = icmp eq i32 %i.jg, 0
  %i.jh = or i64 %i.jf, 7
  %i.ji = add nsw i64 %i.jh, 1
  %.0.i.i.i.i93 = select i1 %.not.i.i.i.i92, i64 %i.jf, i64 %i.ji ; 2 uses
  %i.jj = load ptr, ptr %i.hv, align 8, !tbaa !189 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.0.i.i.i.i93
  store ptr %i.jk, ptr %i.hv, align 8, !tbaa !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jj, ptr nonnull align 8 %i.iv, i64 %.0.i.i.i.i93, i1 false)
  store ptr %i.jj, ptr %i.iv, align 8, !tbaa !159
  %i.jl = load i32, ptr %i.iw, align 8
  %i.jm = or i32 %i.jl, 512
  store i32 %i.jm, ptr %i.iw, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0103.0195, i64 8 ; 2 uses
  %.not146 = icmp eq ptr %i.jn, %i.hu
  br i1 %.not146, label %._crit_edge198, label %bb.ac

.lr.ph202:                                        ; preds = %_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit, %bb.ah
  %.sroa.096.0201 = phi ptr [ %i.jv, %bb.ah ], [ %i.iu, %_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit ] ; 2 uses
  %.sroa.099.0200 = phi ptr [ %.sroa.099.1, %bb.ah ], [ %i.iu, %_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit ] ; 3 uses
  %i.jo = load ptr, ptr %.sroa.096.0201, align 8, !tbaa !165 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i32, ptr %i.jp, align 8
  %i.jr = and i32 %i.jq, 1040
  %i.js = icmp eq i32 %i.jr, 16
  br i1 %i.js, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph202
  tail call void @_ZN7CaDiCaL8Internal13delete_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %i.jo)
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph202
  %i.jt = load ptr, ptr %i.jo, align 8, !tbaa !159
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.099.0200, i64 8
  store ptr %i.jt, ptr %.sroa.099.0200, align 8, !tbaa !165
  tail call void @_ZN7CaDiCaL8Internal17deallocate_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %i.jo)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.099.1 = phi ptr [ %.sroa.099.0200, %bb.af ], [ %i.ju, %bb.ag ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.096.0201, i64 8 ; 2 uses
  %.not147 = icmp eq ptr %i.jv, %i.it
  br i1 %.not147, label %._crit_edge203.loopexit, label %.lr.ph202, !llvm.loop !217

._crit_edge203.loopexit:                          ; preds = %bb.ah
  %.pre211 = load ptr, ptr %i.a, align 8, !tbaa !164
  %.pre212 = load ptr, ptr %i.c, align 8, !tbaa !171
  br label %._crit_edge203

._crit_edge203:                                   ; preds = %._crit_edge203.loopexit, %_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit
  %i.jw = phi ptr [ %i.it, %_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit ], [ %.pre212, %._crit_edge203.loopexit ] ; 3 uses
  %i.jx = phi ptr [ %i.iu, %_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit ], [ %.pre211, %._crit_edge203.loopexit ] ; 4 uses
  %.sroa.099.0.lcssa = phi ptr [ %i.it, %_ZN7CaDiCaL8Internal24update_reason_referencesEv.exit ], [ %.sroa.099.1, %._crit_edge203.loopexit ] ; 2 uses
  %i.jy = ptrtoint ptr %.sroa.099.0.lcssa to i64
  %i.jz = ptrtoint ptr %i.jx to i64               ; 4 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 2 uses
  %i.kb = ashr exact i64 %i.ka, 3                 ; 3 uses
  %i.kc = ptrtoint ptr %i.jw to i64
  %i.kd = sub i64 %i.kc, %i.jz
  %i.ke = ashr exact i64 %i.kd, 3                 ; 3 uses
  %i.kf = icmp ugt i64 %i.kb, %i.ke
  br i1 %i.kf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge203
  %i.kg = sub nuw nsw i64 %i.kb, %i.ke
  tail call void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.kg)
  %.pre213 = load ptr, ptr %i.c, align 8, !tbaa !171
  %.pre214 = load ptr, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %.pre215 = ptrtoint ptr %.pre214 to i64
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

bb.aj:                                            ; preds = %._crit_edge203
  %i.kh = icmp uge i64 %i.kb, %i.ke
  %.not.i.i = icmp eq ptr %i.jw, %.sroa.099.0.lcssa
  %or.cond149 = or i1 %i.kh, %.not.i.i
  br i1 %or.cond149, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.aj
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.ka ; 2 uses
  store ptr %i.ki, ptr %i.c, align 8, !tbaa !171
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit: ; preds = %bb.ai, %bb.aj, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre215, %bb.ai ], [ %i.jz, %bb.aj ], [ %i.jz, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.kj = phi ptr [ %.pre214, %bb.ai ], [ %i.jx, %bb.aj ], [ %i.jx, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.kk = phi ptr [ %.pre213, %bb.ai ], [ %i.jw, %bb.aj ], [ %i.ki, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = sub i64 %i.kl, %.pre-phi                ; 4 uses
  %i.kn = ashr exact i64 %i.km, 3
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !172
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = sub i64 %i.kq, %.pre-phi
  %i.ks = ashr exact i64 %i.kr, 3
  %i.kt = lshr i64 %i.ks, 1
  %i.ku = icmp ult i64 %i.kn, %i.kt
  br i1 %i.ku, label %bb.ak, label %_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

bb.ak:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.kk, %i.kj
  br i1 %.not.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kv = icmp ugt i64 %i.km, 9223372036854775800
  br i1 %i.kv, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i, !prof !173

.noexc.i.i.i:                                     ; preds = %bb.al
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.al
  %i.kw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.km) #19
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !164 ; 2 uses
  %.pre6.i = load ptr, ptr %i.c, align 8, !tbaa !164
  %.pre7.i = ptrtoint ptr %.pre6.i to i64
  %.pre8.i = ptrtoint ptr %.pre.i to i64
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i, %bb.ak
  %.pre-phi9.i = phi i64 [ %.pre8.i, %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.ak ]
  %.pre-phi.i = phi i64 [ %.pre7.i, %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.ak ]
  %i.kx = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.kj, %bb.ak ] ; 4 uses
  %i.ky = phi ptr [ %i.kw, %_ZNSt15__new_allocatorIPN7CaDiCaL6ClauseEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.ak ] ; 7 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.km ; 2 uses
  %i.la = sub i64 %.pre-phi.i, %.pre-phi9.i       ; 4 uses
  %i.lb = icmp sgt i64 %i.la, 8
  br i1 %i.lb, label %bb.an, label %bb.ao, !prof !174

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ky, ptr align 8 %i.kx, i64 %i.la, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.lc = icmp eq i64 %i.la, 8
  br i1 %i.lc, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i: ; preds = %bb.ao
  %i.ld = load ptr, ptr %i.kx, align 8, !tbaa !165
  store ptr %i.ld, ptr %i.ky, align 8, !tbaa !165
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %i.ky, ptr %i.a, align 8, !tbaa !170
  store ptr %i.le, ptr %i.c, align 8, !tbaa !171
  store ptr %i.kz, ptr %i.ko, align 8, !tbaa !172
  br label %bb.ap

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i: ; preds = %bb.ao, %bb.an
  %i.lf = getelementptr inbounds i8, ptr %i.ky, i64 %i.la
  store ptr %i.ky, ptr %i.a, align 8, !tbaa !170
  store ptr %i.lf, ptr %i.c, align 8, !tbaa !171
  store ptr %i.kz, ptr %i.ko, align 8, !tbaa !172
  %.not.i.i.i.i94 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i94, label %_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.kx) #20
  br label %_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %bb.ap, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 3212
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !225
  %.not78 = icmp eq i32 %i.lh, 0
  br i1 %.not78, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  %i.li = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.lj = load ptr, ptr %i.c, align 8, !tbaa !164
  tail call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPPNS_6ClauseESt6vectorIS4_SaIS4_EEEENS_12pointer_rankEEEvT_SB_T0_(ptr %i.li, ptr %i.lj)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN7CaDiCaL13shrink_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  tail call void @_ZN7CaDiCaL5Arena4swapEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ag)
  %i.lk = load ptr, ptr %i.e, align 8, !tbaa !187 ; 2 uses
  %.not79 = icmp eq ptr %i.lk, null
  br i1 %.not79, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 4680
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !188
  %i.ln = uitofp i64 %.063.lcssa to double
  %i.lo = add i64 %.063.lcssa, %.070.lcssa        ; 2 uses
  %i.lp = uitofp i64 %i.lo to double
  %i.lq = fmul nnan double %i.ln, 1.000000e+02
  %.not148 = icmp eq i64 %i.lo, 0
  %i.lr = fdiv double %i.lq, %i.lp
  %i.ls = select i1 %.not148, double 0.000000e+00, double %i.lr
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.lk, ptr noundef nonnull @.str, i64 noundef %i.lm, ptr noundef nonnull @.str.3, i64 noundef %.063.lcssa, double noundef %i.ls, i64 noundef %.0.lcssa)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  ret void
}

declare void @_ZN7CaDiCaL5Arena7prepareEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN7CaDiCaL8Internal12likely_phaseEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal17deallocate_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPPNS_6ClauseESt6vectorIS4_SaIS4_EEEENS_12pointer_rankEEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 11 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 10 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not117129 = icmp eq ptr %1, %0
  br label %bb.d

bb.c:                                             ; preds = %.loopexit119
  %.sroa.0110.3197.le = ptrtoaddr ptr %.sroa.0110.3 to i64
  %i.g = icmp eq ptr %.sroa.0106.2, %.sroa.0110.3
  br i1 %i.g, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.e, 8
  %i.h = sub i64 %.sroa.0110.3197.le, %i.c
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond199 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond199, label %.preheader.preheader200, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.e, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %.sroa.0110.3, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x ptr>, ptr %i.i, align 8, !tbaa !165
  %wide.load198 = load <2 x ptr>, ptr %i.j, align 8, !tbaa !165
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x ptr> %wide.load, ptr %i.k, align 8, !tbaa !165
  store <2 x ptr> %wide.load198, ptr %i.l, align 8, !tbaa !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader200

.preheader.preheader200:                          ; preds = %.preheader.preheader, %middle.block
  %.0159.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter205 = and i64 %i.e, 3                  ; 2 uses
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader200, %.preheader.prol
  %.0159.prol = phi i64 [ %i.q, %.preheader.prol ], [ %.0159.ph, %.preheader.preheader200 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader200 ]
  %i.n = getelementptr inbounds [8 x i8], ptr %.sroa.0110.3, i64 %.0159.prol
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !165
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.0159.prol
  store ptr %i.o, ptr %i.p, align 8, !tbaa !165
  %i.q = add nuw i64 %.0159.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter205
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !227

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader200
  %.0159.unr = phi i64 [ %.0159.ph, %.preheader.preheader200 ], [ %i.q, %.preheader.prol ]
  %i.r = sub nsw i64 %.0159.ph, %i.e
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.loopexit, label %.preheader

bb.d:                                             ; preds = %bb.b, %.loopexit119
  %.060158 = phi i1 [ false, %bb.b ], [ %.3, %.loopexit119 ] ; 5 uses
  %.063157 = phi i64 [ 0, %bb.b ], [ %.366, %.loopexit119 ] ; 5 uses
  %.067156 = phi i64 [ -1, %bb.b ], [ %.370, %.loopexit119 ] ; 5 uses
  %.071154 = phi i64 [ 255, %bb.b ], [ %i.dn, %.loopexit119 ] ; 3 uses
  %.076153 = phi i64 [ 0, %bb.b ], [ %i.dm, %.loopexit119 ] ; 8 uses
  %.077152 = phi i64 [ 255, %bb.b ], [ %.178, %.loopexit119 ] ; 2 uses
  %.079151 = phi i64 [ 0, %bb.b ], [ %.180, %.loopexit119 ] ; 3 uses
  %.081150 = phi i1 [ false, %bb.b ], [ true, %.loopexit119 ] ; 4 uses
  %.sroa.15.0149 = phi ptr [ null, %bb.b ], [ %.sroa.15.3, %.loopexit119 ] ; 10 uses
  %.sroa.10.0148 = phi ptr [ null, %bb.b ], [ %.sroa.10.3, %.loopexit119 ] ; 11 uses
  %.sroa.0100.0147 = phi ptr [ null, %bb.b ], [ %.sroa.0100.3, %.loopexit119 ] ; 20 uses
  %.sroa.0106.0146 = phi ptr [ %0, %bb.b ], [ %.sroa.0106.2, %.loopexit119 ] ; 8 uses
  %.sroa.0110.0145 = phi ptr [ %1, %bb.b ], [ %.sroa.0110.3, %.loopexit119 ] ; 5 uses
  br i1 %.081150, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = xor i64 %.063157, %.067156
  %i.u = and i64 %i.t, %.071154
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit119, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.079151
  %i.x = sub nsw i64 %.077152, %.079151
end_hunk_0
