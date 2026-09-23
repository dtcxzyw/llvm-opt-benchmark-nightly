Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/FragmentAutocomplete?download=true
inline.NumInlined: 4856
inline.NumDeleted: 2809
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau16findClosestScopeERKSt10shared_ptrINS_6ModuleEERKNS_8PositionE:bb.a
bb.l:                                             ; preds = %bb.k
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.am, %bb.l ], [ %i.aw, %bb.m ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !61

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !327
  br label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit

bb.o:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  resume { ptr, i32 } %i.ay

_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit:    ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZNK4Luau8PositionleERKS0_.exit.thread, %_ZNK4Luau8PositionleERKS0_.exit, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau24parseFragment_DEPRECATEDEPNS_12AstStatBlockEPNS_12AstNameTableESt17basic_string_viewIcSt11char_traitsIcEERKNS_8PositionESt8optionalIS8_E(ptr dead_on_unwind noalias writable sret(%"class.std::optional.33") align 8 %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.std::optional.5") align 8 captures(none) %6) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.Luau::FragmentAutocompleteAncestryResult", align 8 ; 17 uses
  %8 = alloca %"struct.Luau::FragmentParseResult", align 8 ; 30 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"struct.Luau::ParseOptions", align 8 ; 14 uses
  %11 = alloca %"struct.Luau::ParseResult", align 8 ; 18 uses
  %12 = alloca %"struct.Luau::ParseOptions", align 8 ; 14 uses
  %13 = alloca %"class.std::vector.27", align 16  ; 12 uses
  %14 = alloca %"class.std::vector.27", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN4Luau39findAncestryForFragmentParse_DEPRECATEDEPNS_12AstStatBlockERKNS_8PositionE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::FragmentAutocompleteAncestryResult") align 8 %7, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !124  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !124  ; 2 uses
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = load i32, ptr %5, align 4                ; 2 uses
  %i.k = load i32, ptr %i.d, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.j, %i.k                   ; 2 uses
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4Luau8PositiongeERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i32 %i.f, %i.h
  %i.o = icmp ugt i32 %i.j, %i.k
  %.0.i.i = select i1 %i.l, i1 %i.n, i1 %i.o
  br label %_ZNK4Luau8PositiongeERKS0_.exit

_ZNK4Luau8PositiongeERKS0_.exit:                  ; preds = %bb.a, %bb.b
  %i.p = phi i1 [ true, %bb.a ], [ %.0.i.i, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !886  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !887  ; 2 uses
  %i.u = icmp ne i32 %i.r, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !194, !range !128, !noundef !129
  %i.x = trunc nuw i8 %i.w to i1
  %.val.i = load i64, ptr %6, align 8
  %.val3.i = load i64, ptr %5, align 4            ; 2 uses
  %.sroa.0.0.i = select i1 %i.x, i64 %.val.i, i64 %.val3.i ; 2 uses
  %.sroa.5123.0.extract.shift = lshr i64 %.sroa.0.0.i, 32
  %or.cond = select i1 %i.p, i1 %i.u, i1 false
  %i.y = trunc i64 %.val3.i to i32                ; 2 uses
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK4Luau8PositiongeERKS0_.exit
  br i1 %i.u, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ugt i32 %i.r, %i.y
  br i1 %.not, label %bb.e, label %bb.f

.critedge:                                        ; preds = %bb.c
  %i.z = icmp ult i32 %i.t, %i.y
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.d, %_ZNK4Luau8PositiongeERKS0_.exit, %bb.e
  %.sroa.0109.0.in.in = phi ptr [ %i.s, %_ZNK4Luau8PositiongeERKS0_.exit ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %.critedge ]
  %.sroa.0109.0.in = load i64, ptr %.sroa.0109.0.in.in, align 4 ; 4 uses
  %.sroa.10.0.in = lshr i64 %.sroa.0109.0.in, 32
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %3
  %.not4961.i = icmp samesign eq i64 %3, 0
  br i1 %.not4961.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ab = and i64 %.sroa.0109.0.in, 4294967295
  %i.ac = and i64 %.sroa.0.0.i, 4294967295        ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %.lr.ph.i
  %.03569.i = phi ptr [ %4, %.lr.ph.i ], [ %i.ar, %.thread.i ] ; 2 uses
  %.03668.i = phi i8 [ 0, %.lr.ph.i ], [ %.2.i, %.thread.i ] ; 2 uses
  %.03767.i = phi i8 [ 0, %.lr.ph.i ], [ %.138.i, %.thread.i ] ; 2 uses
  %.04166.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aq, %.thread.i ] ; 4 uses
  %.04365.i = phi i64 [ 0, %.lr.ph.i ], [ %.144.i, %.thread.i ] ; 3 uses
  %.04664.i = phi i64 [ 0, %.lr.ph.i ], [ %.147.i, %.thread.i ] ; 4 uses
  %.063.i = phi i64 [ 0, %.lr.ph.i ], [ %.122.i, %.thread.i ] ; 2 uses
  %.02562.i = phi i64 [ 0, %.lr.ph.i ], [ %.227.i, %.thread.i ] ; 3 uses
  %i.ad = load i8, ptr %.03569.i, align 1, !tbaa !195
  %i.ae = trunc nuw i8 %.03767.i to i1
  %i.af = trunc nuw i8 %.03668.i to i1            ; 2 uses
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp eq i64 %.04664.i, %i.ab
  %i.ah = icmp eq i64 %.04365.i, %.sroa.10.0.in
  %or.cond51.i = select i1 %i.ag, i1 %i.ah, i1 false ; 2 uses
  %.122.i = select i1 %or.cond51.i, i64 %.04166.i, i64 %.063.i ; 2 uses
  %.138.i = select i1 %or.cond51.i, i8 1, i8 %.03767.i ; 3 uses
  %i.ai = icmp eq i64 %.04664.i, %i.ac
  %i.aj = icmp eq i64 %.04365.i, %.sroa.5123.0.extract.shift
  %or.cond53.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond53.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = trunc nuw i8 %.138.i to i1
  %.not.i = xor i1 %i.ak, true
  %or.cond3.i = select i1 %.not.i, i1 true, i1 %i.af
  br i1 %or.cond3.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = icmp ugt i64 %.04664.i, %i.ac           ; 2 uses
  %i.am = add i64 %.04166.i, -1
  %spec.select.i = select i1 %i.al, i64 %i.am, i64 %.02562.i
  %spec.select54.i = zext i1 %i.al to i8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %.227.i = phi i64 [ %.02562.i, %bb.i ], [ %.04166.i, %bb.h ], [ %spec.select.i, %bb.j ] ; 2 uses
  %.2.i = phi i8 [ %.03668.i, %bb.i ], [ 1, %bb.h ], [ %spec.select54.i, %bb.j ] ; 2 uses
  %i.an = icmp eq i8 %i.ad, 10                    ; 2 uses
  %i.ao = add i64 %.04365.i, 1
  %i.ap = zext i1 %i.an to i64
  %.147.i = add i64 %.04664.i, %i.ap
  %.144.i = select i1 %i.an, i64 0, i64 %i.ao
  %i.aq = add nuw i64 %.04166.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.03569.i, i64 1 ; 2 uses
  %.not49.i = icmp eq ptr %i.ar, %i.aa
  br i1 %.not49.i, label %._crit_edge.loopexit.i, label %bb.g

._crit_edge.loopexit.i:                           ; preds = %.thread.i
  %i.as = trunc nuw i8 %.138.i to i1
  %i.at = xor i1 %i.as, true
  %i.au = trunc nuw i8 %.2.i to i1
  %i.av = select i1 %i.at, i1 true, i1 %i.au
  %i.aw = select i1 %i.av, i64 %.227.i, i64 %3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %._crit_edge.loopexit.i, %bb.f
  %.059.i = phi i64 [ %.122.i, %._crit_edge.loopexit.i ], [ 0, %bb.f ], [ %.063.i, %bb.g ] ; 3 uses
  %.5.i = phi i64 [ %i.aw, %._crit_edge.loopexit.i ], [ 0, %bb.f ], [ %.02562.i, %bb.g ] ; 3 uses
  %.sroa.speculated10.i = tail call i64 @llvm.umin.i64(i64 %.5.i, i64 %.059.i) ; 5 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.059.i, i64 %.5.i)
  %i.ax = sub nuw i64 %.sroa.speculated.i, %.sroa.speculated10.i ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.speculated10.i ; 4 uses
  %i.az = icmp ugt i64 %.sroa.speculated10.i, %3
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, i64 noundef %.sroa.speculated10.i, i64 noundef %3) #29
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.loopexit
  %i.ba = sub nuw i64 %3, %.sroa.speculated10.i
  %.sroa.speculated.i61 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !197
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !199
  store i8 0, ptr %i.bb, align 8, !tbaa !195
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i8 0, i64 64, i1 false)
  %i.bg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc.i unwind label %bb.n   ; 3 uses

.noexc.i:                                         ; preds = %bb.l
  invoke void @_ZN4Luau9AllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %bb.q unwind label %bb.m, !noalias !888

bb.m:                                             ; preds = %.noexc.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 16) #28, !noalias !888
  br label %.body.i

bb.n:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !202 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %.body.i
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !203
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #28
  br label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i:  ; preds = %bb.o, %.body.i
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !180
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #28
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i: ; preds = %bb.p, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i
  %i.bv = load ptr, ptr %8, align 8, !tbaa !204   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bb
  br i1 %i.bw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i
  %i.bx = load i64, ptr %i.bb, align 8, !tbaa !195
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #28
  br label %.body

bb.q:                                             ; preds = %.noexc.i
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 5 uses
  store ptr %i.bg, ptr %i.bz, align 8, !tbaa !206, !alias.scope !888
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i32 0, ptr %i.ca, align 8, !tbaa !130
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 108
  store i32 0, ptr %i.cb, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.cc, ptr %9, align 8, !tbaa !197
  %i.cd = icmp eq ptr %4, null
  %i.ce = icmp ne i64 %.059.i, %.5.i
  %or.cond.i64 = and i1 %i.cd, %i.ce
  br i1 %or.cond.i64, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.116) #29
          to label %.noexc66 unwind label %bb.ad

.noexc66:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !134
  %i.cf = icmp ugt i64 %i.ax, 15
  br i1 %i.cf, label %.noexc.i65, label %._crit_edge.i.i

.noexc.i65:                                       ; preds = %bb.s
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc67 unwind label %bb.ad  ; 2 uses

.noexc67:                                         ; preds = %.noexc.i65
  store ptr %i.cg, ptr %9, align 8, !tbaa !204
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !134
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !195
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc67, %bb.s
  %i.ci = phi ptr [ %i.cg, %.noexc67 ], [ %i.cc, %bb.s ] ; 2 uses
  switch i64 %i.ax, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.cj = load i8, ptr %i.ay, align 1, !tbaa !195
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !195
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.ay, i64 %i.ax, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !199
  %i.cm = load ptr, ptr %9, align 8, !tbaa !204
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck
  store i8 0, ptr %i.cn, align 1, !tbaa !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.co = load ptr, ptr %8, align 8, !tbaa !204   ; 6 uses
  %i.cp = icmp eq ptr %i.co, %i.bb
  %i.cq = load ptr, ptr %9, align 8, !tbaa !204   ; 5 uses
  %i.cr = icmp eq ptr %i.cq, %i.cc                ; 2 uses
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.v
  br i1 %i.cr, label %bb.w, label %.thread.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.v
  br i1 %i.cr, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cs = load i64, ptr %i.cl, align 8, !tbaa !199 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.ct)
  switch i64 %i.cs, label %bb.y [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !195
  store i8 %i.cu, ptr %i.co, align 1, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cq, i64 %i.cs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.cv = load i64, ptr %i.cl, align 8, !tbaa !199 ; 2 uses
  store i64 %i.cv, ptr %i.bc, align 8, !tbaa !199
  %i.cw = load ptr, ptr %8, align 8, !tbaa !204
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store i8 0, ptr %i.cx, align 1, !tbaa !195
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !204
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i69:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cq, ptr %8, align 8, !tbaa !204
  %i.cy = load <2 x i64>, ptr %i.cl, align 8, !tbaa !195
  store <2 x i64> %i.cy, ptr %i.bc, align 8, !tbaa !195
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cz = load i64, ptr %i.bb, align 8, !tbaa !195
  store ptr %i.cq, ptr %8, align 8, !tbaa !204
  %i.da = load <2 x i64>, ptr %i.cl, align 8, !tbaa !195
  store <2 x i64> %i.da, ptr %i.bc, align 8, !tbaa !195
  %.not.i68 = icmp eq ptr %i.co, null
  br i1 %.not.i68, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.co, ptr %9, align 8, !tbaa !204
  store i64 %i.cz, ptr %i.cc, align 8, !tbaa !195
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i69
  store ptr %i.cc, ptr %9, align 8, !tbaa !204
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.z, %bb.aa
  %i.db = phi ptr [ %i.co, %bb.z ], [ %i.cc, %bb.aa ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.cl, align 8, !tbaa !199
  store i8 0, ptr %i.db, align 1, !tbaa !195
  %i.dc = load ptr, ptr %9, align 8, !tbaa !204   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.de = load i64, ptr %i.cc, align 8, !tbaa !195
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.dg = load i8, ptr @_ZN5FFlag33DebugLogFragmentsFromAutocompleteE, align 8, !tbaa !209, !range !128, !noundef !129
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.di = load ptr, ptr @_ZN4Luau7logLuauE, align 8, !tbaa !58
  invoke void %i.di(i64 17, ptr nonnull @.str.104, i64 %.sroa.speculated.i61, ptr %i.ay)
          to label %bb.af unwind label %bb.ae

bb.ac:                                            ; preds = %bb.k
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ad:                                            ; preds = %.noexc.i65, %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bj

bb.ae:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.af:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  store i8 0, ptr %i.do, align 8, !tbaa !216
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 89
  store i8 0, ptr %i.dp, align 1, !tbaa !217
  store i16 0, ptr %10, align 8
  store i8 1, ptr %i.dm, align 1, !tbaa !218
  %i.dq = load ptr, ptr %7, align 8, !tbaa !166
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !164 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ec = load <2 x i64>, ptr %i.dr, align 8, !tbaa !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 24, i1 false)
  %i.ed = load ptr, ptr %i.dv, align 8, !tbaa !179
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.eh = load <2 x ptr>, ptr %i.du, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, i8 0, i64 24, i1 false)
  store i64 %i.dt, ptr %i.dx, align 8, !tbaa !164
  store i64 %.sroa.0109.0.in, ptr %i.dy, align 8
  store i8 1, ptr %i.dn, align 8, !tbaa !220
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.ei = load i16, ptr %10, align 8
  store i16 %i.ei, ptr %12, align 8
  store ptr %i.dq, ptr %i.ea, align 8, !tbaa !166
  store <2 x i64> %i.ec, ptr %i.eb, align 8, !tbaa !134
  store i64 %i.dt, ptr %i.ee, align 8, !tbaa !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.eh, ptr %i.ef, align 8, !tbaa !219
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.ed, ptr %i.ej, align 8, !tbaa !179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i64 %.sroa.0109.0.in, ptr %i.ek, align 8
  store i8 1, ptr %i.dz, align 8, !tbaa !220
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.em = load i16, ptr %i.do, align 8
  store i16 %i.em, ptr %i.el, align 8
  invoke void @_ZN4Luau6Parser5parseEPKcmRNS_12AstNameTableERNS_9AllocatorENS_12ParseOptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::ParseResult") align 8 %11, ptr noundef %i.ay, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %.pre, ptr noundef nonnull align 8 %12)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eo = load i8, ptr %i.dz, align 8, !tbaa !220, !range !128, !noundef !129
  %i.ep = trunc nuw i8 %i.eo to i1
  store i8 0, ptr %i.dz, align 8, !tbaa !220
  br i1 %i.ep, label %bb.ah, label %_ZN4Luau12ParseOptionsD2Ev.exit

bb.ah:                                            ; preds = %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !177 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !179
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #28
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %i.ex = load ptr, ptr %i.en, align 8, !tbaa !166 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4Luau12ParseOptionsD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #26
  br label %_ZN4Luau12ParseOptionsD2Ev.exit

_ZN4Luau12ParseOptionsD2Ev.exit:                  ; preds = %bb.ag, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i, %bb.aj
  %i.ey = load ptr, ptr %11, align 8, !tbaa !240  ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %_ZN4Luau12ParseOptionsD2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.fa, align 8, !tbaa !183
  br label %bb.ay

bb.al:                                            ; preds = %bb.af
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12ParseOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %12) #26
  br label %bb.bi

bb.am:                                            ; preds = %_ZN4Luau12ParseOptionsD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fd = load <2 x ptr>, ptr %15, align 8, !tbaa !151
  store <2 x ptr> %i.fd, ptr %13, align 16, !tbaa !151
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !180
  store ptr %i.fg, ptr %i.fe, align 16, !tbaa !180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %.sroa.04.0.copyload = load i64, ptr %5, align 4
  invoke void @_ZN4Luau37findAncestryAtPositionForAutocompleteEPNS_12AstStatBlockENS_8PositionE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.27") align 8 %14, ptr noundef nonnull %i.ey, i64 %.sroa.04.0.copyload)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !151
  %i.fi = load ptr, ptr %14, align 8, !tbaa !151
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !151
  %i.fl = load ptr, ptr %13, align 16, !tbaa !151 ; 2 uses
  %i.fm = ptrtoint ptr %i.fh to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 %i.fo
  invoke void @_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.fp, ptr %i.fi, ptr %i.fk)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  %16 = load ptr, ptr %13, align 16, !tbaa !151
  %i.fq = icmp eq ptr %i.c, null
  %i.fr = load ptr, ptr %11, align 8              ; 2 uses
  %spec.select = select i1 %i.fq, ptr %i.fr, ptr %i.c
  %i.fs = load ptr, ptr %i.be, align 8, !tbaa !174 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !180
  %i.fw = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !151
  %17 = insertelement <4 x ptr> poison, ptr %i.fr, i64 0
  %18 = insertelement <4 x ptr> %17, ptr %16, i64 1
  %19 = shufflevector <2 x ptr> %i.fw, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x ptr> %18, <4 x ptr> %19, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %20, ptr %i.bd, align 8, !tbaa !58
  %.not.i.i.i.i.i = icmp eq ptr %i.fs, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EEaSEOS4_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fs to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fz) #28
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EEaSEOS4_.exit: ; preds = %bb.ao, %bb.ap
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store ptr %spec.select, ptr %i.ga, align 8, !tbaa !249
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.gc = load ptr, ptr %i.bf, align 8, !tbaa !202 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !203
  %i.gg = load <2 x ptr>, ptr %i.gb, align 8, !tbaa !250
  store <2 x ptr> %i.gg, ptr %i.bf, align 8, !tbaa !250
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !203
  store ptr %i.gi, ptr %i.ge, align 8, !tbaa !203
  %.not.i.i.i.i.i73 = icmp eq ptr %i.gc, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i73, label %_ZNSt6vectorIN4Luau7CommentESaIS1_EEaSEOS3_.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EEaSEOS4_.exit
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = ptrtoint ptr %i.gc to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gl) #28
  br label %_ZNSt6vectorIN4Luau7CommentESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN4Luau7CommentESaIS1_EEaSEOS3_.exit: ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EEaSEOS4_.exit, %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.gm, ptr %0, align 8, !tbaa !197
  %i.gn = load ptr, ptr %8, align 8, !tbaa !204   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.bb
  br i1 %i.go, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EEaSEOS3_.exit
  %i.gp = load i64, ptr %i.bc, align 8, !tbaa !199 ; 3 uses
  %i.gq = icmp ult i64 %i.gp, 16
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add nuw nsw i64 %i.gp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gm, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.gr, i1 false)
  br label %_ZNSt8optionalIN4Luau19FragmentParseResultEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EEaSEOS3_.exit
  store ptr %i.gn, ptr %0, align 8, !tbaa !204
  %i.gs = load i64, ptr %i.bb, align 8, !tbaa !195
  store i64 %i.gs, ptr %i.gm, align 8, !tbaa !195
  %.pre136 = load i64, ptr %i.bc, align 8, !tbaa !199
  br label %_ZNSt8optionalIN4Luau19FragmentParseResultEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

_ZNSt8optionalIN4Luau19FragmentParseResultEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gt = phi i64 [ %i.gp, %bb.ar ], [ %.pre136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !199
  store ptr %i.bb, ptr %8, align 8, !tbaa !204
  store i64 0, ptr %i.bc, align 8, !tbaa !199
  store i8 0, ptr %i.bb, align 8, !tbaa !195
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gw = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !58
  store <2 x ptr> %i.gw, ptr %i.gv, align 8, !tbaa !58
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = load <2 x ptr>, ptr %i.ft, align 8, !tbaa !151
  store <2 x ptr> %i.gy, ptr %i.gx, align 8, !tbaa !151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ha = load <2 x ptr>, ptr %i.ga, align 8, !tbaa !58
  store <2 x ptr> %i.ha, ptr %i.gz, align 8, !tbaa !58
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hc = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !250
  store <2 x ptr> %i.hc, ptr %i.hb, align 8, !tbaa !250
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.he = load <2 x i64>, ptr %i.bz, align 8
  store ptr null, ptr %i.bz, align 8, !tbaa !206
  store <2 x i64> %i.he, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.hf, align 8, !tbaa !183
  %i.hg = load ptr, ptr %14, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt8optionalIN4Luau19FragmentParseResultEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !180
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #28
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit:   ; preds = %_ZNSt8optionalIN4Luau19FragmentParseResultEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.hm = load ptr, ptr %13, align 16, !tbaa !174 ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit76, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit
  %i.hn = load ptr, ptr %i.fe, align 16, !tbaa !180
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hq) #28
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit76

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit76: ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.ay

bb.au:                                            ; preds = %bb.am
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit78

bb.av:                                            ; preds = %bb.an
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load ptr, ptr %14, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit78, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !180
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #28
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit78

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit78: ; preds = %bb.aw, %bb.av, %bb.au
  %.pn50 = phi { ptr, i32 } [ %i.hr, %bb.au ], [ %i.hs, %bb.av ], [ %i.hs, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.hz = load ptr, ptr %13, align 16, !tbaa !174 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit80, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit78
  %i.ia = load ptr, ptr %i.fe, align 16, !tbaa !180
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.id) #28
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit80

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit80: ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit78, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN4Luau11ParseResultD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #26
  br label %bb.bi

bb.ay:                                            ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit76, %bb.ak
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !251 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i81, label %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZdlPv(ptr noundef nonnull %i.if) #26
  br label %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i

_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i: ; preds = %bb.az, %bb.ay
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !202 ; 3 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i82, label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i83, label %bb.ba

bb.ba:                                            ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !203
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ih to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.im) #28
  br label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i83

_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i83: ; preds = %bb.ba, %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !252 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !253 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.io, %i.iq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i83, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.it, %.lr.ph.i.i.i.i ], [ %i.io, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i83 ] ; 3 uses
  %i.ir = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i.i.i) #26, !inline_history !5
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.it, %i.iq
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.in, align 8, !tbaa !252
end_hunk_0
