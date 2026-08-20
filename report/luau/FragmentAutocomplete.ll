inline.NumInlined: 4856
inline.NumDeleted: 2809
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau28findAncestryForFragmentParseEPNS_12AstStatBlockERKNS_8PositionES1_:bb.a
  %i.abs = ptrtoint ptr %.sroa.0522.25 to i64
  %i.abt = sub i64 %i.abr, %i.abs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0522.25, i64 noundef %i.abt) #28
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit393

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit393: ; preds = %bb.et, %bb.eu
  %i.abu = load ptr, ptr %6, align 8, !tbaa !142  ; 2 uses
  %.not.i.i394 = icmp eq ptr %i.abu, null
  br i1 %.not.i.i394, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit395, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit393
  call void @_ZdlPv(ptr noundef nonnull %i.abu) #26
  br label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit395

_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit395: ; preds = %bb.ev, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit393
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.abv = load ptr, ptr %5, align 8, !tbaa !167  ; 3 uses
  %.not.i.i.i396 = icmp eq ptr %i.abv, null
  br i1 %.not.i.i.i396, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit397, label %bb.ew

bb.ew:                                            ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit395
  %i.abw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !174
  %i.aby = ptrtoint ptr %i.abx to i64
  %i.abz = ptrtoint ptr %i.abv to i64
  %i.aca = sub i64 %i.aby, %i.abz
  call void @_ZdlPvm(ptr noundef nonnull %i.abv, i64 noundef %i.aca) #28
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit397

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit397: ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit395, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn189.pn.pn

bb.ex:                                            ; preds = %bb.b, %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit391
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZN4Luau37findAncestryAtPositionForAutocompleteEPNS_12AstStatBlockENS_8PositionE(ptr dead_on_unwind writable sret(%"class.std::vector.27") align 8, ptr noundef, i64) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !141    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !141  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = lshr i64 %i.m, 9
  %i.p = xor i64 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !142
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !143

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !139
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = lshr i64 %i.aa, 9
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = load ptr, ptr %0, align 8, !tbaa !142   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !141 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store i64 %i.aa, ptr %.lcssa, align 8, !tbaa !140
  %i.al = load i64, ptr %i.a, align 8, !tbaa !134
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !134
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !141 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau13parseFragmentEPNS_12AstStatBlockES1_PNS_12AstNameTableESt17basic_string_viewIcSt11char_traitsIcEERKNS_8PositionESt8optionalIS8_E(ptr dead_on_unwind noalias writable sret(%"class.std::optional.33") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 %4, ptr %5, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.std::optional.5") align 8 captures(none) %7) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.Luau::FragmentAutocompleteAncestryResult", align 8 ; 18 uses
  %9 = alloca %"struct.Luau::FragmentParseResult", align 8 ; 30 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"struct.Luau::ParseOptions", align 8 ; 14 uses
  %12 = alloca %"struct.Luau::ParseResult", align 8 ; 19 uses
  %13 = alloca %"struct.Luau::ParseOptions", align 8 ; 14 uses
  %14 = alloca %"class.std::vector.27", align 8   ; 11 uses
  %15 = alloca %"class.std::vector.27", align 8   ; 8 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.c, align 8, !tbaa !176
  br label %bb.bi

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZN4Luau28findAncestryForFragmentParseEPNS_12AstStatBlockERKNS_8PositionES1_(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::FragmentAutocompleteAncestryResult") align 8 %8, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !178  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %.sroa.6100.0.extract.shift = lshr i64 %i.g, 32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 %4
  %.not4961.i = icmp samesign eq i64 %4, 0
  br i1 %.not4961.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !187, !range !92, !noundef !93
  %i.k = trunc nuw i8 %i.j to i1
  %.val.i = load i64, ptr %7, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 112
  %.val3.i = load i64, ptr %i.l, align 8
  %.sroa.0.0.i = select i1 %i.k, i64 %.val.i, i64 %.val3.i ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.i, 32
  %i.m = and i64 %i.g, 4294967295
  %i.n = and i64 %.sroa.0.0.i, 4294967295         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %.lr.ph.i
  %.03569.i = phi ptr [ %5, %.lr.ph.i ], [ %i.ab, %.thread.i ] ; 2 uses
  %.03668.i = phi i8 [ 0, %.lr.ph.i ], [ %.2.i, %.thread.i ] ; 2 uses
  %.03767.i = phi i8 [ 0, %.lr.ph.i ], [ %.138.i, %.thread.i ] ; 2 uses
  %.04166.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aa, %.thread.i ] ; 3 uses
  %.04365.i = phi i64 [ 0, %.lr.ph.i ], [ %.144.i, %.thread.i ] ; 3 uses
  %.04664.i = phi i64 [ 0, %.lr.ph.i ], [ %.147.i, %.thread.i ] ; 4 uses
  %.063.i = phi i64 [ 0, %.lr.ph.i ], [ %.122.i, %.thread.i ] ; 2 uses
  %.02562.i = phi i64 [ 0, %.lr.ph.i ], [ %.227.i, %.thread.i ] ; 3 uses
  %i.o = load i8, ptr %.03569.i, align 1, !tbaa !189
  %i.p = trunc nuw i8 %.03767.i to i1
  %i.q = trunc nuw i8 %.03668.i to i1             ; 2 uses
  %or.cond.i = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %.04664.i, %i.m
  %i.s = icmp eq i64 %.04365.i, %.sroa.6100.0.extract.shift
  %or.cond51.i = select i1 %i.r, i1 %i.s, i1 false ; 2 uses
  %.122.i = select i1 %or.cond51.i, i64 %.04166.i, i64 %.063.i ; 2 uses
  %.138.i = select i1 %or.cond51.i, i8 1, i8 %.03767.i ; 3 uses
  %i.t = icmp eq i64 %.04664.i, %i.n
  %i.u = icmp eq i64 %.04365.i, %.sroa.5.0.extract.shift
  %or.cond53.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond53.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = trunc nuw i8 %.138.i to i1
  %.not.i = xor i1 %i.v, true
  %or.cond3.i = select i1 %.not.i, i1 true, i1 %i.q
  br i1 %or.cond3.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ugt i64 %.04664.i, %i.n             ; 2 uses
  %spec.select.i = select i1 %i.w, i64 -1, i64 %.02562.i
  %spec.select54.i = zext i1 %i.w to i8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f, %bb.e
  %.227.i = phi i64 [ %.02562.i, %bb.f ], [ %.04166.i, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %.2.i = phi i8 [ %.03668.i, %bb.f ], [ 1, %bb.e ], [ %spec.select54.i, %bb.g ] ; 2 uses
  %i.x = icmp eq i8 %i.o, 10                      ; 2 uses
  %i.y = add i64 %.04365.i, 1
  %i.z = zext i1 %i.x to i64
  %.147.i = add i64 %.04664.i, %i.z
  %.144.i = select i1 %i.x, i64 0, i64 %i.y
  %i.aa = add nuw i64 %.04166.i, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.03569.i, i64 1 ; 2 uses
  %.not49.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not49.i, label %._crit_edge.loopexit.i, label %bb.d

._crit_edge.loopexit.i:                           ; preds = %.thread.i
  %i.ac = trunc nuw i8 %.138.i to i1
  %i.ad = xor i1 %i.ac, true
  %i.ae = trunc nuw i8 %.2.i to i1
  %i.af = select i1 %i.ad, i1 true, i1 %i.ae
  %i.ag = select i1 %i.af, i64 %.227.i, i64 %4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %._crit_edge.loopexit.i, %bb.c
  %.059.i = phi i64 [ %.122.i, %._crit_edge.loopexit.i ], [ 0, %bb.c ], [ %.063.i, %bb.d ] ; 2 uses
  %.5.i = phi i64 [ %i.ag, %._crit_edge.loopexit.i ], [ 0, %bb.c ], [ %.02562.i, %bb.d ] ; 2 uses
  %.sroa.speculated10.i = tail call i64 @llvm.umin.i64(i64 %.5.i, i64 %.059.i) ; 5 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.059.i, i64 %.5.i)
  %i.ah = sub i64 %.sroa.speculated.i, %.sroa.speculated10.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.speculated10.i ; 4 uses
  %i.aj = icmp ugt i64 %.sroa.speculated10.i, %4
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, i64 noundef %.sroa.speculated10.i, i64 noundef %4) #29
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.loopexit
  %i.ak = sub nuw i64 %4, %.sroa.speculated10.i
  %.sroa.speculated.i51 = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.ah) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 13 uses
  store ptr %i.al, ptr %9, align 8, !tbaa !190
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i64 0, ptr %i.am, align 8, !tbaa !192
  store i8 0, ptr %i.al, align 8, !tbaa !189
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, i8 0, i64 64, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc.i unwind label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i.thread ; 3 uses

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZN4Luau9AllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %bb.l unwind label %.body.i, !noalias !194

_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i.thread: ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i

.body.i:                                          ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 16) #28, !noalias !194
  %.pr.i = load ptr, ptr %i.ap, align 8, !tbaa !197 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %.body.i
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !200
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %.pr.i to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ax) #28
  br label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i:  ; preds = %bb.j, %.body.i
  %.pr = load ptr, ptr %i.ao, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !174
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %.pr to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.bc) #28
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i.thread, %bb.k, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i
  %eh.lpad-body8.i174 = phi { ptr, i32 } [ %i.ar, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i.thread ], [ %i.as, %bb.k ], [ %i.as, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i ] ; 2 uses
  %i.bd = load ptr, ptr %9, align 8, !tbaa !201   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.al
  br i1 %i.be, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i
  %i.bf = load i64, ptr %i.al, align 8, !tbaa !189
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #28
  br label %.body

bb.l:                                             ; preds = %.noexc.i
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 5 uses
  store ptr %i.aq, ptr %i.bh, align 8, !tbaa !202, !alias.scope !194
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !100
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 108
  store i32 0, ptr %i.bj, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.bk, ptr %10, align 8, !tbaa !190
  %i.bl = icmp eq ptr %5, null
  %i.bm = icmp ne i64 %.sroa.speculated.i51, 0
  %or.cond.i.i.i = and i1 %i.bl, %i.bm
  br i1 %or.cond.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.116) #29
          to label %.noexc54 unwind label %bb.y

.noexc54:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %.sroa.speculated.i51, ptr %i.a, align 8, !tbaa !109
  %i.bn = icmp ugt i64 %.sroa.speculated.i51, 15
  br i1 %i.bn, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.n
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc55 unwind label %bb.y   ; 2 uses

.noexc55:                                         ; preds = %.noexc.i.i.i
  store ptr %i.bo, ptr %10, align 8, !tbaa !201
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !109
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !189
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc55, %bb.n
  %i.bq = phi ptr [ %i.bo, %.noexc55 ], [ %i.bk, %bb.n ] ; 2 uses
  switch i64 %.sroa.speculated.i51, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.br = load i8, ptr %i.ai, align 1, !tbaa !189
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !189
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.ai, i64 %.sroa.speculated.i51, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !192
  %i.bu = load ptr, ptr %10, align 8, !tbaa !201
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store i8 0, ptr %i.bv, align 1, !tbaa !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bw = load ptr, ptr %9, align 8, !tbaa !201   ; 6 uses
  %i.bx = icmp eq ptr %i.bw, %i.al
  %i.by = load ptr, ptr %10, align 8, !tbaa !201  ; 5 uses
  %i.bz = icmp eq ptr %i.by, %i.bk                ; 2 uses
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.q
  br i1 %i.bz, label %bb.r, label %.thread.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.q
  br i1 %i.bz, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ca = load i64, ptr %i.bt, align 8, !tbaa !192 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  switch i64 %i.ca, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !189
  store i8 %i.cc, ptr %i.bw, align 1, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.by, i64 %i.ca, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4Luau16findClosestScopeERKSt10shared_ptrINS_6ModuleEERKNS_8PositionE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !330    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !330  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  %i.q = load i32, ptr %i.p, align 4, !tbaa !86   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 132
  %i.s = load i32, ptr %i.r, align 4, !tbaa !86   ; 2 uses
  %i.t = icmp eq i32 %i.q, %i.s
  %i.u = load i32, ptr %i.m, align 4              ; 2 uses
  %i.v = load i32, ptr %i.o, align 4              ; 2 uses
  %i.w = icmp eq i32 %i.u, %i.v                   ; 2 uses
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  br i1 %i.x, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %_ZNK4Luau8PositionleERKS0_.exit

_ZNK4Luau8PositionleERKS0_.exit:                  ; preds = %bb.d
  %i.y = icmp ult i32 %i.q, %i.s
  %i.z = icmp ult i32 %i.u, %i.v
  %.0.i.i = select i1 %i.w, i1 %i.y, i1 %i.z
  br i1 %.0.i.i, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit

_ZNK4Luau8PositionleERKS0_.exit.thread:           ; preds = %bb.d, %_ZNK4Luau8PositionleERKS0_.exit
  store ptr %i.n, ptr %0, align 8, !tbaa !330
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !357 ; 4 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !357 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4Luau8PositionleERKS0_.exit.thread
  %.not7.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !189
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !9
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !357
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.ai = phi ptr [ %i.ac, %bb.e ], [ %i.ac, %bb.g ], [ %.pr.pre.i.i.i, %bb.h ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aj, align 8, !tbaa !358
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !360
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !112
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #26, !inline_history !455
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !112
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #26, !inline_history !455
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !189
  %.not.i9.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i9.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.am, %bb.l ], [ %i.aw, %bb.m ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !21

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !357
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !86   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !86   ; 2 uses
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !456  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !457  ; 2 uses
  %i.u = icmp ne i32 %i.r, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !187, !range !92, !noundef !93
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
  %.03569.i = phi ptr [ %4, %.lr.ph.i ], [ %i.aq, %.thread.i ] ; 2 uses
  %.03668.i = phi i8 [ 0, %.lr.ph.i ], [ %.2.i, %.thread.i ] ; 2 uses
  %.03767.i = phi i8 [ 0, %.lr.ph.i ], [ %.138.i, %.thread.i ] ; 2 uses
  %.04166.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ap, %.thread.i ] ; 3 uses
  %.04365.i = phi i64 [ 0, %.lr.ph.i ], [ %.144.i, %.thread.i ] ; 3 uses
  %.04664.i = phi i64 [ 0, %.lr.ph.i ], [ %.147.i, %.thread.i ] ; 4 uses
  %.063.i = phi i64 [ 0, %.lr.ph.i ], [ %.122.i, %.thread.i ] ; 2 uses
  %.02562.i = phi i64 [ 0, %.lr.ph.i ], [ %.227.i, %.thread.i ] ; 3 uses
  %i.ad = load i8, ptr %.03569.i, align 1, !tbaa !189
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
  %spec.select.i = select i1 %i.al, i64 -1, i64 %.02562.i
  %spec.select54.i = zext i1 %i.al to i8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %.227.i = phi i64 [ %.02562.i, %bb.i ], [ %.04166.i, %bb.h ], [ %spec.select.i, %bb.j ] ; 2 uses
  %.2.i = phi i8 [ %.03668.i, %bb.i ], [ 1, %bb.h ], [ %spec.select54.i, %bb.j ] ; 2 uses
  %i.am = icmp eq i8 %i.ad, 10                    ; 2 uses
  %i.an = add i64 %.04365.i, 1
  %i.ao = zext i1 %i.am to i64
  %.147.i = add i64 %.04664.i, %i.ao
  %.144.i = select i1 %i.am, i64 0, i64 %i.an
  %i.ap = add nuw i64 %.04166.i, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.03569.i, i64 1 ; 2 uses
  %.not49.i = icmp eq ptr %i.aq, %i.aa
  br i1 %.not49.i, label %._crit_edge.loopexit.i, label %bb.g

._crit_edge.loopexit.i:                           ; preds = %.thread.i
  %i.ar = trunc nuw i8 %.138.i to i1
  %i.as = xor i1 %i.ar, true
  %i.at = trunc nuw i8 %.2.i to i1
  %i.au = select i1 %i.as, i1 true, i1 %i.at
  %i.av = select i1 %i.au, i64 %.227.i, i64 %3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %._crit_edge.loopexit.i, %bb.f
  %.059.i = phi i64 [ %.122.i, %._crit_edge.loopexit.i ], [ 0, %bb.f ], [ %.063.i, %bb.g ] ; 3 uses
  %.5.i = phi i64 [ %i.av, %._crit_edge.loopexit.i ], [ 0, %bb.f ], [ %.02562.i, %bb.g ] ; 3 uses
  %.sroa.speculated10.i = tail call i64 @llvm.umin.i64(i64 %.5.i, i64 %.059.i) ; 5 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.059.i, i64 %.5.i)
  %i.aw = sub i64 %.sroa.speculated.i, %.sroa.speculated10.i ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.speculated10.i ; 4 uses
  %i.ay = icmp ugt i64 %.sroa.speculated10.i, %3
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, i64 noundef %.sroa.speculated10.i, i64 noundef %3) #29
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.loopexit
  %i.az = sub nuw i64 %3, %.sroa.speculated10.i
  %.sroa.speculated.i61 = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  store ptr %i.ba, ptr %8, align 8, !tbaa !190
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !192
  store i8 0, ptr %i.ba, align 8, !tbaa !189
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i8 0, i64 64, i1 false)
  %i.bf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc.i unwind label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i.thread ; 3 uses

.noexc.i:                                         ; preds = %bb.l
  invoke void @_ZN4Luau9AllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %bb.o unwind label %.body.i, !noalias !458

_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i.thread: ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i

.body.i:                                          ; preds = %.noexc.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 16) #28, !noalias !458
  %.pr.i = load ptr, ptr %i.be, align 8, !tbaa !197 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %.body.i
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !200
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %.pr.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.bm) #28
  br label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i:  ; preds = %bb.m, %.body.i
  %.pr = load ptr, ptr %i.bd, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !174
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %.pr to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.br) #28
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i.thread, %bb.n, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i
  %eh.lpad-body8.i193 = phi { ptr, i32 } [ %i.bg, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i.thread ], [ %i.bh, %bb.n ], [ %i.bh, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i ] ; 2 uses
  %i.bs = load ptr, ptr %8, align 8, !tbaa !201   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ba
  br i1 %i.bt, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit.i
  %i.bu = load i64, ptr %i.ba, align 8, !tbaa !189
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #28
  br label %.body

bb.o:                                             ; preds = %.noexc.i
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 5 uses
  store ptr %i.bf, ptr %i.bw, align 8, !tbaa !202, !alias.scope !458
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i32 0, ptr %i.bx, align 8, !tbaa !100
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 108
  store i32 0, ptr %i.by, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.bz, ptr %9, align 8, !tbaa !190
  %i.ca = icmp eq ptr %4, null
  %i.cb = icmp ne i64 %.059.i, %.5.i
  %or.cond.i64 = and i1 %i.ca, %i.cb
  br i1 %or.cond.i64, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.116) #29
          to label %.noexc66 unwind label %bb.ab

.noexc66:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !109
  %i.cc = icmp ugt i64 %i.aw, 15
  br i1 %i.cc, label %.noexc.i65, label %._crit_edge.i.i

.noexc.i65:                                       ; preds = %bb.q
  %i.cd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc67 unwind label %bb.ab  ; 2 uses

.noexc67:                                         ; preds = %.noexc.i65
  store ptr %i.cd, ptr %9, align 8, !tbaa !201
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !109
  store i64 %i.ce, ptr %i.bz, align 8, !tbaa !189
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc67, %bb.q
  %i.cf = phi ptr [ %i.cd, %.noexc67 ], [ %i.bz, %bb.q ] ; 2 uses
  switch i64 %i.aw, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.cg = load i8, ptr %i.ax, align 1, !tbaa !189
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !189
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.ax, i64 %i.aw, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !192
  %i.cj = load ptr, ptr %9, align 8, !tbaa !201
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cl = load ptr, ptr %8, align 8, !tbaa !201   ; 6 uses
  %i.cm = icmp eq ptr %i.cl, %i.ba
  %i.cn = load ptr, ptr %9, align 8, !tbaa !201   ; 5 uses
  %i.co = icmp eq ptr %i.cn, %i.bz                ; 2 uses
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.t
  br i1 %i.co, label %bb.u, label %.thread.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.t
  br i1 %i.co, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cp = load i64, ptr %i.ci, align 8, !tbaa !192 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  switch i64 %i.cp, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !189
  store i8 %i.cr, ptr %i.cl, align 1, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cn, i64 %i.cp, i1 false)
end_hunk_1
