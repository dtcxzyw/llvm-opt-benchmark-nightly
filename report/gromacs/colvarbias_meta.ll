Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_meta?download=true
inline.NumInlined: 4972
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN11colvar_gridIdE8map_gridERKS0_:bb.a
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !194
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.01627.i.i69
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !194
  %i.gm = sext i32 %i.gl to i64
  %i.gn = mul nsw i64 %i.gm, %i.gj
  %i.go = add i64 %i.gn, %.01726.i.i70
  %i.gp = or disjoint i64 %.01627.i.i69, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !194
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gp
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !194
  %i.gv = sext i32 %i.gu to i64
  %i.gw = mul nsw i64 %i.gv, %i.gs
  %i.gx = add i64 %i.gw, %i.go
  %i.gy = or disjoint i64 %.01627.i.i69, 2        ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !194
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gy
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !194
  %i.he = sext i32 %i.hd to i64
  %i.hf = mul nsw i64 %i.he, %i.hb
  %i.hg = add i64 %i.hf, %i.gx
  %i.hh = or disjoint i64 %.01627.i.i69, 3        ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !194
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.hh
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !194
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul nsw i64 %i.hn, %i.hk
  %i.hp = add i64 %i.ho, %i.hg                    ; 3 uses
  %i.hq = add nuw i64 %.01627.i.i69, 4            ; 2 uses
  %niter180.next.3 = add nuw i64 %niter180, 4     ; 2 uses
  %niter180.ncmp.3 = icmp eq i64 %niter180.next.3, %unroll_iter179
  br i1 %niter180.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i68.new, !llvm.loop !6

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i68.new
  br i1 %lcmp.mod176.not, label %.loopexit, label %.epil.preheader173

.epil.preheader173:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i68
  %.01627.i.i69.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.hq, %.loopexit.loopexit.unr-lcssa ]
  %.01726.i.i70.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.hp, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod178)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader173
  %.01627.i.i69.epil = phi i64 [ %.01627.i.i69.epil.init, %.epil.preheader173 ], [ %i.hz, %bb.u ] ; 3 uses
  %.01726.i.i70.epil = phi i64 [ %.01726.i.i70.epil.init, %.epil.preheader173 ], [ %i.hy, %bb.u ]
  %epil.iter175 = phi i64 [ 0, %.epil.preheader173 ], [ %epil.iter175.next, %bb.u ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %.01627.i.i69.epil
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !194
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.01627.i.i69.epil
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !194
  %i.hw = sext i32 %i.hv to i64
  %i.hx = mul nsw i64 %i.hw, %i.ht
  %i.hy = add i64 %i.hx, %.01726.i.i70.epil       ; 2 uses
  %i.hz = add nuw i64 %.01627.i.i69.epil, 1
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %.loopexit, label %bb.u, !llvm.loop !1155

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.u, %.loopexit115
  %.017.lcssa.i.i72 = phi i64 [ 0, %.loopexit115 ], [ %i.hp, %.loopexit.loopexit.unr-lcssa ], [ %i.hy, %bb.u ]
  %i.ia = getelementptr [8 x i8], ptr %i.eg, i64 %.017.lcssa.i.i72
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %storemerge122
  store double %i.gf, ptr %i.ib, align 8, !tbaa !179
  %i.ic = add nuw i64 %storemerge122, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ic, %i.ee
  br i1 %exitcond.not, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64, label %bb.s, !llvm.loop !1156

_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64: ; preds = %bb.l, %bb.k, %.loopexit, %.loopexit117
  br i1 %i.bl, label %.lr.ph.i73, label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge

.lr.ph.i73:                                       ; preds = %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64
  %i.id = load ptr, ptr %i.aq, align 8, !tbaa !225 ; 3 uses
  %i.ie = load i32, ptr %i.bn, align 4, !tbaa !194
  %i.if = add nsw i32 %i.ie, 1                    ; 2 uses
  store i32 %i.if, ptr %i.bn, align 4, !tbaa !194
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.bm
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !194
  %.not.i74125 = icmp slt i32 %i.if, %i.ih
  br i1 %.not.i74125, label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge, label %.lr.ph127.preheader

_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge: ; preds = %.lr.ph166, %.lr.ph.i73, %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit64, %.lr.ph127._crit_edge
  br label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit, !llvm.loop !1157

.lr.ph127.preheader:                              ; preds = %.lr.ph.i73
  br i1 %.not12.i164, label %.lr.ph127._crit_edge, label %.lr.ph166

.lr.ph127:                                        ; preds = %.lr.ph166
  %.not12.i = icmp eq i64 %i.ij, 0
  br i1 %.not12.i, label %.lr.ph127._crit_edge, label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph127.preheader, %.lr.ph127
  %i.ii = phi ptr [ %i.ik, %.lr.ph127 ], [ %i.bn, %.lr.ph127.preheader ]
  %indvars.iv165 = phi i64 [ %i.ij, %.lr.ph127 ], [ %i.bm, %.lr.ph127.preheader ]
  store i32 0, ptr %i.ii, align 4, !tbaa !194
  %i.ij = add nsw i64 %indvars.iv165, -1          ; 4 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %i.ij ; 3 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !194
  %i.im = add nsw i32 %i.il, 1                    ; 2 uses
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !194
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ij
  %i.io = load i32, ptr %i.in, align 4, !tbaa !194
  %.not.i74 = icmp slt i32 %i.im, %i.io
  br i1 %.not.i74, label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge, label %.lr.ph127, !llvm.loop !1157

.lr.ph127._crit_edge:                             ; preds = %.lr.ph127, %.lr.ph127.preheader
  %i.ip = load i32, ptr %i.id, align 4, !tbaa !194
  store i32 %i.ip, ptr %.sroa.0100.0, align 4, !tbaa !194
  br label %_ZNK11colvar_gridIdE4incrERSt6vectorIiSaIiEE.exit.backedge

bb.v:                                             ; preds = %bb.i, %bb.h
  store i8 1, ptr %i.bg, align 1, !tbaa !309
  %.not.i.i.i = icmp eq ptr %.sroa.094.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit86, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iq = ptrtoint ptr %.sroa.094.0 to i64
  %i.ir = sub i64 %.sroa.11.0, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.094.0, i64 noundef %i.ir) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit86

_ZNSt6vectorIiSaIiEED2Ev.exit86:                  ; preds = %bb.v, %bb.w
  %i.is = sub i64 %.sroa.13.0, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0, i64 noundef %i.is) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.y:                                             ; preds = %bb.r
  %i.it = ptrtoint ptr %.sroa.094.0 to i64
  %i.iu = sub i64 %.sroa.11.0, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.094.0, i64 noundef %i.iu) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88.thread

_ZNSt6vectorIiSaIiEED2Ev.exit88:                  ; preds = %.noexc.i45, %.noexc2.i42
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.sroa.0100.0, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIiSaIiEED2Ev.exit90, label %_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge

_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88
  %.pre = ptrtoint ptr %.sroa.0100.0 to i64
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88.thread

_ZNSt6vectorIiSaIiEED2Ev.exit88.thread:           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge, %bb.r, %bb.y
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge ], [ %i.bh, %bb.r ], [ %i.bh, %bb.y ]
  %.pn30.pn113 = phi { ptr, i32 } [ %i.iv, %_ZNSt6vectorIiSaIiEED2Ev.exit88._ZNSt6vectorIiSaIiEED2Ev.exit88.thread_crit_edge ], [ %i.ed, %bb.r ], [ %i.ed, %bb.y ]
  %i.iw = sub i64 %.sroa.13.0, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0, i64 noundef %i.iw) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit90

_ZNSt6vectorIiSaIiEED2Ev.exit90:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.iv, %_ZNSt6vectorIiSaIiEED2Ev.exit88 ], [ %.pn30.pn113, %_ZNSt6vectorIiSaIiEED2Ev.exit88.thread ]
  resume { ptr, i32 } %.pn33.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI11colvarvalueSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !291
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP11colvarvalueEEvT_S4_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !228    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !292
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI11colvarvalueSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP11colvarvalueS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11colvar_gridIdEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(698) %0, ptr noundef nonnull align 8 dereferenceable(698) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.colvar_grid_params, align 8  ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @_ZN18colvar_grid_paramsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %i.b)
  %i.c = load i64, ptr %2, align 8, !tbaa !224
  store i64 %i.c, ptr %i.a, align 8, !tbaa !224
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.e, align 8, !tbaa !304
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !304
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !226
  store ptr %i.i, ptr %i.g, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %5 = load <2 x ptr>, ptr %4, align 8, !tbaa !304
  store <2 x ptr> %5, ptr %3, align 8, !tbaa !304
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !226
  store ptr %i.l, ptr %i.j, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %6 = load <2 x ptr>, ptr %i.n, align 8, !tbaa !295
  store <2 x ptr> %6, ptr %i.m, align 8, !tbaa !295
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !292
  store ptr %i.q, ptr %i.o, align 8, !tbaa !292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !295
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !295
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !292
  store ptr %i.w, ptr %i.u, align 8, !tbaa !292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !310
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !310
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !261
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  call void @_ZN18colvar_grid_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  invoke void @_ZN11colvarparseC2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTV11colvar_gridIdE, i64 16), ptr %0, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !288
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !288
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !104 ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i.i, label %.noexc19, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = icmp ugt i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %.noexc.i.i, label %_ZNSt15__new_allocatorIP6colvarE8allocateEmPKv.exit.i.i.i.i, !prof !195

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIP6colvarE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27
          to label %.noexc19 unwind label %bb.m

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorIP6colvarE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.as = phi ptr [ null, %bb.b ], [ %i.ar, %_ZNSt15__new_allocatorIP6colvarE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !105
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !104
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !293
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !1161 ; 3 uses
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !1161
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, 8
  br i1 %i.bb, label %bb.d, label %bb.e, !prof !294

bb.d:                                             ; preds = %.noexc19
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.as, ptr align 8 %i.aw, i64 %i.ba, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc19
  %i.bc = icmp eq i64 %i.ba, 8
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !107
  store ptr %i.bd, ptr %i.as, align 8, !tbaa !107
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.be = getelementptr inbounds i8, ptr %i.as, i64 %i.ba
  store ptr %i.be, ptr %i.at, align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 536
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.bg)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 576
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.bi)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %i.bk)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.bm)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i8 0, ptr %i.bn, align 8, !tbaa !1162
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 697
  store i8 0, ptr %i.bo, align 1, !tbaa !309
  ret void

bb.l:                                             ; preds = %bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIP6colvarE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6colvarSaIS1_EED2Ev.exit

bb.n:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit23

bb.o:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit21

bb.p:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.q:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !232 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !289 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cc
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ca) #25
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.bu, %bb.q ], [ %i.bu, %bb.r ] ; 2 uses
  %i.ce = load ptr, ptr %i.bh, align 8, !tbaa !232 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i20, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit21, label %bb.s

bb.s:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !289 ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = ashr exact i64 %i.cj, 3
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cl
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cj) #25
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit21

_ZNSt13_Bvector_baseISaIbEED2Ev.exit21:           ; preds = %bb.s, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.o ], [ %.pn, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ], [ %.pn, %bb.s ] ; 2 uses
  %i.cn = load ptr, ptr %i.bf, align 8, !tbaa !232 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i22, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit23, label %bb.t

bb.t:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit21
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !289 ; 2 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cu
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cs) #25
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit23
end_hunk_0
