Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstraintSolver?download=true
inline.NumInlined: 8088
inline.NumDeleted: 3245
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4Luau16ConstraintSolver11tryDispatchERKNS_18SimplifyConstraintENS_7NotNullIKNS_10ConstraintEEEb:bb.a
bb.q:                                             ; preds = %._crit_edge
  %i.ak = invoke ptr @_ZN4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %bb.q
  %.not7490 = icmp eq ptr %i.ab, %i.ak
  br i1 %.not7490, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.r

._crit_edge93:                                    ; preds = %bb.w, %.preheader
  %i.am = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef nonnull %i.c)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph92, %bb.w
  %i.an = phi ptr [ %i.aa, %.lr.ph92 ], [ %i.at, %bb.w ] ; 2 uses
  %.sroa.052.091 = phi ptr [ %i.ab, %.lr.ph92 ], [ %i.au, %bb.w ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.052.091, align 8, !tbaa !109
  %i.ap = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ao)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %.sroa.01.0.copyload.i46 = load ptr, ptr %i.s, align 8, !tbaa !96
  %.sroa.0.0.copyload.i47 = load ptr, ptr %0, align 8, !tbaa !94
  invoke void @_ZN4Luau13simplifyUnionENS_7NotNullINS_12BuiltinTypesEEENS0_INS_9TypeArenaEEEPKNS_4TypeES7_(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SimplifyResult") align 8 %4, ptr %.sroa.01.0.copyload.i46, ptr %.sroa.0.0.copyload.i47, ptr noundef %i.an, ptr noundef %i.ap)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.t
  %i.ar = load ptr, ptr %4, align 8, !tbaa !749   ; 2 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !436 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i48, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc49
  call void @_ZdlPv(ptr noundef nonnull %i.as) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !109
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v
  %i.at = phi ptr [ %i.an, %bb.s ], [ %i.ar, %bb.v ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.052.091, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.au, %i.ak
  br i1 %.not74, label %._crit_edge93, label %bb.r

bb.x:                                             ; preds = %._crit_edge93
  %i.av = invoke noundef ptr @_ZN4Luau11emplaceTypeINS_9Unifiable5BoundIPKNS_4TypeEEEJRS5_EEEPT_PS3_DpOT0_(ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !186
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !109
  invoke void @_ZN4Luau15ConstraintGraph15shiftReferencesIPKNS_4TypeEEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(264) %i.ax, ptr noundef nonnull %i.c, ptr noundef %i.ay)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %.loopexit80

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.r, %bb.k, %bb.m, %bb.q, %bb.j, %bb.i, %._crit_edge, %bb.y, %bb.x, %._crit_edge93
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %.loopexit.split-lp82

.loopexit80:                                      ; preds = %bb.h, %.preheader79, %bb.z
  store ptr getelementptr inbounds nuw inrange(-16, 272) (i8, ptr @_ZTVN4Luau19FindAllUnionMembersE, i64 16), ptr %6, align 8, !tbaa !120
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !347 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.loopexit80
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !348
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #36, !inline_history !780
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i: ; preds = %bb.aa, %.loopexit80
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !466 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i51, label %_ZN4Luau7TypeIdsD2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #34, !inline_history !780
  br label %_ZN4Luau7TypeIdsD2Ev.exit.i

_ZN4Luau7TypeIdsD2Ev.exit.i:                      ; preds = %bb.ab, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !347 ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4Luau7TypeIdsD2Ev.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !348
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #36, !inline_history !780
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i: ; preds = %bb.ac, %_ZN4Luau7TypeIdsD2Ev.exit.i
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !466 ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i3.i, label %_ZN4Luau7TypeIdsD2Ev.exit4.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #34, !inline_history !780
  br label %_ZN4Luau7TypeIdsD2Ev.exit4.i

_ZN4Luau7TypeIdsD2Ev.exit4.i:                     ; preds = %bb.ad, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i2.i
  store ptr getelementptr inbounds nuw inrange(-16, 272) (i8, ptr @_ZTVN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEEE, i64 16), ptr %6, align 8, !tbaa !120
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !740 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i5.i, label %_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4Luau7TypeIdsD2Ev.exit4.i
  call void @_ZdlPv(ptr noundef nonnull %i.br) #34, !inline_history !781
  br label %_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i.i

_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i.i: ; preds = %bb.ae, %_ZN4Luau7TypeIdsD2Ev.exit4.i
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !359 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN4Luau19FindAllUnionMembersD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i.i
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !115
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #36, !inline_history !781
  br label %_ZN4Luau19FindAllUnionMembersD2Ev.exit

_ZN4Luau19FindAllUnionMembersD2Ev.exit:           ; preds = %_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.af

.loopexit.split-lp82:                             ; preds = %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp127, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp130, %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau19FindAllUnionMembersD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn41.pn.pn.pn

bb.af:                                            ; preds = %bb.a, %bb.b, %_ZN4Luau2isIJNS_9UnionTypeEERPKNS_4TypeEEEbOT0_.exit, %_ZN4Luau19FindAllUnionMembersD2Ev.exit
  %.1 = phi i1 [ %or.cond, %_ZN4Luau19FindAllUnionMembersD2Ev.exit ], [ true, %_ZN4Luau2isIJNS_9UnionTypeEERPKNS_4TypeEEEbOT0_.exit ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau16ConstraintSolver11tryDispatchERKNS_26PushFunctionTypeConstraintENS_7NotNullIKNS_10ConstraintEEE(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, ptr %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::TypePackIterator", align 8 ; 10 uses
  %4 = alloca %"struct.Luau::TypePackIterator", align 8 ; 11 uses
  %5 = alloca %"struct.Luau::TypePackIterator", align 8 ; 5 uses
  %6 = alloca %"struct.Luau::TypePackIterator", align 8 ; 5 uses
  %7 = alloca %"struct.Luau::TypePackIterator", align 8 ; 3 uses
  %8 = alloca %"struct.Luau::TypePackIterator", align 8 ; 3 uses
  %9 = alloca %"struct.Luau::TypePackIterator", align 8 ; 6 uses
  %10 = alloca %"struct.Luau::TypePackIterator", align 8 ; 6 uses
  %11 = alloca %"struct.Luau::TypePackIterator", align 8 ; 3 uses
  %12 = alloca %"struct.Luau::TypePackIterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1288
  %i.b = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.a) ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !516
  %i.d = icmp eq i32 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = select i1 %i.d, ptr %i.e, ptr null
  br label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1289
  %i.j = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.i) ; 4 uses
  %.not.i.i42 = icmp eq ptr %i.j, null
  br i1 %.not.i.i42, label %.critedge41, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit43

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit43: ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  %i.k = load i32, ptr %i.j, align 8, !tbaa !516
  %i.l = icmp eq i32 %i.k, 8
  %i.m = icmp ne ptr %i.g, null
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.c, label %.critedge41

bb.c:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit43
  %i.n = load i8, ptr @_ZN5FFlag37LuauInstantiateFunctionTypeBeforePushE, align 8, !tbaa !90, !range !91, !noundef !92
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit45

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.010.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !96
  %.sroa.09.0.copyload = load ptr, ptr %0, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 808
  %.sroa.08.0.copyload = load ptr, ptr %2, align 8, !tbaa !98
  %i.r = load ptr, ptr %1, align 8, !tbaa !1288
  %i.s = tail call { ptr, i8 } @_ZN4Luau11instantiateENS_7NotNullINS_12BuiltinTypesEEENS0_INS_9TypeArenaEEENS0_INS_15TypeCheckLimitsEEENS0_INS_5ScopeEEEPKNS_4TypeE(ptr %.sroa.010.0.copyload, ptr %.sroa.09.0.copyload, ptr nonnull %i.q, ptr %.sroa.08.0.copyload, ptr noundef %i.r) ; 2 uses
  %i.t = extractvalue { ptr, i8 } %i.s, 1
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %.critedge41

bb.e:                                             ; preds = %bb.d
  %i.v = extractvalue { ptr, i8 } %i.s, 0         ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = load i32, ptr %i.v, align 8, !tbaa !516
  %i.x = icmp eq i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = select i1 %i.x, ptr %i.y, ptr null
  br label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit45

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit45: ; preds = %bb.e, %bb.c
  %.133 = phi ptr [ %i.g, %bb.c ], [ %i.z, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %.133, i64 208 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !716
  call void @_ZN4Luau5beginEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %3, ptr noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 216 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !716
  call void @_ZN4Luau5beginEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %4, ptr noundef %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !716
  call void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %5, ptr noundef %i.ae)
  %i.af = call noundef zeroext i1 @_ZN4Luau16TypePackIteratoreqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  br i1 %i.af, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit45
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !716
  call void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %6, ptr noundef %i.ag)
  %i.ah = call noundef zeroext i1 @_ZN4Luau16TypePackIteratoreqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %i.ah, label %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread, label %bb.g

.critedge:                                        ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !1290, !range !91, !noundef !92
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !109
  %i.an = call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.am) ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN4Luau2isIJNS_8FreeTypeEEPKNS_4TypeEEEbOT0_.exit.thread, label %_ZN4Luau2isIJNS_8FreeTypeEEPKNS_4TypeEEEbOT0_.exit

_ZN4Luau2isIJNS_8FreeTypeEEPKNS_4TypeEEEbOT0_.exit: ; preds = %bb.h
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !516
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %bb.i, label %_ZN4Luau2isIJNS_8FreeTypeEEPKNS_4TypeEEEbOT0_.exit.thread

bb.i:                                             ; preds = %_ZN4Luau2isIJNS_8FreeTypeEEPKNS_4TypeEEEbOT0_.exit
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !109
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !109
  call void @_ZN4Luau16ConstraintSolver4bindENS_7NotNullIKNS_10ConstraintEEEPKNS_4TypeES7_(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr %2, ptr noundef %i.ar, ptr noundef %i.at)
  br label %_ZN4Luau2isIJNS_8FreeTypeEEPKNS_4TypeEEEbOT0_.exit.thread

_ZN4Luau2isIJNS_8FreeTypeEEPKNS_4TypeEEEbOT0_.exit.thread: ; preds = %bb.h, %bb.i, %_ZN4Luau2isIJNS_8FreeTypeEEPKNS_4TypeEEEbOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @_ZN4Luau16TypePackIteratorppEi(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZN4Luau16TypePackIteratorppEi(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.j

bb.j:                                             ; preds = %_ZN4Luau2isIJNS_8FreeTypeEEPKNS_4TypeEEEbOT0_.exit.thread, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1291
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1301
  %.not59 = icmp eq i64 %i.ax, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  br i1 %.not59, label %.critedge3, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit.thread
  %.03456 = phi i64 [ %i.bw, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit.thread ], [ 0, %bb.j ] ; 2 uses
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !716
  call void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %9, ptr noundef %i.ay)
  %i.az = call noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %9)
  br i1 %i.az, label %bb.k, label %.critedge3

bb.k:                                             ; preds = %.lr.ph
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !716
  call void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %10, ptr noundef %i.ba)
  %i.bb = call noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br i1 %i.bb, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !1291
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1302
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.03456
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1303
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1305
  %.not38 = icmp eq ptr %i.bi, null
  br i1 %.not38, label %bb.m, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i46, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !516
  %i.bm = icmp eq i32 %i.bl, 2
  br i1 %i.bm, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.n
  %i.bn = load i8, ptr @_ZN5FFlag37LuauInstantiateFunctionTypeBeforePushE, align 8, !tbaa !90, !range !91, !noundef !92
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !109
  %i.br = call noundef zeroext i1 @_ZN4Luau29ContainsAnyGeneric_DEPRECATED13hasAnyGenericEPKNS_4TypeE(ptr noundef %i.bq)
  br i1 %i.br, label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !109
  call void @_ZN4Luau16ConstraintSolver4bindENS_7NotNullIKNS_10ConstraintEEEPKNS_4TypeES7_(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr %2, ptr noundef %i.bt, ptr noundef %i.bv)
  br label %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit.thread: ; preds = %bb.m, %bb.n, %bb.p, %bb.o, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @_ZN4Luau16TypePackIteratorppEi(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @_ZN4Luau16TypePackIteratorppEi(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.bw = add nuw i64 %.03456, 1                  ; 2 uses
  %i.bx = load ptr, ptr %i.au, align 8, !tbaa !1291
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !1301
  %i.ca = icmp ult i64 %i.bw, %i.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  br i1 %i.ca, label %.lr.ph, label %.critedge3, !llvm.loop !1285

.critedge3:                                       ; preds = %.lr.ph, %_ZN4Luau3getINS_8FreeTypeEEEPKT_PKNS_4TypeE.exit.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.critedge3
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !1291
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1306
  %.not = icmp eq ptr %i.cd, null
  br i1 %.not, label %bb.q, label %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

bb.q:                                             ; preds = %.loopexit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 224 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !711 ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i47, label %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !589
  %i.ch = icmp eq i32 %i.cg, 2
  br i1 %i.ch, label %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit, label %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit: ; preds = %bb.r
  %i.ci = load i8, ptr @_ZN5FFlag37LuauInstantiateFunctionTypeBeforePushE, align 8, !tbaa !90, !range !91, !noundef !92
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.133, i64 216
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !711
  %i.cm = call noundef zeroext i1 @_ZN4Luau29ContainsAnyGeneric_DEPRECATED13hasAnyGenericEPKNS_11TypePackVarE(ptr noundef %i.cl)
  br i1 %i.cm, label %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.ce, align 8, !tbaa !711
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit
  %i.cn = phi ptr [ %.pre, %._crit_edge ], [ %i.cf, %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %.133, i64 216
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !711
  call void @_ZN4Luau16ConstraintSolver4bindENS_7NotNullIKNS_10ConstraintEEEPKNS_11TypePackVarES7_(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr %2, ptr noundef %i.cn, ptr noundef %i.cp)
  br label %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread: ; preds = %bb.q, %bb.r, %.loopexit, %bb.s, %bb.t, %bb.f, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %.critedge41

.critedge41:                                      ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit, %bb.d, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit43, %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau16ConstraintSolver11tryDispatchERKNS_27TypeInstantiationConstraintENS_7NotNullIKNS_10ConstraintEEE(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1308
  %i.b = tail call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.a) ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !516
  switch i32 %i.c, label %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit [
    i32 20, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i
    i32 6, label %.loopexit
    i32 7, label %.loopexit
  ]

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.e = load i32, ptr %i.d, align 8, !tbaa !585
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %bb.c, label %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit

bb.c:                                             ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load i64, ptr %i.g, align 8, !tbaa !586
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  %i.l = icmp eq ptr %i.b, %i.k
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.n = load i64, ptr %i.m, align 8, !tbaa !587
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !497
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.y, %bb.h ]
  %.01832.i.i.i = phi i64 [ 0, %bb.e ], [ %i.x, %bb.h ]
  %.01933.i.i.i = and i64 %.pn.i.i.i, %i.o        ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.01933.i.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.b
  br i1 %.not.i, label %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add i64 %.01832.i.i.i, 1                 ; 3 uses
  %i.y = add i64 %i.x, %.01933.i.i.i
  %.not.i.i13.i = icmp ugt i64 %i.x, %i.o
  br i1 %.not.i.i13.i, label %.loopexit, label %bb.f, !llvm.loop !29

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.b, %bb.b, %bb.d, %bb.c
  %i.z = load ptr, ptr %1, align 8, !tbaa !1308
  %i.aa = tail call noundef zeroext i1 @_ZN4Luau16ConstraintSolver5blockEPKNS_4TypeENS_7NotNullIKNS_10ConstraintEEE(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr noundef %i.z, ptr %2) ; 0 uses
  br label %bb.i

_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit: ; preds = %bb.f, %bb.b, %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1309
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1308
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !98
  %i.ag = tail call noundef ptr @_ZN4Luau16ConstraintSolver23instantiateFunctionTypeEPKNS_4TypeERKSt6vectorIS3_SaIS3_EERKS4_IPKNS_11TypePackVarESaISB_EENS_7NotNullINS_5ScopeEEERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr %.sroa.0.0.copyload, ptr nonnull align 4 poison)
  tail call void @_ZN4Luau16ConstraintSolver4bindENS_7NotNullIKNS_10ConstraintEEEPKNS_4TypeES7_(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr nonnull %2, ptr noundef %i.ac, ptr noundef %i.ag)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit, %.loopexit
  %.0 = phi i1 [ true, %_ZNK4Luau16ConstraintSolver9isBlockedEPKNS_4TypeE.exit ], [ false, %.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau16ConstraintSolver11tryDispatchERKNS_18PushTypeConstraintENS_7NotNullIKNS_10ConstraintEEEb(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Luau::Unifier2", align 8   ; 7 uses
  %5 = alloca %"struct.Luau::Subtyping", align 8  ; 11 uses
  %6 = alloca %"class.Luau::DenseHashSet.105", align 8 ; 7 uses
  %7 = alloca %"struct.Luau::PushTypeResult", align 8 ; 10 uses
  %8 = alloca %"class.Luau::Variant", align 8     ; 9 uses
  %9 = alloca %"class.std::shared_ptr.72", align 16 ; 4 uses
  %10 = alloca %"class.Luau::Variant", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %.sroa.027.0.copyload = load ptr, ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.026.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !96
  %.sroa.025.0.copyload = load ptr, ptr %2, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  call void @_ZN4Luau8Unifier2C1ENS_7NotNullINS_9TypeArenaEEENS1_INS_12BuiltinTypesEEENS1_INS_5ScopeEEENS1_INS_21InternalErrorReporterEEEPNS_12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toISC_EEE(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr %.sroa.027.0.copyload, ptr %.sroa.026.0.copyload, ptr %.sroa.025.0.copyload, ptr nonnull %i.b, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %.sroa.024.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !96
  %.sroa.023.0.copyload = load ptr, ptr %0, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.022.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.021.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !150
  invoke void @_ZN4Luau9SubtypingC1ENS_7NotNullINS_12BuiltinTypesEEENS1_INS_9TypeArenaEEENS1_INS_10NormalizerEEENS1_INS_19TypeFunctionRuntimeEEENS1_INS_21InternalErrorReporterEEE(ptr noundef nonnull align 8 dereferenceable(256) %5, ptr %.sroa.024.0.copyload, ptr %.sroa.023.0.copyload, ptr %.sroa.022.0.copyload, ptr %.sroa.021.0.copyload, ptr nonnull %i.b)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !1312
  %i.g = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.f)
          to label %.noexc unwind label %bb.k     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.h = load i32, ptr %i.g, align 8, !tbaa !516
  switch i32 %i.h, label %.loopexit [
    i32 20, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i
    i32 6, label %.loopexit112
    i32 7, label %.loopexit112
  ]

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  %i.j = load i32, ptr %i.i, align 8, !tbaa !585
  %.not11.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.l = load i64, ptr %i.k, align 8, !tbaa !586
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.loopexit112, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  %i.p = icmp eq ptr %i.g, %i.o
  br i1 %i.p, label %.loopexit112, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.r = load i64, ptr %i.q, align 8, !tbaa !587
  %i.s = add i64 %i.r, -1                         ; 2 uses
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !497
  br label %bb.g

end_hunk_0
