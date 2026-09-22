Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Frontend?download=true
inline.NumInlined: 11237
inline.NumDeleted: 5660
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4Luau8Frontend14getCheckResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb:bb.a
_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EEaSEOS3_.exit
  %i.kj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.js, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i
  %i.kk = load ptr, ptr %i.iy, align 16, !tbaa !521
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.kj to i64
  %i.kn = sub i64 %i.kl, %i.km
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef %i.kn) #36
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.bj

bb.bh:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !514
  %i.kq = load ptr, ptr %13, align 8, !tbaa !247  ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 856
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !514
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 864
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !514
  %i.kv = load ptr, ptr %15, align 16, !tbaa !514 ; 2 uses
  %i.kw = ptrtoint ptr %i.kp to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = getelementptr inbounds i8, ptr %i.kv, i64 %i.ky
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.kz, ptr %i.ks, ptr %i.ku)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit
  %i.lb = load ptr, ptr %13, align 8, !tbaa !247  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 880
  %i.ld = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.le = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau11LintWarningESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ld, ptr noundef nonnull align 8 dereferenceable(48) %i.lc)
          to label %.noexc44 unwind label %bb.k   ; 0 uses

.noexc44:                                         ; preds = %bb.bj
  %i.lf = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 904
  %i.lh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau11LintWarningESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noundef nonnull align 8 dereferenceable(24) %i.lg)
          to label %_ZN4Luau10LintResultaSERKS0_.exit unwind label %bb.k ; 0 uses

_ZN4Luau10LintResultaSERKS0_.exit:                ; preds = %.noexc44
  %i.li = load <2 x ptr>, ptr %15, align 16, !tbaa !514
  store <2 x ptr> %i.li, ptr %0, align 8, !tbaa !514
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ll = load ptr, ptr %i.lk, align 16, !tbaa !521
  store ptr %i.ll, ptr %i.lj, align 8, !tbaa !521
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %15, i8 0, i64 24, i1 false)
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ln = load <2 x ptr>, ptr %i.ld, align 8, !tbaa !522
  store <2 x ptr> %i.ln, ptr %i.lm, align 8, !tbaa !522
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lp = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !523
  store ptr %i.lq, ptr %i.lo, align 8, !tbaa !523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ld, i8 0, i64 24, i1 false)
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ls = load <2 x ptr>, ptr %i.lf, align 16, !tbaa !522
  store <2 x ptr> %i.ls, ptr %i.lr, align 8, !tbaa !522
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lu = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.lv = load ptr, ptr %i.lu, align 16, !tbaa !523
  store ptr %i.lv, ptr %i.lt, align 8, !tbaa !523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.lf, i8 0, i64 24, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lx = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 2 uses
  %i.ly = load <2 x ptr>, ptr %i.lx, align 8, !tbaa !509
  store <2 x ptr> %i.ly, ptr %i.lw, align 8, !tbaa !509
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ma = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !245
  store ptr %i.mb, ptr %i.lz, align 8, !tbaa !245
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, i8 0, i64 24, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.mc, align 8, !tbaa !431
  call void @_ZN4Luau11CheckResultD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.md = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !231 ; 8 uses
  %.not.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN4Luau10LintResultaSERKS0_.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 4 uses
  %i.mg = load atomic i64, ptr %i.mf acquire, align 8 ; 2 uses
  %i.mh = icmp eq i64 %i.mg, 4294967297
  %i.mi = trunc i64 %i.mg to i32                  ; 2 uses
  br i1 %i.mh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.mf, align 8, !tbaa !233
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 12
  store i32 0, ptr %i.mj, align 4, !tbaa !234
  %i.mk = load ptr, ptr %i.me, align 8, !tbaa !236
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(16) %i.me) #34, !inline_history !8
  %i.mn = load ptr, ptr %i.me, align 8, !tbaa !236
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(16) %i.me) #34, !inline_history !8
  br label %_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bm:                                            ; preds = %bb.bk
  %i.mq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !220
  %.not.i.i.i46 = icmp eq i8 %i.mq, 0
  br i1 %.not.i.i.i46, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mr = add nsw i32 %i.mi, -1
  store i32 %i.mr, ptr %i.mf, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.ms = atomicrmw volatile add ptr %i.mf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i = phi i32 [ %i.mi, %bb.bn ], [ %i.ms, %bb.bo ]
  %i.mt = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.mt, label %bb.bp, label %_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !120

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.me) #34
  br label %_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4Luau10LintResultaSERKS0_.exit, %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bi, %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %.pn32.pn.pn.pn.pn.pn.pn.i, %.body ], [ %i.la, %bb.bi ]
  call void @_ZN4Luau11CheckResultD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.br

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.bq
  %.pn23.pn = phi { ptr, i32 } [ %.pn2353, %bb.h ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.bq ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  resume { ptr, i32 } %.pn23.pn

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.critedge
  ret void

bb.bt:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS7_RKNS_15TypeCheckLimitsEbSt8functionIFbSC_EE(ptr noundef nonnull align 8 dereferenceable(2184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, ptr noundef align 8 %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.Luau::DenseHashMap.446", align 8 ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.d = tail call { ptr, ptr } @_ZN4Luau8Frontend13getSourceNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_15TypeCheckLimitsE(ptr noundef nonnull align 8 dereferenceable(2184) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154, label %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.a
  %i.f = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %.lr.ph511 unwind label %bb.b  ; 3 uses

bb.b:                                             ; preds = %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159

.lr.ph511:                                        ; preds = %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %i.e, ptr %i.f, align 8, !tbaa !524
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %.in.in.v.i = select i1 %4, i64 242, i64 241
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph511, %.loopexit313
  %.042510 = phi i1 [ false, %.lr.ph511 ], [ %.345, %.loopexit313 ] ; 9 uses
  %.sroa.0255.1509 = phi ptr [ %i.f, %.lr.ph511 ], [ %.sroa.0255.9, %.loopexit313 ] ; 15 uses
  %.sroa.15.1508 = phi ptr [ %i.h, %.lr.ph511 ], [ %.sroa.15.5, %.loopexit313 ] ; 2 uses
  %.sroa.14.0507 = phi ptr [ null, %.lr.ph511 ], [ %.sroa.14.1, %.loopexit313 ] ; 14 uses
  %.sroa.8.0506 = phi ptr [ null, %.lr.ph511 ], [ %.sroa.8.1, %.loopexit313 ] ; 5 uses
  %.sroa.0247.0505 = phi ptr [ null, %.lr.ph511 ], [ %.sroa.0247.1, %.loopexit313 ] ; 16 uses
  %.sroa.31.1504 = phi ptr [ %i.h, %.lr.ph511 ], [ %.sroa.31.9, %.loopexit313 ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.s = getelementptr inbounds i8, ptr %.sroa.15.1508, i64 -8 ; 8 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !524  ; 10 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !524
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %.sroa.8.0506, i64 -8 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !524  ; 17 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !524
  %i.x = invoke fastcc noundef nonnull align 4 dereferenceable(4) ptr @_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.x, align 4, !tbaa !220
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !244  ; 8 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !245
  %.not.i67 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i67, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !219
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !141 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !140 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !218
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc68 unwind label %bb.j   ; 2 uses

.noexc68:                                         ; preds = %.noexc.i.i
  store ptr %i.af, ptr %i.y, align 8, !tbaa !141
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !218
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !220
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc68, %bb.f
  %i.ah = phi ptr [ %i.af, %.noexc68 ], [ %i.aa, %bb.f ] ; 2 uses
  switch i64 %i.ad, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !220
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !220
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !218 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !140
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !141
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ao, ptr %i.q, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.i:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.j

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 88 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !512 ; 5 uses
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %.loopexit314, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !513 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.av = load i64, ptr %i.au, align 8, !tbaa !140
  %.fr1.i = freeze i64 %i.av                      ; 3 uses
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = icmp eq i64 %.fr1.i, 0
  br i1 %i.ax, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i
  %.05.i.us.i = phi i64 [ %i.bc, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.05.i.us.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !140
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i, label %.loopexit314

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.bc = add nuw i64 %.05.i.us.i, 1              ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.bc, %i.ar
  br i1 %exitcond.not.i.us.i, label %.loopexit313, label %.lr.ph.i.split.us.i, !llvm.loop !17

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i
  %.05.i.i = phi i64 [ %i.bj, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.05.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !140
  %i.bg = icmp eq i64 %i.bf, %.fr1.i
  br i1 %i.bg, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, label %.loopexit314

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !141
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bh, ptr %i.aw, i64 %.fr1.i)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bi, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i, label %.loopexit314

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.bj = add nuw i64 %.05.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bj, %i.ar
  br i1 %exitcond.not.i.i, label %.loopexit313, label %.lr.ph.i.split.i, !llvm.loop !17

.loopexit314:                                     ; preds = %.lr.ph.i.split.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %.lr.ph.i.split.us.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.0.lcssa.i.i = phi i64 [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %.05.i.us.i, %.lr.ph.i.split.us.i ], [ %.05.i.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %.05.i.i, %.lr.ph.i.split.i ] ; 2 uses
  %.not298501 = icmp eq i64 %.0.lcssa.i.i, %i.ar
  br i1 %.not298501, label %.loopexit313, label %.lr.ph503

.lr.ph503:                                        ; preds = %.loopexit314
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.noexc.i.i, %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.k:                                             ; preds = %.lr.ph503, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit
  %.sroa.7240.0502 = phi i64 [ %.0.lcssa.i.i, %.lr.ph503 ], [ %.sroa.7240.2, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ] ; 2 uses
  %i.bo = load ptr, ptr %i.ap, align 8, !tbaa !513
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %.sroa.7240.0502 ; 5 uses
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !525
  %.not.i162 = icmp ugt i64 %i.bq, 20
  br i1 %.not.i162, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.06.016.i = load ptr, ptr %i.k, align 8, !tbaa !272 ; 3 uses
  %.not1117.i = icmp eq ptr %.sroa.06.016.i, null
  br i1 %.not1117.i, label %_ZN4Luau3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6insertERKS6_.exit, label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !140
  %.fr24.i = freeze i64 %i.bs                     ; 3 uses
  %i.bt = icmp eq i64 %.fr24.i, 0
  %i.bu = load ptr, ptr %i.bp, align 8
  br i1 %i.bt, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i163, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us.i
  %.sroa.06.018.us.i = phi ptr [ %.sroa.06.0.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us.i ], [ %.sroa.06.016.i, %.lr.ph.i163 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !140
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.06.0.us.i = load ptr, ptr %.sroa.06.018.us.i, align 8, !tbaa !272 ; 2 uses
  %.not11.us.i = icmp eq ptr %.sroa.06.0.us.i, null
  br i1 %.not11.us.i, label %_ZN4Luau3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6insertERKS6_.exit, label %.lr.ph.split.us.i, !llvm.loop !18

.lr.ph.split.i:                                   ; preds = %.lr.ph.i163, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.i
  %.sroa.06.018.i = phi ptr [ %.sroa.06.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.i ], [ %.sroa.06.016.i, %.lr.ph.i163 ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !140
  %i.ca = icmp eq i64 %.fr24.i, %i.bz
  br i1 %i.ca, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i: ; preds = %.lr.ph.split.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !141
  %bcmp.i.i.i.i164 = call i32 @bcmp(ptr %i.bu, ptr %i.cc, i64 %.fr24.i)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i164, 0
  br i1 %i.cd, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.i, %.lr.ph.split.i
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.018.i, align 8, !tbaa !272 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not11.i, label %_ZN4Luau3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6insertERKS6_.exit, label %.lr.ph.split.i, !llvm.loop !18

bb.m:                                             ; preds = %bb.k
  %i.ce = load ptr, ptr %i.bp, align 8, !tbaa !141
end_hunk_0
begin_hunk_1_@_ZN4Luau8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS7_RKNS_15TypeCheckLimitsEbSt8functionIFbSC_EE:bb.a

bb.w:                                             ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread28.i170
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #35
  unreachable

bb.x:                                             ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread30.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.preheader.i171
  %.pn.i172 = phi i64 [ %i.ej, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.preheader.i171 ], [ %i.fd, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread30.i ]
  %.01835.i = phi i64 [ 0, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.preheader.i171 ], [ %i.fc, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread30.i ]
  %.01936.i = and i64 %.pn.i172, %i.ei            ; 2 uses
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %i.ek, i64 %.01936.i ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !140 ; 4 uses
  %i.es = icmp eq i64 %i.er, %i.el
  br i1 %i.es, label %bb.y, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit25.thread29.i

bb.y:                                             ; preds = %bb.x
  br i1 %i.em, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit25.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit25.i: ; preds = %bb.y
  %i.et = load ptr, ptr %i.w, align 8, !tbaa !141
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !141
  %bcmp.i.i24.i = call i32 @bcmp(ptr %i.eu, ptr %i.et, i64 %i.el)
  %i.ev = icmp eq i32 %bcmp.i.i24.i, 0
  br i1 %i.ev, label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit25.thread29.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit25.thread29.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit25.i, %bb.x
  %i.ew = load i64, ptr %i.ea, align 8, !tbaa !140
  %i.ex = icmp eq i64 %i.er, %i.ew
  br i1 %i.ex, label %bb.z, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread30.i

bb.z:                                             ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit25.thread29.i
  %i.ey = icmp eq i64 %i.er, 0
  br i1 %i.ey, label %.loopexit, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i175

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i175: ; preds = %bb.z
  %i.ez = load ptr, ptr %i.dy, align 8, !tbaa !141
  %i.fa = load ptr, ptr %i.ep, align 8, !tbaa !141
  %bcmp.i.i26.i176 = call i32 @bcmp(ptr %i.fa, ptr %i.ez, i64 %i.er)
  %i.fb = icmp eq i32 %bcmp.i.i26.i176, 0
  br i1 %i.fb, label %.loopexit, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread30.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread30.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i175, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit25.thread29.i
  %i.fc = add i64 %.01835.i, 1                    ; 3 uses
  %i.fd = add i64 %i.fc, %.01936.i
  %.not.i173 = icmp ugt i64 %i.fc, %i.ei
  br i1 %.not.i173, label %.loopexit, label %bb.x, !llvm.loop !20

.loopexit:                                        ; preds = %bb.z, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i175, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread30.i, %bb.v, %bb.t, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i177
  invoke void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_bES8_IKS7_bENS0_16ItemInterfaceMapIS7_bEESt4hashIS7_ESt8equal_toIS7_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dq)
          to label %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.i unwind label %bb.af

_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.i: ; preds = %bb.y, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit25.i, %.loopexit, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit
  %i.fe = load i64, ptr %i.dt, align 8, !tbaa !532
  %i.ff = add i64 %i.fe, -1                       ; 2 uses
  %i.fg = load ptr, ptr %i.w, align 8, !tbaa !141
  %i.fh = load i64, ptr %i.bk, align 8, !tbaa !140
  %i.fi = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.fg, i64 noundef %i.fh, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.preheader.i unwind label %bb.aa

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.preheader.i: ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.i
  %i.fj = load ptr, ptr %i.dq, align 8, !tbaa !533
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dp, i64 192
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dp, i64 200
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !140 ; 3 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN4Luau12DenseHashMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS6_ESt8equal_toIS6_EEixERKS6_.exit.i
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #35
  unreachable

bb.ab:                                            ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread29.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.preheader.i
  %.pn.i = phi i64 [ %i.fi, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.preheader.i ], [ %i.gg, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread29.i ]
  %.02034.i = phi i64 [ 0, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit.preheader.i ], [ %i.gf, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread29.i ]
  %.02135.i = and i64 %.pn.i, %i.ff               ; 2 uses
  %i.fq = getelementptr inbounds nuw [40 x i8], ptr %i.fj, i64 %.02135.i ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !140 ; 4 uses
  %i.ft = icmp eq i64 %i.fs, %i.fm
  br i1 %i.ft, label %bb.ac, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread28.i

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.fn, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %bb.ac
  %i.fu = load ptr, ptr %i.fk, align 8, !tbaa !141
  %i.fv = load ptr, ptr %i.fq, align 8, !tbaa !141
  %bcmp.i.i.i167 = call i32 @bcmp(ptr %i.fv, ptr %i.fu, i64 %i.fm)
  %i.fw = icmp eq i32 %bcmp.i.i.i167, 0
  br i1 %i.fw, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread28.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.ac
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(33) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %.noexc168 unwind label %bb.af

.noexc168:                                        ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i
  %i.fx = load i64, ptr %i.dr, align 8, !tbaa !531
  %i.fy = add i64 %i.fx, 1
  store i64 %i.fy, ptr %i.dr, align 8, !tbaa !531
  br label %.noexc77

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread28.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.ab
  %i.fz = load i64, ptr %i.bk, align 8, !tbaa !140
  %i.ga = icmp eq i64 %i.fs, %i.fz
  br i1 %i.ga, label %bb.ad, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread29.i

bb.ad:                                            ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread28.i
  %i.gb = icmp eq i64 %i.fs, 0
  br i1 %i.gb, label %.noexc77, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i: ; preds = %bb.ad
  %i.gc = load ptr, ptr %i.w, align 8, !tbaa !141
  %i.gd = load ptr, ptr %i.fq, align 8, !tbaa !141
  %bcmp.i.i26.i = call i32 @bcmp(ptr %i.gd, ptr %i.gc, i64 %i.fs)
  %i.ge = icmp eq i32 %bcmp.i.i26.i, 0
  br i1 %i.ge, label %.noexc77, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread29.i

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.thread29.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread28.i
  %i.gf = add i64 %.02034.i, 1                    ; 3 uses
  %i.gg = add i64 %i.gf, %.02135.i
  %.not.i166 = icmp ule i64 %i.gf, %i.ff
  call void @llvm.assume(i1 %.not.i166)
  br label %bb.ab

.noexc77:                                         ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit27.i, %bb.ad, %.noexc168
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 32 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !398, !range !138, !noundef !139
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %_ZN4Luau3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6insertERKS6_.exit, label %bb.ae

bb.ae:                                            ; preds = %.noexc77
  store i8 1, ptr %i.gh, align 1, !tbaa !398
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dp, i64 232 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !536
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !536
  br label %_ZN4Luau3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6insertERKS6_.exit

bb.af:                                            ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i, %.loopexit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZN4Luau3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6insertERKS6_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us.i, %bb.s, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i.i, %bb.q, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN4Luau10SourceNodeEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i, %bb.l, %bb.ae, %.noexc77
  %i.go = load i64, ptr %i.aq, align 8, !tbaa !512 ; 3 uses
  %i.gp = add i64 %.sroa.7240.0502, 1             ; 3 uses
  %i.gq = icmp ult i64 %i.gp, %i.go
  br i1 %i.gq, label %.lr.ph.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit

.lr.ph.i:                                         ; preds = %_ZN4Luau3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6insertERKS6_.exit
  %i.gr = load ptr, ptr %i.ap, align 8, !tbaa !513
  %i.gs = load i64, ptr %i.bm, align 8, !tbaa !140 ; 3 uses
  %i.gt = icmp eq i64 %i.gs, 0
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i, %.lr.ph.i
  %.sroa.7240.1 = phi i64 [ %i.gp, %.lr.ph.i ], [ %i.hb, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i ] ; 4 uses
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.gr, i64 %.sroa.7240.1 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !140
  %i.gx = icmp eq i64 %i.gw, %i.gs
  br i1 %i.gx, label %bb.ah, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.gt, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i, label %.split.i

.split.i:                                         ; preds = %bb.ah
  %i.gy = load ptr, ptr %i.bl, align 8, !tbaa !141
  %i.gz = load ptr, ptr %i.gu, align 8, !tbaa !141
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.gz, ptr %i.gy, i64 %i.gs)
  %i.ha = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ha, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i: ; preds = %.split.i, %bb.ah
  %i.hb = add nuw i64 %.sroa.7240.1, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hb, %i.go
  br i1 %exitcond.not.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit, label %bb.ag, !llvm.loop !21

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit: ; preds = %bb.ag, %.split.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i, %_ZN4Luau3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6insertERKS6_.exit
  %.sroa.7240.2 = phi i64 [ %i.gp, %_ZN4Luau3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EE6insertERKS6_.exit ], [ %.sroa.7240.1, %bb.ag ], [ %.sroa.7240.1, %.split.i ], [ %i.go, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i ] ; 2 uses
  %.not298 = icmp eq i64 %.sroa.7240.2, %i.ar
  br i1 %.not298, label %.loopexit313, label %bb.k

bb.ai:                                            ; preds = %bb.c
  %i.hc = invoke fastcc noundef nonnull align 4 dereferenceable(4) ptr @_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.aj unwind label %.loopexit327 ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !220 ; 2 uses
  %.not48 = icmp eq i32 %i.hd, 0
  br i1 %.not48, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.he = icmp eq i32 %i.hd, 1
  %7 = or i1 %.042510, %i.he
  br label %.loopexit313, !llvm.loop !1331

.loopexit327:                                     ; preds = %bb.ai, %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i82
  %.sroa.31.2.ph = phi ptr [ %.sroa.31.1504, %bb.ai ], [ %.sroa.31.13, %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i82 ]
  %.sroa.0255.2.ph = phi ptr [ %.sroa.0255.1509, %bb.ai ], [ %.sroa.0255.13, %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i82 ]
  %lpad.loopexit329 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp328:                            ; preds = %bb.at
  %lpad.loopexit.split-lp330 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.al:                                            ; preds = %bb.aj
  store i32 1, ptr %i.hc, align 4, !tbaa !220
  %.not.i.i78 = icmp eq ptr %i.s, %.sroa.31.1504
  br i1 %.not.i.i78, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr null, ptr %i.s, align 8, !tbaa !524
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit

bb.an:                                            ; preds = %bb.al
  %i.hf = ptrtoint ptr %.sroa.31.1504 to i64
  %i.hg = ptrtoint ptr %.sroa.0255.1509 to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 6 uses
  %i.hi = icmp eq i64 %i.hh, 9223372036854775800
  br i1 %i.hi, label %bb.ao, label %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #37
          to label %.noexc79 unwind label %.loopexit.split-lp333

.noexc79:                                         ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.an
  %i.hj = ashr exact i64 %i.hh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hj, i64 1)
  %i.hk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hj ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.hj
  %i.hm = call i64 @llvm.umin.i64(i64 %i.hk, i64 1152921504606846975)
  %i.hn = select i1 %i.hl, i64 1152921504606846975, i64 %i.hm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.hn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ho = shl nuw nsw i64 %i.hn, 3
  %i.hp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #38
          to label %.noexc80 unwind label %.loopexit332 ; 4 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 %i.hh ; 2 uses
  store ptr null, ptr %i.hq, align 8, !tbaa !524
  %i.hr = icmp sgt i64 %i.hh, 0
  br i1 %i.hr, label %bb.ap, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.ap:                                            ; preds = %.noexc80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr align 8 %.sroa.0255.1509, i64 %i.hh, i1 false)
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.ap, %.noexc80
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0255.1509, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0255.1509, i64 noundef %i.hh) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.aq, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hn
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.am
  %.sroa.31.13 = phi ptr [ %i.ht, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.31.1504, %bb.am ] ; 6 uses
  %.sroa.15.7 = phi ptr [ %i.hs, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.15.1508, %bb.am ] ; 4 uses
  %.sroa.0255.13 = phi ptr [ %i.hp, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0255.1509, %bb.am ] ; 6 uses
  %.not.i81 = icmp eq ptr %.sroa.8.0506, %.sroa.14.0507
  br i1 %.not.i81, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit
  store ptr %i.t, ptr %.sroa.8.0506, align 8, !tbaa !524
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit90

bb.as:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit
  %i.hu = ptrtoint ptr %.sroa.14.0507 to i64
  %i.hv = ptrtoint ptr %.sroa.0247.0505 to i64
  %i.hw = sub i64 %i.hu, %i.hv                    ; 6 uses
  %i.hx = icmp eq i64 %i.hw, 9223372036854775800
  br i1 %i.hx, label %bb.at, label %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i82

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #37
          to label %.noexc88 unwind label %.loopexit.split-lp328

.noexc88:                                         ; preds = %bb.at
  unreachable

_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i82: ; preds = %bb.as
  %i.hy = ashr exact i64 %i.hw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i83 = call i64 @llvm.umax.i64(i64 %i.hy, i64 1)
  %i.hz = add nsw i64 %.sroa.speculated.i.i.i83, %i.hy ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %i.hy
  %i.ib = call i64 @llvm.umin.i64(i64 %i.hz, i64 1152921504606846975)
  %i.ic = select i1 %i.ia, i64 1152921504606846975, i64 %i.ib ; 3 uses
  %.not.i.i.i84 = icmp ne i64 %i.ic, 0
  call void @llvm.assume(i1 %.not.i.i.i84)
  %i.id = shl nuw nsw i64 %i.ic, 3
  %i.ie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #38
          to label %.noexc89 unwind label %.loopexit327 ; 4 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i82
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 %i.hw ; 2 uses
  store ptr %i.t, ptr %i.if, align 8, !tbaa !524
  %i.ig = icmp sgt i64 %i.hw, 0
  br i1 %i.ig, label %bb.au, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i85

bb.au:                                            ; preds = %.noexc89
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ie, ptr align 8 %.sroa.0247.0505, i64 %i.hw, i1 false)
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i85

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i85: ; preds = %bb.au, %.noexc89
  %.not.i17.i.i86 = icmp eq ptr %.sroa.0247.0505, null
  br i1 %.not.i17.i.i86, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i87, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0247.0505, i64 noundef %i.hw) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i87

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i87: ; preds = %bb.av, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i85
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ic
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit90

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit90: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i87, %bb.ar
  %.sroa.0247.4 = phi ptr [ %i.ie, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i87 ], [ %.sroa.0247.0505, %bb.ar ] ; 10 uses
  %.pn = phi ptr [ %i.if, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i87 ], [ %.sroa.8.0506, %bb.ar ]
  %.sroa.14.4 = phi ptr [ %i.ih, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i87 ], [ %.sroa.14.0507, %bb.ar ] ; 10 uses
  %.sroa.8.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !512 ; 5 uses
  %.not.i.i91 = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i91, label %.loopexit324, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit90
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !513 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.in = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.io = load i64, ptr %i.in, align 8, !tbaa !140
  %.fr1.i93 = freeze i64 %i.io                    ; 3 uses
  %i.ip = load ptr, ptr %i.im, align 8
  %i.iq = icmp eq i64 %.fr1.i93, 0
  br i1 %i.iq, label %.lr.ph.i.split.us.i103, label %.lr.ph.i.split.i94

.lr.ph.i.split.us.i103:                           ; preds = %.lr.ph.i.i92, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105
  %.05.i.us.i104 = phi i64 [ %i.iv, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ 0, %.lr.ph.i.i92 ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [32 x i8], ptr %i.il, i64 %.05.i.us.i104
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !140
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105, label %.loopexit324

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105: ; preds = %.lr.ph.i.split.us.i103
  %i.iv = add nuw i64 %.05.i.us.i104, 1           ; 2 uses
  %exitcond.not.i.us.i106 = icmp eq i64 %i.iv, %i.ik
  br i1 %exitcond.not.i.us.i106, label %.loopexit313, label %.lr.ph.i.split.us.i103, !llvm.loop !17

.lr.ph.i.split.i94:                               ; preds = %.lr.ph.i.i92, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101
  %.05.i.i95 = phi i64 [ %i.jc, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ], [ 0, %.lr.ph.i.i92 ] ; 4 uses
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %i.il, i64 %.05.i.i95 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !140
  %i.iz = icmp eq i64 %i.iy, %.fr1.i93
  br i1 %i.iz, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i99, label %.loopexit324

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i99: ; preds = %.lr.ph.i.split.i94
  %i.ja = load ptr, ptr %i.iw, align 8, !tbaa !141
  %bcmp.i.i.i.i100 = call i32 @bcmp(ptr %i.ja, ptr %i.ip, i64 %.fr1.i93)
  %i.jb = icmp eq i32 %bcmp.i.i.i.i100, 0
  br i1 %i.jb, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101, label %.loopexit324

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i99
  %i.jc = add nuw i64 %.05.i.i95, 1               ; 2 uses
  %exitcond.not.i.i102 = icmp eq i64 %i.jc, %i.ik
  br i1 %exitcond.not.i.i102, label %.loopexit313, label %.lr.ph.i.split.i94, !llvm.loop !17

.loopexit324:                                     ; preds = %.lr.ph.i.split.i94, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i99, %.lr.ph.i.split.us.i103, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit90
  %.0.lcssa.i.i96 = phi i64 [ 0, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit90 ], [ %.05.i.us.i104, %.lr.ph.i.split.us.i103 ], [ %.05.i.i95, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i99 ], [ %.05.i.i95, %.lr.ph.i.split.i94 ] ; 2 uses
  %.not296492 = icmp eq i64 %.0.lcssa.i.i96, %i.ik
  br i1 %.not296492, label %.loopexit313, label %.lr.ph497

.lr.ph497:                                        ; preds = %.loopexit324
  %i.jd = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.je = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  br label %bb.aw

.loopexit332:                                     ; preds = %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit334 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq
end_hunk_1
begin_hunk_2_@_ZN4Luau8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKS7_RKNS_15TypeCheckLimitsEbSt8functionIFbSC_EE:bb.a

_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i: ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i.loopexit.unr-lcssa, %.noexc144.epil, %.loopexit.i.i
  %.sroa.0.0.i.i.i = phi ptr [ null, %.loopexit.i.i ], [ %i.og, %.noexc144.epil ], [ %i.og, %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i.loopexit.unr-lcssa ] ; 6 uses
  %.pre32.i.i.i = load ptr, ptr %6, align 8, !tbaa !544 ; 3 uses
  br i1 %i.od, label %._crit_edge27.i.i.i, label %.lr.ph26.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i
  %i.ox = add i64 %i.oe, -1                       ; 3 uses
  br label %bb.ci

._crit_edge27.i.i.i:                              ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERSQ_m.exit.i.i.i
  store ptr %.sroa.0.0.i.i.i, ptr %6, align 8, !tbaa !544
  store i64 16, ptr %i.p, align 8, !tbaa !218
  %.not.i11.i.i.i = icmp eq ptr %.pre32.i.i.i, null
  br i1 %.not.i11.i.i.i, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge27.thread.i.i.i, %._crit_edge27.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.pre32.i.i.i) #34
  br label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i

bb.ci:                                            ; preds = %bb.ck, %.lr.ph26.i.i.i
  %.025.i.i.i = phi i64 [ 0, %.lr.ph26.i.i.i ], [ %i.pu, %bb.ck ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr %.pre32.i.i.i, i64 %.025.i.i.i ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !524 ; 6 uses
  %i.pa = load ptr, ptr %i.c, align 8, !tbaa !524
  %i.pb = icmp eq ptr %i.oz, %i.pa
  br i1 %i.pb, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pc = ptrtoint ptr %i.oz to i64
  %i.pd = mul i64 %i.pc, -4658895280553007687     ; 2 uses
  %i.pe = lshr i64 %i.pd, 31
  %i.pf = xor i64 %i.pe, %i.pd
  %.02131.i21.i.i.i = and i64 %i.pf, %i.ox        ; 2 uses
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.i, i64 %.02131.i21.i.i.i ; 3 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !524 ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.oc
  br i1 %i.pi, label %._crit_edge.i.i.i143, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.cj
  %i.pj = icmp eq ptr %i.ph, %i.oz
  br i1 %i.pj, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i, label %.lr.ph.i.i141

._crit_edge.i.i.i143:                             ; preds = %.lr.ph.i.i141, %bb.cj
  %.lcssa.i.i.i = phi ptr [ %i.pg, %bb.cj ], [ %i.pn, %.lr.ph.i.i141 ] ; 2 uses
  store ptr %i.oz, ptr %.lcssa.i.i.i, align 8, !tbaa !546
  br label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i141
  %i.pk = icmp eq ptr %i.po, %i.oz
  br i1 %i.pk, label %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i, label %.lr.ph.i.i141

.lr.ph.i.i141:                                    ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %.02030.i22.i6.i.i = phi i64 [ %i.pl, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ]
  %.02131.i23.i5.i.i = phi i64 [ %.02131.i.i.i.i, %.lr.ph.i.i.i ], [ %.02131.i21.i.i.i, %.lr.ph.i.preheader.i.i ]
  %i.pl = add i64 %.02030.i22.i6.i.i, 1           ; 3 uses
  %i.pm = add i64 %i.pl, %.02131.i23.i5.i.i
  %.not.i12.i.i.i = icmp ule i64 %i.pl, %i.ox
  call void @llvm.assume(i1 %.not.i12.i.i.i)
  %.02131.i.i.i.i = and i64 %i.pm, %i.ox          ; 2 uses
  %i.pn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.i, i64 %.02131.i.i.i.i ; 3 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !524 ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.oc
  br i1 %i.pp, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i

_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i143, %.lr.ph.i.preheader.i.i
  %i.pq = phi ptr [ %.lcssa.i.i.i, %._crit_edge.i.i.i143 ], [ %i.pg, %.lr.ph.i.preheader.i.i ], [ %i.pn, %.lr.ph.i.i.i ] ; 2 uses
  store ptr %i.oz, ptr %i.pq, align 8, !tbaa !546
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !220
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store i32 %i.ps, ptr %i.pt, align 8, !tbaa !547
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERSQ_.exit.i.i.i, %bb.ci
  %i.pu = add nuw i64 %.025.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.pu, %i.nl
  br i1 %exitcond.not.i.i.i, label %._crit_edge27.thread.i.i.i, label %bb.ci, !llvm.loop !24

._crit_edge27.thread.i.i.i:                       ; preds = %bb.ck
  store ptr %.sroa.0.0.i.i.i, ptr %6, align 8, !tbaa !544
  store i64 %i.oe, ptr %i.p, align 8, !tbaa !218
  br label %bb.ch

_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i: ; preds = %bb.cd, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137._ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i_crit_edge, %bb.ch, %._crit_edge27.i.i.i
  %i.pv = phi ptr [ %.sroa.0.0.i.i.i, %bb.ch ], [ %.pre652, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137._ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i_crit_edge ], [ %.sroa.0.0.i.i.i, %._crit_edge27.i.i.i ], [ %i.nv, %bb.cd ] ; 2 uses
  %i.pw = phi i64 [ %spec.select.i.i.i, %bb.ch ], [ %i.nl, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backERKS2_.exit137._ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i_crit_edge ], [ 16, %._crit_edge27.i.i.i ], [ %i.nl, %bb.cd ]
  %i.px = add i64 %i.pw, -1                       ; 3 uses
  %i.py = ptrtoint ptr %i.mv to i64
  %i.pz = mul i64 %i.py, -4658895280553007687     ; 2 uses
  %i.qa = lshr i64 %i.pz, 31
  %i.qb = xor i64 %i.qa, %i.pz
  %i.qc = load ptr, ptr %i.c, align 8, !tbaa !524 ; 2 uses
  %.02131.i7.i = and i64 %i.px, %i.qb             ; 2 uses
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %.02131.i7.i ; 3 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !524 ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.qc
  br i1 %i.qf, label %._crit_edge.i, label %.lr.ph.i142.preheader

.lr.ph.i142.preheader:                            ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i
  %i.qg = icmp eq ptr %i.qe, %i.mv
  br i1 %i.qg, label %.loopexit305, label %.lr.ph

._crit_edge.i:                                    ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i
  %.lcssa.i = phi ptr [ %i.qd, %_ZN4Luau6detail14DenseHashTableIPNS_10SourceNodeESt4pairIS3_ZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EERKSC_RKNS_15TypeCheckLimitsEbSt8functionIFbSH_EEE4MarkES4_IKS3_SO_ENS0_16ItemInterfaceMapIS3_SO_EENS_16DenseHashPointerESt8equal_toIS3_EE14rehash_if_fullERSQ_.exit.i ], [ %i.ql, %.lr.ph ] ; 2 uses
  store ptr %i.mv, ptr %.lcssa.i, align 8, !tbaa !546
  %i.qh = add i64 %i.nk, 1
  store i64 %i.qh, ptr %i.o, align 8, !tbaa !540
  br label %.loopexit305

.lr.ph.i142:                                      ; preds = %.lr.ph
  %i.qi = icmp eq ptr %i.qm, %i.mv
  br i1 %i.qi, label %.loopexit305, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i142.preheader, %.lr.ph.i142
  %.02030.i8.i491 = phi i64 [ %i.qj, %.lr.ph.i142 ], [ 0, %.lr.ph.i142.preheader ]
  %.02131.i9.i490 = phi i64 [ %.02131.i.i, %.lr.ph.i142 ], [ %.02131.i7.i, %.lr.ph.i142.preheader ]
  %i.qj = add i64 %.02030.i8.i491, 1              ; 3 uses
  %i.qk = add i64 %i.qj, %.02131.i9.i490
  %.not.i3.i = icmp ule i64 %i.qj, %i.px
  call void @llvm.assume(i1 %.not.i3.i)
  %.02131.i.i = and i64 %i.qk, %i.px              ; 2 uses
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %.02131.i.i ; 3 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !524 ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.qc
  br i1 %i.qn, label %._crit_edge.i, label %.lr.ph.i142

.loopexit305:                                     ; preds = %.lr.ph.i142, %.lr.ph.i142.preheader, %._crit_edge.i
  %i.qo = phi ptr [ %.lcssa.i, %._crit_edge.i ], [ %i.qd, %.lr.ph.i142.preheader ], [ %i.ql, %.lr.ph.i142 ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store i32 0, ptr %i.qp, align 4, !tbaa !220
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127

bb.cl:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112.thread
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit319:                                     ; preds = %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i129, %bb.cg
  %.sroa.31.4.ph = phi ptr [ %.sroa.15.2494, %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i129 ], [ %.sroa.31.15, %bb.cg ]
  %.sroa.0255.4.ph = phi ptr [ %.sroa.0255.3496, %_ZNKSt6vectorIPN4Luau10SourceNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i129 ], [ %.sroa.0255.15, %bb.cg ]
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp320:                            ; preds = %bb.bx
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127: ; preds = %bb.bt, %.loopexit305, %bb.bo, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124, %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112
  %.sroa.31.6 = phi ptr [ %.sroa.31.3493, %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit ], [ %.sroa.31.3493, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112 ], [ %.sroa.31.3493, %bb.bo ], [ %i.mt, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124 ], [ %.sroa.31.3493, %bb.bt ], [ %.sroa.31.15, %.loopexit305 ] ; 2 uses
  %.sroa.15.4 = phi ptr [ %.sroa.15.2494, %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit ], [ %.sroa.15.2494, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112 ], [ %i.me, %bb.bo ], [ %i.ms, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124 ], [ %.sroa.15.2494, %bb.bt ], [ %.sroa.15.9, %.loopexit305 ] ; 2 uses
  %.sroa.0255.6 = phi ptr [ %.sroa.0255.3496, %_ZNKSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit ], [ %.sroa.0255.3496, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN4Luau10SourceNodeEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit112 ], [ %.sroa.0255.3496, %bb.bo ], [ %i.mp, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i124 ], [ %.sroa.0255.3496, %bb.bt ], [ %.sroa.0255.15, %.loopexit305 ] ; 2 uses
  %i.qr = load i64, ptr %i.ij, align 8, !tbaa !512 ; 3 uses
  %i.qs = add i64 %.sroa.7.0495, 1                ; 3 uses
  %i.qt = icmp ult i64 %i.qs, %i.qr
  br i1 %i.qt, label %.lr.ph.i146, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151

.lr.ph.i146:                                      ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127
  %i.qu = load ptr, ptr %i.ii, align 8, !tbaa !513
  %i.qv = load i64, ptr %i.je, align 8, !tbaa !140 ; 3 uses
  %i.qw = icmp eq i64 %i.qv, 0
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149, %.lr.ph.i146
  %.sroa.7.1 = phi i64 [ %i.qs, %.lr.ph.i146 ], [ %i.re, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149 ] ; 4 uses
  %i.qx = getelementptr inbounds nuw [32 x i8], ptr %i.qu, i64 %.sroa.7.1 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !140
  %i.ra = icmp eq i64 %i.qz, %i.qv
  br i1 %i.ra, label %bb.cn, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.qw, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149, label %.split.i147

.split.i147:                                      ; preds = %bb.cn
  %i.rb = load ptr, ptr %i.jd, align 8, !tbaa !141
  %i.rc = load ptr, ptr %i.qx, align 8, !tbaa !141
  %bcmp.i.i.i148 = call i32 @bcmp(ptr %i.rc, ptr %i.rb, i64 %i.qv)
  %i.rd = icmp eq i32 %bcmp.i.i.i148, 0
  br i1 %i.rd, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149: ; preds = %.split.i147, %bb.cn
  %i.re = add nuw i64 %.sroa.7.1, 1               ; 2 uses
  %exitcond.not.i150 = icmp eq i64 %i.re, %i.qr
  br i1 %exitcond.not.i150, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151, label %bb.cm, !llvm.loop !21

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151: ; preds = %bb.cm, %.split.i147, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127
  %.sroa.7.2 = phi i64 [ %i.qs, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EE9push_backEOS2_.exit127 ], [ %.sroa.7.1, %bb.cm ], [ %.sroa.7.1, %.split.i147 ], [ %i.qr, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.backedge.i149 ] ; 2 uses
  %.not296 = icmp eq i64 %.sroa.7.2, %i.ik
  br i1 %.not296, label %.loopexit313, label %bb.aw

.loopexit313:                                     ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit, %.loopexit324, %.loopexit314, %bb.ak
  %.sroa.31.9 = phi ptr [ %.sroa.31.1504, %bb.ak ], [ %.sroa.31.1504, %.loopexit314 ], [ %.sroa.31.1504, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.31.13, %.loopexit324 ], [ %.sroa.31.13, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.sroa.31.1504, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.sroa.31.1504, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.31.6, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.31.13, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 2 uses
  %.sroa.0247.1 = phi ptr [ %.sroa.0247.0505, %bb.ak ], [ %.sroa.0247.0505, %.loopexit314 ], [ %.sroa.0247.0505, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.0247.4, %.loopexit324 ], [ %.sroa.0247.4, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.sroa.0247.0505, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.sroa.0247.0505, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.0247.4, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.0247.4, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 4 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0506, %bb.ak ], [ %i.v, %.loopexit314 ], [ %i.v, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.8.2, %.loopexit324 ], [ %.sroa.8.2, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %i.v, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %i.v, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.8.2, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.8.2, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0507, %bb.ak ], [ %.sroa.14.0507, %.loopexit314 ], [ %.sroa.14.0507, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.14.4, %.loopexit324 ], [ %.sroa.14.4, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.sroa.14.0507, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.sroa.14.0507, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.14.4, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.14.4, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 2 uses
  %.sroa.15.5 = phi ptr [ %i.s, %bb.ak ], [ %i.s, %.loopexit314 ], [ %i.s, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.15.7, %.loopexit324 ], [ %.sroa.15.7, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %i.s, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %i.s, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.15.4, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.15.7, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 2 uses
  %.sroa.0255.9 = phi ptr [ %.sroa.0255.1509, %bb.ak ], [ %.sroa.0255.1509, %.loopexit314 ], [ %.sroa.0255.1509, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.sroa.0255.13, %.loopexit324 ], [ %.sroa.0255.13, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.sroa.0255.1509, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.sroa.0255.1509, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.sroa.0255.6, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.sroa.0255.13, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 5 uses
  %.345 = phi i1 [ %7, %bb.ak ], [ %.042510, %.loopexit314 ], [ %.042510, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ %.042510, %.loopexit324 ], [ %.042510, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i105 ], [ %.042510, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ %.042510, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit ], [ %.042510, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE8iteratorppEv.exit151 ], [ %.042510, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i101 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.rf = icmp eq ptr %.sroa.0255.9, %.sroa.15.5
  br i1 %i.rf, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.loopexit313
  %.not.i.i.i152 = icmp eq ptr %.sroa.0247.1, null
  br i1 %.not.i.i.i152, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %._crit_edge
  %i.rg = ptrtoint ptr %.sroa.14.1 to i64
  %i.rh = ptrtoint ptr %.sroa.0247.1 to i64
  %i.ri = sub i64 %i.rg, %i.rh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0247.1, i64 noundef %i.ri) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.co
  %.not.i.i.i153 = icmp eq ptr %.sroa.0255.9, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit.thread733

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit.thread733: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit
  %i.rj = ptrtoint ptr %.sroa.31.9 to i64
  %i.rk = ptrtoint ptr %.sroa.0255.9 to i64
  %i.rl = sub i64 %i.rj, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0255.9, i64 noundef %i.rl) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit.thread733, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit
  %.val65.pr = load ptr, ptr %6, align 8, !tbaa !542
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split, %bb.a
  %.val65 = phi ptr [ %.val65.pr, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split ], [ null, %bb.a ] ; 2 uses
  %.042.lcssa723732 = phi i1 [ %.345, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154thread-pre-split ], [ false, %bb.a ]
  %.not.i.i155 = icmp eq ptr %.val65, null
  br i1 %.not.i.i155, label %_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154
  call void @_ZdlPv(ptr noundef nonnull %.val65) #34
  br label %_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit154, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret i1 %.042.lcssa723732

bb.cq:                                            ; preds = %.loopexit319, %.loopexit.split-lp320, %.loopexit318, %.loopexit.split-lp, %.loopexit332, %.loopexit.split-lp333, %.loopexit327, %.loopexit.split-lp328, %bb.bf, %bb.cl, %bb.j, %bb.af
  %.sroa.31.10 = phi ptr [ %.sroa.31.1504, %bb.af ], [ %.sroa.31.1504, %bb.j ], [ %.sroa.31.13, %.loopexit.split-lp328 ], [ %.sroa.15.2494, %.loopexit.split-lp ], [ %.sroa.31.3493, %bb.bf ], [ %.sroa.31.1504, %.loopexit.split-lp333 ], [ %.sroa.31.3493, %bb.cl ], [ %.sroa.31.2.ph, %.loopexit327 ], [ %.sroa.31.1504, %.loopexit332 ], [ %.sroa.15.2494, %.loopexit318 ], [ %.sroa.31.4.ph, %.loopexit319 ], [ %.sroa.15.2494, %.loopexit.split-lp320 ]
  %.sroa.0247.2 = phi ptr [ %.sroa.0247.0505, %bb.af ], [ %.sroa.0247.0505, %bb.j ], [ %.sroa.0247.0505, %.loopexit.split-lp328 ], [ %.sroa.0247.4, %.loopexit.split-lp ], [ %.sroa.0247.4, %bb.bf ], [ %.sroa.0247.0505, %.loopexit.split-lp333 ], [ %.sroa.0247.4, %bb.cl ], [ %.sroa.0247.0505, %.loopexit327 ], [ %.sroa.0247.0505, %.loopexit332 ], [ %.sroa.0247.4, %.loopexit318 ], [ %.sroa.0247.4, %.loopexit319 ], [ %.sroa.0247.4, %.loopexit.split-lp320 ] ; 3 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.0507, %bb.af ], [ %.sroa.14.0507, %bb.j ], [ %.sroa.14.0507, %.loopexit.split-lp328 ], [ %.sroa.14.4, %.loopexit.split-lp ], [ %.sroa.14.4, %bb.bf ], [ %.sroa.14.0507, %.loopexit.split-lp333 ], [ %.sroa.14.4, %bb.cl ], [ %.sroa.14.0507, %.loopexit327 ], [ %.sroa.14.0507, %.loopexit332 ], [ %.sroa.14.4, %.loopexit318 ], [ %.sroa.14.4, %.loopexit319 ], [ %.sroa.14.4, %.loopexit.split-lp320 ]
  %.sroa.0255.10 = phi ptr [ %.sroa.0255.1509, %bb.af ], [ %.sroa.0255.1509, %bb.j ], [ %.sroa.0255.13, %.loopexit.split-lp328 ], [ %.sroa.0255.3496, %.loopexit.split-lp ], [ %.sroa.0255.3496, %bb.bf ], [ %.sroa.0255.1509, %.loopexit.split-lp333 ], [ %.sroa.0255.3496, %bb.cl ], [ %.sroa.0255.2.ph, %.loopexit327 ], [ %.sroa.0255.1509, %.loopexit332 ], [ %.sroa.0255.3496, %.loopexit318 ], [ %.sroa.0255.4.ph, %.loopexit319 ], [ %.sroa.0255.3496, %.loopexit.split-lp320 ] ; 3 uses
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.af ], [ %i.bn, %bb.j ], [ %lpad.loopexit.split-lp330, %.loopexit.split-lp328 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.li, %bb.bf ], [ %lpad.loopexit.split-lp335, %.loopexit.split-lp333 ], [ %i.qq, %bb.cl ], [ %lpad.loopexit329, %.loopexit327 ], [ %lpad.loopexit334, %.loopexit332 ], [ %lpad.loopexit, %.loopexit318 ], [ %lpad.loopexit321, %.loopexit319 ], [ %lpad.loopexit.split-lp322, %.loopexit.split-lp320 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %.not.i.i.i156 = icmp eq ptr %.sroa.0247.2, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rm = ptrtoint ptr %.sroa.14.2 to i64
  %i.rn = ptrtoint ptr %.sroa.0247.2 to i64
  %i.ro = sub i64 %i.rm, %i.rn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0247.2, i64 noundef %i.ro) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157: ; preds = %bb.cq, %bb.cr
  %.not.i.i.i158 = icmp eq ptr %.sroa.0255.10, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157
  %i.rp = ptrtoint ptr %.sroa.31.10 to i64
  %i.rq = ptrtoint ptr %.sroa.0255.10 to i64
  %i.rr = sub i64 %i.rp, %i.rq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0255.10, i64 noundef %i.rr) #36
  br label %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159

_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159: ; preds = %bb.b, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157, %bb.cs
  %.pn57.pn.pn.pn.pn290295.ph = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn57.pn.pn.pn, %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit157 ], [ %.pn57.pn.pn.pn, %bb.cs ]
  %.val64.pr = load ptr, ptr %6, align 8, !tbaa !542 ; 2 uses
  %.not.i.i160 = icmp eq ptr %.val64.pr, null
  br i1 %.not.i.i160, label %_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit161, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159
  call void @_ZdlPv(ptr noundef nonnull %.val64.pr) #34
  br label %_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit161

_ZN4Luau12DenseHashMapIPNS_10SourceNodeEZNS_8Frontend10parseGraphERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EERKSA_RKNS_15TypeCheckLimitsEbSt8functionIFbSF_EEE4MarkNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit161: ; preds = %_ZNSt6vectorIPN4Luau10SourceNodeESaIS2_EED2Ev.exit159, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn57.pn.pn.pn.pn290295.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !243    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !141 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !220
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !243
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !245
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau8Frontend12parseModulesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(2184) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit:
  %2 = alloca %"class.Luau::DenseHashSet.300", align 8 ; 22 uses
  %3 = alloca %"class.std::vector.172", align 8   ; 10 uses
  %4 = alloca %"struct.Luau::TypeCheckLimits", align 8 ; 10 uses
  %5 = alloca %"class.std::function.297", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %i.c, align 8, !tbaa !140
  store i8 0, ptr %i.b, align 8, !tbaa !220
  %.pre = load ptr, ptr %1, align 8, !tbaa !509   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre51 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !509 ; 2 uses
  %.not49 = icmp eq ptr %.pre, %.pre51
  br i1 %.not49, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = ptrtoint ptr %2 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge19
  %.pre52 = load ptr, ptr %2, align 8, !tbaa !513 ; 3 uses
  %.not.i.i = icmp eq ptr %.pre52, null
  br i1 %.not.i.i, label %._crit_edge.thread, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !512  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.04.i.i.i.i = phi i64 [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.pre52, i64 %.04.i.i.i.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !141  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !220
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.y = add nuw i64 %.04.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.y, %i.r
  br i1 %exitcond.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyEPS7_m.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZN4Luau6detail16ItemInterfaceSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyEPS7_m.exit.loopexit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !513
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyEPS7_m.exit.loopexit.i.i.i, %bb.a
  %i.z = phi ptr [ %.pre.i.i.i, %_ZN4Luau6detail16ItemInterfaceSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyEPS7_m.exit.loopexit.i.i.i ], [ %.pre52, %bb.a ]
  call void @_ZdlPv(ptr noundef %i.z) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 16, i1 false)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i, %._crit_edge
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !141 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZN4Luau12DenseHashSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %._crit_edge.thread
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !220
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %_ZN4Luau12DenseHashSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_EED2Ev.exit

_ZN4Luau12DenseHashSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_EED2Ev.exit: ; preds = %._crit_edge.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.b:                                             ; preds = %.lr.ph, %.critedge19
  %.sroa.042.050 = phi ptr [ %.pre, %.lr.ph ], [ %i.cg, %.critedge19 ] ; 8 uses
  %i.ae = call noundef ptr @_ZNK4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_NS0_16ItemInterfaceSetIS7_EESt4hashIS7_ESt8equal_toIS7_EE4findERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.042.050)
  %.not45 = icmp eq ptr %i.ae, null
  br i1 %.not45, label %bb.c, label %.critedge19
end_hunk_2
