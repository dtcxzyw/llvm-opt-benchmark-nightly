inline.NumInlined: 1883
inline.NumDeleted: 548
begin_hunk_0_@_ZN6Assimp3FBX12MeshGeometryC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8DocumentE:.preheader241.preheader
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 2                 ; 3 uses
  %i.fq = icmp ugt i64 %.pre-phi289, %i.fp
  br i1 %i.fq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.fr = sub nuw nsw i64 %.pre-phi289, %i.fp
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr %i.fk, i64 noundef %i.fr, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit unwind label %bb.af

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.fs = icmp ult i64 %.pre-phi289, %i.fp
  br i1 %i.fs, label %bb.ab, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.pre-phi289 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.fk, %i.ft
  br i1 %.not.i.i164, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i165

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i165:     ; preds = %bb.ab
  store ptr %i.ft, ptr %i.fj, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i165, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.fu = load ptr, ptr %i.cr, align 8            ; 4 uses
  %i.fv = load ptr, ptr %11, align 8              ; 4 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 2 uses
  %i.fz = ashr exact i64 %i.fy, 2                 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gc = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 2                 ; 3 uses
  %i.gh = icmp ugt i64 %i.fz, %i.gg
  br i1 %i.gh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.gi = sub nuw nsw i64 %i.fz, %i.gg
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.gi)
          to label %._ZNSt6vectorIjSaIjEE6resizeEm.exit170_crit_edge unwind label %bb.s

._ZNSt6vectorIjSaIjEE6resizeEm.exit170_crit_edge: ; preds = %bb.ac
  %.pre269.a = load ptr, ptr %11, align 8
  %.pre270.a = load ptr, ptr %i.cr, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit170

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.gj = icmp ult i64 %i.fz, %i.gg
  br i1 %i.gj, label %bb.ae, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit170

bb.ae:                                            ; preds = %bb.ad
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fy ; 2 uses
  %.not.i.i167 = icmp eq ptr %i.gb, %i.gk
  br i1 %.not.i.i167, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit170, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i168

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i168:     ; preds = %bb.ae
  store ptr %i.gk, ptr %i.ga, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit170

_ZNSt6vectorIjSaIjEE6resizeEm.exit170:            ; preds = %._ZNSt6vectorIjSaIjEE6resizeEm.exit170_crit_edge, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i168, %bb.ae, %bb.ad
  %i.gl = phi ptr [ %.pre270.a, %._ZNSt6vectorIjSaIjEE6resizeEm.exit170_crit_edge ], [ %i.fu, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i168 ], [ %i.fu, %bb.ae ], [ %i.fu, %bb.ad ] ; 2 uses
  %i.gm = phi ptr [ %.pre269.a, %._ZNSt6vectorIjSaIjEE6resizeEm.exit170_crit_edge ], [ %i.fv, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i168 ], [ %i.fv, %bb.ae ], [ %i.fv, %bb.ad ] ; 2 uses
  %i.gn = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.go = load ptr, ptr %10, align 8              ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = sdiv exact i64 %i.gr, 12                ; 2 uses
  %.not235244 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not235244, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit170
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  br label %bb.ag

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre271 = load ptr, ptr %i.bt, align 8         ; 2 uses
  %.pre272 = load ptr, ptr %10, align 8           ; 2 uses
  %.pre290.a = ptrtoint ptr %.pre271 to i64
  %.pre292.a = ptrtoint ptr %.pre272 to i64
  %.pre294.a = sub i64 %.pre290.a, %.pre292.a
  %.pre296 = sdiv exact i64 %.pre294.a, 12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIjSaIjEE6resizeEm.exit170
  %.pre-phi297 = phi i64 [ %.pre296, %._crit_edge.loopexit ], [ %i.gs, %_ZNSt6vectorIjSaIjEE6resizeEm.exit170 ] ; 2 uses
  %i.gv = phi ptr [ %.pre272, %._crit_edge.loopexit ], [ %i.go, %_ZNSt6vectorIjSaIjEE6resizeEm.exit170 ]
  %i.gw = phi ptr [ %.pre271, %._crit_edge.loopexit ], [ %i.gn, %_ZNSt6vectorIjSaIjEE6resizeEm.exit170 ]
  %.not261 = icmp eq ptr %i.gw, %i.gv
  br i1 %.not261, label %._crit_edge251, label %.lr.ph250.preheader

.lr.ph250.preheader:                              ; preds = %._crit_edge
  %umax = call i64 @llvm.umax.i64(i64 %.pre-phi297, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %i.gx = icmp ult i64 %.pre-phi297, 2
  br i1 %i.gx, label %.lr.ph250.epil.preheader, label %.lr.ph250.preheader.new

.lr.ph250.preheader.new:                          ; preds = %.lr.ph250.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph250

bb.af:                                            ; preds = %bb.z
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.bl

bb.ag:                                            ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.0246 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %.sroa.0226.0245 = phi ptr [ %i.gm, %.lr.ph ], [ %i.jg, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.gz = load i32, ptr %.sroa.0226.0245, align 4 ; 3 uses
  %i.ha = icmp slt i32 %i.gz, 0
  %.lobit96 = ashr i32 %i.gz, 31
  %i.hb = xor i32 %.lobit96, %i.gz
  %i.hc = sext i32 %i.hb to i64                   ; 3 uses
  %.not97 = icmp ugt i64 %i.gs, %i.hc
  br i1 %.not97, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %i.bd) #26
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

bb.al:                                            ; preds = %bb.ai
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %12, align 8              ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.al
  %i.hi = load i64, ptr %i.hg, align 8
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %bb.ak
  %.pn98 = phi { ptr, i32 } [ %i.hd, %bb.ak ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %i.he, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bl

bb.am:                                            ; preds = %bb.ag
  %i.hk = load ptr, ptr %10, align 8
  %i.hl = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %i.hc ; 2 uses
  %i.hm = load ptr, ptr %i.gt, align 8            ; 5 uses
  %i.hn = load ptr, ptr %i.df, align 8
  %.not.i = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hm, ptr noundef nonnull align 4 dereferenceable(12) %i.hl, i64 12, i1 false)
  %i.ho = load ptr, ptr %i.gt, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store ptr %i.hp, ptr %i.gt, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.ao:                                            ; preds = %bb.am
  %i.hq = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.hr = ptrtoint ptr %i.hm to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 4 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775800
  br i1 %i.hu, label %.invoke410, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke410:                                       ; preds = %bb.as, %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #26
          to label %.cont411 unwind label %.loopexit.split-lp

.cont411:                                         ; preds = %.invoke410
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ao
  %i.hv = sdiv exact i64 %i.ht, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 768614336404564650)
  %i.hz = select i1 %i.hx, i64 768614336404564650, i64 %i.hy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ia = mul nuw nsw i64 %i.hz, 12
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #27
          to label %.noexc175 unwind label %.loopexit ; 5 uses

.noexc175:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ic, ptr noundef nonnull align 4 dereferenceable(12) %i.hl, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.hq, %i.hm
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc175, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i ], [ %i.ib, %.noexc175 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i ], [ %i.hq, %.noexc175 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !47
  %i.id = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.id, %i.hm
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !46

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc175
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ib, %.noexc175 ], [ %i.ie, %.lr.ph.i.i.i.i.i ]
  %i.if = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.ht) #25
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ap, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ib, ptr %i.h, align 8
  store ptr %i.if, ptr %i.gt, align 8
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr %i.ib, i64 %i.hz
  store ptr %i.ig, ptr %i.df, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.an
  %i.ih = add i32 %.0246, 1                       ; 3 uses
  %i.ii = load ptr, ptr %i.ad, align 8
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.hc ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4
  br i1 %i.ha, label %bb.aq, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.aq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.im = load ptr, ptr %i.gu, align 8            ; 3 uses
  %i.in = load ptr, ptr %i.eb, align 8
  %.not.i176 = icmp eq ptr %i.im, %i.in
  br i1 %.not.i176, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.ih, ptr %i.im, align 4
  %i.io = load ptr, ptr %i.gu, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store ptr %i.ip, ptr %i.gu, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.as:                                            ; preds = %bb.aq
  %i.iq = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.ir = ptrtoint ptr %i.im to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is                    ; 6 uses
  %i.iu = icmp eq i64 %i.it, 9223372036854775804
  br i1 %i.iu, label %.invoke410, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.iv = ashr exact i64 %i.it, 2                 ; 3 uses
  %.sroa.speculated.i.i.i177 = call i64 @llvm.umax.i64(i64 %i.iv, i64 1)
  %i.iw = add nsw i64 %.sroa.speculated.i.i.i177, %i.iv ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.iv
  %i.iy = call i64 @llvm.umin.i64(i64 %i.iw, i64 2305843009213693951)
  %i.iz = select i1 %i.ix, i64 2305843009213693951, i64 %i.iy ; 3 uses
  %.not.i.i.i178 = icmp ne i64 %i.iz, 0
  call void @llvm.assume(i1 %.not.i.i.i178)
  %i.ja = shl nuw nsw i64 %i.iz, 2
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #27
          to label %.noexc180 unwind label %.loopexit ; 4 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 %i.it ; 2 uses
  store i32 %i.ih, ptr %i.jc, align 4
  %i.jd = icmp sgt i64 %i.it, 0
  br i1 %i.jd, label %bb.at, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.at:                                            ; preds = %.noexc180
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jb, ptr align 4 %i.iq, i64 %i.it, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.at, %.noexc180
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %.not.i17.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.it) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.au, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.jb, ptr %i.i, align 8
  store ptr %i.je, ptr %i.gu, align 8
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.iz
  store ptr %i.jf, ptr %i.eb, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp:                               ; preds = %.invoke410
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.ar, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.1 = phi i32 [ %i.ih, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ 0, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ 0, %bb.ar ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0226.0245, i64 4 ; 2 uses
  %.not235.a = icmp eq ptr %i.jg, %i.gl
  br i1 %.not235.a, label %._crit_edge.loopexit, label %bb.ag

._crit_edge251.loopexit.unr-lcssa:                ; preds = %.lr.ph250
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge251, label %.lr.ph250.epil.preheader

.lr.ph250.epil.preheader:                         ; preds = %._crit_edge251.loopexit.unr-lcssa, %.lr.ph250.preheader
  %.065248.epil.init = phi i32 [ 0, %.lr.ph250.preheader ], [ %i.jz, %._crit_edge251.loopexit.unr-lcssa ]
  %.067247.epil.init = phi i64 [ 0, %.lr.ph250.preheader ], [ %i.ka, %._crit_edge251.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod418 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod418)
  %i.jh = load ptr, ptr %i.ae, align 8
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.067247.epil.init
  store i32 %.065248.epil.init, ptr %i.ji, align 4
  %i.jj = load ptr, ptr %i.ad, align 8
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.067247.epil.init
  store i32 0, ptr %i.jk, align 4
  br label %._crit_edge251

._crit_edge251:                                   ; preds = %.lr.ph250.epil.preheader, %._crit_edge251.loopexit.unr-lcssa, %._crit_edge
  %i.jl = load ptr, ptr %11, align 8              ; 2 uses
  %i.jm = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not236252 = icmp eq ptr %i.jl, %i.jm
  br i1 %.not236252, label %.preheader239, label %.lr.ph256

.lr.ph250:                                        ; preds = %.lr.ph250, %.lr.ph250.preheader.new
  %.065248 = phi i32 [ 0, %.lr.ph250.preheader.new ], [ %i.jz, %.lr.ph250 ] ; 2 uses
  %.067247 = phi i64 [ 0, %.lr.ph250.preheader.new ], [ %i.ka, %.lr.ph250 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph250.preheader.new ], [ %niter.next.1, %.lr.ph250 ]
  %i.jn = load ptr, ptr %i.ae, align 8
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %.067247
  store i32 %.065248, ptr %i.jo, align 4
  %i.jp = load ptr, ptr %i.ad, align 8
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.067247 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = add i32 %i.jr, %.065248                 ; 2 uses
  store i32 0, ptr %i.jq, align 4
  %i.jt = or disjoint i64 %.067247, 1             ; 2 uses
  %i.ju = load ptr, ptr %i.ae, align 8
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.jt
  store i32 %i.js, ptr %i.jv, align 4
  %i.jw = load ptr, ptr %i.ad, align 8
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jt ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = add i32 %i.jy, %i.js                    ; 2 uses
  store i32 0, ptr %i.jx, align 4
  %i.ka = add nuw i64 %.067247, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge251.loopexit.unr-lcssa, label %.lr.ph250, !llvm.loop !51

.preheader239:                                    ; preds = %.lr.ph256, %._crit_edge251
  %.not237257 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not237257, label %._crit_edge260, label %.lr.ph259

.lr.ph256:                                        ; preds = %._crit_edge251, %.lr.ph256
  %.166254 = phi i32 [ %i.kd, %.lr.ph256 ], [ 0, %._crit_edge251 ] ; 2 uses
  %.sroa.0222.0253 = phi ptr [ %i.kq, %.lr.ph256 ], [ %i.jl, %._crit_edge251 ] ; 2 uses
  %i.kb = load i32, ptr %.sroa.0222.0253, align 4 ; 2 uses
  %.lobit = ashr i32 %i.kb, 31
  %i.kc = xor i32 %.lobit, %i.kb
  %i.kd = add i32 %.166254, 1
  %i.ke = sext i32 %i.kc to i64                   ; 2 uses
  %i.kf = load ptr, ptr %i.ae, align 8
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.ke
  %i.kh = load i32, ptr %i.kg, align 4
  %i.ki = load ptr, ptr %i.ad, align 8
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.ke ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4            ; 2 uses
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4
  %i.km = add i32 %i.kk, %i.kh
  %i.kn = zext i32 %i.km to i64
  %i.ko = load ptr, ptr %i.af, align 8
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kn
  store i32 %.166254, ptr %i.kp, align 4
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0222.0253, i64 4 ; 2 uses
  %.not236 = icmp eq ptr %i.kq, %i.jm
  br i1 %.not236, label %.preheader239, label %.lr.ph256

._crit_edge260:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit, %.preheader239
  %i.kr = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge260
  %i.ks = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.kr to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.kw) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge260, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.kx = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.kx to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lc) #25
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret void

.lr.ph259:                                        ; preds = %.preheader239, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit
  %.sroa.0.0258 = phi ptr [ %i.md, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit ], [ %i.bm, %.preheader239 ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 64 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = invoke noundef i32 @_ZN6Assimp3FBX15ParseTokenAsIntERKNS0_5TokenERPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.lh, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %.lr.ph259
  %i.lj = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not92 = icmp eq ptr %i.lj, null
  br i1 %.not92, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %i.lj, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %2) #26
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %.noexc188, %.noexc187.a, %bb.bj, %bb.bi, %.lr.ph259
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bc:                                            ; preds = %bb.ay
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.bd:                                            ; preds = %bb.az
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ln = load ptr, ptr %14, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !137

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4
  store i32 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec129 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec129, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.aj = shl i64 %index133, 2
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %broadcast.splat131, ptr %next.gep134, align 4
  store <4 x i32> %broadcast.splat131, ptr %i.ak, align 4
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.al, label %middle.block136, label %vector.body132, !llvm.loop !138

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block136
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block136 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !139

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !141

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !137

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader153, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph113
  %index119 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !142

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader153

.lr.ph.i.i.i71.preheader153:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader153, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader153 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !143

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #26
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %4 = add nsw i64 %.sroa.speculated.i, %i.bt     ; 2 uses
  %5 = icmp ult i64 %4, %i.bt
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 2305843009213693951)
  %7 = select i1 %5, i64 2305843009213693951, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64                     ; 2 uses
  %9 = sub i64 %8, %i.br                          ; 4 uses
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %bb.s, label %10

10:                                               ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #27
  br label %bb.s

bb.s:                                             ; preds = %10, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %13, i64 %9 ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i75
  %i.by = load i32, ptr %3, align 4               ; 2 uses
  %i.bz = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ca = lshr exact i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check140 = icmp ult i64 %i.bz, 28
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %bb.s
  %n.vec143 = and i64 %i.cb, 9223372036854775800  ; 3 uses
  %i.cc = shl i64 %n.vec143, 2
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.ce = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x i32> %broadcast.splat145, ptr %next.gep148, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.cf, align 4
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.cg, label %middle.block150, label %vector.body146, !llvm.loop !144

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.cb, %n.vec143
  br i1 %cmp.n151, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.s, %middle.block150
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.bw, %bb.s ], [ %i.cd, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.by, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ch, %i.bx
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !145

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block150
  %i.ci = icmp sgt i64 %9, 4
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !137

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %i.bq, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cj = icmp eq i64 %9, 4
  br i1 %i.cj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load i32, ptr %i.bq, align 4
  store i32 %i.ck, ptr %13, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %2 ; 3 uses
  %i.cm = sub i64 %i.f, %8                        ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, 4
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !137

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %1, i64 %i.cm, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.co = icmp eq i64 %i.cm, 4
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load i32, ptr %1, align 4
  store i32 %i.cp, ptr %i.cl, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cr) #25
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.z, %bb.aa
  store ptr %13, ptr %0, align 8
  store ptr %i.cq, ptr %i.c, align 8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %7
  store ptr %i.cs, ptr %i.a, align 8
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block136, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJPKcRA36_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #24
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA36_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(36) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA36_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(36) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %3) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(36) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !158
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !158
  store i8 0, ptr %i.c, align 8, !alias.scope !158
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !158 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !158 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !158 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !158 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !158
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
end_hunk_1
