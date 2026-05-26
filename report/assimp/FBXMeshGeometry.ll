inline.NumInlined: 1883
inline.NumDeleted: 548
begin_hunk_0_@_ZN6Assimp3FBX12MeshGeometryC2EmRKNS0_7ElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8DocumentE:.preheader241.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i32 0, ptr %i.e, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8            ; 3 uses
  %i.fl = load ptr, ptr %i.ad, align 8            ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
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
  %.pre269 = load ptr, ptr %11, align 8
  %.pre270 = load ptr, ptr %i.cr, align 8
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
  %i.gl = phi ptr [ %.pre270, %._ZNSt6vectorIjSaIjEE6resizeEm.exit170_crit_edge ], [ %i.fu, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i168 ], [ %i.fu, %bb.ae ], [ %i.fu, %bb.ad ] ; 2 uses
  %i.gm = phi ptr [ %.pre269, %._ZNSt6vectorIjSaIjEE6resizeEm.exit170_crit_edge ], [ %i.fv, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i168 ], [ %i.fv, %bb.ae ], [ %i.fv, %bb.ad ] ; 2 uses
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
  %.pre290 = ptrtoint ptr %.pre271 to i64
  %.pre292 = ptrtoint ptr %.pre272 to i64
  %.pre294 = sub i64 %.pre290, %.pre292
  %.pre296 = sdiv exact i64 %.pre294, 12
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.bl

bb.ag:                                            ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.0246 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %.sroa.0226.0245 = phi ptr [ %i.gm, %.lr.ph ], [ %i.jc, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.gz = load i32, ptr %.sroa.0226.0245, align 4 ; 3 uses
  %i.ha = icmp slt i32 %i.gz, 0
  %.lobit96 = ashr i32 %i.gz, 31
  %i.hb = xor i32 %.lobit96, %i.gz
  %i.hc = sext i32 %i.hb to i64                   ; 3 uses
  %.not97 = icmp ugt i64 %i.gs, %i.hc
  br i1 %.not97, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %i.bd) #27
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
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %bb.ak
  %.pn98 = phi { ptr, i32 } [ %i.hd, %bb.ak ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %i.he, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #27
          to label %.cont411 unwind label %.loopexit.split-lp

.cont411:                                         ; preds = %.invoke410
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ao
  %i.hv = sdiv exact i64 %i.ht, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i, %i.hv ; 2 uses
  %16 = icmp ult i64 %i.hw, %i.hv
  %i.hx = call i64 @llvm.umin.i64(i64 %i.hw, i64 768614336404564650)
  %17 = select i1 %16, i64 768614336404564650, i64 %i.hx ; 3 uses
  %.not.i.i.i = icmp ne i64 %17, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hy = mul nuw nsw i64 %17, 12
  %i.hz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #28
          to label %.noexc175 unwind label %.loopexit ; 5 uses

.noexc175:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ia, ptr noundef nonnull align 4 dereferenceable(12) %i.hl, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.hq, %i.hm
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc175, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i ], [ %i.hz, %.noexc175 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i ], [ %i.hq, %.noexc175 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !47
  %i.ib = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ib, %i.hm
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !46

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc175
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hz, %.noexc175 ], [ %i.ic, %.lr.ph.i.i.i.i.i ]
  %i.id = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.ht) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ap, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.hz, ptr %i.h, align 8
  store ptr %i.id, ptr %i.gt, align 8
  %i.ie = getelementptr inbounds nuw [12 x i8], ptr %i.hz, i64 %17
  store ptr %i.ie, ptr %i.df, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.an
  %i.if = add i32 %.0246, 1                       ; 3 uses
  %i.ig = load ptr, ptr %i.ad, align 8
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.hc ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 4
  br i1 %i.ha, label %bb.aq, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.aq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.ik = load ptr, ptr %i.gu, align 8            ; 3 uses
  %i.il = load ptr, ptr %i.eb, align 8
  %.not.i176 = icmp eq ptr %i.ik, %i.il
  br i1 %.not.i176, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.if, ptr %i.ik, align 4
  %i.im = load ptr, ptr %i.gu, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store ptr %i.in, ptr %i.gu, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.as:                                            ; preds = %bb.aq
  %i.io = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.ip = ptrtoint ptr %i.ik to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 6 uses
  %i.is = icmp eq i64 %i.ir, 9223372036854775804
  br i1 %i.is, label %.invoke410, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.it = ashr exact i64 %i.ir, 2                 ; 3 uses
  %.sroa.speculated.i.i.i177 = call i64 @llvm.umax.i64(i64 %i.it, i64 1)
  %i.iu = add nsw i64 %.sroa.speculated.i.i.i177, %i.it ; 2 uses
  %18 = icmp ult i64 %i.iu, %i.it
  %i.iv = call i64 @llvm.umin.i64(i64 %i.iu, i64 2305843009213693951)
  %19 = select i1 %18, i64 2305843009213693951, i64 %i.iv ; 3 uses
  %.not.i.i.i178 = icmp ne i64 %19, 0
  call void @llvm.assume(i1 %.not.i.i.i178)
  %i.iw = shl nuw nsw i64 %19, 2
  %i.ix = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #28
          to label %.noexc180 unwind label %.loopexit ; 4 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 %i.ir ; 2 uses
  store i32 %i.if, ptr %i.iy, align 4
  %i.iz = icmp sgt i64 %i.ir, 0
  br i1 %i.iz, label %bb.at, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.at:                                            ; preds = %.noexc180
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ix, ptr align 4 %i.io, i64 %i.ir, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.at, %.noexc180
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %.not.i17.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.ir) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.au, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ix, ptr %i.i, align 8
  store ptr %i.ja, ptr %i.gu, align 8
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %19
  store ptr %i.jb, ptr %i.eb, align 8
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
  %.1 = phi i32 [ %i.if, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ 0, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ 0, %bb.ar ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0226.0245, i64 4 ; 2 uses
  %.not235 = icmp eq ptr %i.jc, %i.gl
  br i1 %.not235, label %._crit_edge.loopexit, label %bb.ag

._crit_edge251.loopexit.unr-lcssa:                ; preds = %.lr.ph250
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge251, label %.lr.ph250.epil.preheader

.lr.ph250.epil.preheader:                         ; preds = %._crit_edge251.loopexit.unr-lcssa, %.lr.ph250.preheader
  %.065248.epil.init = phi i32 [ 0, %.lr.ph250.preheader ], [ %i.jv, %._crit_edge251.loopexit.unr-lcssa ]
  %.067247.epil.init = phi i64 [ 0, %.lr.ph250.preheader ], [ %i.jw, %._crit_edge251.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod418 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod418)
  %i.jd = load ptr, ptr %i.ae, align 8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %.067247.epil.init
  store i32 %.065248.epil.init, ptr %i.je, align 4
  %i.jf = load ptr, ptr %i.ad, align 8
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %.067247.epil.init
  store i32 0, ptr %i.jg, align 4
  br label %._crit_edge251

._crit_edge251:                                   ; preds = %.lr.ph250.epil.preheader, %._crit_edge251.loopexit.unr-lcssa, %._crit_edge
  %i.jh = load ptr, ptr %11, align 8              ; 2 uses
  %i.ji = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not236252 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not236252, label %.preheader239, label %.lr.ph256

.lr.ph250:                                        ; preds = %.lr.ph250, %.lr.ph250.preheader.new
  %.065248 = phi i32 [ 0, %.lr.ph250.preheader.new ], [ %i.jv, %.lr.ph250 ] ; 2 uses
  %.067247 = phi i64 [ 0, %.lr.ph250.preheader.new ], [ %i.jw, %.lr.ph250 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph250.preheader.new ], [ %niter.next.1, %.lr.ph250 ]
  %i.jj = load ptr, ptr %i.ae, align 8
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.067247
  store i32 %.065248, ptr %i.jk, align 4
  %i.jl = load ptr, ptr %i.ad, align 8
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %.067247 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = add i32 %i.jn, %.065248                 ; 2 uses
  store i32 0, ptr %i.jm, align 4
  %i.jp = or disjoint i64 %.067247, 1             ; 2 uses
  %i.jq = load ptr, ptr %i.ae, align 8
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jp
  store i32 %i.jo, ptr %i.jr, align 4
  %i.js = load ptr, ptr %i.ad, align 8
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jp ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = add i32 %i.ju, %i.jo                    ; 2 uses
  store i32 0, ptr %i.jt, align 4
  %i.jw = add nuw i64 %.067247, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge251.loopexit.unr-lcssa, label %.lr.ph250, !llvm.loop !51

.preheader239:                                    ; preds = %.lr.ph256, %._crit_edge251
  %.not237257 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not237257, label %._crit_edge260, label %.lr.ph259

.lr.ph256:                                        ; preds = %._crit_edge251, %.lr.ph256
  %.166254 = phi i32 [ %i.jz, %.lr.ph256 ], [ 0, %._crit_edge251 ] ; 2 uses
  %.sroa.0222.0253 = phi ptr [ %i.km, %.lr.ph256 ], [ %i.jh, %._crit_edge251 ] ; 2 uses
  %i.jx = load i32, ptr %.sroa.0222.0253, align 4 ; 2 uses
  %.lobit = ashr i32 %i.jx, 31
  %i.jy = xor i32 %.lobit, %i.jx
  %i.jz = add i32 %.166254, 1
  %i.ka = sext i32 %i.jy to i64                   ; 2 uses
  %i.kb = load ptr, ptr %i.ae, align 8
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.ka
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = load ptr, ptr %i.ad, align 8
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.ka ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4            ; 2 uses
  %i.kh = add i32 %i.kg, 1
  store i32 %i.kh, ptr %i.kf, align 4
  %i.ki = add i32 %i.kg, %i.kd
  %i.kj = zext i32 %i.ki to i64
  %i.kk = load ptr, ptr %i.af, align 8
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.kj
  store i32 %.166254, ptr %i.kl, align 4
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0222.0253, i64 4 ; 2 uses
  %.not236 = icmp eq ptr %i.km, %i.ji
  br i1 %.not236, label %.preheader239, label %.lr.ph256

._crit_edge260:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit, %.preheader239
  %i.kn = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge260
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.ks) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge260, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.kt = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ky) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void

.lr.ph259:                                        ; preds = %.preheader239, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit
  %.sroa.0.0258 = phi ptr [ %i.lz, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA36_KcEEEvDpOT_.exit ], [ %i.bm, %.preheader239 ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.0258, i64 64 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = invoke noundef i32 @_ZN6Assimp3FBX15ParseTokenAsIntERKNS0_5TokenERPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.ld, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %.lr.ph259
  %i.lf = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not92 = icmp eq ptr %i.lf, null
  br i1 %.not92, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %i.lf, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %2) #27
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %.noexc188, %.noexc187, %bb.bj, %bb.bi, %.lr.ph259
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bc:                                            ; preds = %bb.ay
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.bd:                                            ; preds = %bb.az
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = load ptr, ptr %14, align 8              ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.bd
  %i.lm = load i64, ptr %i.lk, align 8
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.bc
  %.pn93 = phi { ptr, i32 } [ %i.lh, %bb.bc ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.li, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bk

bb.be:                                            ; preds = %bb.ax
  %i.lo = load ptr, ptr %4, align 8, !nonnull !52
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !range !53, !noundef !52
  %i.lr = trunc nuw i8 %i.lq to i1
  %i.ls = icmp eq i32 %i.le, 0
  %or.cond = or i1 %i.ls, %i.lr
  br i1 %or.cond, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.lt = load ptr, ptr %i.kz, align 8
end_hunk_0
